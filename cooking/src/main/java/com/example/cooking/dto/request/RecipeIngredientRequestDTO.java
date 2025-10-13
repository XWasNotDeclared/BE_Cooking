package com.example.cooking.dto.request;

import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class RecipeIngredientRequestDTO {
    private Long ingredientId;   // Có thể null nếu user nhập tự do
    private Float quantity;      // Số lượng (nếu có)
    private String unit;         // Đơn vị, ví dụ "gram", "quả", "muỗng"
    @NotNull
    private String rawName;     // Chuỗi gốc người dùng nhập ("2 quả trứng gà ta")
    private Integer displayOrder; // Thứ tự hiển thị trong danh sách
}
