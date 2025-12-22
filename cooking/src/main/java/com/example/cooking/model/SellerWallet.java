package com.example.cooking.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "seller_wallet")
@Data
public class SellerWallet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id", nullable = false, unique = true)
    private User seller;

    @Column(name = "available_balance", nullable = false)
    private Long availableBalance;

    @Column(name = "pending_balance", nullable = false)
    private Long pendingBalance;

    // getters & setters
}
