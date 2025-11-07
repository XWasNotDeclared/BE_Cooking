package com.example.cooking.controller.user;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.model.Recipe;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.MeiliRecipeService;
import com.example.cooking.service.RecipeService;
import com.meilisearch.sdk.model.SearchResult;

import lombok.RequiredArgsConstructor;

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
import java.util.Map;
@RequiredArgsConstructor
@RestController
@RequestMapping("/user/test/recipes")
public class SearchController {

    private final RecipeService recipeService;
     private final MeiliRecipeService meiliService;


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

// @GetMapping("/recipes/search")
// public List<Map<String, Object>> searchRecipes(@RequestParam("q") String query) {
//     SearchResult result = meiliService.searchRecipes(query);
//     if (result != null) {
//         // getHits() trả về List<Map<String,Object>> của các document matching
//         return (List<Map<String, Object>>)(List<?>) result.getHits();
//     }
//     return List.of(); // trả về list rỗng nếu không có kết quả
// }
}