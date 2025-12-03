package com.example.cooking.controller;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.IngredientDTO;
import com.example.cooking.service.IngredientService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/ingredient")
@RequiredArgsConstructor
public class IngredientController {
    private final IngredientService ingredientService;


    @GetMapping("/search-by-keyword")
    public ResponseEntity<ApiResponse<PageDTO<IngredientDTO>>> searchByKeyword(@RequestParam String keyword,
        @RequestParam(defaultValue = "0") int page,
        @RequestParam(defaultValue = "10") int size
    ){
        Pageable pageable = PageRequest.of(page, size);
        return ApiResponse.ok(ingredientService.searchByKeyWord(keyword, pageable));
    }
}
