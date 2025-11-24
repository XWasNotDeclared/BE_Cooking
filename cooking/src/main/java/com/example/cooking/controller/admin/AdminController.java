package com.example.cooking.controller.admin;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.mapper.RecipeMapper;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.dto.response.RecipeStatisticsDTO;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.AdminService;
import com.example.cooking.service.RecipeService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
@RestController
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminController {
    private final AdminService adminService;
    private final RecipeService recipeService;
    private final RecipeMapper recipeMapper;

    @GetMapping("/welcome")
    public ResponseEntity<ApiResponse<String>> welcomeAdmin() {
        return ApiResponse.ok("Welcome to the ToDo App!/ADMIN");
    }

    @PatchMapping("/recipe/{id}/status")
    public ResponseEntity<ApiResponse<String>> setRecipeStatus(@PathVariable Long id,
            @RequestParam Status status) {
        adminService.setRecipeStatus(id, status);
        return ApiResponse.ok("Dat trang thai thanh cong");
    }

    @GetMapping("/admin/recipes")
    @PreAuthorize("hasRole('ADMIN')") // hoặc annotation tùy cấu hình bảo mật của bạn
    public ResponseEntity<ApiResponse<PageDTO<RecipeSummaryDTO>>> getAllRecipesForAdmin(
            @AuthenticationPrincipal MyUserDetails currentUser,
            @RequestParam(required = false) Status status,
            @RequestParam(required = false) Scope scope,
            @RequestParam(required = false) String keyword,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(defaultValue = "views") String sortBy,
            @RequestParam(defaultValue = "desc") String direction) {

        Sort sort = direction.equalsIgnoreCase("asc")
                ? Sort.by(sortBy).ascending()
                : Sort.by(sortBy).descending();

        Pageable pageable = PageRequest.of(page, size, sort);

        PageDTO<RecipeSummaryDTO> result = recipeService.getAllRecipesForAdmin(currentUser.getId(),status, scope, keyword, pageable);

        return ApiResponse.ok(result);
    }

    @GetMapping("/recipe/{id}")
    public ResponseEntity<ApiResponse<RecipeDetailResponse>> getRecipeById(@PathVariable Long id) {
        RecipeDetailResponse recipeResponse = recipeMapper.toRecipeResponse(recipeService.getRecipeById(id));
        return ApiResponse.ok(recipeResponse);
    }
    //hàm cho thống kê    
    @GetMapping("/statistics")
    public ResponseEntity<ApiResponse<RecipeStatisticsDTO>> getRecipeStatistics() {
        return ApiResponse.ok(recipeService.getRecipeStatistics());
    }
}
