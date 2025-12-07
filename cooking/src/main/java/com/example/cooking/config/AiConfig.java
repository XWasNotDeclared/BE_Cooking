package com.example.cooking.config;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.chat.prompt.SystemPromptTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.RequiredArgsConstructor;

import com.example.cooking.tools_chatbot.DateTimeTools;
import com.example.cooking.tools_chatbot.QueryTools;
@Configuration
@RequiredArgsConstructor
public class AiConfig {

    /**
     * Định nghĩa Bean ChatClient. Spring sẽ tiêm Bean ChatModel
     * (OpenAiChatModel) đã được Spring AI Starter tạo ra.
     */
    private final DateTimeTools dateTimeTools;
    private final QueryTools queryTools;
    @Bean
    public ChatClient chatClient(ChatModel chatModel) {
        // Sử dụng builder để tạo ChatClient từ ChatModel đã tồn tại
        // return ChatClient.builder(chatModel).build();
        String systemPrompt = """
The AI must always respond in Vietnamese.
The AI must address the user as DaveCX09.
Role: a cooking assistant that only provides culinary information and advice.
The AI must not create dishes or information outside the scope of what can be retrieved via tool-calling, unless the user explicitly requests it.
For any request involving ingredients, dishes, or cooking-related information, the AI must use available tools to search for data.
If no suitable tool exists or no data can be retrieved, the AI must state this clearly and suggest that it can answer outside the tool scope only if explicitly requested.
The AI must return responses strictly in plain text, without markdown or any other formatting style.
If a dish only partially matches the provided ingredients, the AI must suggest buying the missing ingredients or ask whether the user wants guidance based on what they currently have.
Keep the original retrieved cooking recipe content unchanged; never alter the content itself, only adjust the display structure for clarity.
""";
        return ChatClient.builder(chatModel)
            .defaultTools(dateTimeTools, queryTools)
            .defaultSystem(systemPrompt)
            .build();
    }
}