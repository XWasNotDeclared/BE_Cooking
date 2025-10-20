package com.example.cooking.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.cooking.dto.projection.CollectionRecipeCount;
import com.example.cooking.model.CollectionRecipe;
import com.example.cooking.model.Recipe;

public interface CollectionRecipeRepository extends JpaRepository<CollectionRecipe, Long> {
  // boolean existsByCollectionIdAndRecipeId(Long collectionId, Long recipeId);

  @Query("SELECT CASE WHEN COUNT(cr) > 0 THEN TRUE ELSE FALSE END " +
      "FROM CollectionRecipe cr " +
      "WHERE cr.collection.id = :collectionId AND cr.recipe.id = :recipeId")
  boolean existsByCollectionIdAndRecipeId(@Param("collectionId") Long collectionId,
      @Param("recipeId") Long recipeId);

  Optional<CollectionRecipe> findByCollectionIdAndRecipeId(Long collectionId, Long recipeId);

  @Query("""
          SELECT cr.collection.id AS collectionId, COUNT(cr.id) AS recipeCount
          FROM CollectionRecipe cr
          WHERE cr.collection.id IN :collectionIds
          GROUP BY cr.collection.id
      """)
  List<CollectionRecipeCount> countRecipesByCollectionIds(@Param("collectionIds") List<Long> collectionIds);




}
