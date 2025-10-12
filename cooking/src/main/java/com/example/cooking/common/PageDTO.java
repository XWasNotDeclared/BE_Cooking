package com.example.cooking.common;

import java.util.List;

public record PageDTO<T>(List<T> content, long totalElements, int totalPages, int pageNumber) {}