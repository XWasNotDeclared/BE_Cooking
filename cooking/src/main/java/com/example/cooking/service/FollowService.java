package com.example.cooking.service;
//TODO: Check
import com.example.cooking.model.User;
import com.example.cooking.model.UserFollow;
import com.example.cooking.repository.UserFollowRepository;
import com.example.cooking.repository.UserRepository;
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
    public void followUser(Long followerId, Long followedId) {
        // Kiểm tra xem followerId và followedId có tồn tại
        User follower = userRepository.findById(followerId)
                .orElseThrow(() -> new IllegalArgumentException("Follower not found"));
        User followed = userRepository.findById(followedId)
                .orElseThrow(() -> new IllegalArgumentException("Followed user not found"));

        // Ngăn tự theo dõi
        if (followerId.equals(followedId)) {
            throw new IllegalArgumentException("Cannot follow yourself");
        }

        // Kiểm tra xem đã follow chưa
        if (userFollowRepository.existsByFollowerIdAndFollowedId(followerId, followedId)) {
            throw new IllegalArgumentException("Already following this user");
        }

        // Tạo mối quan hệ follow
        UserFollow userFollow = new UserFollow();
        userFollow.setFollower(follower);
        userFollow.setFollowed(followed);
        userFollowRepository.save(userFollow);
    }

    @Transactional
    public void unfollowUser(Long followerId, Long followedId) {
        UserFollow userFollow = userFollowRepository.findByFollowerIdAndFollowedId(followerId, followedId)
                .orElseThrow(() -> new IllegalArgumentException("Follow relationship not found"));
        userFollowRepository.delete(userFollow);
    }
}