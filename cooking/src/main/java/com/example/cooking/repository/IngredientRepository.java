package com.example.cooking.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.cooking.dto.IngredientDTO;
import com.example.cooking.model.Ingredient;

public interface IngredientRepository extends JpaRepository<Ingredient, Long>{
    @Query("SELECT new com.example.cooking.dto.IngredientDTO(i.name, i.status) " +
       "FROM Ingredient i WHERE LOWER(i.name) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<IngredientDTO> searchToDTO(@Param("keyword") String keyword, Pageable pageable);

    
    boolean existsByName(String name);

    List<Ingredient> findAllByNameIn(Set<String> names);
} 