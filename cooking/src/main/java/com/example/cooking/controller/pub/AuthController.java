package com.example.cooking.controller.pub;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.dto.request.AuthRequest;
import com.example.cooking.dto.request.RegisterRequest;
import com.example.cooking.exception.CustomException;
import com.example.cooking.security.JwtService;
import com.example.cooking.service.UserService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthController {
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;
    private final UserService userService;

    @PostMapping(value = "/register", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<ApiResponse<String>> addNewUser(@Valid @ModelAttribute RegisterRequest registerRequest) {
        Long uid = userService.addUser(registerRequest, registerRequest.getAvatar());
        return ApiResponse.ok("User added successfully with ID: " + uid);
    }

    @GetMapping("/health")
    public ResponseEntity<ApiResponse<String>> welcome() {
        return ApiResponse.ok("Auth health");
    }


    @PostMapping("/generateToken")
    public ResponseEntity<ApiResponse<String>> authenticateAndGetToken(@RequestBody AuthRequest authRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(authRequest.getEmail(), authRequest.getPassword()));
        if (authentication.isAuthenticated()) {
            return ApiResponse.ok(jwtService.generateToken(authRequest.getEmail()));
        } else {
            throw new CustomException("Authentication failed");
        }
    }
}
