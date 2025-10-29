package com.example.cooking.dto.request;


import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.common.enums.Difficulty;
import com.example.cooking.common.enums.Scope;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class NewRecipeRequest {
    @NotBlank
    private String title;

    private String description;

    @NotNull
    private Long servings;

    @NotNull
    private Long prepTime;

    @NotNull
    private Long cookTime;
    
    private Difficulty difficulty;//TODO: Them notnull
    
    @NotNull
    private Scope scope;
    
    private MultipartFile image;
    

    @NotNull
    private List<StepRequestDTO> steps;
    
    @NotNull
    private List<RecipeIngredientRequestDTO> recipeIngredients;


    private List<Long> categoryIds;
    private List<Long> tagIds;

}
