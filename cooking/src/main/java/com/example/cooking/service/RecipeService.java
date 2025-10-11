package com.example.cooking.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.mapper.RecipeMapper;
// import com.example.cooking.dto.mapper.UserMapper;
import com.example.cooking.dto.request.NewRecipeRequest;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.User;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.security.MyUserDetails;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecipeService {
    private final RecipeRepository recipeRepository;
    // private final UserMapper userMapper;
    private final RecipeMapper recipeMapper;
    
    @Transactional
    public Long addNewRecipe (MyUserDetails currentUser, NewRecipeRequest newRecipeRequest) {
        // User user = userMapper.toUser(currentUser);
        User user = new User();
        user.setId(currentUser.getId());
        Recipe recipe = recipeMapper.toRecipe(newRecipeRequest);
        recipe.setStatus(Status.PENDING);
        recipe.setUser(user);
        recipe.getSteps().forEach(step -> step.setRecipe(recipe));
        recipe.getRecipeIngredients().forEach(ri -> ri.setRecipe(recipe));
        recipeRepository.save(recipe);
        return recipe.getId();
    }


    public List<RecipeSummaryDTO> getMyRecipes(MyUserDetails currentUser) {
        // User user = userMapper.toUser(currentUser);
        List<Recipe> recipes = recipeRepository.findByUserId(currentUser.getId());
        List<RecipeSummaryDTO> recipeSummaries = recipeMapper.toSummaryDTOList(recipes);
        return recipeSummaries;
    }

    public RecipeDetailResponse getRecipeByIdAndScopeAndStatus(Long id, Scope scope, Status status) {
        Recipe recipe = recipeRepository.findByIdAndScopeAndStatus(id, scope, status).orElseThrow(() -> new CustomException("You don't have permit to see that recipe or Recipe not found with id: " + id));
        return recipeMapper.toRecipeResponse(recipe);
    }

    public Recipe getRecipeById(Long id){
        Recipe recipe = recipeRepository.findById(id).orElseThrow(()-> new CustomException("Khong tim thay recipe voi id: " + id));
        return recipe;
    }


}
