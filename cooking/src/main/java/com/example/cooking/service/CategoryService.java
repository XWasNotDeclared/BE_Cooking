package com.example.cooking.service;

import com.example.cooking.dto.mapper.CategoryMapper;
import com.example.cooking.dto.request.CategoryRequestDTO;
import com.example.cooking.dto.response.CategoryResponseDTO;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Category;
import com.example.cooking.repository.CategoryRepository;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;
    private final CategoryMapper categoryMapper;

    public List<CategoryResponseDTO> getAllCategories() {
        List<CategoryResponseDTO> categoryResponseDTOs = categoryMapper.toDTO(categoryRepository.findAll());
        return categoryResponseDTOs;
    }

    public CategoryResponseDTO getCategoryById(Long id) {
        CategoryResponseDTO categoryResponseDTO = categoryMapper.toDTO(categoryRepository.findById(id).orElseThrow(()-> new CustomException("Category not found")));
        return categoryResponseDTO;
    }

    public CategoryResponseDTO getCategoryBySlug(String slug) {
        CategoryResponseDTO categoryResponseDTO = categoryMapper.toDTO(categoryRepository.findBySlug(slug).orElseThrow(()-> new CustomException("Category not found")));
        return categoryResponseDTO;
    }

    public CategoryResponseDTO createCategory(CategoryRequestDTO requestDTO) {
        Category category = categoryMapper.toEntity(requestDTO);
        if (categoryRepository.existsByName(category.getName())) {
            throw new CustomException("Category with this name already exists");
        }
        return categoryMapper.toDTO(categoryRepository.save(category));
    }

    public CategoryResponseDTO updateCategory(Long id, CategoryRequestDTO updatedCategoryRequestDTO) {

        Category updatedCategory = categoryMapper.toEntity(updatedCategoryRequestDTO);

        return categoryMapper.toDTO(categoryRepository.findById(id).map(category -> {
            category.setName(updatedCategory.getName());
            category.setDescription(updatedCategory.getDescription());
            // slug sẽ tự động được generate bởi @PrePersist/@PreUpdate
            return categoryRepository.save(category);
        }).orElseThrow(() -> new CustomException("Category not found")));
    }

    public void deleteCategory(Long id) {
        categoryRepository.deleteById(id);
    }

    @Transactional
    public List<CategoryResponseDTO> createCategories(List<CategoryRequestDTO> categoriesRequestDTOs) {
        List<Category> categories = categoryMapper.toEntity(categoriesRequestDTOs);
        // Lấy tất cả tên category trong request
        Set<String> setRequest = categories.stream()
                .map(Category::getName)
                .collect(Collectors.toSet());

        // Lấy tên đã tồn tại trong DB trong 1 lần query
        Set<String> tenDaTonTai = categoryRepository.findAllByNameIn(setRequest)
                .stream()
                .map(Category::getName)
                .collect(Collectors.toSet());

        // Nếu có tên trùng, ném lỗi
        if (!tenDaTonTai.isEmpty()) {
            throw new CustomException(
                    "Các category đã tồn tại: " + String.join(", ", tenDaTonTai));
        }

        // Lưu tất cả category mới
        return categoryMapper.toDTO(categoryRepository.saveAll(categories));
    }

}
