package com.example.cooking.listener;

import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;
import com.example.cooking.event.RecipeUpdatedEvent;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class RecipeUpdateListener {

    // @Async // chạy bất đồng bộ trên thread pool riêng
    @EventListener
    @Transactional
    public void onRecipeUpdated(RecipeUpdatedEvent event) {
    }
}


// package com.example.cooking.listener;

// import org.springframework.context.event.EventListener;
// import org.springframework.stereotype.Component;
// import com.example.cooking.repository.RecipeRepository;
// import com.example.cooking.event.RecipeUpdatedEvent;
// import jakarta.transaction.Transactional;
// import lombok.RequiredArgsConstructor;
// import com.example.cooking.model.Recipe;
// import com.example.cooking.service.MeiliRecipeService;
// import com.fasterxml.jackson.core.JsonProcessingException;

// @Component
// @RequiredArgsConstructor
// public class RecipeSearchIndexListener {

//     private final RecipeRepository recipeRepo;
//     private final MeiliRecipeService meiliService; // inject service Meilisearch

//     @EventListener
//     @Transactional
//     public void onRecipeUpdated(RecipeUpdatedEvent event) {
//         Recipe recipe = recipeRepo.findById(event.getRecipeId())
//                 .orElseThrow(() -> new RuntimeException("Recipe not found"));

//         try {
//             meiliService.indexRecipe(recipe); // index lên Meilisearch
//         } catch (JsonProcessingException e) {
//             e.printStackTrace();
//             // hoặc log lỗi theo chuẩn project
//         }
//     }
// }
