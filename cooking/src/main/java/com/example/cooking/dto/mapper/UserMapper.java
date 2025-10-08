package com.example.cooking.dto.mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import com.example.cooking.dto.UserDTO;
import com.example.cooking.dto.request.RegisterRequest;
import com.example.cooking.model.User;
import com.example.cooking.security.MyUserDetails;

@Mapper(componentModel = "spring")
public interface UserMapper {
    @Mapping(target = "id", ignore = true)
    @Mapping(target = "createdAt", ignore = true)
    @Mapping(target = "roles", ignore = true)
    // @Mapping(target = "bio", ignore = true)
    @Mapping(target = "lastLogin", ignore = true)
    @Mapping(target = "recipes", ignore = true)
    @Mapping(target = "status", ignore = true)
    @Mapping(target = "avatarUrl", ignore = true)
    User toUser (RegisterRequest entity);

    // @Mapping(target = "id", ignore = true)
    // @Mapping(target = "username", ignore = true)
    @Mapping(target = "password", ignore = true)
    // @Mapping(target = "createdAt", ignore = true)
    // @Mapping(target = "dob", ignore = true)
    // @Mapping(target = "bio", ignore = true)
    // @Mapping(target = "lastLogin", ignore = true)
    @Mapping(target = "recipes", ignore = true)
    @Mapping(target = "roles", ignore = true)
    @Mapping(target = "username", source = "myUserName")
    @Mapping(target = "status", ignore = true)
    User toUser (MyUserDetails entity);


    UserDTO toUserDTO (User entity);

    List<UserDTO> toUserDTOList (List<User> entities);

}
