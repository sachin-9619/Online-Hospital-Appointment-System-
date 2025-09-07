package com.clinic.service;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.clinic.DAO.AppointmentDAO;
import com.clinic.model.Appointment;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentDAO appointmentDAO;

    @Autowired
    private EmailService emailService;

    // 🗑 Automatically delete yesterday's appointments daily at 12:05 AM
    @Scheduled(cron = "0 5 0 * * *")
    public void deleteYesterdayAppointments() {
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1); // yesterday
        Date yesterday = cal.getTime();
        appointmentDAO.deleteByDate(yesterday);
        System.out.println("✅ Deleted appointments for: " + yesterday);
    }

    // ✅ Save appointment and send confirmation emails
    public void saveAppointment(Appointment appt) {
        appointmentDAO.saveAppointment(appt);
        emailService.sendAppointmentMailToUser(appt);
        emailService.sendAppointmentMailToDoctor(appt);
    }

    // 📅 Get all appointments from today onwards
    public List<Appointment> getUpcomingAppointments() {
        return appointmentDAO.getTodayAndUpcomingAppointments();
    }

    // 🔔 Send reminders 2 hours before each appointment (runs every 10 mins)
    @Scheduled(cron = "0 0/10 * * * *") // Every 10 minutes
    public void sendUpcomingReminders() {
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime twoHoursLater = now.plusHours(2);

        List<Appointment> upcomingAppointments = appointmentDAO.findAppointmentsBetween(
            Timestamp.valueOf(twoHoursLater.minusMinutes(5)),
            Timestamp.valueOf(twoHoursLater.plusMinutes(5))
        );

        for (Appointment appt : upcomingAppointments) {
            emailService.sendReminderMailToUser(appt);
        }

        System.out.println("🔔 Sent reminders at: " + now);
    }

    // 📋 Get all appointments (for admin panel)
    public List<Appointment> getAllAppointments() {
        return appointmentDAO.getAllAppointments();
    }

    // 🕒 Return available time slots by checking booked slots for the given date
    public List<String> getAvailableTimeSlotsByDate(LocalDate date) {
        System.out.println("🕒 Checking slots for: " + date);
        
        List<String> allSlots = Arrays.asList(
            "08:00 AM", "08:30 AM", "09:00 AM", "09:30 AM",
            "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM",
            "12:00 PM", "12:30 PM", "02:00 PM", "02:30 PM",
            "03:00 PM", "03:30 PM", "04:00 PM", "04:30 PM",
            "05:00 PM", "05:30 PM", "06:00 PM", "06:30 PM",
            "07:00 PM", "07:30 PM"
        );

        List<String> booked = appointmentDAO.findByDate(date)
                                   .stream()
                                   .map(Appointment::getTime)
                                   .collect(Collectors.toList());

        System.out.println("❌ Booked Slots for " + date + ": " + booked);

        List<String> available = allSlots.stream()
                                 .filter(slot -> !booked.contains(slot))
                                 .collect(Collectors.toList());

        return available;
    }


}
