package com.example.cooking.controller;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.request.UpdateProfileRequest;
import com.example.cooking.dto.response.RecipeStatisticsDTO;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.AuthService;
import com.example.cooking.service.RecipeService;
import com.example.cooking.service.UserService;

import io.swagger.v3.oas.annotations.Operation;
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

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<UserDTO>> getUserById(@PathVariable Long id) {

        UserDTO user = userService.getUserById(id);
        //TODO: Doi kieu tra ve cho bao mat
        return ApiResponse.ok(user);
    }

    @GetMapping("/statistics")
    public ResponseEntity<ApiResponse<RecipeStatisticsDTO>> getMyRecipeStatistics(
            @AuthenticationPrincipal MyUserDetails currentUser) {

        RecipeStatisticsDTO stats = recipeService.getStatisticsForUser(currentUser.getId());
        return ApiResponse.ok(stats);
    }

    @Operation(
        summary = "Tìm kiếm người dùng",
        description = "API cho phép tìm kiếm người dùng dựa trên từ khóa với phân trang và sắp xếp."
    )
    @GetMapping("/search")
    public ResponseEntity<ApiResponse<PageDTO<UserDTO>>> searchUsers(
            @RequestParam(defaultValue = "") String keyword,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(defaultValue = "username") String sortBy,
            @RequestParam(defaultValue = "asc") String sortDir) {

        PageDTO<UserDTO> userPage = userService.searchUsers(keyword, page, size, sortBy, sortDir);
        return ApiResponse.ok(userPage);
    }

    @PutMapping(value = "/profile", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<?> updateProfile(
            @ModelAttribute UpdateProfileRequest request,
            @AuthenticationPrincipal MyUserDetails currentUser) {
        UserDTO updated = userService.updateUserProfile(currentUser.getId(), request);
        return ApiResponse.ok(updated);
    }

    @PostMapping("/upgrade-to-chef")
    public ResponseEntity<?> upgradeToChef(
            @AuthenticationPrincipal MyUserDetails currentUser
        ) {
        String result = userService.upgradeToChef(currentUser.getId());
        return ApiResponse.ok(result);
    }



}