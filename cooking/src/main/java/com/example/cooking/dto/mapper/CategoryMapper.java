package com.example.cooking.dto.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.example.cooking.dto.request.CategoryRequestDTO;
import com.example.cooking.dto.response.CategoryResponseDTO;
import com.example.cooking.model.Category;

@Mapper(componentModel = "spring")
public interface CategoryMapper {
    @Mapping(target = "slug", ignore = true)
    @Mapping(target = "id", ignore = true)
    @Mapping(target = "recipes", ignore = true)
    Category toEntity(CategoryRequestDTO dto);
    List<Category> toEntity(List<CategoryRequestDTO> dtos);

    CategoryResponseDTO toDTO(Category category);
    List<CategoryResponseDTO> toDTO(List<Category> categories);
}
