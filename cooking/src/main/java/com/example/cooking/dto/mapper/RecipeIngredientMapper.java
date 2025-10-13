package com.example.cooking.dto.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.example.cooking.dto.RecipeIngredientDTO;
import com.example.cooking.dto.request.RecipeIngredientRequestDTO;
import com.example.cooking.dto.response.IngredientInRecipeResponse;
import com.example.cooking.model.Ingredient;
import com.example.cooking.model.RecipeIngredient;

@Mapper(componentModel = "spring")
public interface RecipeIngredientMapper {

    @Mapping(target = "ingredient", source = "ingredientId")
    @Mapping(target = "id", ignore = true)
    @Mapping(target = "recipe", ignore = true)
    RecipeIngredient toEntity(RecipeIngredientDTO dto);


    @Mapping(target = "ingredient", source = "ingredientId")
    @Mapping(target = "id", ignore = true)
    @Mapping(target = "recipe", ignore = true)
    RecipeIngredient toEntity(RecipeIngredientRequestDTO dto);

    List<RecipeIngredient> toEntityList(List<RecipeIngredientDTO> dtos);

    @Mapping(target = "ingredientId", source = "ingredient.id")
    RecipeIngredientDTO toDto(RecipeIngredient entity);

    default Ingredient map(Long id) {
        if (id == null) {
            return null;
        }
        Ingredient ingredient = new Ingredient();
        ingredient.setId(id);
        return ingredient;
    }

    // @Mapping(target = "nameIngredient", source = "ingredient.name")// bỏ tên gốc luôn
    @Mapping(target = "unit", source = "unit")
    @Mapping(target = "quantity", source = "quantity")
    @Mapping(target = "displayName", source = "rawName")
    @Mapping(target = "displayOrder", source = "displayOrder")
    
    IngredientInRecipeResponse toIngredientInRecipeResponse (RecipeIngredient entity);
}
