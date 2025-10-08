package com.example.cooking.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.cooking.model.Comment;
import com.example.cooking.model.Recipe;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {
    List<Comment> findByRecipeAndParentCommentIsNullOrderByCreatedAtAsc(Recipe recipe);
}
