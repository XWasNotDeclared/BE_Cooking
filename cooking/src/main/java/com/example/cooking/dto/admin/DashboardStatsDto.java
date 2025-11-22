// src/main/java/com/example/cooking/dto/admin/DashboardStatsDto.java
package com.example.cooking.dto.admin;

import java.time.LocalDate;
import java.time.LocalDateTime;

public record DashboardStatsDto(
    // Tổng quan
    Long totalUsers,
    Long totalRecipes,
    Long totalComments,
    Long totalCategories,
    Long totalTags,
    Long totalCollections,

    // Hôm nay
    Long usersToday,
    Long recipesToday,
    Long commentsToday,
    Long viewsToday,

    // Chờ duyệt
    Long pendingRecipes,
    Long reportedRecipes,
    Long reportedComments,

    // Top hoạt động gần đây (7 ngày)
    Long activeUsersLast7Days,
    Long newRecipesLast7Days,

    // Thời gian thống kê
    LocalDateTime generatedAt,

    // Thống kê tăng trưởng (so với hôm qua)
    Double usersGrowthPercent,
    Double recipesGrowthPercent,
    Double viewsGrowthPercent
) {
    public DashboardStatsDto {
        generatedAt = LocalDateTime.now();
    }
}