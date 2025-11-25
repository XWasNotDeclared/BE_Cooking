package com.example.cooking.dto.request;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.common.enums.Difficulty;
import com.example.cooking.common.enums.Scope;
import com.example.cooking.dto.RecipeIngredientDTO;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class UpdateRecipeRequest {
    @NotNull
    private Long id; // ID công thức cần sửa

    @NotBlank
    private String title;

    private String description;

    @NotNull
    private Long servings;

    @NotNull
    private Long prepTime;

    @NotNull
    private Long cookTime;
    
    private Difficulty difficulty;

    @NotNull
    private Scope scope;
    
    private MultipartFile image; // ảnh chính mới (có thể null nếu không cập nhật)
    
    @NotNull
    private List<StepRequestDTO> steps; // sẽ thay thế toàn bộ steps cũ
    
    @NotNull
    private List<RecipeIngredientDTO> recipeIngredients; // thay thế toàn bộ ingredients cũ

    private List<Long> categoryIds;
    private List<Long> tagIds;
}

