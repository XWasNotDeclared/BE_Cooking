package com.example.cooking.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.example.cooking.common.enums.Difficulty;
import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.DailyTotalStat;
import com.example.cooking.dto.RecipeDifficultyCountDTO;
import com.example.cooking.dto.RecipeScopeCountDTO;
import com.example.cooking.dto.RecipeStatusCountDTO;
import com.example.cooking.dto.projection.RecipeDailyStat;
import com.example.cooking.dto.response.RecipeStatisticsDTO;
import com.example.cooking.dto.response.RecipeStatsResponse;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Recipe;
import com.example.cooking.repository.RecipeDailyViewRepository;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.security.MyUserDetails;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecipeStatsService {

    private final RecipeDailyViewRepository dailyViewRepository;
    private final RecipeRepository recipeRepositoty;
    private final RecipeRepository recipeRepository;
        ///////// thống kê cho chef///////////
public RecipeStatisticsDTO getStatisticsForUser(Long userId) {

    // tổng số
    Long totalRecipes = recipeRepository.countAllByUser(userId);
    Long totalViews = recipeRepository.countTotalViewsByUser(userId);
    Long totalLikes = recipeRepository.countTotalLikesByUser(userId);

    // Status
    Map<Status, Long> statusMap = Arrays.stream(Status.values())
            .collect(Collectors.toMap(
                    status -> status,
                    status -> 0L
            ));
    recipeRepository.countByStatusForUser(userId).forEach(r ->
            statusMap.put(r.getStatus(), r.getCount())
    );
    List<RecipeStatusCountDTO> statusList = statusMap.entrySet().stream()
            .map(e -> new RecipeStatusCountDTO(e.getKey(), e.getValue()))
            .toList();

    // Difficulty
    Map<Difficulty, Long> difficultyMap = Arrays.stream(Difficulty.values())
            .collect(Collectors.toMap(d -> d, d -> 0L));
    recipeRepository.countByDifficultyForUser(userId).forEach(r ->
            difficultyMap.put(r.getDifficulty(), r.getCount())
    );
    List<RecipeDifficultyCountDTO> difficultyList = difficultyMap.entrySet().stream()
            .map(e -> new RecipeDifficultyCountDTO(e.getKey(), e.getValue()))
            .toList();

    // Scope
    Map<Scope, Long> scopeMap = Arrays.stream(Scope.values())
            .collect(Collectors.toMap(s -> s, s -> 0L));
    recipeRepository.countByScopeForUser(userId).forEach(r ->
            scopeMap.put(r.getScope(), r.getCount())
    );
    List<RecipeScopeCountDTO> scopeList = scopeMap.entrySet().stream()
            .map(e -> new RecipeScopeCountDTO(e.getKey(), e.getValue()))
            .toList();

    return new RecipeStatisticsDTO(
            totalRecipes,
            totalViews != null ? totalViews : 0L,
            totalLikes != null ? totalLikes : 0L,
            statusList,
            difficultyList,
            scopeList
    );
}



    public List<RecipeDailyStat> getAuthorStatsLastDays(Long authorId, Integer daysBack) {
        LocalDate toDate = LocalDate.now();
        LocalDate fromDate = (daysBack != null && daysBack > 0)
                ? toDate.minusDays(daysBack)
                : LocalDate.of(1970, 1, 1); // mặc định toàn bộ
        return dailyViewRepository.getAuthorDailyStats(authorId, fromDate, toDate);
    }

    public List<DailyTotalStat> getDailyTotalStats(Long authorId, Integer daysBack) {
        List<RecipeDailyStat> raw = getAuthorStatsLastDays(authorId, daysBack);

        Map<LocalDate, List<RecipeDailyStat>> grouped = raw.stream()
                .collect(Collectors.groupingBy(RecipeDailyStat::getDate));

        List<DailyTotalStat> result = new ArrayList<>();

        for (Map.Entry<LocalDate, List<RecipeDailyStat>> entry : grouped.entrySet()) {
            LocalDate date = entry.getKey();
            List<RecipeDailyStat> details = entry.getValue();

            long total = details.stream().mapToLong(RecipeDailyStat::getCount).sum();

            result.add(new DailyTotalStat(date, total, details));
        }

        result.sort(Comparator.comparing(DailyTotalStat::getDate));

        return result;
    }

        /**
     * Lấy thống kê lượt xem theo ngày của 1 recipe trong n ngày gần nhất
     */
    public List<RecipeDailyStat> getRecipeStatsLastDays(Long recipeId, Integer daysBack) {
        LocalDate toDate = LocalDate.now();
        LocalDate fromDate = (daysBack != null && daysBack > 0)
                ? toDate.minusDays(daysBack)
                : LocalDate.of(1970, 1, 1);

        return dailyViewRepository.getRecipeDailyStats(recipeId, fromDate, toDate);
    }

    /**
     * Tính tổng lượt xem của recipe trong khoảng thời gian
     */
    public Long getRecipeTotalViews(Long recipeId, Integer daysBack) {
        List<RecipeDailyStat> stats = getRecipeStatsLastDays(recipeId, daysBack);
        return stats.stream()
                .mapToLong(r -> r.getCount() != null ? r.getCount() : 0L)
                .sum();
    }
    public RecipeStatsResponse getRecipeStatsResponse(Long recipeId, Integer daysBack, MyUserDetails currentUser) {
        Long currentUserId = currentUser != null ? currentUser.getId() : null;
        Recipe recipe = recipeRepositoty.findById(recipeId)
                .orElseThrow(() -> new RuntimeException("Không tìm thấy recipe với id = " + recipeId));
        if (recipe.getUser().getId() !=(currentUserId)) {
            throw new CustomException("Bạn không thể xem thống kê công thức của người khác!");
        }
        List<RecipeDailyStat> dailyStats = getRecipeStatsLastDays(recipeId, daysBack);
        Long totalViews = getRecipeTotalViews(recipeId, daysBack);

        return new RecipeStatsResponse(dailyStats, totalViews);
    }



}
