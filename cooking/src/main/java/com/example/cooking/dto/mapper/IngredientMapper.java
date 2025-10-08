package com.example.cooking.dto.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.example.cooking.dto.request.IngredientRequest;
import com.example.cooking.model.Ingredient;

@Mapper (componentModel = "spring")
public interface IngredientMapper {
    @Mapping(target = "id", ignore = true)
    Ingredient toIngredient (IngredientRequest dto);
    
    List<Ingredient> toListIngredient (List<IngredientRequest> dto);

}
