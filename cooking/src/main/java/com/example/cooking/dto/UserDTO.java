package com.example.cooking.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Data;
@Data

public class UserDTO {
    private String username;
    private String email;
    private LocalDate dob;
    private String bio;
    private String avatarUrl;
    private LocalDateTime createdAt;
    private LocalDateTime lastLogin;
}
