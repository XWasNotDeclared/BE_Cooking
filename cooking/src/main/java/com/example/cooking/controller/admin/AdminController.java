package com.example.cooking.controller.admin;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.mapper.RecipeMapper;
import com.example.cooking.dto.mapper.UserMapper;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.service.AdminService;
import com.example.cooking.service.RecipeService;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminController {
    private final AdminService adminService;
    private final RecipeService recipeService;
    private final UserMapper userMapper;
    private final RecipeMapper recipeMapper;

    @GetMapping("/welcome")
    public ResponseEntity<ApiResponse<String>> welcomeAdmin() {
        return  ApiResponse.ok("Welcome to the ToDo App!/ADMIN");
    }
    @GetMapping("/user/all")
    public ResponseEntity<ApiResponse<List<UserDTO>>> getAllUsers(){

        return ApiResponse.ok(userMapper.toUserDTOList(adminService.getAllUsers()));
    }


    @PatchMapping("/recipe/{id}/status")
    public ResponseEntity<ApiResponse<String>> setRecipeStatus (@PathVariable Long id,
    @RequestParam Status status){
        adminService.setRecipeStatus(id, status);
        return ApiResponse.ok("Dat trang thai thanh cong");
    }

    @GetMapping("/recipe/all")
    public ResponseEntity<ApiResponse<List<RecipeDetailResponse>>> getAllRecipes(){
        //TODO: sửa lại, dùng enrich
        return ApiResponse.ok(recipeMapper.toRecipeResponseList(adminService.getAllRecipes()));
    }

    @GetMapping("/recipe/{id}")
    public ResponseEntity<ApiResponse<RecipeDetailResponse>> getRecipeById (@PathVariable Long id){
        RecipeDetailResponse recipeResponse = recipeMapper.toRecipeResponse(recipeService.getRecipeById(id));
        return ApiResponse.ok(recipeResponse);
    }


}
