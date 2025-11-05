package com.example.cooking.controller.user;
import java.util.List;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
// import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
// import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
// import org.springframework.security.core.context.SecurityContextHolder;
// import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.CategoryDTO;
import com.example.cooking.dto.IngredientDTO;
import com.example.cooking.dto.TagDTO;
import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.mapper.RecipeMapper;
import com.example.cooking.dto.request.LogoutRequest;
import com.example.cooking.dto.request.NewRecipeRequest;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.model.Tag;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.AuthService;
import com.example.cooking.service.CategoryService;
import com.example.cooking.service.IngredientService;
import com.example.cooking.service.RecipeLikeService;
import com.example.cooking.service.RecipeService;
import com.example.cooking.service.RefreshTokenService;
import com.example.cooking.service.TagService;
import com.example.cooking.service.UserService;
import com.example.cooking.common.enums.*;
import io.swagger.v3.oas.annotations.Parameter;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final RecipeService recipeService;
    private final RecipeLikeService likeService;
    private final IngredientService ingredientService;
    private final CategoryService categoryService;
    private final TagService tagService;
    private final AuthService authService;

    @GetMapping("/welcome")
    public ResponseEntity<ApiResponse<String>> welcomeUser() {
        return ApiResponse.ok("Welcome to the ToDo App!/User");
    }
    @PostMapping("/logout-all")
    public ResponseEntity<ApiResponse<String>> logoutAllDevice(@AuthenticationPrincipal MyUserDetails currentUser) {
        authService.handleLogoutAll(currentUser.getId());
        return ApiResponse.ok("Logout all device successful");
    }
    @GetMapping("/my-profile")
    public ResponseEntity<ApiResponse<UserDTO>> getCurrentUser(@AuthenticationPrincipal MyUserDetails currentUser) {

        UserDTO user = userService.getUserById(currentUser.getId());
        //TODO: Doi kieu tra ve cho bao mat
        return ApiResponse.ok(user);
    }

    @PostMapping(value = "/create/recipe", consumes = {"multipart/form-data"})
    public ResponseEntity<ApiResponse<String>> createRecipe(
        @Valid @ModelAttribute NewRecipeRequest newRecipeRequest, 
     @AuthenticationPrincipal MyUserDetails currentUser) {
        Long recipeId = recipeService.addNewRecipe(currentUser, newRecipeRequest);
        //TODO: Doi kieu tra ve cho bao mat
        return ApiResponse.ok("Them thanh cong recipe voi id:" + recipeId);
    }

    @PatchMapping("/recipe/{id}/status")
    public ResponseEntity<ApiResponse<String>> setRecipeStatus(
        @AuthenticationPrincipal MyUserDetails currentUser,
            @PathVariable Long id,
            @RequestParam Scope scope) {
        recipeService.setRecipeScope(currentUser, id, scope);
        return ApiResponse.ok("Đặt phạm vi truy cập thành công");
    }



    @GetMapping("/my-recipes")
    public ResponseEntity<ApiResponse<PageDTO<RecipeSummaryDTO>>> getMyRecipes(@AuthenticationPrincipal MyUserDetails currentUser,
                                                                            @RequestParam(defaultValue = "0") int page,
                                                                            @RequestParam(defaultValue = "10") int size) {
        
       Pageable pageable = PageRequest.of(page, size);

        PageDTO<RecipeSummaryDTO> myRecipes = recipeService.getMyRecipes(currentUser, pageable);
        
        return ApiResponse.ok(myRecipes);
    }

    @PostMapping("/recipes/{id}/like")
    public ResponseEntity<ApiResponse<String>> likeRecipe(@PathVariable  @Parameter(description = "ID of the recipe to like") 
                                                            Long id, @AuthenticationPrincipal MyUserDetails currentUser) {
        likeService.likeRecipe(currentUser, id);
        return ApiResponse.ok("Liked recipe with id: " + id);
    }

    @PostMapping("/recipes/{id}/unlike")
    public ResponseEntity<ApiResponse<String>> unlikeRecipe(@PathVariable  @Parameter(description = "ID of the recipe to unlike") 
                                                            Long id, @AuthenticationPrincipal MyUserDetails currentUser) {
        likeService.unlikeRecipe(currentUser, id);
        return ApiResponse.ok("Unliked recipe with id: " + id);
    }
    @GetMapping("/recipes/{id}")
    public ResponseEntity<ApiResponse<RecipeDetailResponse>> getRecipeById (@PathVariable Long id,
                                                                        @AuthenticationPrincipal MyUserDetails currentUser){
        RecipeDetailResponse recipeResponse = recipeService.getRecipeDetailById(id, currentUser);
        return ApiResponse.ok(recipeResponse);
    }
    @GetMapping("/suggest/ingredients")
    public ResponseEntity<ApiResponse<List<IngredientDTO>>> autoCompleteIngredient(@RequestParam String keyword) {
       List<IngredientDTO> listSuggest = ingredientService.autocomplete(keyword);
        return ApiResponse.ok(listSuggest);
    }

    @GetMapping("/suggest/categories")
    public ResponseEntity<ApiResponse<List<CategoryDTO>>> autoCompleteCategories(@RequestParam String keyword) {
       List<CategoryDTO> listSuggest = categoryService.autocomplete(keyword);
        return ApiResponse.ok(listSuggest);
    }

    @GetMapping("/suggest/tags")
    public ResponseEntity<ApiResponse<List<TagDTO>>> autoCompleteTags(@RequestParam String keyword) {
       List<TagDTO> listSuggest = tagService.autocomplete(keyword);
        return ApiResponse.ok(listSuggest);
    }


}