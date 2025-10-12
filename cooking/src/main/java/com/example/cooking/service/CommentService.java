package com.example.cooking.service;


import com.example.cooking.model.Comment;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.User;
import com.example.cooking.repository.CommentRepository;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.repository.UserRepository;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.dto.mapper.CommentMapper;
import com.example.cooking.dto.mapper.UserMapper;
import com.example.cooking.dto.request.CommentRequestDTO;
import com.example.cooking.dto.response.CommentResponseDTO;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jakarta.persistence.EntityNotFoundException;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CommentService {

    private final CommentRepository commentRepository;
    private final RecipeRepository recipeRepository;
    private final UserMapper userMapper;
    private final CommentMapper commentMapper;

    @Transactional
    public CommentResponseDTO createComment(Long recipeId, CommentRequestDTO dto, MyUserDetails currentUser) {
        // Lấy thông tin người dùng hiện tại từ SecurityContext
        User user = userMapper.toUser(currentUser);
        // Lấy công thức
        Recipe recipe = recipeRepository.findById(recipeId)
                .orElseThrow(() -> new EntityNotFoundException("Recipe not found"));

        // Tạo Comment entity
        Comment comment = commentMapper.toEntity(dto);
        comment.setUser(user);
        comment.setRecipe(recipe);

        // Nếu có parentCommentId, thiết lập bình luận cha
        if (dto.getParentCommentId() != null) {
            Comment parentComment = commentRepository.findById(dto.getParentCommentId())
                    .orElseThrow(() -> new EntityNotFoundException("Parent comment not found"));
            comment.setParentComment(parentComment);
        }

        // Lưu bình luận
        comment = commentRepository.save(comment);
        return commentMapper.toResponseDTO(comment);
    }

    @Transactional(readOnly = true)
    public Page<CommentResponseDTO> getCommentsByRecipe(Long recipeId, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Comment> commentPage = commentRepository.findByRecipeIdAndParentCommentIsNull(recipeId, pageable);
        
        List<CommentResponseDTO> commentDTOs = commentPage.getContent().stream()
                                                            .map(commentMapper::toResponseDTO)
                                                            .collect(Collectors.toList());
        return new PageImpl<>(commentDTOs, pageable, commentPage.getTotalElements());
    }

    // @Transactional
    // public CommentResponseDTO updateComment(Long commentId, CommentRequestDTO dto) {
    //     // Lấy thông tin người dùng hiện tại
    //     String username = SecurityContextHolder.getContext().getAuthentication().getName();
    //     Comment comment = commentRepository.findById(commentId)
    //             .orElseThrow(() -> new EntityNotFoundException("Comment not found"));

    //     // Kiểm tra quyền chỉnh sửa
    //     if (!comment.getUser().getUsername().equals(username)) {
    //         throw new SecurityException("You can only edit your own comments");
    //     }

    //     // Cập nhật nội dung
    //     commentMapper.updateEntityFromDTO(dto, comment);
    //     comment = commentRepository.save(comment);
    //     return commentMapper.toResponseDTO(comment);
    // }

    // @Transactional
    // public void deleteComment(Long commentId) {
    //     // Lấy thông tin người dùng hiện tại
    //     String username = SecurityContextHolder.getContext().getAuthentication().getName();
    //     Comment comment = commentRepository.findById(commentId)
    //             .orElseThrow(() -> new EntityNotFoundException("Comment not found"));

    //     // Kiểm tra quyền xóa
    //     if (!comment.getUser().getUsername().equals(username)) {
    //         throw new SecurityException("You can only delete your own comments");
    //     }

    //     commentRepository.delete(comment);
    // }
}