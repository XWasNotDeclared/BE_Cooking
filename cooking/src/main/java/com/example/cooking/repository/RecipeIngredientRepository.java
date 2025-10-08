package com.example.cooking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cooking.model.Ingredient;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.RecipeIngredient;

public interface RecipeIngredientRepository extends JpaRepository<RecipeIngredient, Long> {
    List<RecipeIngredient> findByRecipeId(Long recipeId); //map theo field id trong entity
    List<RecipeIngredient> findByIngredientId(Long ingredientId);
    List<RecipeIngredient> findByIngredient(Ingredient ingredient);
    List<RecipeIngredient> findByRecipe(Recipe recipe);
}
