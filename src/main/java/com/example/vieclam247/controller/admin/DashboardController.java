package com.example.vieclam247.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {
    @GetMapping("/admin")
    public String getMethodName() {
        return "/admin/dashboard/show";
    }

}