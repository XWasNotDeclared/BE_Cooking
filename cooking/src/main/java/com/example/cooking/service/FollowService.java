package com.example.cooking.service;
import com.example.cooking.exception.CustomException;
//TODO: Check
import com.example.cooking.model.User;
import com.example.cooking.model.UserFollow;
import com.example.cooking.repository.UserFollowRepository;
import com.example.cooking.repository.UserRepository;
import com.example.cooking.security.MyUserDetails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class FollowService {

    @Autowired
    private UserFollowRepository userFollowRepository;

    @Autowired
    private UserRepository userRepository;

    @Transactional
    public void followUser(MyUserDetails currentUser, Long followedId) {
        // Kiểm tra xem followerId và followedId có tồn tại
        User follower = userRepository.getReferenceById(currentUser.getId());
        User followed = userRepository.findById(followedId)
                .orElseThrow(() -> new CustomException("Followed user not found"));

        // Ngăn tự theo dõi
        if (follower.getId().equals(followedId)) {
            throw new IllegalArgumentException("Cannot follow yourself");
        }

        // Kiểm tra xem đã follow chưa
        if (userFollowRepository.existsByFollowerIdAndFollowedId(follower.getId(), followedId)) {
            throw new CustomException("Already following this user");
        }

        // Tạo mối quan hệ follow
        UserFollow userFollow = new UserFollow();
        userFollow.setFollower(follower);
        userFollow.setFollowed(followed);
        userFollowRepository.save(userFollow);
    }

    @Transactional
    public void unfollowUser(MyUserDetails currentUser, Long followedId) {
        UserFollow userFollow = userFollowRepository.findByFollowerIdAndFollowedId(currentUser.getId(), followedId)
                .orElseThrow(() -> new IllegalArgumentException("Follow relationship not found"));
        userFollowRepository.delete(userFollow);
    }
}