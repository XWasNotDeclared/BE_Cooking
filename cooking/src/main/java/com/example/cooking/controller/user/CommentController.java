package com.example.cooking.controller.user;


import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.PageDTO;
import com.example.cooking.dto.request.CommentRequestDTO;
import com.example.cooking.dto.response.CommentResponseDTO;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.service.CommentService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
@RequiredArgsConstructor
public class CommentController {

    private final CommentService commentService;

    @PostMapping("/recipes/{recipeId}/comments")
    public ResponseEntity<ApiResponse<CommentResponseDTO>> createComment(
            @PathVariable Long recipeId,
            @Valid @RequestBody CommentRequestDTO dto,
            @AuthenticationPrincipal MyUserDetails currentUser) {
        CommentResponseDTO response = commentService.createComment(recipeId, dto, currentUser);
        return ApiResponse.ok(response);
    }

    @GetMapping("/recipes/{recipeId}/comments")
    public ResponseEntity<ApiResponse<PageDTO<CommentResponseDTO>>> getCommentsByRecipe(
            @PathVariable Long recipeId,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        Page<CommentResponseDTO> comments = commentService.getCommentsByRecipe(recipeId, page, size);
        PageDTO<CommentResponseDTO> pageDTOs = new PageDTO<>(
                comments.getContent(),
                comments.getTotalElements(),
                comments.getTotalPages(),
                comments.getNumber()
        );
        return ApiResponse.ok(pageDTOs);
    }

    //TODO: xem xet sau
    // @PutMapping("/comments/{commentId}")
    // public ResponseEntity<CommentResponseDTO> updateComment(
    //         @PathVariable Long commentId,
    //         @Valid @RequestBody CommentRequestDTO dto) {
    //     CommentResponseDTO response = commentService.updateComment(commentId, dto);
    //     return ResponseEntity.ok(response);
    // }

    // @DeleteMapping("/comments/{commentId}")
    // public ResponseEntity<Void> deleteComment(@PathVariable Long commentId) {
    //     commentService.deleteComment(commentId);
    //     return ResponseEntity.noContent().build();
    // }
}