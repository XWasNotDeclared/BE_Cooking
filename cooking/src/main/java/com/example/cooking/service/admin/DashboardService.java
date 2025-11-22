// // src/main/java/com/example/cooking/service/admin/DashboardService.java
// package com.example.cooking.service.admin;

// import com.example.cooking.common.enums.Status;
// import com.example.cooking.dto.admin.DashboardStatsDto;
// import com.example.cooking.repository.*;
// import lombok.RequiredArgsConstructor;
// import org.springframework.stereotype.Service;

// import java.time.LocalDate;
// import java.time.LocalDateTime;
// import java.time.LocalTime;

// @Service
// @RequiredArgsConstructor
// public class DashboardService {

//     private final UserRepository userRepository;
//     private final RecipeRepository recipeRepository;
//     private final CommentRepository commentRepository;
//     private final CategoryRepository categoryRepository;
//     private final TagRepository tagRepository;
//     private final CollectionRepository collectionRepository;

//     public DashboardStatsDto getStats() {
//         LocalDate today = LocalDate.now();
//         LocalDate yesterday = today.minusDays(1);
//         LocalDate sevenDaysAgo = today.minusDays(7);

//         LocalDateTime startOfToday = today.atStartOfDay();
//         LocalDateTime startOfYesterday = yesterday.atStartOfDay();
//         LocalDateTime startOfSevenDaysAgo = sevenDaysAgo.atStartOfDay();

//         // Tổng quan
//         long totalUsers = userRepository.count();
//         long totalRecipes = recipeRepository.count();
//         long totalComments = commentRepository.count();
//         long totalCategories = categoryRepository.count();
//         long totalTags = tagRepository.count();
//         // long totalCollections = collectionRepository.countByIsPublicTrue();

//         // Hôm nay
//         long usersToday = userRepository.countByCreatedAtBetween(startOfToday, LocalDateTime.now());
//         long recipesToday = recipeRepository.countByCreatedAtBetween(startOfToday, LocalDateTime.now());
//         long commentsToday = commentRepository.countByCreatedAtBetween(startOfToday, LocalDateTime.now());
//         long viewsToday = recipeRepository.sumViewsToday(); // cần query riêng

//         // Chờ duyệt & bị báo cáo (giả sử bạn có cột reportedCount hoặc bảng Report)
//         long pendingRecipes = recipeRepository.countByStatus(Status.PENDING);
//         long reportedRecipes = recipeRepository.countReportedRecipes(); // custom query
//         long reportedComments = commentRepository.countReportedComments();

//         // Hoạt động 7 ngày
//         long activeUsersLast7Days = userRepository.countActiveUsersLast7Days(startOfSevenDaysAgo);
//         long newRecipesLast7Days = recipeRepository.countByCreatedAtAfter(startOfSevenDaysAgo.atStartOfDay());

//         // Tăng trưởng so với hôm qua
//         long usersYesterday = userRepository.countByCreatedAtBetween(startOfYesterday, startOfToday);
//         long recipesYesterday = recipeRepository.countByCreatedAtBetween(startOfYesterday, startOfToday);
//         long viewsYesterday = recipeRepository.sumViewsYesterday();

//         double usersGrowth = calculateGrowth(usersToday, usersYesterday);
//         double recipesGrowth = calculateGrowth(recipesToday, recipesYesterday);
//         double viewsGrowth = calculateGrowth(viewsToday, viewsYesterday);

//         return new DashboardStatsDto(
//             totalUsers, totalRecipes, totalComments, totalCategories, totalTags, totalCollections,
//             usersToday, recipesToday, commentsToday, viewsToday,
//             pendingRecipes, reportedRecipes, reportedComments,
//             activeUsersLast7Days, newRecipesLast7Days,
//             LocalDateTime.now(),
//             round(usersGrowth), round(recipesGrowth), round(viewsGrowth)
//         );
//     }

//     private double calculateGrowth(long today, long yesterday) {
//         if (yesterday == 0) return today > 0 ? 100.0 : 0.0;
//         return (double) (today - yesterday) / yesterday * 100.0;
//     }

//     private double round(double value) {
//         return Math.round(value * 10.0) / 10.0;
//     }
// }