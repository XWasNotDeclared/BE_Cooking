-CHƯA TEST FOLLOWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW



đổi difficalty trong create thanh notnull và sửa hardcore trong create recipe service
- cân nhắc dùng Meilisearch
- Unique constraint: Trong RecipeIngredient, bạn có @UniqueConstraint(columnNames = { "recipe_id", "ingredient_id" }) – tốt, nhưng vì ingredient_id nullable, nó chỉ unique khi có link. Nếu user nhập 2 rawName giống nhau (không link), sẽ duplicate. Gợi ý: Thêm unique trên {recipe_id, rawName} (lowercase/normalized) để tránh lặp, hoặc dùng soft unique qua business logic.
tf8mb4_unicode_ci
 cho tiếng việt ??? (GPT for more inf)