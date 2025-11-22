// // src/main/java/com/example/cooking/controller/admin/AdminDashboardController.java
// package com.example.cooking.controller.admin;

// import com.example.cooking.dto.admin.DashboardStatsDto;
// import com.example.cooking.service.admin.DashboardService;
// import lombok.RequiredArgsConstructor;
// import org.springframework.security.access.prepost.PreAuthorize;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;

// @RestController
// @RequestMapping("/api/admin")
// @RequiredArgsConstructor
// @PreAuthorize("hasRole('ADMIN')")
// public class AdminDashboardController {

//     private final DashboardService dashboardService;

//     @GetMapping("/dashboard/stats")
//     public DashboardStatsDto getDashboardStats() {
//         return dashboardService.getStats();
//     }
// }