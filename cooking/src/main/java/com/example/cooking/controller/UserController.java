package com.example.cooking.controller;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.example.cooking.common.ApiResponse;
import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.response.RecipeStatisticsDTO;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.AuthService;
import com.example.cooking.service.RecipeService;
import com.example.cooking.service.UserService;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/user")
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;
    private final RecipeService recipeService;
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
    @GetMapping("/me")
    public ResponseEntity<ApiResponse<UserDTO>> getCurrentUser(@AuthenticationPrincipal MyUserDetails currentUser) {

        UserDTO user = userService.getUserById(currentUser.getId());
        //TODO: Doi kieu tra ve cho bao mat
        return ApiResponse.ok(user);
    }
    @GetMapping("/statistics")
    public ResponseEntity<ApiResponse<RecipeStatisticsDTO>> getMyRecipeStatistics(
            @AuthenticationPrincipal MyUserDetails currentUser) {

        RecipeStatisticsDTO stats = recipeService.getStatisticsForUser(currentUser.getId());
        return ApiResponse.ok(stats);
    }
}