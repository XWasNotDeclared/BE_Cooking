package com.example.cooking.service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.cooking.dto.IngredientDTO;
import com.example.cooking.dto.mapper.IngredientMapper;
import com.example.cooking.dto.request.IngredientRequest;
import com.example.cooking.model.Ingredient;
import com.example.cooking.repository.IngredientRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class IngredientService {

    private final IngredientRepository ingredientRepository;
    private final IngredientMapper ingredientMapper;

    /**
     * Add a single ingredient, check for duplicates before saving
     */
    @Transactional
    public void addIngredient(IngredientRequest ingredientRequest) {
        if (ingredientRepository.existsByName(ingredientRequest.getName())) {
            throw new IllegalArgumentException(
                "Ingredient '" + ingredientRequest.getName() + "' already exists"
            );
        }
        Ingredient ingredient = ingredientMapper.toIngredient(ingredientRequest);
        ingredientRepository.save(ingredient);
    }

    /**
     * Add multiple ingredients at once, check for duplicates before saving
     */
    @Transactional
    public void addListIngredient(List<IngredientRequest> ingredientRequests) {
        // Collect names from the request
        Set<String> requestNames = ingredientRequests.stream()
                .map(IngredientRequest::getName)
                .collect(Collectors.toSet());

        // Find names that already exist in the DB
        Set<String> existingNames = ingredientRepository.findAllByNameIn(requestNames)
                .stream()
                .map(Ingredient::getName)
                .collect(Collectors.toSet());

        // If any names exist, throw an exception
        if (!existingNames.isEmpty()) {
            throw new IllegalArgumentException(
                "Ingredients already exist: " + String.join(", ", existingNames)
            );
        }

        // Convert to entities and save
        List<Ingredient> ingredientList = ingredientMapper.toListIngredient(ingredientRequests);
        ingredientRepository.saveAll(ingredientList);
    }

    /**
     * Autocomplete ingredients by keyword, return top 10 results
     */
    public List<IngredientDTO> autocomplete(String keyword) {
        Pageable topTen = PageRequest.of(0, 10);
        return ingredientRepository.searchToDTO(keyword, topTen);
    }
}
