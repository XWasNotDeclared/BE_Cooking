package com.example.cooking.service.impl;

import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.image.Image;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Service;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.common.enums.AIToolName;
import com.example.cooking.service.ChatBotService;
import com.example.cooking.service.UploadFileService;
import com.example.cooking.tools_chatbot.ImageTool;
import com.example.cooking.tools_chatbot.QueryTool;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@ConditionalOnProperty(prefix = "ai.modules.chat", name = "enabled", havingValue = "true", matchIfMissing = false)
public class ChatBotServiceImpl implements ChatBotService {
    private final ChatClient chatClient;
    private final UploadFileService uploadFileService;
    private final QueryTool queryTool;
    private final ImageTool imageTool;

    @Override
    public String getChatBotResponse(String userMessage) {
        // TODO Auto-generated method stub
        String response = chatClient.prompt().user(userMessage).call().content();
        return response;
    }

    @Override
    public String getChatBotResponseWithTool(String userMessage, AIToolName tools) {
        // TODO Auto-generated method stub
        String response = "Có lỗi xảy ra khi gọi công cụ AI.";
        if (tools == AIToolName.QUERY_VECTOR_DB_TOOL) {
            response = chatClient.prompt().user(userMessage).tools(queryTool).call().content();
        }   
        else if (tools == AIToolName.IMAGE_TO_INGREDIENT_TOOL) {
            response = chatClient.prompt().user(userMessage).tools(imageTool).call().content();
        }
        
        else if (tools == AIToolName.DATE_TIME_TOOL) {
        }

        else if (tools == AIToolName.NONE) {
            response = chatClient.prompt().user(userMessage).call().content();
        }
        // String response = chatClient.prompt().user(userMessage).call().content();

        return response;
    }
    

    @Override
    public String getChatBotResponseWithImage(String userMessage, MultipartFile image) {
        if (!(image == null || image.isEmpty())) {
            // String imageUrl = uploadFileService.saveTempFile(image, FileType.RECIPE);
            String imageUrl = "E:\\DATN\\cooking\\static_resource\\public\\upload\\temp\\recipes\\tu-lanh001.jpeg";
            String response = chatClient.prompt()
                    .user(u -> u.text(userMessage).media(MimeTypeUtils.IMAGE_PNG, new FileSystemResource(imageUrl)))
                    .call().content();
            return response;
        } else {
            System.out.println("Image is null or empty");
            return null;
        }

    }
}
