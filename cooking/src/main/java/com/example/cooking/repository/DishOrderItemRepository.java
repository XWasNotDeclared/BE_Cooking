package com.example.cooking.repository;

import com.example.cooking.model.DishOrderItem;

import org.springframework.data.jpa.repository.JpaRepository;

public interface DishOrderItemRepository extends JpaRepository<DishOrderItem, Long> {

}

