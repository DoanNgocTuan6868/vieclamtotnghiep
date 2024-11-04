package com.example.vieclam247.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JobPageController {
     @GetMapping("/job")
    public String getPageJob() {
        return "/client/job/show";
    }
}
