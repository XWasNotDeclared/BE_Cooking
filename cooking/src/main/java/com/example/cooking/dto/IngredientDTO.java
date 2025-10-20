package com.example.cooking.dto;

import com.example.cooking.common.enums.Status;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class IngredientDTO {
    private String name;

    private Status status;
}
