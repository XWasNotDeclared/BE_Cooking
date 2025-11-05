package com.example.cooking.controller.pub;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;

@RestController
@RequestMapping
public class Home {
    @GetMapping("/home")
    public ResponseEntity<ApiResponse<String>> home(){
        return ApiResponse.ok("Hello, it works!");
    }
}
