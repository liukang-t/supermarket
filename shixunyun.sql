/*
 Navicat Premium Data Transfer

 Source Server         : 1111
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : localhost:3306
 Source Schema         : shixunyun

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 07/02/2024 09:53:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `checked` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `sp_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  PRIMARY KEY (`id`, `sp_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay`  (
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay
-- ----------------------------

-- ----------------------------
-- Table structure for query
-- ----------------------------
DROP TABLE IF EXISTS `query`;
CREATE TABLE `query`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `buy_n` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `leix` int(10) NULL DEFAULT NULL,
  `te_id` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of query
-- ----------------------------
INSERT INTO `query` VALUES (1, '	https://gd4.alicdn.com/imgextra/i1/3332724650/O1CN014swQRw1kDkJGyxTad_!!3332724650.jpg_400x400.jpg', '铅笔', '2', 2, 1, 0, '素描铅笔美术生专用绘画炭笔初学者写生绘图画笔联考试2hb4b6b8b10b14b特浓碳笔亚光软中硬性2比练习艺考套装');
INSERT INTO `query` VALUES (2, 'https://gw.alicdn.com/imgextra/i2/2215895212668/O1CN01KxfScC1VZzYBYFTsl_!!0-item_pic.jpg_Q75.jpg_.webp', '画板', '23', 3, 1, 0, '画板美术生专用4K素描工具套装实木水彩便携写生a2绘图板儿童实心半开木质画架四开8K空心全开2K水粉画画板子');
INSERT INTO `query` VALUES (3, 'https://gw.alicdn.com/imgextra/i4/2216209894188/O1CN01IAy2vL1go9aoPizRV_!!0-item_pic.jpg_Q75.jpg_.webp', '彩色笔', '24', 4, 1, 0, '韩版文具批发爱好GP260清新彩色中性笔48色DIY手账彩笔莫兰迪色牛奶色金属色荧光色复古色水笔笔记标记重点笔');

-- ----------------------------
-- Table structure for query2
-- ----------------------------
DROP TABLE IF EXISTS `query2`;
CREATE TABLE `query2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `buy_n` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `leix` int(10) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of query2
-- ----------------------------
INSERT INTO `query2` VALUES (1, '	https://gd4.alicdn.com/imgextra/i1/3332724650/O1CN014swQRw1kDkJGyxTad_!!https://img.alicdn.com/imgextra/i3/115420170/O1CN01JvVlEu1D7u94j5q0u_!!0-saturn_solar.jpg_360x360q90.jpg_.webp', '男装', '2', 2, 2, '冬季新款加绒加厚束脚卫裤男潮宽松春秋款重磅运动裤子男休闲长裤');
INSERT INTO `query2` VALUES (2, 'https://gw.alicdn.com/imgextra/i4/2206587690938/O1CN01yGHpn41IneO7gjXBV_!!0-item_pic.jpg_Q75.jpg_.webp', '鞋子', '23', 3, 2, '环球厚底板鞋男士2023新款秋季复古韩版潮鞋子男潮鞋百搭休闲鞋男');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ava` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('a1234', '$2a$10$Uy16/pP/juwqvyM4qke8GufdmWWBnVryUcU3Do.0fOxCYTDmvqX2K', 9, NULL);
INSERT INTO `user_info` VALUES ('a12345', '$2a$10$0W.dboGO9wgUB7C4LCZp3esXyuzqJzHhalioKughFUZwOr21D8ASO', 10, NULL);

SET FOREIGN_KEY_CHECKS = 1;
