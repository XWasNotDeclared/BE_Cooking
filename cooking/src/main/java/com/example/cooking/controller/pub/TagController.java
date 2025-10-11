package com.example.cooking.controller.pub;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.dto.request.AddTagRequest;
import com.example.cooking.dto.response.TagResponseDTO;
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
    public ResponseEntity<ApiResponse<TagResponseDTO>> createTag(@RequestBody AddTagRequest addTagRequest) {
        return ApiResponse.ok(tagService.createTag(addTagRequest));
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<TagResponseDTO>> getTagById(@PathVariable Long id) {
        return ApiResponse.ok(tagService.getTagById(id));
    }

    @GetMapping("/slug/{slug}")
    public ResponseEntity<ApiResponse<TagResponseDTO>> getTagBySlug(@PathVariable String slug) {
        return ApiResponse.ok(tagService.getTagBySlug(slug));
    }

    @GetMapping
    public ResponseEntity<List<TagResponseDTO>> getAllTags() {
        return ResponseEntity.ok(tagService.getAllTags());
    }

    // @PutMapping("/{id}")
    // @PreAuthorize("hasRole('ADMIN')") // chỉ admin được update
    // public ResponseEntity<TagResponse> updateTag(@PathVariable Long id, @RequestBody Tag tag) {
    //     return ResponseEntity.ok(tagService.updateTag(id, tag));
    // }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('ADMIN')") // chỉ admin được xóa
    public ResponseEntity<ApiResponse<String>> deleteTag(@PathVariable Long id) {
        tagService.deleteTag(id);
        return ApiResponse.ok("Đã thực hiện");
    }
}
