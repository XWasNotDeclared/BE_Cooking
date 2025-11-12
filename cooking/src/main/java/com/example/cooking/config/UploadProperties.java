package com.example.cooking.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@ConfigurationProperties(prefix = "app.upload.dir")
@Data
public class UploadProperties {
    private String avatar;
    private String recipe;
    private String step;
    private String temp; 
}
