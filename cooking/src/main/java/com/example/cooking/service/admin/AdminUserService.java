package com.example.cooking.service.admin;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.cooking.common.PageDTO;
import com.example.cooking.common.enums.UserStatus;
import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.mapper.UserMapper;
import com.example.cooking.model.User;
import com.example.cooking.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AdminUserService {
    private final UserRepository userRepository;
    private final UserMapper userMapper;

    public PageDTO<UserDTO> searchUsers(String keyword, int page, int size, String sortBy, String sortDir,
            UserStatus status, String role) {

        Sort sort = sortDir.equalsIgnoreCase("asc") ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
        Pageable pageable = PageRequest.of(page, size, sort);

        String searchKeyword = (keyword == null || keyword.trim().isEmpty()) ? null : keyword.trim();
        String roleFilter = (role == null || role.trim().isEmpty()) ? null : role.trim();

        Page<User> userPage = userRepository.searchUsersByFilters(searchKeyword, status, roleFilter, pageable);

        if (userPage.isEmpty()) {
            return PageDTO.empty(pageable);
        }

        List<UserDTO> userDTOs = userMapper.toUserDTOList(userPage.getContent());
        return new PageDTO<>(userPage, userDTOs);
    }

    public UserDTO updateUserStatus(Long userId, UserStatus status) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found with id: " + userId));
        user.setStatus(status);
        userRepository.save(user);
        return userMapper.toUserDTO(user);
    }

    // public UserDTO updateUser(Long userId, UserDTO userDTO) {
    //     User user = userRepository.findById(userId)
    //             .orElseThrow(() -> new RuntimeException("User not found with id: " + userId));

    //     if (userDTO.getUsername() != null)
    //         user.setUsername(userDTO.getUsername());
    //     // if (userDTO.getEmail() != null)
    //     //     user.setEmail(userDTO.getEmail());
    //     if (userDTO.getBio() != null)
    //         user.setBio(userDTO.getBio());
    //     if (userDTO.getAvatarUrl() != null)
    //         user.setAvatarUrl(userDTO.getAvatarUrl());
    //     if (userDTO.getDob() != null)
    //         user.setDob(userDTO.getDob());

    //     userRepository.save(user);
    //     return userMapper.toUserDTO(user);
    // }

    public void deleteUser(Long userId) {
    User user = userRepository.findById(userId)
            .orElseThrow(() -> new RuntimeException("User not found with id: " + userId));
    userRepository.delete(user);
}



}
