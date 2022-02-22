/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 22/02/2022 15:08:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer_prize
-- ----------------------------
DROP TABLE IF EXISTS `answer_prize`;
CREATE TABLE `answer_prize`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(1275) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目',
  `options` varchar(1275) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '选项 (多个选项逗号分隔)',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '正确答案',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `is_deleted` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '0-正常 1-删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '答题表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer_prize
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'pet_adopt', '宠物领养', NULL, NULL, 'PetAdopt', 'crud', 'com.ruoyi.adopt', 'adopt', 'adopt', '宠物领养', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-02-16 13:13:51', '', '2022-02-16 16:19:04', NULL);
INSERT INTO `gen_table` VALUES (2, 'pet_find', '寻宠', NULL, NULL, 'PetFind', 'crud', 'com.ruoyi.adopt', 'adopt', 'find', '寻宠', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27', NULL);
INSERT INTO `gen_table` VALUES (3, 'pet_circle', '动态', NULL, NULL, 'PetCircle', 'crud', 'com.ruoyi.adopt', 'adopt', 'circle', '动态', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49', NULL);
INSERT INTO `gen_table` VALUES (4, 'article', '文章表', NULL, NULL, 'Article', 'crud', 'com.ruoyi.adopt', 'adopt', 'article', '文章', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07', NULL);
INSERT INTO `gen_table` VALUES (5, 'credits', '积分表', NULL, NULL, 'Credits', 'crud', 'com.ruoyi.adopt', 'adopt', 'credits', '积分', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09', NULL);
INSERT INTO `gen_table` VALUES (6, 'pet_cyclopedia', '宠物科普', NULL, NULL, 'PetCyclopedia', 'crud', 'com.ruoyi.adopt', 'adopt', 'cyclopedia', '宠物科普', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10', NULL);
INSERT INTO `gen_table` VALUES (7, 'chat', '聊天表', NULL, NULL, 'Chat', 'crud', 'com.ruoyi.adopt', 'adopt', 'chat', '聊天', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41', NULL);
INSERT INTO `gen_table` VALUES (8, 'comment', '评论表', NULL, NULL, 'Comment', 'crud', 'com.ruoyi.adopt', 'adopt', 'comment', '评论', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19', NULL);
INSERT INTO `gen_table` VALUES (9, 'wx_user', '小程序用户表', NULL, NULL, 'WxUser', 'crud', 'com.ruoyi.adopt', 'adopt', 'user', '小程序用户', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16', NULL);
INSERT INTO `gen_table` VALUES (10, 'answer_prize', '答题表', NULL, NULL, 'AnswerPrize', 'crud', 'com.ruoyi.adopt', 'adopt', 'prize', '答题', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\"}', 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', 'id', 'int(10)', 'Integer', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (2, '1', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (3, '1', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (4, '1', 'phone', '手机号', 'varchar(255)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (5, '1', 'type', '宠物类型', 'varchar(2)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'pet_type', 5, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (6, '1', 'pic_prefix', '图片前缀', 'varchar(255)', 'String', 'picPrefix', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (7, '1', 'pictures', '图片', 'varchar(1275)', 'String', 'pictures', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 7, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (8, '1', 'sex', '性别', 'varchar(2)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pet_sex', 8, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (9, '1', 'physical_condition', '健康状况', 'varchar(255)', 'String', 'physicalCondition', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'checkbox', 'health_status', 9, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (10, '1', 'age', '年龄', 'varchar(255)', 'String', 'age', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (11, '1', 'conditions', '领养条件', 'varchar(255)', 'String', 'conditions', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (12, '1', 'city', '城市', 'varchar(255)', 'String', 'city', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (13, '1', 'content', '内容', 'varchar(500)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 13, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (14, '1', 'open_id', 'openId', 'varchar(50)', 'String', 'openId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (15, '1', 'is_finish', '送养成功', 'varchar(2)', 'String', 'isFinish', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_finish', 15, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (16, '1', 'view', '浏览量', 'int(11)', 'Long', 'view', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (17, '1', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 17, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (18, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 18, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (19, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 19, 'admin', '2022-02-16 13:13:52', '', '2022-02-16 16:19:04');
INSERT INTO `gen_table_column` VALUES (20, '2', 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (21, '2', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (22, '2', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (23, '2', 'phone', '手机号', 'varchar(255)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (24, '2', 'bread', '品种', 'varchar(255)', 'String', 'bread', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (25, '2', 'type', '宠物类型', 'varchar(2)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'pet_type', 6, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (26, '2', 'pic_prefix', '图片前缀', 'varchar(255)', 'String', 'picPrefix', '0', '0', '1', '1', '1', NULL, '1', 'EQ', 'input', '', 7, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (27, '2', 'pictures', '图片', 'varchar(1275)', 'String', 'pictures', '0', '0', '1', '1', '1', NULL, '1', 'EQ', 'textarea', '', 8, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (28, '2', 'sex', '性别', 'varchar(2)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pet_sex', 9, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (29, '2', 'age', '年龄', 'varchar(255)', 'String', 'age', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (30, '2', 'city', '城市', 'varchar(255)', 'String', 'city', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (31, '2', 'address', '具体位置', 'varchar(255)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (32, '2', 'content', '描述', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'editor', '', 13, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (33, '2', 'open_id', 'openId', 'varchar(50)', 'String', 'openId', '0', '0', '1', '1', '1', NULL, '1', 'EQ', 'input', '', 14, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (34, '2', 'is_finish', '是否完成', 'varchar(2)', 'String', 'isFinish', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_finish', 15, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (35, '2', 'view', '浏览量', 'int(11)', 'Long', 'view', '0', '0', '1', '1', '1', NULL, '1', 'EQ', 'input', '', 16, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (36, '2', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '1', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 17, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (37, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 18, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (38, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 19, 'admin', '2022-02-16 14:23:52', '', '2022-02-16 14:48:27');
INSERT INTO `gen_table_column` VALUES (39, '3', 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49');
INSERT INTO `gen_table_column` VALUES (40, '3', 'user_id', '用户ID', 'varchar(50)', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49');
INSERT INTO `gen_table_column` VALUES (41, '3', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'editor', '', 3, 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49');
INSERT INTO `gen_table_column` VALUES (42, '3', 'pictures', '图片', 'varchar(1275)', 'String', 'pictures', '0', '0', '1', '1', '1', NULL, '1', 'EQ', 'textarea', '', 4, 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49');
INSERT INTO `gen_table_column` VALUES (43, '3', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 5, 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49');
INSERT INTO `gen_table_column` VALUES (44, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49');
INSERT INTO `gen_table_column` VALUES (45, '3', 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2022-02-16 14:58:25', '', '2022-02-16 15:06:49');
INSERT INTO `gen_table_column` VALUES (46, '4', 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (47, '4', 'label', '标签', 'varchar(255)', 'String', 'label', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (48, '4', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (49, '4', 'url', 'H5链接', 'varchar(255)', 'String', 'url', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (50, '4', 'bg_color', '背景色', 'varchar(255)', 'String', 'bgColor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (51, '4', 'picture', '封面图', 'varchar(1275)', 'String', 'picture', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (52, '4', 'view', '浏览量', 'int(11)', 'Long', 'view', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (53, '4', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 8, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (54, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 9, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (55, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 10, 'admin', '2022-02-16 15:21:45', '', '2022-02-16 15:23:07');
INSERT INTO `gen_table_column` VALUES (56, '5', 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09');
INSERT INTO `gen_table_column` VALUES (57, '5', 'open_id', '用户ID', 'varchar(50)', 'String', 'openId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09');
INSERT INTO `gen_table_column` VALUES (58, '5', 'credits_num', '积分', 'int(11)', 'Long', 'creditsNum', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 3, 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09');
INSERT INTO `gen_table_column` VALUES (59, '5', 'day_num', '签到天数', 'int(11)', 'Long', 'dayNum', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09');
INSERT INTO `gen_table_column` VALUES (60, '5', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 5, 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09');
INSERT INTO `gen_table_column` VALUES (61, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 6, 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09');
INSERT INTO `gen_table_column` VALUES (62, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 7, 'admin', '2022-02-16 15:31:51', '', '2022-02-16 15:33:09');
INSERT INTO `gen_table_column` VALUES (63, '6', 'id', 'id', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (64, '6', 'title', '标题', 'varchar(255)', 'String', 'title', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (65, '6', 'picture', '图片', 'varchar(255)', 'String', 'picture', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (66, '6', 'content', '内容(富文本)', 'varchar(1275)', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 4, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (67, '6', 'view', '浏览量', 'int(11)', 'Long', 'view', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (68, '6', 'type', '类型', 'varchar(2)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'cyclopedia_type', 6, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (69, '6', 'background_color', '标签背景颜色', 'varchar(255)', 'String', 'backgroundColor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (70, '6', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (71, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 9, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (72, '6', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 10, 'admin', '2022-02-16 15:42:17', '', '2022-02-16 15:45:10');
INSERT INTO `gen_table_column` VALUES (73, '7', 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (74, '7', 'from_id', '发送人id', 'varchar(50)', 'String', 'fromId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (75, '7', 'to_id', '接收人id', 'varchar(50)', 'String', 'toId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (76, '7', 'content', '消息内容', 'varchar(1275)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'editor', '', 4, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (77, '7', 'is_done', '是否已读', 'varchar(2)', 'String', 'isDone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (78, '7', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 6, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (79, '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 7, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (80, '7', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 8, 'admin', '2022-02-16 15:54:25', '', '2022-02-16 15:55:41');
INSERT INTO `gen_table_column` VALUES (81, '8', 'id', 'id', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (82, '8', 'parent_id', '父级ID', 'int(11)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (83, '8', 'grand_id', '祖级ID', 'int(11)', 'Long', 'grandId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (84, '8', 'content', '内容', 'varchar(255)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'editor', '', 4, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (85, '8', 'type', '类别', 'varchar(255)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'comment_type', 5, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (86, '8', 'from_id', '所属文章ID', 'int(11)', 'Long', 'fromId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (87, '8', 'owner_id', '所属者ID', 'varchar(50)', 'String', 'ownerId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (88, '8', 'love', '点赞', 'int(11)', 'Long', 'love', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (89, '8', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 9, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (90, '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (91, '8', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2022-02-16 16:03:51', '', '2022-02-16 16:07:19');
INSERT INTO `gen_table_column` VALUES (92, '9', 'id', 'ID', 'int(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (93, '9', 'open_id', '用户ID', 'varchar(50)', 'String', 'openId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (94, '9', 'session_key', 'session_key', 'varchar(50)', 'String', 'sessionKey', '0', '0', '1', '1', '1', NULL, '1', 'EQ', 'input', '', 3, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (95, '9', 'union_id', 'union_id', 'varchar(50)', 'String', 'unionId', '0', '0', '1', '1', '1', NULL, '1', 'EQ', 'input', '', 4, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (96, '9', 'nick_name', '用户昵称', 'varchar(50)', 'String', 'nickName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (97, '9', 'avatar_url', '头像', 'varchar(255)', 'String', 'avatarUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'imageUpload', '', 6, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (98, '9', 'city', '城市', 'varchar(255)', 'String', 'city', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (99, '9', 'country', '国家', 'varchar(16)', 'String', 'country', '0', '0', NULL, '1', '1', NULL, '1', 'LIKE', 'input', '', 8, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (100, '9', 'province', '省份', 'varchar(10)', 'String', 'province', '0', '0', NULL, '1', '1', NULL, '1', 'LIKE', 'input', '', 9, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (101, '9', 'gender', '性别', 'varchar(2)', 'String', 'gender', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'pet_sex', 10, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (102, '9', 'phone', '手机号', 'varchar(255)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (103, '9', 'email', '邮箱', 'varchar(255)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (104, '9', 'user_type', '用户类型 (wx、qq、app)', 'varchar(255)', 'String', 'userType', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'select', '', 13, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (105, '9', 'status', '状态 (0-正常 1-禁用 2-黑名单)', 'varchar(2)', 'String', 'status', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'radio', '', 14, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (106, '9', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 15, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (107, '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 16, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (108, '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 17, 'admin', '2022-02-22 13:31:57', '', '2022-02-22 13:37:16');
INSERT INTO `gen_table_column` VALUES (109, '10', 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');
INSERT INTO `gen_table_column` VALUES (110, '10', 'subject', '题目', 'varchar(1275)', 'String', 'subject', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', 2, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');
INSERT INTO `gen_table_column` VALUES (111, '10', 'options', '选项 (多个选项逗号分隔)', 'varchar(1275)', 'String', 'options', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'textarea', '', 3, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');
INSERT INTO `gen_table_column` VALUES (112, '10', 'answer', '正确答案', 'varchar(255)', 'String', 'answer', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');
INSERT INTO `gen_table_column` VALUES (113, '10', 'type', '类别', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'select', '', 5, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');
INSERT INTO `gen_table_column` VALUES (114, '10', 'is_deleted', '是否删除', 'varchar(2)', 'String', 'isDeleted', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'is_deleted', 6, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');
INSERT INTO `gen_table_column` VALUES (115, '10', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 7, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');
INSERT INTO `gen_table_column` VALUES (116, '10', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 8, 'admin', '2022-02-22 14:02:20', '', '2022-02-22 14:09:55');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017F0096D7C078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017F0096D7C078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017F0096D7C078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'LAPTOP-15Q071S31645510838785', 1645513692522, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1645510840000, -1, 5, 'PAUSED', 'CRON', 1645510838000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1645510845000, -1, 5, 'PAUSED', 'CRON', 1645510838000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1645510840000, -1, 5, 'PAUSED', 'CRON', 1645510838000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-02-16 11:32:40', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-02-16 11:32:40', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-02-16 11:32:40', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-02-16 11:32:40', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-02-16 11:32:40', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '猫咪', '1', 'pet_type', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:15:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '狗狗', '2', 'pet_type', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:15:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 1, '已免疫', '已免疫', 'health_status', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:17:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 2, '已驱虫', '已驱虫', 'health_status', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:17:53', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 3, '已绝育', '已绝育', 'health_status', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:17:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 1, '已完成', '0', 'is_finish', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:18:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 2, '进行中', '1', 'is_finish', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:18:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 1, '正常', '0', 'is_deleted', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:19:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 2, '删除', '1', 'is_deleted', NULL, 'default', 'N', '0', 'admin', '2022-02-16 13:19:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 1, '男', '1', 'pet_sex', NULL, 'default', 'N', '0', 'admin', '2022-02-16 14:15:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 2, '女', '2', 'pet_sex', NULL, 'default', 'N', '0', 'admin', '2022-02-16 14:15:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 1, '标签', '1', 'cyclopedia_type', NULL, 'default', 'N', '0', 'admin', '2022-02-16 15:43:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 2, '列表', '2', 'cyclopedia_type', NULL, 'default', 'N', '0', 'admin', '2022-02-16 15:44:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 1, '领养', 'ADOPT', 'comment_type', NULL, 'default', 'N', '0', 'admin', '2022-02-16 16:05:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 2, '寻宠', 'FIND', 'comment_type', NULL, 'default', 'N', '0', 'admin', '2022-02-16 16:05:55', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 3, '动态', 'CIRCLE', 'comment_type', NULL, 'default', 'N', '0', 'admin', '2022-02-16 16:06:05', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '宠物类型', 'pet_type', '0', 'admin', '2022-02-16 13:15:14', '', NULL, '1 猫咪 2 狗狗');
INSERT INTO `sys_dict_type` VALUES (101, '健康状况', 'health_status', '0', 'admin', '2022-02-16 13:16:56', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '是否完成', 'is_finish', '0', 'admin', '2022-02-16 13:18:19', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '是否删除', 'is_deleted', '0', 'admin', '2022-02-16 13:19:08', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '宠物性别', 'pet_sex', '0', 'admin', '2022-02-16 14:14:48', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (105, '科普类型', 'cyclopedia_type', '0', 'admin', '2022-02-16 15:43:39', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (106, '评论类别', 'comment_type', '0', 'admin', '2022-02-16 16:05:02', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-02-16 11:32:40', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 13:07:30');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 15:13:02');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2022-02-16 15:13:08');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 15:13:19');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 15:14:03');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 15:14:20');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 15:47:18');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 15:47:51');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 15:58:15');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 15:59:24');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Firefox 9', 'Windows 10', '1', '验证码错误', '2022-02-16 16:36:01');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Firefox 9', 'Windows 10', '1', '验证码错误', '2022-02-16 16:36:05');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Firefox 9', 'Windows 10', '0', '登录成功', '2022-02-16 16:36:13');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 16:38:03');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 16:38:39');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 16:39:24');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 16:42:09');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 16:48:32');
INSERT INTO `sys_logininfor` VALUES (118, 'xiaoming', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 16:48:46');
INSERT INTO `sys_logininfor` VALUES (119, 'xiaoming', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-16 16:50:02');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-02-16 16:50:07');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-16 16:50:22');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Firefox 9', 'Windows 10', '0', '退出成功', '2022-02-16 16:52:43');
INSERT INTO `sys_logininfor` VALUES (123, 'xiaoming', '127.0.0.1', '内网IP', 'Firefox 9', 'Windows 10', '0', '登录成功', '2022-02-16 16:52:55');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-17 10:00:59');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-02-18 16:04:36');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2022-02-18 16:04:56');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-18 16:05:54');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-02-21 13:36:25');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-21 13:36:31');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2022-02-21 17:08:23');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-21 17:08:32');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-21 17:43:52');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-22 13:31:49');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-22 14:51:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2063 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-02-16 11:32:40', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-02-16 11:32:40', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-02-16 11:32:40', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '1', '1', '', 'guide', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:10:06', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-02-16 11:32:40', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-02-16 11:32:40', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-02-16 11:32:40', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '1', '1', 'system:dept:list', 'tree', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:15:31', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '1', '1', 'system:post:list', 'post', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:15:35', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-02-16 11:32:40', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '1', '1', 'system:config:list', 'edit', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:15:42', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '1', '1', 'system:notice:list', 'message', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:15:47', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-02-16 11:32:40', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-02-16 11:32:40', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '1', '1', 'monitor:job:list', 'job', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:15:22', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '1', 'monitor:druid:list', 'druid', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:15:14', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-02-16 11:32:40', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-02-16 11:32:40', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-02-16 11:32:40', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-02-16 11:32:40', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '1', 'tool:swagger:list', 'swagger', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 15:16:19', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-02-16 11:32:40', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-02-16 11:32:40', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '小程序管理', 0, 1, 'pet-adopt', NULL, NULL, 1, 0, 'M', '0', '0', '', 'druid', 'admin', '2022-02-16 13:12:33', 'admin', '2022-02-22 14:01:25', '');
INSERT INTO `sys_menu` VALUES (2002, '宠物领养', 2000, 1, 'adopt', 'adopt/index', NULL, 1, 0, 'C', '0', '0', 'adopt:adopt:list', '#', 'admin', '2022-02-16 13:24:00', 'admin', '2022-02-16 15:17:06', '宠物领养菜单');
INSERT INTO `sys_menu` VALUES (2003, '宠物领养查询', 2002, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:adopt:query', '#', 'admin', '2022-02-16 13:24:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '宠物领养新增', 2002, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:adopt:add', '#', 'admin', '2022-02-16 13:24:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '宠物领养修改', 2002, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:adopt:edit', '#', 'admin', '2022-02-16 13:24:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '宠物领养删除', 2002, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:adopt:remove', '#', 'admin', '2022-02-16 13:24:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '宠物领养导出', 2002, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:adopt:export', '#', 'admin', '2022-02-16 13:24:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '寻宠管理', 2000, 1, 'find', 'find/index', NULL, 1, 0, 'C', '0', '0', 'adopt:find:list', '#', 'admin', '2022-02-16 14:27:10', 'admin', '2022-02-16 14:32:50', '寻宠菜单');
INSERT INTO `sys_menu` VALUES (2009, '寻宠查询', 2008, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:find:query', '#', 'admin', '2022-02-16 14:27:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '寻宠新增', 2008, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:find:add', '#', 'admin', '2022-02-16 14:27:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '寻宠修改', 2008, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:find:edit', '#', 'admin', '2022-02-16 14:27:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '寻宠删除', 2008, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:find:remove', '#', 'admin', '2022-02-16 14:27:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '寻宠导出', 2008, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:find:export', '#', 'admin', '2022-02-16 14:27:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '动态管理', 2000, 1, 'circle', 'circle/index', NULL, 1, 0, 'C', '0', '0', 'adopt:circle:list', '#', 'admin', '2022-02-16 15:00:42', 'admin', '2022-02-16 15:03:56', '动态菜单');
INSERT INTO `sys_menu` VALUES (2015, '动态查询', 2014, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:circle:query', '#', 'admin', '2022-02-16 15:00:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '动态新增', 2014, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:circle:add', '#', 'admin', '2022-02-16 15:00:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '动态修改', 2014, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:circle:edit', '#', 'admin', '2022-02-16 15:00:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '动态删除', 2014, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:circle:remove', '#', 'admin', '2022-02-16 15:00:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '动态导出', 2014, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:circle:export', '#', 'admin', '2022-02-16 15:00:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '文章管理', 2000, 1, 'article', 'article/index', NULL, 1, 0, 'C', '0', '0', 'adopt:article:list', '#', 'admin', '2022-02-16 15:23:42', 'admin', '2022-02-16 15:30:40', '文章菜单');
INSERT INTO `sys_menu` VALUES (2021, '文章查询', 2020, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:article:query', '#', 'admin', '2022-02-16 15:23:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '文章新增', 2020, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:article:add', '#', 'admin', '2022-02-16 15:23:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '文章修改', 2020, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:article:edit', '#', 'admin', '2022-02-16 15:23:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '文章删除', 2020, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:article:remove', '#', 'admin', '2022-02-16 15:23:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '文章导出', 2020, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:article:export', '#', 'admin', '2022-02-16 15:23:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '积分管理', 2000, 1, 'credits', 'credits/index', NULL, 1, 0, 'C', '0', '0', 'adopt:credits:list', '#', 'admin', '2022-02-16 15:34:08', 'admin', '2022-02-16 15:37:14', '积分菜单');
INSERT INTO `sys_menu` VALUES (2027, '积分查询', 2026, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:credits:query', '#', 'admin', '2022-02-16 15:34:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '积分新增', 2026, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:credits:add', '#', 'admin', '2022-02-16 15:34:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '积分修改', 2026, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:credits:edit', '#', 'admin', '2022-02-16 15:34:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '积分删除', 2026, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:credits:remove', '#', 'admin', '2022-02-16 15:34:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '积分导出', 2026, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:credits:export', '#', 'admin', '2022-02-16 15:34:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '宠物科普', 2000, 1, 'cyclopedia', 'cyclopedia/index', NULL, 1, 0, 'C', '0', '0', 'adopt:cyclopedia:list', '#', 'admin', '2022-02-16 15:45:37', 'admin', '2022-02-16 15:48:05', '宠物科普菜单');
INSERT INTO `sys_menu` VALUES (2033, '宠物科普查询', 2032, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:cyclopedia:query', '#', 'admin', '2022-02-16 15:45:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '宠物科普新增', 2032, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:cyclopedia:add', '#', 'admin', '2022-02-16 15:45:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '宠物科普修改', 2032, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:cyclopedia:edit', '#', 'admin', '2022-02-16 15:45:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '宠物科普删除', 2032, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:cyclopedia:remove', '#', 'admin', '2022-02-16 15:45:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '宠物科普导出', 2032, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:cyclopedia:export', '#', 'admin', '2022-02-16 15:45:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '聊天管理', 2000, 1, 'chat', 'chat/index', NULL, 1, 0, 'C', '0', '0', 'adopt:chat:list', '#', 'admin', '2022-02-16 15:56:28', 'admin', '2022-02-16 15:59:45', '聊天菜单');
INSERT INTO `sys_menu` VALUES (2039, '聊天查询', 2038, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:chat:query', '#', 'admin', '2022-02-16 15:56:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '聊天新增', 2038, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:chat:add', '#', 'admin', '2022-02-16 15:56:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '聊天修改', 2038, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:chat:edit', '#', 'admin', '2022-02-16 15:56:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '聊天删除', 2038, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:chat:remove', '#', 'admin', '2022-02-16 15:56:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '聊天导出', 2038, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:chat:export', '#', 'admin', '2022-02-16 15:56:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '评论管理', 2000, 1, 'comment', 'comment/index', NULL, 1, 0, 'C', '0', '0', 'adopt:comment:list', '#', 'admin', '2022-02-16 16:07:51', 'admin', '2022-02-16 16:10:14', '评论菜单');
INSERT INTO `sys_menu` VALUES (2045, '评论查询', 2044, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:comment:query', '#', 'admin', '2022-02-16 16:07:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '评论新增', 2044, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:comment:add', '#', 'admin', '2022-02-16 16:07:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '评论修改', 2044, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:comment:edit', '#', 'admin', '2022-02-16 16:07:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '评论删除', 2044, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:comment:remove', '#', 'admin', '2022-02-16 16:07:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '评论导出', 2044, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:comment:export', '#', 'admin', '2022-02-16 16:07:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '用户管理', 2000, 1, 'user', 'user/index', NULL, 1, 0, 'C', '0', '0', 'adopt:user:list', '#', 'admin', '2022-02-22 13:49:58', 'admin', '2022-02-22 14:01:34', '小程序用户菜单');
INSERT INTO `sys_menu` VALUES (2052, '小程序用户查询', 2051, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:user:query', '#', 'admin', '2022-02-22 13:49:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '小程序用户新增', 2051, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:user:add', '#', 'admin', '2022-02-22 13:49:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '小程序用户修改', 2051, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:user:edit', '#', 'admin', '2022-02-22 13:49:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '小程序用户删除', 2051, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:user:remove', '#', 'admin', '2022-02-22 13:49:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '小程序用户导出', 2051, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:user:export', '#', 'admin', '2022-02-22 13:49:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '答题管理', 2000, 1, 'prize', 'prize/index', NULL, 1, 0, 'C', '0', '0', 'adopt:prize:list', '#', 'admin', '2022-02-22 14:04:56', 'admin', '2022-02-22 14:07:35', '答题菜单');
INSERT INTO `sys_menu` VALUES (2058, '答题查询', 2057, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:prize:query', '#', 'admin', '2022-02-22 14:04:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '答题新增', 2057, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:prize:add', '#', 'admin', '2022-02-22 14:04:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '答题修改', 2057, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:prize:edit', '#', 'admin', '2022-02-22 14:04:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '答题删除', 2057, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:prize:remove', '#', 'admin', '2022-02-22 14:04:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2062, '答题导出', 2057, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'adopt:prize:export', '#', 'admin', '2022-02-22 14:04:56', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-02-16 11:32:40', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-02-16 11:32:40', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":1,\"menuName\":\"数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pet\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:12:33');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"宠物领养\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"adopt\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:13:15');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'pet_adopt', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:13:52');
INSERT INTO `sys_oper_log` VALUES (103, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"宠物类型\",\"remark\":\"1 猫咪 2 狗狗\",\"params\":{},\"dictType\":\"pet_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:15:14');
INSERT INTO `sys_oper_log` VALUES (104, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"pet_type\",\"dictLabel\":\"猫咪\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:15:34');
INSERT INTO `sys_oper_log` VALUES (105, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"pet_type\",\"dictLabel\":\"狗狗\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:15:40');
INSERT INTO `sys_oper_log` VALUES (106, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"健康状况\",\"params\":{},\"dictType\":\"health_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:16:56');
INSERT INTO `sys_oper_log` VALUES (107, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"已免疫\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"health_status\",\"dictLabel\":\"已免疫\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:17:46');
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"已驱虫\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"health_status\",\"dictLabel\":\"已驱虫\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:17:53');
INSERT INTO `sys_oper_log` VALUES (109, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"已绝育\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"health_status\",\"dictLabel\":\"已绝育\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:17:59');
INSERT INTO `sys_oper_log` VALUES (110, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"是否完成\",\"params\":{},\"dictType\":\"is_finish\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:18:19');
INSERT INTO `sys_oper_log` VALUES (111, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"is_finish\",\"dictLabel\":\"已完成\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:18:39');
INSERT INTO `sys_oper_log` VALUES (112, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"is_finish\",\"dictLabel\":\"进行中\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:18:51');
INSERT INTO `sys_oper_log` VALUES (113, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"是否删除\",\"params\":{},\"dictType\":\"is_deleted\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:19:08');
INSERT INTO `sys_oper_log` VALUES (114, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"is_deleted\",\"dictLabel\":\"正常\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:19:23');
INSERT INTO `sys_oper_log` VALUES (115, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"is_deleted\",\"dictLabel\":\"删除\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:19:30');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644988432000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644988432000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Nickname\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nickname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"昵称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644988432000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"nickname\"},{\"capJavaField\":\"Phone\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"手机号\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"cre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:23:09');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 13:23:13');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"宠物领养\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"adopt\",\"component\":\"adopt/adopt/list\",\"children\":[],\"createTime\":1644988395000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"adopt:adopt:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:34:02');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"宠物领养\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"adopt\",\"component\":\"adopt/index\",\"children\":[],\"createTime\":1644988395000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"adopt:adopt:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:34:18');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"宠物领养\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"adopt\",\"component\":\"adopt/adopt/index\",\"children\":[],\"createTime\":1644988395000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"adopt:adopt:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:43:05');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"宠物领养\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"adopt\",\"component\":\"adopt/index\",\"children\":[],\"createTime\":1644988395000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"adopt:adopt:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:43:41');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":1,\"menuName\":\"数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pet-adopt\",\"children\":[],\"createTime\":1644988353000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 13:43:55');
INSERT INTO `sys_oper_log` VALUES (123, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"宠物性别\",\"params\":{},\"dictType\":\"pet_sex\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:14:48');
INSERT INTO `sys_oper_log` VALUES (124, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"pet_sex\",\"dictLabel\":\"男\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:15:13');
INSERT INTO `sys_oper_log` VALUES (125, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"pet_sex\",\"dictLabel\":\"女\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:15:18');
INSERT INTO `sys_oper_log` VALUES (126, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:20:20');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2022-02-16 14:22:01');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"宠物领养\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"path\":\"adopt\",\"component\":\"adopt/index\",\"children\":[],\"createTime\":1644989040000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"adopt:adopt:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:22:50');
INSERT INTO `sys_oper_log` VALUES (129, '宠物领养', 5, 'com.ruoyi.adopt.controller.PetAdoptController.export()', 'POST', 1, 'admin', NULL, '/adopt/adopt/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-02-16 14:23:07');
INSERT INTO `sys_oper_log` VALUES (130, '宠物领养', 5, 'com.ruoyi.adopt.controller.PetAdoptController.export()', 'POST', 1, 'admin', NULL, '/adopt/adopt/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-02-16 14:23:13');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'pet_find', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:23:53');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644992632000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Nickname\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nickname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"昵称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"nickname\"},{\"capJavaField\":\"Phone\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"手机号\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"cr', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:26:32');
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 14:26:38');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"寻宠管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"find\",\"component\":\"find/index\",\"children\":[],\"createTime\":1644992830000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"adopt:find:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:30:21');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"寻宠管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"adopt\",\"component\":\"find/index\",\"children\":[],\"createTime\":1644992830000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"adopt:find:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:31:32');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"寻宠管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"find\",\"component\":\"find/index\",\"children\":[],\"createTime\":1644992830000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"adopt:find:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:32:50');
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"updateTime\":1644992792000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644992632000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"updateTime\":1644992792000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Nickname\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nickname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"昵称\",\"isQuery\":\"1\",\"updateTime\":1644992792000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"nickname\"},{\"capJavaField\":\"Phone\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"手机号\",\"isQuery\":\"1\",\"updateTime\":1644992', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:43:01');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 14:43:06');
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"updateTime\":1644993781000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644992632000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"updateTime\":1644993781000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Nickname\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nickname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"昵称\",\"isQuery\":\"1\",\"updateTime\":1644993781000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"nickname\"},{\"capJavaField\":\"Phone\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"手机号\",\"isQuery\":\"1\",\"updateTime\":1644993', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:45:44');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 14:45:48');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"updateTime\":1644993944000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644992632000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"updateTime\":1644993944000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Nickname\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nickname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"昵称\",\"isQuery\":\"1\",\"updateTime\":1644993944000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644992632000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"nickname\"},{\"capJavaField\":\"Phone\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"手机号\",\"isQuery\":\"1\",\"updateTime\":1644993', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:48:27');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 14:48:30');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'pet_circle', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 14:58:26');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 14:58:29');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644994705000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":40,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644994705000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":41,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"内容\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644994705000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"content\"},{\"capJavaField\":\"Pictures\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"pictures\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"图片\",\"isQuery\":\"1\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1275)\",\"crea', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:00:04');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 15:00:15');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"动态管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"circle\",\"component\":\"circle/index\",\"children\":[],\"createTime\":1644994842000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"C\",\"perms\":\"adopt:circle:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:03:56');
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"updateTime\":1644994804000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644994705000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"UserId\",\"usableColumn\":false,\"columnId\":40,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户ID\",\"isQuery\":\"1\",\"updateTime\":1644994804000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644994705000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"user_id\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":41,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"内容\",\"isQuery\":\"1\",\"updateTime\":1644994804000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644994705000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"content\"},{\"capJavaField\":\"Pictures\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"pictures\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"图片\",\"isQuery\":\"1\",\"updateTime\":16449948040', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:06:49');
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 15:06:51');
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:10:06');
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"tree\",\"orderNum\":4,\"menuName\":\"部门管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:10:48');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"post\",\"orderNum\":5,\"menuName\":\"岗位管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:11:07');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"edit\",\"orderNum\":7,\"menuName\":\"参数设置\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"config\",\"component\":\"system/config/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":106,\"menuType\":\"C\",\"perms\":\"system:config:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:11:25');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"message\",\"orderNum\":8,\"menuName\":\"通知公告\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:11:31');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"job\",\"orderNum\":2,\"menuName\":\"定时任务\",\"params\":{},\"parentId\":2,\"isCache\":\"0\",\"path\":\"job\",\"component\":\"monitor/job/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":110,\"menuType\":\"C\",\"perms\":\"monitor:job:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:15:01');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"druid\",\"orderNum\":3,\"menuName\":\"数据监控\",\"params\":{},\"parentId\":2,\"isCache\":\"0\",\"path\":\"druid\",\"component\":\"monitor/druid/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":111,\"menuType\":\"C\",\"perms\":\"monitor:druid:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:15:14');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"job\",\"orderNum\":2,\"menuName\":\"定时任务\",\"params\":{},\"parentId\":2,\"isCache\":\"0\",\"path\":\"job\",\"component\":\"monitor/job/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":110,\"menuType\":\"C\",\"perms\":\"monitor:job:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:15:22');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"tree\",\"orderNum\":4,\"menuName\":\"部门管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:15:31');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"post\",\"orderNum\":5,\"menuName\":\"岗位管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:15:35');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"edit\",\"orderNum\":7,\"menuName\":\"参数设置\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"config\",\"component\":\"system/config/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":106,\"menuType\":\"C\",\"perms\":\"system:config:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:15:42');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"message\",\"orderNum\":8,\"menuName\":\"通知公告\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:15:47');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"swagger\",\"orderNum\":3,\"menuName\":\"系统接口\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"path\":\"swagger\",\"component\":\"tool/swagger/index\",\"children\":[],\"createTime\":1644982360000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":116,\"menuType\":\"C\",\"perms\":\"tool:swagger:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:16:19');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2001', '127.0.0.1', '内网IP', '{menuId=2001}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:16:56');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"宠物领养\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"adopt\",\"component\":\"adopt/index\",\"children\":[],\"createTime\":1644989040000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"adopt:adopt:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:17:06');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'article', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:21:45');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":46,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644996105000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Label\",\"usableColumn\":false,\"columnId\":47,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"label\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标签\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644996105000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"label\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":48,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644996105000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Url\",\"usableColumn\":false,\"columnId\":49,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"url\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"H5链接\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:23:07');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 15:23:10');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 15:23:23');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"文章\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"article\",\"component\":\"article/index\",\"children\":[],\"createTime\":1644996222000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2020,\"menuType\":\"C\",\"perms\":\"adopt:article:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:27:00');
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"文章管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"article\",\"component\":\"article/index\",\"children\":[],\"createTime\":1644996222000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2020,\"menuType\":\"C\",\"perms\":\"adopt:article:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:30:40');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'credits', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:31:51');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":56,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644996711000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"OpenId\",\"usableColumn\":false,\"columnId\":57,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"openId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644996711000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"open_id\"},{\"capJavaField\":\"CreditsNum\",\"usableColumn\":false,\"columnId\":58,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"creditsNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"积分\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644996711000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"credits_num\"},{\"capJavaField\":\"DayNum\",\"usableColumn\":false,\"columnId\":59,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dayNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":false,\"columnComment\":\"签到天数\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"c', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:33:09');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 15:33:41');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"积分管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"credits\",\"component\":\"credits/index\",\"children\":[],\"createTime\":1644996848000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"adopt:credits:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:37:14');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'pet_cyclopedia', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:42:17');
INSERT INTO `sys_oper_log` VALUES (176, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"科普类型\",\"params\":{},\"dictType\":\"cyclopedia_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:43:39');
INSERT INTO `sys_oper_log` VALUES (177, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"cyclopedia_type\",\"dictLabel\":\"标签\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:43:59');
INSERT INTO `sys_oper_log` VALUES (178, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"cyclopedia_type\",\"dictLabel\":\"列表\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:44:06');
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644997337000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":64,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644997337000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Picture\",\"usableColumn\":false,\"columnId\":65,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"picture\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"图片\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644997337000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"picture\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":66,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"内容(富文本)\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1275)\",\"createBy\":\"admin\",\"isPk\":\"0\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:44:51');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":63,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"updateTime\":1644997490000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644997337000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":64,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"updateTime\":1644997490000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644997337000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Picture\",\"usableColumn\":false,\"columnId\":65,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"picture\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"图片\",\"isQuery\":\"1\",\"updateTime\":1644997490000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644997337000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"picture\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":66,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"内容(富文本)\",\"isQuery\":\"1\",\"updateTime\":1644997490000,\"sort\":4,\"list\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:45:10');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 15:45:12');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"宠物科普\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"cyclopedia\",\"component\":\"cyclopedia/index\",\"children\":[],\"createTime\":1644997537000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2032,\"menuType\":\"C\",\"perms\":\"adopt:cyclopedia:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:48:05');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'chat', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:54:25');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":73,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644998065000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"FromId\",\"usableColumn\":false,\"columnId\":74,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fromId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"发送人id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644998065000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"from_id\"},{\"capJavaField\":\"ToId\",\"usableColumn\":false,\"columnId\":75,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"toId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"接收人id\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644998065000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"to_id\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":76,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"消息内容\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(1275)\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:55:41');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 15:55:45');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"聊天管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"chat\",\"component\":\"chat/index\",\"children\":[],\"createTime\":1644998188000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2038,\"menuType\":\"C\",\"perms\":\"adopt:chat:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 15:59:45');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'comment', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:03:51');
INSERT INTO `sys_oper_log` VALUES (188, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"评论类别\",\"params\":{},\"dictType\":\"comment_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:05:02');
INSERT INTO `sys_oper_log` VALUES (189, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"ADOPT\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"comment_type\",\"dictLabel\":\"领养\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:05:44');
INSERT INTO `sys_oper_log` VALUES (190, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"FIND\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"comment_type\",\"dictLabel\":\"寻宠\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:05:55');
INSERT INTO `sys_oper_log` VALUES (191, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"CIRCLE\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"comment_type\",\"dictLabel\":\"动态\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:06:05');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":81,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644998631000,\"tableId\":8,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ParentId\",\"usableColumn\":true,\"columnId\":82,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":true,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"parentId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"父级ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644998631000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"parent_id\"},{\"capJavaField\":\"GrandId\",\"usableColumn\":false,\"columnId\":83,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"grandId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"祖级ID\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644998631000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"grand_id\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":84,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"内容\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"create', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:07:19');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 16:07:23');
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"评论管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"comment\",\"component\":\"comment/index\",\"children\":[],\"createTime\":1644998871000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2044,\"menuType\":\"C\",\"perms\":\"adopt:comment:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:10:14');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"updateTime\":1644988989000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1644988432000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Title\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"标题\",\"isQuery\":\"1\",\"updateTime\":1644988989000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644988432000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"title\"},{\"capJavaField\":\"Nickname\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"nickname\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"昵称\",\"isQuery\":\"1\",\"updateTime\":1644988989000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1644988432000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"nickname\"},{\"capJavaField\":\"Phone\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"phone\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"手机号\",\"isQuery\":\"1\",\"updateTime\":16449889', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:19:05');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 16:19:10');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-16 16:22:35');
INSERT INTO `sys_oper_log` VALUES (198, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/02/16/acd52e1d-6e11-4b81-a008-9ddf473d3a8a.jpeg\",\"code\":200}', 0, NULL, '2022-02-16 16:43:29');
INSERT INTO `sys_oper_log` VALUES (199, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/02/16/49601a68-3f8d-47e9-94c8-f93a6f711dd6.jpeg\",\"code\":200}', 0, NULL, '2022-02-16 16:43:42');
INSERT INTO `sys_oper_log` VALUES (200, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/02/16/89fa449b-db6b-45bf-bdf3-bfaac9d5c86b.jpeg\",\"code\":200}', 0, NULL, '2022-02-16 16:43:52');
INSERT INTO `sys_oper_log` VALUES (201, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15900000000\",\"admin\":true,\"loginDate\":1645000719000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"lian_pet_life@163.com\",\"nickName\":\"admin\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1644982360000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:44:36');
INSERT INTO `sys_oper_log` VALUES (202, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', 'admin123 yan8226684...', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:44:56');
INSERT INTO `sys_oper_log` VALUES (203, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1644982360000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"xiaoming@qq.com\",\"nickName\":\"小铭\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1644982360000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:46:06');
INSERT INTO `sys_oper_log` VALUES (204, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"17600000000\",\"admin\":false,\"password\":\"123456\",\"postIds\":[2],\"email\":\"xiaoming@qq.com\",\"nickName\":\"小铭\",\"sex\":\"0\",\"params\":{},\"userName\":\"xiaoming\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"新增用户\'xiaoming\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2022-02-16 16:47:51');
INSERT INTO `sys_oper_log` VALUES (205, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"17600000000\",\"admin\":false,\"password\":\"$2a$10$8Gbw.TZBUdjUGs83ez/wJ.XHPATYACDiXf0WvUpEsUMzKhl0tdYoK\",\"postIds\":[2],\"email\":\"xm@qq.com\",\"nickName\":\"小铭\",\"sex\":\"0\",\"params\":{},\"userName\":\"xiaoming\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:47:58');
INSERT INTO `sys_oper_log` VALUES (206, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'xiaoming', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/02/16/9471f968-87fc-4fe4-bb22-82e1c7e5b636.jpeg\",\"code\":200}', 0, NULL, '2022-02-16 16:49:27');
INSERT INTO `sys_oper_log` VALUES (207, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1644982360000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[1,105,108,500,501,2000,2002,2008,2014,2020,2026,2032,2038,2044,2,3,1026,1030,1040,1042,1043,1045,2003,2007,2009,2013,2015,2019,2021,2025,2027,2031,2033,2037,2039,2043,2045,2049,112,113,114],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-16 16:52:31');
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'wx_user', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 13:31:57');
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":92,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1645507917000,\"tableId\":9,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"OpenId\",\"usableColumn\":false,\"columnId\":93,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"openId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户ID\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1645507917000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"open_id\"},{\"capJavaField\":\"SessionKey\",\"usableColumn\":false,\"columnId\":94,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"sessionKey\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"session_key\",\"isQuery\":\"1\",\"sort\":3,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1645507917000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"session_key\"},{\"capJavaField\":\"UnionId\",\"usableColumn\":false,\"columnId\":95,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"unionId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"union_id\",\"isQuery\":\"1\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"cr', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 13:37:16');
INSERT INTO `sys_oper_log` VALUES (210, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-22 13:37:30');
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"orderNum\":1,\"menuName\":\"小程序用户\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"user/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"adopt:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 13:46:58');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2050', '127.0.0.1', '内网IP', '{menuId=2050}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 13:49:30');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"小程序用户\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"user/index\",\"children\":[],\"createTime\":1645508998000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2051,\"menuType\":\"C\",\"perms\":\"adopt:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 13:50:29');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":1,\"menuName\":\"小程序管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pet-adopt\",\"children\":[],\"createTime\":1644988353000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 14:01:25');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"user/index\",\"children\":[],\"createTime\":1645508998000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2051,\"menuType\":\"C\",\"perms\":\"adopt:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 14:01:34');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'answer_prize', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 14:02:20');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":109,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1645509740000,\"tableId\":10,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Subject\",\"usableColumn\":false,\"columnId\":110,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subject\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"题目\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(1275)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1645509740000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"subject\"},{\"capJavaField\":\"Options\",\"usableColumn\":false,\"columnId\":111,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"options\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"选项 (多个选项逗号分隔)\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(1275)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1645509740000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"options\"},{\"capJavaField\":\"Answer\",\"usableColumn\":false,\"columnId\":112,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"answer\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"正确答案\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 14:04:33');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-22 14:04:39');
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":1,\"menuName\":\"答题管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"prize\",\"component\":\"prize/index\",\"children\":[],\"createTime\":1645509896000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2057,\"menuType\":\"C\",\"perms\":\"adopt:prize:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 14:07:35');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":109,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"ID\",\"updateTime\":1645509873000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1645509740000,\"tableId\":10,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Subject\",\"usableColumn\":false,\"columnId\":110,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subject\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"题目\",\"isQuery\":\"1\",\"updateTime\":1645509873000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(1275)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1645509740000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"subject\"},{\"capJavaField\":\"Options\",\"usableColumn\":false,\"columnId\":111,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"options\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"选项 (多个选项逗号分隔)\",\"isQuery\":\"1\",\"updateTime\":1645509873000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(1275)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1645509740000,\"isEdit\":\"1\",\"tableId\":10,\"pk\":false,\"columnName\":\"options\"},{\"capJavaField\":\"Answer\",\"usableColumn\":false,\"columnId\":112,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"answer\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"正确答案\",\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-02-22 14:09:55');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-02-22 14:10:06');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-02-16 11:32:40', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-02-16 11:32:40', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-02-16 11:32:40', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 16:52:31', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (2, 2009);
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2031);
INSERT INTO `sys_role_menu` VALUES (2, 2032);
INSERT INTO `sys_role_menu` VALUES (2, 2033);
INSERT INTO `sys_role_menu` VALUES (2, 2037);
INSERT INTO `sys_role_menu` VALUES (2, 2038);
INSERT INTO `sys_role_menu` VALUES (2, 2039);
INSERT INTO `sys_role_menu` VALUES (2, 2043);
INSERT INTO `sys_role_menu` VALUES (2, 2044);
INSERT INTO `sys_role_menu` VALUES (2, 2045);
INSERT INTO `sys_role_menu` VALUES (2, 2049);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'admin', '00', 'lian_pet_life@163.com', '15900000000', '0', '/profile/avatar/2022/02/16/89fa449b-db6b-45bf-bdf3-bfaac9d5c86b.jpeg', '$2a$10$a/K2PXMuiiyr.LKJ19cYiOK9ifNXdiyn.QsLDBIgTRjzOjLeqwYse', '0', '0', '127.0.0.1', '2022-02-22 14:51:30', 'admin', '2022-02-16 11:32:40', '', '2022-02-22 14:51:30', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '小铭', '00', 'xiaoming@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-02-16 11:32:40', 'admin', '2022-02-16 11:32:40', 'admin', '2022-02-16 16:46:06', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'xiaoming', '小铭', '00', 'xm@qq.com', '17600000000', '0', '/profile/avatar/2022/02/16/9471f968-87fc-4fe4-bb22-82e1c7e5b636.jpeg', '$2a$10$8Gbw.TZBUdjUGs83ez/wJ.XHPATYACDiXf0WvUpEsUMzKhl0tdYoK', '0', '0', '127.0.0.1', '2022-02-16 16:52:55', 'admin', '2022-02-16 16:47:58', '', '2022-02-16 16:52:55', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);

SET FOREIGN_KEY_CHECKS = 1;
