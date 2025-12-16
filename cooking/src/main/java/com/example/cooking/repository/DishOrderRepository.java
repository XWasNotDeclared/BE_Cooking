package com.example.cooking.repository;

import com.example.cooking.model.DishOrder;
import com.example.cooking.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DishOrderRepository extends JpaRepository<DishOrder, Long> {

    List<DishOrder> findByBuyer(User buyer);

    List<DishOrder> findBySeller(User seller);
}
