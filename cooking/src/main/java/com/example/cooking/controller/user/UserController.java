package com.example.cooking.controller.user;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
// import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
// import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
// import org.springframework.security.core.context.SecurityContextHolder;
// import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.IngredientDTO;
import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.mapper.RecipeMapper;
import com.example.cooking.dto.request.NewRecipeRequest;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.IngredientService;
import com.example.cooking.service.LikeService;
import com.example.cooking.service.RecipeService;
import com.example.cooking.service.UserService;

import io.swagger.v3.oas.annotations.Parameter;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final RecipeService recipeService;
    private final LikeService likeService;
    private final RecipeMapper recipeMapper;
    private final IngredientService ingredientService;

    @GetMapping("/welcome")
    public ResponseEntity<ApiResponse<String>> welcomeUser() {
        return ApiResponse.ok("Welcome to the ToDo App!/User");
    }


    // @GetMapping("/me")
    // public ResponseEntity<ApiResponse<User>> getCurrentUser() {
    //     // Lấy Authentication từ SecurityContextHolder
    //     Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    //     if (authentication == null || !authentication.isAuthenticated()) {
    //         return ApiResponse.error(HttpStatus.UNAUTHORIZED,"User is not authenticated");
    //     }

    //     // Lấy email từ Authentication
    //     String email;
    //     Object principal = authentication.getPrincipal();
    //     if (principal instanceof UserDetails) {
    //         email = ((UserDetails) principal).getUsername();
    //     } else {
    //         email = principal.toString();
    //     }
    //     // Lấy thông tin user từ database theo username
    //     User user = userService.getUserByEmail(email);
    //     return ApiResponse.ok(user);
    // }
    @GetMapping("/myProfile")
    public ResponseEntity<ApiResponse<UserDTO>> getCurrentUser(@AuthenticationPrincipal MyUserDetails currentUser) {

        UserDTO user = userService.getUserById(currentUser.getId());
        //TODO: Doi kieu tra ve cho bao mat
        return ApiResponse.ok(user);
    }

    @PostMapping("/create/recipe")
    public ResponseEntity<ApiResponse<String>> createRecipe(@Valid @RequestBody NewRecipeRequest newRecipeRequest, 
     @AuthenticationPrincipal MyUserDetails currentUser) {
        Long recipeId = recipeService.addNewRecipe(currentUser, newRecipeRequest);
        //TODO: Doi kieu tra ve cho bao mat
        return ApiResponse.ok("Them thanh cong recipe voi id:" + recipeId);
    }
    @GetMapping("/list/AllMyRecipes")
    public ResponseEntity<ApiResponse<PageDTO<RecipeSummaryDTO>>> getMyRecipes(@AuthenticationPrincipal MyUserDetails currentUser,
                                                                            @RequestParam(defaultValue = "0") int page,
                                                                            @RequestParam(defaultValue = "10") int size) {
        
       Pageable pageable = PageRequest.of(page, size);

        Page<RecipeSummaryDTO> myRecipes = recipeService.getMyRecipes(currentUser, pageable);
        PageDTO<RecipeSummaryDTO> pageDTO = new PageDTO<>(myRecipes.getContent(), myRecipes.getTotalElements(), myRecipes.getTotalPages(), myRecipes.getNumber());
        
        return ApiResponse.ok(pageDTO);
    }

    @PostMapping("/recipes/{id}/like")
    public ResponseEntity<ApiResponse<String>> likeRecipe(@PathVariable  @Parameter(description = "ID of the recipe to like") 
                                                            Long id, @AuthenticationPrincipal MyUserDetails currentUser) {
        likeService.likeRecipe(currentUser.getId(), id);
        return ApiResponse.ok("Liked recipe with id: " + id);
    }

    @PostMapping("/recipes/{id}/unlike")
    public ResponseEntity<ApiResponse<String>> unlikeRecipe(@PathVariable  @Parameter(description = "ID of the recipe to unlike") 
                                                            Long id, @AuthenticationPrincipal MyUserDetails currentUser) {
        likeService.unlikeRecipe(currentUser.getId(), id);
        return ApiResponse.ok("Unliked recipe with id: " + id);
    }
    @GetMapping("/suggest/ingredients")
    public ResponseEntity<ApiResponse<List<IngredientDTO>>> autoCompleteIngredient(@RequestParam String keyword) {
       List<IngredientDTO> listSuggest = ingredientService.autocomplete(keyword);
        return ApiResponse.ok(listSuggest);
    }


}