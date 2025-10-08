package com.example.cooking.config;

import java.time.LocalDate;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.example.cooking.common.enums.Role;
import com.example.cooking.common.enums.UserStatus;
import com.example.cooking.model.User;
import com.example.cooking.repository.UserRepository;

@Configuration
public class DataInitializer {
    @Bean
    CommandLineRunner init(UserRepository userRepository, PasswordEncoder passwordEncoder, AdminProperties adminProperties){
        return args -> {
            if (userRepository.findByUsername(adminProperties.getUsername()).isEmpty()){
                
                User admin = User.builder()
                                .username(adminProperties.getUsername())
                                .email(adminProperties.getEmail())
                                .password(passwordEncoder.encode(adminProperties.getPassword()))
                                .dob(adminProperties.getdob())
                                .roles(adminProperties.getRoles())
                                .status(UserStatus.ACTIVE)
                                .build();
                userRepository.save(admin);
            };
        };
    }
}

@Component
@ConfigurationProperties(prefix = "app.admin")
class AdminProperties {
    private String username;
    private String password;
    private String email;
    private LocalDate dob;
    private Role roles;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public LocalDate getdob() {
        return dob;
    }
    public void setdob(LocalDate dob) {
        this.dob = dob;
    }
    public Role getRoles() {
        return roles;
    }
    public void setRoles(Role roles) {
        this.roles = roles;
    }
    @Override
    public String toString() {
        return "AdminProperties [username=" + username + ", password=" + password + ", email=" + email + ", dob="
                + dob + ", roles=" + roles + "]";
    }
    
    // getters & setters
    
}