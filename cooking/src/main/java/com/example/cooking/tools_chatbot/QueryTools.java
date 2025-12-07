package com.example.cooking.tools_chatbot;

import org.openapitools.db_data.client.model.SearchRecordsResponse;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.stereotype.Component;

import com.example.cooking.service.PineconeDataService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Component
@RequiredArgsConstructor
@Slf4j
public class QueryTools {
    private final PineconeDataService pineconeDataService;
    @Tool(description = "Process a textual query describing one or more ingredients and return a list of dishes that are commonly prepared using those ingredients. Only query by Vietnamese.")
    public SearchRecordsResponse searchDishesByIngredients(String query) {
        log.info("Searching dishes by ingredients: {}", query);
        // Implementation for searching dishes by ingredients
        return pineconeDataService.searchEx(query); // Placeholder return statement
    }
}
