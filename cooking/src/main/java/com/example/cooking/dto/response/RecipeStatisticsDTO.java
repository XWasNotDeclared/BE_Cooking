package com.example.cooking.dto.response;

import java.util.Map;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecipeStatisticsDTO {
    private Long totalRecipes;
    private Long totalViews;
    private Long totalLikes;
    private Map<String, Long> byStatus;
    private Map<String, Long> byDifficulty;
    private Map<String, Long> byScope;
}
