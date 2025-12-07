package com.example.cooking.controller.pub;

import org.openapitools.db_data.client.model.SearchRecordsResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.service.ChatBotService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/test")
@RequiredArgsConstructor
public class TestController {
    private final com.example.cooking.service.PineconeDataService pineconeDataService;
    private final ChatBotService chatBotService;
    @GetMapping("/pinecone-search")
    public ResponseEntity<ApiResponse<SearchRecordsResponse>> test(@RequestParam String query){
        return ApiResponse.ok( pineconeDataService.searchEx(query));
    }

    @GetMapping("/chatbot-response")
    public ResponseEntity<ApiResponse<String>> getChatBotResponse(@RequestParam String message){
        String response = chatBotService.getChatBotResponse(message);
        return ApiResponse.ok(response);
    }
}
