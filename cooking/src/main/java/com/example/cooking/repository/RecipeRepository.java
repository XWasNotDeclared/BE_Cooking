package com.example.cooking.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.model.Recipe;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {

    // List<Recipe> findByUserId(Long userId);

    // List<Recipe> findByUser(User user);
    
    @EntityGraph(attributePaths = {"user", "steps", "recipeIngredients", "recipeIngredients.ingredient","categories", "tags"})
    Optional<Recipe> findByIdAndScopeAndStatus(Long id, Scope scope, Status status);

    @EntityGraph(attributePaths = {"user", "steps", "recipeIngredients", "recipeIngredients.ingredient","categories", "tags"})
    Optional<Recipe> findById (Long id);

    @EntityGraph(attributePaths = {"user", "categories", "tags"})
    List<Recipe> findByUserId(Long userId);

//    @EntityGraph(attributePaths = {"user", "categories", "tags"})
//     List<Recipe> findByIdAndScopeAndStatus(Scope scope, Status status);

}
