package com.example.cooking.config;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AiConfig {

    /**
     * Định nghĩa Bean ChatClient. Spring sẽ tiêm Bean ChatModel
     * (OpenAiChatModel) đã được Spring AI Starter tạo ra.
     */
    @Bean
    public ChatClient chatClient(ChatModel chatModel) {
        // Sử dụng builder để tạo ChatClient từ ChatModel đã tồn tại
        return ChatClient.builder(chatModel).build();
    }
}