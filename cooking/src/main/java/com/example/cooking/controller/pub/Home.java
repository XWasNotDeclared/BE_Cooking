package com.example.cooking.controller.pub;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class Home {
    @GetMapping("/home")
    public String home(){
        return "Hello, it works!";
    }
}
