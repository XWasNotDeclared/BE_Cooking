// package com.example.cooking.controller.pub;

// import org.springframework.http.MediaType;
// import org.springframework.http.ResponseEntity;
// import org.springframework.web.bind.annotation.*;
// import org.springframework.web.multipart.MultipartFile;

// import com.example.cooking.common.ApiResponse;
// import com.example.cooking.common.enums.ImageType;
// import com.example.cooking.service.UploadFileService;

// import lombok.RequiredArgsConstructor;

// @RestController
// @RequestMapping("/api/upload")
// @RequiredArgsConstructor
// public class UploadController {

//     private final UploadFileService uploadFileService;

//     // ===================== AVATAR =====================
//     @PostMapping(path = "/avatar",consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
//     public ResponseEntity<ApiResponse<String>> uploadAvatarTemp(@RequestParam("file") MultipartFile file) {
//         String tempUrl = uploadFileService.saveTempFile(file, ImageType.AVATAR);
//         return ApiResponse.ok(tempUrl);
//     }

//     // ===================== recipe =====================
//     @PostMapping(path = "/recipe",consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
//     public ResponseEntity<ApiResponse<String>> uploadDishTemp(@RequestParam("file") MultipartFile file) {
//         String tempUrl = uploadFileService.saveTempFile(file, ImageType.DISH);
//         return ApiResponse.ok(tempUrl);
//     }

//     // ===================== STEP =====================
//     @PostMapping(path = "/step",consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
//     public ResponseEntity<ApiResponse<String>> uploadStepTemp(@RequestParam("file") MultipartFile file) {
//         String tempUrl = uploadFileService.saveTempFile(file, ImageType.STEP);
//         return ApiResponse.ok(tempUrl);
//     }

// }
