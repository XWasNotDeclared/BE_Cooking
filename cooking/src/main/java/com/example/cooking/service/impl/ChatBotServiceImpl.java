package com.example.cooking.service.impl;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.stereotype.Service;

import com.example.cooking.service.ChatBotService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ChatBotServiceImpl implements ChatBotService{
    private final ChatClient chatClient;
    @Override
    public String getChatBotResponse(String userMessage) {
        // TODO Auto-generated method stub
        return chatClient.prompt().user(userMessage).call().content();
    }
}
