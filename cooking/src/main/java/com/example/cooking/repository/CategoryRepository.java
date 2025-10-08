package com.example.cooking.repository;
import com.example.cooking.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    Optional<Category> findBySlug(String slug);
    boolean existsByName(String name);
    List<Category> findAllByNameIn(Set<String> names);
}

