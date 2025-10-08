package com.example.cooking.dto.response;

import java.time.LocalDateTime;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.UserDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RecipeSummaryDTO {

    private Long id;

    private String title;

    private String description;

    private String imageUrl;

    private Long prepTime;

    private Long cookTime;

    private Long servings;

    private Scope scope;

    private Status status;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private UserDTO author; // Lấy từ User (recipe.getUser().getUsername() hoặc getFullName())

    

}
