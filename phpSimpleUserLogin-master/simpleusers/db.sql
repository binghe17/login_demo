/*
 Navicat Premium Data Transfer

 Source Server         : A_local_server
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 05/04/2021 15:59:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `uUsername` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uPassword` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uSalt` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uActivity` datetime(0) NOT NULL,
  `uCreated` datetime(0) NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE,
  UNIQUE INDEX `uUsername`(`uUsername`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'test123', '46d28f250d4d4308a7025c8918b22ce43ca10124', '606ab4b2395202.48104881606ab4b2395282.78988435606ab4b23952a6.71797164606ab4b23952c5.88298224606ab4b23952d7.40388771606ab4b23952e', '2021-04-05 15:59:03', '2021-04-05 15:56:50');

-- ----------------------------
-- Table structure for users_information
-- ----------------------------
DROP TABLE IF EXISTS `users_information`;
CREATE TABLE `users_information`  (
  `userId` int(11) NOT NULL,
  `infoKey` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `InfoValue` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `userId`(`userId`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_information
-- ----------------------------
INSERT INTO `users_information` VALUES (2, 'bbb', 'bbb');
INSERT INTO `users_information` VALUES (2, 'aaa', 'aaaa');

SET FOREIGN_KEY_CHECKS = 1;
