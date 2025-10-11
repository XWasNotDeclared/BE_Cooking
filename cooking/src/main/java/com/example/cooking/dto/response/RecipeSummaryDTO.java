package com.example.cooking.dto.response;

import java.time.LocalDateTime;
import java.util.LinkedHashSet;
import java.util.Set;

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
    
    private Set<CategoryResponseDTO> categories = new LinkedHashSet<>();
    private Set<TagResponseDTO> tags = new LinkedHashSet<>();

    private UserDTO author; // Lấy từ User (recipe.getUser().getUsername() hoặc getFullName())

    private Long likesCount;

}
