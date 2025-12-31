package com.example.cooking.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.cooking.model.Recipe;
import com.example.cooking.model.RecipeSearchIndex;

public interface RecipeSearchIndexRepository extends JpaRepository<RecipeSearchIndex, Long> {
    // nature mode
    // @Query(value = """
    // SELECT r.* FROM recipes r
    // JOIN recipe_search_index idx ON r.recipe_id = idx.recipe_id
    // WHERE MATCH(idx.search_text) AGAINST(:keyword IN NATURAL LANGUAGE MODE)
    // """, countQuery = """
    // SELECT COUNT(*) FROM recipes r
    // JOIN recipe_search_index idx ON r.recipe_id = idx.recipe_id
    // WHERE MATCH(idx.search_text) AGAINST(:keyword IN NATURAL LANGUAGE MODE)
    // """, nativeQuery = true)
    // Page<Recipe> searchRecipesByKeyWordPage(@Param("keyword") String keyword,
    // Pageable pageable);
    // Boolean mode
    @Query(value = """
                SELECT r.* FROM recipes r
                JOIN recipe_search_index idx ON r.recipe_id = idx.recipe_id
                WHERE MATCH(idx.search_text) AGAINST(:keyword IN BOOLEAN MODE)
            """, countQuery = """
                SELECT COUNT(*) FROM recipes r
                JOIN recipe_search_index idx ON r.recipe_id = idx.recipe_id
                WHERE MATCH(idx.search_text) AGAINST(:keyword IN BOOLEAN MODE)
            """, nativeQuery = true)
    Page<Recipe> searchRecipesByKeyWordPage(@Param("keyword") String keyword, Pageable pageable);

    @Modifying
    @Query("delete from RecipeSearchIndex r where r.recipe.id = :recipeId")
    void deleteByRecipeId(Long recipeId);

}
