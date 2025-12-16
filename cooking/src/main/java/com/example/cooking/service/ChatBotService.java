package com.example.cooking.service;

import java.util.List;

import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.common.enums.AIToolName;



@ConditionalOnProperty(prefix = "ai.modules.chat", name = "enabled", havingValue = "true", matchIfMissing = false)
public interface ChatBotService {
    String getChatBotResponse(String userMessage);

    String getChatBotResponseWithTool(String userMessage, List<Integer> toolNumbers);

    String getChatBotResponseWithImage(String userMessage, MultipartFile image);
}