/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : ruoyi-vue

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 11/11/2024 11:10:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (7, 'tt_appointments', '预约表', NULL, NULL, 'TtAppointments', 'crud', 'element-plus', 'com.ruoyi.appointment', 'appointment', 'appointments', '预约功能', 'ruoyi', '0', '/', '{\"parentMenuId\":3}', 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14', NULL);
INSERT INTO `gen_table` VALUES (8, 'tt_doctors', '医生信息表', NULL, NULL, 'DoctorList', 'crud', 'element-plus', 'com.ruoyi.doctorlist', 'doctorlist', 'doctorlists', '医生信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2060}', 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17', NULL);
INSERT INTO `gen_table` VALUES (9, 'tt_patients', '患者信息表', NULL, NULL, 'PatientList', 'crud', 'element-plus', 'com.ruoyi.patientlist', 'patientlist', 'patientlists', '患者信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2061}', 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39', NULL);
INSERT INTO `gen_table` VALUES (10, 'tt_billing_records', '收费记录表，记录患者的付款信息', NULL, NULL, 'BillingRecords', 'crud', 'element-plus', 'com.ruoyi.bill', 'bill', 'bills', '收费', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2111\"}', 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (48, 7, 'appointment_id', '预约ID', 'bigint(20)', 'Long', 'appointmentId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (49, 7, 'patient_id', '患者姓名', 'bigint(20)', 'Long', 'patientId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (50, 7, 'doctor_id', '医生姓名', 'bigint(20)', 'Long', 'doctorId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'select', 'tt_doctor', 3, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (51, 7, 'appointment_date', '预约日期', 'date', 'Date', 'appointmentDate', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datetime', '', 4, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (52, 7, 'appointment_time', '会诊时间', 'time', 'Date', 'appointmentTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 5, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (53, 7, 'appointment_duration', '预约时长', 'int(11)', 'Long', 'appointmentDuration', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (54, 7, 'appointment_project', '预约项目', 'varchar(100)', 'String', 'appointmentProject', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'tt_tooth', 7, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (55, 7, 'appointment_status', '预约状态', 'enum(\'PENDING\',\'CONFIRMED\',\'CANCELLED\',\'MISSED\')', 'String', 'appointmentStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'tt_appointments_status', 8, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (56, 7, 'created_at', '预约创建时间', 'timestamp', 'Date', 'createdAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (57, 7, 'updated_at', '预约更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 10, 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14');
INSERT INTO `gen_table_column` VALUES (58, 8, 'doctor_id', '医生唯一ID', 'bigint(20)', 'Long', 'doctorId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17');
INSERT INTO `gen_table_column` VALUES (59, 8, 'name', '医生姓名', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17');
INSERT INTO `gen_table_column` VALUES (60, 8, 'department', '科室', 'varchar(100)', 'String', 'department', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17');
INSERT INTO `gen_table_column` VALUES (61, 8, 'phone', '医生联系电话', 'varchar(20)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17');
INSERT INTO `gen_table_column` VALUES (62, 8, 'position', '职位（如主治医师等）', 'varchar(50)', 'String', 'position', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17');
INSERT INTO `gen_table_column` VALUES (63, 8, 'created_at', '创建时间', 'timestamp', 'Date', 'createdAt', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 6, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17');
INSERT INTO `gen_table_column` VALUES (64, 8, 'updated_at', '更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17');
INSERT INTO `gen_table_column` VALUES (65, 9, 'patient_id', '患者唯一ID', 'bigint(20)', 'Long', 'patientId', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (66, 9, 'name', '患者姓名', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (67, 9, 'medical_record_number', '患者病历号', 'bigint(20)', 'Long', 'medicalRecordNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (68, 9, 'birthday', '患者生日', 'date', 'Date', 'birthday', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 4, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (69, 9, 'gender', '患者性别', 'varchar(20)', 'String', 'gender', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (70, 9, 'phone', '患者联系电话', 'varchar(20)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (71, 9, 'address', '患者地址', 'varchar(255)', 'String', 'address', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (72, 9, 'created_at', '创建时间', 'timestamp', 'Date', 'createdAt', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 8, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (73, 9, 'updated_at', '更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (74, 9, 'remarks', '备注', 'text', 'String', 'remarks', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 10, 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39');
INSERT INTO `gen_table_column` VALUES (75, 10, 'billing_id', '账单ID', 'bigint(20)', 'Long', 'billingId', '1', '1', '0', '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (76, 10, 'patient_id', '患者姓名', 'bigint(20)', 'Long', 'patientId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (77, 10, 'appointment_id', '', 'bigint(20)', 'Long', 'appointmentId', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 3, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (78, 10, 'amount', '收费金额', 'decimal(10,2)', 'BigDecimal', 'amount', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'input', '', 4, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (79, 10, 'payment_method', '支付方式', 'enum(\'CASH\',\'CREDIT_CARD\',\'INSURANCE\',\'ONLINE\')', 'String', 'paymentMethod', '0', '0', '0', '0', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (80, 10, 'payment_status', '支付状态', 'enum(\'PENDING\',\'COMPLETED\',\'FAILED\')', 'String', 'paymentStatus', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'select', '', 6, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (81, 10, 'payment_time', '支付时间', 'timestamp', 'Date', 'paymentTime', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (82, 10, 'created_at', '收费记录创建时间', 'timestamp', 'Date', 'createdAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 8, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');
INSERT INTO `gen_table_column` VALUES (83, 10, 'updated_at', '收费记录更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-10-05 15:46:15', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-10-05 15:46:19', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '王医生', '1', 'tt_doctor', NULL, 'default', 'N', '0', 'admin', '2024-10-07 21:42:09', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '李医生', '2', 'tt_doctor', NULL, 'default', 'N', '0', 'admin', '2024-10-07 21:42:16', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 2, '赵医生', '3', 'tt_doctor', NULL, 'default', 'N', '0', 'admin', '2024-10-07 21:47:58', 'admin', '2024-10-13 10:42:50', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 3, '刘医生', '4', 'tt_doctor', NULL, 'default', 'N', '0', 'admin', '2024-10-13 10:43:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 4, '张医生', '5', 'tt_doctor', NULL, 'default', 'N', '0', 'admin', '2024-10-13 10:43:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '已确定', '1', 'tt_appointments_status', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:13:36', 'admin', '2024-10-13 11:14:16', NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '已取消', '2', 'tt_appointments_status', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:13:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '未到', '3', 'tt_appointments_status', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:13:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 0, '补牙', '1', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:28:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 1, '洁牙', '2', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:28:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 2, '儿童看牙', '3', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:28:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 3, '拔牙', '4', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:29:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 4, '矫正牙齿', '5', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:29:27', 'admin', '2024-10-13 11:29:33', NULL);
INSERT INTO `sys_dict_data` VALUES (113, 5, '植牙', '6', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:29:49', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 6, '口腔检查', '7', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:30:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 7, '化验', '8', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:30:42', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 8, '口腔急诊', '9', 'tt_tooth', NULL, 'default', 'N', '0', 'admin', '2024-10-13 11:31:02', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-10-05 15:46:18', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (101, '医生列表', 'tt_doctor', '0', 'admin', '2024-10-07 21:41:33', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '预约状态', 'tt_appointments_status', '0', 'admin', '2024-10-13 11:13:22', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '诊所项目', 'tt_tooth', '0', 'admin', '2024-10-13 11:27:12', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-10-05 15:46:20', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-10-05 15:46:20', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-10-05 15:46:20', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 152 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-05 15:56:25');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-10-05 17:43:26');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-05 17:43:29');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-05 20:01:03');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-06 10:21:12');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-07 10:08:00');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-07 21:26:28');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-08 16:50:15');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-08 17:40:46');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-09 09:56:56');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-09 10:59:17');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-09 20:22:26');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-10 16:18:49');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-10 18:50:32');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-10 20:58:55');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-13 10:36:35');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-13 14:43:11');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-10-13 17:13:12');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-13 17:13:17');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-14 10:09:28');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-10-14 18:35:06');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-14 18:35:09');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-14 19:30:27');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-15 11:14:57');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-15 15:25:12');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-15 16:07:54');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-15 21:09:56');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-16 09:20:27');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-17 15:55:15');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-10-17 22:35:10');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-17 22:35:15');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-18 10:15:46');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-23 17:16:15');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 15:12:26');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 16:53:10');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 20:58:14');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-24 22:05:14');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 14:37:38');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-10-30 18:04:37');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 18:04:39');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 18:08:53');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-30 22:12:03');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-10-31 20:37:15');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-01 14:36:16');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-01 15:58:16');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-01 16:26:54');
INSERT INTO `sys_logininfor` VALUES (146, 'test', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-01 16:27:02');
INSERT INTO `sys_logininfor` VALUES (147, 'test', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-02 21:59:37');
INSERT INTO `sys_logininfor` VALUES (148, 'test', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-04 10:22:25');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-05 20:30:17');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-05 20:31:08');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-05 20:31:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2118 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 6, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-10-05 15:46:16', 'admin', '2024-10-23 17:30:48', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 5, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-10-05 15:46:16', 'admin', '2024-10-23 17:18:21', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 4, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-10-05 15:46:16', 'admin', '2024-10-23 17:18:14', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-10-05 15:46:16', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-10-05 15:46:16', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 1, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-10-05 15:46:16', 'admin', '2024-11-01 16:01:26', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-10-05 15:46:16', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-10-05 15:46:16', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-10-05 15:46:16', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-10-05 15:46:16', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-10-05 15:46:16', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-10-05 15:46:16', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-10-05 15:46:16', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-10-05 15:46:16', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-10-05 15:46:16', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-10-05 15:46:16', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-10-05 15:46:16', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-10-05 15:46:16', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-10-05 15:46:16', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-10-05 15:46:16', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-10-05 15:46:16', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-10-05 15:46:16', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-10-05 15:46:16', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-10-05 15:46:16', 'admin', '2024-11-01 16:01:29', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-10-05 15:46:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2042, '预约功能', 2062, 1, 'appointments', 'appointment/appointments/index', NULL, '', 1, 1, 'C', '0', '0', 'appointment:appointments:list', 'date-range', 'admin', '2024-10-14 10:37:47', 'admin', '2024-11-01 16:07:43', '预约功能菜单');
INSERT INTO `sys_menu` VALUES (2043, '预约功能查询', 2042, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointment:appointments:query', '#', 'admin', '2024-10-14 10:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2044, '预约功能新增', 2042, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointment:appointments:add', '#', 'admin', '2024-10-14 10:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '预约功能修改', 2042, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointment:appointments:edit', '#', 'admin', '2024-10-14 10:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '预约功能删除', 2042, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointment:appointments:remove', '#', 'admin', '2024-10-14 10:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '预约功能导出', 2042, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointment:appointments:export', '#', 'admin', '2024-10-14 10:37:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '医生列表', 0, 3, 'doctors', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '6-医疗-医生', 'admin', '2024-10-23 17:17:16', 'admin', '2024-11-01 16:08:43', '');
INSERT INTO `sys_menu` VALUES (2061, '患者列表', 0, 2, 'patients', NULL, NULL, '', 1, 0, 'M', '0', '0', '', '患者管理', 'admin', '2024-10-23 17:18:06', 'admin', '2024-11-01 16:05:18', '');
INSERT INTO `sys_menu` VALUES (2062, '预约功能', 0, 1, 'appointments', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'date', 'admin', '2024-10-23 17:19:06', 'admin', '2024-11-01 16:06:02', '');
INSERT INTO `sys_menu` VALUES (2099, '患者信息', 2061, 1, 'patientlists', 'patientlist/patientlists/index', NULL, '', 1, 1, 'C', '0', '0', 'patientlist:patientlists:list', '患者管理', 'admin', '2024-10-24 15:28:54', 'admin', '2024-11-01 16:07:23', '患者信息菜单');
INSERT INTO `sys_menu` VALUES (2100, '患者信息查询', 2099, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'patientlist:patientlists:query', '#', 'admin', '2024-10-24 15:28:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2101, '患者信息新增', 2099, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'patientlist:patientlists:add', '#', 'admin', '2024-10-24 15:28:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2102, '患者信息修改', 2099, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'patientlist:patientlists:edit', '#', 'admin', '2024-10-24 15:28:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '患者信息删除', 2099, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'patientlist:patientlists:remove', '#', 'admin', '2024-10-24 15:28:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2104, '患者信息导出', 2099, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'patientlist:patientlists:export', '#', 'admin', '2024-10-24 15:28:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2105, '医生信息', 2060, 1, 'doctorlists', 'doctorlist/doctorlists/index', NULL, '', 1, 1, 'C', '0', '0', 'doctorlist:doctorlists:list', '医生', 'admin', '2024-10-24 15:52:05', 'admin', '2024-11-01 16:07:33', '医生信息菜单');
INSERT INTO `sys_menu` VALUES (2106, '医生信息查询', 2105, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'doctorlist:doctorlists:query', '#', 'admin', '2024-10-24 15:52:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2107, '医生信息新增', 2105, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'doctorlist:doctorlists:add', '#', 'admin', '2024-10-24 15:52:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2108, '医生信息修改', 2105, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'doctorlist:doctorlists:edit', '#', 'admin', '2024-10-24 15:52:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2109, '医生信息删除', 2105, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'doctorlist:doctorlists:remove', '#', 'admin', '2024-10-24 15:52:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2110, '医生信息导出', 2105, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'doctorlist:doctorlists:export', '#', 'admin', '2024-10-24 15:52:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2111, '收银台', 0, 7, 'bill', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'cash', 'admin', '2024-11-01 14:47:45', 'admin', '2024-11-01 16:07:55', '');
INSERT INTO `sys_menu` VALUES (2112, '收费', 2111, 1, 'bills', 'bill/bills/index', NULL, '', 1, 0, 'C', '0', '0', 'bill:bills:list', 'cash', 'admin', '2024-11-01 14:51:13', 'admin', '2024-11-01 16:08:02', '收费菜单');
INSERT INTO `sys_menu` VALUES (2113, '收费查询', 2112, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'bill:bills:query', '#', 'admin', '2024-11-01 14:51:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2114, '收费新增', 2112, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'bill:bills:add', '#', 'admin', '2024-11-01 14:51:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2115, '收费修改', 2112, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'bill:bills:edit', '#', 'admin', '2024-11-01 14:51:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2116, '收费删除', 2112, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'bill:bills:remove', '#', 'admin', '2024-11-01 14:51:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2117, '收费导出', 2112, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'bill:bills:export', '#', 'admin', '2024-11-01 14:51:13', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-10-05 15:46:20', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-10-05 15:46:20', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 361 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 15:58:01', 119);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"Patients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":1,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":3,\"columnName\":\"medical_record_number\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":4,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 15:59:17', 75);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-05 15:59:20', 394);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 16:19:22', 100);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"patients\",\"perms\":\"patients:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 16:20:37', 84);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patients/patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"patients\",\"perms\":\"patients:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 16:28:57', 71);
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 16:29:30', 102);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tb_dish_flavor,tb_dish\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 17:43:56', 152);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"Patients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":1,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-10-05 15:59:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-10-05 15:59:17\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":3,\"columnName\":\"medical_record_number\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-10-05 15:59:17\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":4,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"d', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 17:45:15', 88);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/tt_patients', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 17:45:35', 136);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"Patients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者ID\",\"columnId\":1,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-10-05 17:45:35\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-10-05 17:45:35\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"病历号\",\"columnId\":3,\"columnName\":\"medical_record_number\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-10-05 17:45:35\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":4,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:58:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datet', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 17:46:38', 139);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-05 17:46:41', 254);
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-10-05 17:52:38', 7);
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 17:53:32', 140);
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'患者信息\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2024-10-05 17:53:59', 3);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'患者信息\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2024-10-05 17:54:01', 2);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-10-05 17:54:14', 2);
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 17:54:23', 180);
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 17:47:21\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'患者信息\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2024-10-05 17:57:38', 3);
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 15:59:57\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"患者信息\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 17:58:21', 64);
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-05 17:47:21\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'患者信息\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2024-10-05 17:58:40', 2);
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-10-05 17:58:44', 2);
INSERT INTO `sys_oper_log` VALUES (122, '患者信息', 1, 'com.ruoyi.patient.controller.PatientsController.add()', 'POST', 1, 'admin', '研发部门', '/patient/patients', '127.0.0.1', '内网IP', '{\"birthday\":\"2004-04-17\",\"gender\":\"0\",\"medicalRecordNumber\":\"M12345\",\"name\":\"根号三\",\"params\":{},\"patientId\":7,\"phone\":\"13111488526\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 18:00:54', 40);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-05 20:07:18', 90);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtAppointments\",\"columns\":[{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"预约ID\",\"columnId\":22,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 20:07:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者ID\",\"columnId\":23,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 20:07:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生ID\",\"columnId\":24,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 20:07:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentDate\",\"columnComment\":\"预约日期\",\"columnId\":25,\"columnName\":\"appointment_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 20:07:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:23:47', 118);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments\"}', NULL, 0, NULL, '2024-10-06 10:23:54', 193);
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2012', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-10-06 10:48:52', 6);
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2013', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:48:59', 76);
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:01', 52);
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2015', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:04', 65);
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:06', 53);
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:08', 61);
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2012', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:10', 83);
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:14', 75);
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:16', 42);
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2003', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:17', 49);
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2004', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:19', 55);
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2005', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:20', 63);
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 10:49:22', 65);
INSERT INTO `sys_oper_log` VALUES (139, '患者信息', 2, 'com.ruoyi.patient.controller.PatientsController.edit()', 'PUT', 1, 'admin', '研发部门', '/patient/patients', '127.0.0.1', '内网IP', '{\"address\":\"北京朝阳区幸福街道123号\",\"birthday\":\"1985-05-15\",\"createdAt\":\"2024-10-05 09:51:34\",\"gender\":\"0\",\"medicalRecordNumber\":\"MR12345\",\"name\":\"张伟\",\"params\":{},\"patientId\":1,\"phone\":\"123-456-7890\",\"updatedAt\":\"2024-10-05 09:51:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:18:44', 51);
INSERT INTO `sys_oper_log` VALUES (140, '患者信息', 2, 'com.ruoyi.patient.controller.PatientsController.edit()', 'PUT', 1, 'admin', '研发部门', '/patient/patients', '127.0.0.1', '内网IP', '{\"address\":\"北京朝阳区幸福街道123号\",\"birthday\":\"1985-05-15\",\"createdAt\":\"2024-10-05 09:51:34\",\"gender\":\"0\",\"medicalRecordNumber\":\"MR12345\",\"name\":\"张伟\",\"params\":{},\"patientId\":1,\"phone\":\"123-456-7890\",\"updatedAt\":\"2024-10-05 09:51:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:18:48', 2);
INSERT INTO `sys_oper_log` VALUES (141, '患者信息', 2, 'com.ruoyi.patient.controller.PatientsController.edit()', 'PUT', 1, 'admin', '研发部门', '/patient/patients', '127.0.0.1', '内网IP', '{\"address\":\"北京朝阳区幸福街道123号\",\"birthday\":\"1985-05-15\",\"createdAt\":\"2024-10-05 09:51:34\",\"gender\":\"0\",\"medicalRecordNumber\":\"MR12345\",\"name\":\"张伟\",\"params\":{},\"patientId\":1,\"phone\":\"123-456-7890\",\"updatedAt\":\"2024-10-05 09:51:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:18:56', 2);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2007', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:24:48', 133);
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2008', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:24:50', 39);
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2009', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:24:51', 60);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2010', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:24:54', 52);
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2011', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:24:57', 56);
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:25:00', 175);
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/tt_patients', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:25:13', 132);
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-06 11:25:16', 89);
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-06 11:28:37', 112);
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:08:18', 165);
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:08:19', 59);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:08:21', 85);
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:08:23', 187);
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2018', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:10:28', 173);
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/1,2,3,4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:10:42', 115);
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_doctors,tt_patients\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:11:26', 142);
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:11:36', 75);
INSERT INTO `sys_oper_log` VALUES (159, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"所属类型\",\"dictType\":\"tt_doctor_type\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:13:59', 152);
INSERT INTO `sys_oper_log` VALUES (160, '字典类型', 5, 'com.ruoyi.web.controller.system.SysDictTypeController.export()', 'POST', 1, 'admin', '研发部门', '/system/dict/type/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"2\"}', NULL, 0, NULL, '2024-10-07 10:17:33', 808);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"doctors\",\"className\":\"TtDoctors\",\"columns\":[{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生ID\",\"columnId\":32,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:26\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"医生姓名\",\"columnId\":33,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"科室\",\"columnId\":34,\"columnName\":\"department\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"department\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"联系电话\",\"columnId\":35,\"columnName\":\"phone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 10:19:25', 108);
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_doctors\"}', NULL, 0, NULL, '2024-10-07 10:19:27', 247);
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:33:17', 90);
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2026', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:33:20', 60);
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2027', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:33:22', 62);
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2028', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:33:24', 61);
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2029', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:33:26', 70);
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:33:28', 50);
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtAppointments\",\"columns\":[{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"预约ID\",\"columnId\":48,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者\",\"columnId\":49,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生\",\"columnId\":50,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentDate\",\"columnComment\":\"预约日期\",\"columnId\":51,\"columnName\":\"appointment_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:39:45', 269);
INSERT INTO `sys_oper_log` VALUES (170, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dict/type/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:40:29', 129);
INSERT INTO `sys_oper_log` VALUES (171, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"医生列表\",\"dictType\":\"tt_doctor\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:41:33', 78);
INSERT INTO `sys_oper_log` VALUES (172, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"王医生\",\"dictSort\":0,\"dictType\":\"tt_doctor\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:42:09', 80);
INSERT INTO `sys_oper_log` VALUES (173, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"李医生\",\"dictSort\":1,\"dictType\":\"tt_doctor\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:42:16', 51);
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtAppointments\",\"columns\":[{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"预约ID\",\"columnId\":48,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-07 21:39:45\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者\",\"columnId\":49,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-07 21:39:45\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生\",\"columnId\":50,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"tt_doctor\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-07 21:39:45\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentDate\",\"columnComment\":\"预约日期\",\"columnId\":51,\"columnName\":\"appointment_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:43:39', 126);
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments\"}', NULL, 0, NULL, '2024-10-07 21:43:43', 258);
INSERT INTO `sys_oper_log` VALUES (176, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"郭\",\"dictSort\":2,\"dictType\":\"tt_doctor\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-07 21:47:58', 258);
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 10:29:19', 95);
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 10:29:22', 58);
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients,tt_doctors\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 10:29:31', 156);
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"doctors\",\"className\":\"TtDoctors\",\"columns\":[{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生唯一ID\",\"columnId\":58,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"医生姓名\",\"columnId\":59,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"科室\",\"columnId\":60,\"columnName\":\"department\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"department\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"医生联系电话\",\"columnId\":61,\"columnName\":\"phone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequire', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 10:29:43', 96);
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"TtPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-09 10:29:48', 64);
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-09 10:29:52', 264);
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_doctors\"}', NULL, 0, NULL, '2024-10-09 10:29:53', 39);
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2037', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:39:41', 177);
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2038', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:39:42', 56);
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2039', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:39:44', 54);
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2040', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:39:46', 63);
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:39:47', 50);
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2036', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:39:51', 76);
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"appointment/appointments/index\",\"createTime\":\"2024-10-07 21:44:21\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"预约功能\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"appointments\",\"perms\":\"appointment:appointments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:40:00', 82);
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"appointment/appointments/index\",\"createTime\":\"2024-10-07 21:44:21\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"预约功能\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"appointments\",\"perms\":\"appointment:appointments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:40:52', 103);
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"appointment/appointments/index\",\"createTime\":\"2024-10-07 21:44:21\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"预约功能\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"appointments\",\"perms\":\"appointment:appointments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:41:22', 94);
INSERT INTO `sys_oper_log` VALUES (193, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-10-07 21:47:58\",\"default\":false,\"dictCode\":102,\"dictLabel\":\"赵医生\",\"dictSort\":2,\"dictType\":\"tt_doctor\",\"dictValue\":\"3\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:42:50', 209);
INSERT INTO `sys_oper_log` VALUES (194, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"刘医生\",\"dictSort\":3,\"dictType\":\"tt_doctor\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:43:15', 73);
INSERT INTO `sys_oper_log` VALUES (195, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"张医生\",\"dictSort\":4,\"dictType\":\"tt_doctor\",\"dictValue\":\"5\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 10:43:29', 64);
INSERT INTO `sys_oper_log` VALUES (196, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"预约状态\",\"dictType\":\"tt_appointments_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:13:22', 140);
INSERT INTO `sys_oper_log` VALUES (197, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"确定\",\"dictSort\":0,\"dictType\":\"tt_appointments_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:13:36', 295);
INSERT INTO `sys_oper_log` VALUES (198, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已取消\",\"dictSort\":1,\"dictType\":\"tt_appointments_status\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:13:45', 193);
INSERT INTO `sys_oper_log` VALUES (199, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未到\",\"dictSort\":2,\"dictType\":\"tt_appointments_status\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:13:58', 122);
INSERT INTO `sys_oper_log` VALUES (200, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-10-13 11:13:36\",\"default\":false,\"dictCode\":105,\"dictLabel\":\"已确定\",\"dictSort\":0,\"dictType\":\"tt_appointments_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:14:16', 69);
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtAppointments\",\"columns\":[{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"预约ID\",\"columnId\":48,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-07 21:43:39\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者\",\"columnId\":49,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-07 21:43:39\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生\",\"columnId\":50,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"tt_doctor\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-07 21:43:39\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentDate\",\"columnComment\":\"预约日期\",\"columnId\":51,\"columnName\":\"appointment_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:14:37', 105);
INSERT INTO `sys_oper_log` VALUES (202, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"诊所项目\",\"dictType\":\"tt_tooth\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:27:12', 89);
INSERT INTO `sys_oper_log` VALUES (203, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"补牙\",\"dictSort\":0,\"dictType\":\"tt_tooth\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:28:13', 87);
INSERT INTO `sys_oper_log` VALUES (204, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"洁牙\",\"dictSort\":1,\"dictType\":\"tt_tooth\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:28:33', 128);
INSERT INTO `sys_oper_log` VALUES (205, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"儿童看牙\",\"dictSort\":2,\"dictType\":\"tt_tooth\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:28:50', 107);
INSERT INTO `sys_oper_log` VALUES (206, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"拔牙\",\"dictSort\":3,\"dictType\":\"tt_tooth\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:29:05', 59);
INSERT INTO `sys_oper_log` VALUES (207, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"矫正牙齿\",\"dictSort\":5,\"dictType\":\"tt_tooth\",\"dictValue\":\"6\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:29:27', 64);
INSERT INTO `sys_oper_log` VALUES (208, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-10-13 11:29:27\",\"default\":false,\"dictCode\":112,\"dictLabel\":\"矫正牙齿\",\"dictSort\":4,\"dictType\":\"tt_tooth\",\"dictValue\":\"5\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:29:33', 138);
INSERT INTO `sys_oper_log` VALUES (209, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"植牙\",\"dictSort\":5,\"dictType\":\"tt_tooth\",\"dictValue\":\"6\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:29:49', 153);
INSERT INTO `sys_oper_log` VALUES (210, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"口腔检查\",\"dictSort\":6,\"dictType\":\"tt_tooth\",\"dictValue\":\"7\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:30:21', 144);
INSERT INTO `sys_oper_log` VALUES (211, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"化验\",\"dictSort\":7,\"dictType\":\"tt_tooth\",\"dictValue\":\"8\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:30:42', 83);
INSERT INTO `sys_oper_log` VALUES (212, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"口腔急诊\",\"dictSort\":8,\"dictType\":\"tt_tooth\",\"dictValue\":\"9\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 11:31:02', 142);
INSERT INTO `sys_oper_log` VALUES (213, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtAppointments\",\"columns\":[{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"预约ID\",\"columnId\":48,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-13 11:14:37\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者\",\"columnId\":49,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-13 11:14:37\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生\",\"columnId\":50,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"tt_doctor\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-13 11:14:37\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentDate\",\"columnComment\":\"预约日期\",\"columnId\":51,\"columnName\":\"appointment_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 14:44:08', 134);
INSERT INTO `sys_oper_log` VALUES (214, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments\"}', NULL, 0, NULL, '2024-10-13 14:44:10', 298);
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '研发部门', '/tool/gen/synchDb/tt_appointments', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-13 14:44:35', 136);
INSERT INTO `sys_oper_log` VALUES (216, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"心脏科会诊\",\"appointmentStatus\":\"待定\",\"appointmentTime\":\"1970-01-01 09:00:00\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"doctorName\":\"1\",\"id\":1,\"params\":{},\"patientId\":1,\"ttDoctorsDD\":{\"doctorId\":2,\"name\":\"李医生\",\"params\":{}},\"ttPatientsDD\":{\"name\":\"张伟\",\"params\":{},\"patientId\":1},\"updatedAt\":\"2024-10-13\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:09:50', 39);
INSERT INTO `sys_oper_log` VALUES (217, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"心脏科会诊\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"1970-01-01 09:00:00\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"id\":1,\"params\":{},\"patientId\":1,\"ttDoctorsDD\":{\"doctorId\":2,\"name\":\"李医生\",\"params\":{}},\"ttPatientsDD\":{\"name\":\"张伟\",\"params\":{},\"patientId\":1},\"updatedAt\":\"2024-10-13\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'UpdatedAt\' in \'class com.ruoyi.appointment.domain.TtAppointments\'', '2024-10-14 10:20:09', 17);
INSERT INTO `sys_oper_log` VALUES (218, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"心脏科会诊\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"1970-01-01 09:00:00\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"id\":1,\"params\":{},\"patientId\":1,\"ttDoctorsDD\":{\"doctorId\":2,\"name\":\"李医生\",\"params\":{}},\"ttPatientsDD\":{\"name\":\"张伟\",\"params\":{},\"patientId\":1},\"updatedAt\":\"2024-10-13\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'UpdatedAt\' in \'class com.ruoyi.appointment.domain.TtAppointments\'', '2024-10-14 10:20:14', 2);
INSERT INTO `sys_oper_log` VALUES (219, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"心脏科会诊\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"1970-01-01 09:00:00\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"id\":1,\"params\":{},\"patientId\":1,\"ttDoctorsDD\":{\"doctorId\":2,\"name\":\"李医生\",\"params\":{}},\"ttPatientsDD\":{\"name\":\"张伟\",\"params\":{},\"patientId\":1},\"updatedAt\":\"2024-10-13\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'UpdatedAt\' in \'class com.ruoyi.appointment.domain.TtAppointments\'', '2024-10-14 10:20:16', 1);
INSERT INTO `sys_oper_log` VALUES (220, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"心脏科会诊\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"1970-01-01 09:00:00\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"id\":1,\"params\":{},\"patientId\":1,\"ttDoctorsDD\":{\"doctorId\":2,\"name\":\"李医生\",\"params\":{}},\"ttPatientsDD\":{\"name\":\"张伟\",\"params\":{},\"patientId\":1},\"updatedAt\":\"2024-10-13\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'UpdatedAt\' in \'class com.ruoyi.appointment.domain.TtAppointments\'', '2024-10-14 10:20:18', 1);
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtAppointments\",\"columns\":[{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"预约ID\",\"columnId\":48,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-13 14:44:35\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者姓名\",\"columnId\":49,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-13 14:44:35\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生姓名\",\"columnId\":50,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"tt_doctor\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2024-10-13 14:44:35\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentDate\",\"columnComment\":\"预约日期\",\"columnId\":51,\"columnName\":\"appointment_date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-07 10:11:36\",\"dictType\":\"\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:32:15', 162);
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments\"}', NULL, 0, NULL, '2024-10-14 10:32:18', 45);
INSERT INTO `sys_oper_log` VALUES (223, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:33:10', 119);
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:33:12', 55);
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2033', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:33:13', 133);
INSERT INTO `sys_oper_log` VALUES (226, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2034', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:33:15', 367);
INSERT INTO `sys_oper_log` VALUES (227, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2035', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:33:16', 174);
INSERT INTO `sys_oper_log` VALUES (228, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2030', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:33:18', 87);
INSERT INTO `sys_oper_log` VALUES (229, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"3\",\"appointmentStatus\":\"待定\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"params\":{},\"patientId\":1,\"updatedAt\":\"2024-10-14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:42:05', 194);
INSERT INTO `sys_oper_log` VALUES (230, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-15 00:00:00\",\"appointmentDuration\":60,\"appointmentId\":3,\"appointmentProject\":\"拔牙\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":3,\"updatedAt\":\"2024-10-14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:42:16', 23);
INSERT INTO `sys_oper_log` VALUES (231, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-15 00:00:00\",\"appointmentDuration\":60,\"appointmentId\":3,\"appointmentProject\":\"4\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":3,\"updatedAt\":\"2024-10-14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:42:19', 24);
INSERT INTO `sys_oper_log` VALUES (232, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"3\",\"appointmentStatus\":\"3\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"params\":{},\"patientId\":1,\"updatedAt\":\"2024-10-14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:42:50', 20);
INSERT INTO `sys_oper_log` VALUES (233, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"3\",\"appointmentStatus\":\"3\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":2,\"params\":{},\"patientId\":1,\"updatedAt\":\"2024-10-14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:52:16', 12);
INSERT INTO `sys_oper_log` VALUES (234, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-20 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":4,\"appointmentProject\":\"6\",\"appointmentStatus\":\"未到\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":4,\"params\":{},\"patientId\":4,\"updatedAt\":\"2024-10-14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-14 10:52:54', 27);
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_doctors\"}', NULL, 0, NULL, '2024-10-14 11:11:18', 172);
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-14 11:11:20', 58);
INSERT INTO `sys_oper_log` VALUES (237, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":30,\"appointmentProject\":\"4\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-10-16\",\"doctorId\":1,\"params\":{},\"patientId\":9}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [G:\\新建文件夹\\若依\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( patient_id,             doctor_id,                          appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-10-15 11:26:09', 135);
INSERT INTO `sys_oper_log` VALUES (238, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-12 00:00:00\",\"appointmentDuration\":45,\"appointmentId\":2,\"appointmentProject\":\"3\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":1,\"params\":{},\"patientId\":2,\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 11:38:53', 25);
INSERT INTO `sys_oper_log` VALUES (239, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"1970-01-01\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 16:15:10', 28);
INSERT INTO `sys_oper_log` VALUES (240, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-15 00:00:00\",\"appointmentDuration\":60,\"appointmentId\":3,\"appointmentProject\":\"3\",\"appointmentStatus\":\"3\",\"appointmentTime\":\"2024-10-16\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":3,\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 16:16:27', 24);
INSERT INTO `sys_oper_log` VALUES (241, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"1970-01-23\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 16:22:11', 2);
INSERT INTO `sys_oper_log` VALUES (242, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [G:\\新建文件夹\\若依\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2024-10-15 21:41:00', 39);
INSERT INTO `sys_oper_log` VALUES (243, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-20 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":4,\"appointmentProject\":\"4\",\"appointmentStatus\":\"3\",\"appointmentTime\":\"2024-10-15\",\"createdAt\":\"2024-10-05\",\"doctorId\":4,\"params\":{},\"patientId\":4,\"ttDoctor\":{\"name\":\"赵敏\",\"params\":{}},\"ttPatient\":{\"name\":\"赵敏\",\"params\":{}},\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 21:43:41', 28);
INSERT INTO `sys_oper_log` VALUES (244, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-15 22:17:11', 310);
INSERT INTO `sys_oper_log` VALUES (245, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-09 10:29:48\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-09 10:29:48\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-09 10:29:48\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlTy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 22:20:54', 174);
INSERT INTO `sys_oper_log` VALUES (246, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments\",\"className\":\"TtDoctors\",\"columns\":[{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生唯一ID\",\"columnId\":58,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-09 10:29:42\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"医生姓名\",\"columnId\":59,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-09 10:29:42\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"科室\",\"columnId\":60,\"columnName\":\"department\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"department\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-09 10:29:42\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"医生联系电话\",\"columnId\":61,\"columnName\":\"phone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fals', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 22:21:17', 76);
INSERT INTO `sys_oper_log` VALUES (247, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-15 22:21:26', 38);
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_doctors\"}', NULL, 0, NULL, '2024-10-15 22:21:27', 43);
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"TtPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:20:53\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:20:53\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:20:53\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 22:22:31', 80);
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"doctors\",\"className\":\"TtDoctors\",\"columns\":[{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生唯一ID\",\"columnId\":58,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:21:17\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"医生姓名\",\"columnId\":59,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:21:17\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"科室\",\"columnId\":60,\"columnName\":\"department\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"department\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:21:17\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"医生联系电话\",\"columnId\":61,\"columnName\":\"phone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"in', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-15 22:22:49', 119);
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-15 22:22:52', 37);
INSERT INTO `sys_oper_log` VALUES (252, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_doctors\"}', NULL, 0, NULL, '2024-10-15 22:22:54', 38);
INSERT INTO `sys_oper_log` VALUES (253, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-16 09:31:01', 231);
INSERT INTO `sys_oper_log` VALUES (254, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-10-10\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"赵医生\",\"params\":{}},\"ttPatient\":{\"name\":\"王洋\",\"params\":{}},\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-16 10:37:36', 54);
INSERT INTO `sys_oper_log` VALUES (255, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-10-10\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"2\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-16 10:51:59', 3);
INSERT INTO `sys_oper_log` VALUES (256, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-10-10\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-16 10:52:07', 2);
INSERT INTO `sys_oper_log` VALUES (257, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '研发部门', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-10-10\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-17 22:35:57', 18);
INSERT INTO `sys_oper_log` VALUES (258, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"医生列表\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"doctors\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:17:16', 130);
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:17:29', 140);
INSERT INTO `sys_oper_log` VALUES (260, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:17:32', 53);
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:17:34', 56);
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:17:37', 61);
INSERT INTO `sys_oper_log` VALUES (263, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2053', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:17:39', 55);
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:17:43', 58);
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"患者列表\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"patients\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:18:06', 148);
INSERT INTO `sys_oper_log` VALUES (266, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:18:15', 67);
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:18:21', 74);
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:18:28', 62);
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"预约功能\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"appointments\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:19:06', 63);
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"appointment/appointments/index\",\"createTime\":\"2024-10-14 10:37:47\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"预约功能\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2062,\"path\":\"appointments\",\"perms\":\"appointment:appointments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:19:21', 57);
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patient/patients/index\",\"createTime\":\"2024-10-16 09:31:35\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2054,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"path\":\"patients\",\"perms\":\"patient:patients:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:19:29', 58);
INSERT INTO `sys_oper_log` VALUES (272, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"TtPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:22:31\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:22:31\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:22:31\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:21:21', 91);
INSERT INTO `sys_oper_log` VALUES (273, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-23 17:21:26', 308);
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2055', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:21:46', 139);
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:21:48', 78);
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2057', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:21:51', 53);
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2058', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:21:53', 56);
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:21:55', 53);
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:21:59', 63);
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2064', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:01', 155);
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2065', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:04', 92);
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2066', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:06', 67);
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2067', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:08', 65);
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2068', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:10', 105);
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2063', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:12', 102);
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2070', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:16', 55);
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2071', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:17', 77);
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2072', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:19', 51);
INSERT INTO `sys_oper_log` VALUES (289, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2073', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:22', 64);
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2074', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:25', 54);
INSERT INTO `sys_oper_log` VALUES (291, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2069', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:27:28', 49);
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"TtPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:21:21\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:21:21\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:21:21\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:29:31', 144);
INSERT INTO `sys_oper_log` VALUES (293, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"TtPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:29:31\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:29:31\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:29:31\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:30:14', 245);
INSERT INTO `sys_oper_log` VALUES (294, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 17:19:06\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"预约功能\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"appointments\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:30:39', 118);
INSERT INTO `sys_oper_log` VALUES (295, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:30:48', 78);
INSERT INTO `sys_oper_log` VALUES (296, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2076', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:31:02', 120);
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2077', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:31:05', 58);
INSERT INTO `sys_oper_log` VALUES (298, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2078', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:31:08', 62);
INSERT INTO `sys_oper_log` VALUES (299, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2079', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:31:11', 60);
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2080', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:31:14', 53);
INSERT INTO `sys_oper_log` VALUES (301, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2075', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:31:17', 53);
INSERT INTO `sys_oper_log` VALUES (302, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patients\",\"className\":\"TtPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:30:14\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:30:14\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:30:14\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:31:47', 298);
INSERT INTO `sys_oper_log` VALUES (303, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-23 17:31:53', 160);
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mainpatients\",\"className\":\"Main_Patients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:31:47\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:31:47\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:31:47\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"ht', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:56:19', 127);
INSERT INTO `sys_oper_log` VALUES (305, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2082', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:56:31', 49);
INSERT INTO `sys_oper_log` VALUES (306, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2083', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:56:33', 75);
INSERT INTO `sys_oper_log` VALUES (307, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2084', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:56:35', 211);
INSERT INTO `sys_oper_log` VALUES (308, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2085', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:56:36', 58);
INSERT INTO `sys_oper_log` VALUES (309, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2086', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:56:37', 60);
INSERT INTO `sys_oper_log` VALUES (310, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2081', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-23 17:56:40', 65);
INSERT INTO `sys_oper_log` VALUES (311, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"main_patients\"}', NULL, 0, NULL, '2024-10-23 17:57:14', 236);
INSERT INTO `sys_oper_log` VALUES (312, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"main_patients\"}', NULL, 0, NULL, '2024-10-23 18:01:42', 89);
INSERT INTO `sys_oper_log` VALUES (313, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mainpatients\",\"className\":\"MainPatients\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:56:18\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:56:18\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-23 17:56:18\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htm', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:13:16', 137);
INSERT INTO `sys_oper_log` VALUES (314, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2088', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:13:33', 115);
INSERT INTO `sys_oper_log` VALUES (315, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2089', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:13:36', 57);
INSERT INTO `sys_oper_log` VALUES (316, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2090', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:13:37', 59);
INSERT INTO `sys_oper_log` VALUES (317, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2091', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:13:39', 67);
INSERT INTO `sys_oper_log` VALUES (318, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2092', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:13:40', 60);
INSERT INTO `sys_oper_log` VALUES (319, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2087', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:13:42', 70);
INSERT INTO `sys_oper_log` VALUES (320, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-24 15:13:47', 288);
INSERT INTO `sys_oper_log` VALUES (321, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-24 15:15:47', 73);
INSERT INTO `sys_oper_log` VALUES (322, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patientlist\",\"className\":\"patientlist\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:13:16\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:13:16\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:13:16\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlT', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:26:38', 143);
INSERT INTO `sys_oper_log` VALUES (323, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"patientlists\",\"className\":\"PatientList\",\"columns\":[{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者唯一ID\",\"columnId\":65,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:26:38\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"患者姓名\",\"columnId\":66,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:26:38\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordNumber\",\"columnComment\":\"患者病历号\",\"columnId\":67,\"columnName\":\"medical_record_number\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordNumber\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:26:38\",\"usableColumn\":false},{\"capJavaField\":\"Birthday\",\"columnComment\":\"患者生日\",\"columnId\":68,\"columnName\":\"birthday\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"html', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:27:39', 160);
INSERT INTO `sys_oper_log` VALUES (324, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2094', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:27:52', 129);
INSERT INTO `sys_oper_log` VALUES (325, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2095', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:27:53', 57);
INSERT INTO `sys_oper_log` VALUES (326, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2096', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:27:55', 55);
INSERT INTO `sys_oper_log` VALUES (327, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2097', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:27:56', 246);
INSERT INTO `sys_oper_log` VALUES (328, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2098', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:27:58', 61);
INSERT INTO `sys_oper_log` VALUES (329, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2093', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:28:00', 60);
INSERT INTO `sys_oper_log` VALUES (330, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_patients\"}', NULL, 0, NULL, '2024-10-24 15:28:09', 146);
INSERT INTO `sys_oper_log` VALUES (331, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"doctorlists\",\"className\":\"DoctorList\",\"columns\":[{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生唯一ID\",\"columnId\":58,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:22:49\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"医生姓名\",\"columnId\":59,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:22:49\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"科室\",\"columnId\":60,\"columnName\":\"department\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"department\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-15 22:22:49\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"医生联系电话\",\"columnId\":61,\"columnName\":\"phone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:51:03', 205);
INSERT INTO `sys_oper_log` VALUES (332, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"doctorlists\",\"className\":\"DoctorList\",\"columns\":[{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生唯一ID\",\"columnId\":58,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:51:02\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"医生姓名\",\"columnId\":59,\"columnName\":\"name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:51:02\",\"usableColumn\":false},{\"capJavaField\":\"Department\",\"columnComment\":\"科室\",\"columnId\":60,\"columnName\":\"department\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"department\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-10-24 15:51:02\",\"usableColumn\":false},{\"capJavaField\":\"Phone\",\"columnComment\":\"医生联系电话\",\"columnId\":61,\"columnName\":\"phone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-10-09 10:29:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-24 15:51:17', 159);
INSERT INTO `sys_oper_log` VALUES (333, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_doctors\"}', NULL, 0, NULL, '2024-10-24 15:51:20', 149);
INSERT INTO `sys_oper_log` VALUES (334, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patientlist/patientlists/index\",\"createTime\":\"2024-10-24 15:28:54\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2099,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"path\":\"patientlists\",\"perms\":\"patientlist:patientlists:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-31 21:11:02', 156);
INSERT INTO `sys_oper_log` VALUES (335, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"doctorlist/doctorlists/index\",\"createTime\":\"2024-10-24 15:52:05\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2105,\"menuName\":\"医生信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2060,\"path\":\"doctorlists\",\"perms\":\"doctorlist:doctorlists:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-31 21:11:18', 105);
INSERT INTO `sys_oper_log` VALUES (336, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"appointment/appointments/index\",\"createTime\":\"2024-10-14 10:37:47\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"预约功能\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2062,\"path\":\"appointments\",\"perms\":\"appointment:appointments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-10-31 21:11:24', 60);
INSERT INTO `sys_oper_log` VALUES (337, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/menu/index\",\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"tree-table\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":102,\"menuName\":\"菜单管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"menu\",\"perms\":\"system:menu:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 14:39:48', 64);
INSERT INTO `sys_oper_log` VALUES (338, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-01 14:39:53', 37);
INSERT INTO `sys_oper_log` VALUES (339, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"1\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 14:40:13', 141);
INSERT INTO `sys_oper_log` VALUES (340, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-01 14:40:20', 5);
INSERT INTO `sys_oper_log` VALUES (341, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_billing_records\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 14:47:04', 157);
INSERT INTO `sys_oper_log` VALUES (342, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"收银台\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"bill\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 14:47:45', 58);
INSERT INTO `sys_oper_log` VALUES (343, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"bills\",\"className\":\"BillingRecords\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单ID\",\"columnId\":75,\"columnName\":\"billing_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者姓名\",\"columnId\":76,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"\",\"columnId\":77,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Amount\",\"columnComment\":\"收费金额\",\"columnId\":78,\"columnName\":\"amount\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isLi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 14:50:32', 180);
INSERT INTO `sys_oper_log` VALUES (344, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_billing_records\"}', NULL, 0, NULL, '2024-11-01 14:50:36', 366);
INSERT INTO `sys_oper_log` VALUES (345, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"bills\",\"className\":\"BillingRecords\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单ID\",\"columnId\":75,\"columnName\":\"billing_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-11-01 14:50:32\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者姓名\",\"columnId\":76,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-11-01 14:50:32\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"\",\"columnId\":77,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-11-01 14:50:32\",\"usableColumn\":false},{\"capJavaField\":\"Amount\",\"columnComment\":\"收费金额\",\"columnId\":78,\"columnName\":\"amount\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 14:47:04\",\"dictType\":\"\",\"edit\":fals', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 15:02:02', 168);
INSERT INTO `sys_oper_log` VALUES (346, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/menu/index\",\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"tree-table\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":102,\"menuName\":\"菜单管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"menu\",\"perms\":\"system:menu:list\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:01:27', 79);
INSERT INTO `sys_oper_log` VALUES (347, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1012,\"menuName\":\"菜单查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"path\":\"\",\"perms\":\"system:menu:query\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:01:30', 197);
INSERT INTO `sys_oper_log` VALUES (348, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 17:19:06\",\"icon\":\"appointment\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"预约功能\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"appointments\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:05:11', 122);
INSERT INTO `sys_oper_log` VALUES (349, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 17:18:06\",\"icon\":\"患者管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2061,\"menuName\":\"患者列表\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"patients\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:05:18', 75);
INSERT INTO `sys_oper_log` VALUES (350, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 17:17:16\",\"icon\":\"医生\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2060,\"menuName\":\"医生列表\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"doctors\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:05:24', 70);
INSERT INTO `sys_oper_log` VALUES (351, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 17:19:06\",\"icon\":\"date\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"预约功能\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"appointments\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:06:02', 76);
INSERT INTO `sys_oper_log` VALUES (352, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"patientlist/patientlists/index\",\"createTime\":\"2024-10-24 15:28:54\",\"icon\":\"患者管理\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2099,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"path\":\"patientlists\",\"perms\":\"patientlist:patientlists:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:07:23', 75);
INSERT INTO `sys_oper_log` VALUES (353, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"doctorlist/doctorlists/index\",\"createTime\":\"2024-10-24 15:52:05\",\"icon\":\"医生\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2105,\"menuName\":\"医生信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2060,\"path\":\"doctorlists\",\"perms\":\"doctorlist:doctorlists:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:07:33', 107);
INSERT INTO `sys_oper_log` VALUES (354, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"appointment/appointments/index\",\"createTime\":\"2024-10-14 10:37:47\",\"icon\":\"date-range\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"预约功能\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2062,\"path\":\"appointments\",\"perms\":\"appointment:appointments:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:07:43', 54);
INSERT INTO `sys_oper_log` VALUES (355, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-11-01 14:47:45\",\"icon\":\"cash\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2111,\"menuName\":\"收银台\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"bill\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:07:55', 72);
INSERT INTO `sys_oper_log` VALUES (356, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"bill/bills/index\",\"createTime\":\"2024-11-01 14:51:13\",\"icon\":\"cash\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2112,\"menuName\":\"收费\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2111,\"path\":\"bills\",\"perms\":\"bill:bills:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:08:02', 55);
INSERT INTO `sys_oper_log` VALUES (357, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-23 17:17:16\",\"icon\":\"6-医疗-医生\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2060,\"menuName\":\"医生列表\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"doctors\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:08:43', 96);
INSERT INTO `sys_oper_log` VALUES (358, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-05 15:46:16\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2062,2042,2043,2044,2045,2046,2047,2061,2099,2100,2101,2102,2103,2104,2060,2105,2106,2107,2108,2109,2110,2111,2112,2113,2114,2115,2116,2117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:24:16', 105);
INSERT INTO `sys_oper_log` VALUES (359, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"test\",\"params\":{},\"postIds\":[4],\"roleIds\":[2],\"sex\":\"2\",\"status\":\"0\",\"userId\":100,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-01 16:26:49', 191);
INSERT INTO `sys_oper_log` VALUES (360, '患者信息', 2, 'com.ruoyi.patientlist.controller.PatientListController.edit()', 'PUT', 1, 'admin', '研发部门', '/patientlist/patientlists', '127.0.0.1', '内网IP', '{\"address\":\"北京朝阳区幸福街道123号\",\"birthday\":\"1985-05-15\",\"createdAt\":\"2024-10-05\",\"gender\":\"男\",\"medicalRecordNumber\":7,\"name\":\"张伟\",\"params\":{},\"patientId\":1,\"phone\":\"123-456-7890\",\"remarks\":\"123\",\"updatedAt\":\"2024-10-24\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-05 20:31:54', 29);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-10-05 15:46:15', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-10-05 15:46:15', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-10-05 15:46:15', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-10-05 15:46:15', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-10-05 15:46:16', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-10-05 15:46:16', 'admin', '2024-11-01 16:24:16', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2042);
INSERT INTO `sys_role_menu` VALUES (2, 2043);
INSERT INTO `sys_role_menu` VALUES (2, 2044);
INSERT INTO `sys_role_menu` VALUES (2, 2045);
INSERT INTO `sys_role_menu` VALUES (2, 2046);
INSERT INTO `sys_role_menu` VALUES (2, 2047);
INSERT INTO `sys_role_menu` VALUES (2, 2060);
INSERT INTO `sys_role_menu` VALUES (2, 2061);
INSERT INTO `sys_role_menu` VALUES (2, 2062);
INSERT INTO `sys_role_menu` VALUES (2, 2099);
INSERT INTO `sys_role_menu` VALUES (2, 2100);
INSERT INTO `sys_role_menu` VALUES (2, 2101);
INSERT INTO `sys_role_menu` VALUES (2, 2102);
INSERT INTO `sys_role_menu` VALUES (2, 2103);
INSERT INTO `sys_role_menu` VALUES (2, 2104);
INSERT INTO `sys_role_menu` VALUES (2, 2105);
INSERT INTO `sys_role_menu` VALUES (2, 2106);
INSERT INTO `sys_role_menu` VALUES (2, 2107);
INSERT INTO `sys_role_menu` VALUES (2, 2108);
INSERT INTO `sys_role_menu` VALUES (2, 2109);
INSERT INTO `sys_role_menu` VALUES (2, 2110);
INSERT INTO `sys_role_menu` VALUES (2, 2111);
INSERT INTO `sys_role_menu` VALUES (2, 2112);
INSERT INTO `sys_role_menu` VALUES (2, 2113);
INSERT INTO `sys_role_menu` VALUES (2, 2114);
INSERT INTO `sys_role_menu` VALUES (2, 2115);
INSERT INTO `sys_role_menu` VALUES (2, 2116);
INSERT INTO `sys_role_menu` VALUES (2, 2117);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-05 20:31:30', 'admin', '2024-10-05 15:46:15', '', '2024-11-05 20:31:30', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-05 15:46:15', 'admin', '2024-10-05 15:46:15', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, 100, 'test', 'test', '00', '', '', '2', '', '$2a$10$/NIAAJu1SxRBUsCNvALkuO.fPkPNMFZQSuVNe6qjP6r9ReocXAT7q', '0', '0', '127.0.0.1', '2024-11-04 10:22:26', 'admin', '2024-11-01 16:26:49', '', '2024-11-04 10:22:25', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);

-- ----------------------------
-- Table structure for tt_action_logs
-- ----------------------------
DROP TABLE IF EXISTS `tt_action_logs`;
CREATE TABLE `tt_action_logs`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志唯一ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '操作用户ID，关联用户表',
  `action_type` enum('CREATE','UPDATE','DELETE','READ') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作类型',
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '操作的表名',
  `record_id` bigint(20) NULL DEFAULT NULL COMMENT '操作的记录ID',
  `action_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '操作描述',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '操作日志表，记录用户在系统中的操作' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_action_logs
-- ----------------------------
INSERT INTO `tt_action_logs` VALUES (1, 1, 'CREATE', 'patients', 1, '2024-10-05 09:51:34', '添加患者信息');
INSERT INTO `tt_action_logs` VALUES (2, 2, 'UPDATE', 'doctors', 1, '2024-10-05 09:51:34', '更新医生信息');
INSERT INTO `tt_action_logs` VALUES (3, 3, 'DELETE', 'appointments', 2, '2024-10-05 09:51:34', '删除预约记录');
INSERT INTO `tt_action_logs` VALUES (4, 4, 'READ', 'medical_visits', 3, '2024-10-05 09:51:34', '查看就诊记录');
INSERT INTO `tt_action_logs` VALUES (5, 5, 'CREATE', 'billing_records', 4, '2024-10-05 09:51:34', '添加收费记录');

-- ----------------------------
-- Table structure for tt_appointments
-- ----------------------------
DROP TABLE IF EXISTS `tt_appointments`;
CREATE TABLE `tt_appointments`  (
  `appointment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint(20) NULL DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint(20) NULL DEFAULT NULL COMMENT '医生ID，关联医生表',
  `appointment_date` date NOT NULL COMMENT '预约日期',
  `appointment_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间',
  `appointment_duration` int(11) NULL DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE INDEX `doctor_id`(`doctor_id`, `appointment_date`, `appointment_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  INDEX `fk_patient_appointment`(`patient_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '预约表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_appointments
-- ----------------------------
INSERT INTO `tt_appointments` VALUES (1, 1, 3, '2024-10-10', '2024-10-10 00:00:00', 30, '1', '2', '2024-10-05 00:00:00', '2024-10-15 00:00:00');
INSERT INTO `tt_appointments` VALUES (2, 2, 1, '2024-10-12', '2024-10-15 00:00:00', 45, '3', '1', '2024-10-05 00:00:00', '2024-10-15 00:00:00');
INSERT INTO `tt_appointments` VALUES (3, 3, 3, '2024-10-15', '2024-10-15 01:00:00', 60, '3', '3', '2024-10-05 00:00:00', '2024-10-15 16:21:45');
INSERT INTO `tt_appointments` VALUES (4, 4, 4, '2024-10-20', '2024-10-15 00:00:00', 30, '4', '3', '2024-10-05 00:00:00', '2024-10-15 00:00:00');
INSERT INTO `tt_appointments` VALUES (5, 5, 5, '2024-10-25', '2024-10-15 15:30:00', 30, '6', '1', '2024-10-05 09:51:34', '2024-10-15 11:37:21');

-- ----------------------------
-- Table structure for tt_billing_records
-- ----------------------------
DROP TABLE IF EXISTS `tt_billing_records`;
CREATE TABLE `tt_billing_records`  (
  `billing_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收费记录唯一ID',
  `patient_id` bigint(20) NULL DEFAULT NULL COMMENT '患者ID，关联患者表',
  `amount` decimal(10, 2) NOT NULL COMMENT '收费金额',
  `payment_method` enum('CASH','CREDIT_CARD','INSURANCE','ONLINE') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '支付方式',
  `payment_status` enum('PENDING','COMPLETED','FAILED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'PENDING' COMMENT '支付状态',
  `payment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '支付时间',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收费记录创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '收费记录更新时间',
  PRIMARY KEY (`billing_id`) USING BTREE,
  INDEX `fk_patient_billing`(`patient_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '收费记录表，记录患者的付款信息' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of tt_billing_records
-- ----------------------------
INSERT INTO `tt_billing_records` VALUES (1, 1, 200.00, 'CREDIT_CARD', 'COMPLETED', '2024-10-05 09:51:34', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_billing_records` VALUES (2, 2, 300.00, 'ONLINE', 'PENDING', '2024-10-05 09:51:34', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_billing_records` VALUES (3, 3, 150.00, 'CASH', 'FAILED', '2024-10-05 09:51:34', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_billing_records` VALUES (4, 4, 100.00, 'INSURANCE', 'COMPLETED', '2024-10-05 09:51:34', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_billing_records` VALUES (5, 5, 250.00, 'CREDIT_CARD', 'COMPLETED', '2024-10-05 09:51:34', '2024-10-05 09:51:34', '2024-10-05 09:51:34');

-- ----------------------------
-- Table structure for tt_doctors
-- ----------------------------
DROP TABLE IF EXISTS `tt_doctors`;
CREATE TABLE `tt_doctors`  (
  `doctor_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '医生唯一ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '医生姓名',
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '科室',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '医生联系电话',
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '职位（如主治医师等）',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`doctor_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '医生信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_doctors
-- ----------------------------
INSERT INTO `tt_doctors` VALUES (1, '王医生', '心脏科', '111-222-3333', '主治医生', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_doctors` VALUES (2, '李医生', '神经科', '444-555-6666', '主任医师', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_doctors` VALUES (3, '赵医生', '儿科', '777-888-9999', '会诊医生', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_doctors` VALUES (4, '刘医生', '皮肤科', '123-123-1234', '住院医生', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_doctors` VALUES (5, '张医生', '眼科', '222-333-4444', '主治医生', '2024-10-05 09:51:34', '2024-10-05 09:51:34');

-- ----------------------------
-- Table structure for tt_emr
-- ----------------------------
DROP TABLE IF EXISTS `tt_emr`;
CREATE TABLE `tt_emr`  (
  `emr_id` bigint(20) NOT NULL COMMENT '电子病历id',
  `patient_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '患者姓名',
  `appointment_id` bigint(20) NOT NULL COMMENT '预约id',
  `doctor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '医生姓名',
  `bill_id` bigint(20) NOT NULL COMMENT '账单id',
  `maincase` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '主诉',
  `current_medical_history` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '现在病史',
  `treatment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '治疗方式',
  `clinical_results` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '治疗结果',
  `created_time` datetime NOT NULL COMMENT '病历创建时间',
  `updated_time` datetime NOT NULL COMMENT '更新时间',
  `emr_statue` enum('未诊断','已诊断') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '未诊断' COMMENT '诊断状态',
  `medical_record_number` bigint(20) NULL DEFAULT NULL COMMENT '患者唯一病历号',
  PRIMARY KEY (`emr_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tt_emr
-- ----------------------------

-- ----------------------------
-- Table structure for tt_follow_ups
-- ----------------------------
DROP TABLE IF EXISTS `tt_follow_ups`;
CREATE TABLE `tt_follow_ups`  (
  `follow_up_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '随访记录ID',
  `patient_id` bigint(20) NULL DEFAULT NULL COMMENT '患者ID，关联患者表',
  `visit_id` bigint(20) NULL DEFAULT NULL COMMENT '就诊记录ID，关联就诊表',
  `follow_up_date` timestamp NULL DEFAULT NULL COMMENT '随访日期',
  `follow_up_notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '随访备注',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`follow_up_id`) USING BTREE,
  INDEX `fk_patient_follow_up`(`patient_id`) USING BTREE,
  INDEX `fk_visit_follow_up`(`visit_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '随访记录表，记录患者随访信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_follow_ups
-- ----------------------------
INSERT INTO `tt_follow_ups` VALUES (1, 1, 1, '2024-11-10 10:00:00', '三个月后复诊。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_follow_ups` VALUES (2, 2, 2, '2024-12-12 11:30:00', '需重新预约。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_follow_ups` VALUES (3, 3, 3, '2024-11-15 14:00:00', '需注意体温变化。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_follow_ups` VALUES (4, 4, 4, '2024-10-25 10:00:00', '请定期复查。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');

-- ----------------------------
-- Table structure for tt_inventory
-- ----------------------------
DROP TABLE IF EXISTS `tt_inventory`;
CREATE TABLE `tt_inventory`  (
  `item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '物品ID',
  `item_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '物品名称',
  `item_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '物品描述',
  `quantity` int(11) NOT NULL COMMENT '库存数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `supplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商',
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商产地',
  `expiration_date` date NULL DEFAULT NULL COMMENT '有效期',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '物品管理表，记录库存的物品信息及供应商产地' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_inventory
-- ----------------------------
INSERT INTO `tt_inventory` VALUES (1, '药品A', '心脏病药物', 50, 100.00, '药品公司A', '中国', '2025-12-31', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory` VALUES (2, '药品B', '抗生素', 30, 150.00, '药品公司B', '中国', '2025-06-30', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory` VALUES (3, '药品C', '止痛药', 40, 75.00, '药品公司C', '中国', '2026-01-15', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory` VALUES (4, '药品D', '维生素补充剂', 100, 50.00, '药品公司D', '中国', '2026-03-01', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory` VALUES (5, '药品E', '抗过敏药物', 20, 200.00, '药品公司E', '中国', '2024-11-30', '2024-10-05 09:51:34', '2024-10-05 09:51:34');

-- ----------------------------
-- Table structure for tt_medical_visits
-- ----------------------------
DROP TABLE IF EXISTS `tt_medical_visits`;
CREATE TABLE `tt_medical_visits`  (
  `visit_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '就诊记录唯一ID',
  `patient_id` bigint(20) NOT NULL COMMENT '患者ID，关联患者表',
  `visit_date` timestamp NULL DEFAULT NULL COMMENT '就诊时间',
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '科目',
  `doctor_id` bigint(20) NOT NULL COMMENT '医生ID，关联医生表',
  `appointment_id` bigint(20) NULL DEFAULT NULL COMMENT '预约ID，关联预约表',
  `appointment_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '预约项目',
  `visit_status` enum('COMPLETED','MISSED') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'COMPLETED' COMMENT '就诊状态',
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '就诊备注',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`visit_id`) USING BTREE,
  INDEX `fk_patient_visit`(`patient_id` ASC) USING BTREE,
  INDEX `fk_doctor_visit`(`doctor_id` ASC) USING BTREE,
  INDEX `fk_appointment`(`appointment_id` ASC) USING BTREE,
  CONSTRAINT `fk_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `tt_appointments` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '诊疗记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_medical_visits
-- ----------------------------
INSERT INTO `tt_medical_visits` VALUES (1, 1, '2024-10-10 09:00:00', '心脏科', 1, 1, '心脏科会诊', 'COMPLETED', '建议三个月后复诊。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_medical_visits` VALUES (2, 2, '2024-10-12 11:30:00', '神经科', 2, 2, '神经科检查', 'MISSED', '患者未出席。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_medical_visits` VALUES (3, 3, '2024-10-15 14:00:00', '儿科', 3, 3, '儿科体检', 'COMPLETED', '已完成常规疫苗接种。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_medical_visits` VALUES (4, 4, '2024-10-20 10:00:00', '皮肤科', 4, 4, '皮肤科筛查', 'COMPLETED', '确诊皮肤过敏，开具药膏。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_medical_visits` VALUES (5, 5, '2024-10-25 15:30:00', '眼科', 5, 5, '眼科检查', 'COMPLETED', '视力正常，无其他问题。', '2024-10-05 09:51:34', '2024-10-05 09:51:34');

-- ----------------------------
-- Table structure for tt_patients
-- ----------------------------
DROP TABLE IF EXISTS `tt_patients`;
CREATE TABLE `tt_patients`  (
  `patient_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '患者唯一ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '患者姓名',
  `medical_record_number` bigint(20) NOT NULL COMMENT '患者病历号',
  `birthday` date NULL DEFAULT NULL COMMENT '患者生日',
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '患者性别',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '患者联系电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '患者地址',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '备注',
  `past_medical_history` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '过去病史',
  `allergens` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '过敏源',
  `diagnosis_statue` enum('初诊','复诊') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '初诊' COMMENT '是否初诊',
  PRIMARY KEY (`patient_id`) USING BTREE,
  UNIQUE INDEX `medical_record_number`(`medical_record_number`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '患者信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_patients
-- ----------------------------
INSERT INTO `tt_patients` VALUES (1, '张伟', 7, '1985-05-15', '男', '123-456-7890', '北京朝阳区幸福街道123号', '2024-10-05 00:00:00', '2024-10-24 00:00:00', '123', NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (2, '李丽', 8, '1990-07-22', '女', '987-654-3210', '上海浦东新区光明路456号', '2024-10-05 09:51:34', '2024-10-24 16:08:29', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (3, '王强', 9, '1978-02-11', '男', '555-123-4567', '广州天河区体育东路789号', '2024-10-05 09:51:34', '2024-10-24 16:08:34', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (4, '赵敏', 10, '2000-12-30', '女', '444-222-1111', '深圳南山区科技园101号', '2024-10-05 09:51:34', '2024-10-24 16:08:37', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (5, '刘洋', 11, '2005-09-18', '男', '666-555-4444', '武汉洪山区珞喻路303号', '2024-10-05 09:51:34', '2024-10-24 16:08:39', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (7, '根号三', 12, '2004-04-17', '男', '13111488526', NULL, '2024-10-05 18:00:54', '2024-10-24 16:08:42', NULL, NULL, NULL, '初诊');

SET FOREIGN_KEY_CHECKS = 1;
