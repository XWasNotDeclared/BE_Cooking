package com.example.cooking.listener;

import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class TagUpdateListener {

    private final RecipeRepository recipeRepo;
    private final ApplicationEventPublisher eventPublisher;

    @EventListener
    public void onTagUpdated(TagUpdatedEvent event) {
        // Tìm tất cả recipe có tag này
        List<Long> recipeIds = recipeRepo.findIdsByTagId(event.getTagId());
        recipeIds.forEach(id ->
            eventPublisher.publishEvent(new RecipeUpdatedEvent(id))
        );
    }
}
