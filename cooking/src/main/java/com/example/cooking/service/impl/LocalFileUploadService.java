package com.example.cooking.service.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.config.UploadProperties;
import com.example.cooking.exception.CustomException;

import lombok.RequiredArgsConstructor;
import com.example.cooking.service.UploadFileService;
@Service
@RequiredArgsConstructor
public class LocalFileUploadService implements UploadFileService {

    private final UploadProperties uploadProperties;

    @Override
    public String saveFile(MultipartFile file) {
        if (file == null || file.isEmpty()) {
            return null;
        }
        try {
            Path uploadPath = Paths.get(System.getProperty("user.dir"), uploadProperties.getAvatar());
            Files.createDirectories(uploadPath);

            // Chuẩn hóa tên file: loại bỏ khoảng trắng, ký tự đặc biệt
            String originalFilename = file.getOriginalFilename();
            String safeFileName = sanitizeFileName(originalFilename);

            // Tạo tên file mới với UUID để tránh trùng lặp
            String fileName = UUID.randomUUID() + "_" + safeFileName;
            Path filePath = uploadPath.resolve(fileName);

            // Lưu file
            file.transferTo(filePath.toFile());

            // Trả về đường dẫn truy cập
            return "/" + uploadProperties.getAvatar() + "/" + fileName;
        } catch (IOException e) {
            throw new CustomException("Fail to store file " + file.getOriginalFilename());
        }
    }

    /**
     * Hàm chuẩn hóa tên file: bỏ khoảng trắng, ký tự đặc biệt, chỉ giữ chữ, số, dấu gạch ngang, dấu chấm
     */
    private String sanitizeFileName(String fileName) {
        if (fileName == null) {
            return "file";
        }
        // Thay khoảng trắng bằng gạch dưới
        fileName = fileName.trim().replaceAll("\\s+", "_");
        // Loại bỏ các ký tự đặc biệt không an toàn
        fileName = fileName.replaceAll("[^a-zA-Z0-9._-]", "");
        return fileName;
    }
}
