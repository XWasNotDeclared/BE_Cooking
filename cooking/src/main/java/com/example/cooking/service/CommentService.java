package com.example.cooking.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.cooking.model.Comment;
import com.example.cooking.model.Recipe;
// import com.example.cooking.model.User;
import com.example.cooking.repository.CommentRepository;

import jakarta.persistence.EntityNotFoundException;

@Service
@Transactional
public class CommentService {

    private final CommentRepository commentRepository;

    public CommentService(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }

    // Tạo comment gốc
    public Comment createComment(Comment comment) {
        return commentRepository.save(comment);
    }

    // Tạo reply cho comment
    public Comment createReply(Long parentCommentId, Comment reply) {
        Comment parent = commentRepository.findById(parentCommentId)
                .orElseThrow(() -> new EntityNotFoundException("Parent comment not found"));
        reply.setParentComment(parent);
        reply.setRecipe(parent.getRecipe());
        return commentRepository.save(reply);
    }

    public Comment getCommentById(Long id) {
        return commentRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Comment not found with id " + id));
    }

    public void deleteComment(Long id) {
        Comment comment = getCommentById(id);
        commentRepository.delete(comment);
    }

    public Comment updateComment(Long id, String newContent) {
        Comment comment = getCommentById(id);
        comment.setContent(newContent);
        return commentRepository.save(comment);
    }

    // Lấy danh sách comment gốc theo recipe (có thể hiển thị replies)
    public List<Comment> getCommentsByRecipe(Recipe recipe) {
        return commentRepository.findByRecipeAndParentCommentIsNullOrderByCreatedAtAsc(recipe);
    }
}
