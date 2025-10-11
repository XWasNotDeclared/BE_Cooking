package com.example.cooking.controller.pub;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.cooking.model.Comment;
import com.example.cooking.model.Recipe;
import com.example.cooking.service.CommentService;

@RestController
@RequestMapping("/api/comments")
public class CommentController {

    // private final CommentService commentService;

    // public CommentController(CommentService commentService) {
    //     this.commentService = commentService;
    // }

    // @PostMapping
    // public ResponseEntity<Comment> createComment(@RequestBody Comment comment) {
    //     return new ResponseEntity<>(commentService.createComment(comment), HttpStatus.CREATED);
    // }

    // @PostMapping("/{parentId}/reply")
    // public ResponseEntity<Comment> createReply(@PathVariable Long parentId, @RequestBody Comment reply) {
    //     return new ResponseEntity<>(commentService.createReply(parentId, reply), HttpStatus.CREATED);
    // }

    // @GetMapping("/{id}")
    // public ResponseEntity<Comment> getComment(@PathVariable Long id) {
    //     return ResponseEntity.ok(commentService.getCommentById(id));
    // }

    // @PutMapping("/{id}")
    // public ResponseEntity<Comment> updateComment(@PathVariable Long id, @RequestBody Comment updated) {
    //     return ResponseEntity.ok(commentService.updateComment(id, updated.getContent()));
    // }

    // @DeleteMapping("/{id}")
    // public ResponseEntity<Void> deleteComment(@PathVariable Long id) {
    //     commentService.deleteComment(id);
    //     return ResponseEntity.noContent().build();
    // }

    // // Lấy tất cả comment gốc của recipe (có replies)
    // @GetMapping("/recipe/{recipeId}")
    // public ResponseEntity<List<Comment>> getCommentsByRecipe(@PathVariable Long recipeId) {
    //     Recipe recipe = new Recipe();
    //     recipe.setId(recipeId);
    //     return ResponseEntity.ok(commentService.getCommentsByRecipe(recipe));
    // }
}
