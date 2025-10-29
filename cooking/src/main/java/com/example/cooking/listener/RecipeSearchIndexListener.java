package com.example.cooking.listener;

import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.repository.RecipeSearchIndexRepository;
import com.example.cooking.event.RecipeUpdatedEvent;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.RecipeSearchIndex;

@Component
@RequiredArgsConstructor
public class RecipeSearchIndexListener {
    private final RecipeRepository recipeRepo;
    private final RecipeSearchIndexRepository searchRepo;

    @EventListener
    @Transactional
    public void onRecipeUpdated(RecipeUpdatedEvent event) {
        Recipe recipe = recipeRepo.findById(event.getRecipeId())
                .orElseThrow(() -> new RuntimeException("Recipe not found"));

        StringBuilder sb = new StringBuilder();
        sb.append(recipe.getTitle()).append(" ");
        sb.append(recipe.getDescription()).append(" ");
        recipe.getTags().forEach(t -> sb.append(t.getName()).append(" "));
        recipe.getCategories().forEach(t -> sb.append(t.getName()).append(" "));
        
        recipe.getRecipeIngredients().forEach(t->{
            sb.append(t.getRawName()).append(" ");
        });

        
        RecipeSearchIndex index = searchRepo.findById(recipe.getId())
                .orElse(new RecipeSearchIndex());
        index.setRecipe(recipe);
        index.setSearchText(sb.toString());
        searchRepo.save(index);
    }
}
