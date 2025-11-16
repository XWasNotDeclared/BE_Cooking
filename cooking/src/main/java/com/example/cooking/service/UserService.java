package com.example.cooking.service;
import java.util.ArrayList;
import java.util.List;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.common.enums.FileType;
import com.example.cooking.common.enums.UserStatus;
import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.mapper.UserMapper;
import com.example.cooking.dto.request.RegisterRequest;
import com.example.cooking.exception.CustomException;
import com.example.cooking.exception.DuplicateFieldException;
import com.example.cooking.exception.UserNotFoundException;
import com.example.cooking.model.RoleEntity;
import com.example.cooking.model.User;
import com.example.cooking.repository.RoleRepository;
import com.example.cooking.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserMapper userMapper;
    private final UploadFileService uploadFileService;
    private final RoleRepository roleRepository;

    @Transactional
    public Long addUser(RegisterRequest registerRequest) {
        if (!registerRequest.getPassword().equals(registerRequest.getConfirmPassword())) {
            throw new CustomException("Mat khau xac nhan sai !");
        }
        User user = userMapper.toUser(registerRequest);
        RoleEntity userRole = roleRepository.findByName("USER")
                        .orElseThrow(() -> new CustomException("role USER not found"));

        user.getRoles().add(userRole); // thêm vào danh sách roles
        user.setStatus(UserStatus.ACTIVE);

        // Xử lý avatar từ temp → folder chính
        MultipartFile avatarTempUrl = registerRequest.getAvatarUrl();
        if (avatarTempUrl != null && !avatarTempUrl.isEmpty()) {
            String avatarUrl = uploadFileService.saveFile(avatarTempUrl,FileType.AVATAR);
            user.setAvatarUrl(avatarUrl);
        } else {
            user.setAvatarUrl("/static_resource/public/upload/avatars/avatar_holder.png");
        }

        List<String> errors = new ArrayList<>();
        if (userRepository.existsByEmail(user.getEmail())) {
            errors.add("Email da ton tai");
        }

        if (userRepository.existsByUsername(user.getUsername())) {
            errors.add("Username da ton tai");
        }
        if (!errors.isEmpty()) {
            throw new DuplicateFieldException(errors);
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        User savedUser = userRepository.save(user);
        return savedUser.getId();
    }
    @Transactional
    public Long addChef(RegisterRequest registerRequest) {
        if (!registerRequest.getPassword().equals(registerRequest.getConfirmPassword())) {
            throw new CustomException("Mat khau xac nhan sai !");
        }
        User user = userMapper.toUser(registerRequest);
        RoleEntity userRole = roleRepository.findByName("USER")
                        .orElseThrow(() -> new CustomException("role USER not found"));
        user.getRoles().add(userRole); // thêm vào danh sách roles

        userRole = roleRepository.findByName("CHEF")
                        .orElseThrow(() -> new CustomException("role CHEF not found"));
        user.getRoles().add(userRole); // thêm vào danh sách roles
        user.setStatus(UserStatus.ACTIVE);

        // Xử lý avatar từ temp → folder chính
        MultipartFile avatarTempUrl = registerRequest.getAvatarUrl();
        if (avatarTempUrl != null && !avatarTempUrl.isEmpty()) {
            String avatarUrl = uploadFileService.saveFile(avatarTempUrl,FileType.AVATAR);
            user.setAvatarUrl(avatarUrl);
        } else {
            user.setAvatarUrl("/static_resource/public/upload/avatars/avatar_holder.png");
        }

        List<String> errors = new ArrayList<>();
        if (userRepository.existsByEmail(user.getEmail())) {
            errors.add("Email da ton tai");
        }

        if (userRepository.existsByUsername(user.getUsername())) {
            errors.add("Username da ton tai");
        }
        if (!errors.isEmpty()) {
            throw new DuplicateFieldException(errors);
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        User savedUser = userRepository.save(user);
        return savedUser.getId();
    }

    public UserDTO getUserById(Long id) {
        User user = userRepository.findById(id).orElseThrow(() -> new UserNotFoundException(id));
        return userMapper.toUserDTO(user);
    }

    public UserDTO getUserByUsername(String username) {
        User user = userRepository.findByUsername(username).orElseThrow(() -> new UserNotFoundException());
        return userMapper.toUserDTO(user);
    }

    public UserDTO getUserByEmail(String email) {
        User user = userRepository.findByEmail(email).orElseThrow(() -> new UserNotFoundException());
        return userMapper.toUserDTO(user);
    }

}
