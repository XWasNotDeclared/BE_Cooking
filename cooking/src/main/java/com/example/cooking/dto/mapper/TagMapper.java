package com.example.cooking.dto.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.example.cooking.dto.request.AddTagRequest;
import com.example.cooking.dto.response.TagResponseDTO;
import com.example.cooking.model.Tag;

@Mapper(componentModel = "spring")
public interface TagMapper {
    @Mapping(target = "id", ignore = true)
    @Mapping(target = "slug", ignore = true)
    @Mapping(target = "recipes", ignore = true)
    Tag toEntity(AddTagRequest dto);

    TagResponseDTO toTagResponse(Tag tag);
    List<TagResponseDTO> toTagResponseList(List<Tag> tags);
    
}