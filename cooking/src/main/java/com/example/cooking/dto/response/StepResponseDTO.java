package com.example.cooking.dto.response;
import java.util.List;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class StepResponseDTO {

    @NotNull
    private Integer stepNumber;

    @NotBlank
    private String description;

    private List<String> imageUrls;

}
