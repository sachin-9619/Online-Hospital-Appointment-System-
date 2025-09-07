package com.clinic.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.clinic.model.Appointment;
import com.clinic.service.AppointmentService;
import com.clinic.service.DoctorAdminService;

@Controller
public class DoctorAdminController {

    @Autowired
    private DoctorAdminService doctorAdminService;

    @Autowired
    private AppointmentService appointmentService;

    // SHOW login form (GET)
    @GetMapping("/admin-login")
    public String showLoginForm() {
        return "admin-login"; // JSP: admin-login.jsp
    }

    // HANDLE login form (POST)
    @PostMapping("/admin")
    public String login(HttpServletRequest request, Model model) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isValid = doctorAdminService.validateLogin(username, password);

        if (isValid) {
            List<Appointment> appointmentList = appointmentService.getUpcomingAppointments();
            model.addAttribute("appointmentList", appointmentList);
            return "admin-dashboard"; // JSP: admin-dashboard.jsp
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "admin-login"; // Return to login with error
        }
    }

    // Allow GET access to dashboard (optional for bookmarked link)
    @GetMapping("/admin-dashboard")
    public String showDashboard(Model model) {
        List<Appointment> appointmentList = appointmentService.getUpcomingAppointments();
        model.addAttribute("appointmentList", appointmentList);
        return "admin-dashboard";
    }
    
}
