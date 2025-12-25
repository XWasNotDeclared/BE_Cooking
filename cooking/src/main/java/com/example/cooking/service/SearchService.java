package com.example.cooking.service;

import com.example.cooking.common.PageDTO;
import com.example.cooking.config.AppProperties;
import com.example.cooking.dto.RecipeIngredientSearchResponse;
import com.example.cooking.dto.projection.RecipeIngredientSearchProjection;
import com.example.cooking.repository.RecipeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SearchService {

    private final RecipeRepository recipeRepository;
    private final AppProperties appProperties;

    public PageDTO<RecipeIngredientSearchResponse> searchByIngredients(
            List<Long> ingredientIds, int page, int size
    ) {
        Pageable pageable = PageRequest.of(page, size);

        Page<RecipeIngredientSearchProjection> pageResult =
                recipeRepository.findRecipesByIngredientIds(ingredientIds, pageable);

        if (pageResult.isEmpty()) {
            return PageDTO.empty(pageable);
        }

        String baseUrl = appProperties.getStaticBaseUrl();

        List<RecipeIngredientSearchResponse> mappedContent =
                pageResult.stream().map(p -> {
                    RecipeIngredientSearchResponse dto = new RecipeIngredientSearchResponse();
                    dto.setRecipeId(p.getRecipeId());
                    dto.setTitle(p.getTitle());
                    dto.setDescription(p.getDescription());
                    dto.setImageUrl(
                            p.getImageUrl() != null ? baseUrl + p.getImageUrl() : null
                    );
                    dto.setPrepTime(p.getPrepTime());
                    dto.setCookTime(p.getCookTime());
                    dto.setDifficulty(p.getDifficulty());
                    dto.setServings(p.getServings());
                    dto.setScope(p.getScope());
                    dto.setStatus(p.getStatus());
                    dto.setViews(p.getViews());
                    dto.setCreatedAt(p.getCreatedAt());
                    dto.setUpdatedAt(p.getUpdatedAt());
                    dto.setMatchedIngredients(p.getMatchedIngredients());
                    dto.setMissingFromInput(p.getMissingFromInput());
                    dto.setMissingFromRecipe(p.getMissingFromRecipe());
                    dto.setMatchedCount(p.getMatchedCount());
                    dto.setTotalRecipeIngredients(p.getTotalRecipeIngredients());
                    dto.setAllIngredients(p.getAllIngredients());
                    return dto;
                }).toList();

        return new PageDTO<>(pageResult, mappedContent);
    }
}
