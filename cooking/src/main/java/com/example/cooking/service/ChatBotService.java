package com.example.cooking.service;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.web.multipart.MultipartFile;

@ConditionalOnProperty(prefix = "ai.modules.chat", name = "enabled", havingValue = "true", matchIfMissing = false)
public interface ChatBotService {
    String getChatBotResponse(String userMessage);
    String getChatBotResponseWithImage(String userMessage, MultipartFile image);
}