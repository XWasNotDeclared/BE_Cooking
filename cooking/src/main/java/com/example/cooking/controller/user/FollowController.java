package com.example.cooking.controller.user;
import com.example.cooking.common.ApiResponse;
import com.example.cooking.security.MyUserDetails;
//TODO: check
import com.example.cooking.service.FollowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/user/follow")
public class FollowController {

    @Autowired
    private FollowService followService;

    @PostMapping("/{followedId}")
    public ResponseEntity<ApiResponse<String>> followUser(@AuthenticationPrincipal MyUserDetails currentUser, @PathVariable Long followedId) {
        followService.followUser(currentUser, followedId);
        return ApiResponse.ok("Followed successfully");
    }

    @DeleteMapping("/{followedId}")
    public ResponseEntity<ApiResponse<String>> unfollowUser(@AuthenticationPrincipal MyUserDetails currentUser, @PathVariable Long followedId) {
        followService.unfollowUser(currentUser, followedId);
        return ApiResponse.ok("Unfollowed successfully");
    }
}