// API Response wrapper
export interface ApiResponse<T> {
  status: number;
  message: string;
  data: T;
  timestamp: string;
}

// Auth
export interface AuthRequest {
  email: string;
  password: string;
}

export interface LoginResponse {
  token: string;
}

// User
export interface UserDTO {
  username: string;
  email: string;
  dob?: string;
  bio?: string;
  avatarUrl?: string;
  createdAt: string;
  lastLogin?: string;
}

// Recipe
export interface RecipeSummaryDTO {
  id: number;
  title: string;
  description?: string;
  imageUrl?: string;
  prepTime: number;
  cookTime: number;
  servings: number;
  scope: 'PUBLIC' | 'PRIVATE' | 'DRAFT';
  status: 'APPROVED' | 'PENDING' | 'REJECTED';
  createdAt: string;
  updatedAt: string;
  categories: CategoryResponseDTO[];
  tags: TagResponseDTO[];
  author: UserDTO;
  likesCount: number;
}

export interface PageDTO<T> {
  content: T[];
  totalElements: number;
  totalPages: number;
  pageNumber: number;
}

// Category
export interface CategoryResponseDTO {
  name: string;
  slug: string;
  description?: string;
}

// Tag
export interface TagResponseDTO {
  name: string;
  slug: string;
}

// Create Recipe
export interface NewRecipeRequest {
  title: string;
  description?: string;
  servings: number;
  prepTime: number;
  cookTime: number;
  scope: 'PUBLIC' | 'PRIVATE' | 'DRAFT';
  // imageUrl?: string;
  steps: StepRequestDTO[];
  recipeIngredients: RecipeIngredientRequestDTO[];
  categoryIds?: number[];
  tagIds?: number[];
}

export interface StepRequestDTO {
  stepNumber: number;
  description: string;
  // imageUrls?: string[];
}

export interface RecipeIngredientRequestDTO {
  quantity?: number;
  unit?: string;
  rawName: string;
  displayOrder?: number;
}

// Ingredient
export interface IngredientDTO {
  name: string;
  status: 'APPROVED' | 'PENDING' | 'REJECTED';
}