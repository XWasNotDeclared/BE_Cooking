// package com.example.cooking.specifications;

// import org.springframework.data.jpa.domain.Specification;

// import com.example.cooking.model.Ingredient;
// import com.example.cooking.model.Recipe;
// import com.example.cooking.model.RecipeIngredient;

// import jakarta.persistence.criteria.*;

// import java.util.ArrayList;
// import java.util.List;

// public class RecipeSpecifications {

//     public static Specification<Recipe> hasAllIngredientsLike(List<String> ingredients) {
//         return (root, query, cb) -> {
//             // JOIN recipe_ingredients và ingredients
//             Join<Recipe, RecipeIngredient> ri = root.join("recipeIngredients", JoinType.INNER);
//             Join<RecipeIngredient, Ingredient> i = ri.join("ingredient", JoinType.LEFT);

//             // Tạo danh sách các điều kiện LIKE
//             List<Predicate> likePredicates = new ArrayList<>();
//             for (String ing : ingredients) {
//                 String pattern = "%" + ing.toLowerCase() + "%";
//                 Predicate likeRaw = cb.like(cb.lower(ri.get("rawName")), pattern);
//                 Predicate likeName = cb.like(cb.lower(i.get("name")), pattern);
//                 likePredicates.add(cb.or(likeRaw, likeName));
//             }

//             // Gộp tất cả điều kiện lại (tất cả phải match)
//             Predicate finalPredicate = cb.and(likePredicates.toArray(new Predicate[0]));

//             // DISTINCT để tránh duplicate recipes
//             query.distinct(true);

//             return finalPredicate;
//         };
//     }
// }
