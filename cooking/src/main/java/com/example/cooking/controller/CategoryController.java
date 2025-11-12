package com.example.cooking.controller;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.dto.CategoryDTO;
import com.example.cooking.dto.request.CategoryRequestDTO;
import com.example.cooking.service.CategoryService;

import lombok.RequiredArgsConstructor;

import org.springframework.http.ResponseEntity; 
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/categories")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    @GetMapping
    public ResponseEntity<ApiResponse<List<CategoryDTO>>> getAllCategories() {
        return ApiResponse.ok(categoryService.getAllCategories());
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<CategoryDTO>> getCategoryById(@PathVariable Long id) {
        return ApiResponse.ok(categoryService.getCategoryById(id));
    }

    @GetMapping("/suggest")
    public ResponseEntity<ApiResponse<List<CategoryDTO>>> autoCompleteCategories(@RequestParam String keyword) {
        List<CategoryDTO> suggestions = categoryService.autocomplete(keyword);
        return ApiResponse.ok(suggestions);
    }

    @PostMapping
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<ApiResponse<CategoryDTO>> createCategory(@RequestBody CategoryRequestDTO category) {
        CategoryDTO created = categoryService.createCategory(category);
        return ApiResponse.ok(created);
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<ApiResponse<CategoryDTO>> updateCategory(@PathVariable Long id,
            @RequestBody CategoryRequestDTO category) {
        CategoryDTO updated = categoryService.updateCategory(id, category);
        return ApiResponse.ok(updated);
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<ApiResponse<String>> deleteCategory(@PathVariable Long id) {
        categoryService.deleteCategory(id);
        return ApiResponse.ok("Đã thực hiện");
    }
    

    @PostMapping("/add-batch")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<ApiResponse<List<CategoryDTO>>> createCategories(
            @RequestBody List<CategoryRequestDTO> categories) {
        List<CategoryDTO> createdCategories = categoryService.createCategories(categories);
        return ApiResponse.ok(createdCategories);
    }

}
