package com.example.cooking.dto.mapper;

import com.example.cooking.dto.StepDTO;
import com.example.cooking.model.Step;
import org.mapstruct.*;


@Mapper(componentModel = "spring")
public interface StepMapper {

    // Map từ StepDTO sang Step (cần Recipe truyền vào)
    @Mapping(target = "id", ignore = true)  // ID tự sinh
    @Mapping(target = "recipe", ignore = true)
    Step toEntity(StepDTO dto);

    // // Map list StepDTO -> list Step
    // List<Step> toEntityList(List<StepDTO> dtos);

    // // Map ngược lại (Step -> StepDTO)
    // @Mapping(target = "stepNumber", source = "stepNumber")
    // @Mapping(target = "description", source = "description")
    // @Mapping(target = "imageUrls", source = "imageUrls")
    // StepDTO toDTO(Step step);

    // List<StepDTO> toDTOList(List<Step> steps);
}
