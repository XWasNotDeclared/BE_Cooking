package com.example.cooking.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.User;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {

    List<Recipe> findByUserId(Long userId);

    List<Recipe> findByUser(User user);
    
    @EntityGraph(attributePaths = {"user", "steps", "recipeIngredients", "recipeIngredients.ingredient"})
    Optional<Recipe> findByIdAndScopeAndStatus(Long id, Scope scope, Status status);

    @EntityGraph(attributePaths = {"user", "steps", "recipeIngredients", "recipeIngredients.ingredient"})
    Optional<Recipe> findById (Long id);
}
