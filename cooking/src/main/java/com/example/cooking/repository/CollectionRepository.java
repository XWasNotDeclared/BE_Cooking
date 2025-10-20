package com.example.cooking.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.cooking.dto.projection.RecipeSavesProjection;
import com.example.cooking.model.Collection;

@Repository
public interface CollectionRepository extends JpaRepository<Collection, Long> {
    boolean existsByNameAndUserId(String name, Long userId);

    @EntityGraph(attributePaths = {"user"})
    Page<Collection> findByUserId(Long userId, Pageable pageable);

    //dem so save va kiem tra user da save chua
    @Query("""
            SELECT
                cr.recipe.id AS recipeId,
                COUNT(cr.id) AS saveCount,
                SUM(CASE WHEN cr.collection.user.id = :userId THEN 1 ELSE 0 END) > 0 AS savedByUser
            FROM CollectionRecipe cr
            WHERE cr.recipe.id IN :recipeIds
            GROUP BY cr.recipe.id
            """)
    List<RecipeSavesProjection> countSavesAndCheckUserSaved(
            @Param("recipeIds") Set<Long> recipeIds,
            @Param("userId") Long userId);

}
