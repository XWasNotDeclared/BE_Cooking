package com.example.cooking.repository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
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

    // //nhóm theo số món
    // @Query("SELECT u.id AS userId, u.username AS username, COUNT(r.id) AS recipeCount " +
    //        "FROM User u LEFT JOIN u.recipes r " +
    //        "GROUP BY u.id, u.username " +
    //        "ORDER BY COUNT(r.id) DESC")
    // Page<UserRecipeCountProjection> findTopChefs(Pageable pageable);

    /**
     * Tìm kiếm User theo từ khóa trong username, email hoặc bio (không phân biệt chữ hoa/thường) và có phân trang.
     * @param keyword Từ khóa tìm kiếm
     * @param pageable Đối tượng Pageable để định nghĩa trang, kích thước trang và sắp xếp
     * @return Page chứa các đối tượng User phù hợp
     */
    @Query("SELECT u FROM User u WHERE " +
           "LOWER(u.username) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(u.email) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(u.bio) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    Page<User> searchUsersByKeyword(@Param("keyword") String keyword, Pageable pageable);

}
