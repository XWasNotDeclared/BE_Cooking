package com.example.cooking.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.cooking.model.Tag;
import com.example.cooking.repository.TagRepository;

import jakarta.persistence.EntityNotFoundException;

@Service
@Transactional
public class TagService {

    private final TagRepository tagRepository;

    public TagService(TagRepository tagRepository) {
        this.tagRepository = tagRepository;
    }

    // Tạo mới tag
    public Tag createTag(Tag tag) {
        if (tagRepository.existsByName(tag.getName())) {
            throw new IllegalArgumentException("Tag with this name already exists");
        }
        return tagRepository.save(tag);
    }

    // Cập nhật tag
    public Tag updateTag(Long id, Tag tagDetails) {
        Tag tag = tagRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Tag not found with id " + id));
        tag.setName(tagDetails.getName());
        tag.setSlug(tagDetails.getSlug()); // sẽ tự generate nếu rỗng
        return tagRepository.save(tag);
    }

    // Xóa tag
    public void deleteTag(Long id) {
        Tag tag = tagRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Tag not found with id " + id));
        tagRepository.delete(tag);
    }

    // Lấy theo ID
    public Tag getTagById(Long id) {
        return tagRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Tag not found with id " + id));
    }

    // Lấy theo slug
    public Tag getTagBySlug(String slug) {
        return tagRepository.findBySlug(slug)
                .orElseThrow(() -> new EntityNotFoundException("Tag not found with slug " + slug));
    }

    // Lấy tất cả tag
    public List<Tag> getAllTags() {
        return tagRepository.findAll();
    }
}
