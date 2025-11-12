package com.example.cooking.service;

import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.common.enums.ImageType;

public interface UploadFileService {
    public String saveFile(MultipartFile file, ImageType type);
    public String moveFileFromTempToFinal(String tempFilePath);
    public String saveTempFile(MultipartFile file, ImageType type);
}
