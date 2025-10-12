package com.example.cooking.repository;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.cooking.model.Comment;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {
    @EntityGraph(attributePaths = {"recipe", "user", "replies"})//TODO: check lai, join hơi nhieu, nhat là thua recipe
    Page<Comment> findByRecipeIdAndParentCommentIsNull(Long recipeId, Pageable pageable);
}
