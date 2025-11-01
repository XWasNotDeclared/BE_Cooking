package com.example.cooking.service;

import java.time.LocalDateTime;

import org.springframework.stereotype.Service;

import com.example.cooking.dto.response.AccessToken;
import com.example.cooking.dto.response.LoginResponse;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.User;
import com.example.cooking.repository.UserRepository;
import com.example.cooking.security.JwtService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthService {
    private final RefreshTokenService refreshTokenService;
    private final UserRepository userRepository;
    private final JwtService jwtService;

    public LoginResponse handleLoginSuccess(String email) {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new CustomException("User not found"));
        user.setLastLogin(LocalDateTime.now());
        userRepository.save(user);

        String accessToken = jwtService.generateToken(email);
        String refreshToken = refreshTokenService.createRefreshToken(user.getId());

        return new LoginResponse(accessToken, refreshToken);
    }

    public AccessToken handleRefresh(String refreshToken) {
        if (!refreshTokenService.validateRefreshToken(refreshToken)) {
            throw new CustomException("Invalid refresh token");
        }
        User user = refreshTokenService.getUserByRefreshToken(refreshToken);
        String accessToken = jwtService.generateToken(user.getEmail());
        return new AccessToken(accessToken);

    }

    public void handleLogout(String refreshToken) {
        refreshTokenService.deleteRefreshToken(refreshToken);
    }

    public void handleLogoutAll(Long userId) {
        refreshTokenService.deleteAllTokens(userId);
    }

}
