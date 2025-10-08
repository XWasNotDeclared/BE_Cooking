package com.example.cooking.dto.response;

import java.time.LocalDateTime;
import java.util.LinkedHashSet;
import java.util.Set;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.StepDTO;
import com.example.cooking.dto.UserDTO;

import lombok.Data;

@Data
public class RecipeDetailResponse {

    private Long id;

    private String title;

    private String description;

    private Long servings;

    private Long prepTime;

    private Long cookTime;



    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private String imageUrl;
    
    private Scope scope;
    private Status status;
    private UserDTO user;
    private Set<StepDTO> steps = new LinkedHashSet<>();
    private Set<IngredientInRecipeResponse> ingredients = new LinkedHashSet<>();
    private Set<CategoryResponseDTO> categories = new LinkedHashSet<>();
    // private Set<TagResponseDTO> tags = new LinkedHashSet<>();
    private Long likesCount;
}
