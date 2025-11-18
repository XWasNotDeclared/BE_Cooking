package com.example.cooking.service;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import com.example.cooking.common.PageDTO;
import com.example.cooking.common.enums.Difficulty;
import com.example.cooking.common.enums.FileType;
import com.example.cooking.common.enums.Scope;
import com.example.cooking.common.enums.Status;
import com.example.cooking.dto.mapper.RecipeMapper;
import com.example.cooking.dto.request.NewRecipeRequest;
import com.example.cooking.dto.request.StepRequestDTO;
import com.example.cooking.dto.response.RecipeDetailResponse;
import com.example.cooking.dto.response.RecipeStatisticsDTO;
import com.example.cooking.dto.response.RecipeSummaryDTO;
import com.example.cooking.event.RecipeUpdatedEvent;
import com.example.cooking.exception.CustomException;
import com.example.cooking.model.Recipe;
import com.example.cooking.model.Step;
import com.example.cooking.model.User;
import com.example.cooking.repository.LikeRepository;
import com.example.cooking.repository.RecipeRepository;
import com.example.cooking.repository.RecipeSearchIndexRepository;
import com.example.cooking.repository.UserRepository;
import com.example.cooking.security.MyUserDetails;
import com.example.cooking.specifications.RecipeSpecs;
import com.example.cooking.exception.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecipeService {
    private final RecipeRepository recipeRepository;
    private final RecipeMapper recipeMapper;
    private final UploadFileService uploadFileService;
    private final UserRepository userRepository;
    private final RecipeEnrichmentService recipeEnrichmentService;
    private final ApplicationEventPublisher eventPublisher;
    private final RecipeSearchIndexRepository recipeSearchIndexRepository;
    private final AccessService accessService;
    private final LikeRepository likeRepository;

    @Transactional
    public Long addNewRecipe(MyUserDetails currentUser, NewRecipeRequest newRecipeRequest) {
        User user = userRepository.getReferenceById(currentUser.getId());
        Recipe recipe = recipeMapper.toRecipe(newRecipeRequest);
        // thieu anh chinh va steps
        if (!(newRecipeRequest.getImage() == null || newRecipeRequest.getImage().isEmpty())) {
            String mainImageUrl = uploadFileService.saveFile(newRecipeRequest.getImage(), FileType.RECIPE);
            recipe.setImageUrl(mainImageUrl);
        } else
            recipe.setImageUrl("/static_resource/public/upload/avatars/avatar-holder.png");

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
                    String imageUrl = uploadFileService.saveFile(imageFile, FileType.STEP);
                    step.getImageUrls().add(imageUrl);
                }
            }
            recipe.getSteps().add(step); // Thêm bước vào danh sách các bước của công thức
        }
        recipe.setStatus(Status.APPROVED);
        recipe.setDifficulty(Difficulty.EASY);
        recipe.setUser(user);
        // recipe.getSteps().forEach(step -> step.setRecipe(recipe));
        recipe.getRecipeIngredients().forEach(ri -> ri.setRecipe(recipe));
        Recipe saved = recipeRepository.save(recipe);
        // phat event sua cong thuc
        eventPublisher.publishEvent(new RecipeUpdatedEvent(saved.getId()));
        return saved.getId();
    }

    public void setRecipeScope(MyUserDetails currentUser, Long recipeId, Scope scope) {
        User user = userRepository.findById(currentUser.getId())
                .orElseThrow(() -> new ResourceNotFoundException("User không hợp lệ"));

        Recipe recipe = recipeRepository.findByIdWithUser(recipeId)
                .orElseThrow(() -> new ResourceNotFoundException("Recipe not found with id: " + recipeId));

        boolean isAdmin = user.getRoles().stream()
                .anyMatch(role -> "ROLE_ADMIN".equals(role.getName()));

        if (!isAdmin) {
            if (!user.getId().equals(recipe.getUser().getId())) {
                throw new CustomException("Bạn không có quyền chỉnh sửa công thức này");
            }
        }
        // Cập nhật
        recipe.setScope(scope);
        recipeRepository.save(recipe);
    }

    /**
     * Tăng view khi user xem recipe
     */
    @Transactional
    public void incrementView(Long recipeId) {
        recipeRepository.incrementViews(recipeId);
    }

    /**
     * Lấy số lượt view hiện tại
     */
    @Transactional(readOnly = true)
    public Long getViews(Long recipeId) {
        return recipeRepository.getViews(recipeId);
    }

    /////////////// lay 1 recipe/////////////////////////
    public RecipeDetailResponse getRecipeDetailById(Long id, MyUserDetails currentUser) {
        // ok vì cần fetch all nên join
        Recipe recipe = recipeRepository.findById(id)
                .orElseThrow(() -> new CustomException("Recipe not found with id: " + id));
        // 2. Kiểm tra quyền truy cập thông qua AccessService
        Long currentUserId = currentUser != null ? currentUser.getId() : null;
        accessService.checkRecipeAccess(recipe, currentUserId);
        // Tăng lượt xem
        incrementView(id);
        RecipeDetailResponse dto = recipeMapper.toRecipeResponse(recipe);
        dto = recipeEnrichmentService.enrichForDetailResponse(dto, currentUserId);
        return dto;
    }

    // Lay recipe theo tag
    public PageDTO<RecipeSummaryDTO> getRecipeByTagId(MyUserDetails currentUser, Long tagId, Pageable pageable) {
        Page<Recipe> recipePage = recipeRepository.findPublicApprovedByTagId(
                tagId,
                Scope.PUBLIC,
                Status.APPROVED,
                pageable);

        if (recipePage.isEmpty()) {
            return PageDTO.empty(pageable);
        }
        // basic infor
        List<RecipeSummaryDTO> recipeSummaries = recipeMapper.toSummaryDTOList(recipePage.getContent());
        recipeSummaries = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(recipeSummaries, currentUser.getId());
        return new PageDTO<>(recipePage, recipeSummaries);
    }

    // Lay recipe theo category
    public PageDTO<RecipeSummaryDTO> getRecipeByCategoryId(MyUserDetails currentUser, Long categoryId, Pageable pageable) {
        Page<Recipe> recipePage = recipeRepository.findPublicApprovedByCategoryId(
                categoryId,
                Scope.PUBLIC,
                Status.APPROVED,
                pageable);

        if (recipePage.isEmpty()) {
            return PageDTO.empty(pageable);
        }
        // basic infor
        List<RecipeSummaryDTO> recipeSummaries = recipeMapper.toSummaryDTOList(recipePage.getContent());
        recipeSummaries = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(recipeSummaries, currentUser.getId());
        return new PageDTO<>(recipePage, recipeSummaries);
    }

    //////////////////////////////////////////
    public PageDTO<RecipeSummaryDTO> getMyRecipes(MyUserDetails currentUser, Pageable pageable) {
        Page<Recipe> recipePage = recipeRepository.findByUserId(currentUser.getId(), pageable);

        if (recipePage.isEmpty()) {
            return PageDTO.empty(pageable);
        }
        // basic infor
        List<RecipeSummaryDTO> recipeSummaries = recipeMapper.toSummaryDTOList(recipePage.getContent());
        recipeSummaries = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(recipeSummaries, currentUser.getId());
        return new PageDTO<>(recipePage, recipeSummaries);
    }

    // holder //
    public PageDTO<RecipeSummaryDTO> getPlaceHolder(MyUserDetails currentUser, Pageable pageable) {

        // Query JPA thật, không điều kiện
        Page<Recipe> recipePage = recipeRepository.findAll(pageable);

        if (recipePage.isEmpty()) {
            return PageDTO.empty(pageable);
        }

        // Map sang DTO
        List<RecipeSummaryDTO> dtos = recipeMapper.toSummaryDTOList(recipePage.getContent());

        // Enrich như thật để controller hoạt động y hệt các endpoint khác
        dtos = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(dtos, currentUser.getId());

        return new PageDTO<>(recipePage, dtos);
    }

    //////////////////////////////////////////
    public PageDTO<RecipeSummaryDTO> getMyLikedRecipes(MyUserDetails currentUser, Pageable pageable) {
        Page<Recipe> recipePage = likeRepository.findRecipesByUserId(currentUser.getId(), pageable);

        if (recipePage.isEmpty()) {
            return PageDTO.empty(pageable);
        }
        // basic infor
        List<RecipeSummaryDTO> recipeSummaries = recipeMapper.toSummaryDTOList(recipePage.getContent());
        recipeSummaries = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(recipeSummaries, currentUser.getId());
        return new PageDTO<>(recipePage, recipeSummaries);
    }

    ///////////////////////////////
    /// TODO: UTest hàm này và hàm con
    public PageDTO<RecipeSummaryDTO> getMyRecipes(
            Long currentUserId,
            Status status,
            Scope scope,
            String keyword,
            Pageable pageable) {

        Specification<Recipe> spec = Specification.allOf(
                RecipeSpecs.hasUserId(currentUserId),
                RecipeSpecs.hasStatus(status),
                RecipeSpecs.hasScope(scope),
                RecipeSpecs.titleContains(keyword),
                RecipeSpecs.isNotDeleted());

        Page<Recipe> page = recipeRepository.findAll(spec, pageable);

        if (page.isEmpty()) {
            return PageDTO.empty(pageable);
        }

        List<RecipeSummaryDTO> dtos = recipeMapper.toSummaryDTOList(page.getContent());
        dtos = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(dtos, currentUserId);

        return new PageDTO<>(page, dtos);
    }

    ///////////////////
    /// TODO: UTest hàm này và hàm con
    public PageDTO<RecipeSummaryDTO> getAllRecipesForAdmin(
            Long currentUserId,
            Status status,
            Scope scope,
            String keyword,
            Pageable pageable) {

        Specification<Recipe> spec = Specification.allOf(
                RecipeSpecs.hasStatus(status),
                RecipeSpecs.hasScope(scope),
                RecipeSpecs.titleContains(keyword),
                RecipeSpecs.isNotDeleted());

        Page<Recipe> page = recipeRepository.findAll(spec, pageable);

        if (page.isEmpty()) {
            return PageDTO.empty(pageable);
        }

        List<RecipeSummaryDTO> dtos = recipeMapper.toSummaryDTOList(page.getContent());
        dtos = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(dtos, currentUserId);

        return new PageDTO<>(page, dtos);
    }

    ///// thống kê cho admin////////////
    /// TODO: cânn nhắc chuyển sang service riêng cho thống kê
    public RecipeStatisticsDTO getRecipeStatistics() {
        Long totalRecipes = recipeRepository.countAllRecipes();
        Long totalViews = recipeRepository.countTotalViews();

        Map<String, Long> byStatus = recipeRepository.countByStatus().stream()
                .collect(Collectors.toMap(
                        arr -> arr[0].toString(),
                        arr -> (Long) arr[1]));

        Map<String, Long> byDifficulty = recipeRepository.countByDifficulty().stream()
                .collect(Collectors.toMap(
                        arr -> arr[0].toString(),
                        arr -> (Long) arr[1]));

        Map<String, Long> byScope = recipeRepository.countByScope().stream()
                .collect(Collectors.toMap(
                        arr -> arr[0].toString(),
                        arr -> (Long) arr[1]));

        Long createdLast7Days = recipeRepository.countCreatedSince(LocalDateTime.now().minusDays(7));

        return new RecipeStatisticsDTO(
                totalRecipes,
                totalViews != null ? totalViews : 0L,
                byStatus,
                byDifficulty,
                byScope,
                createdLast7Days);
    }

    ///////// thống kê cho chef///////////
    // TODO: cânn nhắc chuyển sang service riêng cho thống kê
    public RecipeStatisticsDTO getStatisticsForUser(Long userId) {
        Long totalRecipes = recipeRepository.countAllByUser(userId);
        Long totalViews = recipeRepository.countTotalViewsByUser(userId);

        Map<String, Long> byStatus = recipeRepository.countByStatusForUser(userId).stream()
                .collect(Collectors.toMap(
                        arr -> arr[0].toString(),
                        arr -> (Long) arr[1]));

        Map<String, Long> byDifficulty = recipeRepository.countByDifficultyForUser(userId).stream()
                .collect(Collectors.toMap(
                        arr -> arr[0].toString(),
                        arr -> (Long) arr[1]));

        Map<String, Long> byScope = recipeRepository.countByScopeForUser(userId).stream()
                .collect(Collectors.toMap(
                        arr -> arr[0].toString(),
                        arr -> (Long) arr[1]));

        Long createdLast7Days = recipeRepository.countCreatedSinceForUser(userId, LocalDateTime.now().minusDays(7));

        return new RecipeStatisticsDTO(
                totalRecipes,
                totalViews != null ? totalViews : 0L,
                byStatus,
                byDifficulty,
                byScope,
                createdLast7Days);
    }

    //////////////
    public Recipe getRecipeById(Long id) {// admin only
        // TODO: fix
        Recipe recipe = recipeRepository.findById(id)
                .orElseThrow(() -> new CustomException("Khong tim thay recipe voi id: " + id));
        return recipe;
    }
    ///////////////////////////////////////////////////////////////////////////////
    // Test///////////
    //////
    // Search by keyword

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
        recipeSummaryDTOs = recipeEnrichmentService.enrichAllForRecipeSummaryDTOs(recipeSummaryDTOs,
                currentUser.getId());

        // 6. Trả về PageDTO với dữ liệu đã map
        return new PageDTO<>(recipePage, recipeSummaryDTOs);
    }

    // Search tất cả nguyên liệu (dùng Specification với LIKE)
    // public Page<RecipeSummaryDTO> searchByAllIngredients(List<String>
    // ingredients, int page, int size) {
    // if (ingredients == null || ingredients.isEmpty()) {
    // return Page.empty();
    // }

    // // Chuẩn hóa về lowercase
    // List<String> normalized = ingredients.stream()
    // .map(String::toLowerCase)
    // .toList();

    // // Tạo Specification LIKE động
    // Specification<Recipe> spec =
    // RecipeSpecifications.hasAllIngredientsLike(normalized);

    // // Tạo Pageable (sắp xếp theo createdAt DESC)
    // Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.DESC,
    // "createdAt"));

    // // Query và map sang DTO
    // Page<Recipe> recipePage = recipeRepository.findAll(spec, pageable);
    // return recipePage.map(recipeMapper::toSummaryDTO);
    // }

}
