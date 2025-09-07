package com.clinic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping({"/", "/index"})
    public String showHomePage() {
        return "index"; // Looks for index.jsp in /WEB-INF/views/
    }

    @GetMapping("/about")
    public String showAboutPage() {
        return "about"; // Loads about.jsp
    }

    @GetMapping("/service")
    public String showServicePage() {
        return "service";
    }

    @GetMapping("/contact")
    public String showContactPage() {
    return "contact";
}
@GetMapping("/outdoorCheckup")
public String outdoorCheckup() {
    return "outdoorCheckup";
}
@GetMapping("/surgery")
public String surgery() {
    return "surgery";
}
@GetMapping("/emergencyCare")
public String emergencyCare() {
    return "emergencyCare";
}
@GetMapping("/medicine")
public String medicine() {
    return "medicine";
}
@GetMapping("/bloodTesting")
public String bloodTesting() {
    return "bloodTesting";
    }
}
