package com.example.cooking.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.cooking.model.Like;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.User;

public interface LikeRepository extends JpaRepository <Like, Long>{
    @Query("SELECT COUNT(l) FROM Like l WHERE l.recipe.id = :recipeId")
    Long countByRecipeId(@Param("recipeId") Long recipeId);

    boolean existsByUserAndRecipe(User user, Recipe recipe);

    Integer deleteByUserIdAndRecipeId(Long userId, Long recipeId);
}
