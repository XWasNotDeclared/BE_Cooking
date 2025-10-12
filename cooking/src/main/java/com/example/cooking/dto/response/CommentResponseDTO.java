package com.example.cooking.dto.response;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class CommentResponseDTO {
    private Long id;
    private String content;
    private Long userId;
    private String username;
    private String userAvatarUrl;
    private Long recipeId;
    private Long parentCommentId;
    private int replyCount;
    // private Set<CommentResponseDTO> replies;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}