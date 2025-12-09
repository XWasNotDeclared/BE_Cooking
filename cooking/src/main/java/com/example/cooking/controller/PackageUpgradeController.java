package com.example.cooking.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.cooking.service.PackageUpgradeService;
import com.example.cooking.service.PaymentService;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import com.example.cooking.common.ApiResponse;
import com.example.cooking.common.enums.OrderType;
import com.example.cooking.dto.paymentDTO.PaymentRequest;
import com.example.cooking.dto.paymentDTO.PaymentResponse;
import com.example.cooking.model.PackageUpgrade;
import com.example.cooking.security.MyUserDetails;

import java.io.UnsupportedEncodingException;
import java.util.List;

@RestController
@RequestMapping("/api/vip/packages")
@RequiredArgsConstructor
@Slf4j
public class PackageUpgradeController {

    private final PackageUpgradeService packageUpgradeService;

    @GetMapping
    public ResponseEntity<ApiResponse<List<PackageUpgrade>>> getAllPackages() {
        return ApiResponse.ok(packageUpgradeService.getAllPackages());
    }

    /**
     * API tạo payment để nâng cấp lên CHEF
     * Endpoint: POST /api/payment/upgrade-chef
     */
    @PostMapping("/upgrade-chef")
    public ResponseEntity<ApiResponse<PaymentResponse>> upgradeToChef(
            HttpServletRequest request,
            @RequestParam Long packageId,
            @RequestParam(defaultValue = "VNBANK") String bankCode,
            @AuthenticationPrincipal MyUserDetails currentUser
    ) {
        try {
            PaymentResponse paymentResponse = packageUpgradeService.createPaymentForPackage(request, packageId, bankCode, currentUser);
            return ApiResponse.ok(paymentResponse);

        } catch (UnsupportedEncodingException e) {
            log.error("Error creating payment", e);
            return ApiResponse.custom(HttpStatus.BAD_REQUEST,"Error",PaymentResponse.builder()
                            .code("99")
                            .message("Error creating payment: " + e.getMessage())
                            .build());
        }
    }

}

