package com.example.cooking.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

import com.example.cooking.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // Define methods for user information retrieval if needed
    // For example, findByUsername, findByEmail, etc.
    Optional<User> findByEmail (String email);
    Optional<User> findByUsername (String usename);
    boolean existsByEmail(String email);
    boolean existsByUsername (String username);
}
