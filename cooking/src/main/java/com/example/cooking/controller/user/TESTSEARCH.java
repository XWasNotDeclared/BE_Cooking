package com.example.cooking.controller.user;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.model.Recipe;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.RecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/user/test/recipes")
public class TESTSEARCH {

    @Autowired
    private RecipeService recipeService;

    // @GetMapping("/search/any")
    // public ResponseEntity<List<Recipe>> searchAny(@RequestParam String term,
    // @RequestParam(defaultValue = "20") int limit) {
    // return ResponseEntity.ok(recipeService.searchByAnyIngredient(term, limit));
    // }

    // // @GetMapping("/search/all")
    // // public ResponseEntity<List<Recipe>> searchAll(@RequestParam List<String>
    // ingredients,
    // // @RequestParam(defaultValue = "20") int limit) {
    // // return ResponseEntity.ok(recipeService.searchByAllIngredients(ingredients,
    // limit));
    // // }
    // @GetMapping("/search/all")
    // public ResponseEntity<Page<RecipeSummaryDTO>> searchAll(
    //         @RequestParam List<String> ingredients,
    //         @RequestParam(defaultValue = "0") int page,
    //         @RequestParam(defaultValue = "20") int size) {
    //     Page<RecipeSummaryDTO> recipes = recipeService.searchByAllIngredients(ingredients, page, size);
    //     return ResponseEntity.ok(recipes);
    // }


    // @PageableDefault(page = 0, size = 20) Pageable pageable)
        @GetMapping("/search")
    public ResponseEntity<ApiResponse<PageDTO<RecipeSummaryDTO>>> searchByKeyword(
            @AuthenticationPrincipal MyUserDetails currentUser,
            @RequestParam ("keyword") String keyword,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
                Pageable pageable = PageRequest.of(page, size);
        PageDTO<RecipeSummaryDTO> recipes = recipeService.searchByKeyWord(keyword, pageable, currentUser);
        return ApiResponse.ok(recipes);
    }

    // @GetMapping("/search/exclude")
    // public ResponseEntity<List<Recipe>> searchExclude(@RequestParam String
    // exclude,
    // @RequestParam(defaultValue = "20") int limit) {
    // return ResponseEntity.ok(recipeService.searchExcludingIngredient(exclude,
    // limit));
    // }
}