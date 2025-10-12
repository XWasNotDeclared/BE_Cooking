package com.example.cooking.dto.mapper;

import com.example.cooking.dto.request.CommentRequestDTO;
import com.example.cooking.dto.response.CommentResponseDTO;
import com.example.cooking.model.Comment;

import java.util.Set;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.Named;

@Mapper(componentModel = "spring")
public interface CommentMapper {

    // Ánh xạ từ CommentRequestDTO sang Comment
    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", ignore = true)
    @Mapping(target = "recipe", ignore = true)
    @Mapping(target = "parentComment", ignore = true)
    @Mapping(target = "replies", ignore = true)
    @Mapping(target = "createdAt", ignore = true)
    @Mapping(target = "updatedAt", ignore = true)
    Comment toEntity(CommentRequestDTO dto);

    // Ánh xạ từ Comment sang CommentResponseDTO
    @Mapping(source = "user.id", target = "userId")
    @Mapping(source = "user.username", target = "username")
    @Mapping(source = "user.avatarUrl", target = "userAvatarUrl")
    @Mapping(source = "recipe.id", target = "recipeId")
    @Mapping(source = "parentComment.id", target = "parentCommentId")
    @Mapping(target = "replyCount", expression = "java(comment.getReplies() != null ? comment.getReplies().size() : 0)")
    // @Mapping(target = "replyCount", ignore = true)
    // @Mapping(source = "replies", target = "replies", qualifiedByName = "toResponseDTOSet")
    CommentResponseDTO toResponseDTO(Comment comment);

    // Ánh xạ danh sách replies
    @Named("toResponseDTOSet")
    Set<CommentResponseDTO> toResponseDTOSet(Set<Comment> comments);

    // Cập nhật Comment từ CommentRequestDTO
    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", ignore = true)
    @Mapping(target = "recipe", ignore = true)
    @Mapping(target = "parentComment", ignore = true)
    @Mapping(target = "replies", ignore = true)
    @Mapping(target = "createdAt", ignore = true)
    @Mapping(target = "updatedAt", ignore = true)
    void updateEntityFromDTO(CommentRequestDTO dto, @MappingTarget Comment comment);
}