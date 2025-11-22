package com.example.cooking.repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.projection.RecipeCategoryProjection;
import com.example.cooking.dto.projection.RecipePermissionInfoProjection;
import com.example.cooking.dto.projection.RecipeTagProjection;
import com.example.cooking.model.Recipe;

import jakarta.transaction.Transactional;

public interface RecipeRepository extends JpaRepository<Recipe, Long> , JpaSpecificationExecutor<Recipe> {

//     @EntityGraph(attributePaths = { "user", "steps", "recipeIngredients",
//             "categories",
//             "tags" })
    Optional<Recipe> findById(Long id);

    @Query("SELECT r FROM Recipe r JOIN FETCH r.user WHERE r.user.id = :userId")
    Page<Recipe> findByUserId(Long userId, Pageable pageable);

    // Lấy recipe theo recipeId có cả user luôn
    @Query("""
    SELECT r
    FROM Recipe r
    JOIN FETCH r.user
    WHERE r.id = :recipeId
        """)
        Optional<Recipe> findByIdWithUser(@Param("recipeId") Long recipeId);


    // tuong duong findById nhung khong join fetch
    @Query("SELECT r FROM Recipe r WHERE r.id = :id")
    Optional<Recipe> findSimpleById(@Param("id") Long id);

    // Chỉ lấy user.id từ recipe
    @Query("SELECT r.user.id FROM Recipe r WHERE r.id = :recipeId")
    Optional<Long> findUserIdByRecipeId(@Param("recipeId") Long recipeId);

    // Phương thức tăng view
    @Modifying
    @Transactional
    @Query("UPDATE Recipe r SET r.views = r.views + 1 WHERE r.id = :id")
    void incrementViews(@Param("id") Long id);
    
    // Lấy views (nếu muốn query riêng)
    @Query("SELECT r.views FROM Recipe r WHERE r.id = :id")
    Long getViews(@Param("id") Long id);


    // Chi lay scope, status, userId de check quyen
    @Query("SELECT r.scope AS scope, r.status AS status, r.user.id AS userId FROM Recipe r WHERE r.id = :recipeId")
    Optional<RecipePermissionInfoProjection> findPermissionInfoById(@Param("recipeId") Long recipeId);

    // JPQL projection cho categories - type safe, chỉ fetch fields cần
    @Query("SELECT new com.example.cooking.dto.projection.RecipeCategoryProjection(" +
            "r.id, c.id, c.name, c.slug, c.description, c.imageUrl) " +
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

    @Query("""
        SELECT DISTINCT r FROM Recipe r
        JOIN r.tags t
        WHERE t.id = :tagId
          AND r.scope = :scope
          AND r.status = :status
        """)
    Page<Recipe> findPublicApprovedByTagId(
            @Param("tagId") Long tagId,
            @Param("scope") Scope scope,
            @Param("status") Status status,
            Pageable pageable
    );

    @Query("""
        SELECT DISTINCT r FROM Recipe r
        JOIN r.categories c
        WHERE c.id = :categoryId
          AND r.scope = :scope
          AND r.status = :status
        """)
    Page<Recipe> findPublicApprovedByCategoryId(
            @Param("categoryId") Long tagId,
            @Param("scope") Scope scope,
            @Param("status") Status status,
            Pageable pageable
    );

    ////////thong ke cho admin//////////
    @Query("SELECT COUNT(r) FROM Recipe r")
    Long countAllRecipes();

    @Query("SELECT SUM(r.views) FROM Recipe r")
    Long countTotalViews();

    @Query("SELECT r.status, COUNT(r) FROM Recipe r GROUP BY r.status")
    List<Object[]> countByStatus();

    @Query("SELECT r.difficulty, COUNT(r) FROM Recipe r GROUP BY r.difficulty")
    List<Object[]> countByDifficulty();

    @Query("SELECT r.scope, COUNT(r) FROM Recipe r GROUP BY r.scope")
    List<Object[]> countByScope();

    @Query("SELECT COUNT(r) FROM Recipe r WHERE r.createdAt >= :fromDate")
    Long countCreatedSince(LocalDateTime fromDate);
    
    ///////thống kê cho chef//////////
    @Query("SELECT COUNT(r) FROM Recipe r WHERE r.user.id = :userId")
    Long countAllByUser(@Param("userId") Long userId);

    @Query("SELECT SUM(r.views) FROM Recipe r WHERE r.user.id = :userId")
    Long countTotalViewsByUser(@Param("userId") Long userId);

    @Query("SELECT r.status, COUNT(r) FROM Recipe r WHERE r.user.id = :userId GROUP BY r.status")
    List<Object[]> countByStatusForUser(@Param("userId") Long userId);

    @Query("SELECT r.difficulty, COUNT(r) FROM Recipe r WHERE r.user.id = :userId GROUP BY r.difficulty")
    List<Object[]> countByDifficultyForUser(@Param("userId") Long userId);

    @Query("SELECT r.scope, COUNT(r) FROM Recipe r WHERE r.user.id = :userId GROUP BY r.scope")
    List<Object[]> countByScopeForUser(@Param("userId") Long userId);

    @Query("SELECT COUNT(r) FROM Recipe r WHERE r.user.id = :userId AND r.createdAt >= :fromDate")
    Long countCreatedSinceForUser(@Param("userId") Long userId, @Param("fromDate") LocalDateTime fromDate);
//////////////////
    @Query("SELECT COALESCE(SUM(r.views), 0) FROM Recipe r WHERE r.updatedAt >= :today")
    Long sumViewsToday(@Param("today") LocalDateTime today);

    @Query("SELECT COALESCE(SUM(r.views), 0) FROM Recipe r WHERE r.updatedAt >= :yesterday AND r.updatedAt < :today")
    Long sumViewsYesterday(@Param("yesterday") LocalDateTime yesterday, @Param("today") LocalDateTime today);

    @Query("SELECT COUNT(r) FROM Recipe r WHERE r.status = 'PENDING'")
    long countByStatus(Status status);

    @Query("SELECT COUNT(r) FROM Recipe r WHERE r.reportedCount > 0") // nếu có cột này
    Long countReportedRecipes();
    ///////////


}
