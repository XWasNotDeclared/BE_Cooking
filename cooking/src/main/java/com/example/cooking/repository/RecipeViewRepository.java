package com.example.cooking.repository;

import com.example.cooking.model.RecipeView;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeViewRepository extends JpaRepository<RecipeView, Long> {

    boolean existsByRecipeIdAndUserId(Long recipeId, Long userId);
}
