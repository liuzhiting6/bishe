/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : bishe

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 20/04/2020 17:48:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'sys_keti', '待选课题', 'SysKeti', 'crud', 'com.ruoyi.keti', 'keti', 'keti', '待选课题', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-17 11:16:58', '', '2020-04-17 11:19:06', '');
INSERT INTO `gen_table` VALUES (5, 'sys_teacher', '教师信息', 'SysTeacher', 'crud', 'com.ruoyi.teacher', 'teacher', 'teacher', '教师', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-17 12:34:04', '', '2020-04-17 12:36:59', 'teacher');
INSERT INTO `gen_table` VALUES (6, 'sys_student', '学生信息', 'SysStudent', 'crud', 'com.ruoyi.student', 'student', 'student', '学生信息', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-04-20 10:03:01', '', '2020-04-20 10:19:02', '');

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (19, '4', 'id', '主键id', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (20, '4', 'title', '课题名称', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (21, '4', 'state', '论文状态', 'char(255)', 'String', 'state', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'select', 'lunwen_xuanze', 3, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (22, '4', 'renwushu_name', '任务书名称', 'varchar(255)', 'String', 'renwushuName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (23, '4', 'renwushu_url', '任务书文件地址', 'varchar(255)', 'String', 'renwushuUrl', '0', '0', NULL, NULL, NULL, NULL, '1', 'EQ', 'input', '', 5, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (24, '4', 'student_name', '学生姓名', 'varchar(255)', 'String', 'studentName', '0', '0', NULL, NULL, NULL, '1', NULL, 'LIKE', 'input', '', 6, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (25, '4', 'student_id', '学生id', 'bigint(20)', 'Long', 'studentId', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (26, '4', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2020-04-17 11:16:58', NULL, '2020-04-17 11:19:06');
INSERT INTO `gen_table_column` VALUES (27, '5', 'id', '主键id', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (28, '5', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (29, '5', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 3, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (30, '5', 'gonghao', '工号', 'varchar(255)', 'String', 'gonghao', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (31, '5', 'zhiwei', '职位', 'varchar(255)', 'String', 'zhiwei', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'checkbox', '', 5, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (32, '5', 'phone', '联系方式', 'varchar(255)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (33, '5', 'fabu_keti_state', '是否发布课题', 'char(1)', 'String', 'fabuKetiState', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'select', 'fabu_keti', 7, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (34, '5', 'lunwen_shenhe_state', '是否完成论文审核', 'char(1)', 'String', 'lunwenShenheState', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'select', 'lunwen_shenhe', 8, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (35, '5', 'dabian_gongzuo_state', '是否完成答辩工作', 'char(1)', 'String', 'dabianGongzuoState', '0', '0', NULL, NULL, NULL, '1', '1', 'EQ', 'select', 'dabian_gongzuo', 9, 'admin', '2020-04-17 12:34:04', NULL, '2020-04-17 12:36:59');
INSERT INTO `gen_table_column` VALUES (36, '6', 'id', '主键id', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (37, '6', 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (38, '6', 'xuehao', '学号', 'varchar(255)', 'String', 'xuehao', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (39, '6', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 4, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (40, '6', 'banji', '专业班级', 'varchar(255)', 'String', 'banji', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'zhuanye_banji', 5, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (41, '6', 'phone', '联系方式', 'varchar(255)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (42, '6', 'xuanti_state', '是否选题', 'char(1)', 'String', 'xuantiState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'student_xuanti', 7, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (43, '6', 'lunwen_state', '论文状态', 'char(1)', 'String', 'lunwenState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'lunwen_state', 8, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (44, '6', 'dabian_state', '答辩状态', 'char(1)', 'String', 'dabianState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'dabian_state', 9, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (45, '6', 'keti_id', '课题id', 'bigint(20)', 'Long', 'ketiId', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (46, '6', 'keti_name', '课题名称', 'varchar(255)', 'String', 'ketiName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 11, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (47, '6', 'lunwen_name', '论文名称', 'varchar(255)', 'String', 'lunwenName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');
INSERT INTO `gen_table_column` VALUES (48, '6', 'lunwen_url', '论文文件地址', 'varchar(255)', 'String', 'lunwenUrl', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2020-04-20 10:03:01', NULL, '2020-04-20 10:19:02');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'liuzhiting1587375588081', 1587376131449, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1587375590000, -1, 5, 'PAUSED', 'CRON', 1587375588000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1587375600000, -1, 5, 'PAUSED', 'CRON', 1587375588000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1587375600000, -1, 5, 'PAUSED', 'CRON', 1587375588000, 0, NULL, 2, '');

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-20 16:43:30', '是否开启注册用户功能');
INSERT INTO `sys_config` VALUES (5, '网站名称', 'sys.site.name', '高校毕业设计管理系统', 'Y', 'admin', '2020-04-17 09:35:26', '', NULL, '网站的名称');

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (30, 1, '是', '1', 'fabu_keti', NULL, 'success', 'Y', '0', 'admin', '2020-04-17 10:33:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 2, '否', '2', 'fabu_keti', NULL, 'warning', 'Y', '0', 'admin', '2020-04-17 10:33:39', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 1, '是', '1', 'lunwen_shenhe', NULL, 'success', 'Y', '0', 'admin', '2020-04-17 10:34:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 2, '否', '2', 'lunwen_shenhe', NULL, 'warning', 'Y', '0', 'admin', '2020-04-17 10:34:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (34, 1, '是', '1', 'dabian_gongzuo', NULL, 'success', 'Y', '0', 'admin', '2020-04-17 10:35:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 2, '否', '2', 'dabian_gongzuo', NULL, 'warning', 'Y', '0', 'admin', '2020-04-17 10:35:23', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 1, '是', '1', 'student_xuanti', NULL, 'success', 'Y', '0', 'admin', '2020-04-17 10:36:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 2, '否', '2', 'student_xuanti', NULL, 'warning', 'Y', '0', 'admin', '2020-04-17 10:36:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 1, '未上传', '1', 'lunwen_state', NULL, 'warning', 'Y', '0', 'admin', '2020-04-17 10:36:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 2, '未确认', '2', 'lunwen_state', NULL, 'info', 'Y', '0', 'admin', '2020-04-17 10:37:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (40, 3, '已确认', '3', 'lunwen_state', NULL, 'success', 'Y', '0', 'admin', '2020-04-17 10:37:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (41, 1, '无资格', '1', 'dabian_state', NULL, 'warning', 'Y', '0', 'admin', '2020-04-17 10:37:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (42, 2, '未通过', '2', 'dabian_state', NULL, 'danger', 'Y', '0', 'admin', '2020-04-17 10:38:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (43, 3, '已通过', '3', 'dabian_state', NULL, 'success', 'Y', '0', 'admin', '2020-04-17 10:38:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (44, 1, '已选择', '1', 'lunwen_xuanze', NULL, 'warning', 'Y', '0', 'admin', '2020-04-17 10:53:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (45, 2, '未选择', '2', 'lunwen_xuanze', NULL, 'success', 'Y', '0', 'admin', '2020-04-17 10:53:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (46, 1, '计算机一班', '1', 'zhuanye_banji', NULL, 'primary', 'Y', '0', 'admin', '2020-04-20 10:03:53', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (47, 1, '计算机二班', '2', 'zhuanye_banji', NULL, 'success', 'Y', '0', 'admin', '2020-04-20 10:04:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (48, 3, '计算机三班', '3', 'zhuanye_banji', NULL, 'warning', 'Y', '0', 'admin', '2020-04-20 10:04:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (49, 4, '计算机四班', '4', 'zhuanye_banji', NULL, 'danger', 'Y', '0', 'admin', '2020-04-20 10:04:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (50, 4, '有资格', '4', 'dabian_state', NULL, 'info', 'Y', '0', '111111', '2020-04-20 15:23:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (51, 5, '未审核', '5', 'dabian_state', NULL, 'success', 'Y', '0', 'admin', '2020-04-20 16:05:14', '', NULL, NULL);

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '是否发布课题', 'fabu_keti', '0', 'admin', '2020-04-17 10:33:16', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (12, '是否完成论文审核', 'lunwen_shenhe', '0', 'admin', '2020-04-17 10:34:02', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (13, '是否完成答辩工作', 'dabian_gongzuo', '0', 'admin', '2020-04-17 10:34:41', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (14, '是否选题', 'student_xuanti', '0', 'admin', '2020-04-17 10:35:52', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (15, '论文状态', 'lunwen_state', '0', 'admin', '2020-04-17 10:36:43', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (16, '答辩状态', 'dabian_state', '0', 'admin', '2020-04-17 10:37:41', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (17, '论文是否被选择', 'lunwen_xuanze', '0', 'admin', '2020-04-17 10:52:46', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (18, '专业班级', 'zhuanye_banji', '0', 'admin', '2020-04-20 10:03:33', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_drug
-- ----------------------------
DROP TABLE IF EXISTS `sys_drug`;
CREATE TABLE `sys_drug`  (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '药品编号',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '药品名称',
  `guige` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单价',
  `jingbanren` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经办人',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '药品分类(0 常规药品  1 特殊药品)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_keti
-- ----------------------------
DROP TABLE IF EXISTS `sys_keti`;
CREATE TABLE `sys_keti`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题名称',
  `state` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2' COMMENT '论文状态',
  `renwushu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务书名称',
  `renwushu_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务书文件地址',
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `student_id` bigint(20) NULL DEFAULT NULL COMMENT '学生id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `caozuoren` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chuangjiantime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '待选课题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_keti
-- ----------------------------
INSERT INTO `sys_keti` VALUES (12, '课题1', '1', '任务书1.doc', 'D:/bishe/upload/任务书1.doc', '李同学', 124, NULL, '张老师', '2020年04月20日17时42分');
INSERT INTO `sys_keti` VALUES (13, '课题2', '2', '任务书2.doc', 'D:/bishe/upload/任务书2.doc', NULL, NULL, NULL, '张老师', '2020年04月20日17时42分');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-09 17:49:21');
INSERT INTO `sys_logininfor` VALUES (7, 'lisi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-09 17:49:25');
INSERT INTO `sys_logininfor` VALUES (87, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 14:13:58');
INSERT INTO `sys_logininfor` VALUES (88, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:13:59');
INSERT INTO `sys_logininfor` VALUES (89, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 14:14:27');
INSERT INTO `sys_logininfor` VALUES (90, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:14:32');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:22:39');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:23:57');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 14:28:34');
INSERT INTO `sys_logininfor` VALUES (94, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:28:38');
INSERT INTO `sys_logininfor` VALUES (95, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:33:20');
INSERT INTO `sys_logininfor` VALUES (96, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:38:24');
INSERT INTO `sys_logininfor` VALUES (97, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:47:09');
INSERT INTO `sys_logininfor` VALUES (98, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 14:48:15');
INSERT INTO `sys_logininfor` VALUES (99, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 15:03:28');
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 15:03:29');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 15:05:57');
INSERT INTO `sys_logininfor` VALUES (102, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 15:06:00');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 15:27:44');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 15:33:20');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 15:48:38');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 15:50:50');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:02:26');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:22:15');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:37:09');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:44:04');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 16:48:48');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:48:51');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 16:53:43');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:53:51');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 16:54:56');
INSERT INTO `sys_logininfor` VALUES (116, '000001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:55:42');
INSERT INTO `sys_logininfor` VALUES (117, '000001', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 16:58:37');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:58:38');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 16:59:41');
INSERT INTO `sys_logininfor` VALUES (120, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 16:59:47');
INSERT INTO `sys_logininfor` VALUES (121, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:00:50');
INSERT INTO `sys_logininfor` VALUES (122, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:00:57');
INSERT INTO `sys_logininfor` VALUES (123, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:05:21');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:05:22');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:08:05');
INSERT INTO `sys_logininfor` VALUES (126, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:08:09');
INSERT INTO `sys_logininfor` VALUES (127, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:10:28');
INSERT INTO `sys_logininfor` VALUES (128, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:11:08');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:11:10');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:14:09');
INSERT INTO `sys_logininfor` VALUES (131, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:14:12');
INSERT INTO `sys_logininfor` VALUES (132, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:16:48');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:16:49');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:17:16');
INSERT INTO `sys_logininfor` VALUES (135, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:17:20');
INSERT INTO `sys_logininfor` VALUES (136, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:17:32');
INSERT INTO `sys_logininfor` VALUES (137, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:17:35');
INSERT INTO `sys_logininfor` VALUES (138, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:20:32');
INSERT INTO `sys_logininfor` VALUES (139, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:22:45');
INSERT INTO `sys_logininfor` VALUES (140, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:23:16');
INSERT INTO `sys_logininfor` VALUES (141, '333333', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-04-20 17:23:20');
INSERT INTO `sys_logininfor` VALUES (142, '333333', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:23:23');
INSERT INTO `sys_logininfor` VALUES (143, '333333', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:24:00');
INSERT INTO `sys_logininfor` VALUES (144, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:24:06');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:25:51');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:28:22');
INSERT INTO `sys_logininfor` VALUES (147, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:28:27');
INSERT INTO `sys_logininfor` VALUES (148, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:30:59');
INSERT INTO `sys_logininfor` VALUES (149, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:33:00');
INSERT INTO `sys_logininfor` VALUES (150, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:33:11');
INSERT INTO `sys_logininfor` VALUES (151, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:33:44');
INSERT INTO `sys_logininfor` VALUES (152, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:33:48');
INSERT INTO `sys_logininfor` VALUES (153, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:34:26');
INSERT INTO `sys_logininfor` VALUES (154, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:34:29');
INSERT INTO `sys_logininfor` VALUES (155, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:34:54');
INSERT INTO `sys_logininfor` VALUES (156, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:34:56');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:39:52');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:40:14');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:40:57');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:42:07');
INSERT INTO `sys_logininfor` VALUES (161, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:42:13');
INSERT INTO `sys_logininfor` VALUES (162, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:42:51');
INSERT INTO `sys_logininfor` VALUES (163, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:42:59');
INSERT INTO `sys_logininfor` VALUES (164, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:43:28');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:43:30');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:43:46');
INSERT INTO `sys_logininfor` VALUES (167, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:43:50');
INSERT INTO `sys_logininfor` VALUES (168, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:44:13');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:44:15');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:44:24');
INSERT INTO `sys_logininfor` VALUES (171, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:44:27');
INSERT INTO `sys_logininfor` VALUES (172, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:44:44');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:44:45');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:44:55');
INSERT INTO `sys_logininfor` VALUES (175, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:44:58');
INSERT INTO `sys_logininfor` VALUES (176, '222222', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:45:06');
INSERT INTO `sys_logininfor` VALUES (177, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-04-20 17:45:10');
INSERT INTO `sys_logininfor` VALUES (178, '111111', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-04-20 17:46:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1093 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', 'menuItem', 'M', '1', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-20 16:48:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', 'menuItem', 'M', '1', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-20 16:47:56', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', 'menuItem', 'C', '1', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-17 09:49:47', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '职位管理', 1, 5, '/system/post', 'menuItem', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-17 10:18:17', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1062, '教师管理', 0, 4, '#', 'menuItem', 'M', '0', NULL, 'fa fa-user-plus', 'admin', '2020-04-17 10:23:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1063, '学生管理', 0, 5, '#', 'menuItem', 'M', '0', NULL, 'fa fa-user', 'admin', '2020-04-17 10:24:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1064, '待选课题', 0, 5, '#', 'menuItem', 'M', '0', NULL, 'fa fa-circle', 'admin', '2020-04-17 10:27:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1065, '学生列表', 1063, 1, '/student/student', 'menuItem', 'C', '0', 'student:student:view', '#', 'admin', '2020-04-17 10:28:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '教师列表', 1062, 1, '/teacher/teacher', 'menuItem', 'C', '0', 'teacher:teacher:view', '#', 'admin', '2020-04-17 10:30:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '查看', 1066, 1, '#', 'menuItem', 'F', '0', 'teacher:teacher:list', '#', 'admin', '2020-04-17 10:45:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '编辑', 1066, 2, '#', 'menuItem', 'F', '0', 'teacher:teacher:edit', '#', 'admin', '2020-04-17 10:45:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1069, '增加', 1066, 4, '#', 'menuItem', 'F', '0', 'teacher:teacher:add', '#', 'admin', '2020-04-17 10:45:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '删除', 1066, 4, '#', 'menuItem', 'F', '0', 'teacher:teacher:remove', '#', 'admin', '2020-04-17 10:45:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1071, '查看', 1065, 1, '#', 'menuItem', 'F', '0', 'student:student:list', '#', 'admin', '2020-04-17 10:47:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1072, '编辑', 1065, 1, '#', 'menuItem', 'F', '0', 'student:student:edit', '#', 'admin', '2020-04-17 10:47:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '增加', 1065, 1, '#', 'menuItem', 'F', '0', 'student:student:add', '#', 'admin', '2020-04-17 10:47:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1074, '删除', 1065, 1, '#', 'menuItem', 'F', '0', 'student:student:remove', '#', 'admin', '2020-04-17 10:47:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1075, '待选课题列表', 1064, 1, '/keti/keti', 'menuItem', 'C', '0', 'keti:keti:view', '#', 'admin', '2020-04-17 10:49:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '查看', 1075, 1, '#', 'menuItem', 'F', '0', 'keti:keti:list', '#', 'admin', '2020-04-17 10:49:16', 'litongxue', '2020-04-20 10:17:16', '');
INSERT INTO `sys_menu` VALUES (1077, '编辑', 1075, 1, '#', 'menuItem', 'F', '0', 'keti:keti:edit', '#', 'admin', '2020-04-17 10:49:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1078, '增加', 1075, 1, '#', 'menuItem', 'F', '0', 'keti:keti:add', '#', 'admin', '2020-04-17 10:49:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '删除', 1075, 1, '#', 'menuItem', 'F', '0', 'keti:keti:remove', '#', 'admin', '2020-04-17 10:49:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1080, '未选题学生名单', 1063, 1, '/student/student/weixuanti', 'menuItem', 'C', '0', 'weixuanti:weixuanti:view', '#', 'admin', '2020-04-17 11:11:21', 'admin', '2020-04-20 15:37:03', '');
INSERT INTO `sys_menu` VALUES (1081, '未确认论文名单', 1063, 1, '/student/student/weiqueren', 'menuItem', 'C', '0', 'student:student:weiqueren', '#', 'admin', '2020-04-17 11:11:59', 'admin', '2020-04-20 15:37:40', '');
INSERT INTO `sys_menu` VALUES (1082, '无资格答辩学生名单', 1063, 1, '/student/student/wuzige', 'menuItem', 'C', '0', 'student:student:wuzige', '#', 'admin', '2020-04-17 11:12:49', 'admin', '2020-04-20 15:38:59', '');
INSERT INTO `sys_menu` VALUES (1083, '未通过答辩的学生名单', 1063, 1, '/student/student/weitongguo', 'menuItem', 'C', '0', 'student:student:weitongguo', '#', 'admin', '2020-04-17 11:13:40', 'admin', '2020-04-20 15:52:21', '');
INSERT INTO `sys_menu` VALUES (1084, '上传', 1075, 1, '#', 'menuItem', 'F', '0', 'keti:keti:upload', '#', 'admin', '2020-04-17 11:23:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1085, '下载任务书', 1075, 1, '#', 'menuItem', 'F', '0', 'keti:keti:down', '#', 'admin', '2020-04-17 11:23:31', 'admin', '2020-04-17 11:34:58', '');
INSERT INTO `sys_menu` VALUES (1086, '选择该课题', 1075, 1, '#', 'menuItem', 'F', '0', 'keti:keti:xuanze', '#', 'admin', '2020-04-17 11:35:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1088, '上传论文', 1065, 6, '#', 'menuItem', 'F', '0', 'student:student:shangchuan', '#', 'admin', '2020-04-20 13:50:13', 'admin', '2020-04-20 17:11:22', '');
INSERT INTO `sys_menu` VALUES (1090, '审核', 1065, 1, '#', 'menuItem', 'F', '0', 'student:student:shenhe', '#', 'admin', '2020-04-20 15:04:06', 'admin', '2020-04-20 17:11:47', '');
INSERT INTO `sys_menu` VALUES (1091, '修改论文状态', 1065, 1, '#', 'menuItem', 'F', '0', 'student:student:updateLunwen', '#', 'admin', '2020-04-20 15:05:01', 'admin', '2020-04-20 17:14:01', '');
INSERT INTO `sys_menu` VALUES (1092, '查看论文', 1065, 1, '#', 'menuItem', 'F', '0', 'student:student:chakan', '#', 'admin', '2020-04-20 15:05:26', 'admin', '2020-04-20 17:13:46', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (10, '6666', '1', '<p><img src=\"http://localhost/profile/upload/2020/04/09/1f76e915539c8bbc061e9f3f9caaf73f.jpg\" data-filename=\"/profile/upload/2020/04/09/1f76e915539c8bbc061e9f3f9caaf73f.jpg\" style=\"width: 544px;\"><br></p>', '0', 'admin', '2020-04-09 17:40:44', '', NULL, NULL);

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
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 199 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'POST', 1, 'admin', '研发部门', '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:46:17');
INSERT INTO `sys_oper_log` VALUES (2, '字典类型', 9, 'com.ruoyi.web.controller.system.SysDictTypeController.clearCache()', 'GET', 1, 'admin', '研发部门', '/system/dict/clearCache', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:46:29');
INSERT INTO `sys_oper_log` VALUES (3, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"02c80a18-35cd-4722-9fea-82bb20c0aa0e\" ]\r\n}', '{\r\n  \"msg\" : \"当前登陆用户无法强退\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-04-09 17:47:16');
INSERT INTO `sys_oper_log` VALUES (4, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"27691186-1cf7-4080-9d89-d92da46e0c82\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:48:13');
INSERT INTO `sys_oper_log` VALUES (5, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:49:19');
INSERT INTO `sys_oper_log` VALUES (6, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'POST', 1, 'admin', '研发部门', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"101\" ],\r\n  \"roleIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:50:04');
INSERT INTO `sys_oper_log` VALUES (7, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"5\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:51:26');
INSERT INTO `sys_oper_log` VALUES (8, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"102\" ],\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"王五\" ],\r\n  \"dept.deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"18888888888\" ],\r\n  \"email\" : [ \"13119129568@163.com\" ],\r\n  \"loginName\" : [ \"wangwu\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:51:52');
INSERT INTO `sys_oper_log` VALUES (9, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"4\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:52:41');
INSERT INTO `sys_oper_log` VALUES (10, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'wangwu', '市场部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_user_role\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:54:12');
INSERT INTO `sys_oper_log` VALUES (11, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'wangwu', '市场部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}', 'null', 0, NULL, '2020-04-09 17:54:17');
INSERT INTO `sys_oper_log` VALUES (12, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'wangwu', '市场部门', '/tool/gen/genCode/sys_notice', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-09 17:54:20');
INSERT INTO `sys_oper_log` VALUES (13, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'wangwu', '市场部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-09 17:56:57');
INSERT INTO `sys_oper_log` VALUES (14, '参数管理', 1, 'com.ruoyi.web.controller.system.SysConfigController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/config/add', '127.0.0.1', '内网IP', '{\r\n  \"configName\" : [ \"网站名称\" ],\r\n  \"configKey\" : [ \"sys.site.name\" ],\r\n  \"configValue\" : [ \"高校毕业设计管理系统\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"网站的名称\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 09:35:26');
INSERT INTO `sys_oper_log` VALUES (15, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"roleName\" : [ \"管理员\" ],\r\n  \"roleKey\" : [ \"admin\" ],\r\n  \"dataScope\" : [ \"5\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', 'null', 1, '不允许操作超级管理员角色', '2020-04-17 09:46:52');
INSERT INTO `sys_oper_log` VALUES (16, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"5\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 09:47:02');
INSERT INTO `sys_oper_log` VALUES (17, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"dataScope\" : [ \"3\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 09:47:10');
INSERT INTO `sys_oper_log` VALUES (18, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"103\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"部门管理\" ],\r\n  \"url\" : [ \"/system/dept\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:dept:view\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 09:49:47');
INSERT INTO `sys_oper_log` VALUES (19, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"104\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"岗位管理\" ],\r\n  \"url\" : [ \"/system/post\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:post:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 09:49:55');
INSERT INTO `sys_oper_log` VALUES (20, '参数管理', 9, 'com.ruoyi.web.controller.system.SysConfigController.clearCache()', 'GET', 1, 'admin', '研发部门', '/system/config/clearCache', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 09:50:15');
INSERT INTO `sys_oper_log` VALUES (21, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"104\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"岗位管理\" ],\r\n  \"url\" : [ \"/system/post\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:post:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:17:47');
INSERT INTO `sys_oper_log` VALUES (22, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"104\" ],\r\n  \"parentId\" : [ \"1\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"职位管理\" ],\r\n  \"url\" : [ \"/system/post\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:post:view\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:18:17');
INSERT INTO `sys_oper_log` VALUES (23, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"1\" ],\r\n  \"postName\" : [ \"高级教师\" ],\r\n  \"postCode\" : [ \"ceo\" ],\r\n  \"postSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:18:37');
INSERT INTO `sys_oper_log` VALUES (24, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"1\" ],\r\n  \"postName\" : [ \"高级教师\" ],\r\n  \"postCode\" : [ \"gaoji\" ],\r\n  \"postSort\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:18:43');
INSERT INTO `sys_oper_log` VALUES (25, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"2\" ],\r\n  \"postName\" : [ \"初级教师\" ],\r\n  \"postCode\" : [ \"chuji\" ],\r\n  \"postSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:18:57');
INSERT INTO `sys_oper_log` VALUES (26, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"3\" ],\r\n  \"postName\" : [ \"骨干教师\" ],\r\n  \"postCode\" : [ \"gugan\" ],\r\n  \"postSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:19:15');
INSERT INTO `sys_oper_log` VALUES (27, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\r\n  \"postId\" : [ \"4\" ],\r\n  \"postName\" : [ \"普通教师\" ],\r\n  \"postCode\" : [ \"putong\" ],\r\n  \"postSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:19:33');
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"教师管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-user-plus\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:23:55');
INSERT INTO `sys_oper_log` VALUES (29, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"学生管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-user\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:24:23');
INSERT INTO `sys_oper_log` VALUES (30, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,1062,1063\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:25:14');
INSERT INTO `sys_oper_log` VALUES (31, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:25:22');
INSERT INTO `sys_oper_log` VALUES (32, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"教师\" ],\r\n  \"roleKey\" : [ \"teacher\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,1062,1063\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:25:43');
INSERT INTO `sys_oper_log` VALUES (33, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"待选课题\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"fa fa-circle\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:27:05');
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"学生列表\" ],\r\n  \"url\" : [ \"/student/student\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:28:58');
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1062\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"教师列表\" ],\r\n  \"url\" : [ \"/teacher/teacher\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"teacher:teacher:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:30:07');
INSERT INTO `sys_oper_log` VALUES (36, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"是否发布课题\" ],\r\n  \"dictType\" : [ \"fabu_keti\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:33:16');
INSERT INTO `sys_oper_log` VALUES (37, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"是\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"fabu_keti\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:33:27');
INSERT INTO `sys_oper_log` VALUES (38, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"否\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"fabu_keti\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:33:39');
INSERT INTO `sys_oper_log` VALUES (39, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"是否完成论文审核\" ],\r\n  \"dictType\" : [ \"lunwen_shenhe\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:34:02');
INSERT INTO `sys_oper_log` VALUES (40, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"是\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"lunwen_shenhe\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:34:13');
INSERT INTO `sys_oper_log` VALUES (41, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"否\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"lunwen_shenhe\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:34:21');
INSERT INTO `sys_oper_log` VALUES (42, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"是否完成答辩工作\" ],\r\n  \"dictType\" : [ \"dabian_gongzuo\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:34:41');
INSERT INTO `sys_oper_log` VALUES (43, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"是\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"dabian_gongzuo\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:35:13');
INSERT INTO `sys_oper_log` VALUES (44, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"否\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"dabian_gongzuo\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:35:23');
INSERT INTO `sys_oper_log` VALUES (45, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"是否选题\" ],\r\n  \"dictType\" : [ \"student_xuanti\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:35:52');
INSERT INTO `sys_oper_log` VALUES (46, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"是\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"student_xuanti\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:36:08');
INSERT INTO `sys_oper_log` VALUES (47, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"否\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"student_xuanti\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:36:21');
INSERT INTO `sys_oper_log` VALUES (48, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"论文状态\" ],\r\n  \"dictType\" : [ \"lunwen_state\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:36:43');
INSERT INTO `sys_oper_log` VALUES (49, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"未上传\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"lunwen_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:36:57');
INSERT INTO `sys_oper_log` VALUES (50, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"未确认\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"lunwen_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:37:09');
INSERT INTO `sys_oper_log` VALUES (51, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"已确认\" ],\r\n  \"dictValue\" : [ \"3\" ],\r\n  \"dictType\" : [ \"lunwen_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:37:21');
INSERT INTO `sys_oper_log` VALUES (52, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"答辩状态\" ],\r\n  \"dictType\" : [ \"dabian_state\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:37:41');
INSERT INTO `sys_oper_log` VALUES (53, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"无资格\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"dabian_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:37:57');
INSERT INTO `sys_oper_log` VALUES (54, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"未通过\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"dabian_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"danger\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:38:15');
INSERT INTO `sys_oper_log` VALUES (55, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"已通过\" ],\r\n  \"dictValue\" : [ \"3\" ],\r\n  \"dictType\" : [ \"dabian_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:38:29');
INSERT INTO `sys_oper_log` VALUES (56, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1066\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查看\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"teacher:teacher:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:45:20');
INSERT INTO `sys_oper_log` VALUES (57, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1066\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"编辑\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"teacher:teacher:edit\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:45:33');
INSERT INTO `sys_oper_log` VALUES (58, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1066\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"增加\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"teacher:teacher:add\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:45:49');
INSERT INTO `sys_oper_log` VALUES (59, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查看\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:47:07');
INSERT INTO `sys_oper_log` VALUES (60, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"编辑\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:edit\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:47:24');
INSERT INTO `sys_oper_log` VALUES (61, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"增加\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:add\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:47:37');
INSERT INTO `sys_oper_log` VALUES (62, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:remove\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:47:52');
INSERT INTO `sys_oper_log` VALUES (63, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1064\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"待选课题列表\" ],\r\n  \"url\" : [ \"/keti/keti\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:49:05');
INSERT INTO `sys_oper_log` VALUES (64, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查看\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:lsit\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:49:16');
INSERT INTO `sys_oper_log` VALUES (65, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"编辑\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:edit\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:49:32');
INSERT INTO `sys_oper_log` VALUES (66, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"增加\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:add\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:49:45');
INSERT INTO `sys_oper_log` VALUES (67, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"删除\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:remove\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:49:59');
INSERT INTO `sys_oper_log` VALUES (68, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"论文是否被选择\" ],\r\n  \"dictType\" : [ \"lunwen_xuanze\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:52:46');
INSERT INTO `sys_oper_log` VALUES (69, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"已选择\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"lunwen_xuanze\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:53:07');
INSERT INTO `sys_oper_log` VALUES (70, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"未选择\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"lunwen_xuanze\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"2\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 10:53:18');
INSERT INTO `sys_oper_log` VALUES (71, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"未选题学生名单\" ],\r\n  \"url\" : [ \"/weixuanti/weixuanti\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"weixuanti:weixuanti:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:11:22');
INSERT INTO `sys_oper_log` VALUES (72, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"未确认论文名单\" ],\r\n  \"url\" : [ \"/lunwen/lunwen\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"lunwen:lunwen:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:11:59');
INSERT INTO `sys_oper_log` VALUES (73, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"无资格答辩学生名单\" ],\r\n  \"url\" : [ \"/dabian/dabian\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"dabian:dabian:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:12:49');
INSERT INTO `sys_oper_log` VALUES (74, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"未通过答辩的学生名单\" ],\r\n  \"url\" : [ \"/weitongguo/weitongguo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"weitongguo:weitongguo:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:13:40');
INSERT INTO `sys_oper_log` VALUES (75, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:14:19');
INSERT INTO `sys_oper_log` VALUES (76, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:14:20');
INSERT INTO `sys_oper_log` VALUES (77, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_keti\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:14:25');
INSERT INTO `sys_oper_log` VALUES (78, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"3\" ],\r\n  \"tableName\" : [ \"sys_keti\" ],\r\n  \"tableComment\" : [ \"待选课题\" ],\r\n  \"className\" : [ \"SysKeti\" ],\r\n  \"functionAuthor\" : [ \"lzt\" ],\r\n  \"remark\" : [ \"待选课题\" ],\r\n  \"columns[0].columnId\" : [ \"13\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"14\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课题名称\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"title\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"15\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"论文状态\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"state\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"16\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"任务书名称\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"renwushuName\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"17\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"任务书文件地址\" ],\r\n  \"columns[', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:15:07');
INSERT INTO `sys_oper_log` VALUES (79, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:16:43');
INSERT INTO `sys_oper_log` VALUES (80, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_keti\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:16:58');
INSERT INTO `sys_oper_log` VALUES (81, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"4\" ],\r\n  \"tableName\" : [ \"sys_keti\" ],\r\n  \"tableComment\" : [ \"待选课题\" ],\r\n  \"className\" : [ \"SysKeti\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"19\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"20\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课题名称\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"title\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"21\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"论文状态\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"state\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"22\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"任务书名称\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"renwushuName\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"23\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"任务书文件地址\" ],\r\n  \"columns[4]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:17:18');
INSERT INTO `sys_oper_log` VALUES (82, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"4\" ],\r\n  \"tableName\" : [ \"sys_keti\" ],\r\n  \"tableComment\" : [ \"待选课题\" ],\r\n  \"className\" : [ \"SysKeti\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"19\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"20\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"课题名称\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"title\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"EQ\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"21\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"论文状态\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"state\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"lunwen_xuanze\" ],\r\n  \"columns[3].columnId\" : [ \"22\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"任务书名称\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"renwushuName\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"LIKE\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"columns[4].columnId\" : [ \"23\" ],\r\n  \"columns[4].sort\" : [ \"5\" ],\r\n  \"columns[4].columnComment\" : [ \"任务书文件地址\" ],\r\n  \"columns[4].javaType\" : [ \"String\" ],\r\n  \"columns[4].javaField\" : [', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:19:06');
INSERT INTO `sys_oper_log` VALUES (83, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_keti', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-17 11:19:08');
INSERT INTO `sys_oper_log` VALUES (84, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"12\" ],\r\n  \"renwushuName\" : [ \"123\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:21:56');
INSERT INTO `sys_oper_log` VALUES (85, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"上传\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:upload\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:23:12');
INSERT INTO `sys_oper_log` VALUES (86, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"下载\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:down\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:23:31');
INSERT INTO `sys_oper_log` VALUES (87, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"xxxxx\" ],\r\n  \"renwushuName\" : [ \"新建 DOC 文档.doc\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/新建 DOC 文档.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:33:28');
INSERT INTO `sys_oper_log` VALUES (88, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1085\" ],\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"下载任务书\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:down\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:34:58');
INSERT INTO `sys_oper_log` VALUES (89, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"选择该课题\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:xuanze\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 11:35:33');
INSERT INTO `sys_oper_log` VALUES (90, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"102\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:05:37');
INSERT INTO `sys_oper_log` VALUES (91, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"102\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:05:40');
INSERT INTO `sys_oper_log` VALUES (92, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"102\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:05:42');
INSERT INTO `sys_oper_log` VALUES (93, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"102\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:05:44');
INSERT INTO `sys_oper_log` VALUES (94, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"111111111\" ],\r\n  \"renwushuName\" : [ \"智能鸡舍通信协议20190930.xlsx\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/智能鸡舍通信协议20190930.xlsx\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:15:10');
INSERT INTO `sys_oper_log` VALUES (95, '待选课题', 3, 'com.ruoyi.keti.controller.SysKetiController.remove()', 'POST', 1, 'admin', '研发部门', '/keti/keti/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:21:55');
INSERT INTO `sys_oper_log` VALUES (96, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_teacher\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:34:04');
INSERT INTO `sys_oper_log` VALUES (97, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"5\" ],\r\n  \"tableName\" : [ \"sys_teacher\" ],\r\n  \"tableComment\" : [ \"教师信息\" ],\r\n  \"className\" : [ \"SysTeacher\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"teacher\" ],\r\n  \"columns[0].columnId\" : [ \"27\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"28\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"姓名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"name\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"29\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"性别\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"sex\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].isRequired\" : [ \"1\" ],\r\n  \"columns[2].htmlType\" : [ \"select\" ],\r\n  \"columns[2].dictType\" : [ \"sys_user_sex\" ],\r\n  \"columns[3].columnId\" : [ \"30\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"工号\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"gonghao\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"input\" ],\r\n  \"columns[3].dictType\" : [ \"\" ],\r\n  \"c', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:36:59');
INSERT INTO `sys_oper_log` VALUES (98, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_teacher', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-17 12:37:02');
INSERT INTO `sys_oper_log` VALUES (99, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"123\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"12312\" ],\r\n  \"phone\" : [ \"12312\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:39:03');
INSERT INTO `sys_oper_log` VALUES (100, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"1111111\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"gonghao\" : [ \"12312\" ],\r\n  \"phone\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:45:47');
INSERT INTO `sys_oper_log` VALUES (101, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"12312\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"gonghao\" : [ \"打打\" ],\r\n  \"zhiwei\" : [ \"1\" ],\r\n  \"phone\" : [ \"阿斯达 \" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:46:23');
INSERT INTO `sys_oper_log` VALUES (102, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"阿斯达\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"阿斯达\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"阿斯达\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:49:01');
INSERT INTO `sys_oper_log` VALUES (103, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"阿斯达打按时\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"阿斯达三大啊大神 \" ],\r\n  \"zhiwei\" : [ \"骨干教师\" ],\r\n  \"phone\" : [ \" 按时ad啥打\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 12:49:14');
INSERT INTO `sys_oper_log` VALUES (104, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"1231231\" ],\r\n  \"renwushuName\" : [ \"小程序.txt\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/小程序.txt\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'caozuoren\' in \'field list\'\r\n### The error may exist in file [D:\\ideaWorkSpance\\bishe\\target\\classes\\mapper\\keti\\SysKetiMapper.xml]\r\n### The error may involve com.ruoyi.keti.mapper.SysKetiMapper.insertSysKeti-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_keti          ( title,                          renwushu_name,             renwushu_url,                                                    caozuoren,             chuangjiantime )           values ( ?,                          ?,             ?,                                                    ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'caozuoren\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'caozuoren\' in \'field list\'', '2020-04-17 13:07:06');
INSERT INTO `sys_oper_log` VALUES (105, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"12312\" ],\r\n  \"renwushuName\" : [ \"小程序.txt\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/小程序.txt\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'caozuoren\' in \'field list\'\r\n### The error may exist in file [D:\\ideaWorkSpance\\bishe\\target\\classes\\mapper\\keti\\SysKetiMapper.xml]\r\n### The error may involve com.ruoyi.keti.mapper.SysKetiMapper.insertSysKeti-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_keti          ( title,                          renwushu_name,             renwushu_url,                                                    caozuoren,             chuangjiantime )           values ( ?,                          ?,             ?,                                                    ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'caozuoren\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'caozuoren\' in \'field list\'', '2020-04-17 13:08:33');
INSERT INTO `sys_oper_log` VALUES (106, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"阿斯达\" ],\r\n  \"renwushuName\" : [ \"小程序.txt\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/小程序.txt\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'chuangjiantime\' in \'field list\'\r\n### The error may exist in file [D:\\ideaWorkSpance\\bishe\\target\\classes\\mapper\\keti\\SysKetiMapper.xml]\r\n### The error may involve com.ruoyi.keti.mapper.SysKetiMapper.insertSysKeti-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_keti          ( title,                          renwushu_name,             renwushu_url,                                                    caozuoren,             chuangjiantime )           values ( ?,                          ?,             ?,                                                    ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'chuangjiantime\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'chuangjiantime\' in \'field list\'', '2020-04-17 13:10:25');
INSERT INTO `sys_oper_log` VALUES (107, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"阿斯达\" ],\r\n  \"renwushuName\" : [ \"小程序.txt\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/小程序.txt\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 13:10:43');
INSERT INTO `sys_oper_log` VALUES (108, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, 'admin', '研发部门', '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"123123\" ],\r\n  \"renwushuName\" : [ \"小程序.txt\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/小程序.txt\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-17 13:13:58');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_student\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:03:01');
INSERT INTO `sys_oper_log` VALUES (110, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  \"dictName\" : [ \"专业班级\" ],\r\n  \"dictType\" : [ \"zhuanye_banji\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:03:33');
INSERT INTO `sys_oper_log` VALUES (111, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"计算机一班\" ],\r\n  \"dictValue\" : [ \"1\" ],\r\n  \"dictType\" : [ \"zhuanye_banji\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"primary\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:03:53');
INSERT INTO `sys_oper_log` VALUES (112, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"计算机二班\" ],\r\n  \"dictValue\" : [ \"2\" ],\r\n  \"dictType\" : [ \"zhuanye_banji\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"1\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:04:07');
INSERT INTO `sys_oper_log` VALUES (113, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"计算机三班\" ],\r\n  \"dictValue\" : [ \"3\" ],\r\n  \"dictType\" : [ \"zhuanye_banji\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"3\" ],\r\n  \"listClass\" : [ \"warning\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:04:24');
INSERT INTO `sys_oper_log` VALUES (114, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"计算机四班\" ],\r\n  \"dictValue\" : [ \"4\" ],\r\n  \"dictType\" : [ \"zhuanye_banji\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"danger\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:04:35');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"6\" ],\r\n  \"tableName\" : [ \"sys_student\" ],\r\n  \"tableComment\" : [ \"学生信息\" ],\r\n  \"className\" : [ \"SysStudent\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"36\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"37\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"姓名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"name\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"38\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学号\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"xuehao\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"39\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"性别\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"sex\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"select\" ],\r\n  \"columns[3].dictType\" : [ \"sys_user_sex\" ],\r\n  \"columns[4].columnId\" : [ \"40\" ],\r\n  \"columns[4]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:06:43');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_student', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-20 10:06:46');
INSERT INTO `sys_oper_log` VALUES (117, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,1062,1066,1067,1068,1069,1070,1063,1065,1071,1072,1073,1074,1080,1081,1082,1083,1064,1075,1076,1077,1078,1079,1084,1085,1086\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:09:01');
INSERT INTO `sys_oper_log` VALUES (118, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"\" ],\r\n  \"userName\" : [ \"李同学\" ],\r\n  \"phonenumber\" : [ \"18722222221\" ],\r\n  \"email\" : [ \"11011@qq.com\" ],\r\n  \"loginName\" : [ \"litongxue\" ],\r\n  \"password\" : [ \"admin\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:09:53');
INSERT INTO `sys_oper_log` VALUES (119, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"103\" ],\r\n  \"deptId\" : [ \"\" ],\r\n  \"userName\" : [ \"李同学\" ],\r\n  \"phonenumber\" : [ \"18722222221\" ],\r\n  \"email\" : [ \"11011@qq.com\" ],\r\n  \"loginName\" : [ \"litongxue\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"3\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"3\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:12:07');
INSERT INTO `sys_oper_log` VALUES (120, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,1062,1066,1067,1068,1069,1070,1063,1065,1071,1072,1073,1074,1080,1081,1082,1083,1064,1075,1076,1077,1078,1079,1084,1085,1086\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:12:22');
INSERT INTO `sys_oper_log` VALUES (121, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:15:11');
INSERT INTO `sys_oper_log` VALUES (122, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"4\" ],\r\n  \"roleName\" : [ \"教师\" ],\r\n  \"roleKey\" : [ \"teacher\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,1062,1066,1067,1068,1069,1070,1063,1065,1071,1072,1073,1074,1080,1081,1082,1083,1064,1075,1076,1077,1078,1079,1084,1085,1086\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:15:18');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'litongxue', NULL, '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1076\" ],\r\n  \"parentId\" : [ \"1075\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查看\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"keti:keti:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:17:16');
INSERT INTO `sys_oper_log` VALUES (124, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'litongxue', NULL, '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,112,111,3,113,114,1057,1058,1059,1060,1061,115,1062,1066,1067,1068,1069,1070,1064,1075,1086,1077,1079,1085,1076,1078,1084,1063,1081,1083,1080,1065,1071,1073,1072,1074,1082\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:17:23');
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'litongxue', NULL, '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  \"tableId\" : [ \"6\" ],\r\n  \"tableName\" : [ \"sys_student\" ],\r\n  \"tableComment\" : [ \"学生信息\" ],\r\n  \"className\" : [ \"SysStudent\" ],\r\n  \"functionAuthor\" : [ \"ruoyi\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"columns[0].columnId\" : [ \"36\" ],\r\n  \"columns[0].sort\" : [ \"1\" ],\r\n  \"columns[0].columnComment\" : [ \"主键id\" ],\r\n  \"columns[0].javaType\" : [ \"Long\" ],\r\n  \"columns[0].javaField\" : [ \"id\" ],\r\n  \"columns[0].isInsert\" : [ \"1\" ],\r\n  \"columns[0].queryType\" : [ \"EQ\" ],\r\n  \"columns[0].htmlType\" : [ \"input\" ],\r\n  \"columns[0].dictType\" : [ \"\" ],\r\n  \"columns[1].columnId\" : [ \"37\" ],\r\n  \"columns[1].sort\" : [ \"2\" ],\r\n  \"columns[1].columnComment\" : [ \"姓名\" ],\r\n  \"columns[1].javaType\" : [ \"String\" ],\r\n  \"columns[1].javaField\" : [ \"name\" ],\r\n  \"columns[1].isInsert\" : [ \"1\" ],\r\n  \"columns[1].isEdit\" : [ \"1\" ],\r\n  \"columns[1].isList\" : [ \"1\" ],\r\n  \"columns[1].isQuery\" : [ \"1\" ],\r\n  \"columns[1].queryType\" : [ \"LIKE\" ],\r\n  \"columns[1].isRequired\" : [ \"1\" ],\r\n  \"columns[1].htmlType\" : [ \"input\" ],\r\n  \"columns[1].dictType\" : [ \"\" ],\r\n  \"columns[2].columnId\" : [ \"38\" ],\r\n  \"columns[2].sort\" : [ \"3\" ],\r\n  \"columns[2].columnComment\" : [ \"学号\" ],\r\n  \"columns[2].javaType\" : [ \"String\" ],\r\n  \"columns[2].javaField\" : [ \"xuehao\" ],\r\n  \"columns[2].isInsert\" : [ \"1\" ],\r\n  \"columns[2].isEdit\" : [ \"1\" ],\r\n  \"columns[2].isList\" : [ \"1\" ],\r\n  \"columns[2].isQuery\" : [ \"1\" ],\r\n  \"columns[2].queryType\" : [ \"EQ\" ],\r\n  \"columns[2].htmlType\" : [ \"input\" ],\r\n  \"columns[2].dictType\" : [ \"\" ],\r\n  \"columns[3].columnId\" : [ \"39\" ],\r\n  \"columns[3].sort\" : [ \"4\" ],\r\n  \"columns[3].columnComment\" : [ \"性别\" ],\r\n  \"columns[3].javaType\" : [ \"String\" ],\r\n  \"columns[3].javaField\" : [ \"sex\" ],\r\n  \"columns[3].isInsert\" : [ \"1\" ],\r\n  \"columns[3].isEdit\" : [ \"1\" ],\r\n  \"columns[3].isList\" : [ \"1\" ],\r\n  \"columns[3].isQuery\" : [ \"1\" ],\r\n  \"columns[3].queryType\" : [ \"EQ\" ],\r\n  \"columns[3].isRequired\" : [ \"1\" ],\r\n  \"columns[3].htmlType\" : [ \"select\" ],\r\n  \"columns[3].dictType\" : [ \"sys_user_sex\" ],\r\n  \"columns[4].columnId\" : [ \"40\" ],\r\n  \"columns[4]', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:19:02');
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'litongxue', NULL, '/tool/gen/genCode/sys_student', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-20 10:19:05');
INSERT INTO `sys_oper_log` VALUES (127, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'litongxue', NULL, '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张三\" ],\r\n  \"xuehao\" : [ \"00001\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"15888888889\" ],\r\n  \"xuantiState\" : [ \"2\" ],\r\n  \"lunwenState\" : [ \"2\" ],\r\n  \"dabianState\" : [ \"2\" ],\r\n  \"ketiId\" : [ \"12321\" ],\r\n  \"ketiName\" : [ \"12312\" ],\r\n  \"lunwenName\" : [ \"12313\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:23:00');
INSERT INTO `sys_oper_log` VALUES (128, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'litongxue', NULL, '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"阿西吧\" ],\r\n  \"xuehao\" : [ \"100000\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"15888888889\" ],\r\n  \"xuantiState\" : [ \"1\" ],\r\n  \"lunwenState\" : [ \"1\" ],\r\n  \"dabianState\" : [ \"1\" ],\r\n  \"ketiId\" : [ \"\" ],\r\n  \"ketiName\" : [ \"\" ],\r\n  \"lunwenName\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:38:55');
INSERT INTO `sys_oper_log` VALUES (129, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"小红\" ],\r\n  \"xuehao\" : [ \"1000000\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"xuantiState\" : [ \"1\" ],\r\n  \"lunwenState\" : [ \"1\" ],\r\n  \"dabianState\" : [ \"1\" ],\r\n  \"ketiId\" : [ \"\" ],\r\n  \"ketiName\" : [ \"\" ],\r\n  \"lunwenName\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:43:46');
INSERT INTO `sys_oper_log` VALUES (130, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, '1000000', NULL, '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"小红\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"258696\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"15888888882\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:47:35');
INSERT INTO `sys_oper_log` VALUES (131, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"zhangsan\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"000222\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"15888888885\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:49:04');
INSERT INTO `sys_oper_log` VALUES (132, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"1231231\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"423423\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"2342342\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:51:55');
INSERT INTO `sys_oper_log` VALUES (133, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"asd das\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"d as d\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"asd as s\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:53:59');
INSERT INTO `sys_oper_log` VALUES (134, '学生信息', 3, 'com.ruoyi.student.controller.SysStudentController.remove()', 'POST', 1, 'admin', '研发部门', '/student/student/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1,2,3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:57:19');
INSERT INTO `sys_oper_log` VALUES (135, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"109,107,106,105,104\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:57:35');
INSERT INTO `sys_oper_log` VALUES (136, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张同学\" ],\r\n  \"xuehao\" : [ \"111111\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"xuantiState\" : [ \"1\" ],\r\n  \"lunwenState\" : [ \"1\" ],\r\n  \"dabianState\" : [ \"1\" ],\r\n  \"ketiId\" : [ \"\" ],\r\n  \"ketiName\" : [ \"\" ],\r\n  \"lunwenName\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 10:57:59');
INSERT INTO `sys_oper_log` VALUES (137, '学生信息', 2, 'com.ruoyi.student.controller.SysStudentController.editSave()', 'POST', 1, '111111', NULL, '/student/student/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"4\" ],\r\n  \"name\" : [ \"张同学\" ],\r\n  \"xuehao\" : [ \"111111\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"xuantiState\" : [ \"2\" ],\r\n  \"lunwenState\" : [ \"1\" ],\r\n  \"dabianState\" : [ \"1\" ],\r\n  \"ketiId\" : [ \"5\" ],\r\n  \"ketiName\" : [ \"123123\" ],\r\n  \"lunwenName\" : [ \"小程序.txt\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 13:39:07');
INSERT INTO `sys_oper_log` VALUES (138, '待选课题', 2, 'com.ruoyi.keti.controller.SysKetiController.editSave()', 'POST', 1, '111111', NULL, '/keti/keti/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"4\" ],\r\n  \"title\" : [ \"阿斯达\" ],\r\n  \"renwushuName\" : [ \"小程序.txt\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/小程序.txt\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 13:42:00');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '111111', NULL, '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"上传论文\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:shangchuan\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 13:44:05');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '111111', NULL, '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"上传论文\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:shangchuan\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 13:50:13');
INSERT INTO `sys_oper_log` VALUES (141, '登陆日志', 3, 'com.ruoyi.web.controller.monitor.SysLogininforController.remove()', 'POST', 1, '111111', NULL, '/monitor/logininfor/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 13:53:44');
INSERT INTO `sys_oper_log` VALUES (142, '登陆日志', 3, 'com.ruoyi.web.controller.monitor.SysLogininforController.remove()', 'POST', 1, '111111', NULL, '/monitor/logininfor/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,5,4,3,2,1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 13:53:54');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, '111111', NULL, '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"阿斯达\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"奥术大师\" ],\r\n  \"orderNum\" : [ \"111\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 14:12:25');
INSERT INTO `sys_oper_log` VALUES (144, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,1062,1066,1067,1068,1069,1070,1063,1065,1071,1072,1073,1074,1088,1080,1081,1082,1083,1064,1075,1076,1077,1078,1079,1084,1085,1086\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 14:14:23');
INSERT INTO `sys_oper_log` VALUES (145, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, '111111', NULL, '/system/user/resetPwd/102', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2020-04-20 14:15:35');
INSERT INTO `sys_oper_log` VALUES (146, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', 1, '111111', NULL, '/system/user/resetPwd/110', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', 0, NULL, '2020-04-20 14:15:41');
INSERT INTO `sys_oper_log` VALUES (147, '重置密码', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwdSave()', 'POST', 1, 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"4\" ],\r\n  \"lunwenUrl\" : [ \"D:/bishe/upload/新建 DOC 文档.doc\" ],\r\n  \"lunwenName\" : [ \"新建 DOC 文档.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作失败\",\r\n  \"code\" : 500\r\n}', 0, NULL, '2020-04-20 14:25:19');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"审核\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:shenhe\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:04:06');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改论文状态\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:updateLunwen\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:05:01');
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查看论文\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:chakan\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:05:26');
INSERT INTO `sys_oper_log` VALUES (151, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,1062,1066,1067,1068,1069,1070,1063,1065,1071,1072,1073,1074,1090,1091,1092,1088,1080,1081,1082,1083,1064,1075,1076,1077,1078,1079,1084,1085,1086\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:05:55');
INSERT INTO `sys_oper_log` VALUES (152, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, '111111', NULL, '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"有资格\" ],\r\n  \"dictValue\" : [ \"4\" ],\r\n  \"dictType\" : [ \"dabian_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"4\" ],\r\n  \"listClass\" : [ \"info\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:23:46');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1080\" ],\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"未选题学生名单\" ],\r\n  \"url\" : [ \"/student/student/weixuanti\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"weixuanti:weixuanti:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:37:03');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1081\" ],\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"未确认论文名单\" ],\r\n  \"url\" : [ \"/student/student/weiqueren\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:weiqueren\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:37:40');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1082\" ],\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"无资格答辩学生名单\" ],\r\n  \"url\" : [ \"/student/student/wuzige\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:wuzige\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:38:59');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1083\" ],\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"未通过答辩的学生名单\" ],\r\n  \"url\" : [ \"/weitongguo/weitongguo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:weitongguo\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:39:37');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1083\" ],\r\n  \"parentId\" : [ \"1063\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"未通过答辩的学生名单\" ],\r\n  \"url\" : [ \"/student/student/weitongguo\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"student:student:weitongguo\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 15:52:21');
INSERT INTO `sys_oper_log` VALUES (158, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  \"dictLabel\" : [ \"未审核\" ],\r\n  \"dictValue\" : [ \"5\" ],\r\n  \"dictType\" : [ \"dabian_state\" ],\r\n  \"cssClass\" : [ \"\" ],\r\n  \"dictSort\" : [ \"5\" ],\r\n  \"listClass\" : [ \"success\" ],\r\n  \"isDefault\" : [ \"Y\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:05:14');
INSERT INTO `sys_oper_log` VALUES (159, '教师', 3, 'com.ruoyi.teacher.controller.SysTeacherController.remove()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1,2,3,4,5,6,7,8,9\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:43:00');
INSERT INTO `sys_oper_log` VALUES (160, '学生信息', 3, 'com.ruoyi.student.controller.SysStudentController.remove()', 'POST', 1, 'admin', '研发部门', '/student/student/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"4\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:43:05');
INSERT INTO `sys_oper_log` VALUES (161, '待选课题', 3, 'com.ruoyi.keti.controller.SysKetiController.remove()', 'POST', 1, 'admin', '研发部门', '/keti/keti/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2,3,4,5\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:43:09');
INSERT INTO `sys_oper_log` VALUES (162, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/config/edit', '127.0.0.1', '内网IP', '{\r\n  \"configId\" : [ \"4\" ],\r\n  \"configName\" : [ \"账号自助-是否开启用户注册功能\" ],\r\n  \"configKey\" : [ \"sys.account.registerUser\" ],\r\n  \"configValue\" : [ \"false\" ],\r\n  \"configType\" : [ \"Y\" ],\r\n  \"remark\" : [ \"是否开启注册用户功能\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:43:30');
INSERT INTO `sys_oper_log` VALUES (163, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1063,1065,1071,1092,1088,1064,1075,1076,1085,1086\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:46:15');
INSERT INTO `sys_oper_log` VALUES (164, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"4\" ],\r\n  \"roleName\" : [ \"教师\" ],\r\n  \"roleKey\" : [ \"teacher\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,1062,1066,1067,1068,1069,1070,1063,1065,1071,1072,1073,1074,1090,1091,1092,1080,1081,1082,1083,1064,1075,1076,1077,1078,1079,1084,1085\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:46:51');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:47:56');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:48:00');
INSERT INTO `sys_oper_log` VALUES (167, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张老师\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"000001\" ],\r\n  \"zhiwei\" : [ \"初级教师\" ],\r\n  \"phone\" : [ \"15888888888\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:49:47');
INSERT INTO `sys_oper_log` VALUES (168, '教师', 3, 'com.ruoyi.teacher.controller.SysTeacherController.remove()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"10\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:51:20');
INSERT INTO `sys_oper_log` VALUES (169, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张老师\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"gonghao\" : [ \"000001\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"15888888889\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:51:45');
INSERT INTO `sys_oper_log` VALUES (170, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"李同学\" ],\r\n  \"xuehao\" : [ \"111111\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"15888888881\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:52:03');
INSERT INTO `sys_oper_log` VALUES (171, '学生信息', 3, 'com.ruoyi.student.controller.SysStudentController.remove()', 'POST', 1, 'admin', '研发部门', '/student/student/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"5\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:53:31');
INSERT INTO `sys_oper_log` VALUES (172, '教师', 3, 'com.ruoyi.teacher.controller.SysTeacherController.remove()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"11\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:53:36');
INSERT INTO `sys_oper_log` VALUES (173, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张老师\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"000001\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"15888888888\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:54:07');
INSERT INTO `sys_oper_log` VALUES (174, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"李同学\" ],\r\n  \"xuehao\" : [ \"111111\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"15888888887\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:54:24');
INSERT INTO `sys_oper_log` VALUES (175, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"王同学\" ],\r\n  \"xuehao\" : [ \"222222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"17777777777\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:54:45');
INSERT INTO `sys_oper_log` VALUES (176, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张老师\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"111111\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"15888888888\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:58:57');
INSERT INTO `sys_oper_log` VALUES (177, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"王同学\" ],\r\n  \"xuehao\" : [ \"222222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"3\" ],\r\n  \"phone\" : [ \"15888888889\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:59:12');
INSERT INTO `sys_oper_log` VALUES (178, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"刘同学\" ],\r\n  \"xuehao\" : [ \"333333\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"banji\" : [ \"4\" ],\r\n  \"phone\" : [ \"15888888885\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 16:59:30');
INSERT INTO `sys_oper_log` VALUES (179, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"课题1\" ],\r\n  \"renwushuName\" : [ \"任务书1.doc\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/任务书1.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:00:15');
INSERT INTO `sys_oper_log` VALUES (180, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"课题2\" ],\r\n  \"renwushuName\" : [ \"任务书2.doc\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/任务书2.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:00:33');
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1088\" ],\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"上传论文\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"6\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:11:22');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1090\" ],\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"审核\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:11:47');
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1092\" ],\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"查看论文\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:13:46');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1091\" ],\r\n  \"parentId\" : [ \"1065\" ],\r\n  \"menuType\" : [ \"F\" ],\r\n  \"menuName\" : [ \"修改论文状态\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:14:01');
INSERT INTO `sys_oper_log` VALUES (185, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"3\" ],\r\n  \"roleName\" : [ \"学生\" ],\r\n  \"roleKey\" : [ \"student\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1063,1065,1071,1092,1088,1064,1075,1076,1085,1086\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:17:05');
INSERT INTO `sys_oper_log` VALUES (186, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"4\" ],\r\n  \"roleName\" : [ \"教师\" ],\r\n  \"roleKey\" : [ \"teacher\" ],\r\n  \"roleSort\" : [ \"4\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,1062,1066,1067,1068,1069,1070,1063,1065,1071,1072,1073,1074,1090,1091,1092,1080,1081,1082,1083,1064,1075,1076,1077,1078,1079,1084,1085\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:26:12');
INSERT INTO `sys_oper_log` VALUES (187, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张老师\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"111111\" ],\r\n  \"zhiwei\" : [ \"高级教师\" ],\r\n  \"phone\" : [ \"15888888888\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:27:39');
INSERT INTO `sys_oper_log` VALUES (188, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"王同学\" ],\r\n  \"xuehao\" : [ \"222222\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"banji\" : [ \"3\" ],\r\n  \"phone\" : [ \"15888888887\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:27:56');
INSERT INTO `sys_oper_log` VALUES (189, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"李同学\" ],\r\n  \"xuehao\" : [ \"333333\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"banji\" : [ \"3\" ],\r\n  \"phone\" : [ \"15888888883\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:28:11');
INSERT INTO `sys_oper_log` VALUES (190, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"课题1\" ],\r\n  \"renwushuName\" : [ \"任务书1.doc\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/任务书1.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:28:54');
INSERT INTO `sys_oper_log` VALUES (191, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"课题2\" ],\r\n  \"renwushuName\" : [ \"任务书2.doc\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/任务书2.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:29:12');
INSERT INTO `sys_oper_log` VALUES (192, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"标题1\" ],\r\n  \"renwushuName\" : [ \"新建文本文档.txt\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/新建文本文档.txt\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:32:06');
INSERT INTO `sys_oper_log` VALUES (193, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"标题2222\" ],\r\n  \"renwushuName\" : [ \"shequ_2_.sql\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/shequ_2_.sql\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:32:33');
INSERT INTO `sys_oper_log` VALUES (194, '教师', 1, 'com.ruoyi.teacher.controller.SysTeacherController.addSave()', 'POST', 1, 'admin', '研发部门', '/teacher/teacher/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"张老师\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"gonghao\" : [ \"111111\" ],\r\n  \"zhiwei\" : [ \"骨干教师\" ],\r\n  \"phone\" : [ \"15888888888\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:41:18');
INSERT INTO `sys_oper_log` VALUES (195, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"李同学\" ],\r\n  \"xuehao\" : [ \"222222\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"banji\" : [ \"2\" ],\r\n  \"phone\" : [ \"15888888889\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:41:34');
INSERT INTO `sys_oper_log` VALUES (196, '学生信息', 1, 'com.ruoyi.student.controller.SysStudentController.addSave()', 'POST', 1, 'admin', '研发部门', '/student/student/add', '127.0.0.1', '内网IP', '{\r\n  \"name\" : [ \"王同学\" ],\r\n  \"xuehao\" : [ \"333333\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"banji\" : [ \"1\" ],\r\n  \"phone\" : [ \"15888888889\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:41:51');
INSERT INTO `sys_oper_log` VALUES (197, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"课题1\" ],\r\n  \"renwushuName\" : [ \"任务书1.doc\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/任务书1.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:42:30');
INSERT INTO `sys_oper_log` VALUES (198, '待选课题', 1, 'com.ruoyi.keti.controller.SysKetiController.addSave()', 'POST', 1, '111111', NULL, '/keti/keti/add', '127.0.0.1', '内网IP', '{\r\n  \"title\" : [ \"课题2\" ],\r\n  \"renwushuName\" : [ \"任务书2.doc\" ],\r\n  \"renwushuUrl\" : [ \"D:/bishe/upload/任务书2.doc\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-04-20 17:42:42');

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
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'gaoji', '高级教师', 1, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-17 10:18:43', '');
INSERT INTO `sys_post` VALUES (2, 'chuji', '初级教师', 2, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-17 10:18:57', '');
INSERT INTO `sys_post` VALUES (3, 'gugan', '骨干教师', 3, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-17 10:19:15', '');
INSERT INTO `sys_post` VALUES (4, 'putong', '普通教师', 4, '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-17 10:19:33', '');

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
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '3', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-17 09:47:10', '普通角色');
INSERT INTO `sys_role` VALUES (3, '学生', 'student', 3, '1', '0', '0', 'admin', '2020-04-17 10:25:14', 'admin', '2020-04-20 17:17:05', '');
INSERT INTO `sys_role` VALUES (4, '教师', 'teacher', 4, '1', '0', '0', 'admin', '2020-04-17 10:25:43', 'admin', '2020-04-20 17:26:12', '');

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
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (3, 1063);
INSERT INTO `sys_role_menu` VALUES (3, 1064);
INSERT INTO `sys_role_menu` VALUES (3, 1065);
INSERT INTO `sys_role_menu` VALUES (3, 1071);
INSERT INTO `sys_role_menu` VALUES (3, 1075);
INSERT INTO `sys_role_menu` VALUES (3, 1076);
INSERT INTO `sys_role_menu` VALUES (3, 1085);
INSERT INTO `sys_role_menu` VALUES (3, 1086);
INSERT INTO `sys_role_menu` VALUES (3, 1088);
INSERT INTO `sys_role_menu` VALUES (3, 1092);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 100);
INSERT INTO `sys_role_menu` VALUES (4, 101);
INSERT INTO `sys_role_menu` VALUES (4, 102);
INSERT INTO `sys_role_menu` VALUES (4, 103);
INSERT INTO `sys_role_menu` VALUES (4, 104);
INSERT INTO `sys_role_menu` VALUES (4, 105);
INSERT INTO `sys_role_menu` VALUES (4, 106);
INSERT INTO `sys_role_menu` VALUES (4, 107);
INSERT INTO `sys_role_menu` VALUES (4, 108);
INSERT INTO `sys_role_menu` VALUES (4, 500);
INSERT INTO `sys_role_menu` VALUES (4, 501);
INSERT INTO `sys_role_menu` VALUES (4, 1000);
INSERT INTO `sys_role_menu` VALUES (4, 1001);
INSERT INTO `sys_role_menu` VALUES (4, 1002);
INSERT INTO `sys_role_menu` VALUES (4, 1003);
INSERT INTO `sys_role_menu` VALUES (4, 1004);
INSERT INTO `sys_role_menu` VALUES (4, 1005);
INSERT INTO `sys_role_menu` VALUES (4, 1006);
INSERT INTO `sys_role_menu` VALUES (4, 1007);
INSERT INTO `sys_role_menu` VALUES (4, 1008);
INSERT INTO `sys_role_menu` VALUES (4, 1009);
INSERT INTO `sys_role_menu` VALUES (4, 1010);
INSERT INTO `sys_role_menu` VALUES (4, 1011);
INSERT INTO `sys_role_menu` VALUES (4, 1012);
INSERT INTO `sys_role_menu` VALUES (4, 1013);
INSERT INTO `sys_role_menu` VALUES (4, 1014);
INSERT INTO `sys_role_menu` VALUES (4, 1015);
INSERT INTO `sys_role_menu` VALUES (4, 1016);
INSERT INTO `sys_role_menu` VALUES (4, 1017);
INSERT INTO `sys_role_menu` VALUES (4, 1018);
INSERT INTO `sys_role_menu` VALUES (4, 1019);
INSERT INTO `sys_role_menu` VALUES (4, 1020);
INSERT INTO `sys_role_menu` VALUES (4, 1021);
INSERT INTO `sys_role_menu` VALUES (4, 1022);
INSERT INTO `sys_role_menu` VALUES (4, 1023);
INSERT INTO `sys_role_menu` VALUES (4, 1024);
INSERT INTO `sys_role_menu` VALUES (4, 1025);
INSERT INTO `sys_role_menu` VALUES (4, 1026);
INSERT INTO `sys_role_menu` VALUES (4, 1027);
INSERT INTO `sys_role_menu` VALUES (4, 1028);
INSERT INTO `sys_role_menu` VALUES (4, 1029);
INSERT INTO `sys_role_menu` VALUES (4, 1030);
INSERT INTO `sys_role_menu` VALUES (4, 1031);
INSERT INTO `sys_role_menu` VALUES (4, 1032);
INSERT INTO `sys_role_menu` VALUES (4, 1033);
INSERT INTO `sys_role_menu` VALUES (4, 1034);
INSERT INTO `sys_role_menu` VALUES (4, 1035);
INSERT INTO `sys_role_menu` VALUES (4, 1036);
INSERT INTO `sys_role_menu` VALUES (4, 1037);
INSERT INTO `sys_role_menu` VALUES (4, 1038);
INSERT INTO `sys_role_menu` VALUES (4, 1039);
INSERT INTO `sys_role_menu` VALUES (4, 1040);
INSERT INTO `sys_role_menu` VALUES (4, 1041);
INSERT INTO `sys_role_menu` VALUES (4, 1042);
INSERT INTO `sys_role_menu` VALUES (4, 1043);
INSERT INTO `sys_role_menu` VALUES (4, 1044);
INSERT INTO `sys_role_menu` VALUES (4, 1045);
INSERT INTO `sys_role_menu` VALUES (4, 1046);
INSERT INTO `sys_role_menu` VALUES (4, 1062);
INSERT INTO `sys_role_menu` VALUES (4, 1063);
INSERT INTO `sys_role_menu` VALUES (4, 1064);
INSERT INTO `sys_role_menu` VALUES (4, 1065);
INSERT INTO `sys_role_menu` VALUES (4, 1066);
INSERT INTO `sys_role_menu` VALUES (4, 1067);
INSERT INTO `sys_role_menu` VALUES (4, 1068);
INSERT INTO `sys_role_menu` VALUES (4, 1069);
INSERT INTO `sys_role_menu` VALUES (4, 1070);
INSERT INTO `sys_role_menu` VALUES (4, 1071);
INSERT INTO `sys_role_menu` VALUES (4, 1072);
INSERT INTO `sys_role_menu` VALUES (4, 1073);
INSERT INTO `sys_role_menu` VALUES (4, 1074);
INSERT INTO `sys_role_menu` VALUES (4, 1075);
INSERT INTO `sys_role_menu` VALUES (4, 1076);
INSERT INTO `sys_role_menu` VALUES (4, 1077);
INSERT INTO `sys_role_menu` VALUES (4, 1078);
INSERT INTO `sys_role_menu` VALUES (4, 1079);
INSERT INTO `sys_role_menu` VALUES (4, 1080);
INSERT INTO `sys_role_menu` VALUES (4, 1081);
INSERT INTO `sys_role_menu` VALUES (4, 1082);
INSERT INTO `sys_role_menu` VALUES (4, 1083);
INSERT INTO `sys_role_menu` VALUES (4, 1084);
INSERT INTO `sys_role_menu` VALUES (4, 1085);
INSERT INTO `sys_role_menu` VALUES (4, 1090);
INSERT INTO `sys_role_menu` VALUES (4, 1091);
INSERT INTO `sys_role_menu` VALUES (4, 1092);

-- ----------------------------
-- Table structure for sys_student
-- ----------------------------
DROP TABLE IF EXISTS `sys_student`;
CREATE TABLE `sys_student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xuehao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学号',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2' COMMENT '性别',
  `banji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业班级',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `xuanti_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2' COMMENT '是否选题',
  `lunwen_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '论文状态',
  `dabian_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '5' COMMENT '答辩状态',
  `keti_id` bigint(20) NULL DEFAULT NULL COMMENT '课题id',
  `keti_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题名称',
  `lunwen_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '论文名称',
  `lunwen_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '论文文件地址',
  `shenhecaozuoren` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shneheshijian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dabiancaozuoren` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dabiancaozuoshijian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_student
-- ----------------------------
INSERT INTO `sys_student` VALUES (12, '李同学', '222222', '1', '2', '15888888889', '1', '3', '3', 12, '课题1', '论文1.doc', 'D:/bishe/upload/论文1.doc', '张老师', '2020-04-20 17:45:20', '张老师', '2020-04-20 17:45:28');
INSERT INTO `sys_student` VALUES (13, '王同学', '333333', '1', '1', '15888888889', '2', '1', '2', NULL, NULL, NULL, NULL, '张老师', '2020-04-20 17:45:47', '张老师', '2020-04-20 17:46:22');

-- ----------------------------
-- Table structure for sys_teacher
-- ----------------------------
DROP TABLE IF EXISTS `sys_teacher`;
CREATE TABLE `sys_teacher`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `gonghao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '工号',
  `zhiwei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职位',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `fabu_keti_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2' COMMENT '是否发布课题',
  `lunwen_shenhe_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2' COMMENT '是否完成论文审核',
  `dabian_gongzuo_state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '2' COMMENT '是否完成答辩工作',
  `caozuoren` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `chuangjiantime` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_teacher
-- ----------------------------
INSERT INTO `sys_teacher` VALUES (15, '张老师', '0', '111111', '骨干教师', '15888888888', '1', '1', '2', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '超级管理员', '00', 'ry@163.com', '15888888888', '1', '', '2826121ac3b821669bdecebd4420b2c4', '5f76f4', '0', '0', '127.0.0.1', '2020-04-20 17:44:46', 'admin', '2018-03-16 11:33:00', 'ry', '2020-04-20 17:44:45', '管理员');
INSERT INTO `sys_user` VALUES (123, NULL, '111111', '张老师', '00', '', '', '0', '', '27c1a2bd853b32715196262e5f4388a8', '2adc63', '0', '0', '127.0.0.1', '2020-04-20 17:45:11', 'admin', '2020-04-20 17:41:18', '', '2020-04-20 17:45:10', NULL);
INSERT INTO `sys_user` VALUES (124, NULL, '222222', '李同学', '00', '', '', '0', '', 'c48933dbb5d20c21a6a46243fe8f5c83', '4fb080', '0', '0', '127.0.0.1', '2020-04-20 17:44:59', 'admin', '2020-04-20 17:41:34', '', '2020-04-20 17:44:58', NULL);
INSERT INTO `sys_user` VALUES (125, NULL, '333333', '王同学', '00', '', '', '0', '', '935a191cdec73dd10efec96b89ef455a', '643109', '0', '0', '', NULL, 'admin', '2020-04-20 17:41:51', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('c4122d56-3d17-493d-b45d-755d1c3d36b4', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2020-04-11 10:20:15', '2020-04-11 10:21:26', 1800000);

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
INSERT INTO `sys_user_role` VALUES (101, 2);
INSERT INTO `sys_user_role` VALUES (102, 2);
INSERT INTO `sys_user_role` VALUES (103, 3);
INSERT INTO `sys_user_role` VALUES (105, 3);
INSERT INTO `sys_user_role` VALUES (107, 4);
INSERT INTO `sys_user_role` VALUES (108, 4);
INSERT INTO `sys_user_role` VALUES (109, 4);
INSERT INTO `sys_user_role` VALUES (110, 3);
INSERT INTO `sys_user_role` VALUES (111, 4);
INSERT INTO `sys_user_role` VALUES (112, 4);
INSERT INTO `sys_user_role` VALUES (113, 3);
INSERT INTO `sys_user_role` VALUES (114, 4);
INSERT INTO `sys_user_role` VALUES (115, 3);
INSERT INTO `sys_user_role` VALUES (116, 3);
INSERT INTO `sys_user_role` VALUES (117, 4);
INSERT INTO `sys_user_role` VALUES (118, 3);
INSERT INTO `sys_user_role` VALUES (119, 3);
INSERT INTO `sys_user_role` VALUES (120, 4);
INSERT INTO `sys_user_role` VALUES (121, 3);
INSERT INTO `sys_user_role` VALUES (122, 3);
INSERT INTO `sys_user_role` VALUES (123, 4);
INSERT INTO `sys_user_role` VALUES (124, 3);
INSERT INTO `sys_user_role` VALUES (125, 3);

SET FOREIGN_KEY_CHECKS = 1;
