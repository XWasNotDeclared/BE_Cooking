package com.example.cooking.service;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.RecipeLike;
import com.example.cooking.model.User;
import com.example.cooking.repository.LikeRepository;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.repository.UserRepository;
import com.example.cooking.security.MyUserDetails;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecipeLikeService {
    private final LikeRepository likeRepository;
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;
    private final AccessService accessService;

    @Transactional
    public void likeRecipe(MyUserDetails currentUser, Long recipeId) {
        User user = userRepository.getReferenceById(currentUser.getId());
        accessService.checkRecipeAccess(recipeId, currentUser.getId());
        // Check nếu user đã like
        boolean alreadyLiked = likeRepository.existsByUserIdAndRecipeId(currentUser.getId(), recipeId);
        if (alreadyLiked) {
            throw new CustomException("User already liked this recipe");
        }
        RecipeLike like = new RecipeLike();
        like.setUser(user);
        like.setRecipe(recipeRepository.getReferenceById(recipeId));
        likeRepository.save(like);
    }

    @Transactional
    public void unlikeRecipe(MyUserDetails currentUser, Long recipeId) {

        long deletedCount = likeRepository.deleteByUserIdAndRecipeId(currentUser.getId(), recipeId);
        if (deletedCount == 0) {
            throw new CustomException(
                    "Like not found for user id: " + currentUser.getId() + " and recipe id: " + recipeId);
        }

    }

}
