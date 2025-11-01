package com.example.cooking.service;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.context.ApplicationEventPublisher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.cooking.common.PageDTO;
import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.mapper.RecipeMapper;
import com.example.cooking.dto.request.NewRecipeRequest;
import com.example.cooking.dto.request.StepRequestDTO;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.event.RecipeUpdatedEvent;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.Step;
import com.example.cooking.model.User;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.repository.RecipeSearchIndexRepository;
import com.example.cooking.repository.UserRepository;
import com.example.cooking.security.MyUserDetails;
// import com.example.cooking.specifications.RecipeSpecifications;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecipeService {
    private final RecipeRepository recipeRepository;
    // private final UserMapper userMapper;
    private final RecipeMapper recipeMapper;
    private final UploadFileService uploadFileService;
    private final UserRepository userRepository;
    private final RecipeEnrichmentService recipeEnrichmentService;
    private final ApplicationEventPublisher eventPublisher;
    private final RecipeSearchIndexRepository recipeSearchIndexRepository;

        @Transactional
        public Long addNewRecipe(MyUserDetails currentUser, NewRecipeRequest newRecipeRequest) {
            User user = userRepository.getReferenceById(currentUser.getId());     
            Recipe recipe = recipeMapper.toRecipe(newRecipeRequest);
            // thieu anh chinh va steps
            if (!(newRecipeRequest.getImage() == null || newRecipeRequest.getImage().isEmpty())) {
                String mainImageUrl = uploadFileService.saveFile(newRecipeRequest.getImage());
                recipe.setImageUrl(mainImageUrl);
            } else
                recipe.setImageUrl("/static_resource/public/upload/avatars/avatarHolder.png");
            
            List<StepRequestDTO> stepDTOs = newRecipeRequest.getSteps();
            for (int i = 0; i < stepDTOs.size(); i++) {
                StepRequestDTO stepRequestDTO = stepDTOs.get(i);
                // Chuyển đổi StepRequestDTO thành Step entity
                Step step = new Step();
                step.setDescription(stepRequestDTO.getDescription());
                step.setStepNumber(i + 1); // Đặt số thứ tự bước (bắt đầu từ 1)
                step.setRecipe(recipe); // Thiết lập mối quan hệ với Recipe
                if (!(stepRequestDTO.getImages() == null || stepRequestDTO.getImages().isEmpty())) {
                    for (MultipartFile imageFile : stepRequestDTO.getImages()) {
                        String imageUrl = uploadFileService.saveFile(imageFile);
                        step.getImageUrls().add(imageUrl);
                    }
                }
                recipe.getSteps().add(step); // Thêm bước vào danh sách các bước của công thức
            }
            recipe.setStatus(Status.PENDING);
            recipe.setUser(user);
            // recipe.getSteps().forEach(step -> step.setRecipe(recipe));
            recipe.getRecipeIngredients().forEach(ri -> ri.setRecipe(recipe));
            Recipe saved = recipeRepository.save(recipe);
            //phat event sua cong thuc
            eventPublisher.publishEvent(new RecipeUpdatedEvent(saved.getId()));
            return saved.getId();
        }
///////////////lay 1 recipe/////////////////////////
    public RecipeDetailResponse getRecipeDetailById(Long id, MyUserDetails currentUser) {
        //ok vì cần fetch all nên join
        Recipe recipe = recipeRepository.findById(id)
                .orElseThrow(() -> new CustomException("Recipe not found with id: " + id));
        // Kiểm tra quyền truy cập
        if (recipe.getScope() != Scope.PUBLIC || recipe.getStatus() != Status.APPROVED) {
            if (currentUser == null || !recipe.getUser().getId().equals(currentUser.getId())) {
                throw new CustomException("You don't have permission to view this recipe.");
            }
        }
        return recipeMapper.toRecipeResponse(recipe);
    }
//////////////////////////////////////////
    public PageDTO<RecipeSummaryDTO> getMyRecipes(MyUserDetails currentUser, Pageable pageable) {
        Page<Recipe> recipePage = recipeRepository.findByUserId(currentUser.getId(), pageable);
        
        if (recipePage.isEmpty()) {
            return PageDTO.empty(pageable);
        }
        //basic infor
        List<RecipeSummaryDTO> recipeSummaries = recipeMapper.toSummaryDTOList(recipePage.getContent());
        recipeSummaries = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(recipeSummaries, currentUser.getId());
        return new PageDTO<>(recipePage, recipeSummaries);
    }

    public Recipe getRecipeById(Long id) {// admin only
        //TODO: fix
        Recipe recipe = recipeRepository.findById(id)
                .orElseThrow(() -> new CustomException("Khong tim thay recipe voi id: " + id));
        return recipe;
    }
///////////////////////////////////////////////////////////////////////////////
    // Test///////////
    //////
    //Search by keyword

public PageDTO<RecipeSummaryDTO> searchByKeyWord(String keyWord, Pageable pageable, MyUserDetails currentUser) {
    // 1. Format keyword cho BOOLEAN MODE: mỗi từ bắt buộc có dấu +
    // Ví dụ: "món chiên" -> "+món +chiên"
    String booleanKeyword = Arrays.stream(keyWord.trim().split("\\s+"))
                                  .map(word -> "+" + word)
                                  .collect(Collectors.joining(" "));

    // 2. Gọi repository với BOOLEAN MODE
    Page<Recipe> recipePage = recipeSearchIndexRepository.searchRecipesByKeyWordPage(booleanKeyword, pageable);

    // 3. Nếu không có kết quả, trả về PageDTO rỗng
    if (recipePage.isEmpty()) {
        return PageDTO.empty(pageable);
    }

    // 4. Map entity sang DTO
    List<RecipeSummaryDTO> recipeSummaryDTOs = recipeMapper.toSummaryDTOList(recipePage.getContent());

    // 5. Enrich dữ liệu thêm theo user
    recipeSummaryDTOs = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(recipeSummaryDTOs, currentUser.getId());

    // 6. Trả về PageDTO với dữ liệu đã map
    return new PageDTO<>(recipePage, recipeSummaryDTOs);
}


     // Search tất cả nguyên liệu (dùng Specification với LIKE)
    // public Page<RecipeSummaryDTO> searchByAllIngredients(List<String> ingredients, int page, int size) {
    //     if (ingredients == null || ingredients.isEmpty()) {
    //         return Page.empty();
    //     }

    //     // Chuẩn hóa về lowercase
    //     List<String> normalized = ingredients.stream()
    //                                          .map(String::toLowerCase)
    //                                          .toList();

    //     // Tạo Specification LIKE động
    //     Specification<Recipe> spec = RecipeSpecifications.hasAllIngredientsLike(normalized);

    //     // Tạo Pageable (sắp xếp theo createdAt DESC)
    //     Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "createdAt"));

    //     // Query và map sang DTO
    //     Page<Recipe> recipePage = recipeRepository.findAll(spec, pageable);
    //     return recipePage.map(recipeMapper::toSummaryDTO);
    // }

}
