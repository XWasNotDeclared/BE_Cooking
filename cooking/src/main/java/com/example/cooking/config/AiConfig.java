package com.example.cooking.config;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.memory.MessageWindowChatMemory;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.RequiredArgsConstructor;

import com.example.cooking.tools_chatbot.DateTimeTool;
import com.example.cooking.tools_chatbot.QueryTool;
@Configuration
@RequiredArgsConstructor
@ConditionalOnProperty(prefix = "ai.modules.chat", name = "enabled", havingValue = "true", matchIfMissing = false)
public class AiConfig {

    /**
     * Định nghĩa Bean ChatClient. Spring sẽ tiêm Bean ChatModel
     * (OpenAiChatModel) đã được Spring AI Starter tạo ra.
     */
    private final DateTimeTool dateTimeTools;
    private final QueryTool queryTools;

    public static final String CONVERSATION_ID = "CookingAssistant-DaveCX09-Memory";


    /**
     * Định nghĩa Bean ChatMemory với cửa sổ 5 tin nhắn.
     */
    @Bean
    public ChatMemory chatMemory() {
        // Giữ 5 tin nhắn gần nhất (MessageWindowChatMemory)
        return MessageWindowChatMemory.builder()
            .maxMessages(5) 
            .build();
    }

     
    @Bean
    public ChatClient chatClient(ChatModel chatModel, ChatMemory chatMemory) {
        // Sử dụng builder để tạo ChatClient từ ChatModel đã tồn tại
    
    // Thêm Conversation ID cố định cho cuộc trò chuyện này, 
    // hoặc bạn có thể tạo ID động nếu có nhiều người dùng.




//         String systemPrompt = """
// The AI must always respond in Vietnamese.
// The AI must address the user as DaveCX09.
// Role: a cooking assistant that only provides culinary information and advice.
// For any request involving ingredients, dishes, or cooking-related information, the AI must use available tools to search for data.
// The AI must return responses strictly in plain text, without markdown or any other formatting style.
// If a dish only partially matches the provided ingredients, the AI must suggest buying the missing ingredients or ask whether the user wants guidance based on what they currently have.
// Keep the original retrieved cooking recipe content unchanged; never alter the content itself, only adjust the display structure for clarity.
// """;


        String systemPrompt ="be nice";
//If no suitable tool exists or no data can be retrieved, the AI must state this clearly and suggest that it can answer outside the tool scope only if explicitly requested.
//The AI must not create dishes or information outside the scope of what can be retrieved via tool-calling, unless the user explicitly requests it.

        return ChatClient.builder(chatModel)
            // .defaultTools(dateTimeTools, queryTools)
            .defaultTools()
            .defaultSystem(systemPrompt)
            .defaultAdvisors(
                MessageChatMemoryAdvisor.builder(chatMemory)
                    .conversationId(CONVERSATION_ID)
                    .build()
            )
            .build();
    }
}