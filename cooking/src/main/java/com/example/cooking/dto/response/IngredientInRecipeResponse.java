package com.example.cooking.dto.response;

import lombok.Data;

@Data
public class IngredientInRecipeResponse {
    private Integer displayOrder;
    private Float quantity;
    private String unit;
    // private String nameIngredient;
    private String displayName;
}
