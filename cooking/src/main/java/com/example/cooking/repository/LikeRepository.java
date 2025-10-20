package com.example.cooking.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.example.cooking.model.RecipeLike;
import com.example.cooking.dto.projection.RecipeLikesProjection;

public interface LikeRepository extends JpaRepository<RecipeLike, Long> {
    @Query("SELECT COUNT(l) FROM RecipeLike l WHERE l.recipe.id = :recipeId")
    Long countByRecipeId(@Param("recipeId") Long recipeId);

    // boolean existsByUserIdAndRecipeId(Long userId, Long recipeId);
    @Query("""
             SELECT CASE
                      WHEN COUNT(rl) > 0 THEN TRUE
                      ELSE FALSE
                    END
             FROM RecipeLike rl
             WHERE rl.user.id = :userId
               AND rl.recipe.id = :recipeId
            """)
    boolean existsByUserIdAndRecipeId(@Param("userId") Long userId,
            @Param("recipeId") Long recipeId);

    // Integer deleteByUserIdAndRecipeId(Long userId, Long recipeId); //no chay
    // nhung cai duoi xin hon
    @Modifying
    @Transactional
    @Query("DELETE FROM RecipeLike rl WHERE rl.user.id = :userId AND rl.recipe.id = :recipeId")
    int deleteByUserIdAndRecipeId(@Param("userId") Long userId, @Param("recipeId") Long recipeId);

    // @Query("SELECT l.recipe.id AS recipeId, COUNT(l.id) AS count "
    // + "FROM RecipeLike l "
    // + "WHERE l.recipe.id IN :recipeIds "
    // + "GROUP BY l.recipe.id")
    // List<Object[]> countByRecipeIds(@Param("recipeIds") Set<Long> recipeIds);

    // dem so like va kiem tra user da like chua
    @Query("""
            SELECT
                l.recipe.id AS recipeId,
                COUNT(l.id) AS likeCount,
                SUM(CASE WHEN l.user.id = :userId THEN 1 ELSE 0 END) > 0 AS likedByUser
            FROM RecipeLike l
            WHERE l.recipe.id IN :recipeIds
            GROUP BY l.recipe.id
            """)
    List<RecipeLikesProjection> countLikeAndfindLikedByUser(@Param("recipeIds") Set<Long> recipeIds,
            @Param("userId") Long userId);

}
