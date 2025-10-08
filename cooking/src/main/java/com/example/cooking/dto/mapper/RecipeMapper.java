package com.example.cooking.dto.mapper;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.mapstruct.AfterMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.springframework.beans.factory.annotation.Autowired;

import com.example.cooking.dto.request.NewRecipeRequest;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.model.Category;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.Tag;
import com.example.cooking.repository.CategoryRepository;
import com.example.cooking.repository.LikeRepository;
import com.example.cooking.repository.TagRepository;

@Mapper(componentModel = "spring", uses = {StepMapper.class, 
                                            UserMapper.class, 
                                            RecipeIngredientMapper.class})
public abstract class RecipeMapper {
    @Autowired
    private LikeRepository likeRepository;
    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private TagRepository tagRepository;



    @Mapping  (target = "id", ignore = true)
    @Mapping  (target = "createdAt", ignore = true)
    @Mapping  (target = "updatedAt", ignore = true)
    @Mapping  (target = "user", ignore = true) 
    @Mapping (target = "status", ignore = true)
    @Mapping(target = "categories", ignore = true)
    @Mapping(target = "tags", ignore = true)
    public abstract Recipe toRecipe(NewRecipeRequest entity);
    

    @Mapping (target = "likesCount", ignore = true)
    @Mapping (target = "ingredients", source = "recipeIngredients")
    public abstract RecipeDetailResponse toRecipeResponse(Recipe entity);

    public abstract List<RecipeDetailResponse> toRecipeResponseList(List<Recipe> entities);

    @AfterMapping
    protected void addLikeCount(@MappingTarget RecipeDetailResponse response, Recipe entity) {
        Long count = likeRepository.countByRecipeId(entity.getId());
        response.setLikesCount(count);
    }

        @AfterMapping
    protected void mapCategoriesAndTags(@MappingTarget Recipe recipe, NewRecipeRequest request) {
        // Map categoryIds -> Category entities
        if (request.getCategoryIds() != null && !request.getCategoryIds().isEmpty()) {
            Set<Category> categories = new HashSet<>(categoryRepository.findAllById(request.getCategoryIds()));
            recipe.setCategories(categories);
        }

        // Map tagIds -> Tag entities
        if (request.getTagIds() != null && !request.getTagIds().isEmpty()) {
            Set<Tag> tags = new HashSet<>(tagRepository.findAllById(request.getTagIds()));
            recipe.setTags(tags);
        }
    }
}
