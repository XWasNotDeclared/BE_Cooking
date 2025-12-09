package com.example.cooking.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDateTime;

import com.example.cooking.common.enums.OrderType;
import com.example.cooking.common.enums.PaymentStatus;

@Entity
@Table(name = "payment_orders")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PaymentOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "order_type", nullable = false)
    @Enumerated(EnumType.STRING)
    private OrderType orderType; // "UPGRADE_CHEF", "PURCHASE_PRODUCT", etc.

    @Column(name = "txn_ref", unique = true, nullable = false)
    private String txnRef; // Mã giao dịch duy nhất

    @Column(name = "amount", nullable = false)
    private Long amount; // Số tiền (đã nhân 100)

    @Column(name = "order_info")
    private String orderInfo;

    @Column(name = "payment_status", nullable = false)
    @Enumerated(EnumType.STRING)
    private PaymentStatus paymentStatus; // PENDING, SUCCESS, FAILED

    @Column(name = "vnpay_transaction_no")
    private String vnpayTransactionNo;

    @Column(name = "bank_code")
    private String bankCode;

    @Column(name = "card_type")
    private String cardType;

    @Column(name = "response_code")
    private String responseCode;

    @Column(name = "transaction_status")
    private String transactionStatus;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @Column(name = "paid_at")
    private LocalDateTime paidAt;

    /////////
    // Thông tin nâng cấp gói / role (nullable)
    // @Column(name = "package_id")
    // private Long packageId;
    // Liên kết với gói nâng cấp
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "package_id")
    private PackageUpgrade packageUpgrade;

    @Column(name = "package_duration_days")
    private Integer packageDurationDays;

    @Column(name = "role_assigned")
    private String roleAssigned;

    // Thông tin nhận hàng (nullable, chỉ dùng cho mua sản phẩm)
    @Column(name = "shipping_name")
    private String shippingName;

    @Column(name = "shipping_phone")
    private String shippingPhone;

    @Column(name = "shipping_address")
    private String shippingAddress;

    @Column(name = "shipping_note")
    private String shippingNote;
    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        if (paymentStatus == null) {
            paymentStatus = PaymentStatus.PENDING;
        }
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }

}