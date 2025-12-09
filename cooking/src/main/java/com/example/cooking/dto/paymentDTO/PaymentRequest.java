package com.example.cooking.dto.paymentDTO;

import com.example.cooking.common.enums.OrderType;
import com.example.cooking.model.PackageUpgrade;

import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

// Request DTO để tạo payment
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PaymentRequest {
    private OrderType orderType; // "UPGRADE_CHEF"
    private Long amount;      // Số tiền (VND)
    private String orderInfo; // Mô tả đơn hàng
    private String bankCode;  // Optional: VNBANK, INTCARD, VNPAYQR
    private String language;  // "vn" hoặc "en"

        /////////
    // Thông tin nâng cấp gói / role (nullable)
    private PackageUpgrade packageUpgrade;
    private Integer packageDurationDays;
    private String roleAssigned;
    // Thông tin nhận hàng (nullable, chỉ dùng cho mua sản phẩm)
    private String shippingName;
    private String shippingPhone;
    private String shippingAddress;
    private String shippingNote;
}