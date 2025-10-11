package com.example.cooking.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.cooking.dto.mapper.TagMapper;
import com.example.cooking.dto.request.AddTagRequest;
import com.example.cooking.dto.response.TagResponseDTO;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Tag;
import com.example.cooking.repository.TagRepository;

import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class TagService {

    private final TagRepository tagRepository;
    private final TagMapper tagMapper;

    // Tạo mới tag
    public TagResponseDTO createTag(AddTagRequest addTagRequest) {
        Tag tag = tagMapper.toEntity(addTagRequest);
        if (tagRepository.existsByName(tag.getName())) {
            throw new CustomException("Tag with this name already exists");
        }
        tag = tagRepository.save(tag);
        TagResponseDTO tagResponse = tagMapper.toTagResponse(tag);
        return tagResponse;
    }

    // // Cập nhật tag
    // public Tag updateTag(Long id, Tag tagDetails) {
    //     Tag tag = tagRepository.findById(id)
    //             .orElseThrow(() -> new EntityNotFoundException("Tag not found with id " + id));
    //     tag.setName(tagDetails.getName());
    //     tag.setSlug(tagDetails.getSlug()); // sẽ tự generate nếu rỗng
    //     return tagRepository.save(tag);
    // }

    // Xóa tag
    public void deleteTag(Long id) {
        Tag tag = tagRepository.findById(id)
                .orElseThrow(() -> new CustomException("Tag not found with id " + id));
        tagRepository.delete(tag);
    }

    // Lấy theo ID
    public TagResponseDTO getTagById(Long id) {
        Tag tag = tagRepository.findById(id)
                .orElseThrow(() -> new CustomException("Tag not found with id " + id));
        TagResponseDTO tagResponse = tagMapper.toTagResponse(tag);
        return tagResponse;
    }

    // Lấy theo slug
    public TagResponseDTO getTagBySlug(String slug) {
        Tag tag = tagRepository.findBySlug(slug)
                .orElseThrow(() -> new CustomException("Tag not found with slug " + slug));

        TagResponseDTO tagResponse = tagMapper.toTagResponse(tag);

        return tagResponse;
    }

    // Lấy tất cả tag
    public List<TagResponseDTO> getAllTags() {
        List<Tag> tags = tagRepository.findAll();
        List<TagResponseDTO> tagResponses = tagMapper.toTagResponseList(tags);
        return tagResponses;
    }
}