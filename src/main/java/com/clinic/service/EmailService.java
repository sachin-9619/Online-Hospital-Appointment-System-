package com.clinic.service;

import com.clinic.model.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    private final String FROM = "heartbreakersachin19@gmail.com";

    public void sendAppointmentMailToUser(Appointment appt) {
        String toEmail = appt.getEmail();
        String subject = "Appointment Confirmation - Sai Clinic";
        String body = "Dear " + appt.getName() + ",\n\n"
                    + "Your appointment is confirmed for " + appt.getDate() + " at " + appt.getTime() + ".\n\n"
                    + "Regards,\nSai Clinic";
        sendEmail(toEmail, subject, body);
    }

    public void sendAppointmentMailToDoctor(Appointment appt) {
        String subject = "New Appointment Booked";
        String body = "A new appointment has been booked:\n\n"
                    + "Name: " + appt.getName() + "\n"
                    + "Email: " + appt.getEmail() + "\n"
                    + "Date: " + appt.getDate() + "\n"
                    + "Time: " + appt.getTime();
        sendEmail(FROM, subject, body);
    }

    public void sendReminderMailToUser(Appointment appt) {
        String toEmail = appt.getEmail();
        String subject = "⏰ Reminder: Appointment at Sai Clinic in 2 hours";
        String body = "Hi " + appt.getName() + ",\n\n"
                    + "This event is coming up in 2 hours.\n\n"
                    + "Event: Appointment at Sai Clinic\n"
                    + "Date: " + appt.getDate() + "\n"
                    + "Time: " + appt.getTime() + "\n"
                    + "Location: Sai Clinic\n\n"
                    + "Make changes?\nCancel — or — Reschedule\n\n"
                    + "Regards,\nSai Clinic";
        sendEmail(toEmail, subject, body);
    }

    private void sendEmail(String to, String subject, String body) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom(FROM);
            message.setTo(to);
            message.setSubject(subject);
            message.setText(body);
            mailSender.send(message);
            System.out.println("✅ Email sent to: " + to);
        } catch (Exception e) {
            System.out.println("❌ Failed to send email to: " + to);
            e.printStackTrace();
        }
    }
}
