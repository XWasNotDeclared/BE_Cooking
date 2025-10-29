package com.example.cooking.event;

public class IngredientUpdatedEvent  {
    private final Long ingredientId;
    public IngredientUpdatedEvent(Long ingredientId){this.ingredientId = ingredientId;}
    public Long getIngredientId(){return ingredientId;}

}
