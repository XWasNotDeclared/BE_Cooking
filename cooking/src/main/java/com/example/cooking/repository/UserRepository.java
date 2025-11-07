package com.example.cooking.repository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
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

    @Query("SELECT COUNT(f) FROM UserFollow f WHERE f.follower.id = :userId")
    long countFollowing(Long userId);

    @Query("SELECT COUNT(f) FROM UserFollow f WHERE f.followed.id = :userId")
    long countFollowers(Long userId);

    //Lấy danh sách user mà một user đang follow (Following)
    @Query("SELECT f.followed FROM UserFollow f WHERE f.follower.id = :userId")
    Page<User> findFollowingUsers(Long userId, Pageable pageable);


    //Lấy danh sách user đang follow user đó (Followers)
    @Query("SELECT f.follower FROM UserFollow f WHERE f.followed.id = :userId")
    Page<User> findFollowerUsers(Long userId, Pageable pageable);


}
