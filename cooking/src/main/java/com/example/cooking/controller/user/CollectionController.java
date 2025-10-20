package com.example.cooking.controller.user;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.CollectionDTO;
import com.example.cooking.dto.request.CollectionRequest;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.CollectionService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/user/collections")
@RequiredArgsConstructor
public class CollectionController {
    private final CollectionService collectionService;

    @PostMapping("/create")
    public ResponseEntity<ApiResponse<CollectionDTO>> createCollection(@RequestBody CollectionRequest request,
            @AuthenticationPrincipal MyUserDetails currentUser) {
        return ApiResponse.ok(collectionService.createCollection(currentUser, request));
    }

    @PutMapping("/update/{collectionId}")
    public ResponseEntity<ApiResponse<CollectionDTO>> updateCollection(
            @AuthenticationPrincipal MyUserDetails currentUser, @RequestBody CollectionRequest request,
            @PathVariable Long collectionId) {
        return ApiResponse.ok(collectionService.updateCollection(currentUser, collectionId, request));
    }

    @DeleteMapping("/delete/{collectionId}")
    public ResponseEntity<ApiResponse<String>> deleteCollection(@AuthenticationPrincipal MyUserDetails currentUser,
            @PathVariable Long collectionId) {
        collectionService.deleteCollection(currentUser, collectionId);
        return ApiResponse.ok("Da xoa collection");
    }

    @GetMapping("/myColection")
    public ResponseEntity<ApiResponse<PageDTO<CollectionDTO>>> getMyCollections(
            @AuthenticationPrincipal MyUserDetails currentUser,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page, size);
        PageDTO<CollectionDTO> myCollectionPage = collectionService.getMyCollections(currentUser, pageable);
        return ApiResponse.ok(myCollectionPage);
    }

    @PostMapping("/addRecipe/{collectionId}")
    public ResponseEntity<ApiResponse<String>> addRecipeToCollection(@AuthenticationPrincipal MyUserDetails currentUser,
            @PathVariable Long collectionId, @RequestParam Long recipeId) {
        collectionService.addRecipeToCollection(currentUser, collectionId, recipeId);
        return ApiResponse.ok("Da them");
    }

    @PostMapping("/removeRecipe/{collectionId}")
    public ResponseEntity<ApiResponse<String>> removeRecipeToCollection(
            @AuthenticationPrincipal MyUserDetails currentUser,
            @PathVariable Long collectionId, @RequestParam Long recipeId) {
        collectionService.removeRecipeFromCollection(currentUser, collectionId, recipeId);
        return ApiResponse.ok("Da bo");
    }

    @GetMapping("/{collectionId}")
    public ResponseEntity<ApiResponse<PageDTO<RecipeSummaryDTO>>> getRecipesByCollectionId(@AuthenticationPrincipal MyUserDetails currentUser,
                                @PathVariable Long collectionId,
                                @RequestParam(defaultValue = "0") int page,
                                @RequestParam(defaultValue = "10") int size){
        Pageable pageable = PageRequest.of(page, size);
        PageDTO<RecipeSummaryDTO> dtos = collectionService.getRecipesByCollectionId(currentUser, pageable, collectionId);
        return ApiResponse.ok(dtos);
                                }

}
