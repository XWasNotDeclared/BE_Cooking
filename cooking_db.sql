/*
 Navicat Premium Dump SQL

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100425 (10.4.25-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : cooking_db

 Target Server Type    : MySQL
 Target Server Version : 100425 (10.4.25-MariaDB)
 File Encoding         : 65001

 Date: 18/01/2026 22:49:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about_pages
-- ----------------------------
DROP TABLE IF EXISTS `about_pages`;
CREATE TABLE `about_pages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imageUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `isActive` tinyint(1) NULL DEFAULT 1,
  `createdAt` datetime NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of about_pages
-- ----------------------------
INSERT INTO `about_pages` VALUES (1, 'Về chúng tôi', 'Chúng tôi xây dựng website chia sẻ công thức nấu ăn với mong muốn mang đến một không gian ẩm thực tiện ích, nơi mọi người có thể dễ dàng tìm kiếm, học hỏi và sáng tạo những bữa ăn ngon mỗi ngày. Website không chỉ cung cấp các công thức nấu ăn đa dạng mà còn hỗ trợ gợi ý món ăn thông minh dựa trên nguyên liệu người dùng đang có, giúp tiết kiệm thời gian và hạn chế lãng phí thực phẩm.mmmmm', 'https://hoangdangjsc.com/Upload/image/2020/07/31/ve-chung-toi_2020-07-31-142530.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (2, 'Sứ mệnh', 'Sứ mệnh của chúng tôi là mang đến một nền tảng ẩm thực thông minh, tiện lợi và dễ tiếp cận, giúp người dùng giải quyết bài toán “hôm nay nấu gì” một cách nhanh chóng và hiệu quả. Thông qua việc kết hợp chia sẻ công thức nấu ăn và gợi ý món ăn dựa trên nguyên liệu có sẵn, website hướng đến việc hỗ trợ người dùng tối ưu thời gian nấu nướng và tận dụng tối đa nguồn thực phẩm trong gia đình.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMWvsuf2LZWNh8CYOp1JxHni3pgZLEPl48_w&s', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (3, 'Tầm nhìn', 'Chúng tôi hướng tới trở thành nền tảng chia sẻ công thức nấu ăn và gợi ý món ăn thông minh, đáng tin cậy, được nhiều người dùng lựa chọn trong đời sống hằng ngày. Website không chỉ dừng lại ở việc cung cấp công thức, mà còn đóng vai trò như một trợ lý ẩm thực số, hỗ trợ người dùng đưa ra quyết định nấu ăn nhanh chóng, phù hợp với nhu cầu cá nhân và nguồn nguyên liệu sẵn có.', 'https://cdn2.fptshop.com.vn/unsafe/800x0/tam_nhin_la_gi_1_aec6975954.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (4, 'Đội ngũ', 'Đội ngũ phát triển website bao gồm các thành viên trẻ, có nền tảng về công nghệ thông tin và niềm đam mê với ẩm thực. Chúng tôi kết hợp kiến thức chuyên môn về lập trình, thiết kế hệ thống với sự am hiểu nhu cầu thực tế của người dùng trong đời sống hằng ngày để xây dựng một nền tảng chia sẻ công thức nấu ăn tiện ích và dễ sử dụng.', 'https://lapduan.vn/Uploads/images/kienthuckinhdoanh/4-tuyet-chieu-xay-dung-doi-ngu-kinh-doanh-bds-gioi-1.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (5, 'Giá trị', 'Chúng tôi đặt người dùng làm trung tâm trong mọi hoạt động phát triển, hướng đến việc mang lại trải nghiệm nấu ăn đơn giản, thuận tiện và hiệu quả. Mỗi tính năng và nội dung trên website đều được xây dựng nhằm giải quyết nhu cầu thực tế, giúp người dùng dễ dàng tìm kiếm công thức và lựa chọn món ăn phù hợp với nguyên liệu sẵn có.', 'https://extgw.dsc.com.vn/eback/uploads/quy_luat_gia_tri_la_gi_d53298f858.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (6, 'Cộng đồng', 'Chúng tôi hướng tới xây dựng một cộng đồng yêu ẩm thực thân thiện, nơi mọi người có thể cùng nhau chia sẻ công thức nấu ăn, kinh nghiệm và cảm hứng trong cuộc sống hằng ngày. Website không chỉ là nơi tìm kiếm món ăn mà còn là không gian kết nối những người có chung niềm đam mê nấu nướng.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTWXyRMF6JTWt7ggDXygdHsqiAfkv-K1M4ZQ&s', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (7, 'Đối tác', 'Chúng tôi trân trọng sự hợp tác với các đối tác trong lĩnh vực ẩm thực, thực phẩm và công nghệ nhằm mang đến những giá trị thiết thực cho người dùng. Các mối quan hệ hợp tác được xây dựng trên tinh thần minh bạch, cùng phát triển và hướng tới lợi ích lâu dài.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDOgRbFocDdoLU-lit5qyH3SH0GwmTkMCRTg&s', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (8, 'Hướng dẫn', 'Website được thiết kế với mục tiêu giúp người dùng dễ dàng tìm kiếm công thức và lựa chọn món ăn phù hợp trong thời gian ngắn nhất. Chỉ với vài bước đơn giản, bạn có thể nhanh chóng khám phá và áp dụng các công thức nấu ăn ngay tại nhà.', 'https://static.k12online.vn/publish/thumbnail/2013410/450x300xdefault/upload/2013410/20210806/check-out-la-gi-kien-thuc-a-z-ve-check-out-trong-linh-vuc__4_-800x600_5cac5.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (9, 'Blog', 'Chuyên mục Blog là nơi chia sẻ những bài viết xoay quanh ẩm thực, nấu ăn và phong cách sống lành mạnh. Tại đây, người dùng có thể tìm thấy các mẹo nấu ăn hữu ích, kinh nghiệm lựa chọn và bảo quản nguyên liệu, cũng như những câu chuyện thú vị gắn liền với văn hóa ẩm thực trong đời sống hằng ngày.', 'https://blog.dktcdn.net/files/blog-la-gi-3.png', 1, '2026-01-04 14:47:19');
INSERT INTO `about_pages` VALUES (10, 'Liên hệ', 'Hãy liên hệ với chúng tôi để gửi công thức hoặc phản hồi.', 'https://trabico.vn/wp-content/uploads/2024/05/lien-he.jpg', 1, '2026-01-04 14:47:19');

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses`  (
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `address_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `FK1fa36y2oqhao3wgg2rw1pi459`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK1fa36y2oqhao3wgg2rw1pi459` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES (123, 123, 1, 7, 'Công ty', 'Tố Hữu');
INSERT INTO `addresses` VALUES (123, 123, 2, 8, 'Công ty', 'Tố Hữu');
INSERT INTO `addresses` VALUES (123, 123, 3, 6, 'Công ty', 'Tố Hữu');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NULL DEFAULT 1,
  `createdAt` datetime NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (1, 'https://images.pexels.com/photos/1448721/pexels-photo-1448721.jpeg', 'Khám phá món mới', 'Cập nhật công thức mới mỗi tuần', 1, '2026-01-04 14:47:19');
INSERT INTO `banners` VALUES (2, 'https://images.pexels.com/photos/1426715/pexels-photo-1426715.jpeg', 'Món ăn truyền thống', 'Tái hiện hương vị cổ truyền', 1, '2026-01-04 14:47:19');
INSERT INTO `banners` VALUES (3, 'https://images.pexels.com/photos/5737247/pexels-photo-5737247.jpeg', 'Ăn uống lành mạnh', 'Công thức dinh dưỡng cho mọi gia đình', 1, '2026-01-04 14:47:19');
INSERT INTO `banners` VALUES (4, 'https://images.pexels.com/photos/1448721/pexels-photo-1448721.jpeg', 'Bữa tối nhanh', 'Các món ăn chỉ 30 phút', 1, '2026-01-04 14:47:19');
INSERT INTO `banners` VALUES (5, 'https://images.pexels.com/photos/1426715/pexels-photo-1426715.jpeg', 'Món chay', 'Thực đơn thuần chay đầy sáng tạo', 1, '2026-01-04 14:47:19');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items`  (
  `quantity` int NOT NULL,
  `cart_id` bigint NOT NULL,
  `cart_item_id` bigint NOT NULL AUTO_INCREMENT,
  `dish_id` bigint NOT NULL,
  `price_snapshot` bigint NOT NULL,
  PRIMARY KEY (`cart_item_id`) USING BTREE,
  INDEX `FKpcttvuq4mxppo8sxggjtn5i2c`(`cart_id` ASC) USING BTREE,
  INDEX `FKdaescekp0k03m7t90duv70c03`(`dish_id` ASC) USING BTREE,
  CONSTRAINT `FKdaescekp0k03m7t90duv70c03` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpcttvuq4mxppo8sxggjtn5i2c` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_items
-- ----------------------------
INSERT INTO `cart_items` VALUES (1, 1, 1, 1, 45000);
INSERT INTO `cart_items` VALUES (1, 2, 2, 1, 45000);
INSERT INTO `cart_items` VALUES (1, 3, 3, 1, 45000);
INSERT INTO `cart_items` VALUES (1, 4, 4, 11, 50000);
INSERT INTO `cart_items` VALUES (1, 4, 5, 12, 50000);
INSERT INTO `cart_items` VALUES (1, 5, 6, 2, 50000);
INSERT INTO `cart_items` VALUES (1, 5, 7, 3, 50000);

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `cart_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `seller_id` bigint NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `status` enum('ACTIVE','CANCELLED','ORDERED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `FKb6tjpbdydynt291e6p43dt3yy`(`seller_id` ASC) USING BTREE,
  INDEX `FKb5o626f86h46m4s7ms6ginnop`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKb6tjpbdydynt291e6p43dt3yy` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (1, '2026-01-06 11:30:51.000000', 3, '2026-01-06 11:31:03.000000', 7, 'ORDERED');
INSERT INTO `carts` VALUES (2, '2026-01-06 12:37:23.000000', 3, '2026-01-06 12:42:14.000000', 7, 'ORDERED');
INSERT INTO `carts` VALUES (3, '2026-01-06 12:55:43.000000', 3, '2026-01-06 12:55:43.000000', 5, 'ACTIVE');
INSERT INTO `carts` VALUES (4, '2026-01-09 16:37:02.000000', 6, '2026-01-09 16:37:21.000000', 8, 'ORDERED');
INSERT INTO `carts` VALUES (5, '2026-01-10 10:27:41.000000', 5, '2026-01-10 10:28:01.000000', 6, 'ORDERED');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE,
  UNIQUE INDEX `UKt8o6pivur7nn124jehx7cygw5`(`name` ASC) USING BTREE,
  UNIQUE INDEX `UKoul14ho7bctbefv8jywp5v3i2`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Các món ăn truyền thống Việt Nam', '/static_resource/public/upload/cate/download (8).jpg', 'Món Việt Nam', 'mon-viet-nam');
INSERT INTO `categories` VALUES (2, 'Các món Ý như pasta, pizza, lasagna', '/static_resource/public/upload/cate/download.jpg', 'Món Ý', 'mon-y');
INSERT INTO `categories` VALUES (3, 'Các món ăn đến từ châu Á khác ngoài Việt Nam', '/static_resource/public/upload/cate/download (1).jpg', 'Món Á', 'mon-a');
INSERT INTO `categories` VALUES (4, 'Nước ép, trà sữa, cocktail và mocktail', '/static_resource/public/upload/cate/download (2).jpg', 'Đồ uống', 'do-uong');
INSERT INTO `categories` VALUES (5, 'Salad tươi ngon và các món rau trộn', '/static_resource/public/upload/cate/download (3).jpg', 'Salad & Rau củ', 'salad-rau-cu');
INSERT INTO `categories` VALUES (6, 'Bánh ngọt, kem, pudding, chè', '/static_resource/public/upload/cate/download (4).jpg', 'Bánh & Tráng miệng', 'banh-trang-mieng');
INSERT INTO `categories` VALUES (7, 'Thịt, cá, hải sản nướng, BBQ', '/static_resource/public/upload/cate/download (5).jpg', 'Đồ nướng', 'do-nuong');
INSERT INTO `categories` VALUES (8, 'Các món chiên giòn, gà rán, khoai tây chiên', '/static_resource/public/upload/cate/download (6).jpg', 'Đồ chiên & Rán', 'do-chien-ran');
INSERT INTO `categories` VALUES (9, 'Các món ăn không có thịt, thích hợp cho người ăn chay', '/static_resource/public/upload/cate/download (7).jpg', 'Món chay', 'mon-chay');
INSERT INTO `categories` VALUES (10, 'Burger, hotdog, sandwich, snack nhanh', '/static_resource/public/upload/cate/download (9).jpg', 'Món ăn nhanh', 'mon-an-nhanh');

-- ----------------------------
-- Table structure for chef_requests
-- ----------------------------
DROP TABLE IF EXISTS `chef_requests`;
CREATE TABLE `chef_requests`  (
  `created_at` datetime(6) NULL DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `admin_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` enum('APPROVED','PENDING','REJECTED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKt8lhyq4d58kvs3v8hf0p4fl53`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKt8lhyq4d58kvs3v8hf0p4fl53` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chef_requests
-- ----------------------------

-- ----------------------------
-- Table structure for collection_recipes
-- ----------------------------
DROP TABLE IF EXISTS `collection_recipes`;
CREATE TABLE `collection_recipes`  (
  `display_order` int NULL DEFAULT NULL,
  `added_at` datetime(6) NOT NULL,
  `collection_id` bigint NOT NULL,
  `collection_recipe_id` bigint NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`collection_recipe_id`) USING BTREE,
  UNIQUE INDEX `UKoy40ov9cf9f30p7enkoexc2rd`(`collection_id` ASC, `recipe_id` ASC) USING BTREE,
  INDEX `FKjhshxvrde3jpdwc0v1g1b3w9o`(`recipe_id` ASC) USING BTREE,
  CONSTRAINT `FKjhshxvrde3jpdwc0v1g1b3w9o` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKteylsehnd80fep5bldxj68xvw` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`collection_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection_recipes
-- ----------------------------
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-06 19:49:30.000000', 3, 1, 41, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-06 19:49:32.000000', 2, 2, 42, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-06 19:49:37.000000', 2, 3, 43, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-06 19:49:39.000000', 3, 4, 44, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 20:54:28.000000', 4, 5, 37, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 20:54:29.000000', 5, 6, 37, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 20:54:31.000000', 6, 7, 37, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 20:54:35.000000', 4, 8, 38, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 20:54:36.000000', 5, 9, 38, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 20:54:39.000000', 4, 10, 39, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 20:54:49.000000', 6, 11, 32, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 21:30:15.000000', 9, 12, 41, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 21:30:21.000000', 8, 13, 31, NULL);
INSERT INTO `collection_recipes` VALUES (NULL, '2026-01-08 21:30:25.000000', 7, 14, 38, NULL);

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections`  (
  `is_public` bit(1) NOT NULL,
  `collection_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`collection_id`) USING BTREE,
  INDEX `FKn7pdedyqaiddr0uxdj603my7d`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKn7pdedyqaiddr0uxdj603my7d` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES (b'1', 1, '2026-01-06 19:48:07.000000', '2026-01-06 19:48:07.000000', 7, 'Món ăn chính', 'Món ăn chính');
INSERT INTO `collections` VALUES (b'1', 2, '2026-01-06 19:48:30.000000', '2026-01-06 19:48:30.000000', 7, 'Món ăn nhanh', 'Món ăn nhanh');
INSERT INTO `collections` VALUES (b'1', 3, '2026-01-06 19:48:54.000000', '2026-01-06 19:48:54.000000', 7, 'Healthy', 'Healthy');
INSERT INTO `collections` VALUES (b'1', 4, '2026-01-08 20:53:42.000000', '2026-01-08 20:53:42.000000', 6, 'Món ăn chính', 'Món ăn chính');
INSERT INTO `collections` VALUES (b'1', 5, '2026-01-08 20:53:56.000000', '2026-01-08 20:53:56.000000', 6, 'Món ăn nhanh', 'Món ăn nhanh');
INSERT INTO `collections` VALUES (b'1', 6, '2026-01-08 20:54:09.000000', '2026-01-08 20:54:09.000000', 6, 'Đồ uống', 'Đồ uống');
INSERT INTO `collections` VALUES (b'1', 7, '2026-01-08 21:29:39.000000', '2026-01-08 21:29:39.000000', 8, 'Món chính', 'Món chính');
INSERT INTO `collections` VALUES (b'1', 8, '2026-01-08 21:29:48.000000', '2026-01-08 21:29:48.000000', 8, 'Món ăn nhanh', 'Món ăn nhanh');
INSERT INTO `collections` VALUES (b'1', 9, '2026-01-08 21:29:58.000000', '2026-01-08 21:29:58.000000', 8, 'Đồ uống', 'Đồ uống');

-- ----------------------------
-- Table structure for comment_likes
-- ----------------------------
DROP TABLE IF EXISTS `comment_likes`;
CREATE TABLE `comment_likes`  (
  `comment_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKgu1pee3567af29uutdfy0fcjd`(`user_id` ASC, `comment_id` ASC) USING BTREE,
  INDEX `FK3wa5u7bs1p1o9hmavtgdgk1go`(`comment_id` ASC) USING BTREE,
  CONSTRAINT `FK3wa5u7bs1p1o9hmavtgdgk1go` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK6h3lbneryl5pyb9ykaju7werx` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_likes
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `comment_id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `parent_comment_id` bigint NULL DEFAULT NULL,
  `recipe_id` bigint NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `FK7h839m3lkvhbyv3bcdv7sm4fj`(`parent_comment_id` ASC) USING BTREE,
  INDEX `FKdtb5nfo2c69a6chahuihyaqx`(`recipe_id` ASC) USING BTREE,
  INDEX `FK8omq0tc18jd43bu5tjh6jvraq`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK7h839m3lkvhbyv3bcdv7sm4fj` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8omq0tc18jd43bu5tjh6jvraq` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKdtb5nfo2c69a6chahuihyaqx` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, '2026-01-06 14:54:57.000000', NULL, 51, '2026-01-06 14:54:57.000000', 5, 'ngon');
INSERT INTO `comments` VALUES (2, '2026-01-06 14:56:11.000000', 1, 51, '2026-01-06 14:56:11.000000', 5, 'oke');
INSERT INTO `comments` VALUES (3, '2026-01-06 15:18:11.000000', 1, 51, '2026-01-06 15:18:11.000000', 5, 'hjhhj');
INSERT INTO `comments` VALUES (4, '2026-01-06 15:21:31.000000', 1, 51, '2026-01-06 15:21:31.000000', 5, 'haha');
INSERT INTO `comments` VALUES (5, '2026-01-06 15:25:32.000000', 1, 51, '2026-01-06 15:25:32.000000', 5, 'hehe');
INSERT INTO `comments` VALUES (6, '2026-01-06 15:26:27.000000', 1, 51, '2026-01-06 15:26:27.000000', 5, 'hoho');
INSERT INTO `comments` VALUES (7, '2026-01-06 19:14:20.000000', NULL, 31, '2026-01-06 19:14:20.000000', 7, 'Món này ngon nhé');
INSERT INTO `comments` VALUES (8, '2026-01-06 19:16:36.000000', 7, 31, '2026-01-06 19:16:36.000000', 7, 'Đương nhiên rồi');
INSERT INTO `comments` VALUES (9, '2026-01-09 16:31:24.000000', NULL, 34, '2026-01-09 16:31:24.000000', 6, 'ngon lắm');
INSERT INTO `comments` VALUES (10, '2026-01-10 07:36:20.000000', 7, 31, '2026-01-10 07:36:20.000000', 6, 'Oke nha');

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `dish_id` bigint NOT NULL AUTO_INCREMENT,
  `price` bigint NULL DEFAULT NULL,
  `recipe_id` bigint NULL DEFAULT NULL,
  `remaining_servings` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `version` bigint NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('ACTIVE','DISABLED','INACTIVE','OUT_OF_STOCK') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dish_id`) USING BTREE,
  INDEX `FKsgrix043qhd4gush19ooyli9l`(`recipe_id` ASC) USING BTREE,
  INDEX `FK4cvbymf9m9quckcouehn0p414`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK4cvbymf9m9quckcouehn0p414` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsgrix043qhd4gush19ooyli9l` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1, 45000, 20, 19, 3, 1, 'Bò', '/static_resource/public/upload/dishs/2311ef21-9013-4b35-914a-2f0bcfc0f248_20.jpg', 'Bò Lúc Lắc', 'ACTIVE');
INSERT INTO `dish` VALUES (2, 50000, 31, 20, 5, 0, 'Bánh bông lan', '/static_resource/public/upload/dishs/d3f3efbc-9fb9-4cf3-9073-f4a445290cb3_31.jpg', 'Bánh bông lan trứng muối', 'ACTIVE');
INSERT INTO `dish` VALUES (3, 50000, 32, 20, 5, 0, 'Pudding Socola', '/static_resource/public/upload/dishs/268b7d8a-87a8-4fec-a549-4d4a1d7269e8_32.jpg', 'Pudding Socola', 'ACTIVE');
INSERT INTO `dish` VALUES (4, 50000, 33, 20, 5, 0, 'Pudding Socola', '/static_resource/public/upload/dishs/db00b007-2111-4507-bdfd-2eaa4d45c3df_33.jpg', 'Chè đậu xanh nước cốt dừa', 'ACTIVE');
INSERT INTO `dish` VALUES (5, 40000, 34, 20, 5, 0, 'Sinh tố bơ', '/static_resource/public/upload/dishs/12fc8e11-30c2-478c-ac2f-062d6636654f_33.jpg', 'Sinh tố bơ', 'ACTIVE');
INSERT INTO `dish` VALUES (6, 40000, 35, 20, 5, 0, 'Trà sữa chân trâu', '/static_resource/public/upload/dishs/0600f953-4381-48ca-b92b-492eb19ab648_35.jpg', 'Trà sữa chân trâu', 'ACTIVE');
INSERT INTO `dish` VALUES (7, 40000, 36, 20, 5, 0, 'Kimchi Hàn Quốc', '/static_resource/public/upload/dishs/50bda8ca-3da4-442d-89a2-b89cc1f6104e_36.jpg', 'Kimchi Hàn Quốc', 'ACTIVE');
INSERT INTO `dish` VALUES (8, 40000, 37, 20, 5, 0, 'Shushi cuộn', '/static_resource/public/upload/dishs/fd6c2d82-5b4a-4205-858b-6b4acf30bfc7_37.jpg', 'Shushi cuộn', 'ACTIVE');
INSERT INTO `dish` VALUES (9, 60000, 38, 20, 5, 0, 'Ramen', '/static_resource/public/upload/dishs/d262e230-d9ce-4ddf-ab99-68556f19bf57_37.jpg', 'Ramen', 'ACTIVE');
INSERT INTO `dish` VALUES (10, 60000, 40, 20, 5, 0, 'Mochi nhân đậu đỏ', '/static_resource/public/upload/dishs/7cc91438-f41a-4b0c-8f10-3a41ef324a92_40.jpg', 'Mochi nhân đậu đỏ', 'ACTIVE');
INSERT INTO `dish` VALUES (11, 50000, 41, 18, 6, 7, 'chanh bạc hà', '/static_resource/public/upload/dishs/26244926-e352-46c1-a585-4db79272a1f5_41.jpg', 'Mojito chanh bạc hà', 'ACTIVE');
INSERT INTO `dish` VALUES (12, 50000, 42, 18, 6, 15, 'Smoothie dâu tây chuối', '/static_resource/public/upload/dishs/ad566ba7-5419-43ab-8942-4bfff257d1e3_42.jpg', 'Smoothie dâu tây chuối', 'ACTIVE');
INSERT INTO `dish` VALUES (13, 50000, 43, 19, 6, 0, 'Cà phê kiểu Ý', '/static_resource/public/upload/dishs/86817fa0-f8a3-4e86-af20-e68b93359a7e_43.jpg', 'Cà phê kiểu Ý', 'ACTIVE');
INSERT INTO `dish` VALUES (14, 50000, 44, 19, 6, 0, 'Trà nóng Masala Ấn Độ', '/static_resource/public/upload/dishs/1f9a235d-a07c-48ea-a675-bbb6dba6a317_44.jpg', 'Trà nóng Masala Ấn Độ', 'ACTIVE');
INSERT INTO `dish` VALUES (15, 50000, 45, 19, 6, 0, 'Smoothie xoài dừa', '/static_resource/public/upload/dishs/b8f413a0-cea2-4cdc-a159-f462f10ccc0c_45.jpg', 'Smoothie xoài dừa', 'ACTIVE');
INSERT INTO `dish` VALUES (16, 50000, 46, 19, 6, 0, 'Matcha Latte Nhật Bản', '/static_resource/public/upload/dishs/d50746ea-3dc4-4d33-bbf5-71cd10256dea_46.jpg', 'Matcha Latte Nhật Bản', 'ACTIVE');
INSERT INTO `dish` VALUES (17, 50000, 47, 19, 6, 0, 'Trà ô long Trân châu', '/static_resource/public/upload/dishs/47aeb36c-7a19-48fe-afa7-f1b02253db45_35.jpg', 'Trà ô long Trân châu', 'ACTIVE');
INSERT INTO `dish` VALUES (18, 50000, 48, 19, 6, 0, 'Chocolate nóng kiểu Bỉ', '/static_resource/public/upload/dishs/2d72f161-29f1-4eb5-8290-2a8366a79c5b_49.jpg', 'Chocolate nóng kiểu Bỉ', 'ACTIVE');
INSERT INTO `dish` VALUES (19, 50000, 49, 19, 6, 0, 'Frappuccino cà phê kiểu Mỹ', '/static_resource/public/upload/dishs/4952d1d1-e8eb-4ba8-a07e-29967896b201_48.jpg', 'Frappuccino cà phê kiểu Mỹ', 'ACTIVE');
INSERT INTO `dish` VALUES (20, 50000, 50, 19, 6, 0, 'Trà bạc hà chanh kiểu Morocco', '/static_resource/public/upload/dishs/0fe9464e-7bd4-4c99-97fb-7195a8cf2c09_50.jpg', 'Trà bạc hà chanh kiểu Morocco', 'ACTIVE');

-- ----------------------------
-- Table structure for featured_videos
-- ----------------------------
DROP TABLE IF EXISTS `featured_videos`;
CREATE TABLE `featured_videos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtubeUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `isActive` tinyint(1) NULL DEFAULT 1,
  `createdAt` datetime NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of featured_videos
-- ----------------------------
INSERT INTO `featured_videos` VALUES (1, 'Cách nấu phở bò truyền thống', 'https://www.youtube.com/embed/c9GfHgMk1ac?si=gfbwIym96grHDjLI', 'images/thumb_pho.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (2, 'Bánh mì thịt nướng tại nhà', 'https://www.youtube.com/embed/5dX-hXxKM8E?si=mnFy4tajNBtiIWKh', 'images/thumb_banhmi.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (3, 'Gà sốt cam ngon tuyệt', 'https://www.youtube.com/embed/w1y9rWIZidM?si=1vpRp9QqdOReE6dS', 'images/thumb_ga.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (4, 'Salad trộn kiểu Hàn', 'https://www.youtube.com/embed/qx-kzoRngY0?si=jfxThUjNAOEAhD1v', 'images/thumb_salad.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (5, 'Mì Ý sốt bò bằm', 'https://www.youtube.com/embed/dKtHsNNp9yk?si=zQCacDDMSRDqrg16', 'images/thumb_miy.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (6, 'Bánh flan trứng mềm mịn', 'https://www.youtube.com/embed/cZI5Uv8y3zs?si=XztXzxVB83zBPCN9', 'images/thumb_flan.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (7, 'Chè đậu xanh thơm ngon', 'https://www.youtube.com/embed/NZCk5SGKbhA?si=4PMYbSXuH0wd97ee', 'images/thumb_che.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (8, 'Sinh tố bơ mát lạnh', 'https://www.youtube.com/embed/xM3MY47f7Ng?si=kd8db5xe14kwX_Mi', 'images/thumb_sinhto.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (9, 'Bánh crepe ngàn lớp', 'https://www.youtube.com/embed/TOkQvF7lFbQ?si=opMM3WZgMqOqrWOu', 'images/thumb_crepe.jpg', 1, '2026-01-04 14:47:19');
INSERT INTO `featured_videos` VALUES (10, 'Pizza tự làm tại nhà', 'https://www.youtube.com/embed/tRwtCeD4UNo?si=GsXCPJlo9d5nNEF6', 'images/thumb_pizza.jpg', 1, '2026-01-04 14:47:19');

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `calories` int NOT NULL,
  `protein` float NOT NULL,
  `fat` float NOT NULL,
  `carb` float NOT NULL,
  `serving_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'active',
  `created_at` datetime NULL DEFAULT current_timestamp(),
  `updated_at` datetime NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `slug`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES (1, 'Phở bò', 'pho-bo', 'Món nước', 400, 20, 10, 50, '1 bát', 'Phở bò truyền thống, nước dùng thơm ngon', 'https://fohlafood.vn/cdn/shop/articles/bi-quyet-nau-phi-bo-ngon-tuyet-dinh.jpg?v=1712213789', 'published', '2026-01-04 14:49:16', '2026-01-04 15:14:00');
INSERT INTO `foods` VALUES (2, 'Phở gà', 'pho-ga', 'Món nước', 380, 22, 9, 48, '1 bát', 'Phở gà ngon, nước dùng thanh ngọt', 'https://www.huongnghiepaau.com/wp-content/uploads/2017/08/cach-nau-pho-ga-ngon.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:17:44');
INSERT INTO `foods` VALUES (3, 'Bún bò Huế', 'bun-bo-hue', 'Món nước', 420, 25, 12, 45, '1 bát', 'Bún bò Huế cay ngon, chuẩn vị miền Trung', 'https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:format(webp):quality(75)/2023_10_24_638337374919476057_bun-bo-hue.jpeg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:17:34');
INSERT INTO `foods` VALUES (4, 'Mì Quảng', 'mi-quang', 'Món nước', 350, 18, 8, 40, '1 bát', 'Mì Quảng với thịt và tôm thơm ngon', 'https://i0.wp.com/vickypham.com/wp-content/uploads/2023/05/8faee-2023_04_28eosm56722.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:17:54');
INSERT INTO `foods` VALUES (5, 'Hủ tiếu Nam Vang', 'hu-tieu-nam-vang', 'Món nước', 360, 20, 10, 42, '1 bát', 'Hủ tiếu Nam Vang chuẩn vị Campuchia', 'https://i-giadinh.vnecdn.net/2023/05/15/Bc8Thnhphm18-1684125639-9811-1684125654.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:18:06');
INSERT INTO `foods` VALUES (6, 'Gỏi cuốn', 'goi-cuon', 'Món trộn', 150, 5, 3, 20, '2 cuốn', 'Gỏi cuốn tôm thịt tươi ngon', 'https://www.cet.edu.vn/wp-content/uploads/2018/11/goi-cuon-tom-thit.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:18:14');
INSERT INTO `foods` VALUES (7, 'Salad Nga', 'salad-nga', 'Món trộn', 200, 6, 10, 18, '1 bát', 'Salad Nga đầy đủ rau củ và sốt mayo', 'https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/163135/Originals/salad-nga-1(1).jpeg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:18:22');
INSERT INTO `foods` VALUES (8, 'Salad Caesar', 'salad-caesar', 'Món trộn', 250, 8, 15, 10, '1 bát', 'Salad Caesar với gà và phô mai', 'https://www.allrecipes.com/thmb/mXZ0Tulwn3x9_YB_ZbkiTveDYFE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/229063-Classic-Restaurant-Caesar-Salad-ddmfs-4x3-231-89bafa5e54dd4a8c933cf2a5f9f12a6f.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:18:32');
INSERT INTO `foods` VALUES (9, 'Gỏi đu đủ', 'goi-du-du', 'Món trộn', 180, 4, 5, 25, '1 đĩa', 'Gỏi đu đủ chua ngọt tươi mát', 'https://www.cet.edu.vn/wp-content/uploads/2019/07/goi-du-du-chua-ngot.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:18:40');
INSERT INTO `foods` VALUES (10, 'Bánh mì thịt nướng', 'banh-mi-thit-nuong', 'Món ăn nhanh', 350, 15, 12, 40, '1 ổ', 'Bánh mì nhân thịt nướng hấp dẫn', 'https://www.bigc.vn/files/cam-nang-mua-sam-27-11-2023-14-35-21/vao-bep-cung-go-27-11-2023-14-39-10/cach-lam-banh-mi-thit-nuong.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:18:48');
INSERT INTO `foods` VALUES (11, 'Bánh mì chảo', 'banh-mi-chao', 'Món ăn nhanh', 400, 18, 15, 42, '1 ổ', 'Bánh mì ăn kèm trứng, pate, xúc xích', 'https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:format(webp):quality(75)/banh_mi_chao_ha_noi_0_a23dcbe1ba.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:18:56');
INSERT INTO `foods` VALUES (12, 'Burger bò', 'burger-bo', 'Món ăn nhanh', 500, 25, 22, 45, '1 cái', 'Burger bò với sốt phô mai thơm ngon', 'https://product.hstatic.net/200000848723/product/2_356e19838a61405292c8b5bb03ce4075_master.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:04');
INSERT INTO `foods` VALUES (13, 'Hotdog', 'hotdog', 'Món ăn nhanh', 350, 12, 15, 35, '1 cái', 'Hotdog kẹp xúc xích và sốt đặc biệt', 'https://nguyenhafood.vn/uploads/files/banh-mi-hot-dog-kieu-my%20%282%29-1.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:11');
INSERT INTO `foods` VALUES (14, 'Gà rán', 'ga-ran', 'Món ăn nhanh', 550, 28, 30, 40, '1 phần', 'Gà rán giòn rụm, thịt mềm', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoygmgFUDbaJjn1i9aqayMpJgUHrp2WW_xnQ&s', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:18');
INSERT INTO `foods` VALUES (15, 'Cá chiên giòn', 'ca-chien-gion', 'Món chính', 450, 30, 20, 35, '1 phần', 'Cá chiên giòn, dùng kèm sốt tartar', 'https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:format(webp):quality(75)/2023_10_31_638343474864019884_ca-chien-1.jpeg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:26');
INSERT INTO `foods` VALUES (16, 'Cá kho tộ', 'ca-kho-to', 'Món chính', 500, 35, 25, 30, '1 phần', 'Cá kho tộ đậm đà, ngon cơm', 'https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:format(webp):quality(75)/2024_3_24_638468929514110709_10-mon-ca-kho-to-hap-dan.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:33');
INSERT INTO `foods` VALUES (17, 'Gà sốt cam', 'ga-sot-cam', 'Món chính', 500, 30, 20, 45, '1 phần', 'Gà sốt cam mềm ngon', 'https://cdn.tgdd.vn/2021/09/CookRecipe/GalleryStep/thanh-pham-2.png', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:40');
INSERT INTO `foods` VALUES (18, 'Thịt kho tàu', 'thit-kho-tau', 'Món chính', 520, 28, 30, 40, '1 phần', 'Thịt kho tàu đậm đà, ngon cơm', 'https://file.hstatic.net/200000700229/article/thit-kho-tau-thumb_bc66044baa614c3ba455a1fcd7b1413a.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:47');
INSERT INTO `foods` VALUES (19, 'Sườn nướng mật ong', 'suon-nuong-mat-ong', 'Món chính', 600, 32, 35, 40, '1 phần', 'Sườn nướng mật ong thơm ngon', 'https://www.cet.edu.vn/wp-content/uploads/2018/05/suon-nuong-mat-ong.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:19:55');
INSERT INTO `foods` VALUES (20, 'Bò lúc lắc', 'bo-luc-lac', 'Món chính', 480, 30, 25, 35, '1 phần', 'Bò lúc lắc ăn kèm salad', 'https://cdn.netspace.edu.vn/images/2020/04/28/cach-lam-bo-luc-lac-ngon-800.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:20:05');
INSERT INTO `foods` VALUES (21, 'Mì Ý sốt bò bằm', 'mi-y-so-bobam', 'Món chính', 450, 25, 15, 55, '1 đĩa', 'Mì Ý sốt bò bằm thơm ngon', 'https://i-giadinh.vnecdn.net/2022/04/20/Buoc-9-9-3230-1650439557.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:20:13');
INSERT INTO `foods` VALUES (22, 'Spaghetti Carbonara', 'spaghetti-carbonara', 'Món chính', 500, 20, 22, 60, '1 đĩa', 'Spaghetti sốt kem và trứng', 'https://nguyenhafood.vn/uploads/files/cong-thuc-spaghetti-carbonara-don-gian-cung-nguyen-ha-food%20%286%29.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:20:27');
INSERT INTO `foods` VALUES (23, 'Pizza Margherita', 'pizza-margherita', 'Món chính', 600, 25, 25, 70, '1 đĩa', 'Pizza phô mai và cà chua', 'https://file.hstatic.net/1000389344/file/margherita_24fb21d879184ef68c1ebb2faa9af975_grande.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:20:35');
INSERT INTO `foods` VALUES (24, 'Pizza Pepperoni', 'pizza-pepperoni', 'Món chính', 650, 28, 30, 75, '1 đĩa', 'Pizza Pepperoni cay ngon', 'https://file.hstatic.net/1000389344/article/pepperoni_5_1c9ba759196f480eba397d628ac958ed_1024x1024.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:20:42');
INSERT INTO `foods` VALUES (25, 'Lasagna', 'lasagna', 'Món chính', 550, 30, 25, 65, '1 phần', 'Lasagna nhiều lớp với thịt và phô mai', 'https://core.afg.vn/uploads/images/Lasagna-1.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:20:49');
INSERT INTO `foods` VALUES (26, 'Bánh flan', 'banh-flan', 'Tráng miệng', 250, 6, 10, 30, '1 cái', 'Bánh flan trứng mềm mịn', 'https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:format(webp):quality(75)/banh_flan_gan_day_907fe4886b.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:20:56');
INSERT INTO `foods` VALUES (27, 'Chè đậu xanh', 'che-dau-xanh', 'Tráng miệng', 300, 8, 5, 60, '1 bát', 'Chè đậu xanh thơm ngon', 'https://file.hstatic.net/200000721249/file/che_dau_xanh_31a5943d2b2a49d4b2d22e6af3c8286b.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:03');
INSERT INTO `foods` VALUES (28, 'Bánh crepe', 'banh-crepe', 'Tráng miệng', 350, 7, 15, 40, '2 cái', 'Bánh crepe ngàn lớp hấp dẫn', 'https://cdn2.fptshop.com.vn/unsafe/1920x0/filters:format(webp):quality(75)/2024_1_12_638406738030176474_cach-lam-banh-crepe-khong-nhan-va-co-nhan-thom-ngon-don-tai-nha-khong-the-cuong-lai.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:10');
INSERT INTO `foods` VALUES (29, 'Kem vani', 'kem-vani', 'Tráng miệng', 200, 4, 12, 25, '1 que', 'Kem vani mát lạnh', 'https://static-images.vnncdn.net/files/publish/cach-lam-kem-vani-cuc-ngon-tai-nha-5094e1fbf87641faa9368b95c7be9148.jpg?width=0&s=34l6Cc44IKuz0Y20M_0fNQ', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:16');
INSERT INTO `foods` VALUES (30, 'Kem socola', 'kem-socola', 'Tráng miệng', 220, 5, 13, 25, '1 que', 'Kem socola đậm vị', 'https://giadinh.mediacdn.vn/296230595582509056/2021/8/21/photo-1-16295561334801392188830.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:23');
INSERT INTO `foods` VALUES (31, 'Bánh pudding', 'banh-pudding', 'Tráng miệng', 280, 6, 14, 35, '1 cái', 'Bánh pudding mềm mịn', 'https://daylambanh.edu.vn/wp-content/uploads/2019/06/banh-pudding-la-gi.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:31');
INSERT INTO `foods` VALUES (32, 'Sinh tố bơ', 'sinhto-bo', 'Đồ uống', 180, 3, 7, 25, '1 ly', 'Sinh tố bơ mát lạnh', 'https://hasuka.com.vn/storage/uploads/v4ojgTcmGzX0bmRzgIdBHjIErtbCKL8eqZ9GKSc6.jpg', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:39');
INSERT INTO `foods` VALUES (33, 'Sinh tố dâu', 'sinhto-dau', 'Đồ uống', 170, 3, 5, 28, '1 ly', 'Sinh tố dâu tươi ngon', 'https://bizweb.dktcdn.net/thumb/1024x1024/100/516/634/products/sinh-to-dau-tay.jpg?v=1726542621640', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:48');
INSERT INTO `foods` VALUES (34, 'Trà sữa', 'tra-sua', 'Đồ uống', 250, 4, 8, 35, '1 ly', 'Trà sữa béo ngậy', 'https://94farm.vn/wp-content/uploads/2024/05/2024-05-19-23-23-14-BR8S41.png', 'published', '2026-01-04 14:49:16', '2026-01-04 15:21:55');
INSERT INTO `foods` VALUES (35, 'Nước ép cam', 'nuoc-ep-cam', 'Đồ uống', 120, 2, 0, 28, '1 ly', 'Nước ép cam tươi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkOIGYOFkLj9jhstW6wP8knoI1zSFp_jRwoQ&s', 'published', '2026-01-04 14:49:16', '2026-01-04 15:22:03');
INSERT INTO `foods` VALUES (36, 'Nước ép cà rốt', 'nuoc-ep-ca-rot', 'Đồ uống', 110, 2, 0, 26, '1 ly', 'Nước ép cà rốt giàu vitamin', 'https://bizweb.dktcdn.net/100/421/036/files/nguyen-lieu-che-bien-nuoc-ep-carot.jpg?v=1617093099366', 'published', '2026-01-04 14:49:16', '2026-01-04 15:22:10');
INSERT INTO `foods` VALUES (37, 'Matcha latte', 'matcha-latte', 'Đồ uống', 200, 4, 8, 30, '1 ly', 'Matcha latte thơm ngon', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT29JybH8TvpSviugfNF3vGSHhrwyxSyvCBYQ&s', 'published', '2026-01-04 14:49:16', '2026-01-04 15:22:18');
INSERT INTO `foods` VALUES (38, 'Mojito mocktail', 'mojito-mocktail', 'Đồ uống', 150, 1, 2, 20, '1 ly', 'Mojito không cồn mát lạnh', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh-e3L-1zJxTBE0G9QdPBr0mHvd3uJ1hmx0A&s', 'published', '2026-01-04 14:49:16', '2026-01-04 15:22:25');

-- ----------------------------
-- Table structure for ingredients
-- ----------------------------
DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE `ingredients`  (
  `ingredient_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `normalized_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`) USING BTREE,
  UNIQUE INDEX `UKj6tsl15xx76y4kv41yxr4uxab`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 185 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingredients
-- ----------------------------
INSERT INTO `ingredients` VALUES (1, 'Bánh phở tươi', 'banh pho tuoi');
INSERT INTO `ingredients` VALUES (2, 'Xương ống bò', 'xuong ong bo');
INSERT INTO `ingredients` VALUES (3, 'Thịt bò nạm', 'thit bo nam');
INSERT INTO `ingredients` VALUES (4, 'Thịt bò tái', 'thit bo tai');
INSERT INTO `ingredients` VALUES (5, 'Gừng', 'gung');
INSERT INTO `ingredients` VALUES (6, 'Hành tây', 'hanh tay');
INSERT INTO `ingredients` VALUES (7, 'Hành tím', 'hanh tim');
INSERT INTO `ingredients` VALUES (8, 'Hoa hồi', 'hoa hoi');
INSERT INTO `ingredients` VALUES (9, 'Quế', 'que');
INSERT INTO `ingredients` VALUES (10, 'Thảo quả', 'thao qua');
INSERT INTO `ingredients` VALUES (11, 'Đinh hương', 'inh huong');
INSERT INTO `ingredients` VALUES (12, 'Nước mắm', 'nuoc mam');
INSERT INTO `ingredients` VALUES (13, 'Muối', 'muoi');
INSERT INTO `ingredients` VALUES (14, 'Đường phèn', 'uong phen');
INSERT INTO `ingredients` VALUES (15, 'Hành lá', 'hanh la');
INSERT INTO `ingredients` VALUES (16, 'Rau mùi', 'rau mui');
INSERT INTO `ingredients` VALUES (17, 'Tiêu', 'tieu');
INSERT INTO `ingredients` VALUES (18, 'Bún Huế', 'bun hue');
INSERT INTO `ingredients` VALUES (19, 'Xương bò', 'xuong bo');
INSERT INTO `ingredients` VALUES (20, 'Thịt bò đùi', 'thit bo ui');
INSERT INTO `ingredients` VALUES (21, 'Sả', 'sa');
INSERT INTO `ingredients` VALUES (22, 'Ớt tươi', 'ot tuoi');
INSERT INTO `ingredients` VALUES (23, 'Mắm ruốc Huế', 'mam ruoc hue');
INSERT INTO `ingredients` VALUES (24, 'Đường', 'uong');
INSERT INTO `ingredients` VALUES (25, 'Rau húng quế', 'rau hung que');
INSERT INTO `ingredients` VALUES (26, 'Mì Quảng', 'mi quang');
INSERT INTO `ingredients` VALUES (27, 'Tôm tươi', 'tom tuoi');
INSERT INTO `ingredients` VALUES (28, 'Thịt heo ba chỉ', 'thit heo ba chi');
INSERT INTO `ingredients` VALUES (29, 'Trứng cút', 'trung cut');
INSERT INTO `ingredients` VALUES (30, 'Đậu phộng rang', 'au phong rang');
INSERT INTO `ingredients` VALUES (31, 'Rau sống các loại', 'rau song cac loai');
INSERT INTO `ingredients` VALUES (32, 'Ớt bột', 'ot bot');
INSERT INTO `ingredients` VALUES (33, 'Hủ tiếu', 'hu tieu');
INSERT INTO `ingredients` VALUES (34, 'Tôm', 'tom');
INSERT INTO `ingredients` VALUES (35, 'Thịt heo nạc', 'thit heo nac');
INSERT INTO `ingredients` VALUES (36, 'Mực', 'muc');
INSERT INTO `ingredients` VALUES (37, 'Giá đỗ', 'gia o');
INSERT INTO `ingredients` VALUES (38, 'Bánh tráng', 'banh trang');
INSERT INTO `ingredients` VALUES (39, 'Tôm luộc', 'tom luoc');
INSERT INTO `ingredients` VALUES (40, 'Thịt heo luộc', 'thit heo luoc');
INSERT INTO `ingredients` VALUES (41, 'Bún tươi', 'bun tuoi');
INSERT INTO `ingredients` VALUES (42, 'Rau xà lách', 'rau xa lach');
INSERT INTO `ingredients` VALUES (43, 'Húng quế', 'hung que');
INSERT INTO `ingredients` VALUES (44, 'Nước mắm chua ngọt', 'nuoc mam chua ngot');
INSERT INTO `ingredients` VALUES (45, 'Bánh mì baguette', 'banh mi baguette');
INSERT INTO `ingredients` VALUES (46, 'Thịt heo nạc vai', 'thit heo nac vai');
INSERT INTO `ingredients` VALUES (47, 'Dưa leo', 'dua leo');
INSERT INTO `ingredients` VALUES (48, 'Cà rốt', 'ca rot');
INSERT INTO `ingredients` VALUES (49, 'Tỏi', 'toi');
INSERT INTO `ingredients` VALUES (50, 'Bánh mì', 'banh mi');
INSERT INTO `ingredients` VALUES (51, 'Trứng gà', 'trung ga');
INSERT INTO `ingredients` VALUES (52, 'Pate', 'pate');
INSERT INTO `ingredients` VALUES (53, 'Xúc xích', 'xuc xich');
INSERT INTO `ingredients` VALUES (54, 'Thịt nướng', 'thit nuong');
INSERT INTO `ingredients` VALUES (55, 'Bơ', 'bo');
INSERT INTO `ingredients` VALUES (56, 'Bánh hamburger', 'banh hamburger');
INSERT INTO `ingredients` VALUES (57, 'Thịt bò băm', 'thit bo bam');
INSERT INTO `ingredients` VALUES (58, 'Phô mai cheddar', 'pho mai cheddar');
INSERT INTO `ingredients` VALUES (59, 'Xà lách', 'xa lach');
INSERT INTO `ingredients` VALUES (60, 'Cà chua', 'ca chua');
INSERT INTO `ingredients` VALUES (61, 'Sốt mayonnaise', 'sot mayonnaise');
INSERT INTO `ingredients` VALUES (62, 'Bánh hotdog', 'banh hotdog');
INSERT INTO `ingredients` VALUES (63, 'Sốt ketchup', 'sot ketchup');
INSERT INTO `ingredients` VALUES (64, 'Đùi gà', 'ui ga');
INSERT INTO `ingredients` VALUES (65, 'Bột mì', 'bot mi');
INSERT INTO `ingredients` VALUES (66, 'Bột chiên giòn', 'bot chien gion');
INSERT INTO `ingredients` VALUES (67, 'Tỏi băm', 'toi bam');
INSERT INTO `ingredients` VALUES (68, 'Sốt gochujang', 'sot gochujang');
INSERT INTO `ingredients` VALUES (69, 'Mật ong', 'mat ong');
INSERT INTO `ingredients` VALUES (70, 'Dầu ăn', 'dau an');
INSERT INTO `ingredients` VALUES (71, 'Cá diêu hồng', 'ca dieu hong');
INSERT INTO `ingredients` VALUES (72, 'Bột chiên xù', 'bot chien xu');
INSERT INTO `ingredients` VALUES (73, 'Chanh', 'chanh');
INSERT INTO `ingredients` VALUES (74, 'Cá thu', 'ca thu');
INSERT INTO `ingredients` VALUES (75, 'Ớt sừng', 'ot sung');
INSERT INTO `ingredients` VALUES (76, 'Khoai tây', 'khoai tay');
INSERT INTO `ingredients` VALUES (77, 'Đậu Hà Lan', 'au ha lan');
INSERT INTO `ingredients` VALUES (78, 'Trứng luộc', 'trung luoc');
INSERT INTO `ingredients` VALUES (79, 'Mayonnaise', 'mayonnaise');
INSERT INTO `ingredients` VALUES (80, 'Xà lách Romaine', 'xa lach romaine');
INSERT INTO `ingredients` VALUES (81, 'Ức gà', 'uc ga');
INSERT INTO `ingredients` VALUES (82, 'Bánh mì nướng', 'banh mi nuong');
INSERT INTO `ingredients` VALUES (83, 'Phô mai Parmesan bào', 'pho mai parmesan bao');
INSERT INTO `ingredients` VALUES (84, 'Sốt Caesar', 'sot caesar');
INSERT INTO `ingredients` VALUES (85, 'Đu đủ xanh', 'u u xanh');
INSERT INTO `ingredients` VALUES (86, 'Thịt ba chỉ', 'thit ba chi');
INSERT INTO `ingredients` VALUES (87, 'Lạc rang', 'lac rang');
INSERT INTO `ingredients` VALUES (88, 'Nước tương', 'nuoc tuong');
INSERT INTO `ingredients` VALUES (89, 'Ớt băm', 'ot bam');
INSERT INTO `ingredients` VALUES (90, 'Spaghetti', 'spaghetti');
INSERT INTO `ingredients` VALUES (91, 'Cà chua chín', 'ca chua chin');
INSERT INTO `ingredients` VALUES (92, 'Dầu ô liu', 'dau o liu');
INSERT INTO `ingredients` VALUES (93, 'Tiêu đen', 'tieu en');
INSERT INTO `ingredients` VALUES (94, 'Phi lê cá hồi', 'phi le ca hoi');
INSERT INTO `ingredients` VALUES (95, 'Cam tươi', 'cam tuoi');
INSERT INTO `ingredients` VALUES (96, 'Thịt gà (đùi hoặc ức)', 'thit ga ui hoac uc');
INSERT INTO `ingredients` VALUES (97, 'Thịt bò thăn', 'thit bo than');
INSERT INTO `ingredients` VALUES (98, 'Me chua', 'me chua');
INSERT INTO `ingredients` VALUES (99, 'Rau thơm (ngò, húng)', 'rau thom ngo hung');
INSERT INTO `ingredients` VALUES (100, 'Mì Quảng tươi', 'mi quang tuoi');
INSERT INTO `ingredients` VALUES (101, 'Thịt gà đùi', 'thit ga ui');
INSERT INTO `ingredients` VALUES (102, 'Rau sống (rau răm, húng quế)', 'rau song rau ram hung que');
INSERT INTO `ingredients` VALUES (103, 'Bánh tráng nướng', 'banh trang nuong');
INSERT INTO `ingredients` VALUES (104, 'Giò heo', 'gio heo');
INSERT INTO `ingredients` VALUES (105, 'Rau sống (rau húng, giá, hành lá)', 'rau song rau hung gia hanh la');
INSERT INTO `ingredients` VALUES (106, 'Hủ tiếu tươi', 'hu tieu tuoi');
INSERT INTO `ingredients` VALUES (107, 'Xương heo', 'xuong heo');
INSERT INTO `ingredients` VALUES (108, 'Gan heo', 'gan heo');
INSERT INTO `ingredients` VALUES (109, 'Rau sống, giá', 'rau song gia');
INSERT INTO `ingredients` VALUES (110, 'Bột gạo', 'bot gao');
INSERT INTO `ingredients` VALUES (111, 'Nước cốt dừa', 'nuoc cot dua');
INSERT INTO `ingredients` VALUES (112, 'Rau sống (xà lách, húng quế)', 'rau song xa lach hung que');
INSERT INTO `ingredients` VALUES (113, 'Cá basa', 'ca basa');
INSERT INTO `ingredients` VALUES (114, 'Rau sống (xà lách, húng quế, rau thơm)', 'rau song xa lach hung que rau thom');
INSERT INTO `ingredients` VALUES (115, 'Thịt heo thăn', 'thit heo than');
INSERT INTO `ingredients` VALUES (116, 'Hành tím băm', 'hanh tim bam');
INSERT INTO `ingredients` VALUES (117, 'Cà rốt ngâm chua', 'ca rot ngam chua');
INSERT INTO `ingredients` VALUES (118, 'Rau thơm', 'rau thom');
INSERT INTO `ingredients` VALUES (119, 'Bánh mì hotdog', 'banh mi hotdog');
INSERT INTO `ingredients` VALUES (120, 'Dưa leo thái lát', 'dua leo thai lat');
INSERT INTO `ingredients` VALUES (121, 'Cà chua thái lát', 'ca chua thai lat');
INSERT INTO `ingredients` VALUES (122, 'Hành phi', 'hanh phi');
INSERT INTO `ingredients` VALUES (123, 'Sốt cà chua', 'sot ca chua');
INSERT INTO `ingredients` VALUES (124, 'Bơ lạt', 'bo lat');
INSERT INTO `ingredients` VALUES (125, 'Trứng muối', 'trung muoi');
INSERT INTO `ingredients` VALUES (126, 'Sữa tươi không đường', 'sua tuoi khong uong');
INSERT INTO `ingredients` VALUES (127, 'Socola đen', 'socola en');
INSERT INTO `ingredients` VALUES (128, 'Sữa tươi', 'sua tuoi');
INSERT INTO `ingredients` VALUES (129, 'Bột bắp', 'bot bap');
INSERT INTO `ingredients` VALUES (130, 'Vanilla', 'vanilla');
INSERT INTO `ingredients` VALUES (131, 'Đậu xanh cà vỏ', 'au xanh ca vo');
INSERT INTO `ingredients` VALUES (132, 'Lá dứa', 'la dua');
INSERT INTO `ingredients` VALUES (133, 'Quả bơ chín', 'qua bo chin');
INSERT INTO `ingredients` VALUES (134, 'Sữa đặc có đường', 'sua ac co uong');
INSERT INTO `ingredients` VALUES (135, 'Đá viên', 'a vien');
INSERT INTO `ingredients` VALUES (136, 'Trà đen túi lọc', 'tra en tui loc');
INSERT INTO `ingredients` VALUES (137, 'Nước sôi', 'nuoc soi');
INSERT INTO `ingredients` VALUES (138, 'Trân châu đen', 'tran chau en');
INSERT INTO `ingredients` VALUES (139, 'Đường nâu', 'uong nau');
INSERT INTO `ingredients` VALUES (140, 'Cải thảo', 'cai thao');
INSERT INTO `ingredients` VALUES (141, 'Muối hạt', 'muoi hat');
INSERT INTO `ingredients` VALUES (142, 'Bột ớt Hàn Quốc', 'bot ot han quoc');
INSERT INTO `ingredients` VALUES (143, 'Gừng băm', 'gung bam');
INSERT INTO `ingredients` VALUES (144, 'Nước mắm Hàn Quốc (hoặc mắm truyền thống)', 'nuoc mam han quoc hoac mam truyen thong');
INSERT INTO `ingredients` VALUES (145, 'Gạo Nhật', 'gao nhat');
INSERT INTO `ingredients` VALUES (146, 'Nước', 'nuoc');
INSERT INTO `ingredients` VALUES (147, 'Giấm gạo', 'giam gao');
INSERT INTO `ingredients` VALUES (148, 'Rong biển (Nori)', 'rong bien nori');
INSERT INTO `ingredients` VALUES (149, 'Cá hồi tươi', 'ca hoi tuoi');
INSERT INTO `ingredients` VALUES (150, 'Thịt ba chỉ heo', 'thit ba chi heo');
INSERT INTO `ingredients` VALUES (151, 'Mì ramen tươi', 'mi ramen tuoi');
INSERT INTO `ingredients` VALUES (152, 'Trứng', 'trung');
INSERT INTO `ingredients` VALUES (153, 'Nấm shiitake', 'nam shiitake');
INSERT INTO `ingredients` VALUES (154, 'Miso', 'miso');
INSERT INTO `ingredients` VALUES (155, 'Cơm trắng', 'com trang');
INSERT INTO `ingredients` VALUES (156, 'Rau bina', 'rau bina');
INSERT INTO `ingredients` VALUES (157, 'Gochujang', 'gochujang');
INSERT INTO `ingredients` VALUES (158, 'Dầu mè', 'dau me');
INSERT INTO `ingredients` VALUES (159, 'Bột Mochiko (bột gạo nếp Nhật)', 'bot mochiko bot gao nep nhat');
INSERT INTO `ingredients` VALUES (160, 'Nhân đậu đỏ', 'nhan au o');
INSERT INTO `ingredients` VALUES (161, 'Chanh tươi', 'chanh tuoi');
INSERT INTO `ingredients` VALUES (162, 'Lá bạc hà', 'la bac ha');
INSERT INTO `ingredients` VALUES (163, 'Nước soda', 'nuoc soda');
INSERT INTO `ingredients` VALUES (164, 'Dâu tây tươi', 'dau tay tuoi');
INSERT INTO `ingredients` VALUES (165, 'Chuối chín', 'chuoi chin');
INSERT INTO `ingredients` VALUES (166, 'Sữa chua', 'sua chua');
INSERT INTO `ingredients` VALUES (167, 'Hạt cà phê rang xay', 'hat ca phe rang xay');
INSERT INTO `ingredients` VALUES (168, 'Nước nóng', 'nuoc nong');
INSERT INTO `ingredients` VALUES (169, 'Trà đen', 'tra en');
INSERT INTO `ingredients` VALUES (170, 'Gừng tươi thái lát', 'gung tuoi thai lat');
INSERT INTO `ingredients` VALUES (171, 'Hạt tiêu đen', 'hat tieu en');
INSERT INTO `ingredients` VALUES (172, 'Xoài chín', 'xoai chin');
INSERT INTO `ingredients` VALUES (173, 'Sữa dừa', 'sua dua');
INSERT INTO `ingredients` VALUES (174, 'Bột matcha Nhật Bản', 'bot matcha nhat ban');
INSERT INTO `ingredients` VALUES (175, 'Nước nóng 70°C', 'nuoc nong 70c');
INSERT INTO `ingredients` VALUES (176, 'Trà Ô Long túi lọc', 'tra o long tui loc');
INSERT INTO `ingredients` VALUES (177, 'Socola đen 70%', 'socola en 70');
INSERT INTO `ingredients` VALUES (178, 'Kem tươi', 'kem tuoi');
INSERT INTO `ingredients` VALUES (179, 'Espresso', 'espresso');
INSERT INTO `ingredients` VALUES (180, 'Siro caramel hoặc vani', 'siro caramel hoac vani');
INSERT INTO `ingredients` VALUES (181, 'Trà xanh Trung Quốc/Marocco', 'tra xanh trung quocmarocco');
INSERT INTO `ingredients` VALUES (182, 'Lá bạc hà tươi', 'la bac ha tuoi');
INSERT INTO `ingredients` VALUES (183, 'Chanh cắt lát', 'chanh cat lat');
INSERT INTO `ingredients` VALUES (184, 'Gà', 'ga');

-- ----------------------------
-- Table structure for lrs_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `lrs_auth_assignment`;
CREATE TABLE `lrs_auth_assignment`  (
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`item_name`, `user_id`) USING BTREE,
  CONSTRAINT `lrs_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `lrs_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lrs_auth_assignment
-- ----------------------------
INSERT INTO `lrs_auth_assignment` VALUES ('[KD] Nội dung', '2', 1616659558);
INSERT INTO `lrs_auth_assignment` VALUES ('[KD] Nội dung', '3', 1616659546);
INSERT INTO `lrs_auth_assignment` VALUES ('[KD] Nội dung', '5', 1628473914);
INSERT INTO `lrs_auth_assignment` VALUES ('[KD] Nội dung', '6', 1633690754);
INSERT INTO `lrs_auth_assignment` VALUES ('[KD] Nội dung', '7', 1633915451);
INSERT INTO `lrs_auth_assignment` VALUES ('AdminAccess', '1', 1494572508);
INSERT INTO `lrs_auth_assignment` VALUES ('AdminAccess', '19', 1647827281);
INSERT INTO `lrs_auth_assignment` VALUES ('Vtech admin', '22', 1655779315);
INSERT INTO `lrs_auth_assignment` VALUES ('Vtech admin', '23', 1656296661);

-- ----------------------------
-- Table structure for lrs_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `lrs_auth_item`;
CREATE TABLE `lrs_auth_item`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `rule_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` int NULL DEFAULT NULL,
  `updated_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `rule_name`(`rule_name` ASC) USING BTREE,
  INDEX `idx-auth_item-type`(`type` ASC) USING BTREE,
  CONSTRAINT `lrs_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `lrs_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lrs_auth_item
-- ----------------------------
INSERT INTO `lrs_auth_item` VALUES ('[KD] Nội dung', 1, '[KD] Nội dung', NULL, NULL, 1616659519, 1628473781);
INSERT INTO `lrs_auth_item` VALUES ('/*', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/active-button/*', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/active-button/index', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/active-button/update-on-off', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/admin/*', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/admin/assignment/*', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/assignment/assign', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/assignment/index', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/assignment/view', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/default/*', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/default/index', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/menu/*', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/menu/create', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/menu/delete', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/menu/index', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/menu/update', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/menu/view', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/*', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/assign', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/create', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/delete', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/get-users', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/index', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/remove', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/update', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/permission/view', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/*', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/assign', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/create', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/delete', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/get-users', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/index', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/remove', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/update', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/role/view', 2, NULL, NULL, NULL, 1494572415, 1494572415);
INSERT INTO `lrs_auth_item` VALUES ('/admin/route/*', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/route/assign', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/route/create', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/route/index', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/route/refresh', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/route/remove', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/rule/*', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/rule/create', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/rule/delete', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/rule/index', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/rule/update', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/rule/view', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/*', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/activate', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/change-password', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/delete', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/index', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/login', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/logout', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/reset-password', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/signup', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/update', 2, NULL, NULL, NULL, 1494578618, 1494578618);
INSERT INTO `lrs_auth_item` VALUES ('/admin/user/view', 2, NULL, NULL, NULL, 1494572416, 1494572416);
INSERT INTO `lrs_auth_item` VALUES ('/animal/*', 2, NULL, NULL, NULL, 1640849088, 1640849088);
INSERT INTO `lrs_auth_item` VALUES ('/animal/create', 2, NULL, NULL, NULL, 1640849088, 1640849088);
INSERT INTO `lrs_auth_item` VALUES ('/animal/delete', 2, NULL, NULL, NULL, 1640849088, 1640849088);
INSERT INTO `lrs_auth_item` VALUES ('/animal/index', 2, NULL, NULL, NULL, 1640848908, 1640848908);
INSERT INTO `lrs_auth_item` VALUES ('/animal/update', 2, NULL, NULL, NULL, 1640849088, 1640849088);
INSERT INTO `lrs_auth_item` VALUES ('/animal/view', 2, NULL, NULL, NULL, 1640849087, 1640849087);
INSERT INTO `lrs_auth_item` VALUES ('/animation-popup/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/animation-popup/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/animation-popup/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/animation-popup/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/animation-popup/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/animation-popup/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/bird-config/*', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/bird-config/create', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/bird-config/delete', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/bird-config/index', 2, NULL, NULL, NULL, 1645002959, 1645002959);
INSERT INTO `lrs_auth_item` VALUES ('/bird-config/update', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/bird-config/view', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/box-gift-config/*', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/box-gift-config/create', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/box-gift-config/delete', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/box-gift-config/index', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/box-gift-config/update', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/box-gift-config/view', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/category-pages/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/category-pages/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/category-pages/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/category-pages/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/category-pages/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/category-pages/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/common/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/common/config-pet', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/common/index', 2, NULL, NULL, NULL, 1633690524, 1633690524);
INSERT INTO `lrs_auth_item` VALUES ('/common/update-common', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/common/update-pet', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/config-banner/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-banner/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-banner/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-banner/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-banner/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-banner/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-content-pages/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-content-pages/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-content-pages/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-content-pages/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-content-pages/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/config-content-pages/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/configuration/*', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/configuration/create', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/configuration/delete', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/configuration/index', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/configuration/update', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/configuration/view', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/contact/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/contact/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/contact/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/contact/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/contact/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/contact/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/custom-error-message/*', 2, NULL, NULL, NULL, 1640849024, 1640849024);
INSERT INTO `lrs_auth_item` VALUES ('/custom-error-message/create', 2, NULL, NULL, NULL, 1640849129, 1640849129);
INSERT INTO `lrs_auth_item` VALUES ('/custom-error-message/delete', 2, NULL, NULL, NULL, 1640849129, 1640849129);
INSERT INTO `lrs_auth_item` VALUES ('/custom-error-message/index', 2, NULL, NULL, NULL, 1640849007, 1640849007);
INSERT INTO `lrs_auth_item` VALUES ('/custom-error-message/update', 2, NULL, NULL, NULL, 1640849129, 1640849129);
INSERT INTO `lrs_auth_item` VALUES ('/custom-error-message/view', 2, NULL, NULL, NULL, 1640849129, 1640849129);
INSERT INTO `lrs_auth_item` VALUES ('/custom-success-message/*', 2, NULL, NULL, NULL, 1640849157, 1640849157);
INSERT INTO `lrs_auth_item` VALUES ('/custom-success-message/create', 2, NULL, NULL, NULL, 1640849156, 1640849156);
INSERT INTO `lrs_auth_item` VALUES ('/custom-success-message/delete', 2, NULL, NULL, NULL, 1640849157, 1640849157);
INSERT INTO `lrs_auth_item` VALUES ('/custom-success-message/index', 2, NULL, NULL, NULL, 1640849156, 1640849156);
INSERT INTO `lrs_auth_item` VALUES ('/custom-success-message/update', 2, NULL, NULL, NULL, 1640849156, 1640849156);
INSERT INTO `lrs_auth_item` VALUES ('/custom-success-message/view', 2, NULL, NULL, NULL, 1640849156, 1640849156);
INSERT INTO `lrs_auth_item` VALUES ('/customer/*', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/customer/create', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/customer/delete', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/customer/index', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/customer/update', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/customer/view', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/daily-checkin-log/*', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/daily-checkin-log/create', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/daily-checkin-log/delete', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/daily-checkin-log/index', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/daily-checkin-log/update', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/daily-checkin-log/view', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/daily-report-users-level/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/daily-report-users-level/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/daily-report-users-level/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/daily-report-users-level/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/daily-report-users-level/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/daily-report-users-level/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/db-permission/*', 2, NULL, NULL, NULL, 1615371342, 1615371342);
INSERT INTO `lrs_auth_item` VALUES ('/db-permission/create', 2, NULL, NULL, NULL, 1615371342, 1615371342);
INSERT INTO `lrs_auth_item` VALUES ('/db-permission/delete', 2, NULL, NULL, NULL, 1615371342, 1615371342);
INSERT INTO `lrs_auth_item` VALUES ('/db-permission/index', 2, NULL, NULL, NULL, 1615371342, 1615371342);
INSERT INTO `lrs_auth_item` VALUES ('/db-permission/update', 2, NULL, NULL, NULL, 1615371342, 1615371342);
INSERT INTO `lrs_auth_item` VALUES ('/db-permission/view', 2, NULL, NULL, NULL, 1615371342, 1615371342);
INSERT INTO `lrs_auth_item` VALUES ('/debug/*', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/debug/default/*', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/debug/default/db-explain', 2, NULL, NULL, NULL, 1494572413, 1494572413);
INSERT INTO `lrs_auth_item` VALUES ('/debug/default/download-mail', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/debug/default/index', 2, NULL, NULL, NULL, 1494572413, 1494572413);
INSERT INTO `lrs_auth_item` VALUES ('/debug/default/toolbar', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/debug/default/view', 2, NULL, NULL, NULL, 1494572413, 1494572413);
INSERT INTO `lrs_auth_item` VALUES ('/event-gift/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-gift/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-gift/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-gift/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-gift/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-gift/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission-reward/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission-reward/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission-reward/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission-reward/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission-reward/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission-reward/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-mission/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-reward-exchange/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-reward-exchange/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-reward-exchange/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-reward-exchange/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-reward-exchange/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-reward-exchange/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-sale-item/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-sale-item/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-sale-item/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-sale-item/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-sale-item/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-sale-item/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rank/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rank/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rank/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rank/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rank/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rank/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rule/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rule/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rule/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rule/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rule/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-rule/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-week/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-week/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-week/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-week/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-week/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed-week/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/event-seed/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/factory/*', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/factory/create', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/factory/delete', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/factory/index', 2, NULL, NULL, NULL, 1645002942, 1645002942);
INSERT INTO `lrs_auth_item` VALUES ('/factory/update', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/factory/view', 2, NULL, NULL, NULL, 1645167255, 1645167255);
INSERT INTO `lrs_auth_item` VALUES ('/farm-ccu/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/farm-ccu/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/farm-ccu/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/farm-ccu/index', 2, NULL, NULL, NULL, 1648108557, 1648108557);
INSERT INTO `lrs_auth_item` VALUES ('/farm-ccu/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/farm-ccu/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/farm-package/*', 2, NULL, NULL, NULL, 1699953677, 1699953677);
INSERT INTO `lrs_auth_item` VALUES ('/farm-package/create', 2, NULL, NULL, NULL, 1699953677, 1699953677);
INSERT INTO `lrs_auth_item` VALUES ('/farm-package/delete', 2, NULL, NULL, NULL, 1699953677, 1699953677);
INSERT INTO `lrs_auth_item` VALUES ('/farm-package/index', 2, NULL, NULL, NULL, 1699953677, 1699953677);
INSERT INTO `lrs_auth_item` VALUES ('/farm-package/update', 2, NULL, NULL, NULL, 1699953677, 1699953677);
INSERT INTO `lrs_auth_item` VALUES ('/farm-package/view', 2, NULL, NULL, NULL, 1699953677, 1699953677);
INSERT INTO `lrs_auth_item` VALUES ('/food-stuffs/*', 2, NULL, NULL, NULL, 1647573100, 1647573100);
INSERT INTO `lrs_auth_item` VALUES ('/food-stuffs/create', 2, NULL, NULL, NULL, 1647573100, 1647573100);
INSERT INTO `lrs_auth_item` VALUES ('/food-stuffs/delete', 2, NULL, NULL, NULL, 1647573100, 1647573100);
INSERT INTO `lrs_auth_item` VALUES ('/food-stuffs/index', 2, NULL, NULL, NULL, 1647573100, 1647573100);
INSERT INTO `lrs_auth_item` VALUES ('/food-stuffs/update', 2, NULL, NULL, NULL, 1647573100, 1647573100);
INSERT INTO `lrs_auth_item` VALUES ('/game-configs/*', 2, NULL, NULL, NULL, 1640851653, 1640851653);
INSERT INTO `lrs_auth_item` VALUES ('/game-configs/create', 2, NULL, NULL, NULL, 1640851653, 1640851653);
INSERT INTO `lrs_auth_item` VALUES ('/game-configs/delete', 2, NULL, NULL, NULL, 1640851653, 1640851653);
INSERT INTO `lrs_auth_item` VALUES ('/game-configs/index', 2, NULL, NULL, NULL, 1640851653, 1640851653);
INSERT INTO `lrs_auth_item` VALUES ('/game-configs/update', 2, NULL, NULL, NULL, 1640851653, 1640851653);
INSERT INTO `lrs_auth_item` VALUES ('/game-configs/view', 2, NULL, NULL, NULL, 1640851653, 1640851653);
INSERT INTO `lrs_auth_item` VALUES ('/game-land-config/*', 2, NULL, NULL, NULL, 1655887765, 1655887765);
INSERT INTO `lrs_auth_item` VALUES ('/game-land-config/create', 2, NULL, NULL, NULL, 1655887765, 1655887765);
INSERT INTO `lrs_auth_item` VALUES ('/game-land-config/delete', 2, NULL, NULL, NULL, 1655887765, 1655887765);
INSERT INTO `lrs_auth_item` VALUES ('/game-land-config/index', 2, NULL, NULL, NULL, 1655887765, 1655887765);
INSERT INTO `lrs_auth_item` VALUES ('/game-land-config/update', 2, NULL, NULL, NULL, 1655887765, 1655887765);
INSERT INTO `lrs_auth_item` VALUES ('/game-land-config/view', 2, NULL, NULL, NULL, 1655887765, 1655887765);
INSERT INTO `lrs_auth_item` VALUES ('/game-level-config/*', 2, NULL, NULL, NULL, 1640849106, 1640849106);
INSERT INTO `lrs_auth_item` VALUES ('/game-level-config/create', 2, NULL, NULL, NULL, 1640849106, 1640849106);
INSERT INTO `lrs_auth_item` VALUES ('/game-level-config/delete', 2, NULL, NULL, NULL, 1640849106, 1640849106);
INSERT INTO `lrs_auth_item` VALUES ('/game-level-config/index', 2, NULL, NULL, NULL, 1640848975, 1640848975);
INSERT INTO `lrs_auth_item` VALUES ('/game-level-config/update', 2, NULL, NULL, NULL, 1640849106, 1640849106);
INSERT INTO `lrs_auth_item` VALUES ('/game-level-config/view', 2, NULL, NULL, NULL, 1640849106, 1640849106);
INSERT INTO `lrs_auth_item` VALUES ('/gift-code/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/gift-code/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/gift-code/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/gift-code/index', 2, NULL, NULL, NULL, 1646129824, 1646129824);
INSERT INTO `lrs_auth_item` VALUES ('/gift-code/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/gift-code/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/gii/*', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/gii/default/*', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/gii/default/action', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/gii/default/diff', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/gii/default/index', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/gii/default/preview', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/gii/default/view', 2, NULL, NULL, NULL, 1494572414, 1494572414);
INSERT INTO `lrs_auth_item` VALUES ('/gridview/*', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/gridview/export/*', 2, NULL, NULL, NULL, 1688352902, 1688352902);
INSERT INTO `lrs_auth_item` VALUES ('/gridview/export/download', 2, NULL, NULL, NULL, 1688352902, 1688352902);
INSERT INTO `lrs_auth_item` VALUES ('/gridview/grid-edited-row/*', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/gridview/grid-edited-row/back', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/icon-content/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/icon-content/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/icon-content/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/icon-content/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/icon-content/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/icon-content/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/information-user/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/information-user/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/information-user/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/introduction/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/introduction/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/introduction/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/introduction/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/introduction/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/introduction/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/land-quest-orders/*', 2, NULL, NULL, NULL, 1657773170, 1657773170);
INSERT INTO `lrs_auth_item` VALUES ('/land-quest-orders/create', 2, NULL, NULL, NULL, 1657773170, 1657773170);
INSERT INTO `lrs_auth_item` VALUES ('/land-quest-orders/delete', 2, NULL, NULL, NULL, 1657773170, 1657773170);
INSERT INTO `lrs_auth_item` VALUES ('/land-quest-orders/index', 2, NULL, NULL, NULL, 1657773170, 1657773170);
INSERT INTO `lrs_auth_item` VALUES ('/land-quest-orders/update', 2, NULL, NULL, NULL, 1657773170, 1657773170);
INSERT INTO `lrs_auth_item` VALUES ('/land-quest-orders/view', 2, NULL, NULL, NULL, 1657773170, 1657773170);
INSERT INTO `lrs_auth_item` VALUES ('/landing/*', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/landing/create', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/landing/delete', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/landing/index', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/landing/update', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/landing/view', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/language/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/language/change-value', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/language/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/language/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/language/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/language/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/language/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/leaderboard/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/leaderboard/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-animal/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-animal/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-animal/update-animal', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-exp/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-exp/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-exp/update-exp', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-gift/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-gift/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-gift/update-gift', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-land/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-land/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-land/update-land', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-msg/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-msg/error', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-msg/mess-error', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-msg/mess-success', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-msg/success', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-plant/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-plant/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-plant/update-plant', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-user/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-user/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/list-user/update-user', 2, NULL, NULL, NULL, 1640849044, 1640849044);
INSERT INTO `lrs_auth_item` VALUES ('/log-box-gift/*', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/log-box-gift/create', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/log-box-gift/delete', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/log-box-gift/index', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/log-box-gift/update', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/log-box-gift/view', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/log-buy-sale/*', 2, NULL, NULL, NULL, 1654508502, 1654508502);
INSERT INTO `lrs_auth_item` VALUES ('/log-buy-sale/create', 2, NULL, NULL, NULL, 1654508502, 1654508502);
INSERT INTO `lrs_auth_item` VALUES ('/log-buy-sale/delete', 2, NULL, NULL, NULL, 1654508502, 1654508502);
INSERT INTO `lrs_auth_item` VALUES ('/log-buy-sale/index', 2, NULL, NULL, NULL, 1654508502, 1654508502);
INSERT INTO `lrs_auth_item` VALUES ('/log-buy-sale/update', 2, NULL, NULL, NULL, 1654508502, 1654508502);
INSERT INTO `lrs_auth_item` VALUES ('/log-buy-sale/view', 2, NULL, NULL, NULL, 1654508502, 1654508502);
INSERT INTO `lrs_auth_item` VALUES ('/log-loyaty/*', 2, NULL, NULL, NULL, 1712284016, 1712284016);
INSERT INTO `lrs_auth_item` VALUES ('/log-loyaty/create', 2, NULL, NULL, NULL, 1712284016, 1712284016);
INSERT INTO `lrs_auth_item` VALUES ('/log-loyaty/delete', 2, NULL, NULL, NULL, 1712284016, 1712284016);
INSERT INTO `lrs_auth_item` VALUES ('/log-loyaty/export-log-loyaty', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/log-loyaty/index', 2, NULL, NULL, NULL, 1712284016, 1712284016);
INSERT INTO `lrs_auth_item` VALUES ('/log-loyaty/update', 2, NULL, NULL, NULL, 1712284016, 1712284016);
INSERT INTO `lrs_auth_item` VALUES ('/log-loyaty/view', 2, NULL, NULL, NULL, 1712284016, 1712284016);
INSERT INTO `lrs_auth_item` VALUES ('/log-popup-login/*', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/log-popup-login/create', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/log-popup-login/delete', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/log-popup-login/index', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/log-popup-login/update', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/log-popup-login/view', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/log-recharge/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/log-recharge/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/log-recharge/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/log-recharge/index', 2, NULL, NULL, NULL, 1646897183, 1646897183);
INSERT INTO `lrs_auth_item` VALUES ('/log-recharge/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/log-recharge/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/log-result-api-landing/*', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/log-result-api-landing/create', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/log-result-api-landing/delete', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/log-result-api-landing/index', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/log-result-api-landing/update', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/log-result-api-landing/view', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/log-tutorial/*', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/log-tutorial/create', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/log-tutorial/delete', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/log-tutorial/index', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/log-tutorial/update', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/log-tutorial/view', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/login-configs/*', 2, NULL, NULL, NULL, 1640851632, 1640851632);
INSERT INTO `lrs_auth_item` VALUES ('/login-configs/create', 2, NULL, NULL, NULL, 1640851632, 1640851632);
INSERT INTO `lrs_auth_item` VALUES ('/login-configs/delete', 2, NULL, NULL, NULL, 1640851632, 1640851632);
INSERT INTO `lrs_auth_item` VALUES ('/login-configs/index', 2, NULL, NULL, NULL, 1640851632, 1640851632);
INSERT INTO `lrs_auth_item` VALUES ('/login-configs/update', 2, NULL, NULL, NULL, 1640851632, 1640851632);
INSERT INTO `lrs_auth_item` VALUES ('/login-configs/view', 2, NULL, NULL, NULL, 1640851632, 1640851632);
INSERT INTO `lrs_auth_item` VALUES ('/notify-game/*', 2, NULL, NULL, NULL, 1650505820, 1650505820);
INSERT INTO `lrs_auth_item` VALUES ('/notify-game/create', 2, NULL, NULL, NULL, 1650505820, 1650505820);
INSERT INTO `lrs_auth_item` VALUES ('/notify-game/delete', 2, NULL, NULL, NULL, 1650505820, 1650505820);
INSERT INTO `lrs_auth_item` VALUES ('/notify-game/index', 2, NULL, NULL, NULL, 1650358236, 1650358236);
INSERT INTO `lrs_auth_item` VALUES ('/notify-game/update', 2, NULL, NULL, NULL, 1650505820, 1650505820);
INSERT INTO `lrs_auth_item` VALUES ('/notify-game/view', 2, NULL, NULL, NULL, 1650505820, 1650505820);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-configs/*', 2, NULL, NULL, NULL, 1640851683, 1640851683);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-configs/create', 2, NULL, NULL, NULL, 1640851683, 1640851683);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-configs/delete', 2, NULL, NULL, NULL, 1640851683, 1640851683);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-configs/index', 2, NULL, NULL, NULL, 1640851683, 1640851683);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-configs/update', 2, NULL, NULL, NULL, 1640851683, 1640851683);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-configs/view', 2, NULL, NULL, NULL, 1640851683, 1640851683);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-landing/*', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-landing/create', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-landing/delete', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-landing/index', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-landing/update', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/on-off-landing/view', 2, NULL, NULL, NULL, 1711589842, 1711589842);
INSERT INTO `lrs_auth_item` VALUES ('/package/*', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/package/create', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/package/delete', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/package/index', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/package/update', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/package/view', 2, NULL, NULL, NULL, 1628501904, 1628501904);
INSERT INTO `lrs_auth_item` VALUES ('/pages-category/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages-category/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages-category/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages-category/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages-category/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages-category/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/pages/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/partner/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/partner/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/partner/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/partner/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/partner/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/partner/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/plant/*', 2, NULL, NULL, NULL, 1640849066, 1640849066);
INSERT INTO `lrs_auth_item` VALUES ('/plant/create', 2, NULL, NULL, NULL, 1640849066, 1640849066);
INSERT INTO `lrs_auth_item` VALUES ('/plant/delete', 2, NULL, NULL, NULL, 1640849066, 1640849066);
INSERT INTO `lrs_auth_item` VALUES ('/plant/index', 2, NULL, NULL, NULL, 1640848882, 1640848882);
INSERT INTO `lrs_auth_item` VALUES ('/plant/update', 2, NULL, NULL, NULL, 1640849066, 1640849066);
INSERT INTO `lrs_auth_item` VALUES ('/plant/view', 2, NULL, NULL, NULL, 1640849065, 1640849065);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game-new/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game-new/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game-new/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game-new/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game-new/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game-new/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game/*', 2, NULL, NULL, NULL, 1658893531, 1658893531);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game/create', 2, NULL, NULL, NULL, 1658893531, 1658893531);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game/delete', 2, NULL, NULL, NULL, 1658893531, 1658893531);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game/index', 2, NULL, NULL, NULL, 1658893531, 1658893531);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game/update', 2, NULL, NULL, NULL, 1658893531, 1658893531);
INSERT INTO `lrs_auth_item` VALUES ('/popup-game/view', 2, NULL, NULL, NULL, 1658893531, 1658893531);
INSERT INTO `lrs_auth_item` VALUES ('/profile/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/profile/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/profile/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/profile/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/profile/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/profile/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders-items/*', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders-items/create', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders-items/delete', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders-items/index', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders-items/update', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders-items/view', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders/*', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders/create', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders/delete', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders/index', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders/update', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/quest-orders/view', 2, NULL, NULL, NULL, 1657774241, 1657774241);
INSERT INTO `lrs_auth_item` VALUES ('/rank-month/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-month/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-month/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-month/index', 2, NULL, NULL, NULL, 1650358253, 1650358253);
INSERT INTO `lrs_auth_item` VALUES ('/rank-month/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-month/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-week/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-week/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-week/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-week/index', 2, NULL, NULL, NULL, 1650358269, 1650358269);
INSERT INTO `lrs_auth_item` VALUES ('/rank-week/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/rank-week/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment-application/*', 2, NULL, NULL, NULL, 1610511015, 1610511015);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment-application/create', 2, NULL, NULL, NULL, 1610511015, 1610511015);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment-application/delete', 2, NULL, NULL, NULL, 1610511015, 1610511015);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment-application/index', 2, NULL, NULL, NULL, 1610511015, 1610511015);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment-application/update', 2, NULL, NULL, NULL, 1610511015, 1610511015);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment-application/view', 2, NULL, NULL, NULL, 1610511015, 1610511015);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/recruitment/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-other/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-other/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-other/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-other/index', 2, NULL, NULL, NULL, 1646810063, 1646810063);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-other/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-other/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-vas/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-vas/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-vas/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-vas/index', 2, NULL, NULL, NULL, 1646810047, 1646810047);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-vas/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-business-vas/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-buy-packs-event-hlw/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-buy-packs-event-hlw/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-buy-packs-event-hlw/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-buy-packs-event-hlw/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-buy-packs-event-hlw/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-buy-packs-event-hlw/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-cancel-rate/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-cancel-rate/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-cancel-rate/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-cancel-rate/index', 2, NULL, NULL, NULL, 1663571474, 1663571474);
INSERT INTO `lrs_auth_item` VALUES ('/report-cancel-rate/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-cancel-rate/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-complete-mission/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-complete-mission/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-complete-mission/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-complete-mission/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-complete-mission/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-complete-mission/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-event/*', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/report-event/check', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/report-event/create', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/report-event/delete', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/report-event/index', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/report-event/update', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/report-event/view', 2, NULL, NULL, NULL, 1685520401, 1685520401);
INSERT INTO `lrs_auth_item` VALUES ('/report-gift-code-daily/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-gift-code-daily/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-gift-code-daily/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-gift-code-daily/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-gift-code-daily/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-gift-code-daily/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-interaction-users/*', 2, NULL, NULL, NULL, 1694655575, 1694655575);
INSERT INTO `lrs_auth_item` VALUES ('/report-interaction-users/create', 2, NULL, NULL, NULL, 1694655575, 1694655575);
INSERT INTO `lrs_auth_item` VALUES ('/report-interaction-users/delete', 2, NULL, NULL, NULL, 1694655575, 1694655575);
INSERT INTO `lrs_auth_item` VALUES ('/report-interaction-users/index', 2, NULL, NULL, NULL, 1694655575, 1694655575);
INSERT INTO `lrs_auth_item` VALUES ('/report-interaction-users/update', 2, NULL, NULL, NULL, 1694655575, 1694655575);
INSERT INTO `lrs_auth_item` VALUES ('/report-interaction-users/view', 2, NULL, NULL, NULL, 1694655575, 1694655575);
INSERT INTO `lrs_auth_item` VALUES ('/report-items-moving/*', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-items-moving/create', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-items-moving/delete', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-items-moving/index', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-items-moving/update', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-items-moving/view', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-land-order/*', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/report-land-order/dashboard', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/report-land-order/land-quest-order', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/report-land-order/land-quest-order-chart', 2, NULL, NULL, NULL, 1718680007, 1718680007);
INSERT INTO `lrs_auth_item` VALUES ('/report-log-tutorial/*', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/report-log-tutorial/create', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/report-log-tutorial/delete', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/report-log-tutorial/index', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/report-log-tutorial/update', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/report-log-tutorial/view', 2, NULL, NULL, NULL, 1722486766, 1722486766);
INSERT INTO `lrs_auth_item` VALUES ('/report-new-users/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-new-users/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-new-users/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-new-users/index', 2, NULL, NULL, NULL, 1663571474, 1663571474);
INSERT INTO `lrs_auth_item` VALUES ('/report-new-users/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-new-users/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate-dau/*', 2, NULL, NULL, NULL, 1718696647, 1718696647);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate-dau/create', 2, NULL, NULL, NULL, 1718696647, 1718696647);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate-dau/delete', 2, NULL, NULL, NULL, 1718696647, 1718696647);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate-dau/index', 2, NULL, NULL, NULL, 1718696647, 1718696647);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate-dau/update', 2, NULL, NULL, NULL, 1718696647, 1718696647);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate-dau/view', 2, NULL, NULL, NULL, 1718696647, 1718696647);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate/*', 2, NULL, NULL, NULL, 1661937560, 1661937560);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate/create', 2, NULL, NULL, NULL, 1661937560, 1661937560);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate/delete', 2, NULL, NULL, NULL, 1661937560, 1661937560);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate/index', 2, NULL, NULL, NULL, 1661937560, 1661937560);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate/update', 2, NULL, NULL, NULL, 1661937560, 1661937560);
INSERT INTO `lrs_auth_item` VALUES ('/report-retension-rate/view', 2, NULL, NULL, NULL, 1661937560, 1661937560);
INSERT INTO `lrs_auth_item` VALUES ('/report-unlock-map/*', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-unlock-map/create', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-unlock-map/delete', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-unlock-map/index', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-unlock-map/update', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-unlock-map/view', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-diamond-ingame/*', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-diamond-ingame/create', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-diamond-ingame/delete', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-diamond-ingame/index', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-diamond-ingame/update', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-diamond-ingame/view', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-join-event/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-join-event/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-join-event/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-join-event/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-join-event/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-join-event/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-manipulation/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-manipulation/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-money-ingame/*', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-money-ingame/chart-money', 2, NULL, NULL, NULL, 1719305825, 1719305825);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-money-ingame/create', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-money-ingame/delete', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-money-ingame/index', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-money-ingame/update', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-money-ingame/view', 2, NULL, NULL, NULL, 1718700693, 1718700693);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-session/*', 2, NULL, NULL, NULL, 1718703017, 1718703017);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-session/create', 2, NULL, NULL, NULL, 1718703017, 1718703017);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-session/delete', 2, NULL, NULL, NULL, 1718703017, 1718703017);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-session/index', 2, NULL, NULL, NULL, 1718703017, 1718703017);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-session/update', 2, NULL, NULL, NULL, 1718703017, 1718703017);
INSERT INTO `lrs_auth_item` VALUES ('/report-user-session/view', 2, NULL, NULL, NULL, 1718703017, 1718703017);
INSERT INTO `lrs_auth_item` VALUES ('/report-users-map/*', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-users-map/create', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-users-map/delete', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-users-map/index', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-users-map/update', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/report-users-map/view', 2, NULL, NULL, NULL, 1696583578, 1696583578);
INSERT INTO `lrs_auth_item` VALUES ('/reward-customer/*', 2, NULL, NULL, NULL, 1714010198, 1714010198);
INSERT INTO `lrs_auth_item` VALUES ('/reward-customer/index', 2, NULL, NULL, NULL, 1714010198, 1714010198);
INSERT INTO `lrs_auth_item` VALUES ('/rule/*', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/rule/create', 2, NULL, NULL, NULL, 1640851702, 1640851702);
INSERT INTO `lrs_auth_item` VALUES ('/rule/delete', 2, NULL, NULL, NULL, 1640851702, 1640851702);
INSERT INTO `lrs_auth_item` VALUES ('/rule/index', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/rule/update', 2, NULL, NULL, NULL, 1640851702, 1640851702);
INSERT INTO `lrs_auth_item` VALUES ('/rule/update-rule', 2, NULL, NULL, NULL, 1633690525, 1633690525);
INSERT INTO `lrs_auth_item` VALUES ('/rule/view', 2, NULL, NULL, NULL, 1640851702, 1640851702);
INSERT INTO `lrs_auth_item` VALUES ('/season-config/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/season-config/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/season-config/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/season-config/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/season-config/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/season-config/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/site/*', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/site/captcha', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/site/change-langue', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/site/ckeditor-image-upload', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/site/error', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/site/index', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/site/login', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/site/logout', 2, NULL, NULL, NULL, 1494572417, 1494572417);
INSERT INTO `lrs_auth_item` VALUES ('/site/url', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/slot5-histories/*', 2, NULL, NULL, NULL, 1693901840, 1693901840);
INSERT INTO `lrs_auth_item` VALUES ('/slot5-histories/create', 2, NULL, NULL, NULL, 1693901840, 1693901840);
INSERT INTO `lrs_auth_item` VALUES ('/slot5-histories/delete', 2, NULL, NULL, NULL, 1693901840, 1693901840);
INSERT INTO `lrs_auth_item` VALUES ('/slot5-histories/index', 2, NULL, NULL, NULL, 1693901840, 1693901840);
INSERT INTO `lrs_auth_item` VALUES ('/slot5-histories/update', 2, NULL, NULL, NULL, 1693901840, 1693901840);
INSERT INTO `lrs_auth_item` VALUES ('/slot5-histories/view', 2, NULL, NULL, NULL, 1693901840, 1693901840);
INSERT INTO `lrs_auth_item` VALUES ('/spin-config/*', 2, NULL, NULL, NULL, 1646899678, 1646899678);
INSERT INTO `lrs_auth_item` VALUES ('/spin-config/create', 2, NULL, NULL, NULL, 1646899678, 1646899678);
INSERT INTO `lrs_auth_item` VALUES ('/spin-config/delete', 2, NULL, NULL, NULL, 1646899678, 1646899678);
INSERT INTO `lrs_auth_item` VALUES ('/spin-config/index', 2, NULL, NULL, NULL, 1646897203, 1646897203);
INSERT INTO `lrs_auth_item` VALUES ('/spin-config/update', 2, NULL, NULL, NULL, 1646899678, 1646899678);
INSERT INTO `lrs_auth_item` VALUES ('/spin-config/view', 2, NULL, NULL, NULL, 1646899678, 1646899678);
INSERT INTO `lrs_auth_item` VALUES ('/super-whale/*', 2, NULL, NULL, NULL, 1650358374, 1650358374);
INSERT INTO `lrs_auth_item` VALUES ('/super-whale/create', 2, NULL, NULL, NULL, 1650358374, 1650358374);
INSERT INTO `lrs_auth_item` VALUES ('/super-whale/delete', 2, NULL, NULL, NULL, 1650358374, 1650358374);
INSERT INTO `lrs_auth_item` VALUES ('/super-whale/index', 2, NULL, NULL, NULL, 1650358282, 1650358282);
INSERT INTO `lrs_auth_item` VALUES ('/super-whale/update', 2, NULL, NULL, NULL, 1650358374, 1650358374);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-config/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-config/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-config/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-config/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-config/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-config/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-event/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-event/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-event/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-event/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-event/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-event/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-item/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-item/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-item/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-item/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-item/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-item/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-reward-log/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-reward-log/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-reward-log/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-reward-log/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-reward-log/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-reward-log/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-step/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-step/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-step/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-step/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-step/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest-step/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-quest/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-rain/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-rain/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-rain/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-rain/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-rain/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-rain/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step-reward/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step-reward/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step-reward/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step-reward/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step-reward/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step-reward/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-server-plant-step/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-config/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-config/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-config/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-config/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-config/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-config/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-reward-log/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-reward-log/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-reward-log/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-reward-log/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-reward-log/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree-grow-reward-log/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-tree/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step-reward-log/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step-reward-log/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step-reward-log/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step-reward-log/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step-reward-log/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step-reward-log/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-user-plant-step/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-water-help-log/*', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-water-help-log/create', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-water-help-log/delete', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-water-help-log/index', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-water-help-log/update', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/thingyan-water-help-log/view', 2, NULL, NULL, NULL, 1685350896, 1685350896);
INSERT INTO `lrs_auth_item` VALUES ('/topup/*', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/topup/create', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/topup/delete', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/topup/index', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/topup/update', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/topup/view', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user-category/*', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user-category/create', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user-category/delete', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user-category/index', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user-category/update', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user-category/view', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-mission/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-mission/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-mission/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-mission/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-mission/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-mission/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-sale/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-sale/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-sale/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-sale/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-sale/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-event-sale/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-list/*', 2, NULL, NULL, NULL, 1640849044, 1640849044);
INSERT INTO `lrs_auth_item` VALUES ('/user-list/create', 2, NULL, NULL, NULL, 1640849044, 1640849044);
INSERT INTO `lrs_auth_item` VALUES ('/user-list/delete', 2, NULL, NULL, NULL, 1640849044, 1640849044);
INSERT INTO `lrs_auth_item` VALUES ('/user-list/index', 2, NULL, NULL, NULL, 1640848853, 1640848853);
INSERT INTO `lrs_auth_item` VALUES ('/user-list/update', 2, NULL, NULL, NULL, 1640849044, 1640849044);
INSERT INTO `lrs_auth_item` VALUES ('/user-list/view', 2, NULL, NULL, NULL, 1640849044, 1640849044);
INSERT INTO `lrs_auth_item` VALUES ('/user-player-modify/*', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/user-player-modify/create', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/user-player-modify/delete', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/user-player-modify/index', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/user-player-modify/update', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/user-player-modify/view', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/*', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/add-gold-diamond', 2, NULL, NULL, NULL, 1691483971, 1691483971);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/create', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/create-test', 2, NULL, NULL, NULL, 1709627793, 1709627793);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/delete', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/index', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/plus-coin', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/public-money', 2, NULL, NULL, NULL, 1651659932, 1651659932);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/reset-user', 2, NULL, NULL, NULL, 1714792479, 1714792479);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/suport-item', 2, NULL, NULL, NULL, 1691483971, 1691483971);
INSERT INTO `lrs_auth_item` VALUES ('/user-player/update', 2, NULL, NULL, NULL, 1645759368, 1645759368);
INSERT INTO `lrs_auth_item` VALUES ('/user-sub-stats/*', 2, NULL, NULL, NULL, 1675905621, 1675905621);
INSERT INTO `lrs_auth_item` VALUES ('/user-sub-stats/create', 2, NULL, NULL, NULL, 1675905621, 1675905621);
INSERT INTO `lrs_auth_item` VALUES ('/user-sub-stats/delete', 2, NULL, NULL, NULL, 1675905621, 1675905621);
INSERT INTO `lrs_auth_item` VALUES ('/user-sub-stats/index', 2, NULL, NULL, NULL, 1675905621, 1675905621);
INSERT INTO `lrs_auth_item` VALUES ('/user-sub-stats/update', 2, NULL, NULL, NULL, 1675905621, 1675905621);
INSERT INTO `lrs_auth_item` VALUES ('/user-sub-stats/view', 2, NULL, NULL, NULL, 1675905621, 1675905621);
INSERT INTO `lrs_auth_item` VALUES ('/user/*', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user/create', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user/delete', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user/index', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user/update', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/user/view', 2, NULL, NULL, NULL, 1494572418, 1494572418);
INSERT INTO `lrs_auth_item` VALUES ('/viewinfo/*', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/viewinfo/create', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/viewinfo/delete', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/viewinfo/index', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/viewinfo/update', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/viewinfo/view', 2, NULL, NULL, NULL, 1628501905, 1628501905);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-all/*', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-all/create', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-all/delete', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-all/index', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-all/update', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-all/view', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-user/*', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-user/create', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-user/delete', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-user/index', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-user/update', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/voucher-for-user/view', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/vouchers-and-users/*', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/vouchers-and-users/create', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/vouchers-and-users/delete', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/vouchers-and-users/index', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/vouchers-and-users/update', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/vouchers-and-users/view', 2, NULL, NULL, NULL, 1640857927, 1640857927);
INSERT INTO `lrs_auth_item` VALUES ('/vp-billing-activity/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/vp-billing-activity/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/vp-billing-activity/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/vp-billing-activity/index', 2, NULL, NULL, NULL, 1646125526, 1646125526);
INSERT INTO `lrs_auth_item` VALUES ('/vp-billing-activity/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/vp-billing-activity/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-benefit/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-benefit/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-benefit/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-benefit/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-benefit/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-benefit/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-harmful/*', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-harmful/create', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-harmful/delete', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-harmful/index', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-harmful/update', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/weather-config-harmful/view', 2, NULL, NULL, NULL, 1667363906, 1667363906);
INSERT INTO `lrs_auth_item` VALUES ('/web-news-category/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news-category/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news-category/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news-category/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news-category/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news-category/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-news/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages-category/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages-category/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages-category/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages-category/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages-category/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages-category/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages/*', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages/create', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages/delete', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages/index', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages/update', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('/web-pages/view', 2, NULL, NULL, NULL, 1601968907, 1601968907);
INSERT INTO `lrs_auth_item` VALUES ('AdminAccess', 1, 'Nhóm admin', NULL, NULL, 1494572371, 1494572371);
INSERT INTO `lrs_auth_item` VALUES ('Vtech admin', 1, NULL, NULL, NULL, 1655778673, 1655778673);

-- ----------------------------
-- Table structure for lrs_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `lrs_auth_item_child`;
CREATE TABLE `lrs_auth_item_child`  (
  `parent` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`, `child`) USING BTREE,
  INDEX `child`(`child` ASC) USING BTREE,
  CONSTRAINT `lrs_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `lrs_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lrs_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `lrs_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lrs_auth_item_child
-- ----------------------------
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/common/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/common/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/common/update-common');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/leaderboard/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/leaderboard/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-animal/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-animal/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-animal/update-animal');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-exp/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-exp/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-exp/update-exp');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-gift/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-gift/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-gift/update-gift');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-land/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-land/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-land/update-land');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-msg/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-msg/error');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-msg/mess-error');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-msg/mess-success');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-msg/success');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-plant/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-plant/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-plant/update-plant');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-user/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/list-user/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/rule/*');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/rule/index');
INSERT INTO `lrs_auth_item_child` VALUES ('[KD] Nội dung', '/rule/update-rule');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/assignment/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/assignment/assign');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/assignment/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/assignment/revoke');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/assignment/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/default/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/default/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/menu/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/menu/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/menu/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/menu/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/menu/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/menu/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/assign');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/remove');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/permission/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/assign');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/remove');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/role/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/route/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/route/assign');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/route/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/route/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/route/refresh');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/route/remove');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/rule/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/rule/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/rule/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/rule/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/rule/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/rule/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/activate');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/change-password');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/login');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/logout');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/request-password-reset');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/reset-password');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/signup');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/admin/user/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/configuration/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/configuration/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/configuration/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/configuration/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/configuration/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/configuration/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/debug/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/debug/default/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/debug/default/db-explain');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/debug/default/download-mail');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/debug/default/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/debug/default/toolbar');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/debug/default/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gii/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gii/default/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gii/default/action');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gii/default/diff');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gii/default/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gii/default/preview');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gii/default/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/gridview/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/site/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/site/captcha');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/site/error');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/site/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/site/login');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/site/logout');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/topup/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/topup/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/topup/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/topup/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/topup/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/topup/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user-category/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user-category/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user-category/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user-category/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user-category/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user-category/view');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user/*');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user/create');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user/index');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user/update');
INSERT INTO `lrs_auth_item_child` VALUES ('AdminAccess', '/user/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/animal/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/animal/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/animal/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/animal/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/animal/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/animal/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/bird-config/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/bird-config/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/bird-config/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/bird-config/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/bird-config/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/bird-config/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-error-message/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-error-message/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-error-message/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-error-message/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-error-message/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-error-message/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-success-message/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-success-message/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-success-message/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-success-message/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-success-message/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/custom-success-message/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/factory/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/factory/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/factory/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/factory/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/factory/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/factory/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/farm-ccu/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/food-stuffs/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/food-stuffs/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/food-stuffs/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/food-stuffs/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/food-stuffs/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-configs/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-configs/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-configs/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-configs/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-configs/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-configs/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-level-config/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-level-config/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-level-config/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-level-config/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-level-config/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/game-level-config/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/gift-code/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/information-user/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/information-user/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/information-user/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/list-animal/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/list-animal/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/list-animal/update-animal');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/list-plant/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/list-plant/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/list-plant/update-plant');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/log-buy-sale/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/log-buy-sale/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/log-buy-sale/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/log-buy-sale/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/log-buy-sale/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/log-buy-sale/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/log-recharge/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/login-configs/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/login-configs/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/login-configs/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/login-configs/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/login-configs/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/login-configs/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/notify-game/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/notify-game/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/notify-game/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/notify-game/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/notify-game/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/notify-game/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/on-off-configs/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/on-off-configs/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/on-off-configs/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/on-off-configs/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/on-off-configs/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/on-off-configs/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/plant/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/plant/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/plant/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/plant/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/plant/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/plant/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/quest-orders/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/quest-orders/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/quest-orders/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/quest-orders/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/quest-orders/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/quest-orders/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rank-month/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rank-week/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/report-business-other/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/report-business-vas/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rule/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rule/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rule/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rule/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rule/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rule/update-rule');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/rule/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/spin-config/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/spin-config/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/spin-config/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/spin-config/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/spin-config/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/spin-config/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/super-whale/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/super-whale/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/super-whale/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/super-whale/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/super-whale/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/user-player/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/user-player/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/user-player/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/user-player/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/user-player/public-money');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/user-player/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-all/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-all/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-all/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-all/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-all/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-all/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-user/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-user/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-user/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-user/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-user/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/voucher-for-user/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/vouchers-and-users/*');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/vouchers-and-users/create');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/vouchers-and-users/delete');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/vouchers-and-users/index');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/vouchers-and-users/update');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/vouchers-and-users/view');
INSERT INTO `lrs_auth_item_child` VALUES ('Vtech admin', '/vp-billing-activity/index');

-- ----------------------------
-- Table structure for lrs_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `lrs_auth_rule`;
CREATE TABLE `lrs_auth_rule`  (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_at` int NULL DEFAULT NULL,
  `updated_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lrs_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for lrs_user
-- ----------------------------
DROP TABLE IF EXISTS `lrs_user`;
CREATE TABLE `lrs_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_category` int NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int NULL DEFAULT NULL,
  `unconfirmed_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `blocked_at` int NULL DEFAULT NULL,
  `registration_ip` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `flags` int NOT NULL DEFAULT 0,
  `status` int NULL DEFAULT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_unique_email`(`email` ASC) USING BTREE,
  UNIQUE INDEX `user_unique_username`(`username` ASC) USING BTREE,
  INDEX `user_category`(`user_category` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lrs_user
-- ----------------------------
INSERT INTO `lrs_user` VALUES (1, 'admin', 5, 'Quản trị viên', 'admin@uocnv.com', '$2y$13$SvxdSWoXQ7dnmvnU//NzCeJ1tFzZoz/fqAOWoZDPFZxDKFlNZ12Cq', 'lBRLMYk0v69Xd771OCrKiy5mlGUDf1yz', 1440383028, NULL, NULL, NULL, 1445396438, 1685698902, 0, 1, NULL);
INSERT INTO `lrs_user` VALUES (19, 'giangnh', 5, 'Nguyen Huu Giang', 'giangnh@vtechno.com.vn', '$2y$13$x4qxZIzZ1sf/2jD6UK.XWurUl/8q9E3uHK3MazHjFuf7YF9QpECi.', 'm9WlkUcn_aZyc9O_ZKGOrJtWXgVNfetD', NULL, NULL, NULL, NULL, 1647826775, 1685700310, 0, 1, NULL);
INSERT INTO `lrs_user` VALUES (38, 'hongnv', 9, 'Nguyen Hong', 'vanhong130803@gmail.com', '$2y$13$ChJF3UjvwRxJ13Ji9dkl8ui.zG/wqiaeIhX9mSw.R20dFiaecRUCu', 'hOlDQ8aQnLTsMRsVNufsxSRi4-cW9b6y', NULL, NULL, NULL, NULL, 1723602022, 1723602022, 0, 1, NULL);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `is_read` bit(1) NOT NULL,
  `actor_id` bigint NULL DEFAULT NULL,
  `comment_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `notification_id` bigint NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint NULL DEFAULT NULL,
  `recipient_id` bigint NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('COMMENT','FOLLOW','LIKE','MENTION','MESSAGE','RECIPE_APPROVED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`notification_id`) USING BTREE,
  INDEX `FK4sd9fik0uthbk6d9rsxco4uja`(`actor_id` ASC) USING BTREE,
  INDEX `FKl7p8sj183bxuwg2sq2ltx3cpv`(`comment_id` ASC) USING BTREE,
  INDEX `FK833y13288tdsq6r8xx47wrgqi`(`recipe_id` ASC) USING BTREE,
  INDEX `FKqqnsjxlwleyjbxlmm213jaj3f`(`recipient_id` ASC) USING BTREE,
  CONSTRAINT `FK4sd9fik0uthbk6d9rsxco4uja` FOREIGN KEY (`actor_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK833y13288tdsq6r8xx47wrgqi` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKl7p8sj183bxuwg2sq2ltx3cpv` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`comment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKqqnsjxlwleyjbxlmm213jaj3f` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES (b'0', 1, NULL, '2026-01-06 11:15:26.000000', 1, NULL, 6, 'admin đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 11:26:07.000000', 2, NULL, 6, 'Nguyễn Hồng đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 11:29:02.000000', 3, NULL, 3, 'Nguyễn Hồng đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 12:58:45.000000', 4, 51, 5, 'Nguyễn Hồng đã thích công thức của bạn: \"Đùi gà chiên giòn kiểu KFC\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 12:58:45.000000', 5, 1, 2, 'Nguyễn Hồng đã thích công thức của bạn: \"Phở bò Hà Nội truyền thống\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 12:58:46.000000', 6, 20, 3, 'Nguyễn Hồng đã thích công thức của bạn: \"Bò lúc lắc\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 12:58:47.000000', 7, 31, 5, 'Nguyễn Hồng đã thích công thức của bạn: \"Bánh bông lan trứng muối\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 13:03:35.000000', 8, 5, 2, 'GourmetGuru đã thích công thức của bạn: \"Gỏi cuốn tôm thịt\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 13:03:37.000000', 9, 6, 2, 'GourmetGuru đã thích công thức của bạn: \"Bánh mì thịt nướng\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 13:03:39.000000', 10, 4, 2, 'GourmetGuru đã thích công thức của bạn: \"Hủ tiếu Nam Vang\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 14:02:20.000000', 11, 1, 2, 'GourmetGuru đã thích công thức của bạn: \"Phở bò Hà Nội truyền thống\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 14:02:21.000000', 12, 20, 3, 'GourmetGuru đã thích công thức của bạn: \"Bò lúc lắc\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:08:12.000000', 13, 51, 5, 'MasterCook đã thích công thức của bạn: \"Đùi gà chiên giòn kiểu KFC\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:08:13.000000', 14, 1, 2, 'MasterCook đã thích công thức của bạn: \"Phở bò Hà Nội truyền thống\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:08:15.000000', 15, 31, 5, 'MasterCook đã thích công thức của bạn: \"Bánh bông lan trứng muối\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:08:16.000000', 16, 5, 2, 'MasterCook đã thích công thức của bạn: \"Gỏi cuốn tôm thịt\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:08:17.000000', 17, 6, 2, 'MasterCook đã thích công thức của bạn: \"Bánh mì thịt nướng\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:08:19.000000', 18, 4, 2, 'MasterCook đã thích công thức của bạn: \"Hủ tiếu Nam Vang\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:15:05.000000', 19, NULL, 6, 'MasterCook đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:15:05.000000', 20, NULL, 7, 'MasterCook đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:15:06.000000', 21, NULL, 5, 'MasterCook đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:15:07.000000', 22, NULL, 4, 'MasterCook đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 3, NULL, '2026-01-06 14:15:07.000000', 23, NULL, 2, 'MasterCook đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 15:36:29.000000', 24, NULL, 6, 'GourmetGuru đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 15:36:29.000000', 25, NULL, 7, 'GourmetGuru đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 15:36:30.000000', 26, NULL, 4, 'GourmetGuru đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 15:36:30.000000', 27, NULL, 3, 'GourmetGuru đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 5, NULL, '2026-01-06 15:36:31.000000', 28, NULL, 2, 'GourmetGuru đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 19:11:40.000000', 29, 41, 6, 'Nguyễn Hồng đã thích công thức của bạn: \"Mojito chanh bạc hà (không cồn)\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 19:11:41.000000', 30, 42, 6, 'Nguyễn Hồng đã thích công thức của bạn: \"Smoothie dâu tây chuối\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 19:11:42.000000', 31, 43, 6, 'Nguyễn Hồng đã thích công thức của bạn: \"Cà phê kiểu Ý (Espresso)\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 19:11:43.000000', 32, 44, 6, 'Nguyễn Hồng đã thích công thức của bạn: \"Trà nóng Chai Masala Ấn Độ\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 19:11:48.000000', 33, 45, 6, 'Nguyễn Hồng đã thích công thức của bạn: \"Smoothie xoài dừa kiểu Thái\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 19:11:49.000000', 34, 46, 6, 'Nguyễn Hồng đã thích công thức của bạn: \"Matcha Latte Nhật Bản\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 7, NULL, '2026-01-06 19:12:55.000000', 35, NULL, 5, 'Nguyễn Hồng đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 7, 7, '2026-01-06 19:14:20.000000', 36, 31, 5, 'Nguyễn Hồng đã bình luận về công thức của bạn: \"Bánh bông lan trứng muối\"', 'COMMENT');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:30:49.000000', 37, 1, 2, 'FlavorMaestro đã thích công thức của bạn: \"Phở bò Hà Nội truyền thống\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:30:49.000000', 38, 20, 3, 'FlavorMaestro đã thích công thức của bạn: \"Bò lúc lắc\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:30:50.000000', 39, 31, 5, 'FlavorMaestro đã thích công thức của bạn: \"Bánh bông lan trứng muối\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:30:51.000000', 40, 5, 2, 'FlavorMaestro đã thích công thức của bạn: \"Gỏi cuốn tôm thịt\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:30:53.000000', 41, 6, 2, 'FlavorMaestro đã thích công thức của bạn: \"Bánh mì thịt nướng\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:30:55.000000', 42, 4, 2, 'FlavorMaestro đã thích công thức của bạn: \"Hủ tiếu Nam Vang\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:39:34.000000', 43, NULL, 7, 'FlavorMaestro đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:39:34.000000', 44, NULL, 5, 'FlavorMaestro đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:39:38.000000', 45, NULL, 4, 'FlavorMaestro đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-06 20:39:39.000000', 46, NULL, 3, 'FlavorMaestro đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-08 20:54:50.000000', 47, 32, 5, 'FlavorMaestro đã thích công thức của bạn: \"Pudding socola\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-08 20:54:51.000000', 48, 33, 5, 'FlavorMaestro đã thích công thức của bạn: \"Chè đậu xanh nước cốt dừa\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:14.000000', 49, NULL, 6, 'Nomal User đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:17.000000', 50, NULL, 5, 'Nomal User đã theo dõi bạn', 'FOLLOW');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:23.000000', 51, 41, 6, 'Nomal User đã thích công thức của bạn: \"Mojito chanh bạc hà (không cồn)\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:23.000000', 52, 42, 6, 'Nomal User đã thích công thức của bạn: \"Smoothie dâu tây chuối\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:26.000000', 53, 43, 6, 'Nomal User đã thích công thức của bạn: \"Cà phê kiểu Ý (Espresso)\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:27.000000', 54, 44, 6, 'Nomal User đã thích công thức của bạn: \"Trà nóng Chai Masala Ấn Độ\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:29.000000', 55, 45, 6, 'Nomal User đã thích công thức của bạn: \"Smoothie xoài dừa kiểu Thái\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:30.000000', 56, 46, 6, 'Nomal User đã thích công thức của bạn: \"Matcha Latte Nhật Bản\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 8, NULL, '2026-01-08 21:29:32.000000', 57, 47, 6, 'Nomal User đã thích công thức của bạn: \"Trà Ô Long Trân Châu\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, NULL, '2026-01-09 16:30:58.000000', 58, 34, 5, 'FlavorMaestro đã thích công thức của bạn: \"Sinh tố bơ\"', 'LIKE');
INSERT INTO `notifications` VALUES (b'0', 6, 9, '2026-01-09 16:31:24.000000', 59, 34, 5, 'FlavorMaestro đã bình luận về công thức của bạn: \"Sinh tố bơ\"', 'COMMENT');

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `quantity` int NOT NULL,
  `dish_id` bigint NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  `order_item_id` bigint NOT NULL AUTO_INCREMENT,
  `price_at_order` bigint NOT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE,
  INDEX `FKa5ygw60crrnmser89852e8v77`(`dish_id` ASC) USING BTREE,
  INDEX `FKhee9q71wp7l3ysceirtyojhb9`(`order_id` ASC) USING BTREE,
  CONSTRAINT `FKa5ygw60crrnmser89852e8v77` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`dish_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhee9q71wp7l3ysceirtyojhb9` FOREIGN KEY (`order_id`) REFERENCES `product_orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (1, 1, 2, 1, 45000);
INSERT INTO `order_items` VALUES (1, 1, 3, 2, 45000);
INSERT INTO `order_items` VALUES (1, 11, 4, 3, 50000);
INSERT INTO `order_items` VALUES (1, 12, 4, 4, 50000);
INSERT INTO `order_items` VALUES (1, 2, 5, 5, 50000);
INSERT INTO `order_items` VALUES (1, 3, 5, 6, 50000);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `created_at` datetime(6) NOT NULL,
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `seller_id` bigint NULL DEFAULT NULL,
  `total_amount` bigint NOT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `order_type` varchar(31) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `order_status` enum('CANCELLED_BY_BUYER','CANCELLED_BY_PAYMENT_FAIL','CANCELLED_BY_SELLER','COMPLETED','CONFIRMED_BY_SELLER','DELIVERED','PAID','PENDING_ACCOUNT_UPGRADE','SHIPPED','UNKOWN','WAITING_PAYMENT') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `FK32ql8ubntj5uh44ph9659tiih`(`user_id` ASC) USING BTREE,
  INDEX `FKsb9w6305d2be0rwbtifi7wymp`(`seller_id` ASC) USING BTREE,
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsb9w6305d2be0rwbtifi7wymp` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2026-01-06 11:23:22.000000', 1, NULL, 400000, '2026-01-06 11:24:21.000000', 7, 'UPGRADE_CHEF', 'Nang cap', 'COMPLETED');
INSERT INTO `orders` VALUES ('2026-01-06 11:31:03.000000', 2, 3, 45000, '2026-01-06 11:33:02.000000', 7, 'PURCHASE_PRODUCT', 'Thanh toán đơn hàng từ cart', 'COMPLETED');
INSERT INTO `orders` VALUES ('2026-01-06 12:42:14.000000', 3, 3, 45000, '2026-01-06 12:42:14.000000', 7, 'PURCHASE_PRODUCT', 'Thanh toán đơn hàng từ cart', 'WAITING_PAYMENT');
INSERT INTO `orders` VALUES ('2026-01-09 16:37:21.000000', 4, 6, 100000, '2026-01-09 16:40:17.000000', 8, 'PURCHASE_PRODUCT', 'Thanh toán đơn hàng từ cart', 'COMPLETED');
INSERT INTO `orders` VALUES ('2026-01-10 10:28:01.000000', 5, 5, 100000, '2026-01-10 10:28:01.000000', 6, 'PURCHASE_PRODUCT', 'Thanh toán đơn hàng từ cart', 'WAITING_PAYMENT');

-- ----------------------------
-- Table structure for outbox_events
-- ----------------------------
DROP TABLE IF EXISTS `outbox_events`;
CREATE TABLE `outbox_events`  (
  `processed` bit(1) NOT NULL,
  `aggregate_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aggregate_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `event_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outbox_events
-- ----------------------------
INSERT INTO `outbox_events` VALUES (b'1', 1, '2026-01-06 11:11:01.000000', 1, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Phở bò Hà Nội truyền thống\",\"description\":\"Phở bò Hà Nội là món ăn đặc trưng của ẩm thực Việt Nam với nước dùng trong, ngọt thanh từ xương bò, thơm mùi quế hồi và gừng nướng. Món ăn đòi hỏi sự tỉ mỉ trong khâu chuẩn bị và ninh nước dùng.\",\"ingredients\":\"Bánh phở tươi, Xương ống bò, Thịt bò nạm, Thịt bò tái, Gừng, Hành tây, Hành tím, Hoa hồi, Quế, Thảo quả, Đinh hương, Nước mắm, Muối, Đường phèn, Hành lá, Rau mùi, Tiêu\",\"steps\":\"1: Rửa sạch xương ống bò với muối, chần qua nước sôi khoảng 5 phút để loại bỏ mùi hôi và tạp chất, sau đó rửa lại bằng nước lạnh.,2: Cho xương bò vào nồi lớn, đổ khoảng 3 lít nước, đun sôi rồi hạ lửa nhỏ, hớt bọt liên tục để nước dùng trong.,3: Nướng gừng, hành tây và hành tím trực tiếp trên lửa cho cháy xém vỏ, sau đó cạo sạch lớp cháy và đập dập gừng.,4: Rang hoa hồi, quế, thảo quả và đinh hương trên chảo nóng cho dậy mùi thơm, sau đó cho vào túi vải hoặc lưới lọc.,5: Cho gừng, hành nướng và túi gia vị vào nồi nước dùng, tiếp tục ninh xương ở lửa nhỏ trong khoảng 2–2,5 tiếng.,6: Cho thịt bò nạm vào nồi, nấu thêm 30 phút đến khi thịt mềm, vớt ra để nguội rồi thái lát mỏng.,7: Nêm nước mắm, muối và đường phèn vào nồi nước dùng, nếm lại cho vị ngọt thanh, mặn vừa.,8: Trần bánh phở qua nước sôi khoảng 10–15 giây, cho vào tô. Xếp thịt nạm và thịt bò tái lên trên.,9: Chan nước dùng đang sôi vào tô phở, rắc hành lá, rau mùi và tiêu lên trên, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/58cf9f88-a930-4b92-8ea1-28ce0c832d60_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 2, '2026-01-06 11:11:01.000000', 2, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bún bò Huế\",\"description\":\"Bún bò Huế là món ăn đặc trưng của xứ Huế với nước dùng đậm đà, cay nồng từ sả và ớt, kết hợp với bún tươi mềm và các loại thịt bò thơm ngon.\",\"ingredients\":\"Bún Huế, Xương bò, Thịt bò đùi, Sả, Hành tím, Ớt tươi, Mắm ruốc Huế, Muối, Đường, Hành lá, Rau húng quế\",\"steps\":\"1: Rửa sạch xương bò, chần qua nước sôi để loại bỏ tạp chất.,2: Đun xương bò với nước khoảng 1 giờ, hớt bọt để nước dùng trong.,3: Nướng sả, hành tím, ớt trên lửa cho dậy mùi, sau đó giã nhỏ.,4: Cho hỗn hợp sả, hành, ớt vào nồi nước dùng, thêm mắm ruốc Huế, muối, đường và ninh thêm 30 phút.,5: Luộc thịt bò, thái lát mỏng khi nguội.,6: Trần bún qua nước sôi, cho vào tô, xếp thịt bò lên trên.,7: Chan nước dùng nóng lên bún, rắc hành lá và rau húng quế, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/4c9b9353-3868-442f-b1e3-5665b90b4b4a_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 3, '2026-01-06 11:11:01.000000', 3, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mì Quảng Đà Nẵng\",\"description\":\"Mì Quảng là món ăn đặc sản miền Trung với sợi mì vàng, nước dùng đậm đà, thường ăn kèm tôm, thịt, trứng và rau sống.\",\"ingredients\":\"Mì Quảng, Tôm tươi, Thịt heo ba chỉ, Trứng cút, Hành tây, Đậu phộng rang, Rau sống các loại, Nước mắm, Đường, Ớt bột\",\"steps\":\"1: Luộc tôm, thịt heo, trứng cút, thái thịt heo mỏng.,2: Phi thơm hành tây với dầu, thêm tôm và thịt, nêm nước mắm, đường, ớt bột.,3: Chần mì qua nước sôi, xếp mì vào tô.,4: Đổ hỗn hợp tôm thịt lên mì, thêm trứng cút, rắc đậu phộng rang và rau sống.,5: Chan nước dùng ít để mì thấm, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/2a05cb2f-9735-4e4f-b39a-7ffd6eb59b7c_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 4, '2026-01-06 11:11:02.000000', 4, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hủ tiếu Nam Vang\",\"description\":\"Hủ tiếu Nam Vang là món mì nước đặc trưng với sợi hủ tiếu dai, nước dùng ngọt thanh, kết hợp hải sản, thịt heo và rau sống tươi ngon.\",\"ingredients\":\"Hủ tiếu, Tôm, Thịt heo nạc, Mực, Hành tím, Rau húng quế, Giá đỗ, Nước mắm, Tiêu\",\"steps\":\"1: Luộc tôm, mực, thái thịt heo mỏng.,2: Đun nước dùng từ xương heo, nêm nước mắm, muối, đường.,3: Chần hủ tiếu qua nước sôi, cho vào tô.,4: Xếp thịt, tôm, mực lên hủ tiếu, thêm giá đỗ và rau sống.,5: Chan nước dùng nóng, rắc tiêu và hành phi, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/ed435f00-ff7c-4ce0-bece-44ff0b29489a_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 5, '2026-01-06 11:11:02.000000', 5, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi cuốn tôm thịt\",\"description\":\"Gỏi cuốn là món ăn nhẹ, tươi mát, gồm bánh tráng cuốn tôm, thịt, rau sống và bún tươi, thường ăn kèm nước chấm đậm đà.\",\"ingredients\":\"Bánh tráng, Tôm luộc, Thịt heo luộc, Bún tươi, Rau xà lách, Rau mùi, Húng quế, Đậu phộng rang, Nước mắm chua ngọt\",\"steps\":\"1: Ngâm bánh tráng vào nước ấm cho mềm.,2: Xếp rau, bún, tôm, thịt lên bánh tráng.,3: Cuộn chặt bánh tráng, cắt vừa ăn.,4: Rắc đậu phộng rang, chấm với nước mắm chua ngọt.\",\"imageUrl\":\"/static_resource/public/upload/recipes/265e5300-180e-442f-8a86-07c2e75debfa_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 6, '2026-01-06 11:11:02.000000', 6, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì thịt nướng\",\"description\":\"Bánh mì thịt nướng là món ăn đường phố nổi tiếng với bánh mì giòn rụm, nhân thịt heo nướng thơm phức, rau sống và nước sốt đậm đà.\",\"ingredients\":\"Bánh mì baguette, Thịt heo nạc vai, Hành tây, Dưa leo, Cà rốt, Rau mùi, Tỏi, Nước mắm, Đường, Tiêu\",\"steps\":\"1: Ướp thịt với tỏi, nước mắm, đường, tiêu và hành tây băm nhỏ khoảng 15 phút.,2: Nướng thịt trên than hoặc chảo nướng đến khi vàng đều.,3: Gọt và bào cà rốt, dưa leo thành sợi, trộn với chút đường và giấm.,4: Cắt bánh mì, cho nhân thịt, rau sống, cà rốt và dưa leo vào, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/383ce969-6ecb-4b49-998c-9e0411ff0a13_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 7, '2026-01-06 11:11:02.000000', 7, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì chảo\",\"description\":\"Bánh mì chảo là món ăn sáng phổ biến với trứng, pate, xúc xích và thịt nướng được phục vụ trong chảo nhỏ kèm bánh mì giòn.\",\"ingredients\":\"Bánh mì, Trứng gà, Pate, Xúc xích, Thịt nướng, Hành lá, Tiêu, Bơ\",\"steps\":\"1: Đun nóng chảo, cho bơ, trứng vào chiên vừa chín.,2: Cho pate, xúc xích và thịt nướng vào chảo, đun nóng.,3: Rắc hành lá, tiêu, dùng kèm bánh mì giòn.\",\"imageUrl\":\"/static_resource/public/upload/recipes/1ae3adb0-b3cf-43c9-88ab-e9c075b1cdb8_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 8, '2026-01-06 11:11:02.000000', 8, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Burger bò\",\"description\":\"Burger bò là món ăn nhanh phổ biến với patty bò thơm, phô mai tan chảy, rau tươi và sốt đặc trưng, phục vụ trong bánh mì hamburger mềm.\",\"ingredients\":\"Bánh hamburger, Thịt bò băm, Phô mai cheddar, Xà lách, Cà chua, Dưa leo, Sốt mayonnaise, Tiêu\",\"steps\":\"1: Nặn thịt bò thành patty, nêm muối, tiêu, áp chảo đến chín vừa.,2: Nướng sơ bánh hamburger, phết sốt mayonnaise.,3: Xếp patty, phô mai, xà lách, cà chua, dưa leo vào bánh, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/94e85f15-e569-4aeb-83b9-cf062d33cd2c_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 9, '2026-01-06 11:11:02.000000', 9, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hotdog kiểu Mỹ\",\"description\":\"Hotdog là món ăn nhanh với xúc xích hấp nướng kèm bánh mì mềm, rau củ và sốt đặc trưng, tiện lợi và nhanh chóng.\",\"ingredients\":\"Bánh hotdog, Xúc xích, Hành tây, Dưa leo, Sốt ketchup, Sốt mayonnaise, Tiêu\",\"steps\":\"1: Hấp hoặc nướng xúc xích đến chín.,2: Nướng sơ bánh hotdog, xẻ giữa.,3: Cho xúc xích vào bánh, thêm hành tây, dưa leo và sốt.\",\"imageUrl\":\"/static_resource/public/upload/recipes/53a93b23-dab4-4e41-9b2b-a33652a43dc9_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 10, '2026-01-06 11:11:02.000000', 10, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gà rán kiểu Hàn Quốc\",\"description\":\"Gà rán Hàn Quốc giòn tan, thơm lừng với lớp sốt cay ngọt đặc trưng, thường ăn kèm cơm hoặc khoai tây chiên.\",\"ingredients\":\"Đùi gà, Bột mì, Bột chiên giòn, Trứng gà, Tỏi băm, Sốt gochujang, Mật ong, Dầu ăn\",\"steps\":\"1: Ướp gà với tỏi, muối, tiêu 10 phút.,2: Nhúng gà qua trứng, bột mì và bột chiên giòn.,3: Chiên gà ngập dầu đến vàng giòn.,4: Trộn sốt gochujang và mật ong, rưới lên gà nóng, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/recipes/7829e4c7-09da-4a1a-b86f-916f514f87c8_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 11, '2026-01-06 11:12:24.000000', 11, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá chiên giòn\",\"description\":\"Cá chiên giòn là món ăn đơn giản nhưng hấp dẫn, với lớp vỏ vàng giòn, thịt cá mềm ngọt bên trong, thường ăn kèm nước mắm pha chua ngọt và rau sống.\",\"ingredients\":\"Cá diêu hồng, Bột chiên xù, Bột mì, Trứng gà, Dầu ăn, Muối, Tiêu, Chanh\",\"steps\":\"1: Rửa sạch cá, khứa vài đường trên thân, ướp muối và tiêu 5 phút.,2: Nhúng cá qua bột mì, trứng, sau đó lăn bột chiên xù.,3: Chiên cá ngập dầu đến vàng giòn, vớt ra để ráo.,4: Dùng kèm nước mắm pha chua ngọt và chanh.\",\"imageUrl\":\"/static_resource/public/upload/recipes/5b60c029-6e46-4bcf-b84a-637b2eb469ed_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 12, '2026-01-06 11:12:24.000000', 12, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá kho tộ\",\"description\":\"Cá kho tộ là món ăn truyền thống miền Nam, cá được kho với nước mắm, đường và gia vị trong nồi đất, thịt cá mềm, thấm vị đậm đà.\",\"ingredients\":\"Cá thu, Hành tím, Tỏi, Nước mắm, Đường, Tiêu, Ớt sừng, Dầu ăn\",\"steps\":\"1: Rửa cá, cắt khúc vừa ăn, ướp muối, tiêu 10 phút.,2: Phi thơm hành tím, tỏi, cho đường vào thắng đến màu cánh gián.,3: Cho cá vào nồi đất, thêm nước mắm, tiêu, ớt và dầu ăn, kho lửa nhỏ 30 phút.,4: Dùng nóng với cơm trắng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/8217e12d-7f44-4091-bc0f-17136ab15d84_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 13, '2026-01-06 11:12:24.000000', 13, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Salad Nga\",\"description\":\"Salad Nga là món salad lạnh với khoai tây, cà rốt, đậu Hà Lan, trứng và mayonnaise, thường dùng làm khai vị hoặc ăn nhẹ.\",\"ingredients\":\"Khoai tây, Cà rốt, Đậu Hà Lan, Trứng luộc, Mayonnaise, Muối, Tiêu\",\"steps\":\"1: Luộc khoai tây, cà rốt, trứng, để nguội, thái hạt lựu.,2: Trộn khoai tây, cà rốt, đậu Hà Lan, trứng với mayonnaise, muối và tiêu.,3: Làm lạnh trước khi dùng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/759658da-9fab-4b37-b36c-9418722ee6dc_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 14, '2026-01-06 11:12:24.000000', 14, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Salad Caesar\",\"description\":\"Salad Caesar là món salad trộn với rau xà lách, gà nướng, phô mai Parmesan và sốt Caesar béo ngậy, thường dùng làm món khai vị hoặc ăn nhẹ.\",\"ingredients\":\"Xà lách Romaine, Ức gà, Bánh mì nướng, Phô mai Parmesan bào, Sốt Caesar, Tiêu, Muối\",\"steps\":\"1: Nướng ức gà, thái lát mỏng.,2: Xé xà lách, trộn với bánh mì nướng, gà, phô mai Parmesan.,3: Rưới sốt Caesar, trộn đều, nêm muối tiêu vừa ăn.\",\"imageUrl\":\"/static_resource/public/upload/recipes/ed009afd-b8f0-43a6-9bf6-a96cd3e86ca8_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 15, '2026-01-06 11:12:24.000000', 15, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi đu đủ\",\"description\":\"Gỏi đu đủ là món ăn nhẹ, tươi mát với đu đủ xanh bào sợi, tôm, thịt, lạc rang và nước mắm chua ngọt đặc trưng.\",\"ingredients\":\"Đu đủ xanh, Tôm tươi, Thịt ba chỉ, Lạc rang, Tỏi, Ớt tươi, Nước mắm, Đường, Chanh\",\"steps\":\"1: Bào đu đủ xanh thành sợi, rửa sạch, để ráo.,2: Luộc tôm và thịt, thái mỏng.,3: Trộn đu đủ với tôm, thịt, lạc rang, tỏi, ớt, nước mắm, đường, chanh.,4: Dùng ngay, trang trí thêm rau thơm nếu thích.\",\"imageUrl\":\"/static_resource/public/upload/recipes/e39f4409-005b-4ba0-b203-dad97dc88f62_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 16, '2026-01-06 11:12:24.000000', 16, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì kẹp gà nướng\",\"description\":\"Bánh mì kẹp gà nướng với thịt gà thấm gia vị thơm, rau sống tươi mát, sốt mayonnaise nhẹ và ớt băm cay vừa phải. Thích hợp làm bữa sáng hoặc ăn vặt.\",\"ingredients\":\"Bánh mì baguette, Ức gà, Hành tây, Cà rốt, Xà lách, Tỏi băm, Nước tương, Ớt băm, Sốt mayonnaise, Muối, Tiêu\",\"steps\":\"1: Rửa sạch ức gà, thái mỏng, trộn với tỏi băm, nước tương, ớt băm, muối và tiêu. Ướp 15 phút để thịt thấm gia vị.,2: Đun nóng chảo nướng hoặc lò nướng ở 180°C, nướng gà trong 10–12 phút đến khi chín vàng đều.,3: Gọt cà rốt thành sợi, rửa xà lách và hành tây thái lát mỏng.,4: Cắt bánh mì baguette dọc, phết một lớp mayonnaise, xếp xà lách, cà rốt, hành tây và thịt gà nướng vào bánh, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/380d2b31-7377-477e-8e5e-e41f1244b93d_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 17, '2026-01-06 11:12:24.000000', 17, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mì Ý sốt bò bằm\",\"description\":\"Spaghetti sốt bò bằm đậm đà với cà chua chín, hành tây phi thơm, tỏi và gia vị Ý, rắc phô mai Parmesan béo ngậy. Phù hợp làm bữa trưa hoặc tối nhanh gọn.\",\"ingredients\":\"Spaghetti, Thịt bò bằm, Cà chua chín, Hành tây, Tỏi băm, Dầu ô liu, Phô mai Parmesan bào, Muối, Tiêu đen\",\"steps\":\"1: Đun nước sôi, luộc spaghetti theo hướng dẫn trên gói, thêm 1 g muối, để ráo.,2: Phi thơm hành tây và tỏi băm với dầu ô liu, cho thịt bò bằm vào xào đến khi thịt săn.,3: Cho cà chua thái nhỏ vào, đun nhỏ lửa 5 phút đến khi sốt sệt, nêm muối và tiêu.,4: Trộn spaghetti với sốt bò bằm, rắc phô mai Parmesan, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/9e71b63a-a6ae-42b7-9837-98b68064651b_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 18, '2026-01-06 11:12:24.000000', 18, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá hồi áp chảo sốt cam\",\"description\":\"Cá hồi áp chảo giữ nguyên vị ngọt tự nhiên, kết hợp sốt cam chua ngọt và mật ong, thích hợp cho bữa tối thanh lịch, dễ thực hiện tại nhà.\",\"ingredients\":\"Phi lê cá hồi, Cam tươi, Mật ong, Bơ, Muối, Tiêu đen, Dầu ô liu\",\"steps\":\"1: Ướp cá hồi với muối và tiêu 5 phút.,2: Đun nóng chảo với dầu ô liu và bơ, áp chảo cá 5 phút mỗi mặt đến vàng đều.,3: Vắt cam lấy nước, trộn với mật ong, rưới lên cá khi dùng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/5e019e79-ccc9-4cb0-9a7a-4b15d38c87b4_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 19, '2026-01-06 11:12:24.000000', 19, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gà xào sả ớt\",\"description\":\"Gà xào sả ớt thơm nồng với sả, ớt tươi, hành tỏi, giữ được vị ngọt mềm của thịt gà, ăn kèm cơm trắng rất vừa miệng.\",\"ingredients\":\"Thịt gà (đùi hoặc ức), Sả, Ớt tươi, Tỏi băm, Hành tím, Dầu ăn, Nước mắm, Đường, Tiêu đen\",\"steps\":\"1: Cắt gà miếng vừa ăn, ướp với nước mắm, đường và tiêu 10 phút.,2: Phi thơm sả, ớt, tỏi và hành tím, xào gà trên lửa lớn đến khi chín đều.,3: Nêm nếm lại, dọn nóng với cơm trắng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/c2576485-5f45-4856-90a4-4ac72191912c_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 20, '2026-01-06 11:12:24.000000', 20, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bò lúc lắc\",\"description\":\"Bò lúc lắc là món ăn ngon, thịt bò thái vuông xào nhanh trên lửa lớn với hành tây, giữ được độ mềm và thơm, dùng kèm khoai tây chiên và rau sống.\",\"ingredients\":\"Thịt bò thăn, Hành tây, Tỏi băm, Dầu ăn, Nước tương, Tiêu đen, Muối\",\"steps\":\"1: Cắt thịt bò thành miếng vuông ~2cm, ướp với nước tương, muối, tiêu 10 phút.,2: Phi tỏi với dầu ăn, xào bò trên lửa lớn nhanh tay khoảng 5 phút, thêm hành tây xắt múi cau.,3: Trộn đều, nêm nếm lại vừa ăn, dùng nóng với cơm hoặc khoai tây chiên.\",\"imageUrl\":\"/static_resource/public/upload/recipes/37665373-fadd-41fd-8f08-d4bbeb17a23f_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 21, '2026-01-06 11:13:47.000000', 21, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá chiên giòn sốt me\",\"description\":\"Cá chiên giòn bên ngoài, mềm bên trong, kết hợp sốt me chua ngọt, thơm mùi tỏi ớt, thích hợp làm món chính ăn cùng cơm.\",\"ingredients\":\"Cá diêu hồng, Bột chiên giòn, Trứng gà, Dầu ăn, Me chua, Đường, Nước mắm, Tỏi băm, Ớt băm, Hành lá\",\"steps\":\"1: Rửa sạch cá, khứa vài đường trên thân để thấm gia vị, thấm khô bằng giấy ăn.,2: Ướp cá với một chút muối và tiêu 5 phút.,3: Trộn bột chiên giòn với trứng, lăn cá đều, chuẩn bị chiên.,4: Đun nóng dầu ăn ở 180°C, chiên cá vàng giòn mỗi mặt 6–8 phút.,5: Ngâm me với 30ml nước ấm, lọc lấy nước cốt me, hòa đường và nước mắm.,6: Phi thơm tỏi và ớt, cho nước sốt me vào, đun sôi 2 phút.,7: Chan sốt me lên cá chiên, rắc hành lá cắt nhỏ, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/f1dcf640-d268-48e8-b21c-37784d09969e_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 22, '2026-01-06 11:13:47.000000', 22, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi đu đủ tôm thịt\",\"description\":\"Gỏi đu đủ xanh giòn, kết hợp tôm luộc, thịt ba chỉ và nước mắm chua ngọt, ăn kèm đậu phộng rang giã nhỏ và rau thơm.\",\"ingredients\":\"Đu đủ xanh, Tôm tươi, Thịt ba chỉ, Đậu phộng rang, Cà rốt, Hành tím, Tỏi, Ớt tươi, Đường, Nước mắm, Chanh, Rau thơm (ngò, húng)\",\"steps\":\"1: Gọt vỏ đu đủ, bào sợi, ngâm nước muối 5 phút, để ráo.,2: Luộc tôm với chút muối 3–5 phút, bóc vỏ, giữ lại phần đuôi trang trí.,3: Luộc thịt ba chỉ 10 phút, thái lát mỏng.,4: Bào sợi cà rốt, thái hành tím mỏng.,5: Giã đậu phộng rang thô, băm tỏi và ớt.,6: Pha nước trộn: nước mắm, đường, nước cốt chanh, tỏi và ớt băm, khuấy đều.,7: Trộn đu đủ, cà rốt, thịt và tôm với nước trộn, để 5 phút thấm gia vị.,8: Rắc đậu phộng giã và rau thơm, trang trí tôm lên trên, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/recipes/cf143d8b-c4ca-4e33-adc7-e24988a362d8_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 23, '2026-01-06 11:13:47.000000', 23, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mì Quảng gà\",\"description\":\"Mì Quảng với sợi mì dai, nước dùng đậm đà từ gà luộc, ăn kèm tôm, đậu phộng rang, rau sống và bánh tráng nướng giòn.\",\"ingredients\":\"Mì Quảng tươi, Thịt gà đùi, Tôm tươi, Đậu phộng rang, Hành tím, Tỏi, Hành lá, Rau sống (rau răm, húng quế), Nước mắm, Muối, Đường, Bánh tráng nướng\",\"steps\":\"1: Luộc gà với muối và 1 củ hành tím, nước sôi 20 phút, vớt ra để nguội, thái miếng vừa ăn.,2: Luộc tôm với chút muối 3–5 phút, bóc vỏ.,3: Đun nóng dầu, phi tỏi băm thơm, cho nước luộc gà, nêm muối, đường, nước mắm vừa ăn.,4: Trần mì Quảng trong nước sôi 2–3 phút, vớt ra để ráo.,5: Trải mì vào tô, xếp gà, tôm lên trên.,6: Rắc đậu phộng rang giã, hành lá, rau sống và bánh tráng giòn bên cạnh.,7: Chan nước dùng nóng lên mì, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/recipes/e1b639d5-fff2-4f73-9614-5b336cbc6251_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 24, '2026-01-06 11:13:47.000000', 24, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bún bò Huế\",\"description\":\"Bún bò Huế đậm vị cay nồng, nước dùng hầm xương bò và giò heo, kết hợp sả, ớt, mắm ruốc đặc trưng, ăn kèm bún và rau sống.\",\"ingredients\":\"Xương ống bò, Giò heo, Thịt bò nạm, Bún tươi, Sả, Hành tím, Ớt bột, Mắm ruốc Huế, Muối, Đường phèn, Rau sống (rau húng, giá, hành lá), Tiêu\",\"steps\":\"1: Rửa xương bò và giò heo, chần nước sôi 5 phút, rửa lại bằng nước lạnh.,2: Đun 3 lít nước sôi, cho xương và giò vào, hạ lửa nhỏ, hớt bọt liên tục.,3: Nướng sả và hành tím cho thơm, đập dập sả, cắt hành.,4: Rang ớt bột và mắm ruốc nhẹ trên chảo, thêm vào nồi nước dùng.,5: Ninh xương và giò heo lửa nhỏ 2–2,5 tiếng cho ngọt nước.,6: Cho thịt bò nạm vào nấu thêm 30 phút, vớt ra thái lát mỏng.,7: Nêm nước mắm, muối, đường phèn, nếm lại cho vừa ăn.,8: Trần bún qua nước sôi 10 giây, cho vào tô, xếp thịt, giò, chan nước dùng nóng, rắc rau sống và tiêu.\",\"imageUrl\":\"/static_resource/public/upload/recipes/1461ff01-090c-411a-8528-e1c9df3ef4f1_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 25, '2026-01-06 11:13:47.000000', 25, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hủ tiếu Nam Vang\",\"description\":\"Hủ tiếu Nam Vang nước trong, ngọt thanh từ xương heo và tôm, kèm thịt heo, tôm, gan và trứng cút, ăn kèm rau sống và giá.\",\"ingredients\":\"Hủ tiếu tươi, Xương heo, Thịt heo nạc, Tôm tươi, Gan heo, Trứng cút, Hành tím, Tỏi băm, Dầu ăn, Nước mắm, Muối, Đường, Rau sống, giá\",\"steps\":\"1: Rửa xương heo, chần qua nước sôi 5 phút.,2: Ninh xương với nước sạch 40 phút, hớt bọt để nước trong.,3: Luộc trứng cút 5 phút, bóc vỏ.,4: Luộc tôm, thịt heo và gan 5–7 phút, thái lát vừa ăn.,5: Phi hành tím và tỏi với dầu thơm, cho vào nồi nước dùng, nêm nước mắm, muối, đường.,6: Trần hủ tiếu trong nước sôi 30 giây, cho vào tô.,7: Xếp thịt, tôm, gan, trứng cút lên hủ tiếu, chan nước dùng, rắc rau sống và giá.\",\"imageUrl\":\"/static_resource/public/upload/recipes/09404910-3bc4-4b8c-b495-85b6fc5091ea_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 26, '2026-01-06 11:13:47.000000', 26, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh xèo miền Trung\",\"description\":\"Bánh xèo giòn rụm, nhân tôm, thịt ba chỉ và giá, ăn kèm rau sống và nước mắm pha chua ngọt.\",\"ingredients\":\"Bột gạo, Nước cốt dừa, Tôm tươi, Thịt ba chỉ, Giá đỗ, Hành lá, Dầu ăn, Muối, Đường, Nước mắm, Rau sống (xà lách, húng quế)\",\"steps\":\"1: Pha bột gạo với nước cốt dừa, một chút muối và hành lá băm nhỏ, để 15 phút.,2: Xào thịt ba chỉ thái mỏng và tôm 2–3 phút cho săn.,3: Đun chảo nóng, quét dầu, đổ 1 lớp bột mỏng, thêm nhân tôm, thịt và giá.,4: Đậy nắp, để bánh chín giòn, gập đôi, vớt ra.,5: Pha nước chấm: nước mắm, đường, chanh, tỏi và ớt băm.,6: Dọn bánh xèo với rau sống và nước chấm.\",\"imageUrl\":\"/static_resource/public/upload/recipes/70dc187f-9e52-4a8f-9b5b-b82de78b236f_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 27, '2026-01-06 11:13:47.000000', 27, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá kho tộ\",\"description\":\"Cá kho tộ với cá basa hoặc cá diêu hồng, kho trong nồi đất cùng nước mắm, đường, tiêu và hành phi thơm, thịt cá thấm gia vị, màu cánh gián đẹp mắt.\",\"ingredients\":\"Cá basa, Hành tím, Tỏi băm, Nước mắm, Đường, Tiêu, Dầu ăn, Hành lá\",\"steps\":\"1: Rửa cá, khứa vài đường trên mình cá để dễ thấm gia vị.,2: Ướp cá với nước mắm, đường và tiêu 10 phút.,3: Phi hành tím và tỏi với dầu cho thơm.,4: Cho cá vào nồi đất, thêm hành phi, một ít nước, đun sôi.,5: Hạ lửa nhỏ kho cá 25–30 phút, trở cá nhẹ nhàng để không nát.,6: Rắc hành lá cắt khúc, tiêu lên trên trước khi dùng nóng với cơm.\",\"imageUrl\":\"/static_resource/public/upload/recipes/ff35ad8e-b019-4697-ae68-f9a85e4078d2_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 28, '2026-01-06 11:13:48.000000', 28, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi cuốn tôm thịt\",\"description\":\"Gỏi cuốn tôm thịt tươi mát, kết hợp bún tươi, rau sống và bánh tráng mềm, ăn kèm nước chấm pha chua ngọt với đậu phộng giã.\",\"ingredients\":\"Bánh tráng, Bún tươi, Tôm tươi, Thịt heo luộc, Rau sống (xà lách, húng quế, rau thơm), Đậu phộng rang, Nước mắm, Đường, Chanh, Tỏi băm, Ớt băm\",\"steps\":\"1: Luộc tôm với chút muối 3 phút, bóc vỏ.,2: Luộc thịt heo, thái lát mỏng.,3: Ngâm bánh tráng nhanh qua nước, trải ra mâm.,4: Xếp bún, rau sống, tôm và thịt vào bánh tráng.,5: Cuốn bánh tròn gọn, đảm bảo nhân không rơi ra.,6: Pha nước chấm: nước mắm, đường, chanh, tỏi, ớt, thêm đậu phộng giã.,7: Dọn gỏi cuốn kèm nước chấm.\",\"imageUrl\":\"/static_resource/public/upload/recipes/fae9e216-e9a3-4a62-a8f0-ac95b5b08aa1_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 29, '2026-01-06 11:13:48.000000', 29, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì thịt nướng\",\"description\":\"Bánh mì thịt nướng thơm lừng, thịt heo ướp thấm gia vị, nướng than hoa, kèm rau sống, đồ chua và nước sốt đặc trưng.\",\"ingredients\":\"Bánh mì, Thịt heo thăn, Tỏi băm, Hành tím băm, Nước mắm, Đường, Tiêu, Dưa leo, Cà rốt ngâm chua, Rau thơm\",\"steps\":\"1: Thái thịt heo mỏng, ướp với tỏi, hành tím, nước mắm, đường, tiêu 15 phút.,2: Nướng thịt trên bếp than hoặc chảo nướng 8–10 phút đến vàng đều.,3: Cắt bánh mì dọc, phết chút bơ hoặc mayonnaise.,4: Xếp thịt nướng, rau thơm, dưa leo, cà rốt ngâm vào bánh mì.,5: Ép nhẹ và dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/d2757c4b-b578-4b8c-b913-e7a23d905066_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 30, '2026-01-06 11:13:48.000000', 30, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hotdog tự làm\",\"description\":\"Hotdog với xúc xích nướng, bánh mì mềm, sốt cà chua và mayonnaise, thêm hành phi và dưa leo, dễ làm cho bữa ăn nhanh hoặc tiệc nhỏ.\",\"ingredients\":\"Bánh mì hotdog, Xúc xích, Dưa leo thái lát, Cà chua thái lát, Hành phi, Sốt cà chua, Mayonnaise\",\"steps\":\"1: Nướng hoặc chiên xúc xích 5–7 phút đến khi chín vàng.,2: Cắt bánh mì hotdog, phết sốt cà chua và mayonnaise.,3: Xếp xúc xích, dưa leo, cà chua và rắc hành phi lên trên.,4: Ép nhẹ bánh và dùng ngay khi còn nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/2a8a3459-1530-4835-8470-c15cb966c03a_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 31, '2026-01-06 11:14:40.000000', 31, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh bông lan trứng muối\",\"description\":\"Bánh bông lan mềm mịn, thơm béo trứng, kết hợp lớp trứng muối mặn ngọt, thích hợp làm quà hoặc tiệc nhỏ.\",\"ingredients\":\"Bột mì, Trứng gà, Đường, Bơ lạt, Trứng muối, Sữa tươi không đường, Muối\",\"steps\":\"1: Tách lòng đỏ và lòng trắng trứng gà, đánh bông lòng trắng với 50g đường đến mềm mịn.,2: Đánh lòng đỏ với 50g đường, thêm sữa và bơ đã đun chảy, khuấy đều.,3: Rây bột mì vào hỗn hợp lòng đỏ, trộn nhẹ nhàng.,4: Trộn 1/3 lòng trắng vào hỗn hợp bột, sau đó trộn nhẹ phần còn lại.,5: Đổ bột vào khuôn đã lót giấy nướng, xếp trứng muối lên mặt.,6: Nướng 170°C trong 25–30 phút đến vàng đều, để nguội trước khi cắt.\",\"imageUrl\":\"/static_resource/public/upload/recipes/aba87f53-0216-4af3-844e-92c6d2e1e615_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 32, '2026-01-06 11:14:40.000000', 32, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Pudding socola\",\"description\":\"Pudding socola mềm mịn, thơm ngọt béo, làm nhanh, thích hợp tráng miệng cho cả gia đình.\",\"ingredients\":\"Socola đen, Sữa tươi, Đường, Bột bắp, Trứng gà, Vanilla\",\"steps\":\"1: Hòa bột bắp với 50ml sữa lạnh, đánh tan.,2: Đun sữa còn lại với socola và đường, khuấy tan, để sôi nhẹ.,3: Đổ bột bắp vào nồi socola, khuấy đều trên lửa nhỏ đến sệt.,4: Đánh trứng, đổ từ từ vào nồi socola, khuấy nhanh để không bị chín vón.,5: Đổ pudding vào cốc, để nguội, sau đó cho vào tủ lạnh 1–2 giờ trước khi dùng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/e0e4596c-3b67-4397-84e0-8a7ca7b8fd59_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 33, '2026-01-06 11:14:40.000000', 33, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Chè đậu xanh nước cốt dừa\",\"description\":\"Chè đậu xanh bùi, thơm mùi nước cốt dừa, ngọt thanh, dùng nóng hoặc lạnh đều ngon.\",\"ingredients\":\"Đậu xanh cà vỏ, Đường, Nước cốt dừa, Muối, Lá dứa\",\"steps\":\"1: Ngâm đậu xanh 2 giờ trước khi nấu, sau đó rửa sạch.,2: Đun đậu xanh với nước 500ml, thêm lá dứa, nấu sôi 20 phút đến đậu mềm.,3: Thêm đường và 1g muối, khuấy đều 5 phút.,4: Đổ nước cốt dừa vào, đun 5 phút nữa, tắt bếp.,5: Dọn chè ra chén, có thể rắc thêm dừa nạo hoặc hạt sen.\",\"imageUrl\":\"/static_resource/public/upload/recipes/e81ec92e-5ecd-42c8-9160-80e4ecfd1b99_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 34, '2026-01-06 11:14:40.000000', 34, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Sinh tố bơ\",\"description\":\"Sinh tố bơ mịn, thơm béo, ngọt thanh, thích hợp uống vào buổi sáng hoặc trưa.\",\"ingredients\":\"Quả bơ chín, Sữa đặc có đường, Sữa tươi không đường, Đá viên\",\"steps\":\"1: Bơ gọt vỏ, bỏ hạt, thái miếng.,2: Cho bơ, sữa đặc, sữa tươi và đá viên vào máy xay sinh tố.,3: Xay nhuyễn mịn 1–2 phút, rót ra ly, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/recipes/795bba20-7121-485b-b8be-6171c93127b8_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 35, '2026-01-06 11:14:40.000000', 35, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà sữa trân châu\",\"description\":\"Trà sữa thơm vị trà đen, ngọt béo, kết hợp trân châu dai dai, làm tại nhà đơn giản.\",\"ingredients\":\"Trà đen túi lọc, Nước sôi, Sữa đặc có đường, Trân châu đen, Đường nâu, Đá viên\",\"steps\":\"1: Pha trà túi lọc với 200ml nước sôi, để 5 phút.,2: Luộc trân châu theo hướng dẫn gói, trộn với đường nâu.,3: Cho trà, sữa đặc, đá viên và trân châu vào ly, khuấy đều, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/recipes/49f33ad6-f527-45d8-802e-6ba917cb4cb0_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 36, '2026-01-06 11:14:40.000000', 36, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Kimchi Hàn Quốc\",\"description\":\"Kimchi cải thảo cay nồng, lên men tự nhiên, dùng kèm cơm, món ăn truyền thống Hàn Quốc.\",\"ingredients\":\"Cải thảo, Muối hạt, Cà rốt, Hành lá, Bột ớt Hàn Quốc, Tỏi băm, Gừng băm, Nước mắm Hàn Quốc (hoặc mắm truyền thống)\",\"steps\":\"1: Cắt cải thảo thành miếng vừa ăn, rửa sạch.,2: Rắc muối hạt lên cải thảo, trộn đều, ướp 2 giờ cho mềm.,3: Rửa lại cải thảo, để ráo.,4: Cắt cà rốt, hành lá, trộn cùng bột ớt, tỏi, gừng, nước mắm thành hỗn hợp gia vị.,5: Trộn cải thảo với hỗn hợp gia vị, đảm bảo đều từng lá.,6: Đóng vào hũ kín, để nhiệt độ phòng 1–2 ngày cho lên men, sau đó bảo quản tủ lạnh.\",\"imageUrl\":\"/static_resource/public/upload/recipes/6206b8d6-464c-4618-962a-537b4357fb92_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 37, '2026-01-06 11:14:40.000000', 37, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Sushi cuộn cơ bản (Maki)\",\"description\":\"Sushi Maki cuộn rong biển với cơm, cá tươi hoặc rau, ăn kèm nước tương và wasabi, món ăn đặc trưng Nhật Bản.\",\"ingredients\":\"Gạo Nhật, Nước, Giấm gạo, Đường, Muối, Rong biển (Nori), Cá hồi tươi, Dưa leo\",\"steps\":\"1: Vo gạo Nhật nhiều lần, nấu với 150ml nước đến chín mềm.,2: Trộn gạo chín với giấm, đường, muối, để nguội.,3: Trải tấm rong biển lên thảm tre, dàn gạo đều, để chừa 1cm ở mép trên.,4: Xếp cá hồi và dưa leo theo đường ngang gần mép dưới.,5: Cuộn chặt sushi bằng thảm tre, ấn nhẹ để cố định.,6: Cắt thành 6–8 miếng, dùng kèm nước tương và wasabi.\",\"imageUrl\":\"/static_resource/public/upload/recipes/4da126af-46a7-4024-b600-1587e7b5f580_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 38, '2026-01-06 11:14:40.000000', 38, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Ramen Nhật Bản\",\"description\":\"Món mì ramen với nước dùng thơm ngọt từ xương, kết hợp mì tươi, trứng luộc, thịt lợn, nấm và hành lá.\",\"ingredients\":\"Xương heo, Thịt ba chỉ heo, Mì ramen tươi, Trứng, Hành lá, Nấm shiitake, Nước tương, Miso\",\"steps\":\"1: Rửa xương heo, chần nước sôi 5 phút, rửa lại.,2: Đun xương với nước 1,5 lít, hớt bọt, ninh lửa nhỏ 45 phút.,3: Luộc trứng 7 phút, bóc vỏ.,4: Xào thịt ba chỉ và nấm, nêm chút nước tương.,5: Trần mì ramen trong nước sôi 2 phút.,6: Chia mì ra tô, chan nước dùng, xếp thịt, nấm, trứng, rắc hành lá.\",\"imageUrl\":\"/static_resource/public/upload/recipes/50740899-3791-44a8-a86c-b31e21795b8e_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 39, '2026-01-06 11:14:40.000000', 39, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bibimbap Hàn Quốc\",\"description\":\"Cơm trộn Bibimbap với rau xào, thịt bò ướp, trứng ốp la, ăn kèm sốt Gochujang cay đặc trưng Hàn Quốc.\",\"ingredients\":\"Cơm trắng, Thịt bò băm, Cà rốt, Rau bina, Giá đỗ, Trứng, Gochujang, Dầu mè\",\"steps\":\"1: Xào thịt bò với chút nước tương và tỏi băm.,2: Xào rau bina, cà rốt, giá đỗ riêng từng loại với ít muối.,3: Đun cơm nóng, chia ra tô.,4: Xếp các loại rau, thịt lên trên cơm theo từng phần riêng.,5: Chiên trứng ốp la, đặt lên giữa, thêm 1 thìa Gochujang.,6: Rưới dầu mè, trộn đều trước khi ăn.\",\"imageUrl\":\"/static_resource/public/upload/recipes/de208446-d6ea-4764-8043-38650e9075b1_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 40, '2026-01-06 11:14:40.000000', 40, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mochi Nhật Bản nhân đậu đỏ\",\"description\":\"Bánh Mochi mềm dẻo, nhân đậu đỏ ngọt thanh, món tráng miệng truyền thống Nhật Bản.\",\"ingredients\":\"Bột Mochiko (bột gạo nếp Nhật), Đường, Nước, Nhân đậu đỏ, Bột bắp\",\"steps\":\"1: Trộn bột Mochiko, đường và nước thành hỗn hợp mịn.,2: Hấp bột 10–12 phút đến khi dẻo và trong.,3: Rắc bột bắp lên mặt thớt, nhồi bột nóng, chia thành từng viên nhỏ.,4: Ấn dẹp viên bột, đặt nhân đậu đỏ vào giữa, vo tròn lại.,5: Rắc bột bắp lên ngoài để chống dính, dùng ngay hoặc bảo quản trong hộp kín.\",\"imageUrl\":\"/static_resource/public/upload/recipes/1d8eeaad-c270-4e19-80d6-b55562ef45ce_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 41, '2026-01-06 11:15:16.000000', 41, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mojito chanh bạc hà (không cồn)\",\"description\":\"Mojito không cồn, thơm mát vị bạc hà và chanh, thích hợp giải khát ngày hè.\",\"ingredients\":\"Chanh tươi, Lá bạc hà, Đường, Nước soda, Đá viên\",\"steps\":\"1: Cắt chanh thành lát mỏng, để riêng vài lát trang trí.,2: Cho đường, lá bạc hà và chanh vào cốc, dầm nhẹ để ra nước cốt và tinh dầu bạc hà.,3: Thêm đá viên đầy cốc.,4: Rót nước soda vào, khuấy nhẹ để hoà đều vị.,5: Trang trí với lát chanh và lá bạc hà, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/recipes/83c2c9a1-b36e-4445-9b14-18cf530bd32c_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 42, '2026-01-06 11:15:16.000000', 42, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Smoothie dâu tây chuối\",\"description\":\"Sinh tố dâu chuối mềm mịn, ngọt thanh, giàu vitamin, thích hợp uống sáng hoặc sau tập thể dục.\",\"ingredients\":\"Dâu tây tươi, Chuối chín, Sữa tươi không đường, Sữa chua, Đá viên\",\"steps\":\"1: Rửa sạch dâu tây, bỏ cuống.,2: Chuối bóc vỏ, cắt khúc.,3: Cho dâu, chuối, sữa tươi, sữa chua và đá viên vào máy xay sinh tố.,4: Xay nhuyễn 1–2 phút đến mịn, không còn cục.,5: Rót ra ly, có thể trang trí với vài lát dâu tươi.\",\"imageUrl\":\"/static_resource/public/upload/recipes/571b7ce1-ca92-42e4-8a24-bd78df05896c_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 43, '2026-01-06 11:15:16.000000', 43, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cà phê kiểu Ý (Espresso)\",\"description\":\"Espresso đậm đặc, hương thơm nồng nàn, cơ bản để làm các món cà phê Ý khác như Latte hoặc Cappuccino.\",\"ingredients\":\"Hạt cà phê rang xay, Nước nóng\",\"steps\":\"1: Xay hạt cà phê mịn vừa, nặng tay để chiết xuất tốt.,2: Cho cà phê vào tay cầm máy pha espresso, nén chặt.,3: Máy pha ở 90–95°C, chiết xuất 30 ml espresso trong 25–30 giây.,4: Rót espresso ra cốc nhỏ, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/95985b56-3704-4224-aeda-c9ebc859e53a_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 44, '2026-01-06 11:15:16.000000', 44, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà nóng Chai Masala Ấn Độ\",\"description\":\"Trà Masala Ấn Độ thơm nồng hương gia vị, pha với sữa béo, thích hợp uống buổi sáng hoặc chiều tối.\",\"ingredients\":\"Trà đen, Sữa tươi, Gừng tươi thái lát, Quế, Đinh hương, Hạt tiêu đen, Đường\",\"steps\":\"1: Cho trà đen, gừng, quế, đinh hương, hạt tiêu và 100ml nước vào nồi, đun sôi 5 phút.,2: Thêm 200ml sữa, đun lửa nhỏ 3–5 phút, không để trào.,3: Lọc trà ra cốc, thêm đường vừa khẩu vị, khuấy đều.\",\"imageUrl\":\"/static_resource/public/upload/recipes/49217026-dbcf-4837-8c6c-e5386189a35d_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 45, '2026-01-06 11:15:16.000000', 45, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Smoothie xoài dừa kiểu Thái\",\"description\":\"Smoothie xoài dừa thơm mát, ngọt thanh, kết hợp sữa dừa và xoài chín, đặc trưng đồ uống Thái Lan.\",\"ingredients\":\"Xoài chín, Sữa dừa, Sữa tươi không đường, Đá viên, Mật ong\",\"steps\":\"1: Xoài gọt vỏ, cắt miếng.,2: Cho xoài, sữa dừa, sữa tươi, mật ong và đá viên vào máy xay sinh tố.,3: Xay nhuyễn 1–2 phút, rót ra ly, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/recipes/dbabead5-c4bd-43d6-8b4c-b266a3982947_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 46, '2026-01-06 11:15:16.000000', 46, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Matcha Latte Nhật Bản\",\"description\":\"Matcha Latte thơm mát, kết hợp bột trà xanh Nhật Bản với sữa nóng, tạo vị ngọt dịu và màu xanh tự nhiên.\",\"ingredients\":\"Bột matcha Nhật Bản, Nước nóng 70°C, Sữa tươi không đường, Đường\",\"steps\":\"1: Rây bột matcha vào bát để tránh vón cục.,2: Thêm nước nóng 70°C, đánh đều bằng chổi tre hoặc máy đánh cho bột tan hết.,3: Đun nóng sữa, đánh bông nếu muốn bọt mềm.,4: Đổ sữa vào matcha, khuấy nhẹ, thêm đường theo khẩu vị.,5: Rót ra ly, trang trí bọt sữa trên mặt nếu thích, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/53104ecf-f167-4359-a2fd-92da73346bf6_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 47, '2026-01-06 11:15:16.000000', 47, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà Ô Long Trân Châu\",\"description\":\"Trà Ô Long trân châu kiểu Đài Loan, thơm trà, dai trân châu, kết hợp vị ngọt vừa phải.\",\"ingredients\":\"Trà Ô Long túi lọc, Trân châu đen, Nước, Đường nâu, Sữa tươi\",\"steps\":\"1: Luộc trân châu trong nước sôi 15 phút, để riêng trong nước đường nâu 5 phút.,2: Pha trà Ô Long với 200 ml nước nóng 3–5 phút, lấy nước trà.,3: Cho trân châu vào ly, thêm trà đã pha.,4: Rót sữa tươi lên trên, khuấy nhẹ hoặc dùng ống hút lớn.\",\"imageUrl\":\"/static_resource/public/upload/recipes/d6f6fbc5-ea28-4d5e-9287-6830a1f5c6ac_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 48, '2026-01-06 11:15:16.000000', 48, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Chocolate nóng kiểu Bỉ\",\"description\":\"Chocolate nóng đậm đặc, béo ngậy, dùng làm món uống sáng hoặc giải khát lạnh, trang trí kem tươi.\",\"ingredients\":\"Socola đen 70%, Sữa tươi, Đường, Kem tươi\",\"steps\":\"1: Cắt socola thành miếng nhỏ.,2: Đun sữa và đường trên lửa nhỏ, không để sôi.,3: Cho socola vào sữa nóng, khuấy đều cho tan hết.,4: Rót ra ly, thêm kem tươi lên trên, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/3c3fe43f-683c-4beb-9ae6-f04a1c521b17_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 49, '2026-01-06 11:15:16.000000', 49, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Frappuccino cà phê kiểu Mỹ\",\"description\":\"Đồ uống cà phê lạnh kiểu Starbucks, kết hợp espresso, đá xay nhuyễn, sữa và siro ngọt.\",\"ingredients\":\"Espresso, Sữa tươi, Đá viên, Siro caramel hoặc vani, Kem tươi\",\"steps\":\"1: Cho đá viên vào máy xay sinh tố.,2: Thêm espresso, sữa và siro.,3: Xay nhuyễn đến mịn, rót ra ly.,4: Thêm kem tươi lên trên, có thể rưới thêm siro trang trí.\",\"imageUrl\":\"/static_resource/public/upload/recipes/77436ff6-41aa-4b1f-9c6d-f67e7b6a4159_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 50, '2026-01-06 11:15:16.000000', 50, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà bạc hà chanh kiểu Morocco\",\"description\":\"Trà xanh kết hợp lá bạc hà tươi và chanh, thơm mát, đặc trưng phong cách Morocco.\",\"ingredients\":\"Trà xanh Trung Quốc/Marocco, Lá bạc hà tươi, Nước sôi, Đường, Chanh cắt lát\",\"steps\":\"1: Rửa sạch lá bạc hà và chanh.,2: Cho trà xanh vào ấm, rót 200 ml nước sôi, ủ 3–5 phút.,3: Thêm lá bạc hà, đường và phần nước còn lại, đun 2–3 phút.,4: Rót trà ra cốc, thêm lát chanh trang trí, dùng nóng hoặc để nguội.\",\"imageUrl\":\"/static_resource/public/upload/recipes/752d2e2a-5b6b-4377-a9b8-7b715353fc5e_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 11, '2026-01-06 11:34:38.000000', 51, 'RECIPE', 'RECIPE_UPDATE', '{\"title\":\"Cá chiên giòn\",\"description\":\"Cá chiên giòn là món ăn đơn giản nhưng hấp dẫn, với lớp vỏ vàng giòn, thịt cá mềm ngọt bên trong, thường ăn kèm nước mắm pha chua ngọt và rau sống.\",\"ingredients\":\"Cá diêu hồng, Bột chiên xù, Bột mì, Trứng gà, Dầu ăn, Muối, Tiêu, Chanh\",\"steps\":\"1: Rửa sạch cá, khứa vài đường trên thân, ướp muối và tiêu 5 phút.,2: Nhúng cá qua bột mì, trứng, sau đó lăn bột chiên xù.,3: Chiên cá ngập dầu đến vàng giòn, vớt ra để ráo.,4: Dùng kèm nước mắm pha chua ngọt và chanh.\",\"imageUrl\":\"/static_resource/public/upload/recipes/5b60c029-6e46-4bcf-b84a-637b2eb469ed_f.ext\"}');
INSERT INTO `outbox_events` VALUES (b'1', 51, '2026-01-06 12:47:07.000000', 52, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Đùi gà chiên giòn kiểu KFC\",\"description\":\"Đùi gà chiên giòn kiểu KFC\",\"ingredients\":\"Gà\",\"steps\":\"1: Bước 1\",\"imageUrl\":\"/static_resource/public/upload/recipes/d35492ea-6b7f-40fd-ac7f-64a37fb197e0_8.jpg\"}');
INSERT INTO `outbox_events` VALUES (b'1', 51, '2026-01-06 15:36:18.000000', 53, 'RECIPE', 'RECIPE_UPDATE', '{\"title\":\"Đùi gà chiên giòn kiểu KFC\",\"description\":\"Đùi gà chiên giòn kiểu KFC\",\"ingredients\":\"Gà\",\"steps\":\"1: Bước 1\",\"imageUrl\":\"/static_resource/public/upload/recipes/d35492ea-6b7f-40fd-ac7f-64a37fb197e0_8.jpg\"}');

-- ----------------------------
-- Table structure for outbox_events_copy1
-- ----------------------------
DROP TABLE IF EXISTS `outbox_events_copy1`;
CREATE TABLE `outbox_events_copy1`  (
  `processed` bit(1) NOT NULL,
  `aggregate_id` bigint NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aggregate_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `event_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outbox_events_copy1
-- ----------------------------
INSERT INTO `outbox_events_copy1` VALUES (b'1', 1, '2026-01-04 19:10:56.000000', 1, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Phở bò Hà Nội truyền thống\",\"description\":\"Phở bò Hà Nội là món ăn đặc trưng của ẩm thực Việt Nam với nước dùng trong, ngọt thanh từ xương bò, thơm mùi quế hồi và gừng nướng. Món ăn đòi hỏi sự tỉ mỉ trong khâu chuẩn bị và ninh nước dùng.\",\"ingredients\":\"Bánh phở tươi, Xương ống bò, Thịt bò nạm, Thịt bò tái, Gừng, Hành tây, Hành tím, Hoa hồi, Quế, Thảo quả, Đinh hương, Nước mắm, Muối, Đường phèn, Hành lá, Rau mùi, Tiêu\",\"steps\":\"1: Rửa sạch xương ống bò với muối, chần qua nước sôi khoảng 5 phút để loại bỏ mùi hôi và tạp chất, sau đó rửa lại bằng nước lạnh.,2: Cho xương bò vào nồi lớn, đổ khoảng 3 lít nước, đun sôi rồi hạ lửa nhỏ, hớt bọt liên tục để nước dùng trong.,3: Nướng gừng, hành tây và hành tím trực tiếp trên lửa cho cháy xém vỏ, sau đó cạo sạch lớp cháy và đập dập gừng.,4: Rang hoa hồi, quế, thảo quả và đinh hương trên chảo nóng cho dậy mùi thơm, sau đó cho vào túi vải hoặc lưới lọc.,5: Cho gừng, hành nướng và túi gia vị vào nồi nước dùng, tiếp tục ninh xương ở lửa nhỏ trong khoảng 2–2,5 tiếng.,6: Cho thịt bò nạm vào nồi, nấu thêm 30 phút đến khi thịt mềm, vớt ra để nguội rồi thái lát mỏng.,7: Nêm nước mắm, muối và đường phèn vào nồi nước dùng, nếm lại cho vị ngọt thanh, mặn vừa.,8: Trần bánh phở qua nước sôi khoảng 10–15 giây, cho vào tô. Xếp thịt nạm và thịt bò tái lên trên.,9: Chan nước dùng đang sôi vào tô phở, rắc hành lá, rau mùi và tiêu lên trên, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/recipes/701c23f9-d2fc-4bac-8c09-b62fbef7f1fc_f.ext\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 2, '2026-01-04 19:10:57.000000', 2, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bún bò Huế\",\"description\":\"Bún bò Huế là món ăn đặc trưng của xứ Huế với nước dùng đậm đà, cay nồng từ sả và ớt, kết hợp với bún tươi mềm và các loại thịt bò thơm ngon.\",\"ingredients\":\"Bún Huế, Xương bò, Thịt bò đùi, Sả, Hành tím, Ớt tươi, Mắm ruốc Huế, Muối, Đường, Hành lá, Rau húng quế\",\"steps\":\"1: Rửa sạch xương bò, chần qua nước sôi để loại bỏ tạp chất.,2: Đun xương bò với nước khoảng 1 giờ, hớt bọt để nước dùng trong.,3: Nướng sả, hành tím, ớt trên lửa cho dậy mùi, sau đó giã nhỏ.,4: Cho hỗn hợp sả, hành, ớt vào nồi nước dùng, thêm mắm ruốc Huế, muối, đường và ninh thêm 30 phút.,5: Luộc thịt bò, thái lát mỏng khi nguội.,6: Trần bún qua nước sôi, cho vào tô, xếp thịt bò lên trên.,7: Chan nước dùng nóng lên bún, rắc hành lá và rau húng quế, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 3, '2026-01-04 19:10:57.000000', 3, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mì Quảng Đà Nẵng\",\"description\":\"Mì Quảng là món ăn đặc sản miền Trung với sợi mì vàng, nước dùng đậm đà, thường ăn kèm tôm, thịt, trứng và rau sống.\",\"ingredients\":\"Mì Quảng, Tôm tươi, Thịt heo ba chỉ, Trứng cút, Hành tây, Đậu phộng rang, Rau sống các loại, Nước mắm, Đường, Ớt bột\",\"steps\":\"1: Luộc tôm, thịt heo, trứng cút, thái thịt heo mỏng.,2: Phi thơm hành tây với dầu, thêm tôm và thịt, nêm nước mắm, đường, ớt bột.,3: Chần mì qua nước sôi, xếp mì vào tô.,4: Đổ hỗn hợp tôm thịt lên mì, thêm trứng cút, rắc đậu phộng rang và rau sống.,5: Chan nước dùng ít để mì thấm, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 4, '2026-01-04 19:10:57.000000', 4, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hủ tiếu Nam Vang\",\"description\":\"Hủ tiếu Nam Vang là món mì nước đặc trưng với sợi hủ tiếu dai, nước dùng ngọt thanh, kết hợp hải sản, thịt heo và rau sống tươi ngon.\",\"ingredients\":\"Hủ tiếu, Tôm, Thịt heo nạc, Mực, Hành tím, Rau húng quế, Giá đỗ, Nước mắm, Tiêu\",\"steps\":\"1: Luộc tôm, mực, thái thịt heo mỏng.,2: Đun nước dùng từ xương heo, nêm nước mắm, muối, đường.,3: Chần hủ tiếu qua nước sôi, cho vào tô.,4: Xếp thịt, tôm, mực lên hủ tiếu, thêm giá đỗ và rau sống.,5: Chan nước dùng nóng, rắc tiêu và hành phi, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 5, '2026-01-04 19:10:57.000000', 5, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi cuốn tôm thịt\",\"description\":\"Gỏi cuốn là món ăn nhẹ, tươi mát, gồm bánh tráng cuốn tôm, thịt, rau sống và bún tươi, thường ăn kèm nước chấm đậm đà.\",\"ingredients\":\"Bánh tráng, Tôm luộc, Thịt heo luộc, Bún tươi, Rau xà lách, Rau mùi, Húng quế, Đậu phộng rang, Nước mắm chua ngọt\",\"steps\":\"1: Ngâm bánh tráng vào nước ấm cho mềm.,2: Xếp rau, bún, tôm, thịt lên bánh tráng.,3: Cuộn chặt bánh tráng, cắt vừa ăn.,4: Rắc đậu phộng rang, chấm với nước mắm chua ngọt.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 6, '2026-01-04 19:10:57.000000', 6, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì thịt nướng\",\"description\":\"Bánh mì thịt nướng là món ăn đường phố nổi tiếng với bánh mì giòn rụm, nhân thịt heo nướng thơm phức, rau sống và nước sốt đậm đà.\",\"ingredients\":\"Bánh mì baguette, Thịt heo nạc vai, Hành tây, Dưa leo, Cà rốt, Rau mùi, Tỏi, Nước mắm, Đường, Tiêu\",\"steps\":\"1: Ướp thịt với tỏi, nước mắm, đường, tiêu và hành tây băm nhỏ khoảng 15 phút.,2: Nướng thịt trên than hoặc chảo nướng đến khi vàng đều.,3: Gọt và bào cà rốt, dưa leo thành sợi, trộn với chút đường và giấm.,4: Cắt bánh mì, cho nhân thịt, rau sống, cà rốt và dưa leo vào, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 7, '2026-01-04 19:10:57.000000', 7, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì chảo\",\"description\":\"Bánh mì chảo là món ăn sáng phổ biến với trứng, pate, xúc xích và thịt nướng được phục vụ trong chảo nhỏ kèm bánh mì giòn.\",\"ingredients\":\"Bánh mì, Trứng gà, Pate, Xúc xích, Thịt nướng, Hành lá, Tiêu, Bơ\",\"steps\":\"1: Đun nóng chảo, cho bơ, trứng vào chiên vừa chín.,2: Cho pate, xúc xích và thịt nướng vào chảo, đun nóng.,3: Rắc hành lá, tiêu, dùng kèm bánh mì giòn.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 8, '2026-01-04 19:10:57.000000', 8, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Burger bò\",\"description\":\"Burger bò là món ăn nhanh phổ biến với patty bò thơm, phô mai tan chảy, rau tươi và sốt đặc trưng, phục vụ trong bánh mì hamburger mềm.\",\"ingredients\":\"Bánh hamburger, Thịt bò băm, Phô mai cheddar, Xà lách, Cà chua, Dưa leo, Sốt mayonnaise, Tiêu\",\"steps\":\"1: Nặn thịt bò thành patty, nêm muối, tiêu, áp chảo đến chín vừa.,2: Nướng sơ bánh hamburger, phết sốt mayonnaise.,3: Xếp patty, phô mai, xà lách, cà chua, dưa leo vào bánh, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 9, '2026-01-04 19:10:57.000000', 9, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hotdog kiểu Mỹ\",\"description\":\"Hotdog là món ăn nhanh với xúc xích hấp nướng kèm bánh mì mềm, rau củ và sốt đặc trưng, tiện lợi và nhanh chóng.\",\"ingredients\":\"Bánh hotdog, Xúc xích, Hành tây, Dưa leo, Sốt ketchup, Sốt mayonnaise, Tiêu\",\"steps\":\"1: Hấp hoặc nướng xúc xích đến chín.,2: Nướng sơ bánh hotdog, xẻ giữa.,3: Cho xúc xích vào bánh, thêm hành tây, dưa leo và sốt.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 10, '2026-01-04 19:10:57.000000', 10, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gà rán kiểu Hàn Quốc\",\"description\":\"Gà rán Hàn Quốc giòn tan, thơm lừng với lớp sốt cay ngọt đặc trưng, thường ăn kèm cơm hoặc khoai tây chiên.\",\"ingredients\":\"Đùi gà, Bột mì, Bột chiên giòn, Trứng gà, Tỏi băm, Sốt gochujang, Mật ong, Dầu ăn\",\"steps\":\"1: Ướp gà với tỏi, muối, tiêu 10 phút.,2: Nhúng gà qua trứng, bột mì và bột chiên giòn.,3: Chiên gà ngập dầu đến vàng giòn.,4: Trộn sốt gochujang và mật ong, rưới lên gà nóng, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 11, '2026-01-04 19:10:58.000000', 11, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá chiên giòn\",\"description\":\"Cá chiên giòn là món ăn đơn giản nhưng hấp dẫn, với lớp vỏ vàng giòn, thịt cá mềm ngọt bên trong, thường ăn kèm nước mắm pha chua ngọt và rau sống.\",\"ingredients\":\"Cá diêu hồng, Bột chiên xù, Bột mì, Trứng gà, Dầu ăn, Muối, Tiêu, Chanh\",\"steps\":\"1: Rửa sạch cá, khứa vài đường trên thân, ướp muối và tiêu 5 phút.,2: Nhúng cá qua bột mì, trứng, sau đó lăn bột chiên xù.,3: Chiên cá ngập dầu đến vàng giòn, vớt ra để ráo.,4: Dùng kèm nước mắm pha chua ngọt và chanh.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 12, '2026-01-04 19:10:58.000000', 12, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá kho tộ\",\"description\":\"Cá kho tộ là món ăn truyền thống miền Nam, cá được kho với nước mắm, đường và gia vị trong nồi đất, thịt cá mềm, thấm vị đậm đà.\",\"ingredients\":\"Cá thu, Hành tím, Tỏi, Nước mắm, Đường, Tiêu, Ớt sừng, Dầu ăn\",\"steps\":\"1: Rửa cá, cắt khúc vừa ăn, ướp muối, tiêu 10 phút.,2: Phi thơm hành tím, tỏi, cho đường vào thắng đến màu cánh gián.,3: Cho cá vào nồi đất, thêm nước mắm, tiêu, ớt và dầu ăn, kho lửa nhỏ 30 phút.,4: Dùng nóng với cơm trắng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 13, '2026-01-04 19:10:58.000000', 13, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Salad Nga\",\"description\":\"Salad Nga là món salad lạnh với khoai tây, cà rốt, đậu Hà Lan, trứng và mayonnaise, thường dùng làm khai vị hoặc ăn nhẹ.\",\"ingredients\":\"Khoai tây, Cà rốt, Đậu Hà Lan, Trứng luộc, Mayonnaise, Muối, Tiêu\",\"steps\":\"1: Luộc khoai tây, cà rốt, trứng, để nguội, thái hạt lựu.,2: Trộn khoai tây, cà rốt, đậu Hà Lan, trứng với mayonnaise, muối và tiêu.,3: Làm lạnh trước khi dùng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 14, '2026-01-04 19:10:58.000000', 14, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Salad Caesar\",\"description\":\"Salad Caesar là món salad trộn với rau xà lách, gà nướng, phô mai Parmesan và sốt Caesar béo ngậy, thường dùng làm món khai vị hoặc ăn nhẹ.\",\"ingredients\":\"Xà lách Romaine, Ức gà, Bánh mì nướng, Phô mai Parmesan bào, Sốt Caesar, Tiêu, Muối\",\"steps\":\"1: Nướng ức gà, thái lát mỏng.,2: Xé xà lách, trộn với bánh mì nướng, gà, phô mai Parmesan.,3: Rưới sốt Caesar, trộn đều, nêm muối tiêu vừa ăn.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 15, '2026-01-04 19:10:58.000000', 15, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi đu đủ\",\"description\":\"Gỏi đu đủ là món ăn nhẹ, tươi mát với đu đủ xanh bào sợi, tôm, thịt, lạc rang và nước mắm chua ngọt đặc trưng.\",\"ingredients\":\"Đu đủ xanh, Tôm tươi, Thịt ba chỉ, Lạc rang, Tỏi, Ớt tươi, Nước mắm, Đường, Chanh\",\"steps\":\"1: Bào đu đủ xanh thành sợi, rửa sạch, để ráo.,2: Luộc tôm và thịt, thái mỏng.,3: Trộn đu đủ với tôm, thịt, lạc rang, tỏi, ớt, nước mắm, đường, chanh.,4: Dùng ngay, trang trí thêm rau thơm nếu thích.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 16, '2026-01-04 19:10:58.000000', 16, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì kẹp gà nướng\",\"description\":\"Bánh mì kẹp gà nướng với thịt gà thấm gia vị thơm, rau sống tươi mát, sốt mayonnaise nhẹ và ớt băm cay vừa phải. Thích hợp làm bữa sáng hoặc ăn vặt.\",\"ingredients\":\"Bánh mì baguette, Ức gà, Hành tây, Cà rốt, Xà lách, Tỏi băm, Nước tương, Ớt băm, Sốt mayonnaise, Muối, Tiêu\",\"steps\":\"1: Rửa sạch ức gà, thái mỏng, trộn với tỏi băm, nước tương, ớt băm, muối và tiêu. Ướp 15 phút để thịt thấm gia vị.,2: Đun nóng chảo nướng hoặc lò nướng ở 180°C, nướng gà trong 10–12 phút đến khi chín vàng đều.,3: Gọt cà rốt thành sợi, rửa xà lách và hành tây thái lát mỏng.,4: Cắt bánh mì baguette dọc, phết một lớp mayonnaise, xếp xà lách, cà rốt, hành tây và thịt gà nướng vào bánh, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 17, '2026-01-04 19:10:58.000000', 17, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mì Ý sốt bò bằm\",\"description\":\"Spaghetti sốt bò bằm đậm đà với cà chua chín, hành tây phi thơm, tỏi và gia vị Ý, rắc phô mai Parmesan béo ngậy. Phù hợp làm bữa trưa hoặc tối nhanh gọn.\",\"ingredients\":\"Spaghetti, Thịt bò bằm, Cà chua chín, Hành tây, Tỏi băm, Dầu ô liu, Phô mai Parmesan bào, Muối, Tiêu đen\",\"steps\":\"1: Đun nước sôi, luộc spaghetti theo hướng dẫn trên gói, thêm 1 g muối, để ráo.,2: Phi thơm hành tây và tỏi băm với dầu ô liu, cho thịt bò bằm vào xào đến khi thịt săn.,3: Cho cà chua thái nhỏ vào, đun nhỏ lửa 5 phút đến khi sốt sệt, nêm muối và tiêu.,4: Trộn spaghetti với sốt bò bằm, rắc phô mai Parmesan, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 18, '2026-01-04 19:10:58.000000', 18, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá hồi áp chảo sốt cam\",\"description\":\"Cá hồi áp chảo giữ nguyên vị ngọt tự nhiên, kết hợp sốt cam chua ngọt và mật ong, thích hợp cho bữa tối thanh lịch, dễ thực hiện tại nhà.\",\"ingredients\":\"Phi lê cá hồi, Cam tươi, Mật ong, Bơ, Muối, Tiêu đen, Dầu ô liu\",\"steps\":\"1: Ướp cá hồi với muối và tiêu 5 phút.,2: Đun nóng chảo với dầu ô liu và bơ, áp chảo cá 5 phút mỗi mặt đến vàng đều.,3: Vắt cam lấy nước, trộn với mật ong, rưới lên cá khi dùng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 19, '2026-01-04 19:10:58.000000', 19, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gà xào sả ớt\",\"description\":\"Gà xào sả ớt thơm nồng với sả, ớt tươi, hành tỏi, giữ được vị ngọt mềm của thịt gà, ăn kèm cơm trắng rất vừa miệng.\",\"ingredients\":\"Thịt gà (đùi hoặc ức), Sả, Ớt tươi, Tỏi băm, Hành tím, Dầu ăn, Nước mắm, Đường, Tiêu đen\",\"steps\":\"1: Cắt gà miếng vừa ăn, ướp với nước mắm, đường và tiêu 10 phút.,2: Phi thơm sả, ớt, tỏi và hành tím, xào gà trên lửa lớn đến khi chín đều.,3: Nêm nếm lại, dọn nóng với cơm trắng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 20, '2026-01-04 19:10:58.000000', 20, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bò lúc lắc\",\"description\":\"Bò lúc lắc là món ăn ngon, thịt bò thái vuông xào nhanh trên lửa lớn với hành tây, giữ được độ mềm và thơm, dùng kèm khoai tây chiên và rau sống.\",\"ingredients\":\"Thịt bò thăn, Hành tây, Tỏi băm, Dầu ăn, Nước tương, Tiêu đen, Muối\",\"steps\":\"1: Cắt thịt bò thành miếng vuông ~2cm, ướp với nước tương, muối, tiêu 10 phút.,2: Phi tỏi với dầu ăn, xào bò trên lửa lớn nhanh tay khoảng 5 phút, thêm hành tây xắt múi cau.,3: Trộn đều, nêm nếm lại vừa ăn, dùng nóng với cơm hoặc khoai tây chiên.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 21, '2026-01-04 19:10:58.000000', 21, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá chiên giòn sốt me\",\"description\":\"Cá chiên giòn bên ngoài, mềm bên trong, kết hợp sốt me chua ngọt, thơm mùi tỏi ớt, thích hợp làm món chính ăn cùng cơm.\",\"ingredients\":\"Cá diêu hồng, Bột chiên giòn, Trứng gà, Dầu ăn, Me chua, Đường, Nước mắm, Tỏi băm, Ớt băm, Hành lá\",\"steps\":\"1: Rửa sạch cá, khứa vài đường trên thân để thấm gia vị, thấm khô bằng giấy ăn.,2: Ướp cá với một chút muối và tiêu 5 phút.,3: Trộn bột chiên giòn với trứng, lăn cá đều, chuẩn bị chiên.,4: Đun nóng dầu ăn ở 180°C, chiên cá vàng giòn mỗi mặt 6–8 phút.,5: Ngâm me với 30ml nước ấm, lọc lấy nước cốt me, hòa đường và nước mắm.,6: Phi thơm tỏi và ớt, cho nước sốt me vào, đun sôi 2 phút.,7: Chan sốt me lên cá chiên, rắc hành lá cắt nhỏ, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 22, '2026-01-04 19:10:58.000000', 22, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi đu đủ tôm thịt\",\"description\":\"Gỏi đu đủ xanh giòn, kết hợp tôm luộc, thịt ba chỉ và nước mắm chua ngọt, ăn kèm đậu phộng rang giã nhỏ và rau thơm.\",\"ingredients\":\"Đu đủ xanh, Tôm tươi, Thịt ba chỉ, Đậu phộng rang, Cà rốt, Hành tím, Tỏi, Ớt tươi, Đường, Nước mắm, Chanh, Rau thơm (ngò, húng)\",\"steps\":\"1: Gọt vỏ đu đủ, bào sợi, ngâm nước muối 5 phút, để ráo.,2: Luộc tôm với chút muối 3–5 phút, bóc vỏ, giữ lại phần đuôi trang trí.,3: Luộc thịt ba chỉ 10 phút, thái lát mỏng.,4: Bào sợi cà rốt, thái hành tím mỏng.,5: Giã đậu phộng rang thô, băm tỏi và ớt.,6: Pha nước trộn: nước mắm, đường, nước cốt chanh, tỏi và ớt băm, khuấy đều.,7: Trộn đu đủ, cà rốt, thịt và tôm với nước trộn, để 5 phút thấm gia vị.,8: Rắc đậu phộng giã và rau thơm, trang trí tôm lên trên, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 23, '2026-01-04 19:10:59.000000', 23, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mì Quảng gà\",\"description\":\"Mì Quảng với sợi mì dai, nước dùng đậm đà từ gà luộc, ăn kèm tôm, đậu phộng rang, rau sống và bánh tráng nướng giòn.\",\"ingredients\":\"Mì Quảng tươi, Thịt gà đùi, Tôm tươi, Đậu phộng rang, Hành tím, Tỏi, Hành lá, Rau sống (rau răm, húng quế), Nước mắm, Muối, Đường, Bánh tráng nướng\",\"steps\":\"1: Luộc gà với muối và 1 củ hành tím, nước sôi 20 phút, vớt ra để nguội, thái miếng vừa ăn.,2: Luộc tôm với chút muối 3–5 phút, bóc vỏ.,3: Đun nóng dầu, phi tỏi băm thơm, cho nước luộc gà, nêm muối, đường, nước mắm vừa ăn.,4: Trần mì Quảng trong nước sôi 2–3 phút, vớt ra để ráo.,5: Trải mì vào tô, xếp gà, tôm lên trên.,6: Rắc đậu phộng rang giã, hành lá, rau sống và bánh tráng giòn bên cạnh.,7: Chan nước dùng nóng lên mì, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 24, '2026-01-04 19:10:59.000000', 24, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bún bò Huế\",\"description\":\"Bún bò Huế đậm vị cay nồng, nước dùng hầm xương bò và giò heo, kết hợp sả, ớt, mắm ruốc đặc trưng, ăn kèm bún và rau sống.\",\"ingredients\":\"Xương ống bò, Giò heo, Thịt bò nạm, Bún tươi, Sả, Hành tím, Ớt bột, Mắm ruốc Huế, Muối, Đường phèn, Rau sống (rau húng, giá, hành lá), Tiêu\",\"steps\":\"1: Rửa xương bò và giò heo, chần nước sôi 5 phút, rửa lại bằng nước lạnh.,2: Đun 3 lít nước sôi, cho xương và giò vào, hạ lửa nhỏ, hớt bọt liên tục.,3: Nướng sả và hành tím cho thơm, đập dập sả, cắt hành.,4: Rang ớt bột và mắm ruốc nhẹ trên chảo, thêm vào nồi nước dùng.,5: Ninh xương và giò heo lửa nhỏ 2–2,5 tiếng cho ngọt nước.,6: Cho thịt bò nạm vào nấu thêm 30 phút, vớt ra thái lát mỏng.,7: Nêm nước mắm, muối, đường phèn, nếm lại cho vừa ăn.,8: Trần bún qua nước sôi 10 giây, cho vào tô, xếp thịt, giò, chan nước dùng nóng, rắc rau sống và tiêu.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 25, '2026-01-04 19:10:59.000000', 25, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hủ tiếu Nam Vang\",\"description\":\"Hủ tiếu Nam Vang nước trong, ngọt thanh từ xương heo và tôm, kèm thịt heo, tôm, gan và trứng cút, ăn kèm rau sống và giá.\",\"ingredients\":\"Hủ tiếu tươi, Xương heo, Thịt heo nạc, Tôm tươi, Gan heo, Trứng cút, Hành tím, Tỏi băm, Dầu ăn, Nước mắm, Muối, Đường, Rau sống, giá\",\"steps\":\"1: Rửa xương heo, chần qua nước sôi 5 phút.,2: Ninh xương với nước sạch 40 phút, hớt bọt để nước trong.,3: Luộc trứng cút 5 phút, bóc vỏ.,4: Luộc tôm, thịt heo và gan 5–7 phút, thái lát vừa ăn.,5: Phi hành tím và tỏi với dầu thơm, cho vào nồi nước dùng, nêm nước mắm, muối, đường.,6: Trần hủ tiếu trong nước sôi 30 giây, cho vào tô.,7: Xếp thịt, tôm, gan, trứng cút lên hủ tiếu, chan nước dùng, rắc rau sống và giá.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 26, '2026-01-04 19:10:59.000000', 26, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh xèo miền Trung\",\"description\":\"Bánh xèo giòn rụm, nhân tôm, thịt ba chỉ và giá, ăn kèm rau sống và nước mắm pha chua ngọt.\",\"ingredients\":\"Bột gạo, Nước cốt dừa, Tôm tươi, Thịt ba chỉ, Giá đỗ, Hành lá, Dầu ăn, Muối, Đường, Nước mắm, Rau sống (xà lách, húng quế)\",\"steps\":\"1: Pha bột gạo với nước cốt dừa, một chút muối và hành lá băm nhỏ, để 15 phút.,2: Xào thịt ba chỉ thái mỏng và tôm 2–3 phút cho săn.,3: Đun chảo nóng, quét dầu, đổ 1 lớp bột mỏng, thêm nhân tôm, thịt và giá.,4: Đậy nắp, để bánh chín giòn, gập đôi, vớt ra.,5: Pha nước chấm: nước mắm, đường, chanh, tỏi và ớt băm.,6: Dọn bánh xèo với rau sống và nước chấm.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 27, '2026-01-04 19:10:59.000000', 27, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cá kho tộ\",\"description\":\"Cá kho tộ với cá basa hoặc cá diêu hồng, kho trong nồi đất cùng nước mắm, đường, tiêu và hành phi thơm, thịt cá thấm gia vị, màu cánh gián đẹp mắt.\",\"ingredients\":\"Cá basa, Hành tím, Tỏi băm, Nước mắm, Đường, Tiêu, Dầu ăn, Hành lá\",\"steps\":\"1: Rửa cá, khứa vài đường trên mình cá để dễ thấm gia vị.,2: Ướp cá với nước mắm, đường và tiêu 10 phút.,3: Phi hành tím và tỏi với dầu cho thơm.,4: Cho cá vào nồi đất, thêm hành phi, một ít nước, đun sôi.,5: Hạ lửa nhỏ kho cá 25–30 phút, trở cá nhẹ nhàng để không nát.,6: Rắc hành lá cắt khúc, tiêu lên trên trước khi dùng nóng với cơm.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 28, '2026-01-04 19:10:59.000000', 28, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Gỏi cuốn tôm thịt\",\"description\":\"Gỏi cuốn tôm thịt tươi mát, kết hợp bún tươi, rau sống và bánh tráng mềm, ăn kèm nước chấm pha chua ngọt với đậu phộng giã.\",\"ingredients\":\"Bánh tráng, Bún tươi, Tôm tươi, Thịt heo luộc, Rau sống (xà lách, húng quế, rau thơm), Đậu phộng rang, Nước mắm, Đường, Chanh, Tỏi băm, Ớt băm\",\"steps\":\"1: Luộc tôm với chút muối 3 phút, bóc vỏ.,2: Luộc thịt heo, thái lát mỏng.,3: Ngâm bánh tráng nhanh qua nước, trải ra mâm.,4: Xếp bún, rau sống, tôm và thịt vào bánh tráng.,5: Cuốn bánh tròn gọn, đảm bảo nhân không rơi ra.,6: Pha nước chấm: nước mắm, đường, chanh, tỏi, ớt, thêm đậu phộng giã.,7: Dọn gỏi cuốn kèm nước chấm.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 29, '2026-01-04 19:10:59.000000', 29, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh mì thịt nướng\",\"description\":\"Bánh mì thịt nướng thơm lừng, thịt heo ướp thấm gia vị, nướng than hoa, kèm rau sống, đồ chua và nước sốt đặc trưng.\",\"ingredients\":\"Bánh mì, Thịt heo thăn, Tỏi băm, Hành tím băm, Nước mắm, Đường, Tiêu, Dưa leo, Cà rốt ngâm chua, Rau thơm\",\"steps\":\"1: Thái thịt heo mỏng, ướp với tỏi, hành tím, nước mắm, đường, tiêu 15 phút.,2: Nướng thịt trên bếp than hoặc chảo nướng 8–10 phút đến vàng đều.,3: Cắt bánh mì dọc, phết chút bơ hoặc mayonnaise.,4: Xếp thịt nướng, rau thơm, dưa leo, cà rốt ngâm vào bánh mì.,5: Ép nhẹ và dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 30, '2026-01-04 19:10:59.000000', 30, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Hotdog tự làm\",\"description\":\"Hotdog với xúc xích nướng, bánh mì mềm, sốt cà chua và mayonnaise, thêm hành phi và dưa leo, dễ làm cho bữa ăn nhanh hoặc tiệc nhỏ.\",\"ingredients\":\"Bánh mì hotdog, Xúc xích, Dưa leo thái lát, Cà chua thái lát, Hành phi, Sốt cà chua, Mayonnaise\",\"steps\":\"1: Nướng hoặc chiên xúc xích 5–7 phút đến khi chín vàng.,2: Cắt bánh mì hotdog, phết sốt cà chua và mayonnaise.,3: Xếp xúc xích, dưa leo, cà chua và rắc hành phi lên trên.,4: Ép nhẹ bánh và dùng ngay khi còn nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 31, '2026-01-04 19:10:59.000000', 31, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bánh bông lan trứng muối\",\"description\":\"Bánh bông lan mềm mịn, thơm béo trứng, kết hợp lớp trứng muối mặn ngọt, thích hợp làm quà hoặc tiệc nhỏ.\",\"ingredients\":\"Bột mì, Trứng gà, Đường, Bơ lạt, Trứng muối, Sữa tươi không đường, Muối\",\"steps\":\"1: Tách lòng đỏ và lòng trắng trứng gà, đánh bông lòng trắng với 50g đường đến mềm mịn.,2: Đánh lòng đỏ với 50g đường, thêm sữa và bơ đã đun chảy, khuấy đều.,3: Rây bột mì vào hỗn hợp lòng đỏ, trộn nhẹ nhàng.,4: Trộn 1/3 lòng trắng vào hỗn hợp bột, sau đó trộn nhẹ phần còn lại.,5: Đổ bột vào khuôn đã lót giấy nướng, xếp trứng muối lên mặt.,6: Nướng 170°C trong 25–30 phút đến vàng đều, để nguội trước khi cắt.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 32, '2026-01-04 19:10:59.000000', 32, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Pudding socola\",\"description\":\"Pudding socola mềm mịn, thơm ngọt béo, làm nhanh, thích hợp tráng miệng cho cả gia đình.\",\"ingredients\":\"Socola đen, Sữa tươi, Đường, Bột bắp, Trứng gà, Vanilla\",\"steps\":\"1: Hòa bột bắp với 50ml sữa lạnh, đánh tan.,2: Đun sữa còn lại với socola và đường, khuấy tan, để sôi nhẹ.,3: Đổ bột bắp vào nồi socola, khuấy đều trên lửa nhỏ đến sệt.,4: Đánh trứng, đổ từ từ vào nồi socola, khuấy nhanh để không bị chín vón.,5: Đổ pudding vào cốc, để nguội, sau đó cho vào tủ lạnh 1–2 giờ trước khi dùng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 33, '2026-01-04 19:10:59.000000', 33, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Chè đậu xanh nước cốt dừa\",\"description\":\"Chè đậu xanh bùi, thơm mùi nước cốt dừa, ngọt thanh, dùng nóng hoặc lạnh đều ngon.\",\"ingredients\":\"Đậu xanh cà vỏ, Đường, Nước cốt dừa, Muối, Lá dứa\",\"steps\":\"1: Ngâm đậu xanh 2 giờ trước khi nấu, sau đó rửa sạch.,2: Đun đậu xanh với nước 500ml, thêm lá dứa, nấu sôi 20 phút đến đậu mềm.,3: Thêm đường và 1g muối, khuấy đều 5 phút.,4: Đổ nước cốt dừa vào, đun 5 phút nữa, tắt bếp.,5: Dọn chè ra chén, có thể rắc thêm dừa nạo hoặc hạt sen.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 34, '2026-01-04 19:10:59.000000', 34, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Sinh tố bơ\",\"description\":\"Sinh tố bơ mịn, thơm béo, ngọt thanh, thích hợp uống vào buổi sáng hoặc trưa.\",\"ingredients\":\"Quả bơ chín, Sữa đặc có đường, Sữa tươi không đường, Đá viên\",\"steps\":\"1: Bơ gọt vỏ, bỏ hạt, thái miếng.,2: Cho bơ, sữa đặc, sữa tươi và đá viên vào máy xay sinh tố.,3: Xay nhuyễn mịn 1–2 phút, rót ra ly, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 35, '2026-01-04 19:10:59.000000', 35, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà sữa trân châu\",\"description\":\"Trà sữa thơm vị trà đen, ngọt béo, kết hợp trân châu dai dai, làm tại nhà đơn giản.\",\"ingredients\":\"Trà đen túi lọc, Nước sôi, Sữa đặc có đường, Trân châu đen, Đường nâu, Đá viên\",\"steps\":\"1: Pha trà túi lọc với 200ml nước sôi, để 5 phút.,2: Luộc trân châu theo hướng dẫn gói, trộn với đường nâu.,3: Cho trà, sữa đặc, đá viên và trân châu vào ly, khuấy đều, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 36, '2026-01-04 19:23:27.000000', 36, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Kimchi Hàn Quốc\",\"description\":\"Kimchi cải thảo cay nồng, lên men tự nhiên, dùng kèm cơm, món ăn truyền thống Hàn Quốc.\",\"ingredients\":\"Cải thảo, Muối hạt, Cà rốt, Hành lá, Bột ớt Hàn Quốc, Tỏi băm, Gừng băm, Nước mắm Hàn Quốc (hoặc mắm truyền thống)\",\"steps\":\"1: Cắt cải thảo thành miếng vừa ăn, rửa sạch.,2: Rắc muối hạt lên cải thảo, trộn đều, ướp 2 giờ cho mềm.,3: Rửa lại cải thảo, để ráo.,4: Cắt cà rốt, hành lá, trộn cùng bột ớt, tỏi, gừng, nước mắm thành hỗn hợp gia vị.,5: Trộn cải thảo với hỗn hợp gia vị, đảm bảo đều từng lá.,6: Đóng vào hũ kín, để nhiệt độ phòng 1–2 ngày cho lên men, sau đó bảo quản tủ lạnh.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 37, '2026-01-04 19:23:28.000000', 37, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Sushi cuộn cơ bản (Maki)\",\"description\":\"Sushi Maki cuộn rong biển với cơm, cá tươi hoặc rau, ăn kèm nước tương và wasabi, món ăn đặc trưng Nhật Bản.\",\"ingredients\":\"Gạo Nhật, Nước, Giấm gạo, Đường, Muối, Rong biển (Nori), Cá hồi tươi, Dưa leo\",\"steps\":\"1: Vo gạo Nhật nhiều lần, nấu với 150ml nước đến chín mềm.,2: Trộn gạo chín với giấm, đường, muối, để nguội.,3: Trải tấm rong biển lên thảm tre, dàn gạo đều, để chừa 1cm ở mép trên.,4: Xếp cá hồi và dưa leo theo đường ngang gần mép dưới.,5: Cuộn chặt sushi bằng thảm tre, ấn nhẹ để cố định.,6: Cắt thành 6–8 miếng, dùng kèm nước tương và wasabi.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 38, '2026-01-04 19:23:28.000000', 38, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Ramen Nhật Bản\",\"description\":\"Món mì ramen với nước dùng thơm ngọt từ xương, kết hợp mì tươi, trứng luộc, thịt lợn, nấm và hành lá.\",\"ingredients\":\"Xương heo, Thịt ba chỉ heo, Mì ramen tươi, Trứng, Hành lá, Nấm shiitake, Nước tương, Miso\",\"steps\":\"1: Rửa xương heo, chần nước sôi 5 phút, rửa lại.,2: Đun xương với nước 1,5 lít, hớt bọt, ninh lửa nhỏ 45 phút.,3: Luộc trứng 7 phút, bóc vỏ.,4: Xào thịt ba chỉ và nấm, nêm chút nước tương.,5: Trần mì ramen trong nước sôi 2 phút.,6: Chia mì ra tô, chan nước dùng, xếp thịt, nấm, trứng, rắc hành lá.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 39, '2026-01-04 19:23:28.000000', 39, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Bibimbap Hàn Quốc\",\"description\":\"Cơm trộn Bibimbap với rau xào, thịt bò ướp, trứng ốp la, ăn kèm sốt Gochujang cay đặc trưng Hàn Quốc.\",\"ingredients\":\"Cơm trắng, Thịt bò băm, Cà rốt, Rau bina, Giá đỗ, Trứng, Gochujang, Dầu mè\",\"steps\":\"1: Xào thịt bò với chút nước tương và tỏi băm.,2: Xào rau bina, cà rốt, giá đỗ riêng từng loại với ít muối.,3: Đun cơm nóng, chia ra tô.,4: Xếp các loại rau, thịt lên trên cơm theo từng phần riêng.,5: Chiên trứng ốp la, đặt lên giữa, thêm 1 thìa Gochujang.,6: Rưới dầu mè, trộn đều trước khi ăn.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 40, '2026-01-04 19:23:28.000000', 40, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mochi Nhật Bản nhân đậu đỏ\",\"description\":\"Bánh Mochi mềm dẻo, nhân đậu đỏ ngọt thanh, món tráng miệng truyền thống Nhật Bản.\",\"ingredients\":\"Bột Mochiko (bột gạo nếp Nhật), Đường, Nước, Nhân đậu đỏ, Bột bắp\",\"steps\":\"1: Trộn bột Mochiko, đường và nước thành hỗn hợp mịn.,2: Hấp bột 10–12 phút đến khi dẻo và trong.,3: Rắc bột bắp lên mặt thớt, nhồi bột nóng, chia thành từng viên nhỏ.,4: Ấn dẹp viên bột, đặt nhân đậu đỏ vào giữa, vo tròn lại.,5: Rắc bột bắp lên ngoài để chống dính, dùng ngay hoặc bảo quản trong hộp kín.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 41, '2026-01-04 19:35:53.000000', 41, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Mojito chanh bạc hà (không cồn)\",\"description\":\"Mojito không cồn, thơm mát vị bạc hà và chanh, thích hợp giải khát ngày hè.\",\"ingredients\":\"Chanh tươi, Lá bạc hà, Đường, Nước soda, Đá viên\",\"steps\":\"1: Cắt chanh thành lát mỏng, để riêng vài lát trang trí.,2: Cho đường, lá bạc hà và chanh vào cốc, dầm nhẹ để ra nước cốt và tinh dầu bạc hà.,3: Thêm đá viên đầy cốc.,4: Rót nước soda vào, khuấy nhẹ để hoà đều vị.,5: Trang trí với lát chanh và lá bạc hà, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 42, '2026-01-04 19:35:54.000000', 42, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Smoothie dâu tây chuối\",\"description\":\"Sinh tố dâu chuối mềm mịn, ngọt thanh, giàu vitamin, thích hợp uống sáng hoặc sau tập thể dục.\",\"ingredients\":\"Dâu tây tươi, Chuối chín, Sữa tươi không đường, Sữa chua, Đá viên\",\"steps\":\"1: Rửa sạch dâu tây, bỏ cuống.,2: Chuối bóc vỏ, cắt khúc.,3: Cho dâu, chuối, sữa tươi, sữa chua và đá viên vào máy xay sinh tố.,4: Xay nhuyễn 1–2 phút đến mịn, không còn cục.,5: Rót ra ly, có thể trang trí với vài lát dâu tươi.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 43, '2026-01-04 19:35:54.000000', 43, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Cà phê kiểu Ý (Espresso)\",\"description\":\"Espresso đậm đặc, hương thơm nồng nàn, cơ bản để làm các món cà phê Ý khác như Latte hoặc Cappuccino.\",\"ingredients\":\"Hạt cà phê rang xay, Nước nóng\",\"steps\":\"1: Xay hạt cà phê mịn vừa, nặng tay để chiết xuất tốt.,2: Cho cà phê vào tay cầm máy pha espresso, nén chặt.,3: Máy pha ở 90–95°C, chiết xuất 30 ml espresso trong 25–30 giây.,4: Rót espresso ra cốc nhỏ, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 44, '2026-01-04 19:35:54.000000', 44, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà nóng Chai Masala Ấn Độ\",\"description\":\"Trà Masala Ấn Độ thơm nồng hương gia vị, pha với sữa béo, thích hợp uống buổi sáng hoặc chiều tối.\",\"ingredients\":\"Trà đen, Sữa tươi, Gừng tươi thái lát, Quế, Đinh hương, Hạt tiêu đen, Đường\",\"steps\":\"1: Cho trà đen, gừng, quế, đinh hương, hạt tiêu và 100ml nước vào nồi, đun sôi 5 phút.,2: Thêm 200ml sữa, đun lửa nhỏ 3–5 phút, không để trào.,3: Lọc trà ra cốc, thêm đường vừa khẩu vị, khuấy đều.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 45, '2026-01-04 19:35:54.000000', 45, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Smoothie xoài dừa kiểu Thái\",\"description\":\"Smoothie xoài dừa thơm mát, ngọt thanh, kết hợp sữa dừa và xoài chín, đặc trưng đồ uống Thái Lan.\",\"ingredients\":\"Xoài chín, Sữa dừa, Sữa tươi không đường, Đá viên, Mật ong\",\"steps\":\"1: Xoài gọt vỏ, cắt miếng.,2: Cho xoài, sữa dừa, sữa tươi, mật ong và đá viên vào máy xay sinh tố.,3: Xay nhuyễn 1–2 phút, rót ra ly, dùng ngay.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 46, '2026-01-04 19:40:23.000000', 46, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Matcha Latte Nhật Bản\",\"description\":\"Matcha Latte thơm mát, kết hợp bột trà xanh Nhật Bản với sữa nóng, tạo vị ngọt dịu và màu xanh tự nhiên.\",\"ingredients\":\"Bột matcha Nhật Bản, Nước nóng 70°C, Sữa tươi không đường, Đường\",\"steps\":\"1: Rây bột matcha vào bát để tránh vón cục.,2: Thêm nước nóng 70°C, đánh đều bằng chổi tre hoặc máy đánh cho bột tan hết.,3: Đun nóng sữa, đánh bông nếu muốn bọt mềm.,4: Đổ sữa vào matcha, khuấy nhẹ, thêm đường theo khẩu vị.,5: Rót ra ly, trang trí bọt sữa trên mặt nếu thích, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 47, '2026-01-04 19:40:23.000000', 47, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà Ô Long Trân Châu\",\"description\":\"Trà Ô Long trân châu kiểu Đài Loan, thơm trà, dai trân châu, kết hợp vị ngọt vừa phải.\",\"ingredients\":\"Trà Ô Long túi lọc, Trân châu đen, Nước, Đường nâu, Sữa tươi\",\"steps\":\"1: Luộc trân châu trong nước sôi 15 phút, để riêng trong nước đường nâu 5 phút.,2: Pha trà Ô Long với 200 ml nước nóng 3–5 phút, lấy nước trà.,3: Cho trân châu vào ly, thêm trà đã pha.,4: Rót sữa tươi lên trên, khuấy nhẹ hoặc dùng ống hút lớn.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 48, '2026-01-04 19:40:23.000000', 48, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Chocolate nóng kiểu Bỉ\",\"description\":\"Chocolate nóng đậm đặc, béo ngậy, dùng làm món uống sáng hoặc giải khát lạnh, trang trí kem tươi.\",\"ingredients\":\"Socola đen 70%, Sữa tươi, Đường, Kem tươi\",\"steps\":\"1: Cắt socola thành miếng nhỏ.,2: Đun sữa và đường trên lửa nhỏ, không để sôi.,3: Cho socola vào sữa nóng, khuấy đều cho tan hết.,4: Rót ra ly, thêm kem tươi lên trên, dùng nóng.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 49, '2026-01-04 19:40:23.000000', 49, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Frappuccino cà phê kiểu Mỹ\",\"description\":\"Đồ uống cà phê lạnh kiểu Starbucks, kết hợp espresso, đá xay nhuyễn, sữa và siro ngọt.\",\"ingredients\":\"Espresso, Sữa tươi, Đá viên, Siro caramel hoặc vani, Kem tươi\",\"steps\":\"1: Cho đá viên vào máy xay sinh tố.,2: Thêm espresso, sữa và siro.,3: Xay nhuyễn đến mịn, rót ra ly.,4: Thêm kem tươi lên trên, có thể rưới thêm siro trang trí.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');
INSERT INTO `outbox_events_copy1` VALUES (b'1', 50, '2026-01-04 19:40:24.000000', 50, 'RECIPE', 'RECIPE_CREATED', '{\"title\":\"Trà bạc hà chanh kiểu Morocco\",\"description\":\"Trà xanh kết hợp lá bạc hà tươi và chanh, thơm mát, đặc trưng phong cách Morocco.\",\"ingredients\":\"Trà xanh Trung Quốc/Marocco, Lá bạc hà tươi, Nước sôi, Đường, Chanh cắt lát\",\"steps\":\"1: Rửa sạch lá bạc hà và chanh.,2: Cho trà xanh vào ấm, rót 200 ml nước sôi, ủ 3–5 phút.,3: Thêm lá bạc hà, đường và phần nước còn lại, đun 2–3 phút.,4: Rót trà ra cốc, thêm lát chanh trang trí, dùng nóng hoặc để nguội.\",\"imageUrl\":\"/static_resource/public/upload/avatars/avatar-holder.png\"}');

-- ----------------------------
-- Table structure for packages_upgrades
-- ----------------------------
DROP TABLE IF EXISTS `packages_upgrades`;
CREATE TABLE `packages_upgrades`  (
  `duration_days` int NULL DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` bigint NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of packages_upgrades
-- ----------------------------
INSERT INTO `packages_upgrades` VALUES (30, 1, 150000, 'Full access 1 tháng cho CHEF', 'CHEF 1 Month');
INSERT INTO `packages_upgrades` VALUES (90, 2, 400000, 'Full access 3 tháng cho CHEF', 'CHEF 3 Months');

-- ----------------------------
-- Table structure for payment_orders
-- ----------------------------
DROP TABLE IF EXISTS `payment_orders`;
CREATE TABLE `payment_orders`  (
  `amount` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `paid_at` datetime(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `bank_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `response_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `transaction_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `txn_ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vnpay_transaction_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payment_status` enum('FAILED','PENDING','PROCESSING','SUCCESS') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKq4yaosnnqxmmurxld644v30iv`(`txn_ref` ASC) USING BTREE,
  INDEX `FKohtixrr5nsywabsqddlhdmx78`(`order_id` ASC) USING BTREE,
  CONSTRAINT `FKohtixrr5nsywabsqddlhdmx78` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_orders
-- ----------------------------
INSERT INTO `payment_orders` VALUES (400000, '2026-01-06 11:23:22.000000', 1, 1, '2026-01-06 11:24:21.000000', '2026-01-06 11:24:21.000000', 'NCB', 'ATM', '00', '00', '17676734029319700', '15383051', 'SUCCESS');
INSERT INTO `payment_orders` VALUES (45000, '2026-01-06 11:31:03.000000', 2, 2, '2026-01-06 11:31:38.000000', '2026-01-06 11:31:38.000000', 'NCB', 'ATM', '00', '00', '17676738638457290', '15383069', 'SUCCESS');
INSERT INTO `payment_orders` VALUES (45000, '2026-01-06 12:42:14.000000', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, '17676781346227926', NULL, 'PENDING');
INSERT INTO `payment_orders` VALUES (100000, '2026-01-09 16:37:21.000000', 4, 4, '2026-01-09 16:38:27.000000', '2026-01-09 16:38:27.000000', 'NCB', 'ATM', '00', '00', '17679514412717813', '15388697', 'SUCCESS');
INSERT INTO `payment_orders` VALUES (100000, '2026-01-10 10:28:01.000000', 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, '17680156817418284', NULL, 'PENDING');

-- ----------------------------
-- Table structure for product_orders
-- ----------------------------
DROP TABLE IF EXISTS `product_orders`;
CREATE TABLE `product_orders`  (
  `address_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `shipping_note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `FKa11nm51h68liytkaw8uvfmq4j`(`address_id` ASC) USING BTREE,
  CONSTRAINT `FK9i0hwhyugrqsnrxstrq6n9sqb` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKa11nm51h68liytkaw8uvfmq4j` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_orders
-- ----------------------------
INSERT INTO `product_orders` VALUES (1, 2, NULL);
INSERT INTO `product_orders` VALUES (1, 3, NULL);
INSERT INTO `product_orders` VALUES (2, 4, NULL);
INSERT INTO `product_orders` VALUES (3, 5, NULL);

-- ----------------------------
-- Table structure for recipe_category
-- ----------------------------
DROP TABLE IF EXISTS `recipe_category`;
CREATE TABLE `recipe_category`  (
  `category_id` bigint NOT NULL,
  `recipe_id` bigint NOT NULL,
  PRIMARY KEY (`category_id`, `recipe_id`) USING BTREE,
  INDEX `FKm7277epjcd3or9ss6sbi03wh4`(`recipe_id` ASC) USING BTREE,
  CONSTRAINT `FKjyw23gw8clntghakfe92qvrhm` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKm7277epjcd3or9ss6sbi03wh4` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe_category
-- ----------------------------
INSERT INTO `recipe_category` VALUES (1, 1);
INSERT INTO `recipe_category` VALUES (1, 2);
INSERT INTO `recipe_category` VALUES (1, 3);
INSERT INTO `recipe_category` VALUES (1, 4);
INSERT INTO `recipe_category` VALUES (1, 5);
INSERT INTO `recipe_category` VALUES (1, 51);
INSERT INTO `recipe_category` VALUES (2, 6);
INSERT INTO `recipe_category` VALUES (2, 7);
INSERT INTO `recipe_category` VALUES (2, 8);
INSERT INTO `recipe_category` VALUES (2, 9);
INSERT INTO `recipe_category` VALUES (2, 10);
INSERT INTO `recipe_category` VALUES (3, 11);
INSERT INTO `recipe_category` VALUES (3, 12);
INSERT INTO `recipe_category` VALUES (3, 13);
INSERT INTO `recipe_category` VALUES (3, 14);
INSERT INTO `recipe_category` VALUES (3, 15);
INSERT INTO `recipe_category` VALUES (4, 16);
INSERT INTO `recipe_category` VALUES (4, 17);
INSERT INTO `recipe_category` VALUES (4, 18);
INSERT INTO `recipe_category` VALUES (4, 19);
INSERT INTO `recipe_category` VALUES (4, 20);
INSERT INTO `recipe_category` VALUES (5, 21);
INSERT INTO `recipe_category` VALUES (5, 22);
INSERT INTO `recipe_category` VALUES (5, 23);
INSERT INTO `recipe_category` VALUES (5, 24);
INSERT INTO `recipe_category` VALUES (5, 25);
INSERT INTO `recipe_category` VALUES (6, 26);
INSERT INTO `recipe_category` VALUES (6, 27);
INSERT INTO `recipe_category` VALUES (6, 28);
INSERT INTO `recipe_category` VALUES (6, 29);
INSERT INTO `recipe_category` VALUES (6, 30);
INSERT INTO `recipe_category` VALUES (7, 31);
INSERT INTO `recipe_category` VALUES (7, 32);
INSERT INTO `recipe_category` VALUES (7, 33);
INSERT INTO `recipe_category` VALUES (7, 34);
INSERT INTO `recipe_category` VALUES (7, 35);
INSERT INTO `recipe_category` VALUES (8, 36);
INSERT INTO `recipe_category` VALUES (8, 37);
INSERT INTO `recipe_category` VALUES (8, 38);
INSERT INTO `recipe_category` VALUES (8, 39);
INSERT INTO `recipe_category` VALUES (8, 40);
INSERT INTO `recipe_category` VALUES (9, 41);
INSERT INTO `recipe_category` VALUES (9, 42);
INSERT INTO `recipe_category` VALUES (9, 43);
INSERT INTO `recipe_category` VALUES (9, 44);
INSERT INTO `recipe_category` VALUES (9, 45);
INSERT INTO `recipe_category` VALUES (10, 46);
INSERT INTO `recipe_category` VALUES (10, 47);
INSERT INTO `recipe_category` VALUES (10, 48);
INSERT INTO `recipe_category` VALUES (10, 49);
INSERT INTO `recipe_category` VALUES (10, 50);

-- ----------------------------
-- Table structure for recipe_daily_views
-- ----------------------------
DROP TABLE IF EXISTS `recipe_daily_views`;
CREATE TABLE `recipe_daily_views`  (
  `view_date` date NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint NOT NULL,
  `view_count` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKijelvpilmnbqqebvtdehp9j0t`(`recipe_id` ASC, `view_date` ASC) USING BTREE,
  CONSTRAINT `FKrpee89ioyqsbfjsuaditlv0dx` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe_daily_views
-- ----------------------------
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 1, 1, 10);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 2, 20, 7);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 3, 11, 3);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 4, 31, 9);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 5, 51, 32);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 6, 2, 3);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 7, 8, 3);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-06', 8, 41, 2);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-07', 9, 41, 1);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 10, 20, 3);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 11, 41, 1);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 12, 42, 4);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 13, 37, 3);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 14, 38, 5);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 15, 39, 2);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 16, 31, 2);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-08', 17, 1, 2);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-09', 18, 37, 2);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-09', 19, 38, 2);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-09', 20, 41, 4);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-09', 21, 34, 3);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-09', 22, 4, 5);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-09', 23, 7, 1);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-10', 24, 19, 1);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-10', 25, 32, 1);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-10', 26, 31, 6);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-10', 27, 15, 2);
INSERT INTO `recipe_daily_views` VALUES ('2026-01-10', 28, 1, 2);

-- ----------------------------
-- Table structure for recipe_ingredients
-- ----------------------------
DROP TABLE IF EXISTS `recipe_ingredients`;
CREATE TABLE `recipe_ingredients`  (
  `display_order` int NOT NULL,
  `quantity` float NULL DEFAULT NULL,
  `ingredient_id` bigint NOT NULL,
  `recipe_id` bigint NOT NULL,
  `recipe_ingredient_id` bigint NOT NULL AUTO_INCREMENT,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `raw_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`recipe_ingredient_id`) USING BTREE,
  INDEX `FKgukrw6na9f61kb8djkkuvyxy8`(`ingredient_id` ASC) USING BTREE,
  INDEX `FKcqlw8sor5ut10xsuj3jnttkc`(`recipe_id` ASC) USING BTREE,
  CONSTRAINT `FKcqlw8sor5ut10xsuj3jnttkc` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKgukrw6na9f61kb8djkkuvyxy8` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 408 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe_ingredients
-- ----------------------------
INSERT INTO `recipe_ingredients` VALUES (0, 500, 1, 1, 1, NULL, 'Bánh phở tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 1200, 2, 1, 2, NULL, 'Xương ống bò', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 200, 3, 1, 3, NULL, 'Thịt bò nạm', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 150, 4, 1, 4, NULL, 'Thịt bò tái', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 5, 1, 5, NULL, 'Gừng', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 6, 1, 6, NULL, 'Hành tây', 'củ');
INSERT INTO `recipe_ingredients` VALUES (6, 3, 7, 1, 7, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (7, 2, 8, 1, 8, NULL, 'Hoa hồi', 'cánh');
INSERT INTO `recipe_ingredients` VALUES (8, 1, 9, 1, 9, NULL, 'Quế', 'thanh');
INSERT INTO `recipe_ingredients` VALUES (9, 1, 10, 1, 10, NULL, 'Thảo quả', 'quả');
INSERT INTO `recipe_ingredients` VALUES (10, 3, 11, 1, 11, NULL, 'Đinh hương', 'cái');
INSERT INTO `recipe_ingredients` VALUES (11, 30, 12, 1, 12, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (12, 8, 13, 1, 13, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (13, 15, 14, 1, 14, NULL, 'Đường phèn', 'g');
INSERT INTO `recipe_ingredients` VALUES (14, 3, 15, 1, 15, NULL, 'Hành lá', 'nhánh');
INSERT INTO `recipe_ingredients` VALUES (15, 20, 16, 1, 16, NULL, 'Rau mùi', 'g');
INSERT INTO `recipe_ingredients` VALUES (16, 1, 17, 1, 17, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 400, 18, 2, 18, NULL, 'Bún Huế', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 1000, 19, 2, 19, NULL, 'Xương bò', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 200, 20, 2, 20, NULL, 'Thịt bò đùi', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 5, 21, 2, 21, NULL, 'Sả', 'cây');
INSERT INTO `recipe_ingredients` VALUES (4, 3, 7, 2, 22, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (5, 3, 22, 2, 23, NULL, 'Ớt tươi', 'quả');
INSERT INTO `recipe_ingredients` VALUES (6, 15, 23, 2, 24, NULL, 'Mắm ruốc Huế', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 10, 13, 2, 25, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 10, 24, 2, 26, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (9, 3, 15, 2, 27, NULL, 'Hành lá', 'nhánh');
INSERT INTO `recipe_ingredients` VALUES (10, 20, 25, 2, 28, NULL, 'Rau húng quế', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 200, 26, 3, 29, NULL, 'Mì Quảng', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 150, 27, 3, 30, NULL, 'Tôm tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 28, 3, 31, NULL, 'Thịt heo ba chỉ', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 4, 29, 3, 32, NULL, 'Trứng cút', 'cái');
INSERT INTO `recipe_ingredients` VALUES (4, 1, 6, 3, 33, NULL, 'Hành tây', 'củ');
INSERT INTO `recipe_ingredients` VALUES (5, 20, 30, 3, 34, NULL, 'Đậu phộng rang', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 50, 31, 3, 35, NULL, 'Rau sống các loại', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 20, 12, 3, 36, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (8, 5, 24, 3, 37, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (9, 2, 32, 3, 38, NULL, 'Ớt bột', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 200, 33, 4, 39, NULL, 'Hủ tiếu', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 100, 34, 4, 40, NULL, 'Tôm', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 150, 35, 4, 41, NULL, 'Thịt heo nạc', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 100, 36, 4, 42, NULL, 'Mực', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 2, 7, 4, 43, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (5, 20, 25, 4, 44, NULL, 'Rau húng quế', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 50, 37, 4, 45, NULL, 'Giá đỗ', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 20, 12, 4, 46, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (8, 1, 17, 4, 47, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 10, 38, 5, 48, NULL, 'Bánh tráng', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 200, 39, 5, 49, NULL, 'Tôm luộc', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 150, 40, 5, 50, NULL, 'Thịt heo luộc', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 100, 41, 5, 51, NULL, 'Bún tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 42, 5, 52, NULL, 'Rau xà lách', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 10, 16, 5, 53, NULL, 'Rau mùi', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 10, 43, 5, 54, NULL, 'Húng quế', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 20, 30, 5, 55, NULL, 'Đậu phộng rang', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 50, 44, 5, 56, NULL, 'Nước mắm chua ngọt', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 45, 6, 57, NULL, 'Bánh mì baguette', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 300, 46, 6, 58, NULL, 'Thịt heo nạc vai', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 1, 6, 6, 59, NULL, 'Hành tây', 'củ');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 47, 6, 60, NULL, 'Dưa leo', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 48, 6, 61, NULL, 'Cà rốt', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 10, 16, 6, 62, NULL, 'Rau mùi', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 3, 49, 6, 63, NULL, 'Tỏi', 'tép');
INSERT INTO `recipe_ingredients` VALUES (7, 20, 12, 6, 64, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (8, 5, 24, 6, 65, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (9, 1, 17, 6, 66, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 50, 7, 67, NULL, 'Bánh mì', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 2, 51, 7, 68, NULL, 'Trứng gà', 'cái');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 52, 7, 69, NULL, 'Pate', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 100, 53, 7, 70, NULL, 'Xúc xích', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 100, 54, 7, 71, NULL, 'Thịt nướng', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 5, 15, 7, 72, NULL, 'Hành lá', 'nhánh');
INSERT INTO `recipe_ingredients` VALUES (6, 1, 17, 7, 73, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 10, 55, 7, 74, NULL, 'Bơ', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 56, 8, 75, NULL, 'Bánh hamburger', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 200, 57, 8, 76, NULL, 'Thịt bò băm', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 2, 58, 8, 77, NULL, 'Phô mai cheddar', 'lát');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 59, 8, 78, NULL, 'Xà lách', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 1, 60, 8, 79, NULL, 'Cà chua', 'quả');
INSERT INTO `recipe_ingredients` VALUES (5, 50, 47, 8, 80, NULL, 'Dưa leo', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 20, 61, 8, 81, NULL, 'Sốt mayonnaise', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 1, 17, 8, 82, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 62, 9, 83, NULL, 'Bánh hotdog', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 2, 53, 9, 84, NULL, 'Xúc xích', 'cái');
INSERT INTO `recipe_ingredients` VALUES (2, 0.5, 6, 9, 85, NULL, 'Hành tây', 'củ');
INSERT INTO `recipe_ingredients` VALUES (3, 30, 47, 9, 86, NULL, 'Dưa leo', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 10, 63, 9, 87, NULL, 'Sốt ketchup', 'ml');
INSERT INTO `recipe_ingredients` VALUES (5, 10, 61, 9, 88, NULL, 'Sốt mayonnaise', 'ml');
INSERT INTO `recipe_ingredients` VALUES (6, 1, 17, 9, 89, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 300, 64, 10, 90, NULL, 'Đùi gà', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 50, 65, 10, 91, NULL, 'Bột mì', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 66, 10, 92, NULL, 'Bột chiên giòn', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 1, 51, 10, 93, NULL, 'Trứng gà', 'cái');
INSERT INTO `recipe_ingredients` VALUES (4, 3, 67, 10, 94, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (5, 20, 68, 10, 95, NULL, 'Sốt gochujang', 'ml');
INSERT INTO `recipe_ingredients` VALUES (6, 10, 69, 10, 96, NULL, 'Mật ong', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 200, 70, 10, 97, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 400, 74, 12, 106, NULL, 'Cá thu', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 2, 7, 12, 107, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (2, 3, 49, 12, 108, NULL, 'Tỏi', 'tép');
INSERT INTO `recipe_ingredients` VALUES (3, 30, 12, 12, 109, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (4, 10, 24, 12, 110, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 17, 12, 111, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 1, 75, 12, 112, NULL, 'Ớt sừng', 'quả');
INSERT INTO `recipe_ingredients` VALUES (7, 20, 70, 12, 113, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 150, 76, 13, 114, NULL, 'Khoai tây', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 100, 48, 13, 115, NULL, 'Cà rốt', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 77, 13, 116, NULL, 'Đậu Hà Lan', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 2, 78, 13, 117, NULL, 'Trứng luộc', 'cái');
INSERT INTO `recipe_ingredients` VALUES (4, 30, 79, 13, 118, NULL, 'Mayonnaise', 'ml');
INSERT INTO `recipe_ingredients` VALUES (5, 2, 13, 13, 119, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 1, 17, 13, 120, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 100, 80, 14, 121, NULL, 'Xà lách Romaine', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 150, 81, 14, 122, NULL, 'Ức gà', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 82, 14, 123, NULL, 'Bánh mì nướng', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 83, 14, 124, NULL, 'Phô mai Parmesan bào', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 30, 84, 14, 125, NULL, 'Sốt Caesar', 'ml');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 17, 14, 126, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 2, 13, 14, 127, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 200, 85, 15, 128, NULL, 'Đu đủ xanh', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 100, 27, 15, 129, NULL, 'Tôm tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 86, 15, 130, NULL, 'Thịt ba chỉ', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 87, 15, 131, NULL, 'Lạc rang', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 2, 49, 15, 132, NULL, 'Tỏi', 'tép');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 22, 15, 133, NULL, 'Ớt tươi', 'quả');
INSERT INTO `recipe_ingredients` VALUES (6, 20, 12, 15, 134, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 5, 24, 15, 135, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 0.5, 73, 15, 136, NULL, 'Chanh', 'quả');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 45, 16, 137, NULL, 'Bánh mì baguette', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 250, 81, 16, 138, NULL, 'Ức gà', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 1, 6, 16, 139, NULL, 'Hành tây', 'củ');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 48, 16, 140, NULL, 'Cà rốt', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 20, 59, 16, 141, NULL, 'Xà lách', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 2, 67, 16, 142, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (6, 15, 88, 16, 143, NULL, 'Nước tương', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 1, 89, 16, 144, NULL, 'Ớt băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (8, 20, 61, 16, 145, NULL, 'Sốt mayonnaise', 'ml');
INSERT INTO `recipe_ingredients` VALUES (9, 2, 13, 16, 146, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (10, 1, 17, 16, 147, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 200, 90, 17, 148, NULL, 'Spaghetti', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 200, 57, 17, 149, NULL, 'Thịt bò bằm', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 200, 91, 17, 150, NULL, 'Cà chua chín', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 1, 6, 17, 151, NULL, 'Hành tây', 'củ');
INSERT INTO `recipe_ingredients` VALUES (4, 2, 67, 17, 152, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (5, 15, 92, 17, 153, NULL, 'Dầu ô liu', 'ml');
INSERT INTO `recipe_ingredients` VALUES (6, 20, 83, 17, 154, NULL, 'Phô mai Parmesan bào', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 2, 13, 17, 155, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 1, 93, 17, 156, NULL, 'Tiêu đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 250, 94, 18, 157, NULL, 'Phi lê cá hồi', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 1, 95, 18, 158, NULL, 'Cam tươi', 'quả');
INSERT INTO `recipe_ingredients` VALUES (2, 10, 69, 18, 159, NULL, 'Mật ong', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 10, 55, 18, 160, NULL, 'Bơ', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 2, 13, 18, 161, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 93, 18, 162, NULL, 'Tiêu đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 15, 92, 18, 163, NULL, 'Dầu ô liu', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 300, 96, 19, 164, NULL, 'Thịt gà (đùi hoặc ức)', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 3, 21, 19, 165, NULL, 'Sả', 'cây');
INSERT INTO `recipe_ingredients` VALUES (2, 2, 22, 19, 166, NULL, 'Ớt tươi', 'quả');
INSERT INTO `recipe_ingredients` VALUES (3, 2, 67, 19, 167, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (4, 1, 7, 19, 168, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (5, 15, 70, 19, 169, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (6, 15, 12, 19, 170, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 5, 24, 19, 171, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 1, 93, 19, 172, NULL, 'Tiêu đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 250, 97, 20, 173, NULL, 'Thịt bò thăn', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 1, 6, 20, 174, NULL, 'Hành tây', 'củ');
INSERT INTO `recipe_ingredients` VALUES (2, 2, 67, 20, 175, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (3, 15, 70, 20, 176, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (4, 15, 88, 20, 177, NULL, 'Nước tương', 'ml');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 93, 20, 178, NULL, 'Tiêu đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 2, 13, 20, 179, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 400, 71, 21, 180, NULL, 'Cá diêu hồng', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 50, 66, 21, 181, NULL, 'Bột chiên giòn', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 1, 51, 21, 182, NULL, 'Trứng gà', 'quả');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 70, 21, 183, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (4, 30, 98, 21, 184, NULL, 'Me chua', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 20, 24, 21, 185, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 15, 12, 21, 186, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 3, 67, 21, 187, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (8, 1, 89, 21, 188, NULL, 'Ớt băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (9, 2, 15, 21, 189, NULL, 'Hành lá', 'nhánh');
INSERT INTO `recipe_ingredients` VALUES (0, 300, 85, 22, 190, NULL, 'Đu đủ xanh', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 150, 27, 22, 191, NULL, 'Tôm tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 86, 22, 192, NULL, 'Thịt ba chỉ', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 30, 22, 193, NULL, 'Đậu phộng rang', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 48, 22, 194, NULL, 'Cà rốt', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 7, 22, 195, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (6, 2, 49, 22, 196, NULL, 'Tỏi', 'tép');
INSERT INTO `recipe_ingredients` VALUES (7, 1, 22, 22, 197, NULL, 'Ớt tươi', 'quả');
INSERT INTO `recipe_ingredients` VALUES (8, 15, 24, 22, 198, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (9, 20, 12, 22, 199, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (10, 1, 73, 22, 200, NULL, 'Chanh', 'quả');
INSERT INTO `recipe_ingredients` VALUES (11, 15, 99, 22, 201, NULL, 'Rau thơm (ngò, húng)', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 200, 100, 23, 202, NULL, 'Mì Quảng tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 250, 101, 23, 203, NULL, 'Thịt gà đùi', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 27, 23, 204, NULL, 'Tôm tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 30, 23, 205, NULL, 'Đậu phộng rang', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 1, 7, 23, 206, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (5, 2, 49, 23, 207, NULL, 'Tỏi', 'tép');
INSERT INTO `recipe_ingredients` VALUES (6, 2, 15, 23, 208, NULL, 'Hành lá', 'nhánh');
INSERT INTO `recipe_ingredients` VALUES (7, 30, 102, 23, 209, NULL, 'Rau sống (rau răm, húng quế)', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 20, 12, 23, 210, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (9, 2, 13, 23, 211, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (10, 5, 24, 23, 212, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (11, 2, 103, 23, 213, NULL, 'Bánh tráng nướng', 'cái');
INSERT INTO `recipe_ingredients` VALUES (0, 800, 2, 24, 214, NULL, 'Xương ống bò', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 400, 104, 24, 215, NULL, 'Giò heo', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 200, 3, 24, 216, NULL, 'Thịt bò nạm', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 300, 41, 24, 217, NULL, 'Bún tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 3, 21, 24, 218, NULL, 'Sả', 'cây');
INSERT INTO `recipe_ingredients` VALUES (5, 3, 7, 24, 219, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (6, 10, 32, 24, 220, NULL, 'Ớt bột', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 10, 23, 24, 221, NULL, 'Mắm ruốc Huế', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 5, 13, 24, 222, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (9, 10, 14, 24, 223, NULL, 'Đường phèn', 'g');
INSERT INTO `recipe_ingredients` VALUES (10, 30, 105, 24, 224, NULL, 'Rau sống (rau húng, giá, hành lá)', 'g');
INSERT INTO `recipe_ingredients` VALUES (11, 2, 17, 24, 225, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 200, 106, 25, 226, NULL, 'Hủ tiếu tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 400, 107, 25, 227, NULL, 'Xương heo', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 150, 35, 25, 228, NULL, 'Thịt heo nạc', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 100, 27, 25, 229, NULL, 'Tôm tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 108, 25, 230, NULL, 'Gan heo', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 4, 29, 25, 231, NULL, 'Trứng cút', 'quả');
INSERT INTO `recipe_ingredients` VALUES (6, 2, 7, 25, 232, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (7, 2, 67, 25, 233, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (8, 15, 70, 25, 234, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (9, 20, 12, 25, 235, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (10, 3, 13, 25, 236, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (11, 5, 24, 25, 237, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (12, 30, 109, 25, 238, NULL, 'Rau sống, giá', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 100, 110, 26, 239, NULL, 'Bột gạo', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 150, 111, 26, 240, NULL, 'Nước cốt dừa', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 27, 26, 241, NULL, 'Tôm tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 100, 86, 26, 242, NULL, 'Thịt ba chỉ', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 37, 26, 243, NULL, 'Giá đỗ', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 2, 15, 26, 244, NULL, 'Hành lá', 'nhánh');
INSERT INTO `recipe_ingredients` VALUES (6, 15, 70, 26, 245, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 2, 13, 26, 246, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 5, 24, 26, 247, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (9, 20, 12, 26, 248, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (10, 30, 112, 26, 249, NULL, 'Rau sống (xà lách, húng quế)', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 400, 113, 27, 250, NULL, 'Cá basa', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 2, 7, 27, 251, NULL, 'Hành tím', 'củ');
INSERT INTO `recipe_ingredients` VALUES (2, 2, 67, 27, 252, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (3, 30, 12, 27, 253, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (4, 15, 24, 27, 254, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 2, 17, 27, 255, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 20, 70, 27, 256, NULL, 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 2, 15, 27, 257, NULL, 'Hành lá', 'nhánh');
INSERT INTO `recipe_ingredients` VALUES (0, 4, 38, 28, 258, NULL, 'Bánh tráng', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 100, 41, 28, 259, NULL, 'Bún tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 27, 28, 260, NULL, 'Tôm tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 100, 40, 28, 261, NULL, 'Thịt heo luộc', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 30, 114, 28, 262, NULL, 'Rau sống (xà lách, húng quế, rau thơm)', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 15, 30, 28, 263, NULL, 'Đậu phộng rang', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 20, 12, 28, 264, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 5, 24, 28, 265, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 0.5, 73, 28, 266, NULL, 'Chanh', 'quả');
INSERT INTO `recipe_ingredients` VALUES (9, 1, 67, 28, 267, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (10, 1, 89, 28, 268, NULL, 'Ớt băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 50, 29, 269, NULL, 'Bánh mì', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 200, 115, 29, 270, NULL, 'Thịt heo thăn', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 2, 67, 29, 271, NULL, 'Tỏi băm', 'tép');
INSERT INTO `recipe_ingredients` VALUES (3, 1, 116, 29, 272, NULL, 'Hành tím băm', 'củ');
INSERT INTO `recipe_ingredients` VALUES (4, 15, 12, 29, 273, NULL, 'Nước mắm', 'ml');
INSERT INTO `recipe_ingredients` VALUES (5, 5, 24, 29, 274, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 1, 17, 29, 275, NULL, 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 30, 47, 29, 276, NULL, 'Dưa leo', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 30, 117, 29, 277, NULL, 'Cà rốt ngâm chua', 'g');
INSERT INTO `recipe_ingredients` VALUES (9, 15, 118, 29, 278, NULL, 'Rau thơm', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 119, 30, 279, NULL, 'Bánh mì hotdog', 'cái');
INSERT INTO `recipe_ingredients` VALUES (1, 2, 53, 30, 280, NULL, 'Xúc xích', 'cái');
INSERT INTO `recipe_ingredients` VALUES (2, 30, 120, 30, 281, NULL, 'Dưa leo thái lát', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 30, 121, 30, 282, NULL, 'Cà chua thái lát', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 5, 122, 30, 283, NULL, 'Hành phi', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 20, 123, 30, 284, NULL, 'Sốt cà chua', 'ml');
INSERT INTO `recipe_ingredients` VALUES (6, 15, 79, 30, 285, NULL, 'Mayonnaise', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 120, 65, 31, 286, NULL, 'Bột mì', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 4, 51, 31, 287, NULL, 'Trứng gà', 'quả');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 24, 31, 288, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 124, 31, 289, NULL, 'Bơ lạt', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 4, 125, 31, 290, NULL, 'Trứng muối', 'quả');
INSERT INTO `recipe_ingredients` VALUES (5, 50, 126, 31, 291, NULL, 'Sữa tươi không đường', 'ml');
INSERT INTO `recipe_ingredients` VALUES (6, 1, 13, 31, 292, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 100, 127, 32, 293, NULL, 'Socola đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 300, 128, 32, 294, NULL, 'Sữa tươi', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 24, 32, 295, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 129, 32, 296, NULL, 'Bột bắp', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 1, 51, 32, 297, NULL, 'Trứng gà', 'quả');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 130, 32, 298, NULL, 'Vanilla', 'tép');
INSERT INTO `recipe_ingredients` VALUES (0, 100, 131, 33, 299, NULL, 'Đậu xanh cà vỏ', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 50, 24, 33, 300, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 111, 33, 301, NULL, 'Nước cốt dừa', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 1, 13, 33, 302, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 2, 132, 33, 303, NULL, 'Lá dứa', 'lá');
INSERT INTO `recipe_ingredients` VALUES (0, 1, 133, 34, 304, NULL, 'Quả bơ chín', 'quả');
INSERT INTO `recipe_ingredients` VALUES (1, 30, 134, 34, 305, NULL, 'Sữa đặc có đường', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 126, 34, 306, NULL, 'Sữa tươi không đường', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 135, 34, 307, NULL, 'Đá viên', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 136, 35, 308, NULL, 'Trà đen túi lọc', 'túi');
INSERT INTO `recipe_ingredients` VALUES (1, 200, 137, 35, 309, NULL, 'Nước sôi', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 30, 134, 35, 310, NULL, 'Sữa đặc có đường', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 138, 35, 311, NULL, 'Trân châu đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 10, 139, 35, 312, NULL, 'Đường nâu', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 50, 135, 35, 313, NULL, 'Đá viên', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 1, 140, 36, 314, NULL, 'Cải thảo', 'cây');
INSERT INTO `recipe_ingredients` VALUES (1, 50, 141, 36, 315, NULL, 'Muối hạt', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 48, 36, 316, NULL, 'Cà rốt', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 15, 36, 317, NULL, 'Hành lá', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 30, 142, 36, 318, NULL, 'Bột ớt Hàn Quốc', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 10, 67, 36, 319, NULL, 'Tỏi băm', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 5, 143, 36, 320, NULL, 'Gừng băm', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 20, 144, 36, 321, NULL, 'Nước mắm Hàn Quốc (hoặc mắm truyền thống)', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 120, 145, 37, 322, NULL, 'Gạo Nhật', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 150, 146, 37, 323, NULL, 'Nước', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 15, 147, 37, 324, NULL, 'Giấm gạo', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 5, 24, 37, 325, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 2, 13, 37, 326, NULL, 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 2, 148, 37, 327, NULL, 'Rong biển (Nori)', 'tấm');
INSERT INTO `recipe_ingredients` VALUES (6, 50, 149, 37, 328, NULL, 'Cá hồi tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 30, 47, 37, 329, NULL, 'Dưa leo', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 500, 107, 38, 330, NULL, 'Xương heo', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 150, 150, 38, 331, NULL, 'Thịt ba chỉ heo', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 200, 151, 38, 332, NULL, 'Mì ramen tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 2, 152, 38, 333, NULL, 'Trứng', 'quả');
INSERT INTO `recipe_ingredients` VALUES (4, 20, 15, 38, 334, NULL, 'Hành lá', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 50, 153, 38, 335, NULL, 'Nấm shiitake', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 30, 88, 38, 336, NULL, 'Nước tương', 'ml');
INSERT INTO `recipe_ingredients` VALUES (7, 10, 154, 38, 337, NULL, 'Miso', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 200, 155, 39, 338, NULL, 'Cơm trắng', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 100, 57, 39, 339, NULL, 'Thịt bò băm', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 48, 39, 340, NULL, 'Cà rốt', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 156, 39, 341, NULL, 'Rau bina', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 37, 39, 342, NULL, 'Giá đỗ', 'g');
INSERT INTO `recipe_ingredients` VALUES (5, 2, 152, 39, 343, NULL, 'Trứng', 'quả');
INSERT INTO `recipe_ingredients` VALUES (6, 20, 157, 39, 344, NULL, 'Gochujang', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 5, 158, 39, 345, NULL, 'Dầu mè', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 100, 159, 40, 346, NULL, 'Bột Mochiko (bột gạo nếp Nhật)', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 50, 24, 40, 347, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 146, 40, 348, NULL, 'Nước', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 80, 160, 40, 349, NULL, 'Nhân đậu đỏ', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 10, 129, 40, 350, NULL, 'Bột bắp', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 1, 161, 41, 351, NULL, 'Chanh tươi', 'quả');
INSERT INTO `recipe_ingredients` VALUES (1, 10, 162, 41, 352, NULL, 'Lá bạc hà', 'lá');
INSERT INTO `recipe_ingredients` VALUES (2, 20, 24, 41, 353, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 200, 163, 41, 354, NULL, 'Nước soda', 'ml');
INSERT INTO `recipe_ingredients` VALUES (4, 100, 135, 41, 355, NULL, 'Đá viên', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 150, 164, 42, 356, NULL, 'Dâu tây tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 1, 165, 42, 357, NULL, 'Chuối chín', 'quả');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 126, 42, 358, NULL, 'Sữa tươi không đường', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 166, 42, 359, NULL, 'Sữa chua', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 50, 135, 42, 360, NULL, 'Đá viên', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 18, 167, 43, 361, NULL, 'Hạt cà phê rang xay', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 30, 168, 43, 362, NULL, 'Nước nóng', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 169, 44, 363, NULL, 'Trà đen', 'thìa cà phê');
INSERT INTO `recipe_ingredients` VALUES (1, 200, 128, 44, 364, NULL, 'Sữa tươi', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 5, 170, 44, 365, NULL, 'Gừng tươi thái lát', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 1, 9, 44, 366, NULL, 'Quế', 'thanh');
INSERT INTO `recipe_ingredients` VALUES (4, 3, 11, 44, 367, NULL, 'Đinh hương', 'cái');
INSERT INTO `recipe_ingredients` VALUES (5, 1, 171, 44, 368, NULL, 'Hạt tiêu đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (6, 10, 24, 44, 369, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 150, 172, 45, 370, NULL, 'Xoài chín', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 100, 173, 45, 371, NULL, 'Sữa dừa', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 126, 45, 372, NULL, 'Sữa tươi không đường', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 135, 45, 373, NULL, 'Đá viên', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 10, 69, 45, 374, NULL, 'Mật ong', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 174, 46, 375, NULL, 'Bột matcha Nhật Bản', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 30, 175, 46, 376, NULL, 'Nước nóng 70°C', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 150, 126, 46, 377, NULL, 'Sữa tươi không đường', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 10, 24, 46, 378, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 176, 47, 379, NULL, 'Trà Ô Long túi lọc', 'túi');
INSERT INTO `recipe_ingredients` VALUES (1, 50, 138, 47, 380, NULL, 'Trân châu đen', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 500, 146, 47, 381, NULL, 'Nước', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 30, 139, 47, 382, NULL, 'Đường nâu', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 100, 128, 47, 383, NULL, 'Sữa tươi', 'ml');
INSERT INTO `recipe_ingredients` VALUES (0, 100, 177, 48, 384, NULL, 'Socola đen 70%', 'g');
INSERT INTO `recipe_ingredients` VALUES (1, 250, 128, 48, 385, NULL, 'Sữa tươi', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 15, 24, 48, 386, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 50, 178, 48, 387, NULL, 'Kem tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 60, 179, 49, 388, NULL, 'Espresso', 'ml');
INSERT INTO `recipe_ingredients` VALUES (1, 100, 128, 49, 389, NULL, 'Sữa tươi', 'ml');
INSERT INTO `recipe_ingredients` VALUES (2, 100, 135, 49, 390, NULL, 'Đá viên', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 15, 180, 49, 391, NULL, 'Siro caramel hoặc vani', 'ml');
INSERT INTO `recipe_ingredients` VALUES (4, 30, 178, 49, 392, NULL, 'Kem tươi', 'g');
INSERT INTO `recipe_ingredients` VALUES (0, 2, 181, 50, 393, NULL, 'Trà xanh Trung Quốc/Marocco', 'thìa cà phê');
INSERT INTO `recipe_ingredients` VALUES (1, 10, 182, 50, 394, NULL, 'Lá bạc hà tươi', 'lá');
INSERT INTO `recipe_ingredients` VALUES (2, 400, 137, 50, 395, NULL, 'Nước sôi', 'ml');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 24, 50, 396, NULL, 'Đường', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 1, 183, 50, 397, NULL, 'Chanh cắt lát', 'quả');
INSERT INTO `recipe_ingredients` VALUES (1, 400, 71, 11, 398, '', 'Cá diêu hồng', 'g');
INSERT INTO `recipe_ingredients` VALUES (2, 50, 72, 11, 399, '', 'Bột chiên xù', 'g');
INSERT INTO `recipe_ingredients` VALUES (3, 20, 65, 11, 400, '', 'Bột mì', 'g');
INSERT INTO `recipe_ingredients` VALUES (4, 1, 51, 11, 401, '', 'Trứng gà', 'cái');
INSERT INTO `recipe_ingredients` VALUES (5, 200, 70, 11, 402, '', 'Dầu ăn', 'ml');
INSERT INTO `recipe_ingredients` VALUES (6, 5, 13, 11, 403, '', 'Muối', 'g');
INSERT INTO `recipe_ingredients` VALUES (7, 1, 17, 11, 404, '', 'Tiêu', 'g');
INSERT INTO `recipe_ingredients` VALUES (8, 0.5, 73, 11, 405, '', 'Chanh', 'quả');
INSERT INTO `recipe_ingredients` VALUES (1, 1, 184, 51, 407, '', 'Gà', 'con');

-- ----------------------------
-- Table structure for recipe_likes
-- ----------------------------
DROP TABLE IF EXISTS `recipe_likes`;
CREATE TABLE `recipe_likes`  (
  `created_at` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK1u6kg3g0ve2mg61i7n0ctb1eo`(`user_id` ASC, `recipe_id` ASC) USING BTREE,
  INDEX `FK123rwitbkijue4y39x2a9pqqb`(`recipe_id` ASC) USING BTREE,
  CONSTRAINT `FK123rwitbkijue4y39x2a9pqqb` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK3h43xv6xr4dr42hpl8xym711d` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe_likes
-- ----------------------------
INSERT INTO `recipe_likes` VALUES ('2026-01-06 12:58:44.000000', 1, 51, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 12:58:45.000000', 2, 1, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 12:58:46.000000', 3, 20, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 12:58:47.000000', 4, 31, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 13:03:35.000000', 5, 5, 5);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 13:03:37.000000', 6, 6, 5);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 13:03:39.000000', 7, 4, 5);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:02:20.000000', 9, 1, 5);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:02:21.000000', 10, 20, 5);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:02:22.000000', 11, 31, 5);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:08:12.000000', 12, 51, 3);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:08:13.000000', 13, 1, 3);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:08:14.000000', 14, 20, 3);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:08:15.000000', 15, 31, 3);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:08:16.000000', 16, 5, 3);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:08:17.000000', 17, 6, 3);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 14:08:19.000000', 18, 4, 3);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 15:07:08.000000', 21, 51, 5);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 19:11:40.000000', 22, 41, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 19:11:41.000000', 23, 42, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 19:11:42.000000', 24, 43, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 19:11:43.000000', 25, 44, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 19:11:48.000000', 26, 45, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 19:11:49.000000', 27, 46, 7);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 20:30:49.000000', 28, 1, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 20:30:49.000000', 29, 20, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 20:30:50.000000', 30, 31, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 20:30:51.000000', 31, 5, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 20:30:53.000000', 32, 6, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 20:30:55.000000', 33, 4, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-06 20:30:57.000000', 34, 41, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 20:54:50.000000', 35, 32, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 20:54:51.000000', 36, 33, 6);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 21:29:23.000000', 37, 41, 8);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 21:29:23.000000', 38, 42, 8);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 21:29:26.000000', 39, 43, 8);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 21:29:27.000000', 40, 44, 8);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 21:29:29.000000', 41, 45, 8);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 21:29:30.000000', 42, 46, 8);
INSERT INTO `recipe_likes` VALUES ('2026-01-08 21:29:32.000000', 43, 47, 8);
INSERT INTO `recipe_likes` VALUES ('2026-01-09 16:30:58.000000', 44, 34, 6);

-- ----------------------------
-- Table structure for recipe_search_index
-- ----------------------------
DROP TABLE IF EXISTS `recipe_search_index`;
CREATE TABLE `recipe_search_index`  (
  `recipe_id` bigint NOT NULL,
  `search_text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`recipe_id`) USING BTREE,
  FULLTEXT INDEX `ft_search_text`(`search_text`),
  CONSTRAINT `FKivdcs8i4lpyfjseedcvma4w8h` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe_search_index
-- ----------------------------
INSERT INTO `recipe_search_index` VALUES (1, 'Phở bò Hà Nội truyền thống Phở bò Hà Nội là món ăn đặc trưng của ẩm thực Việt Nam với nước dùng trong, ngọt thanh từ xương bò, thơm mùi quế hồi và gừng nướng. Món ăn đòi hỏi sự tỉ mỉ trong khâu chuẩn bị và ninh nước dùng. Bánh phở tươi null Xương ống bò null Thịt bò nạm null Thịt bò tái null Gừng null Hành tây null Hành tím null Hoa hồi null Quế null Thảo quả null Đinh hương null Nước mắm null Muối null Đường phèn null Hành lá null Rau mùi null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (2, 'Bún bò Huế Bún bò Huế là món ăn đặc trưng của xứ Huế với nước dùng đậm đà, cay nồng từ sả và ớt, kết hợp với bún tươi mềm và các loại thịt bò thơm ngon. Bún Huế null Xương bò null Thịt bò đùi null Sả null Hành tím null Ớt tươi null Mắm ruốc Huế null Muối null Đường null Hành lá null Rau húng quế null');
INSERT INTO `recipe_search_index` VALUES (3, 'Mì Quảng Đà Nẵng Mì Quảng là món ăn đặc sản miền Trung với sợi mì vàng, nước dùng đậm đà, thường ăn kèm tôm, thịt, trứng và rau sống. Mì Quảng null Tôm tươi null Thịt heo ba chỉ null Trứng cút null Hành tây null Đậu phộng rang null Rau sống các loại null Nước mắm null Đường null Ớt bột null');
INSERT INTO `recipe_search_index` VALUES (4, 'Hủ tiếu Nam Vang Hủ tiếu Nam Vang là món mì nước đặc trưng với sợi hủ tiếu dai, nước dùng ngọt thanh, kết hợp hải sản, thịt heo và rau sống tươi ngon. Hủ tiếu null Tôm null Thịt heo nạc null Mực null Hành tím null Rau húng quế null Giá đỗ null Nước mắm null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (5, 'Gỏi cuốn tôm thịt Gỏi cuốn là món ăn nhẹ, tươi mát, gồm bánh tráng cuốn tôm, thịt, rau sống và bún tươi, thường ăn kèm nước chấm đậm đà. Bánh tráng null Tôm luộc null Thịt heo luộc null Bún tươi null Rau xà lách null Rau mùi null Húng quế null Đậu phộng rang null Nước mắm chua ngọt null');
INSERT INTO `recipe_search_index` VALUES (6, 'Bánh mì thịt nướng Bánh mì thịt nướng là món ăn đường phố nổi tiếng với bánh mì giòn rụm, nhân thịt heo nướng thơm phức, rau sống và nước sốt đậm đà. Bánh mì baguette null Thịt heo nạc vai null Hành tây null Dưa leo null Cà rốt null Rau mùi null Tỏi null Nước mắm null Đường null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (7, 'Bánh mì chảo Bánh mì chảo là món ăn sáng phổ biến với trứng, pate, xúc xích và thịt nướng được phục vụ trong chảo nhỏ kèm bánh mì giòn. Bánh mì null Trứng gà null Pate null Xúc xích null Thịt nướng null Hành lá null Tiêu null Bơ null');
INSERT INTO `recipe_search_index` VALUES (8, 'Burger bò Burger bò là món ăn nhanh phổ biến với patty bò thơm, phô mai tan chảy, rau tươi và sốt đặc trưng, phục vụ trong bánh mì hamburger mềm. Bánh hamburger null Thịt bò băm null Phô mai cheddar null Xà lách null Cà chua null Dưa leo null Sốt mayonnaise null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (9, 'Hotdog kiểu Mỹ Hotdog là món ăn nhanh với xúc xích hấp nướng kèm bánh mì mềm, rau củ và sốt đặc trưng, tiện lợi và nhanh chóng. Bánh hotdog null Xúc xích null Hành tây null Dưa leo null Sốt ketchup null Sốt mayonnaise null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (10, 'Gà rán kiểu Hàn Quốc Gà rán Hàn Quốc giòn tan, thơm lừng với lớp sốt cay ngọt đặc trưng, thường ăn kèm cơm hoặc khoai tây chiên. Đùi gà null Bột mì null Bột chiên giòn null Trứng gà null Tỏi băm null Sốt gochujang null Mật ong null Dầu ăn null');
INSERT INTO `recipe_search_index` VALUES (11, 'Cá chiên giòn Cá chiên giòn là món ăn đơn giản nhưng hấp dẫn, với lớp vỏ vàng giòn, thịt cá mềm ngọt bên trong, thường ăn kèm nước mắm pha chua ngọt và rau sống. Cá diêu hồng  Bột chiên xù  Bột mì  Trứng gà  Dầu ăn  Muối  Tiêu  Chanh');
INSERT INTO `recipe_search_index` VALUES (12, 'Cá kho tộ Cá kho tộ là món ăn truyền thống miền Nam, cá được kho với nước mắm, đường và gia vị trong nồi đất, thịt cá mềm, thấm vị đậm đà. Cá thu null Hành tím null Tỏi null Nước mắm null Đường null Tiêu null Ớt sừng null Dầu ăn null');
INSERT INTO `recipe_search_index` VALUES (13, 'Salad Nga Salad Nga là món salad lạnh với khoai tây, cà rốt, đậu Hà Lan, trứng và mayonnaise, thường dùng làm khai vị hoặc ăn nhẹ. Khoai tây null Cà rốt null Đậu Hà Lan null Trứng luộc null Mayonnaise null Muối null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (14, 'Salad Caesar Salad Caesar là món salad trộn với rau xà lách, gà nướng, phô mai Parmesan và sốt Caesar béo ngậy, thường dùng làm món khai vị hoặc ăn nhẹ. Xà lách Romaine null Ức gà null Bánh mì nướng null Phô mai Parmesan bào null Sốt Caesar null Tiêu null Muối null');
INSERT INTO `recipe_search_index` VALUES (15, 'Gỏi đu đủ Gỏi đu đủ là món ăn nhẹ, tươi mát với đu đủ xanh bào sợi, tôm, thịt, lạc rang và nước mắm chua ngọt đặc trưng. Đu đủ xanh null Tôm tươi null Thịt ba chỉ null Lạc rang null Tỏi null Ớt tươi null Nước mắm null Đường null Chanh null');
INSERT INTO `recipe_search_index` VALUES (16, 'Bánh mì kẹp gà nướng Bánh mì kẹp gà nướng với thịt gà thấm gia vị thơm, rau sống tươi mát, sốt mayonnaise nhẹ và ớt băm cay vừa phải. Thích hợp làm bữa sáng hoặc ăn vặt. Bánh mì baguette null Ức gà null Hành tây null Cà rốt null Xà lách null Tỏi băm null Nước tương null Ớt băm null Sốt mayonnaise null Muối null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (17, 'Mì Ý sốt bò bằm Spaghetti sốt bò bằm đậm đà với cà chua chín, hành tây phi thơm, tỏi và gia vị Ý, rắc phô mai Parmesan béo ngậy. Phù hợp làm bữa trưa hoặc tối nhanh gọn. Spaghetti null Thịt bò băm null Cà chua chín null Hành tây null Tỏi băm null Dầu ô liu null Phô mai Parmesan bào null Muối null Tiêu đen null');
INSERT INTO `recipe_search_index` VALUES (18, 'Cá hồi áp chảo sốt cam Cá hồi áp chảo giữ nguyên vị ngọt tự nhiên, kết hợp sốt cam chua ngọt và mật ong, thích hợp cho bữa tối thanh lịch, dễ thực hiện tại nhà. Phi lê cá hồi null Cam tươi null Mật ong null Bơ null Muối null Tiêu đen null Dầu ô liu null');
INSERT INTO `recipe_search_index` VALUES (19, 'Gà xào sả ớt Gà xào sả ớt thơm nồng với sả, ớt tươi, hành tỏi, giữ được vị ngọt mềm của thịt gà, ăn kèm cơm trắng rất vừa miệng. Thịt gà (đùi hoặc ức) null Sả null Ớt tươi null Tỏi băm null Hành tím null Dầu ăn null Nước mắm null Đường null Tiêu đen null');
INSERT INTO `recipe_search_index` VALUES (20, 'Bò lúc lắc Bò lúc lắc là món ăn ngon, thịt bò thái vuông xào nhanh trên lửa lớn với hành tây, giữ được độ mềm và thơm, dùng kèm khoai tây chiên và rau sống. Thịt bò thăn null Hành tây null Tỏi băm null Dầu ăn null Nước tương null Tiêu đen null Muối null');
INSERT INTO `recipe_search_index` VALUES (21, 'Cá chiên giòn sốt me Cá chiên giòn bên ngoài, mềm bên trong, kết hợp sốt me chua ngọt, thơm mùi tỏi ớt, thích hợp làm món chính ăn cùng cơm. Cá diêu hồng null Bột chiên giòn null Trứng gà null Dầu ăn null Me chua null Đường null Nước mắm null Tỏi băm null Ớt băm null Hành lá null');
INSERT INTO `recipe_search_index` VALUES (22, 'Gỏi đu đủ tôm thịt Gỏi đu đủ xanh giòn, kết hợp tôm luộc, thịt ba chỉ và nước mắm chua ngọt, ăn kèm đậu phộng rang giã nhỏ và rau thơm. Đu đủ xanh null Tôm tươi null Thịt ba chỉ null Đậu phộng rang null Cà rốt null Hành tím null Tỏi null Ớt tươi null Đường null Nước mắm null Chanh null Rau thơm (ngò, húng) null');
INSERT INTO `recipe_search_index` VALUES (23, 'Mì Quảng gà Mì Quảng với sợi mì dai, nước dùng đậm đà từ gà luộc, ăn kèm tôm, đậu phộng rang, rau sống và bánh tráng nướng giòn. Mì Quảng tươi null Thịt gà đùi null Tôm tươi null Đậu phộng rang null Hành tím null Tỏi null Hành lá null Rau sống (rau răm, húng quế) null Nước mắm null Muối null Đường null Bánh tráng nướng null');
INSERT INTO `recipe_search_index` VALUES (24, 'Bún bò Huế Bún bò Huế đậm vị cay nồng, nước dùng hầm xương bò và giò heo, kết hợp sả, ớt, mắm ruốc đặc trưng, ăn kèm bún và rau sống. Xương ống bò null Giò heo null Thịt bò nạm null Bún tươi null Sả null Hành tím null Ớt bột null Mắm ruốc Huế null Muối null Đường phèn null Rau sống (rau húng, giá, hành lá) null Tiêu null');
INSERT INTO `recipe_search_index` VALUES (25, 'Hủ tiếu Nam Vang Hủ tiếu Nam Vang nước trong, ngọt thanh từ xương heo và tôm, kèm thịt heo, tôm, gan và trứng cút, ăn kèm rau sống và giá. Hủ tiếu tươi null Xương heo null Thịt heo nạc null Tôm tươi null Gan heo null Trứng cút null Hành tím null Tỏi băm null Dầu ăn null Nước mắm null Muối null Đường null Rau sống, giá null');
INSERT INTO `recipe_search_index` VALUES (26, 'Bánh xèo miền Trung Bánh xèo giòn rụm, nhân tôm, thịt ba chỉ và giá, ăn kèm rau sống và nước mắm pha chua ngọt. Bột gạo null Nước cốt dừa null Tôm tươi null Thịt ba chỉ null Giá đỗ null Hành lá null Dầu ăn null Muối null Đường null Nước mắm null Rau sống (xà lách, húng quế) null');
INSERT INTO `recipe_search_index` VALUES (27, 'Cá kho tộ Cá kho tộ với cá basa hoặc cá diêu hồng, kho trong nồi đất cùng nước mắm, đường, tiêu và hành phi thơm, thịt cá thấm gia vị, màu cánh gián đẹp mắt. Cá basa null Hành tím null Tỏi băm null Nước mắm null Đường null Tiêu null Dầu ăn null Hành lá null');
INSERT INTO `recipe_search_index` VALUES (28, 'Gỏi cuốn tôm thịt Gỏi cuốn tôm thịt tươi mát, kết hợp bún tươi, rau sống và bánh tráng mềm, ăn kèm nước chấm pha chua ngọt với đậu phộng giã. Bánh tráng null Bún tươi null Tôm tươi null Thịt heo luộc null Rau sống (xà lách, húng quế, rau thơm) null Đậu phộng rang null Nước mắm null Đường null Chanh null Tỏi băm null Ớt băm null');
INSERT INTO `recipe_search_index` VALUES (29, 'Bánh mì thịt nướng Bánh mì thịt nướng thơm lừng, thịt heo ướp thấm gia vị, nướng than hoa, kèm rau sống, đồ chua và nước sốt đặc trưng. Bánh mì null Thịt heo thăn null Tỏi băm null Hành tím băm null Nước mắm null Đường null Tiêu null Dưa leo null Cà rốt ngâm chua null Rau thơm null');
INSERT INTO `recipe_search_index` VALUES (30, 'Hotdog tự làm Hotdog với xúc xích nướng, bánh mì mềm, sốt cà chua và mayonnaise, thêm hành phi và dưa leo, dễ làm cho bữa ăn nhanh hoặc tiệc nhỏ. Bánh mì hotdog null Xúc xích null Dưa leo thái lát null Cà chua thái lát null Hành phi null Sốt cà chua null Mayonnaise null');
INSERT INTO `recipe_search_index` VALUES (31, 'Bánh bông lan trứng muối Bánh bông lan mềm mịn, thơm béo trứng, kết hợp lớp trứng muối mặn ngọt, thích hợp làm quà hoặc tiệc nhỏ. Bột mì null Trứng gà null Đường null Bơ lạt null Trứng muối null Sữa tươi không đường null Muối null');
INSERT INTO `recipe_search_index` VALUES (32, 'Pudding socola Pudding socola mềm mịn, thơm ngọt béo, làm nhanh, thích hợp tráng miệng cho cả gia đình. Socola đen null Sữa tươi null Đường null Bột bắp null Trứng gà null Vanilla null');
INSERT INTO `recipe_search_index` VALUES (33, 'Chè đậu xanh nước cốt dừa Chè đậu xanh bùi, thơm mùi nước cốt dừa, ngọt thanh, dùng nóng hoặc lạnh đều ngon. Đậu xanh cà vỏ null Đường null Nước cốt dừa null Muối null Lá dứa null');
INSERT INTO `recipe_search_index` VALUES (34, 'Sinh tố bơ Sinh tố bơ mịn, thơm béo, ngọt thanh, thích hợp uống vào buổi sáng hoặc trưa. Quả bơ chín null Sữa đặc có đường null Sữa tươi không đường null Đá viên null');
INSERT INTO `recipe_search_index` VALUES (35, 'Trà sữa trân châu Trà sữa thơm vị trà đen, ngọt béo, kết hợp trân châu dai dai, làm tại nhà đơn giản. Trà đen túi lọc null Nước sôi null Sữa đặc có đường null Trân châu đen null Đường nâu null Đá viên null');
INSERT INTO `recipe_search_index` VALUES (36, 'Kimchi Hàn Quốc Kimchi cải thảo cay nồng, lên men tự nhiên, dùng kèm cơm, món ăn truyền thống Hàn Quốc. Cải thảo null Muối hạt null Cà rốt null Hành lá null Bột ớt Hàn Quốc null Tỏi băm null Gừng băm null Nước mắm Hàn Quốc (hoặc mắm truyền thống) null');
INSERT INTO `recipe_search_index` VALUES (37, 'Sushi cuộn cơ bản (Maki) Sushi Maki cuộn rong biển với cơm, cá tươi hoặc rau, ăn kèm nước tương và wasabi, món ăn đặc trưng Nhật Bản. Gạo Nhật null Nước null Giấm gạo null Đường null Muối null Rong biển (Nori) null Cá hồi tươi null Dưa leo null');
INSERT INTO `recipe_search_index` VALUES (38, 'Ramen Nhật Bản Món mì ramen với nước dùng thơm ngọt từ xương, kết hợp mì tươi, trứng luộc, thịt lợn, nấm và hành lá. Xương heo null Thịt ba chỉ heo null Mì ramen tươi null Trứng null Hành lá null Nấm shiitake null Nước tương null Miso null');
INSERT INTO `recipe_search_index` VALUES (39, 'Bibimbap Hàn Quốc Cơm trộn Bibimbap với rau xào, thịt bò ướp, trứng ốp la, ăn kèm sốt Gochujang cay đặc trưng Hàn Quốc. Cơm trắng null Thịt bò băm null Cà rốt null Rau bina null Giá đỗ null Trứng null Gochujang null Dầu mè null');
INSERT INTO `recipe_search_index` VALUES (40, 'Mochi Nhật Bản nhân đậu đỏ Bánh Mochi mềm dẻo, nhân đậu đỏ ngọt thanh, món tráng miệng truyền thống Nhật Bản. Bột Mochiko (bột gạo nếp Nhật) null Đường null Nước null Nhân đậu đỏ null Bột bắp null');
INSERT INTO `recipe_search_index` VALUES (41, 'Mojito chanh bạc hà (không cồn) Mojito không cồn, thơm mát vị bạc hà và chanh, thích hợp giải khát ngày hè. Chanh tươi null Lá bạc hà null Đường null Nước soda null Đá viên null');
INSERT INTO `recipe_search_index` VALUES (42, 'Smoothie dâu tây chuối Sinh tố dâu chuối mềm mịn, ngọt thanh, giàu vitamin, thích hợp uống sáng hoặc sau tập thể dục. Dâu tây tươi null Chuối chín null Sữa tươi không đường null Sữa chua null Đá viên null');
INSERT INTO `recipe_search_index` VALUES (43, 'Cà phê kiểu Ý (Espresso) Espresso đậm đặc, hương thơm nồng nàn, cơ bản để làm các món cà phê Ý khác như Latte hoặc Cappuccino. Hạt cà phê rang xay null Nước nóng null');
INSERT INTO `recipe_search_index` VALUES (44, 'Trà nóng Chai Masala Ấn Độ Trà Masala Ấn Độ thơm nồng hương gia vị, pha với sữa béo, thích hợp uống buổi sáng hoặc chiều tối. Trà đen null Sữa tươi null Gừng tươi thái lát null Quế null Đinh hương null Hạt tiêu đen null Đường null');
INSERT INTO `recipe_search_index` VALUES (45, 'Smoothie xoài dừa kiểu Thái Smoothie xoài dừa thơm mát, ngọt thanh, kết hợp sữa dừa và xoài chín, đặc trưng đồ uống Thái Lan. Xoài chín null Sữa dừa null Sữa tươi không đường null Đá viên null Mật ong null');
INSERT INTO `recipe_search_index` VALUES (46, 'Matcha Latte Nhật Bản Matcha Latte thơm mát, kết hợp bột trà xanh Nhật Bản với sữa nóng, tạo vị ngọt dịu và màu xanh tự nhiên. Bột matcha Nhật Bản null Nước nóng 70°C null Sữa tươi không đường null Đường null');
INSERT INTO `recipe_search_index` VALUES (47, 'Trà Ô Long Trân Châu Trà Ô Long trân châu kiểu Đài Loan, thơm trà, dai trân châu, kết hợp vị ngọt vừa phải. Trà Ô Long túi lọc null Trân châu đen null Nước null Đường nâu null Sữa tươi null');
INSERT INTO `recipe_search_index` VALUES (48, 'Chocolate nóng kiểu Bỉ Chocolate nóng đậm đặc, béo ngậy, dùng làm món uống sáng hoặc giải khát lạnh, trang trí kem tươi. Socola đen 70% null Sữa tươi null Đường null Kem tươi null');
INSERT INTO `recipe_search_index` VALUES (49, 'Frappuccino cà phê kiểu Mỹ Đồ uống cà phê lạnh kiểu Starbucks, kết hợp espresso, đá xay nhuyễn, sữa và siro ngọt. Espresso null Sữa tươi null Đá viên null Siro caramel hoặc vani null Kem tươi null');
INSERT INTO `recipe_search_index` VALUES (50, 'Trà bạc hà chanh kiểu Morocco Trà xanh kết hợp lá bạc hà tươi và chanh, thơm mát, đặc trưng phong cách Morocco. Trà xanh Trung Quốc/Marocco null Lá bạc hà tươi null Nước sôi null Đường null Chanh cắt lát null');
INSERT INTO `recipe_search_index` VALUES (51, 'Đùi gà chiên giòn kiểu KFC Đùi gà chiên giòn kiểu KFC Món Việt Nam Gà');

-- ----------------------------
-- Table structure for recipe_tag
-- ----------------------------
DROP TABLE IF EXISTS `recipe_tag`;
CREATE TABLE `recipe_tag`  (
  `recipe_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`recipe_id`, `tag_id`) USING BTREE,
  INDEX `FKgacff6kvp9yp5363hebxsntfq`(`tag_id` ASC) USING BTREE,
  CONSTRAINT `FK8gpobc1topymhoqthe19ncagh` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKgacff6kvp9yp5363hebxsntfq` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe_tag
-- ----------------------------

-- ----------------------------
-- Table structure for recipe_views
-- ----------------------------
DROP TABLE IF EXISTS `recipe_views`;
CREATE TABLE `recipe_views`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `viewed_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKg1qsmulxsv8o07mw5enb498dv`(`recipe_id` ASC, `user_id` ASC) USING BTREE,
  INDEX `FKqk9lqm4jmd9rylxa32msy43c8`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK5fn9ynbjpapup4r3267tf92kp` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKqk9lqm4jmd9rylxa32msy43c8` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe_views
-- ----------------------------
INSERT INTO `recipe_views` VALUES (1, 1, 7, '2026-01-06 12:36:06.000000');
INSERT INTO `recipe_views` VALUES (2, 20, 7, '2026-01-06 12:37:18.000000');
INSERT INTO `recipe_views` VALUES (3, 11, 3, '2026-01-06 11:34:34.000000');
INSERT INTO `recipe_views` VALUES (4, 31, 5, '2026-01-06 12:44:20.000000');
INSERT INTO `recipe_views` VALUES (5, 51, 5, '2026-01-06 15:36:14.000000');
INSERT INTO `recipe_views` VALUES (6, 20, 5, '2026-01-06 12:55:40.000000');
INSERT INTO `recipe_views` VALUES (7, 1, 5, '2026-01-06 13:40:01.000000');
INSERT INTO `recipe_views` VALUES (8, 2, 5, '2026-01-06 14:53:30.000000');
INSERT INTO `recipe_views` VALUES (9, 8, 5, '2026-01-06 14:52:46.000000');
INSERT INTO `recipe_views` VALUES (10, 31, 7, '2026-01-06 19:39:03.000000');
INSERT INTO `recipe_views` VALUES (11, 41, 7, '2026-01-07 08:37:36.000000');
INSERT INTO `recipe_views` VALUES (12, 20, 6, '2026-01-08 20:43:01.000000');
INSERT INTO `recipe_views` VALUES (13, 41, 6, '2026-01-08 20:44:38.000000');
INSERT INTO `recipe_views` VALUES (14, 42, 7, '2026-01-08 20:52:23.000000');
INSERT INTO `recipe_views` VALUES (15, 37, 6, '2026-01-09 16:08:26.000000');
INSERT INTO `recipe_views` VALUES (16, 38, 6, '2026-01-09 16:08:34.000000');
INSERT INTO `recipe_views` VALUES (17, 39, 6, '2026-01-08 21:00:24.000000');
INSERT INTO `recipe_views` VALUES (18, 31, 6, '2026-01-10 10:27:36.000000');
INSERT INTO `recipe_views` VALUES (19, 1, 6, '2026-01-10 10:27:30.000000');
INSERT INTO `recipe_views` VALUES (20, 41, 8, '2026-01-09 16:36:57.000000');
INSERT INTO `recipe_views` VALUES (21, 34, 6, '2026-01-09 16:32:03.000000');
INSERT INTO `recipe_views` VALUES (22, 4, 6, '2026-01-09 16:35:00.000000');
INSERT INTO `recipe_views` VALUES (23, 7, 6, '2026-01-09 16:35:46.000000');
INSERT INTO `recipe_views` VALUES (24, 19, 6, '2026-01-10 07:32:46.000000');
INSERT INTO `recipe_views` VALUES (25, 32, 6, '2026-01-10 07:35:29.000000');
INSERT INTO `recipe_views` VALUES (26, 15, 6, '2026-01-10 07:36:41.000000');

-- ----------------------------
-- Table structure for recipes
-- ----------------------------
DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes`  (
  `cook_time` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `prep_time` bigint NOT NULL,
  `recipe_id` bigint NOT NULL AUTO_INCREMENT,
  `servings` bigint NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  `views` bigint NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `difficulty` enum('EASY','HARD','MEDIUM','VERY_EASY','VERY_HARD') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scope` enum('DRAFT','PRIVATE','PUBLIC') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('APPROVED','DELETED','PENDING','REJECTED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`recipe_id`) USING BTREE,
  INDEX `FKlc3x6yty3xsupx80hqbj9ayos`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKlc3x6yty3xsupx80hqbj9ayos` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipes
-- ----------------------------
INSERT INTO `recipes` VALUES (180, '2026-01-06 11:11:01.000000', 45, 1, 2, '2026-01-06 11:11:01.000000', 2, 14, '/static_resource/public/upload/recipes/58cf9f88-a930-4b92-8ea1-28ce0c832d60_f.ext', 'Phở bò Hà Nội truyền thống', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Phở bò Hà Nội là món ăn đặc trưng của ẩm thực Việt Nam với nước dùng trong, ngọt thanh từ xương bò, thơm mùi quế hồi và gừng nướng. Món ăn đòi hỏi sự tỉ mỉ trong khâu chuẩn bị và ninh nước dùng.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (120, '2026-01-06 11:11:01.000000', 40, 2, 2, '2026-01-06 11:11:01.000000', 2, 3, '/static_resource/public/upload/recipes/4c9b9353-3868-442f-b1e3-5665b90b4b4a_f.ext', 'Bún bò Huế', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bún bò Huế là món ăn đặc trưng của xứ Huế với nước dùng đậm đà, cay nồng từ sả và ớt, kết hợp với bún tươi mềm và các loại thịt bò thơm ngon.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (45, '2026-01-06 11:11:01.000000', 30, 3, 2, '2026-01-06 11:11:01.000000', 2, 0, '/static_resource/public/upload/recipes/2a05cb2f-9735-4e4f-b39a-7ffd6eb59b7c_f.ext', 'Mì Quảng Đà Nẵng', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Mì Quảng là món ăn đặc sản miền Trung với sợi mì vàng, nước dùng đậm đà, thường ăn kèm tôm, thịt, trứng và rau sống.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (60, '2026-01-06 11:11:02.000000', 25, 4, 2, '2026-01-06 11:11:02.000000', 2, 5, '/static_resource/public/upload/recipes/ed435f00-ff7c-4ce0-bece-44ff0b29489a_f.ext', 'Hủ tiếu Nam Vang', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Hủ tiếu Nam Vang là món mì nước đặc trưng với sợi hủ tiếu dai, nước dùng ngọt thanh, kết hợp hải sản, thịt heo và rau sống tươi ngon.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (0, '2026-01-06 11:11:02.000000', 25, 5, 4, '2026-01-06 11:11:02.000000', 2, 0, '/static_resource/public/upload/recipes/265e5300-180e-442f-8a86-07c2e75debfa_f.ext', 'Gỏi cuốn tôm thịt', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Gỏi cuốn là món ăn nhẹ, tươi mát, gồm bánh tráng cuốn tôm, thịt, rau sống và bún tươi, thường ăn kèm nước chấm đậm đà.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:11:02.000000', 20, 6, 2, '2026-01-06 11:11:02.000000', 2, 0, '/static_resource/public/upload/recipes/383ce969-6ecb-4b49-998c-9e0411ff0a13_f.ext', 'Bánh mì thịt nướng', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bánh mì thịt nướng là món ăn đường phố nổi tiếng với bánh mì giòn rụm, nhân thịt heo nướng thơm phức, rau sống và nước sốt đậm đà.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:11:02.000000', 15, 7, 2, '2026-01-06 11:11:02.000000', 2, 1, '/static_resource/public/upload/recipes/1ae3adb0-b3cf-43c9-88ab-e9c075b1cdb8_f.ext', 'Bánh mì chảo', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bánh mì chảo là món ăn sáng phổ biến với trứng, pate, xúc xích và thịt nướng được phục vụ trong chảo nhỏ kèm bánh mì giòn.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:11:02.000000', 15, 8, 2, '2026-01-06 11:11:02.000000', 2, 3, '/static_resource/public/upload/recipes/94e85f15-e569-4aeb-83b9-cf062d33cd2c_f.ext', 'Burger bò', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Burger bò là món ăn nhanh phổ biến với patty bò thơm, phô mai tan chảy, rau tươi và sốt đặc trưng, phục vụ trong bánh mì hamburger mềm.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (5, '2026-01-06 11:11:02.000000', 10, 9, 2, '2026-01-06 11:11:02.000000', 2, 0, '/static_resource/public/upload/recipes/53a93b23-dab4-4e41-9b2b-a33652a43dc9_f.ext', 'Hotdog kiểu Mỹ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Hotdog là món ăn nhanh với xúc xích hấp nướng kèm bánh mì mềm, rau củ và sốt đặc trưng, tiện lợi và nhanh chóng.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (25, '2026-01-06 11:11:02.000000', 20, 10, 2, '2026-01-06 11:11:02.000000', 2, 0, '/static_resource/public/upload/recipes/7829e4c7-09da-4a1a-b86f-916f514f87c8_f.ext', 'Gà rán kiểu Hàn Quốc', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Gà rán Hàn Quốc giòn tan, thơm lừng với lớp sốt cay ngọt đặc trưng, thường ăn kèm cơm hoặc khoai tây chiên.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:12:24.000000', 15, 11, 2, '2026-01-06 11:34:38.000000', 3, 3, '/static_resource/public/upload/recipes/5b60c029-6e46-4bcf-b84a-637b2eb469ed_f.ext', 'Cá chiên giòn', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Cá chiên giòn là món ăn đơn giản nhưng hấp dẫn, với lớp vỏ vàng giòn, thịt cá mềm ngọt bên trong, thường ăn kèm nước mắm pha chua ngọt và rau sống.', 'EASY', 'PRIVATE', 'APPROVED');
INSERT INTO `recipes` VALUES (45, '2026-01-06 11:12:24.000000', 15, 12, 2, '2026-01-06 11:12:24.000000', 3, 0, '/static_resource/public/upload/recipes/8217e12d-7f44-4091-bc0f-17136ab15d84_f.ext', 'Cá kho tộ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Cá kho tộ là món ăn truyền thống miền Nam, cá được kho với nước mắm, đường và gia vị trong nồi đất, thịt cá mềm, thấm vị đậm đà.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:12:24.000000', 20, 13, 2, '2026-01-06 11:12:24.000000', 3, 0, '/static_resource/public/upload/recipes/759658da-9fab-4b37-b36c-9418722ee6dc_f.ext', 'Salad Nga', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Salad Nga là món salad lạnh với khoai tây, cà rốt, đậu Hà Lan, trứng và mayonnaise, thường dùng làm khai vị hoặc ăn nhẹ.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:12:24.000000', 15, 14, 2, '2026-01-06 11:12:24.000000', 3, 0, '/static_resource/public/upload/recipes/ed009afd-b8f0-43a6-9bf6-a96cd3e86ca8_f.ext', 'Salad Caesar', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Salad Caesar là món salad trộn với rau xà lách, gà nướng, phô mai Parmesan và sốt Caesar béo ngậy, thường dùng làm món khai vị hoặc ăn nhẹ.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (5, '2026-01-06 11:12:24.000000', 20, 15, 2, '2026-01-06 11:12:24.000000', 3, 2, '/static_resource/public/upload/recipes/e39f4409-005b-4ba0-b203-dad97dc88f62_f.ext', 'Gỏi đu đủ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Gỏi đu đủ là món ăn nhẹ, tươi mát với đu đủ xanh bào sợi, tôm, thịt, lạc rang và nước mắm chua ngọt đặc trưng.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:12:24.000000', 20, 16, 2, '2026-01-06 11:12:24.000000', 3, 0, '/static_resource/public/upload/recipes/380d2b31-7377-477e-8e5e-e41f1244b93d_f.ext', 'Bánh mì kẹp gà nướng', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bánh mì kẹp gà nướng với thịt gà thấm gia vị thơm, rau sống tươi mát, sốt mayonnaise nhẹ và ớt băm cay vừa phải. Thích hợp làm bữa sáng hoặc ăn vặt.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (25, '2026-01-06 11:12:24.000000', 15, 17, 2, '2026-01-06 11:12:24.000000', 3, 0, '/static_resource/public/upload/recipes/9e71b63a-a6ae-42b7-9837-98b68064651b_f.ext', 'Mì Ý sốt bò bằm', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Spaghetti sốt bò bằm đậm đà với cà chua chín, hành tây phi thơm, tỏi và gia vị Ý, rắc phô mai Parmesan béo ngậy. Phù hợp làm bữa trưa hoặc tối nhanh gọn.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:12:24.000000', 15, 18, 2, '2026-01-06 11:12:24.000000', 3, 0, '/static_resource/public/upload/recipes/5e019e79-ccc9-4cb0-9a7a-4b15d38c87b4_f.ext', 'Cá hồi áp chảo sốt cam', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Cá hồi áp chảo giữ nguyên vị ngọt tự nhiên, kết hợp sốt cam chua ngọt và mật ong, thích hợp cho bữa tối thanh lịch, dễ thực hiện tại nhà.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:12:24.000000', 15, 19, 2, '2026-01-06 11:12:24.000000', 3, 1, '/static_resource/public/upload/recipes/c2576485-5f45-4856-90a4-4ac72191912c_f.ext', 'Gà xào sả ớt', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Gà xào sả ớt thơm nồng với sả, ớt tươi, hành tỏi, giữ được vị ngọt mềm của thịt gà, ăn kèm cơm trắng rất vừa miệng.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:12:24.000000', 15, 20, 2, '2026-01-06 11:12:24.000000', 3, 10, '/static_resource/public/upload/recipes/37665373-fadd-41fd-8f08-d4bbeb17a23f_f.ext', 'Bò lúc lắc', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bò lúc lắc là món ăn ngon, thịt bò thái vuông xào nhanh trên lửa lớn với hành tây, giữ được độ mềm và thơm, dùng kèm khoai tây chiên và rau sống.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (25, '2026-01-06 11:13:47.000000', 20, 21, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/f1dcf640-d268-48e8-b21c-37784d09969e_f.ext', 'Cá chiên giòn sốt me', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Cá chiên giòn bên ngoài, mềm bên trong, kết hợp sốt me chua ngọt, thơm mùi tỏi ớt, thích hợp làm món chính ăn cùng cơm.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:13:47.000000', 20, 22, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/cf143d8b-c4ca-4e33-adc7-e24988a362d8_f.ext', 'Gỏi đu đủ tôm thịt', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Gỏi đu đủ xanh giòn, kết hợp tôm luộc, thịt ba chỉ và nước mắm chua ngọt, ăn kèm đậu phộng rang giã nhỏ và rau thơm.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (40, '2026-01-06 11:13:47.000000', 25, 23, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/e1b639d5-fff2-4f73-9614-5b336cbc6251_f.ext', 'Mì Quảng gà', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Mì Quảng với sợi mì dai, nước dùng đậm đà từ gà luộc, ăn kèm tôm, đậu phộng rang, rau sống và bánh tráng nướng giòn.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (180, '2026-01-06 11:13:47.000000', 30, 24, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/1461ff01-090c-411a-8528-e1c9df3ef4f1_f.ext', 'Bún bò Huế', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bún bò Huế đậm vị cay nồng, nước dùng hầm xương bò và giò heo, kết hợp sả, ớt, mắm ruốc đặc trưng, ăn kèm bún và rau sống.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (60, '2026-01-06 11:13:47.000000', 25, 25, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/09404910-3bc4-4b8c-b495-85b6fc5091ea_f.ext', 'Hủ tiếu Nam Vang', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Hủ tiếu Nam Vang nước trong, ngọt thanh từ xương heo và tôm, kèm thịt heo, tôm, gan và trứng cút, ăn kèm rau sống và giá.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:13:47.000000', 25, 26, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/70dc187f-9e52-4a8f-9b5b-b82de78b236f_f.ext', 'Bánh xèo miền Trung', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bánh xèo giòn rụm, nhân tôm, thịt ba chỉ và giá, ăn kèm rau sống và nước mắm pha chua ngọt.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (40, '2026-01-06 11:13:47.000000', 20, 27, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/ff35ad8e-b019-4697-ae68-f9a85e4078d2_f.ext', 'Cá kho tộ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Cá kho tộ với cá basa hoặc cá diêu hồng, kho trong nồi đất cùng nước mắm, đường, tiêu và hành phi thơm, thịt cá thấm gia vị, màu cánh gián đẹp mắt.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (5, '2026-01-06 11:13:47.000000', 20, 28, 2, '2026-01-06 11:13:47.000000', 4, 0, '/static_resource/public/upload/recipes/fae9e216-e9a3-4a62-a8f0-ac95b5b08aa1_f.ext', 'Gỏi cuốn tôm thịt', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Gỏi cuốn tôm thịt tươi mát, kết hợp bún tươi, rau sống và bánh tráng mềm, ăn kèm nước chấm pha chua ngọt với đậu phộng giã.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:13:48.000000', 20, 29, 2, '2026-01-06 11:13:48.000000', 4, 0, '/static_resource/public/upload/recipes/d2757c4b-b578-4b8c-b913-e7a23d905066_f.ext', 'Bánh mì thịt nướng', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bánh mì thịt nướng thơm lừng, thịt heo ướp thấm gia vị, nướng than hoa, kèm rau sống, đồ chua và nước sốt đặc trưng.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:13:48.000000', 10, 30, 2, '2026-01-06 11:13:48.000000', 4, 0, '/static_resource/public/upload/recipes/2a8a3459-1530-4835-8470-c15cb966c03a_f.ext', 'Hotdog tự làm', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Hotdog với xúc xích nướng, bánh mì mềm, sốt cà chua và mayonnaise, thêm hành phi và dưa leo, dễ làm cho bữa ăn nhanh hoặc tiệc nhỏ.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (30, '2026-01-06 11:14:40.000000', 20, 31, 6, '2026-01-06 11:14:40.000000', 5, 17, '/static_resource/public/upload/recipes/aba87f53-0216-4af3-844e-92c6d2e1e615_f.ext', 'Bánh bông lan trứng muối', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bánh bông lan mềm mịn, thơm béo trứng, kết hợp lớp trứng muối mặn ngọt, thích hợp làm quà hoặc tiệc nhỏ.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:14:40.000000', 10, 32, 4, '2026-01-06 11:14:40.000000', 5, 1, '/static_resource/public/upload/recipes/e0e4596c-3b67-4397-84e0-8a7ca7b8fd59_f.ext', 'Pudding socola', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Pudding socola mềm mịn, thơm ngọt béo, làm nhanh, thích hợp tráng miệng cho cả gia đình.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (30, '2026-01-06 11:14:40.000000', 15, 33, 4, '2026-01-06 11:14:40.000000', 5, 0, '/static_resource/public/upload/recipes/e81ec92e-5ecd-42c8-9160-80e4ecfd1b99_f.ext', 'Chè đậu xanh nước cốt dừa', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Chè đậu xanh bùi, thơm mùi nước cốt dừa, ngọt thanh, dùng nóng hoặc lạnh đều ngon.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (0, '2026-01-06 11:14:40.000000', 5, 34, 2, '2026-01-06 11:14:40.000000', 5, 3, '/static_resource/public/upload/recipes/795bba20-7121-485b-b8be-6171c93127b8_f.ext', 'Sinh tố bơ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Sinh tố bơ mịn, thơm béo, ngọt thanh, thích hợp uống vào buổi sáng hoặc trưa.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:14:40.000000', 15, 35, 2, '2026-01-06 11:14:40.000000', 5, 0, '/static_resource/public/upload/recipes/49f33ad6-f527-45d8-802e-6ba917cb4cb0_f.ext', 'Trà sữa trân châu', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Trà sữa thơm vị trà đen, ngọt béo, kết hợp trân châu dai dai, làm tại nhà đơn giản.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (0, '2026-01-06 11:14:40.000000', 30, 36, 4, '2026-01-06 11:14:40.000000', 5, 0, '/static_resource/public/upload/recipes/6206b8d6-464c-4618-962a-537b4357fb92_f.ext', 'Kimchi Hàn Quốc', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Kimchi cải thảo cay nồng, lên men tự nhiên, dùng kèm cơm, món ăn truyền thống Hàn Quốc.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:14:40.000000', 20, 37, 2, '2026-01-06 11:14:40.000000', 5, 5, '/static_resource/public/upload/recipes/4da126af-46a7-4024-b600-1587e7b5f580_f.ext', 'Sushi cuộn cơ bản (Maki)', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Sushi Maki cuộn rong biển với cơm, cá tươi hoặc rau, ăn kèm nước tương và wasabi, món ăn đặc trưng Nhật Bản.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (60, '2026-01-06 11:14:40.000000', 20, 38, 2, '2026-01-06 11:14:40.000000', 5, 7, '/static_resource/public/upload/recipes/50740899-3791-44a8-a86c-b31e21795b8e_f.ext', 'Ramen Nhật Bản', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Món mì ramen với nước dùng thơm ngọt từ xương, kết hợp mì tươi, trứng luộc, thịt lợn, nấm và hành lá.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (20, '2026-01-06 11:14:40.000000', 25, 39, 2, '2026-01-06 11:14:40.000000', 5, 2, '/static_resource/public/upload/recipes/de208446-d6ea-4764-8043-38650e9075b1_f.ext', 'Bibimbap Hàn Quốc', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Cơm trộn Bibimbap với rau xào, thịt bò ướp, trứng ốp la, ăn kèm sốt Gochujang cay đặc trưng Hàn Quốc.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (15, '2026-01-06 11:14:40.000000', 30, 40, 4, '2026-01-06 11:14:40.000000', 5, 0, '/static_resource/public/upload/recipes/1d8eeaad-c270-4e19-80d6-b55562ef45ce_f.ext', 'Mochi Nhật Bản nhân đậu đỏ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Bánh Mochi mềm dẻo, nhân đậu đỏ ngọt thanh, món tráng miệng truyền thống Nhật Bản.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (0, '2026-01-06 11:15:16.000000', 10, 41, 2, '2026-01-06 11:15:16.000000', 6, 8, '/static_resource/public/upload/recipes/83c2c9a1-b36e-4445-9b14-18cf530bd32c_f.ext', 'Mojito chanh bạc hà (không cồn)', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Mojito không cồn, thơm mát vị bạc hà và chanh, thích hợp giải khát ngày hè.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (0, '2026-01-06 11:15:16.000000', 5, 42, 2, '2026-01-06 11:15:16.000000', 6, 4, '/static_resource/public/upload/recipes/571b7ce1-ca92-42e4-8a24-bd78df05896c_f.ext', 'Smoothie dâu tây chuối', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Sinh tố dâu chuối mềm mịn, ngọt thanh, giàu vitamin, thích hợp uống sáng hoặc sau tập thể dục.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (2, '2026-01-06 11:15:16.000000', 2, 43, 1, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/95985b56-3704-4224-aeda-c9ebc859e53a_f.ext', 'Cà phê kiểu Ý (Espresso)', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Espresso đậm đặc, hương thơm nồng nàn, cơ bản để làm các món cà phê Ý khác như Latte hoặc Cappuccino.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:15:16.000000', 5, 44, 2, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/49217026-dbcf-4837-8c6c-e5386189a35d_f.ext', 'Trà nóng Chai Masala Ấn Độ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Trà Masala Ấn Độ thơm nồng hương gia vị, pha với sữa béo, thích hợp uống buổi sáng hoặc chiều tối.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (0, '2026-01-06 11:15:16.000000', 5, 45, 2, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/dbabead5-c4bd-43d6-8b4c-b266a3982947_f.ext', 'Smoothie xoài dừa kiểu Thái', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Smoothie xoài dừa thơm mát, ngọt thanh, kết hợp sữa dừa và xoài chín, đặc trưng đồ uống Thái Lan.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (5, '2026-01-06 11:15:16.000000', 5, 46, 1, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/53104ecf-f167-4359-a2fd-92da73346bf6_f.ext', 'Matcha Latte Nhật Bản', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Matcha Latte thơm mát, kết hợp bột trà xanh Nhật Bản với sữa nóng, tạo vị ngọt dịu và màu xanh tự nhiên.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (20, '2026-01-06 11:15:16.000000', 10, 47, 2, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/d6f6fbc5-ea28-4d5e-9287-6830a1f5c6ac_f.ext', 'Trà Ô Long Trân Châu', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Trà Ô Long trân châu kiểu Đài Loan, thơm trà, dai trân châu, kết hợp vị ngọt vừa phải.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:15:16.000000', 5, 48, 2, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/3c3fe43f-683c-4beb-9ae6-f04a1c521b17_f.ext', 'Chocolate nóng kiểu Bỉ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Chocolate nóng đậm đặc, béo ngậy, dùng làm món uống sáng hoặc giải khát lạnh, trang trí kem tươi.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (0, '2026-01-06 11:15:16.000000', 5, 49, 2, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/77436ff6-41aa-4b1f-9c6d-f67e7b6a4159_f.ext', 'Frappuccino cà phê kiểu Mỹ', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Đồ uống cà phê lạnh kiểu Starbucks, kết hợp espresso, đá xay nhuyễn, sữa và siro ngọt.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (10, '2026-01-06 11:15:16.000000', 5, 50, 2, '2026-01-06 11:15:16.000000', 6, 0, '/static_resource/public/upload/recipes/752d2e2a-5b6b-4377-a9b8-7b715353fc5e_f.ext', 'Trà bạc hà chanh kiểu Morocco', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Trà xanh kết hợp lá bạc hà tươi và chanh, thơm mát, đặc trưng phong cách Morocco.', 'EASY', 'PUBLIC', 'APPROVED');
INSERT INTO `recipes` VALUES (30, '2026-01-06 12:47:07.000000', 20, 51, 2, '2026-01-06 15:36:18.000000', 5, 32, '/static_resource/public/upload/recipes/d35492ea-6b7f-40fd-ac7f-64a37fb197e0_8.jpg', 'Đùi gà chiên giòn kiểu KFC', '/static_resource/public/upload/recipe_videos/bb794ccc-10bb-4a2b-8b88-542fa52addc1_f.ext', 'Đùi gà chiên giòn kiểu KFC', 'EASY', 'PRIVATE', 'APPROVED');

-- ----------------------------
-- Table structure for refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `refresh_token`;
CREATE TABLE `refresh_token`  (
  `expires_at` datetime(6) NULL DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `issued_at` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `token_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjtx87i0jvq2svedphegvdwcuy`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKjtx87i0jvq2svedphegvdwcuy` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refresh_token
-- ----------------------------
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:10:56.000000', 1, '2026-01-06 11:10:56.000000', 2, '9ccf09f0d065efd9a300a6366ac304ba24d87ef7d9a4a3f4eaa75ed56023f7a6');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:12:20.000000', 2, '2026-01-06 11:12:20.000000', 3, '0a3694d77a6e9a401c496deba56238a06c3428fcf761236849d55a6671998cf3');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:13:45.000000', 3, '2026-01-06 11:13:45.000000', 4, '5bb4976e2eb1ea76e86f6d59a9e8555d2aa3d4282fc91cc66d19f69a5002689d');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:14:36.000000', 4, '2026-01-06 11:14:36.000000', 5, '80dc892681a2186b516ce7eb6071bdfbce941fa46058c10789ea717dfaa849e7');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:15:14.000000', 5, '2026-01-06 11:15:14.000000', 6, '03e0989476565f6365a17488feeb2b7f3a000e0089e1f535543c6c4562b4d265');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:22:53.000000', 6, '2026-01-06 11:22:53.000000', 7, '7258f3c6dcb803b6c11f631a5d60107c4980cb3f323f4f72b94f40830c3402d8');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:24:49.000000', 7, '2026-01-06 11:24:49.000000', 3, '88c8a978bff210d86bd13f9def399cec3aa76a1551291ececcedee47dcdcf239');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:45:17.000000', 8, '2026-01-06 11:45:17.000000', 7, 'af2755eb7f3efdede803b1bfc068859a5dad2febf445d4333d2088bf1a27c9c9');
INSERT INTO `refresh_token` VALUES ('2037-06-04 03:46:31.000000', 9, '2026-01-06 11:46:31.000000', 7, '3e7dedcbb92677a1ca19ad20539d4e95db5cb63246a9807f1449565cccc2014b');
INSERT INTO `refresh_token` VALUES ('2037-06-04 04:35:43.000000', 10, '2026-01-06 12:35:43.000000', 7, 'ee58567d33c8e79da0be8e57515cb9f159c64aae2b4af30c9ae631eff81cfab1');
INSERT INTO `refresh_token` VALUES ('2037-06-04 04:44:08.000000', 11, '2026-01-06 12:44:08.000000', 5, 'b672a0912ff91fb3c422fa7968ec7e7cc03dd00d85bee817bcc061c083a093be');
INSERT INTO `refresh_token` VALUES ('2037-06-04 04:58:18.000000', 12, '2026-01-06 12:58:18.000000', 7, 'dadac4a4a0f7b4d00360465a1b33589d7d96d7be9c0b6a95c7856514be98a4be');
INSERT INTO `refresh_token` VALUES ('2037-06-04 05:02:05.000000', 13, '2026-01-06 13:02:05.000000', 5, '8aa48fde78305767b55f892dc9c287e1c1baf12ba0b1aa7be24bc36b90c87ebd');
INSERT INTO `refresh_token` VALUES ('2037-06-04 05:34:55.000000', 14, '2026-01-06 13:34:55.000000', 5, '7e6f593b15aaf075d93380692129fedaa5bf413bc2c6a62c665773a7a41b08e5');
INSERT INTO `refresh_token` VALUES ('2037-06-04 06:05:56.000000', 15, '2026-01-06 14:05:56.000000', 5, '1167e9b112e6ee2574f2743d55ff11754bab76abd8ac1ee4ea4f6eb41edd922d');
INSERT INTO `refresh_token` VALUES ('2037-06-04 06:07:07.000000', 16, '2026-01-06 14:07:07.000000', 3, '7d872afcb59052c9ead43124e2e8ae3d0247b16c4989b1f766d048610a7abea7');
INSERT INTO `refresh_token` VALUES ('2037-06-04 06:37:31.000000', 17, '2026-01-06 14:37:31.000000', 5, '5ed943f049ebde63c5261c054de9715604b9fb5a30ae0bf2b7f266d9e2e02f0b');
INSERT INTO `refresh_token` VALUES ('2037-06-04 07:07:54.000000', 18, '2026-01-06 15:07:54.000000', 5, '0f1640c3060344117e356c6242260127b6a195a6f17fd0f14409b8a7861bf253');
INSERT INTO `refresh_token` VALUES ('2037-06-04 07:28:13.000000', 19, '2026-01-06 15:28:13.000000', 5, 'c47e2e8b8b6a60ba76aec86b0c68e88d8a53eae4c1405b340454b23c3a339d4c');
INSERT INTO `refresh_token` VALUES ('2037-06-04 10:59:37.000000', 20, '2026-01-06 18:59:37.000000', 5, 'b6fe38d4a2c67715eee96eaeb4a924fd61760ffec6bf6dcbd71d4517e521068a');
INSERT INTO `refresh_token` VALUES ('2037-06-04 11:11:15.000000', 21, '2026-01-06 19:11:15.000000', 7, '39a1080939ed6d54aff668bc5ab866056297ca123f11e1834409ff449c5b30ab');
INSERT INTO `refresh_token` VALUES ('2037-06-04 11:40:13.000000', 22, '2026-01-06 19:40:13.000000', 6, '12743c59a779aa7215c9129566b9c7375e7002617930d8acc8f24cb6f7150c9d');
INSERT INTO `refresh_token` VALUES ('2037-06-04 11:44:40.000000', 23, '2026-01-06 19:44:40.000000', 7, '3d960eb2f2a0408cae4452903902cd999ba2b655125f10fbd6e1427204c2d4ff');
INSERT INTO `refresh_token` VALUES ('2037-06-04 11:51:57.000000', 24, '2026-01-06 19:51:57.000000', 6, 'f1e261badf5e1a70742c86c8f54a4a22b4b5843c839c9b9a21010e6a47b33ea5');
INSERT INTO `refresh_token` VALUES ('2037-06-04 12:22:45.000000', 25, '2026-01-06 20:22:45.000000', 6, 'f7327a776409c2f9076631165c952bdc554d7cea34686c4c16719d65769ead1b');
INSERT INTO `refresh_token` VALUES ('2037-06-04 12:53:25.000000', 26, '2026-01-06 20:53:25.000000', 6, '52380eb0c9ea419c3c10e789a3d0de1f7d60be38304749449c57c0585bd37498');
INSERT INTO `refresh_token` VALUES ('2037-06-05 00:28:23.000000', 27, '2026-01-07 08:28:23.000000', 6, '2fc207e9dd3d7b7356bb9772dd8da576de828300b13f3471e6944c13d3f6ccdf');
INSERT INTO `refresh_token` VALUES ('2037-06-05 00:28:52.000000', 28, '2026-01-07 08:28:52.000000', 7, '43b279cbbe47251436f3c3e71513cd5a78a40ba8017e8d6360fadd757a7ce9a5');
INSERT INTO `refresh_token` VALUES ('2037-06-05 00:30:15.000000', 29, '2026-01-07 08:30:15.000000', 6, '639d2e88bcb46952ae668dbabad87b4cabfe108c517bf8aae2a2138990ae0cc2');
INSERT INTO `refresh_token` VALUES ('2037-06-05 00:35:42.000000', 30, '2026-01-07 08:35:42.000000', 7, '124aaa58ad9907bf2dd7fc69a1736727633a631bfabf1cff2721a35f6de4b533');
INSERT INTO `refresh_token` VALUES ('2037-06-06 12:41:06.000000', 31, '2026-01-08 20:41:06.000000', 7, '79398a78376e8293aa8f42c749014b79fa38e0f2d7df577c9073ca92a87643b8');
INSERT INTO `refresh_token` VALUES ('2037-06-06 12:41:31.000000', 32, '2026-01-08 20:41:31.000000', 6, 'f66b5119164cbc4a0b5b8968e1a6b5856ef7e4c3c0dbc86ff3eaa94cd31ebfef');
INSERT INTO `refresh_token` VALUES ('2037-06-06 12:51:16.000000', 33, '2026-01-08 20:51:16.000000', 7, '08036d25391549700f763b51dcfd63acc85872842f92f16d9921e97e7692b313');
INSERT INTO `refresh_token` VALUES ('2037-06-06 13:22:05.000000', 34, '2026-01-08 21:22:05.000000', 6, '2871cfaf18185056ab35a20f9fc263352d91c09e6099348d016fd08234e0fe87');
INSERT INTO `refresh_token` VALUES ('2037-06-06 13:28:50.000000', 35, '2026-01-08 21:28:50.000000', 8, 'f6218d9a422ad155787ad9e5618d620e1540979be97efa60e1ae9223561acb35');
INSERT INTO `refresh_token` VALUES ('2037-06-06 13:59:09.000000', 36, '2026-01-08 21:59:09.000000', 6, 'c068802584f5b2f01f6b961adc0c47b5fbfbeec5647bccf4805493894eb2ecdc');
INSERT INTO `refresh_token` VALUES ('2037-06-07 08:08:15.000000', 37, '2026-01-09 16:08:15.000000', 6, '1609af242f5d0b435c09b13dbe815c2344cae9176dc232665bc4bf44d1bd3068');
INSERT INTO `refresh_token` VALUES ('2037-06-07 08:10:18.000000', 38, '2026-01-09 16:10:18.000000', 8, 'ed13b585746e5f7a8e1d1bfff17ec153d457e7b81e1d83f2c66d176e5b995fac');
INSERT INTO `refresh_token` VALUES ('2037-06-07 08:36:42.000000', 39, '2026-01-09 16:36:42.000000', 8, 'c643994ae9c44e4d70394b4e6105703eea1f17ea6eda2c663d98d5c7c7b40025');
INSERT INTO `refresh_token` VALUES ('2037-06-07 08:38:45.000000', 40, '2026-01-09 16:38:45.000000', 6, '7d6e61331f4ed9e1d02b66e8291014d3ce2c39e5c84484f6a4fb4ba4414d8a65');
INSERT INTO `refresh_token` VALUES ('2037-06-07 23:31:51.000000', 41, '2026-01-10 07:31:51.000000', 8, '936e4c5af576cd447b356a177c0dca3087c39d9d0db4a43db45c46619166b6c2');
INSERT INTO `refresh_token` VALUES ('2037-06-07 23:31:56.000000', 42, '2026-01-10 07:31:56.000000', 6, '16ddee27131b5e521847564aa1d87a4f0c203edbc0a621fd99538c3ce31fee20');
INSERT INTO `refresh_token` VALUES ('2037-06-08 00:09:03.000000', 43, '2026-01-10 08:09:03.000000', 8, '467a80a1c3ea1d52deb99a0cb2b0702a9ecbbd9d7563692712885bffc64a16c7');
INSERT INTO `refresh_token` VALUES ('2037-06-08 00:09:44.000000', 44, '2026-01-10 08:09:44.000000', 6, '33918c46f1c2e5cbac35ef781f4c539a1494a251f46ccd038b3db102db9394f2');
INSERT INTO `refresh_token` VALUES ('2037-06-08 00:52:06.000000', 45, '2026-01-10 08:52:06.000000', 6, '6e0a785b6f7e4d83c668e1a1d02404d012594a280ba92c8d483235038c026983');
INSERT INTO `refresh_token` VALUES ('2037-06-08 01:19:30.000000', 46, '2026-01-10 09:19:30.000000', 6, 'eb647ef91bbd686fae8e00f071e303d651f0f5b8d4de6ed09bc4eb15e7d01629');
INSERT INTO `refresh_token` VALUES ('2037-06-08 01:58:01.000000', 47, '2026-01-10 09:58:01.000000', 6, '22fccfa5fdd7b7ba6f90e55b16cf61e6bffc11ec915b41455e4ace2c290d7adf');
INSERT INTO `refresh_token` VALUES ('2037-06-08 02:25:15.000000', 48, '2026-01-10 10:25:15.000000', 8, 'f5f96234ece0929209a14da0e4e865cbbcc199d3ef6b389db9d3c7847068c09f');
INSERT INTO `refresh_token` VALUES ('2037-06-08 02:30:00.000000', 49, '2026-01-10 10:30:00.000000', 6, '10bb8366967b6ceccf940dc8ee3d93169b3d4b214cea085a7cbb3cf8c955ab85');

-- ----------------------------
-- Table structure for report_daily_chef_performance
-- ----------------------------
DROP TABLE IF EXISTS `report_daily_chef_performance`;
CREATE TABLE `report_daily_chef_performance`  (
  `report_date` date NOT NULL,
  `chef_id` bigint NOT NULL,
  `chef_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_orders` int NOT NULL,
  `total_revenue` bigint NOT NULL,
  PRIMARY KEY (`report_date`, `chef_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_daily_chef_performance
-- ----------------------------
INSERT INTO `report_daily_chef_performance` VALUES ('2026-01-06', 3, 'MasterCook', 1, 45000);

-- ----------------------------
-- Table structure for report_daily_dish_revenue
-- ----------------------------
DROP TABLE IF EXISTS `report_daily_dish_revenue`;
CREATE TABLE `report_daily_dish_revenue`  (
  `report_date` date NOT NULL,
  `dish_id` bigint NOT NULL,
  `dish_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `seller_id` bigint NOT NULL,
  `total_quantity` bigint NOT NULL,
  `total_revenue` bigint NOT NULL,
  PRIMARY KEY (`report_date`, `dish_id`) USING BTREE,
  INDEX `idx_seller_date`(`seller_id` ASC, `report_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_daily_dish_revenue
-- ----------------------------
INSERT INTO `report_daily_dish_revenue` VALUES ('2026-01-06', 1, 'Bò Lúc Lắc', 3, 1, 45000);

-- ----------------------------
-- Table structure for report_daily_system_revenue
-- ----------------------------
DROP TABLE IF EXISTS `report_daily_system_revenue`;
CREATE TABLE `report_daily_system_revenue`  (
  `report_date` date NOT NULL,
  `upgrade_revenue` bigint NOT NULL,
  `commission_revenue` bigint NOT NULL,
  `total_revenue` bigint NOT NULL,
  PRIMARY KEY (`report_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_daily_system_revenue
-- ----------------------------
INSERT INTO `report_daily_system_revenue` VALUES ('2025-12-30', 150000, 0, 150000);
INSERT INTO `report_daily_system_revenue` VALUES ('2025-12-31', 400000, 0, 400000);
INSERT INTO `report_daily_system_revenue` VALUES ('2026-01-01', 0, 0, 0);
INSERT INTO `report_daily_system_revenue` VALUES ('2026-01-02', 0, 0, 0);
INSERT INTO `report_daily_system_revenue` VALUES ('2026-01-03', 0, 0, 0);
INSERT INTO `report_daily_system_revenue` VALUES ('2026-01-04', 0, 0, 0);
INSERT INTO `report_daily_system_revenue` VALUES ('2026-01-05', 0, 0, 0);
INSERT INTO `report_daily_system_revenue` VALUES ('2026-01-06', 400000, 4500, 404500);

-- ----------------------------
-- Table structure for report_daily_upgrade_revenue
-- ----------------------------
DROP TABLE IF EXISTS `report_daily_upgrade_revenue`;
CREATE TABLE `report_daily_upgrade_revenue`  (
  `report_date` date NOT NULL,
  `duration_days` int NOT NULL,
  `total_orders` int NOT NULL,
  `total_revenue` bigint NOT NULL,
  PRIMARY KEY (`report_date`, `duration_days`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_daily_upgrade_revenue
-- ----------------------------
INSERT INTO `report_daily_upgrade_revenue` VALUES ('2025-12-30', 30, 1, 150000);
INSERT INTO `report_daily_upgrade_revenue` VALUES ('2025-12-31', 90, 1, 400000);
INSERT INTO `report_daily_upgrade_revenue` VALUES ('2026-01-06', 90, 1, 400000);

-- ----------------------------
-- Table structure for reports_daily
-- ----------------------------
DROP TABLE IF EXISTS `reports_daily`;
CREATE TABLE `reports_daily`  (
  `report_date` date NOT NULL,
  `total_users` bigint NOT NULL,
  `new_users_today` bigint NOT NULL,
  `total_chefs` bigint NOT NULL,
  `recipes_created_today` bigint NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`report_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reports_daily
-- ----------------------------
INSERT INTO `reports_daily` VALUES ('2026-01-01', 2, 0, 2, 0, '2026-01-02 13:52:18');
INSERT INTO `reports_daily` VALUES ('2026-01-02', 4, 0, 4, 0, '2026-01-02 13:52:23');
INSERT INTO `reports_daily` VALUES ('2026-01-03', 6, 0, 6, 0, '2026-01-06 11:19:01');
INSERT INTO `reports_daily` VALUES ('2026-01-04', 6, 0, 6, 0, '2026-01-06 11:19:07');
INSERT INTO `reports_daily` VALUES ('2026-01-05', 6, 0, 6, 0, '2026-01-06 11:19:12');
INSERT INTO `reports_daily` VALUES ('2026-01-06', 7, 7, 7, 50, '2026-01-06 11:59:44');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKofx66keruapi6vyqpv6f2or37`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (4, 'ADMIN');
INSERT INTO `roles` VALUES (2, 'CHEF');
INSERT INTO `roles` VALUES (3, 'SELLER');
INSERT INTO `roles` VALUES (1, 'USER');

-- ----------------------------
-- Table structure for seller_wallet
-- ----------------------------
DROP TABLE IF EXISTS `seller_wallet`;
CREATE TABLE `seller_wallet`  (
  `available_balance` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pending_balance` bigint NOT NULL,
  `seller_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKpy8w8ov6h5l86c7ohg6xqrybr`(`seller_id` ASC) USING BTREE,
  CONSTRAINT `FK8lq2vxmvr8u24xxti8qtd66m1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seller_wallet
-- ----------------------------
INSERT INTO `seller_wallet` VALUES (0, 1, 0, 2);
INSERT INTO `seller_wallet` VALUES (40500, 2, 0, 3);
INSERT INTO `seller_wallet` VALUES (0, 3, 0, 4);
INSERT INTO `seller_wallet` VALUES (0, 4, 0, 5);
INSERT INTO `seller_wallet` VALUES (40000, 5, 0, 6);
INSERT INTO `seller_wallet` VALUES (0, 6, 0, 7);

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session`  (
  `id` char(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expire` int NULL DEFAULT NULL,
  `data` blob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('0ju322fb5gcbfnt8a57ufn9505', 1767952406, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A33343A22687474703A2F2F636D732D746F746E67686965702E636F6D2F696E6465782E706870223B636170746368617C733A363A22314648796F40223B);
INSERT INTO `session` VALUES ('56041dqda3leone2n9atam9goi', 1738901560, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A35313A22687474703A2F2F636D732D74656C652E67616D6562617474612E636F6D2E6C6F63616C2F696E6465782E7068703F723D676969223B636170746368617C733A363A22357271636B65223B5F5F69647C693A313B5F5F617574684B65797C733A33323A226C42524C4D596B3076363958643737314F43724B6979356D6C4755446631797A223B);
INSERT INTO `session` VALUES ('8m4rh8lpksah4hr3l1ubgd3q6j', 1735180195, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A33363A22687474703A2F2F636D732D6661726D6D7974656C2E7567616D652E766E2E6C6F63616C2F223B636170746368617C733A363A226A79336D4C62223B5F5F69647C693A313B5F5F617574684B65797C733A33323A226C42524C4D596B3076363958643737314F43724B6979356D6C4755446631797A223B736974654C616E677C733A373A2264625F74657374223B);
INSERT INTO `session` VALUES ('gia7dgpcb48s09snrhjn3k5n2i', 1768017994, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A35363A22687474703A2F2F636D732D746F746E67686965702E636F6D2F696E6465782E7068703F723D61626F75742D7061676573253246696E646578223B636170746368617C733A363A2270316B47564A223B5F5F69647C693A313B5F5F617574684B65797C733A33323A226C42524C4D596B3076363958643737314F43724B6979356D6C4755446631797A223B);
INSERT INTO `session` VALUES ('plal82n99kou5doi3torfl8t7s', 1722500460, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A33313A22687474703A2F2F636D732E62617474612E67616D652E766E2E6C6F63616C2F223B636170746368617C733A363A224671376D6D50223B5F5F69647C693A313B5F5F617574684B65797C733A33323A226C42524C4D596B3076363958643737314F43724B6979356D6C4755446631797A223B);
INSERT INTO `session` VALUES ('sle5dj9g524gn9c3dkg09nrktr', 1738901323, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A35313A22687474703A2F2F636D732D74656C652E67616D6562617474612E636F6D2E6C6F63616C2F696E6465782E7068703F723D676969223B636170746368617C733A363A224D717151726A223B5F5F69647C693A313B5F5F617574684B65797C733A33323A226C42524C4D596B3076363958643737314F43724B6979356D6C4755446631797A223B);
INSERT INTO `session` VALUES ('teqtc67qjgo1i83p1t3adfsmjl', 1727321690, 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A33363A22687474703A2F2F636D732D6661726D6D7974656C2E7567616D652E766E2E6C6F63616C2F223B636170746368617C733A363A226A3237507555223B5F5F69647C693A313B5F5F617574684B65797C733A33323A226C42524C4D596B3076363958643737314F43724B6979356D6C4755446631797A223B);

-- ----------------------------
-- Table structure for step_images
-- ----------------------------
DROP TABLE IF EXISTS `step_images`;
CREATE TABLE `step_images`  (
  `step_id` bigint NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  INDEX `FKkselvdxjudxwto1eunc6aeulq`(`step_id` ASC) USING BTREE,
  CONSTRAINT `FKkselvdxjudxwto1eunc6aeulq` FOREIGN KEY (`step_id`) REFERENCES `steps` (`step_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of step_images
-- ----------------------------

-- ----------------------------
-- Table structure for steps
-- ----------------------------
DROP TABLE IF EXISTS `steps`;
CREATE TABLE `steps`  (
  `step_number` int NOT NULL,
  `recipe_id` bigint NOT NULL,
  `step_id` bigint NOT NULL AUTO_INCREMENT,
  `step_time` bigint NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`step_id`) USING BTREE,
  INDEX `FK729dw6qpupm85tlbq57rqbpru`(`recipe_id` ASC) USING BTREE,
  CONSTRAINT `FK729dw6qpupm85tlbq57rqbpru` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 246 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of steps
-- ----------------------------
INSERT INTO `steps` VALUES (1, 1, 1, NULL, 'Rửa sạch xương ống bò với muối, chần qua nước sôi khoảng 5 phút để loại bỏ mùi hôi và tạp chất, sau đó rửa lại bằng nước lạnh.');
INSERT INTO `steps` VALUES (2, 1, 2, NULL, 'Cho xương bò vào nồi lớn, đổ khoảng 3 lít nước, đun sôi rồi hạ lửa nhỏ, hớt bọt liên tục để nước dùng trong.');
INSERT INTO `steps` VALUES (3, 1, 3, NULL, 'Nướng gừng, hành tây và hành tím trực tiếp trên lửa cho cháy xém vỏ, sau đó cạo sạch lớp cháy và đập dập gừng.');
INSERT INTO `steps` VALUES (4, 1, 4, NULL, 'Rang hoa hồi, quế, thảo quả và đinh hương trên chảo nóng cho dậy mùi thơm, sau đó cho vào túi vải hoặc lưới lọc.');
INSERT INTO `steps` VALUES (5, 1, 5, NULL, 'Cho gừng, hành nướng và túi gia vị vào nồi nước dùng, tiếp tục ninh xương ở lửa nhỏ trong khoảng 2–2,5 tiếng.');
INSERT INTO `steps` VALUES (6, 1, 6, NULL, 'Cho thịt bò nạm vào nồi, nấu thêm 30 phút đến khi thịt mềm, vớt ra để nguội rồi thái lát mỏng.');
INSERT INTO `steps` VALUES (7, 1, 7, NULL, 'Nêm nước mắm, muối và đường phèn vào nồi nước dùng, nếm lại cho vị ngọt thanh, mặn vừa.');
INSERT INTO `steps` VALUES (8, 1, 8, NULL, 'Trần bánh phở qua nước sôi khoảng 10–15 giây, cho vào tô. Xếp thịt nạm và thịt bò tái lên trên.');
INSERT INTO `steps` VALUES (9, 1, 9, NULL, 'Chan nước dùng đang sôi vào tô phở, rắc hành lá, rau mùi và tiêu lên trên, dùng nóng.');
INSERT INTO `steps` VALUES (1, 2, 10, NULL, 'Rửa sạch xương bò, chần qua nước sôi để loại bỏ tạp chất.');
INSERT INTO `steps` VALUES (2, 2, 11, NULL, 'Đun xương bò với nước khoảng 1 giờ, hớt bọt để nước dùng trong.');
INSERT INTO `steps` VALUES (3, 2, 12, NULL, 'Nướng sả, hành tím, ớt trên lửa cho dậy mùi, sau đó giã nhỏ.');
INSERT INTO `steps` VALUES (4, 2, 13, NULL, 'Cho hỗn hợp sả, hành, ớt vào nồi nước dùng, thêm mắm ruốc Huế, muối, đường và ninh thêm 30 phút.');
INSERT INTO `steps` VALUES (5, 2, 14, NULL, 'Luộc thịt bò, thái lát mỏng khi nguội.');
INSERT INTO `steps` VALUES (6, 2, 15, NULL, 'Trần bún qua nước sôi, cho vào tô, xếp thịt bò lên trên.');
INSERT INTO `steps` VALUES (7, 2, 16, NULL, 'Chan nước dùng nóng lên bún, rắc hành lá và rau húng quế, dùng nóng.');
INSERT INTO `steps` VALUES (1, 3, 17, NULL, 'Luộc tôm, thịt heo, trứng cút, thái thịt heo mỏng.');
INSERT INTO `steps` VALUES (2, 3, 18, NULL, 'Phi thơm hành tây với dầu, thêm tôm và thịt, nêm nước mắm, đường, ớt bột.');
INSERT INTO `steps` VALUES (3, 3, 19, NULL, 'Chần mì qua nước sôi, xếp mì vào tô.');
INSERT INTO `steps` VALUES (4, 3, 20, NULL, 'Đổ hỗn hợp tôm thịt lên mì, thêm trứng cút, rắc đậu phộng rang và rau sống.');
INSERT INTO `steps` VALUES (5, 3, 21, NULL, 'Chan nước dùng ít để mì thấm, dùng nóng.');
INSERT INTO `steps` VALUES (1, 4, 22, NULL, 'Luộc tôm, mực, thái thịt heo mỏng.');
INSERT INTO `steps` VALUES (2, 4, 23, NULL, 'Đun nước dùng từ xương heo, nêm nước mắm, muối, đường.');
INSERT INTO `steps` VALUES (3, 4, 24, NULL, 'Chần hủ tiếu qua nước sôi, cho vào tô.');
INSERT INTO `steps` VALUES (4, 4, 25, NULL, 'Xếp thịt, tôm, mực lên hủ tiếu, thêm giá đỗ và rau sống.');
INSERT INTO `steps` VALUES (5, 4, 26, NULL, 'Chan nước dùng nóng, rắc tiêu và hành phi, dùng nóng.');
INSERT INTO `steps` VALUES (1, 5, 27, NULL, 'Ngâm bánh tráng vào nước ấm cho mềm.');
INSERT INTO `steps` VALUES (2, 5, 28, NULL, 'Xếp rau, bún, tôm, thịt lên bánh tráng.');
INSERT INTO `steps` VALUES (3, 5, 29, NULL, 'Cuộn chặt bánh tráng, cắt vừa ăn.');
INSERT INTO `steps` VALUES (4, 5, 30, NULL, 'Rắc đậu phộng rang, chấm với nước mắm chua ngọt.');
INSERT INTO `steps` VALUES (1, 6, 31, NULL, 'Ướp thịt với tỏi, nước mắm, đường, tiêu và hành tây băm nhỏ khoảng 15 phút.');
INSERT INTO `steps` VALUES (2, 6, 32, NULL, 'Nướng thịt trên than hoặc chảo nướng đến khi vàng đều.');
INSERT INTO `steps` VALUES (3, 6, 33, NULL, 'Gọt và bào cà rốt, dưa leo thành sợi, trộn với chút đường và giấm.');
INSERT INTO `steps` VALUES (4, 6, 34, NULL, 'Cắt bánh mì, cho nhân thịt, rau sống, cà rốt và dưa leo vào, dùng nóng.');
INSERT INTO `steps` VALUES (1, 7, 35, NULL, 'Đun nóng chảo, cho bơ, trứng vào chiên vừa chín.');
INSERT INTO `steps` VALUES (2, 7, 36, NULL, 'Cho pate, xúc xích và thịt nướng vào chảo, đun nóng.');
INSERT INTO `steps` VALUES (3, 7, 37, NULL, 'Rắc hành lá, tiêu, dùng kèm bánh mì giòn.');
INSERT INTO `steps` VALUES (1, 8, 38, NULL, 'Nặn thịt bò thành patty, nêm muối, tiêu, áp chảo đến chín vừa.');
INSERT INTO `steps` VALUES (2, 8, 39, NULL, 'Nướng sơ bánh hamburger, phết sốt mayonnaise.');
INSERT INTO `steps` VALUES (3, 8, 40, NULL, 'Xếp patty, phô mai, xà lách, cà chua, dưa leo vào bánh, dùng nóng.');
INSERT INTO `steps` VALUES (1, 9, 41, NULL, 'Hấp hoặc nướng xúc xích đến chín.');
INSERT INTO `steps` VALUES (2, 9, 42, NULL, 'Nướng sơ bánh hotdog, xẻ giữa.');
INSERT INTO `steps` VALUES (3, 9, 43, NULL, 'Cho xúc xích vào bánh, thêm hành tây, dưa leo và sốt.');
INSERT INTO `steps` VALUES (1, 10, 44, NULL, 'Ướp gà với tỏi, muối, tiêu 10 phút.');
INSERT INTO `steps` VALUES (2, 10, 45, NULL, 'Nhúng gà qua trứng, bột mì và bột chiên giòn.');
INSERT INTO `steps` VALUES (3, 10, 46, NULL, 'Chiên gà ngập dầu đến vàng giòn.');
INSERT INTO `steps` VALUES (4, 10, 47, NULL, 'Trộn sốt gochujang và mật ong, rưới lên gà nóng, dùng ngay.');
INSERT INTO `steps` VALUES (1, 12, 52, NULL, 'Rửa cá, cắt khúc vừa ăn, ướp muối, tiêu 10 phút.');
INSERT INTO `steps` VALUES (2, 12, 53, NULL, 'Phi thơm hành tím, tỏi, cho đường vào thắng đến màu cánh gián.');
INSERT INTO `steps` VALUES (3, 12, 54, NULL, 'Cho cá vào nồi đất, thêm nước mắm, tiêu, ớt và dầu ăn, kho lửa nhỏ 30 phút.');
INSERT INTO `steps` VALUES (4, 12, 55, NULL, 'Dùng nóng với cơm trắng.');
INSERT INTO `steps` VALUES (1, 13, 56, NULL, 'Luộc khoai tây, cà rốt, trứng, để nguội, thái hạt lựu.');
INSERT INTO `steps` VALUES (2, 13, 57, NULL, 'Trộn khoai tây, cà rốt, đậu Hà Lan, trứng với mayonnaise, muối và tiêu.');
INSERT INTO `steps` VALUES (3, 13, 58, NULL, 'Làm lạnh trước khi dùng.');
INSERT INTO `steps` VALUES (1, 14, 59, NULL, 'Nướng ức gà, thái lát mỏng.');
INSERT INTO `steps` VALUES (2, 14, 60, NULL, 'Xé xà lách, trộn với bánh mì nướng, gà, phô mai Parmesan.');
INSERT INTO `steps` VALUES (3, 14, 61, NULL, 'Rưới sốt Caesar, trộn đều, nêm muối tiêu vừa ăn.');
INSERT INTO `steps` VALUES (1, 15, 62, NULL, 'Bào đu đủ xanh thành sợi, rửa sạch, để ráo.');
INSERT INTO `steps` VALUES (2, 15, 63, NULL, 'Luộc tôm và thịt, thái mỏng.');
INSERT INTO `steps` VALUES (3, 15, 64, NULL, 'Trộn đu đủ với tôm, thịt, lạc rang, tỏi, ớt, nước mắm, đường, chanh.');
INSERT INTO `steps` VALUES (4, 15, 65, NULL, 'Dùng ngay, trang trí thêm rau thơm nếu thích.');
INSERT INTO `steps` VALUES (1, 16, 66, NULL, 'Rửa sạch ức gà, thái mỏng, trộn với tỏi băm, nước tương, ớt băm, muối và tiêu. Ướp 15 phút để thịt thấm gia vị.');
INSERT INTO `steps` VALUES (2, 16, 67, NULL, 'Đun nóng chảo nướng hoặc lò nướng ở 180°C, nướng gà trong 10–12 phút đến khi chín vàng đều.');
INSERT INTO `steps` VALUES (3, 16, 68, NULL, 'Gọt cà rốt thành sợi, rửa xà lách và hành tây thái lát mỏng.');
INSERT INTO `steps` VALUES (4, 16, 69, NULL, 'Cắt bánh mì baguette dọc, phết một lớp mayonnaise, xếp xà lách, cà rốt, hành tây và thịt gà nướng vào bánh, dùng nóng.');
INSERT INTO `steps` VALUES (1, 17, 70, NULL, 'Đun nước sôi, luộc spaghetti theo hướng dẫn trên gói, thêm 1 g muối, để ráo.');
INSERT INTO `steps` VALUES (2, 17, 71, NULL, 'Phi thơm hành tây và tỏi băm với dầu ô liu, cho thịt bò bằm vào xào đến khi thịt săn.');
INSERT INTO `steps` VALUES (3, 17, 72, NULL, 'Cho cà chua thái nhỏ vào, đun nhỏ lửa 5 phút đến khi sốt sệt, nêm muối và tiêu.');
INSERT INTO `steps` VALUES (4, 17, 73, NULL, 'Trộn spaghetti với sốt bò bằm, rắc phô mai Parmesan, dùng nóng.');
INSERT INTO `steps` VALUES (1, 18, 74, NULL, 'Ướp cá hồi với muối và tiêu 5 phút.');
INSERT INTO `steps` VALUES (2, 18, 75, NULL, 'Đun nóng chảo với dầu ô liu và bơ, áp chảo cá 5 phút mỗi mặt đến vàng đều.');
INSERT INTO `steps` VALUES (3, 18, 76, NULL, 'Vắt cam lấy nước, trộn với mật ong, rưới lên cá khi dùng.');
INSERT INTO `steps` VALUES (1, 19, 77, NULL, 'Cắt gà miếng vừa ăn, ướp với nước mắm, đường và tiêu 10 phút.');
INSERT INTO `steps` VALUES (2, 19, 78, NULL, 'Phi thơm sả, ớt, tỏi và hành tím, xào gà trên lửa lớn đến khi chín đều.');
INSERT INTO `steps` VALUES (3, 19, 79, NULL, 'Nêm nếm lại, dọn nóng với cơm trắng.');
INSERT INTO `steps` VALUES (1, 20, 80, NULL, 'Cắt thịt bò thành miếng vuông ~2cm, ướp với nước tương, muối, tiêu 10 phút.');
INSERT INTO `steps` VALUES (2, 20, 81, NULL, 'Phi tỏi với dầu ăn, xào bò trên lửa lớn nhanh tay khoảng 5 phút, thêm hành tây xắt múi cau.');
INSERT INTO `steps` VALUES (3, 20, 82, NULL, 'Trộn đều, nêm nếm lại vừa ăn, dùng nóng với cơm hoặc khoai tây chiên.');
INSERT INTO `steps` VALUES (1, 21, 83, NULL, 'Rửa sạch cá, khứa vài đường trên thân để thấm gia vị, thấm khô bằng giấy ăn.');
INSERT INTO `steps` VALUES (2, 21, 84, NULL, 'Ướp cá với một chút muối và tiêu 5 phút.');
INSERT INTO `steps` VALUES (3, 21, 85, NULL, 'Trộn bột chiên giòn với trứng, lăn cá đều, chuẩn bị chiên.');
INSERT INTO `steps` VALUES (4, 21, 86, NULL, 'Đun nóng dầu ăn ở 180°C, chiên cá vàng giòn mỗi mặt 6–8 phút.');
INSERT INTO `steps` VALUES (5, 21, 87, NULL, 'Ngâm me với 30ml nước ấm, lọc lấy nước cốt me, hòa đường và nước mắm.');
INSERT INTO `steps` VALUES (6, 21, 88, NULL, 'Phi thơm tỏi và ớt, cho nước sốt me vào, đun sôi 2 phút.');
INSERT INTO `steps` VALUES (7, 21, 89, NULL, 'Chan sốt me lên cá chiên, rắc hành lá cắt nhỏ, dùng nóng.');
INSERT INTO `steps` VALUES (1, 22, 90, NULL, 'Gọt vỏ đu đủ, bào sợi, ngâm nước muối 5 phút, để ráo.');
INSERT INTO `steps` VALUES (2, 22, 91, NULL, 'Luộc tôm với chút muối 3–5 phút, bóc vỏ, giữ lại phần đuôi trang trí.');
INSERT INTO `steps` VALUES (3, 22, 92, NULL, 'Luộc thịt ba chỉ 10 phút, thái lát mỏng.');
INSERT INTO `steps` VALUES (4, 22, 93, NULL, 'Bào sợi cà rốt, thái hành tím mỏng.');
INSERT INTO `steps` VALUES (5, 22, 94, NULL, 'Giã đậu phộng rang thô, băm tỏi và ớt.');
INSERT INTO `steps` VALUES (6, 22, 95, NULL, 'Pha nước trộn: nước mắm, đường, nước cốt chanh, tỏi và ớt băm, khuấy đều.');
INSERT INTO `steps` VALUES (7, 22, 96, NULL, 'Trộn đu đủ, cà rốt, thịt và tôm với nước trộn, để 5 phút thấm gia vị.');
INSERT INTO `steps` VALUES (8, 22, 97, NULL, 'Rắc đậu phộng giã và rau thơm, trang trí tôm lên trên, dùng ngay.');
INSERT INTO `steps` VALUES (1, 23, 98, NULL, 'Luộc gà với muối và 1 củ hành tím, nước sôi 20 phút, vớt ra để nguội, thái miếng vừa ăn.');
INSERT INTO `steps` VALUES (2, 23, 99, NULL, 'Luộc tôm với chút muối 3–5 phút, bóc vỏ.');
INSERT INTO `steps` VALUES (3, 23, 100, NULL, 'Đun nóng dầu, phi tỏi băm thơm, cho nước luộc gà, nêm muối, đường, nước mắm vừa ăn.');
INSERT INTO `steps` VALUES (4, 23, 101, NULL, 'Trần mì Quảng trong nước sôi 2–3 phút, vớt ra để ráo.');
INSERT INTO `steps` VALUES (5, 23, 102, NULL, 'Trải mì vào tô, xếp gà, tôm lên trên.');
INSERT INTO `steps` VALUES (6, 23, 103, NULL, 'Rắc đậu phộng rang giã, hành lá, rau sống và bánh tráng giòn bên cạnh.');
INSERT INTO `steps` VALUES (7, 23, 104, NULL, 'Chan nước dùng nóng lên mì, dùng ngay.');
INSERT INTO `steps` VALUES (1, 24, 105, NULL, 'Rửa xương bò và giò heo, chần nước sôi 5 phút, rửa lại bằng nước lạnh.');
INSERT INTO `steps` VALUES (2, 24, 106, NULL, 'Đun 3 lít nước sôi, cho xương và giò vào, hạ lửa nhỏ, hớt bọt liên tục.');
INSERT INTO `steps` VALUES (3, 24, 107, NULL, 'Nướng sả và hành tím cho thơm, đập dập sả, cắt hành.');
INSERT INTO `steps` VALUES (4, 24, 108, NULL, 'Rang ớt bột và mắm ruốc nhẹ trên chảo, thêm vào nồi nước dùng.');
INSERT INTO `steps` VALUES (5, 24, 109, NULL, 'Ninh xương và giò heo lửa nhỏ 2–2,5 tiếng cho ngọt nước.');
INSERT INTO `steps` VALUES (6, 24, 110, NULL, 'Cho thịt bò nạm vào nấu thêm 30 phút, vớt ra thái lát mỏng.');
INSERT INTO `steps` VALUES (7, 24, 111, NULL, 'Nêm nước mắm, muối, đường phèn, nếm lại cho vừa ăn.');
INSERT INTO `steps` VALUES (8, 24, 112, NULL, 'Trần bún qua nước sôi 10 giây, cho vào tô, xếp thịt, giò, chan nước dùng nóng, rắc rau sống và tiêu.');
INSERT INTO `steps` VALUES (1, 25, 113, NULL, 'Rửa xương heo, chần qua nước sôi 5 phút.');
INSERT INTO `steps` VALUES (2, 25, 114, NULL, 'Ninh xương với nước sạch 40 phút, hớt bọt để nước trong.');
INSERT INTO `steps` VALUES (3, 25, 115, NULL, 'Luộc trứng cút 5 phút, bóc vỏ.');
INSERT INTO `steps` VALUES (4, 25, 116, NULL, 'Luộc tôm, thịt heo và gan 5–7 phút, thái lát vừa ăn.');
INSERT INTO `steps` VALUES (5, 25, 117, NULL, 'Phi hành tím và tỏi với dầu thơm, cho vào nồi nước dùng, nêm nước mắm, muối, đường.');
INSERT INTO `steps` VALUES (6, 25, 118, NULL, 'Trần hủ tiếu trong nước sôi 30 giây, cho vào tô.');
INSERT INTO `steps` VALUES (7, 25, 119, NULL, 'Xếp thịt, tôm, gan, trứng cút lên hủ tiếu, chan nước dùng, rắc rau sống và giá.');
INSERT INTO `steps` VALUES (1, 26, 120, NULL, 'Pha bột gạo với nước cốt dừa, một chút muối và hành lá băm nhỏ, để 15 phút.');
INSERT INTO `steps` VALUES (2, 26, 121, NULL, 'Xào thịt ba chỉ thái mỏng và tôm 2–3 phút cho săn.');
INSERT INTO `steps` VALUES (3, 26, 122, NULL, 'Đun chảo nóng, quét dầu, đổ 1 lớp bột mỏng, thêm nhân tôm, thịt và giá.');
INSERT INTO `steps` VALUES (4, 26, 123, NULL, 'Đậy nắp, để bánh chín giòn, gập đôi, vớt ra.');
INSERT INTO `steps` VALUES (5, 26, 124, NULL, 'Pha nước chấm: nước mắm, đường, chanh, tỏi và ớt băm.');
INSERT INTO `steps` VALUES (6, 26, 125, NULL, 'Dọn bánh xèo với rau sống và nước chấm.');
INSERT INTO `steps` VALUES (1, 27, 126, NULL, 'Rửa cá, khứa vài đường trên mình cá để dễ thấm gia vị.');
INSERT INTO `steps` VALUES (2, 27, 127, NULL, 'Ướp cá với nước mắm, đường và tiêu 10 phút.');
INSERT INTO `steps` VALUES (3, 27, 128, NULL, 'Phi hành tím và tỏi với dầu cho thơm.');
INSERT INTO `steps` VALUES (4, 27, 129, NULL, 'Cho cá vào nồi đất, thêm hành phi, một ít nước, đun sôi.');
INSERT INTO `steps` VALUES (5, 27, 130, NULL, 'Hạ lửa nhỏ kho cá 25–30 phút, trở cá nhẹ nhàng để không nát.');
INSERT INTO `steps` VALUES (6, 27, 131, NULL, 'Rắc hành lá cắt khúc, tiêu lên trên trước khi dùng nóng với cơm.');
INSERT INTO `steps` VALUES (1, 28, 132, NULL, 'Luộc tôm với chút muối 3 phút, bóc vỏ.');
INSERT INTO `steps` VALUES (2, 28, 133, NULL, 'Luộc thịt heo, thái lát mỏng.');
INSERT INTO `steps` VALUES (3, 28, 134, NULL, 'Ngâm bánh tráng nhanh qua nước, trải ra mâm.');
INSERT INTO `steps` VALUES (4, 28, 135, NULL, 'Xếp bún, rau sống, tôm và thịt vào bánh tráng.');
INSERT INTO `steps` VALUES (5, 28, 136, NULL, 'Cuốn bánh tròn gọn, đảm bảo nhân không rơi ra.');
INSERT INTO `steps` VALUES (6, 28, 137, NULL, 'Pha nước chấm: nước mắm, đường, chanh, tỏi, ớt, thêm đậu phộng giã.');
INSERT INTO `steps` VALUES (7, 28, 138, NULL, 'Dọn gỏi cuốn kèm nước chấm.');
INSERT INTO `steps` VALUES (1, 29, 139, NULL, 'Thái thịt heo mỏng, ướp với tỏi, hành tím, nước mắm, đường, tiêu 15 phút.');
INSERT INTO `steps` VALUES (2, 29, 140, NULL, 'Nướng thịt trên bếp than hoặc chảo nướng 8–10 phút đến vàng đều.');
INSERT INTO `steps` VALUES (3, 29, 141, NULL, 'Cắt bánh mì dọc, phết chút bơ hoặc mayonnaise.');
INSERT INTO `steps` VALUES (4, 29, 142, NULL, 'Xếp thịt nướng, rau thơm, dưa leo, cà rốt ngâm vào bánh mì.');
INSERT INTO `steps` VALUES (5, 29, 143, NULL, 'Ép nhẹ và dùng nóng.');
INSERT INTO `steps` VALUES (1, 30, 144, NULL, 'Nướng hoặc chiên xúc xích 5–7 phút đến khi chín vàng.');
INSERT INTO `steps` VALUES (2, 30, 145, NULL, 'Cắt bánh mì hotdog, phết sốt cà chua và mayonnaise.');
INSERT INTO `steps` VALUES (3, 30, 146, NULL, 'Xếp xúc xích, dưa leo, cà chua và rắc hành phi lên trên.');
INSERT INTO `steps` VALUES (4, 30, 147, NULL, 'Ép nhẹ bánh và dùng ngay khi còn nóng.');
INSERT INTO `steps` VALUES (1, 31, 148, NULL, 'Tách lòng đỏ và lòng trắng trứng gà, đánh bông lòng trắng với 50g đường đến mềm mịn.');
INSERT INTO `steps` VALUES (2, 31, 149, NULL, 'Đánh lòng đỏ với 50g đường, thêm sữa và bơ đã đun chảy, khuấy đều.');
INSERT INTO `steps` VALUES (3, 31, 150, NULL, 'Rây bột mì vào hỗn hợp lòng đỏ, trộn nhẹ nhàng.');
INSERT INTO `steps` VALUES (4, 31, 151, NULL, 'Trộn 1/3 lòng trắng vào hỗn hợp bột, sau đó trộn nhẹ phần còn lại.');
INSERT INTO `steps` VALUES (5, 31, 152, NULL, 'Đổ bột vào khuôn đã lót giấy nướng, xếp trứng muối lên mặt.');
INSERT INTO `steps` VALUES (6, 31, 153, NULL, 'Nướng 170°C trong 25–30 phút đến vàng đều, để nguội trước khi cắt.');
INSERT INTO `steps` VALUES (1, 32, 154, NULL, 'Hòa bột bắp với 50ml sữa lạnh, đánh tan.');
INSERT INTO `steps` VALUES (2, 32, 155, NULL, 'Đun sữa còn lại với socola và đường, khuấy tan, để sôi nhẹ.');
INSERT INTO `steps` VALUES (3, 32, 156, NULL, 'Đổ bột bắp vào nồi socola, khuấy đều trên lửa nhỏ đến sệt.');
INSERT INTO `steps` VALUES (4, 32, 157, NULL, 'Đánh trứng, đổ từ từ vào nồi socola, khuấy nhanh để không bị chín vón.');
INSERT INTO `steps` VALUES (5, 32, 158, NULL, 'Đổ pudding vào cốc, để nguội, sau đó cho vào tủ lạnh 1–2 giờ trước khi dùng.');
INSERT INTO `steps` VALUES (1, 33, 159, NULL, 'Ngâm đậu xanh 2 giờ trước khi nấu, sau đó rửa sạch.');
INSERT INTO `steps` VALUES (2, 33, 160, NULL, 'Đun đậu xanh với nước 500ml, thêm lá dứa, nấu sôi 20 phút đến đậu mềm.');
INSERT INTO `steps` VALUES (3, 33, 161, NULL, 'Thêm đường và 1g muối, khuấy đều 5 phút.');
INSERT INTO `steps` VALUES (4, 33, 162, NULL, 'Đổ nước cốt dừa vào, đun 5 phút nữa, tắt bếp.');
INSERT INTO `steps` VALUES (5, 33, 163, NULL, 'Dọn chè ra chén, có thể rắc thêm dừa nạo hoặc hạt sen.');
INSERT INTO `steps` VALUES (1, 34, 164, NULL, 'Bơ gọt vỏ, bỏ hạt, thái miếng.');
INSERT INTO `steps` VALUES (2, 34, 165, NULL, 'Cho bơ, sữa đặc, sữa tươi và đá viên vào máy xay sinh tố.');
INSERT INTO `steps` VALUES (3, 34, 166, NULL, 'Xay nhuyễn mịn 1–2 phút, rót ra ly, dùng ngay.');
INSERT INTO `steps` VALUES (1, 35, 167, NULL, 'Pha trà túi lọc với 200ml nước sôi, để 5 phút.');
INSERT INTO `steps` VALUES (2, 35, 168, NULL, 'Luộc trân châu theo hướng dẫn gói, trộn với đường nâu.');
INSERT INTO `steps` VALUES (3, 35, 169, NULL, 'Cho trà, sữa đặc, đá viên và trân châu vào ly, khuấy đều, dùng ngay.');
INSERT INTO `steps` VALUES (1, 36, 170, NULL, 'Cắt cải thảo thành miếng vừa ăn, rửa sạch.');
INSERT INTO `steps` VALUES (2, 36, 171, NULL, 'Rắc muối hạt lên cải thảo, trộn đều, ướp 2 giờ cho mềm.');
INSERT INTO `steps` VALUES (3, 36, 172, NULL, 'Rửa lại cải thảo, để ráo.');
INSERT INTO `steps` VALUES (4, 36, 173, NULL, 'Cắt cà rốt, hành lá, trộn cùng bột ớt, tỏi, gừng, nước mắm thành hỗn hợp gia vị.');
INSERT INTO `steps` VALUES (5, 36, 174, NULL, 'Trộn cải thảo với hỗn hợp gia vị, đảm bảo đều từng lá.');
INSERT INTO `steps` VALUES (6, 36, 175, NULL, 'Đóng vào hũ kín, để nhiệt độ phòng 1–2 ngày cho lên men, sau đó bảo quản tủ lạnh.');
INSERT INTO `steps` VALUES (1, 37, 176, NULL, 'Vo gạo Nhật nhiều lần, nấu với 150ml nước đến chín mềm.');
INSERT INTO `steps` VALUES (2, 37, 177, NULL, 'Trộn gạo chín với giấm, đường, muối, để nguội.');
INSERT INTO `steps` VALUES (3, 37, 178, NULL, 'Trải tấm rong biển lên thảm tre, dàn gạo đều, để chừa 1cm ở mép trên.');
INSERT INTO `steps` VALUES (4, 37, 179, NULL, 'Xếp cá hồi và dưa leo theo đường ngang gần mép dưới.');
INSERT INTO `steps` VALUES (5, 37, 180, NULL, 'Cuộn chặt sushi bằng thảm tre, ấn nhẹ để cố định.');
INSERT INTO `steps` VALUES (6, 37, 181, NULL, 'Cắt thành 6–8 miếng, dùng kèm nước tương và wasabi.');
INSERT INTO `steps` VALUES (1, 38, 182, NULL, 'Rửa xương heo, chần nước sôi 5 phút, rửa lại.');
INSERT INTO `steps` VALUES (2, 38, 183, NULL, 'Đun xương với nước 1,5 lít, hớt bọt, ninh lửa nhỏ 45 phút.');
INSERT INTO `steps` VALUES (3, 38, 184, NULL, 'Luộc trứng 7 phút, bóc vỏ.');
INSERT INTO `steps` VALUES (4, 38, 185, NULL, 'Xào thịt ba chỉ và nấm, nêm chút nước tương.');
INSERT INTO `steps` VALUES (5, 38, 186, NULL, 'Trần mì ramen trong nước sôi 2 phút.');
INSERT INTO `steps` VALUES (6, 38, 187, NULL, 'Chia mì ra tô, chan nước dùng, xếp thịt, nấm, trứng, rắc hành lá.');
INSERT INTO `steps` VALUES (1, 39, 188, NULL, 'Xào thịt bò với chút nước tương và tỏi băm.');
INSERT INTO `steps` VALUES (2, 39, 189, NULL, 'Xào rau bina, cà rốt, giá đỗ riêng từng loại với ít muối.');
INSERT INTO `steps` VALUES (3, 39, 190, NULL, 'Đun cơm nóng, chia ra tô.');
INSERT INTO `steps` VALUES (4, 39, 191, NULL, 'Xếp các loại rau, thịt lên trên cơm theo từng phần riêng.');
INSERT INTO `steps` VALUES (5, 39, 192, NULL, 'Chiên trứng ốp la, đặt lên giữa, thêm 1 thìa Gochujang.');
INSERT INTO `steps` VALUES (6, 39, 193, NULL, 'Rưới dầu mè, trộn đều trước khi ăn.');
INSERT INTO `steps` VALUES (1, 40, 194, NULL, 'Trộn bột Mochiko, đường và nước thành hỗn hợp mịn.');
INSERT INTO `steps` VALUES (2, 40, 195, NULL, 'Hấp bột 10–12 phút đến khi dẻo và trong.');
INSERT INTO `steps` VALUES (3, 40, 196, NULL, 'Rắc bột bắp lên mặt thớt, nhồi bột nóng, chia thành từng viên nhỏ.');
INSERT INTO `steps` VALUES (4, 40, 197, NULL, 'Ấn dẹp viên bột, đặt nhân đậu đỏ vào giữa, vo tròn lại.');
INSERT INTO `steps` VALUES (5, 40, 198, NULL, 'Rắc bột bắp lên ngoài để chống dính, dùng ngay hoặc bảo quản trong hộp kín.');
INSERT INTO `steps` VALUES (1, 41, 199, NULL, 'Cắt chanh thành lát mỏng, để riêng vài lát trang trí.');
INSERT INTO `steps` VALUES (2, 41, 200, NULL, 'Cho đường, lá bạc hà và chanh vào cốc, dầm nhẹ để ra nước cốt và tinh dầu bạc hà.');
INSERT INTO `steps` VALUES (3, 41, 201, NULL, 'Thêm đá viên đầy cốc.');
INSERT INTO `steps` VALUES (4, 41, 202, NULL, 'Rót nước soda vào, khuấy nhẹ để hoà đều vị.');
INSERT INTO `steps` VALUES (5, 41, 203, NULL, 'Trang trí với lát chanh và lá bạc hà, dùng ngay.');
INSERT INTO `steps` VALUES (1, 42, 204, NULL, 'Rửa sạch dâu tây, bỏ cuống.');
INSERT INTO `steps` VALUES (2, 42, 205, NULL, 'Chuối bóc vỏ, cắt khúc.');
INSERT INTO `steps` VALUES (3, 42, 206, NULL, 'Cho dâu, chuối, sữa tươi, sữa chua và đá viên vào máy xay sinh tố.');
INSERT INTO `steps` VALUES (4, 42, 207, NULL, 'Xay nhuyễn 1–2 phút đến mịn, không còn cục.');
INSERT INTO `steps` VALUES (5, 42, 208, NULL, 'Rót ra ly, có thể trang trí với vài lát dâu tươi.');
INSERT INTO `steps` VALUES (1, 43, 209, NULL, 'Xay hạt cà phê mịn vừa, nặng tay để chiết xuất tốt.');
INSERT INTO `steps` VALUES (2, 43, 210, NULL, 'Cho cà phê vào tay cầm máy pha espresso, nén chặt.');
INSERT INTO `steps` VALUES (3, 43, 211, NULL, 'Máy pha ở 90–95°C, chiết xuất 30 ml espresso trong 25–30 giây.');
INSERT INTO `steps` VALUES (4, 43, 212, NULL, 'Rót espresso ra cốc nhỏ, dùng nóng.');
INSERT INTO `steps` VALUES (1, 44, 213, NULL, 'Cho trà đen, gừng, quế, đinh hương, hạt tiêu và 100ml nước vào nồi, đun sôi 5 phút.');
INSERT INTO `steps` VALUES (2, 44, 214, NULL, 'Thêm 200ml sữa, đun lửa nhỏ 3–5 phút, không để trào.');
INSERT INTO `steps` VALUES (3, 44, 215, NULL, 'Lọc trà ra cốc, thêm đường vừa khẩu vị, khuấy đều.');
INSERT INTO `steps` VALUES (1, 45, 216, NULL, 'Xoài gọt vỏ, cắt miếng.');
INSERT INTO `steps` VALUES (2, 45, 217, NULL, 'Cho xoài, sữa dừa, sữa tươi, mật ong và đá viên vào máy xay sinh tố.');
INSERT INTO `steps` VALUES (3, 45, 218, NULL, 'Xay nhuyễn 1–2 phút, rót ra ly, dùng ngay.');
INSERT INTO `steps` VALUES (1, 46, 219, NULL, 'Rây bột matcha vào bát để tránh vón cục.');
INSERT INTO `steps` VALUES (2, 46, 220, NULL, 'Thêm nước nóng 70°C, đánh đều bằng chổi tre hoặc máy đánh cho bột tan hết.');
INSERT INTO `steps` VALUES (3, 46, 221, NULL, 'Đun nóng sữa, đánh bông nếu muốn bọt mềm.');
INSERT INTO `steps` VALUES (4, 46, 222, NULL, 'Đổ sữa vào matcha, khuấy nhẹ, thêm đường theo khẩu vị.');
INSERT INTO `steps` VALUES (5, 46, 223, NULL, 'Rót ra ly, trang trí bọt sữa trên mặt nếu thích, dùng nóng.');
INSERT INTO `steps` VALUES (1, 47, 224, NULL, 'Luộc trân châu trong nước sôi 15 phút, để riêng trong nước đường nâu 5 phút.');
INSERT INTO `steps` VALUES (2, 47, 225, NULL, 'Pha trà Ô Long với 200 ml nước nóng 3–5 phút, lấy nước trà.');
INSERT INTO `steps` VALUES (3, 47, 226, NULL, 'Cho trân châu vào ly, thêm trà đã pha.');
INSERT INTO `steps` VALUES (4, 47, 227, NULL, 'Rót sữa tươi lên trên, khuấy nhẹ hoặc dùng ống hút lớn.');
INSERT INTO `steps` VALUES (1, 48, 228, NULL, 'Cắt socola thành miếng nhỏ.');
INSERT INTO `steps` VALUES (2, 48, 229, NULL, 'Đun sữa và đường trên lửa nhỏ, không để sôi.');
INSERT INTO `steps` VALUES (3, 48, 230, NULL, 'Cho socola vào sữa nóng, khuấy đều cho tan hết.');
INSERT INTO `steps` VALUES (4, 48, 231, NULL, 'Rót ra ly, thêm kem tươi lên trên, dùng nóng.');
INSERT INTO `steps` VALUES (1, 49, 232, NULL, 'Cho đá viên vào máy xay sinh tố.');
INSERT INTO `steps` VALUES (2, 49, 233, NULL, 'Thêm espresso, sữa và siro.');
INSERT INTO `steps` VALUES (3, 49, 234, NULL, 'Xay nhuyễn đến mịn, rót ra ly.');
INSERT INTO `steps` VALUES (4, 49, 235, NULL, 'Thêm kem tươi lên trên, có thể rưới thêm siro trang trí.');
INSERT INTO `steps` VALUES (1, 50, 236, NULL, 'Rửa sạch lá bạc hà và chanh.');
INSERT INTO `steps` VALUES (2, 50, 237, NULL, 'Cho trà xanh vào ấm, rót 200 ml nước sôi, ủ 3–5 phút.');
INSERT INTO `steps` VALUES (3, 50, 238, NULL, 'Thêm lá bạc hà, đường và phần nước còn lại, đun 2–3 phút.');
INSERT INTO `steps` VALUES (4, 50, 239, NULL, 'Rót trà ra cốc, thêm lát chanh trang trí, dùng nóng hoặc để nguội.');
INSERT INTO `steps` VALUES (1, 11, 240, 0, 'Rửa sạch cá, khứa vài đường trên thân, ướp muối và tiêu 5 phút.');
INSERT INTO `steps` VALUES (2, 11, 241, 0, 'Nhúng cá qua bột mì, trứng, sau đó lăn bột chiên xù.');
INSERT INTO `steps` VALUES (3, 11, 242, 0, 'Chiên cá ngập dầu đến vàng giòn, vớt ra để ráo.');
INSERT INTO `steps` VALUES (4, 11, 243, 0, 'Dùng kèm nước mắm pha chua ngọt và chanh.');
INSERT INTO `steps` VALUES (1, 51, 245, 0, 'Bước 1');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKt48xdq560gs3gap9g7jg36kgc`(`name` ASC) USING BTREE,
  UNIQUE INDEX `UKsn0d91hxu700qcw0n4pebp5vc`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for upgrade_orders
-- ----------------------------
DROP TABLE IF EXISTS `upgrade_orders`;
CREATE TABLE `upgrade_orders`  (
  `package_duration_days` int NOT NULL,
  `order_id` bigint NOT NULL,
  `package_upgrade_id` bigint NOT NULL,
  `role_assigned` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `FK46qay52na598kifvbpcwddb1`(`package_upgrade_id` ASC) USING BTREE,
  CONSTRAINT `FK46qay52na598kifvbpcwddb1` FOREIGN KEY (`package_upgrade_id`) REFERENCES `packages_upgrades` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKc1nf7iyen6t3pa346kugqnklc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upgrade_orders
-- ----------------------------
INSERT INTO `upgrade_orders` VALUES (90, 1, 2, 'CHEF');

-- ----------------------------
-- Table structure for user_category
-- ----------------------------
DROP TABLE IF EXISTS `user_category`;
CREATE TABLE `user_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_category
-- ----------------------------
INSERT INTO `user_category` VALUES (1, 'Sub Admin', '', '2016-09-09 11:21:45');
INSERT INTO `user_category` VALUES (5, 'Admin', '', '2016-09-09 11:21:57');
INSERT INTO `user_category` VALUES (9, 'Normal User ', '', '2016-09-09 11:22:24');
INSERT INTO `user_category` VALUES (13, 'Đối tác phát triển thuê bao', 'Đối tác phát triển thuê bao', '2016-09-14 17:12:41');

-- ----------------------------
-- Table structure for user_follows
-- ----------------------------
DROP TABLE IF EXISTS `user_follows`;
CREATE TABLE `user_follows`  (
  `created_at` datetime(6) NOT NULL,
  `followed_id` bigint NOT NULL,
  `follower_id` bigint NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UKt21sqiubk1nu5epc9yieinc6h`(`follower_id` ASC, `followed_id` ASC) USING BTREE,
  INDEX `FKea4yg0iwonducxlnqqdjmdh4j`(`followed_id` ASC) USING BTREE,
  CONSTRAINT `FKea4yg0iwonducxlnqqdjmdh4j` FOREIGN KEY (`followed_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKqx9mu1fniaua5jfe1cdyspxdt` FOREIGN KEY (`follower_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_follows
-- ----------------------------
INSERT INTO `user_follows` VALUES ('2026-01-06 11:15:26.000000', 6, 1, 1);
INSERT INTO `user_follows` VALUES ('2026-01-06 11:26:07.000000', 6, 7, 2);
INSERT INTO `user_follows` VALUES ('2026-01-06 11:29:02.000000', 3, 7, 3);
INSERT INTO `user_follows` VALUES ('2026-01-06 14:15:05.000000', 6, 3, 4);
INSERT INTO `user_follows` VALUES ('2026-01-06 14:15:05.000000', 7, 3, 5);
INSERT INTO `user_follows` VALUES ('2026-01-06 14:15:06.000000', 5, 3, 6);
INSERT INTO `user_follows` VALUES ('2026-01-06 14:15:07.000000', 4, 3, 7);
INSERT INTO `user_follows` VALUES ('2026-01-06 14:15:07.000000', 2, 3, 8);
INSERT INTO `user_follows` VALUES ('2026-01-06 15:36:29.000000', 6, 5, 9);
INSERT INTO `user_follows` VALUES ('2026-01-06 15:36:29.000000', 7, 5, 10);
INSERT INTO `user_follows` VALUES ('2026-01-06 15:36:30.000000', 4, 5, 11);
INSERT INTO `user_follows` VALUES ('2026-01-06 15:36:30.000000', 3, 5, 12);
INSERT INTO `user_follows` VALUES ('2026-01-06 15:36:31.000000', 2, 5, 13);
INSERT INTO `user_follows` VALUES ('2026-01-06 19:12:55.000000', 5, 7, 14);
INSERT INTO `user_follows` VALUES ('2026-01-06 20:39:34.000000', 7, 6, 15);
INSERT INTO `user_follows` VALUES ('2026-01-06 20:39:34.000000', 5, 6, 16);
INSERT INTO `user_follows` VALUES ('2026-01-06 20:39:38.000000', 4, 6, 17);
INSERT INTO `user_follows` VALUES ('2026-01-06 20:39:39.000000', 3, 6, 18);
INSERT INTO `user_follows` VALUES ('2026-01-08 21:29:14.000000', 6, 8, 19);
INSERT INTO `user_follows` VALUES ('2026-01-08 21:29:17.000000', 5, 8, 20);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`, `user_id`) USING BTREE,
  INDEX `FKhfh9dx7w3ubf1co1vdev94g3f`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 1);
INSERT INTO `user_roles` VALUES (1, 2);
INSERT INTO `user_roles` VALUES (1, 3);
INSERT INTO `user_roles` VALUES (1, 4);
INSERT INTO `user_roles` VALUES (1, 5);
INSERT INTO `user_roles` VALUES (1, 6);
INSERT INTO `user_roles` VALUES (1, 7);
INSERT INTO `user_roles` VALUES (1, 8);
INSERT INTO `user_roles` VALUES (2, 1);
INSERT INTO `user_roles` VALUES (2, 2);
INSERT INTO `user_roles` VALUES (2, 3);
INSERT INTO `user_roles` VALUES (2, 4);
INSERT INTO `user_roles` VALUES (2, 5);
INSERT INTO `user_roles` VALUES (2, 6);
INSERT INTO `user_roles` VALUES (2, 7);
INSERT INTO `user_roles` VALUES (4, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `dob` date NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bio` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('ACTIVE','BANNED','INACTIVE') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `UK6dotkott2kjsp8vw4d0m25fb7`(`email` ASC) USING BTREE,
  UNIQUE INDEX `UKr43af9ap4edm43mmtq01oddj6`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1990-01-01', '2026-01-06 11:09:00.000000', NULL, 1, NULL, NULL, 'admine', '$2a$10$fjYWDrF/5.6FTI7XCVAt9.lV9v7iegMRyccaK4WS0z39RV8KOxvae', 'admin', 'ACTIVE');
INSERT INTO `users` VALUES ('2026-01-06', '2026-01-06 11:10:13.000000', '2026-01-06 11:10:56.000000', 2, '/static_resource/public/upload/avatars/261ca509-9dfd-444b-bd75-376e091fe01e_74.jpg', 'MasterCook', 'chefextra@example.com', '$2a$10$jPLz4aGQCk8cV82wYFrRAuaYUhNYjVRHdUOzOJfB0BtI.I6/aDdoq', 'ChefExtraordinaire', 'ACTIVE');
INSERT INTO `users` VALUES ('2026-01-06', '2026-01-06 11:11:30.000000', '2026-01-06 14:07:07.000000', 3, '/static_resource/public/upload/avatars/b902060e-cf41-4047-9236-3d23bf8d9d3f_41.jpg', 'MasterCook', 'mastercook@example.com', '$2a$10$kdoh05G0ZtpkYsE28Q5ni.bh/m6hnLyNyDy64uN//qjiB8/80i9Ba', 'MasterCook', 'ACTIVE');
INSERT INTO `users` VALUES ('2026-01-06', '2026-01-06 11:12:51.000000', '2026-01-06 11:13:45.000000', 4, '/static_resource/public/upload/avatars/35294c06-1f63-49e5-b9b0-2e708b87899c_41.jpg', 'MasterCook', 'spicewizard@example.com', '$2a$10$0KSrO0CnJU71vldaMr4xFOLCKzGxmI3XnWsXyk7UMfy86DMT7NaYW', 'SpiceWizard', 'ACTIVE');
INSERT INTO `users` VALUES ('2026-01-06', '2026-01-06 11:14:12.000000', '2026-01-06 18:59:37.000000', 5, '/static_resource/public/upload/avatars/ccd40cf9-3039-4aae-a451-5f2a9e80f8ff_38.jpg', 'MasterCook', 'gourmetguru@example.com', '$2a$10$MX2v049dHFQl.XRidYOv6.YiKPVoWsd26yyB3P.RghXzHd1s8fg.a', 'GourmetGuru', 'ACTIVE');
INSERT INTO `users` VALUES ('2026-01-06', '2026-01-06 11:15:09.000000', '2026-01-10 10:30:00.000000', 6, '/static_resource/public/upload/avatars/e45c4690-f480-474c-99d6-0bf2b4c7d320_38.jpg', 'MasterCook', 'flavormaestro@example.com', '$2a$10$ntFDvV8Gx/X93TmodJq8mOz7gBgycQPGEu.2zrTqE9cJsUJEYCMBe', 'FlavorMaestro', 'ACTIVE');
INSERT INTO `users` VALUES ('2026-01-30', '2026-01-06 11:22:15.000000', '2026-01-08 20:51:16.000000', 7, '/static_resource/public/upload/avatars/2be4bb6d-4b43-4ed3-854b-1e6c86d56206_47.jpg', 'vanhong', 'vanhong130803@gmail.com', '$2a$10$und1J0gLKl9pS5hzUQOPB.f/eSHLt8n1cBMmuLFgyvvknqiLRHYvG', 'Nguyễn Hồng', 'ACTIVE');
INSERT INTO `users` VALUES ('2026-01-08', '2026-01-08 21:28:36.000000', '2026-01-10 10:25:15.000000', 8, '/static_resource/public/upload/avatars/73ccafed-a004-422f-a01c-70edbbc97f45_6x.jpg', 'Nomal User', 'normal_user@gmail.com', '$2a$10$cLFmIBBXhednhES8sYRkh.U/sNlt7ZTBto5gylmBvOLBf1W/DWHna', 'Nomal User', 'ACTIVE');

-- ----------------------------
-- Table structure for wallet_transaction
-- ----------------------------
DROP TABLE IF EXISTS `wallet_transaction`;
CREATE TABLE `wallet_transaction`  (
  `amount` bigint NULL DEFAULT NULL,
  `commission` bigint NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `gross_amount` bigint NULL DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NULL DEFAULT NULL,
  `wallet_id` bigint NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` enum('COMPLETE','FAIL','PENDING') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `type` enum('ORDER_REVENUE','REFUND','RELEASE_PENDING','WITHDRAW') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK3csowqwx8sfiqwwte6hke9uft`(`wallet_id` ASC) USING BTREE,
  CONSTRAINT `FK3csowqwx8sfiqwwte6hke9uft` FOREIGN KEY (`wallet_id`) REFERENCES `seller_wallet` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wallet_transaction
-- ----------------------------
INSERT INTO `wallet_transaction` VALUES (40500, 4500, '2026-01-06 11:31:38.000000', 45000, 1, 2, 2, 'Nhận tiền đơn hàng #2 (Phí sàn 10%)', 'COMPLETE', 'ORDER_REVENUE');
INSERT INTO `wallet_transaction` VALUES (40500, NULL, '2026-01-06 11:33:02.000000', NULL, 2, 2, 2, 'Giải ngân tiền đơn hàng sau khi đã trừ phí #2 vào ví chính', 'COMPLETE', 'RELEASE_PENDING');
INSERT INTO `wallet_transaction` VALUES (90000, 10000, '2026-01-09 16:38:27.000000', 100000, 3, 4, 5, 'Nhận tiền đơn hàng #4 (Phí sàn 10%)', 'COMPLETE', 'ORDER_REVENUE');
INSERT INTO `wallet_transaction` VALUES (90000, NULL, '2026-01-09 16:40:17.000000', NULL, 4, 4, 5, 'Giải ngân tiền đơn hàng sau khi đã trừ phí #4 vào ví chính', 'COMPLETE', 'RELEASE_PENDING');
INSERT INTO `wallet_transaction` VALUES (-50000, NULL, '2026-01-09 16:40:42.000000', NULL, 5, NULL, 5, 'Rút tiền từ ví', 'COMPLETE', 'WITHDRAW');

-- ----------------------------
-- Procedure structure for sp_report_daily_chef_performance
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_report_daily_chef_performance`;
delimiter ;;
CREATE PROCEDURE `sp_report_daily_chef_performance`(IN p_date DATE)
BEGIN
    DELETE FROM report_daily_chef_performance
    WHERE report_date = p_date;

    INSERT INTO report_daily_chef_performance (
        report_date,
        chef_id,
        chef_name,
        total_orders,
        total_revenue
    )
    SELECT
        p_date,
        u.user_id,
        u.username,
        COUNT(DISTINCT o.order_id),
        SUM(oi.quantity * oi.price_at_order)
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN dish d ON d.dish_id = oi.dish_id
    JOIN users u ON u.user_id = d.user_id
    WHERE
        o.order_status IN ('PAID', 'COMPLETED', 'DELIVERED')
        AND DATE(o.created_at) = p_date
    GROUP BY u.user_id, u.username;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_report_daily_dish_revenue
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_report_daily_dish_revenue`;
delimiter ;;
CREATE PROCEDURE `sp_report_daily_dish_revenue`(IN p_date DATE)
BEGIN
    DELETE FROM report_daily_dish_revenue
    WHERE report_date = p_date;

    INSERT INTO report_daily_dish_revenue (
        report_date,
        dish_id,
        dish_name,
        seller_id,
        total_quantity,
        total_revenue
    )
    SELECT
        p_date,
        d.dish_id,
        d.name,
        d.user_id,
        SUM(oi.quantity),
        SUM(oi.quantity * oi.price_at_order)
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN dish d ON d.dish_id = oi.dish_id
    WHERE
        o.order_status IN ('PAID', 'COMPLETED', 'DELIVERED')
        AND DATE(o.created_at) = p_date
    GROUP BY d.dish_id, d.name, d.user_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_report_daily_system
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_report_daily_system`;
delimiter ;;
CREATE PROCEDURE `sp_report_daily_system`(IN p_date DATE)
BEGIN
    -- Xóa report cũ của ngày đó (nếu chạy lại)
    DELETE FROM reports_daily
    WHERE report_date = p_date;

    -- Insert snapshot mới
    INSERT INTO reports_daily (
        report_date,
        total_users,
        new_users_today,
        total_chefs,
        recipes_created_today,
        created_at
    )
    SELECT
        p_date,

        -- Tổng user
        (SELECT COUNT(*) FROM users),

        -- User đăng ký hôm nay
        (SELECT COUNT(*) 
         FROM users 
         WHERE DATE(created_at) = p_date),

        -- Tổng đầu bếp
        (SELECT COUNT(DISTINCT ur.user_id)
         FROM user_roles ur
         JOIN roles r ON r.id = ur.role_id
         WHERE r.name = 'CHEF'),

        -- Công thức tạo hôm nay
        (SELECT COUNT(*)
         FROM recipes
         WHERE DATE(created_at) = p_date),

        NOW();
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_report_daily_system_revenue
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_report_daily_system_revenue`;
delimiter ;;
CREATE PROCEDURE `sp_report_daily_system_revenue`(IN p_date DATE)
BEGIN
    DECLARE v_upgrade BIGINT DEFAULT 0;
    DECLARE v_commission BIGINT DEFAULT 0;

    SELECT COALESCE(SUM(po.amount), 0)
    INTO v_upgrade
    FROM upgrade_orders uo
    JOIN payment_orders po ON po.order_id = uo.order_id
    WHERE
        po.payment_status = 'SUCCESS'
        AND DATE(po.created_at) = p_date;

    SELECT COALESCE(SUM(wt.commission), 0)
    INTO v_commission
    FROM wallet_transaction wt
    WHERE
        wt.type = 'ORDER_REVENUE'
        AND wt.status = 'COMPLETE'
        AND DATE(wt.created_at) = p_date;

    DELETE FROM report_daily_system_revenue
    WHERE report_date = p_date;

    INSERT INTO report_daily_system_revenue (
        report_date,
        upgrade_revenue,
        commission_revenue,
        total_revenue
    )
    VALUES (
        p_date,
        v_upgrade,
        v_commission,
        v_upgrade + v_commission
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_report_daily_upgrade_revenue
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_report_daily_upgrade_revenue`;
delimiter ;;
CREATE PROCEDURE `sp_report_daily_upgrade_revenue`(IN p_date DATE)
BEGIN
    DELETE FROM report_daily_upgrade_revenue
    WHERE report_date = p_date;

    INSERT INTO report_daily_upgrade_revenue (
        report_date,
        duration_days,
        total_orders,
        total_revenue
    )
    SELECT
        p_date,
        p.duration_days,
        COUNT(uo.order_id),
        SUM(po.amount)
    FROM upgrade_orders uo
    JOIN packages_upgrades p ON p.id = uo.package_upgrade_id
    JOIN payment_orders po ON po.order_id = uo.order_id
    WHERE
        po.payment_status = 'SUCCESS'
        AND DATE(po.created_at) = p_date
    GROUP BY p.duration_days;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_run_daily_reports
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_run_daily_reports`;
delimiter ;;
CREATE PROCEDURE `sp_run_daily_reports`(IN p_date DATE)
BEGIN
    CALL sp_report_daily_dish_revenue(p_date);
    CALL sp_report_daily_upgrade_revenue(p_date);
    CALL sp_report_daily_system_revenue(p_date);
    CALL sp_report_daily_chef_performance(p_date);
    CALL sp_report_daily_system(p_date);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
