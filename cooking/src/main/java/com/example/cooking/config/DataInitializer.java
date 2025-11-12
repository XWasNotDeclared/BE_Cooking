package com.example.cooking.config;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

// import com.example.cooking.common.enums.Role;
import com.example.cooking.common.enums.UserStatus;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.RoleEntity;
import com.example.cooking.model.User;
import com.example.cooking.repository.RoleRepository;
import com.example.cooking.repository.UserRepository;

@Configuration
public class DataInitializer {
    @Bean
    CommandLineRunner init(UserRepository userRepository,
                        RoleRepository roleRepository, 
                            PasswordEncoder passwordEncoder, 
                            AdminProperties adminProperties){
        return args -> {
            // 1. Insert default roles if not exists
            Arrays.asList("USER", "CHEF", "ADMIN").forEach(roleName -> {
                if (roleRepository.findByName(roleName).isEmpty()) {
                    RoleEntity role = RoleEntity.builder()
                                                .name(roleName)
                                                .build();
                    roleRepository.save(role);
                }
            });




            // 2. Insert admin user if not exists
            if (userRepository.findByUsername(adminProperties.getUsername()).isEmpty()){
                
                User admin = User.builder()
                                .username(adminProperties.getUsername())
                                .email(adminProperties.getEmail())
                                .password(passwordEncoder.encode(adminProperties.getPassword()))
                                .dob(adminProperties.getdob())
                                .status(UserStatus.ACTIVE)
                                .build();
                for (String roleName : adminProperties.getRoles()) {
                    RoleEntity roleEntity = roleRepository.findByName(roleName)
                            .orElseThrow(() -> new CustomException("Role not found: " + roleName));
                    admin.getRoles().add(roleEntity);
                }
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
    private List<String> roles;
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
    public List<String> getRoles() {
        return roles;
    }
    public void setRoles(List<String> roles) {
        this.roles = roles;
    }
    @Override
    public String toString() {
        return "AdminProperties [username=" + username + ", password=" + password + ", email=" + email + ", dob="
                + dob + ", roles=" + roles + "]";
    }
    
    // getters & setters
    
}