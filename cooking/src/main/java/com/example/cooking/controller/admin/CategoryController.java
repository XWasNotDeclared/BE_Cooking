package com.example.cooking.controller.admin;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.dto.request.CategoryRequestDTO;
import com.example.cooking.dto.response.CategoryResponseDTO;
import com.example.cooking.service.CategoryService;

import lombok.RequiredArgsConstructor;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/admin/categories")
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService categoryService;

    @GetMapping
    public ResponseEntity<ApiResponse<List<CategoryResponseDTO>>> getAllCategories() {
        return ApiResponse.ok(categoryService.getAllCategories());
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<CategoryResponseDTO>> getCategoryById(@PathVariable Long id) {
        return ApiResponse.ok(categoryService.getCategoryById(id));
    }

    @PostMapping
    public ResponseEntity<ApiResponse<CategoryResponseDTO>> createCategory(@RequestBody CategoryRequestDTO category) {
        CategoryResponseDTO created = categoryService.createCategory(category);
        return ApiResponse.ok(created);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ApiResponse<CategoryResponseDTO>> updateCategory(@PathVariable Long id,
            @RequestBody CategoryRequestDTO category) {
        CategoryResponseDTO updated = categoryService.updateCategory(id, category);
        return ApiResponse.ok(updated);
    }

    @DeleteMapping("/{id}")
    // TODO: khong biet xoa duoc khong
    public ResponseEntity<ApiResponse<String>> deleteCategory(@PathVariable Long id) {
        categoryService.deleteCategory(id);
        return ApiResponse.ok("Delete category done");
    }

    @PostMapping("/addBatch")
    public ResponseEntity<List<CategoryResponseDTO>> createCategories(
            @RequestBody List<CategoryRequestDTO> categories) {
        List<CategoryResponseDTO> createdCategories = categoryService.createCategories(categories);
        return ResponseEntity.ok(createdCategories);
    }

}
