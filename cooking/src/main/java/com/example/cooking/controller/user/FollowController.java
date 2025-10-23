package com.example.cooking.controller.user;
//TODO: check
import com.example.cooking.service.FollowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user/follow")
public class FollowController {

    @Autowired
    private FollowService followService;

    @PostMapping("/{followerId}/{followedId}")
    public ResponseEntity<String> followUser(@PathVariable Long followerId, @PathVariable Long followedId) {
        followService.followUser(followerId, followedId);
        return ResponseEntity.ok("Followed successfully");
    }

    @DeleteMapping("/{followerId}/{followedId}")
    public ResponseEntity<String> unfollowUser(@PathVariable Long followerId, @PathVariable Long followedId) {
        followService.unfollowUser(followerId, followedId);
        return ResponseEntity.ok("Unfollowed successfully");
    }
}