package com.example.cooking.controller.pub;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import com.example.cooking.model.Tag;
import com.example.cooking.service.TagService;

@RestController
@RequestMapping("/api/tags")
public class TagController {

    private final TagService tagService;

    public TagController(TagService tagService) {
        this.tagService = tagService;
    }

    @PostMapping
    //TODO: check role USER or ADMIN
    @PreAuthorize("hasAnyRole('USER', 'ADMIN')")
    public ResponseEntity<Tag> createTag(@RequestBody Tag tag) {
        return new ResponseEntity<>(tagService.createTag(tag), HttpStatus.CREATED);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Tag> getTagById(@PathVariable Long id) {
        return ResponseEntity.ok(tagService.getTagById(id));
    }

    @GetMapping("/slug/{slug}")
    public ResponseEntity<Tag> getTagBySlug(@PathVariable String slug) {
        return ResponseEntity.ok(tagService.getTagBySlug(slug));
    }

    @GetMapping
    public ResponseEntity<List<Tag>> getAllTags() {
        return ResponseEntity.ok(tagService.getAllTags());
    }

    @PutMapping("/{id}")
    public ResponseEntity<Tag> updateTag(@PathVariable Long id, @RequestBody Tag tag) {
        return ResponseEntity.ok(tagService.updateTag(id, tag));
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')") // chỉ admin được xóa
    public ResponseEntity<Void> deleteTag(@PathVariable Long id) {
        tagService.deleteTag(id);
        return ResponseEntity.noContent().build();
    }
}
