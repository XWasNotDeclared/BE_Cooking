package com.example.cooking.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.cooking.dto.projection.RecipePermissionInfoProjection;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Recipe;
import com.example.cooking.repository.RecipeRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AccessService {

    private final RecipeRepository recipeRepository;

    /**
     * Kiểm tra quyền truy cập recipe.
     * Ném exception nếu user không được phép xem recipe.
     */
    @Transactional(readOnly = true)
    public void checkRecipeAccess(Long recipeId, Long currentUserId) {
        RecipePermissionInfoProjection recipeInfo = recipeRepository.findPermissionInfoById(recipeId)
                .orElseThrow(() -> new CustomException("Không tìm thấy recipe với id = " + recipeId));

        if (recipeInfo.getScope() == com.example.cooking.common.enums.Scope.PRIVATE
                || recipeInfo.getStatus() != com.example.cooking.common.enums.Status.APPROVED) {
            if (!recipeInfo.getUserId().equals(currentUserId)) {
                throw new CustomException("Bạn không có quyền xem công thức này.");
            }
        }
    }
}
