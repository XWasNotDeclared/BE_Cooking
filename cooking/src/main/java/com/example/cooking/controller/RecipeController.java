package com.example.cooking.controller;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.common.enums.Scope;
import com.example.cooking.dto.request.NewRecipeRequest;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.RecipeService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/recipes")
@RequiredArgsConstructor
public class RecipeController {
    private final RecipeService recipeService;

    @PostMapping(consumes = {"multipart/form-data"})
    @PreAuthorize("hasRole('CHEF')")
    public ResponseEntity<ApiResponse<String>> createRecipe(
            @Valid @ModelAttribute NewRecipeRequest newRecipeRequest,
            @AuthenticationPrincipal MyUserDetails currentUser) {
        Long recipeId = recipeService.addNewRecipe(currentUser, newRecipeRequest);
        return ApiResponse.ok("Created recipe with ID: " + recipeId);
    }

    @PatchMapping("/{id}/status")
    @PreAuthorize("hasRole('CHEF')")
    public ResponseEntity<ApiResponse<String>> setRecipeStatus(
            @PathVariable Long id,
            @RequestParam Scope scope,
            @AuthenticationPrincipal MyUserDetails currentUser) {
        recipeService.setRecipeScope(currentUser, id, scope);
        return ApiResponse.ok("Recipe visibility updated successfully");
    }

    @GetMapping("/{id}")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<ApiResponse<RecipeDetailResponse>> getRecipeById(
            @PathVariable Long id,
            @AuthenticationPrincipal MyUserDetails currentUser) {
        RecipeDetailResponse recipe = recipeService.getRecipeDetailById(id, currentUser);
        return ApiResponse.ok(recipe);
    }

    @GetMapping("/my")
    @PreAuthorize("hasRole('CHEF')")
    public ResponseEntity<ApiResponse<PageDTO<RecipeSummaryDTO>>> getMyRecipes(
            @AuthenticationPrincipal MyUserDetails currentUser,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {

        Pageable pageable = PageRequest.of(page, size);
        PageDTO<RecipeSummaryDTO> recipes = recipeService.getMyRecipes(currentUser, pageable);
        return ApiResponse.ok(recipes);
    }
}
