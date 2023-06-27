/*
 Navicat Premium Data Transfer

 Source Server         : MyDB
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 121.36.69.217:3306
 Source Schema         : luckwheel

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 27/06/2023 13:40:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for luck_product
-- ----------------------------
DROP TABLE IF EXISTS `luck_product`;
CREATE TABLE `luck_product`  (
                                 `id` int(11) NOT NULL AUTO_INCREMENT,
                                 `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名',
                                 `value` int(11) NULL DEFAULT NULL COMMENT '分值',
                                 `weight` float NULL DEFAULT 0 COMMENT '概率',
                                 `flag` int(11) NULL DEFAULT 1 COMMENT '是否展示',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of luck_product
-- ----------------------------
INSERT INTO `luck_product` VALUES (19, '积分20', 20, 30, 1);
INSERT INTO `luck_product` VALUES (20, '积分5', 5, 20, 1);
INSERT INTO `luck_product` VALUES (21, '积分10', 10, 20, 1);
INSERT INTO `luck_product` VALUES (22, '积分30', 30, 15, 1);
INSERT INTO `luck_product` VALUES (23, '积分50', 50, 5, 1);
INSERT INTO `luck_product` VALUES (24, '积分100', 100, 10, 1);

-- ----------------------------
-- Table structure for luck_user
-- ----------------------------
DROP TABLE IF EXISTS `luck_user`;
CREATE TABLE `luck_user`  (
                              `id` int(11) NOT NULL AUTO_INCREMENT,
                              `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务id',
                              `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                              `score` int(255) NULL DEFAULT NULL COMMENT '分数',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of luck_user
-- ----------------------------
INSERT INTO `luck_user` VALUES (8, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 'zxm', '123', 45);
INSERT INTO `luck_user` VALUES (9, '11847843-199c-45bc-a407-e738d8e27201', 'qqq', 'qqqq', 40);
INSERT INTO `luck_user` VALUES (10, 'f36eefa8-a14e-4d6d-82f1-de6e34a7247b', '三秋远', '377', 85);
INSERT INTO `luck_user` VALUES (11, '2e436379-086c-4eff-8764-0900a2497106', '111', '111', 85);
INSERT INTO `luck_user` VALUES (12, '5e106d38-3183-41ac-a96f-012ac015fdbe', 'zws666', 'zws666', 90);
INSERT INTO `luck_user` VALUES (13, '0e4f85bb-ac08-4c56-b542-5ded6d88fc51', 'zl', '1', 100);

-- ----------------------------
-- Table structure for luck_user_product
-- ----------------------------
DROP TABLE IF EXISTS `luck_user_product`;
CREATE TABLE `luck_user_product`  (
                                      `id` int(11) NOT NULL AUTO_INCREMENT,
                                      `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                      `pid` int(11) NULL DEFAULT 0,
                                      `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名字',
                                      `exchange` int(11) NULL DEFAULT 0 COMMENT '是否兑换 0未发货  1发货了',
                                      `ltime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                      PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of luck_user_product
-- ----------------------------
INSERT INTO `luck_user_product` VALUES (11, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 19, '积分20', 0, '2023-06-26 07:47:43');
INSERT INTO `luck_user_product` VALUES (12, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 20, '积分5', 0, '2023-06-26 07:47:58');
INSERT INTO `luck_user_product` VALUES (13, '11847843-199c-45bc-a407-e738d8e27201', 20, '积分5', 0, '2023-06-26 08:06:02');
INSERT INTO `luck_user_product` VALUES (14, '11847843-199c-45bc-a407-e738d8e27201', 20, '积分5', 0, '2023-06-26 08:09:16');
INSERT INTO `luck_user_product` VALUES (15, '11847843-199c-45bc-a407-e738d8e27201', 21, '积分10', 0, '2023-06-26 08:09:26');
INSERT INTO `luck_user_product` VALUES (16, '11847843-199c-45bc-a407-e738d8e27201', 20, '积分5', 0, '2023-06-26 08:09:41');
INSERT INTO `luck_user_product` VALUES (17, '11847843-199c-45bc-a407-e738d8e27201', 20, '积分5', 0, '2023-06-26 08:09:51');
INSERT INTO `luck_user_product` VALUES (18, '11847843-199c-45bc-a407-e738d8e27201', 22, '积分30', 0, '2023-06-26 08:24:04');
INSERT INTO `luck_user_product` VALUES (19, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 19, '积分20', 0, '2023-06-26 08:49:11');
INSERT INTO `luck_user_product` VALUES (20, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 20, '积分5', 0, '2023-06-26 08:49:20');
INSERT INTO `luck_user_product` VALUES (21, 'f36eefa8-a14e-4d6d-82f1-de6e34a7247b', 19, '积分20', 0, '2023-06-26 08:54:37');
INSERT INTO `luck_user_product` VALUES (22, 'f36eefa8-a14e-4d6d-82f1-de6e34a7247b', 20, '积分5', 0, '2023-06-26 08:54:49');
INSERT INTO `luck_user_product` VALUES (23, '2e436379-086c-4eff-8764-0900a2497106', 19, '积分20', 0, '2023-06-26 08:59:16');
INSERT INTO `luck_user_product` VALUES (24, '5e106d38-3183-41ac-a96f-012ac015fdbe', 21, '积分10', 0, '2023-06-26 09:00:06');
INSERT INTO `luck_user_product` VALUES (25, '2e436379-086c-4eff-8764-0900a2497106', 20, '积分5', 0, '2023-06-26 09:00:13');
INSERT INTO `luck_user_product` VALUES (26, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 20, '积分5', 0, '2023-06-26 09:00:37');
INSERT INTO `luck_user_product` VALUES (27, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 21, '积分10', 0, '2023-06-26 09:00:45');
INSERT INTO `luck_user_product` VALUES (28, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 19, '积分20', 0, '2023-06-26 09:00:53');
INSERT INTO `luck_user_product` VALUES (29, '0d28d00e-0b6c-48ce-9b11-d216f2948a9d', 20, '积分5', 0, '2023-06-26 09:01:11');
INSERT INTO `luck_user_product` VALUES (30, '5e106d38-3183-41ac-a96f-012ac015fdbe', 19, '积分20', 0, '2023-06-26 09:01:14');
INSERT INTO `luck_user_product` VALUES (31, '0e4f85bb-ac08-4c56-b542-5ded6d88fc51', 21, '积分10', 0, '2023-06-26 09:07:21');
INSERT INTO `luck_user_product` VALUES (32, '0e4f85bb-ac08-4c56-b542-5ded6d88fc51', 22, '积分30', 0, '2023-06-26 09:07:34');

SET FOREIGN_KEY_CHECKS = 1;
