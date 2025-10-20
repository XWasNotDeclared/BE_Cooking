package com.example.cooking.repository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.projection.RecipeCategoryProjection;
import com.example.cooking.dto.projection.RecipePermissionInfoProjection;
import com.example.cooking.dto.projection.RecipeTagProjection;
import com.example.cooking.model.Recipe;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {

        // List<Recipe> findByUserId(Long userId);

        // List<Recipe> findByUser(User user);

        @EntityGraph(attributePaths = { "user", "steps", "recipeIngredients", "recipeIngredients.ingredient",
                        "categories",
                        "tags" })
        Optional<Recipe> findByIdAndScopeAndStatus(Long id, Scope scope, Status status);

        @EntityGraph(attributePaths = { "user", "steps", "recipeIngredients", "recipeIngredients.ingredient",
                        "categories",
                        "tags" })
        Optional<Recipe> findById(Long id);

        @Query("SELECT r FROM Recipe r JOIN FETCH r.user WHERE r.user.id = :userId")
        Page<Recipe> findByUserId(Long userId, Pageable pageable);

        // tuong duong findById nhung khong join fetch
        @Query("SELECT r FROM Recipe r WHERE r.id = :id")
        Optional<Recipe> findSimpleById(@Param("id") Long id);

        // Chỉ lấy user.id từ recipe
        @Query("SELECT r.user.id FROM Recipe r WHERE r.id = :recipeId")
        Optional<Long> findUserIdByRecipeId(@Param("recipeId") Long recipeId);

        // Chi lay scope, status, userId de check quyen
        @Query("SELECT r.scope AS scope, r.status AS status, r.user.id AS userId FROM Recipe r WHERE r.id = :recipeId")
        Optional<RecipePermissionInfoProjection> findPermissionInfoById(@Param("recipeId") Long recipeId);

        // JPQL projection cho categories - type safe, chỉ fetch fields cần
        @Query("SELECT new com.example.cooking.dto.projection.RecipeCategoryProjection(" +
                        "r.id, c.id, c.name, c.slug, c.description) " +
                        "FROM Recipe r JOIN r.categories c WHERE r.id IN :recipeIds")
        List<RecipeCategoryProjection> findCategoriesByRecipeIds(@Param("recipeIds") Set<Long> recipeIds);

        @Query("SELECT new com.example.cooking.dto.projection.RecipeTagProjection(" +
                        "r.id, t.id, t.name, t.slug) " +
                        "FROM Recipe r JOIN r.tags t WHERE r.id IN :recipeIds")
        List<RecipeTagProjection> findTagsByRecipeIds(@Param("recipeIds") Set<Long> recipeIds);

        @Query("""
                            SELECT r
                            FROM CollectionRecipe cr
                            JOIN cr.recipe r
                            WHERE cr.collection.id = :collectionId
                            ORDER BY cr.order ASC, cr.addedAt ASC
                        """)
        Page<Recipe> findRecipesByCollectionId(@Param("collectionId") Long collectionId, Pageable pageable);

}
