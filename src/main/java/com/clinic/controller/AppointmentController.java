package com.clinic.controller;

import com.clinic.model.Appointment;
import com.clinic.service.AppointmentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    // ✅ Save appointment (from JSP form submission)
    @PostMapping("/addAppointment")
    public String addAppointment(HttpServletRequest request) {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String dateStr = request.getParameter("date");
            String time = request.getParameter("time");

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date date = sdf.parse(dateStr);

            Appointment appt = new Appointment();
            appt.setName(name);
            appt.setEmail(email);
            appt.setDate(date);
            appt.setTime(time);

            appointmentService.saveAppointment(appt);
            System.out.println("✅ Appointment saved successfully!");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/appointment-success";
    }

    // ✅ Return available time slots for a selected date (used by JS on date change)
    @GetMapping("/availableSlots")
    @ResponseBody
    public List<String> getAvailableSlots(@RequestParam("date") String dateStr) {
        try {
            System.out.println("📅 Received date string: '" + dateStr + "'");

            if (dateStr == null || dateStr.trim().isEmpty()) {
                System.out.println("❌ Empty or null date received");
                return List.of(); 
            }

            LocalDate date = LocalDate.parse(dateStr.trim());
            return appointmentService.getAvailableTimeSlotsByDate(date);

        } catch (Exception e) {
            System.out.println("❌ Exception while parsing date:");
            e.printStackTrace();
            return List.of(); 
        }
    }


    // ✅ Show appointment form (appointment.jsp)
    @GetMapping("/appointment")
    public String showAppointmentForm() {
        return "appointment";  // View: appointment.jsp
    }

    // ✅ Success page after booking
    @GetMapping("/appointment-success")
    public String showSuccessPage() {
        return "appointment-success"; // View: appointment-success.jsp
    }

    // ✅ API to get all upcoming appointments (used in admin panel if needed)
    @GetMapping("/getAppointments")
    @ResponseBody
    public List<Appointment> getAppointments() {
        return appointmentService.getUpcomingAppointments();
    }
}
