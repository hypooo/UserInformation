/*
 Navicat MySQL Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : db1

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 31/07/2019 22:44:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `address` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'HYPO', '男', 22, '安徽六安', '1264773647', 'hypo@hypo.fun');
INSERT INTO `user` VALUES (2, '孙悟空', '男', 500, '花果山', '6666', 'swk@qq.com');
INSERT INTO `user` VALUES (3, '钢铁侠', '男', 55, '漫威', '8888', 'gtx@gtx.com');
INSERT INTO `user` VALUES (4, '王碧涛', '女', 16, '舒城', '6767', 'cdd@cdd.com');
INSERT INTO `user` VALUES (5, '马化腾', '男', 56, '上海', '10001', '10001@qq.com');
INSERT INTO `user` VALUES (6, '中国移动', '男', 100, '安徽', '10086', '10086@139.com');
INSERT INTO `user` VALUES (7, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (8, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (9, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (10, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (30, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (31, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (32, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (33, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (34, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (35, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (36, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (37, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (38, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (39, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (40, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (41, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (42, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (43, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (44, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (45, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (46, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (47, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (48, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (49, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (50, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (51, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (52, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (53, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (54, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (55, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (56, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (57, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (58, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (59, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (60, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (61, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (62, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (63, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (64, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (65, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (66, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (67, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (68, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (69, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (70, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (71, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (72, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (73, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (74, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (75, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (77, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (78, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (79, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (80, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (81, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (82, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (83, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (84, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (85, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (86, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (87, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (89, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (90, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (91, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (92, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (93, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (94, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (96, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (97, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (98, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (99, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (110, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (111, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (112, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (113, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (114, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (115, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (116, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (117, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (118, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (119, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (120, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (121, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (122, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (146, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (147, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (148, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (149, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (150, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (151, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (152, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (153, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (154, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (155, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (156, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (157, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (158, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (159, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (160, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (161, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (162, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (163, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (164, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (165, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (166, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (167, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (168, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (169, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (170, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (171, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (172, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (173, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (174, 'test1', '男', 11, '安徽', '1212', '1212331');
INSERT INTO `user` VALUES (175, 'test2', '女', 22, '江苏', '1323', '1223232');
INSERT INTO `user` VALUES (180, '蜘蛛侠', '男', 18, '安徽', '61661', 'zzx@zzx.com');

SET FOREIGN_KEY_CHECKS = 1;
