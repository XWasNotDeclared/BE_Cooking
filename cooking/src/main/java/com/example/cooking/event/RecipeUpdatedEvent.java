package com.example.cooking.event;

public class RecipeUpdatedEvent {
    private final Long recipeId;
    public RecipeUpdatedEvent(Long recipeId) { this.recipeId = recipeId; }
    public Long getRecipeId() { return recipeId; }
}
