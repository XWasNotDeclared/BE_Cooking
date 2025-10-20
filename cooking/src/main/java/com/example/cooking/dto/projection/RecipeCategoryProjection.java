// DTO cho categories projection
package com.example.cooking.dto.projection;

import lombok.Data;

@Data
public class RecipeCategoryProjection {
    private Long recipeId;
    private Long categoryId;
    private String categoryName;
    private String categorySlug;
    private String categoryDescription;
    
    public RecipeCategoryProjection(Long recipeId, Long categoryId, String categoryName, String categorySlug, String categoryDescription) {
        this.recipeId = recipeId;
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.categorySlug = categorySlug;
        this.categoryDescription = categoryDescription;
    }
}