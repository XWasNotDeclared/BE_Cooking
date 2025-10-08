package com.example.cooking.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Like;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.User;
import com.example.cooking.repository.LikeRepository;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LikeService {
    private final LikeRepository likeRepository;
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;

    public void likeRecipe(Long userId, Long recipeId) {
        //TODO: Like duoc ca recipe dang bi private và ca pending. DAY LA LOI
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new CustomException("User not found with id: " + userId));
        Recipe recipe = recipeRepository.findByIdAndScopeAndStatus(recipeId,Scope.PUBLIC, Status.APPROVED)
                .orElseThrow(() -> new CustomException("You don't have permit or recipe not found with id: " + recipeId));
        // Check nếu user đã like
        boolean alreadyLiked = likeRepository.existsByUserAndRecipe(user, recipe);
        if (alreadyLiked) {
            throw new CustomException("User already liked this recipe");
        }
        Like like = new Like();
        like.setUser(user);
        like.setRecipe(recipe);
        likeRepository.save(like);
    }

    @Transactional
    public void unlikeRecipe(Long userId, Long recipeId) {
        
        long deletedCount = likeRepository.deleteByUserIdAndRecipeId(userId, recipeId);
        if (deletedCount == 0) {
            throw new CustomException("Like not found for user id: " + userId + " and recipe id: " + recipeId);
        }
        
    }

}
