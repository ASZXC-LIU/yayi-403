/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : yayi-ruoyi

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 18/11/2024 22:07:24
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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (7, 'tt_appointments', '预约表', NULL, NULL, 'TtAppointments', 'crud', 'element-plus', 'com.ruoyi.appointment', 'appointment', 'appointments', '预约功能', 'ruoyi', '0', '/', '{\"parentMenuId\":3}', 'admin', '2024-10-07 10:11:36', '', '2024-10-14 10:32:14', NULL);
INSERT INTO `gen_table` VALUES (8, 'tt_doctors', '医生信息表', NULL, NULL, 'DoctorList', 'crud', 'element-plus', 'com.ruoyi.doctorlist', 'doctorlist', 'doctorlists', '医生信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2060}', 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:51:17', NULL);
INSERT INTO `gen_table` VALUES (9, 'tt_patients', '患者信息表', NULL, NULL, 'PatientList', 'crud', 'element-plus', 'com.ruoyi.patientlist', 'patientlist', 'patientlists', '患者信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2061}', 'admin', '2024-10-09 10:29:30', '', '2024-10-24 15:27:39', NULL);
INSERT INTO `gen_table` VALUES (10, 'tt_billing_records', '收费记录表，记录患者的付款信息', NULL, NULL, 'BillingRecords', 'crud', 'element-plus', 'com.ruoyi.bill', 'bill', 'bills', '收费', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2111\"}', 'admin', '2024-11-01 14:47:04', '', '2024-11-01 15:02:02', NULL);
INSERT INTO `gen_table` VALUES (11, 'tt_inventory_medicine', '药品表，记录药品基本信息', NULL, NULL, 'InventoryMedicine', 'crud', 'element-plus', 'com.ruoyi.inventory', 'medicine', 'medicine', '药品库存', '刘航', '0', '/', '{\"parentMenuId\":\"2118\"}', 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51', NULL);
INSERT INTO `gen_table` VALUES (13, 'tt_inventory_tools', '工具库存表', NULL, NULL, 'InventoryTools', 'crud', 'element-plus', 'com.ruoyi.inventory', 'inventorytool', 'inventorytools', '工具库存', '刘航', '0', '/', '{\"parentMenuId\":2118}', 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52', NULL);
INSERT INTO `gen_table` VALUES (23, 'tt_inventory_inbound', '入库表', NULL, NULL, 'InventoryInbound', 'crud', 'element-plus', 'com.ruoyi.inventory', 'inbound', 'inbounds', '入库工单', '刘航', '0', '/', '{\"parentMenuId\":2118}', 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10', NULL);
INSERT INTO `gen_table` VALUES (24, 'tt_inventory_offsetting', '对冲记录表', NULL, NULL, 'InventoryOffsetting', 'crud', 'element-plus', 'com.ruoyi.inventory', 'offsetting', 'offsettings', '对冲记录工单', '刘航', '0', '/', '{\"parentMenuId\":2118}', 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14', NULL);
INSERT INTO `gen_table` VALUES (25, 'tt_inventory_outbound', '出库表', NULL, NULL, 'InventoryOutbound', 'crud', 'element-plus', 'com.ruoyi.inventory', 'outbound', 'outbounds', '出库工单', '刘航', '0', '/', '{\"parentMenuId\":2118}', 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27', NULL);
INSERT INTO `gen_table` VALUES (26, 'tt_billing', '账单管理', NULL, NULL, 'Ttbilling', 'crud', 'element-plus', 'com.ruoyi.billing', 'billing', 'billing', '账单管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2111\"}', 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37', NULL);
INSERT INTO `gen_table` VALUES (27, 'tt_appointments_test', '预约测试表', NULL, NULL, 'TtAppointmentsTest', 'crud', 'element-plus', 'com.ruoyi.appointments_test', 'appointments_test', 'appointments_test', '预约测试模块', 'ruoyi', '0', '/', '{\"parentMenuId\":2062}', 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 268 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `gen_table_column` VALUES (84, 11, 'medicine_id', '药品号', 'bigint(20)', 'Long', 'medicineId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (85, 11, 'medicine_name', '药品名称', 'varchar(100)', 'String', 'medicineName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (86, 11, 'medicine_description', '药品描述', 'text', 'String', 'medicineDescription', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 3, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (87, 11, 'supplier', '供应商', 'varchar(100)', 'String', 'supplier', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (88, 11, 'origin', '供应商产地', 'varchar(100)', 'String', 'origin', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (89, 11, 'purchase_price', '进价', 'decimal(10,0)', 'Long', 'purchasePrice', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (90, 11, 'selling_price', '售价', 'decimal(10,0)', 'Long', 'sellingPrice', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (91, 11, 'quantity', '库存数量', 'bigint(20)', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (92, 11, 'unit', '计量单位', 'char(20)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (93, 11, 'manufacture_date', '生产日期', 'date', 'Date', 'manufactureDate', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 10, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (94, 11, 'shelf_life', '保质期', 'int(11)', 'Long', 'shelfLife', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (95, 11, 'expiration_date', '过期日期', 'date', 'Date', 'expirationDate', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 12, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (96, 11, 'created_at', '创建时间', 'datetime', 'Date', 'createdAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 13, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (97, 11, 'updated_at', '更新时间', 'datetime', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 14, 'admin', '2024-11-13 13:03:52', '', '2024-11-13 13:27:51');
INSERT INTO `gen_table_column` VALUES (99, 13, 'tools_id', '工具ID', 'bigint(20)', 'Long', 'toolsId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (100, 13, 'tools_name', '工具名称', 'varchar(100)', 'String', 'toolsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (101, 13, 'tools_description', '工具描述', 'text', 'String', 'toolsDescription', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 3, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (102, 13, 'supplier', '供应商', 'varchar(100)', 'String', 'supplier', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (103, 13, 'origin', '供应商产地', 'varchar(100)', 'String', 'origin', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (104, 13, 'purchase_price', '进价', 'decimal(10,0)', 'Long', 'purchasePrice', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (105, 13, 'selling_price', '售价', 'decimal(10,0)', 'Long', 'sellingPrice', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (106, 13, 'quantity', '库存数量', 'bigint(20)', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (107, 13, 'unit', '工具的单位', 'char(20)', 'String', 'unit', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (108, 13, 'manufacture_date', '生产日期', 'date', 'Date', 'manufactureDate', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 10, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (109, 13, 'shelf_life', '保质期', 'int(11)', 'Long', 'shelfLife', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (110, 13, 'expiration_date', '过期日期', 'date', 'Date', 'expirationDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (111, 13, 'created_at', '创建时间', 'datetime', 'Date', 'createdAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 13, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (112, 13, 'updated_at', '更新时间', 'datetime', 'Date', 'updatedAt', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'datetime', '', 14, 'admin', '2024-11-13 13:25:01', '', '2024-11-13 13:31:52');
INSERT INTO `gen_table_column` VALUES (215, 23, 'inbound_id', '工单ID', 'bigint(20)', 'Long', 'inboundId', '1', '1', '0', '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (216, 23, 'item_name', '入库货物', 'char(255)', 'String', 'itemName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (217, 23, 'responsible', '负责人', 'char(30)', 'String', 'responsible', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (218, 23, 'supplier', '供应来源', 'varchar(255)', 'String', 'supplier', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (219, 23, 'quantity', '入库数量', 'bigint(20)', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (220, 23, 'unit', '剂量单位', 'char(20)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (221, 23, 'purchase_price', '进价（最小单位）', 'decimal(10,0)', 'Long', 'purchasePrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (222, 23, 'freight', '运费', 'decimal(10,0)', 'Long', 'freight', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (223, 23, 'spending', '总开销', 'decimal(10,0)', 'Long', 'spending', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (224, 23, 'inbound_time', '入库时间', 'date', 'Date', 'inboundTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (225, 23, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, '1', NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (226, 23, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', '1', NULL, 'EQ', 'datetime', '', 12, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:37:10');
INSERT INTO `gen_table_column` VALUES (227, 24, 'offsetting_id', '对冲工单id', 'bigint(20)', 'Long', 'offsettingId', '1', '1', '0', '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (228, 24, 'item_name', '物品名字', 'char(255)', 'String', 'itemName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (229, 24, 'responsible', '负责人', 'char(30)', 'String', 'responsible', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (230, 24, 'reason', '对冲原因', 'varchar(300)', 'String', 'reason', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (231, 24, 'quantity', '对冲数量', 'bigint(20)', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (232, 24, 'unit', '剂量单位', 'char(20)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (233, 24, 'expenses_reason', '开销原因', 'text', 'String', 'expensesReason', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 7, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (234, 24, 'spending', '开销', 'decimal(10,0)', 'Long', 'spending', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (235, 24, 'offsetting_time', '对冲时间', 'date', 'Date', 'offsettingTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (236, 24, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (237, 24, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', '1', NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:42:14');
INSERT INTO `gen_table_column` VALUES (238, 25, 'outbound_id', '入库工单id', 'bigint(20)', 'Long', 'outboundId', '1', '1', '0', '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (239, 25, 'item_name', '物品名字', 'char(255)', 'String', 'itemName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (240, 25, 'responsible', '负责人', 'char(30)', 'String', 'responsible', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (241, 25, 'reason', '出库原因', 'varchar(300)', 'String', 'reason', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (242, 25, 'quantity', '出库数量', 'bigint(20)', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (243, 25, 'unit', '剂量单位', 'char(20)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (244, 25, 'expenses_reason', '开销原因', 'text', 'String', 'expensesReason', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 7, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (245, 25, 'spending', '总开销', 'decimal(10,0)', 'Long', 'spending', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (246, 25, 'outbound_time', '出库时间', 'date', 'Date', 'outboundTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (247, 25, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', NULL, '1', NULL, 'EQ', 'datetime', '', 10, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (248, 25, 'update_time', '修改时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', '1', NULL, 'EQ', 'datetime', '', 11, 'admin', '2024-11-13 15:35:23', '', '2024-11-13 15:46:27');
INSERT INTO `gen_table_column` VALUES (249, 26, 'billing_id', '账单id', 'int(11)', 'Long', 'billingId', '1', '1', '0', '0', '0', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (250, 26, 'patient_name', '患者姓名', 'varchar(20)', 'String', 'patientName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (251, 26, 'doctor_name', '就诊医生', 'varchar(20)', 'String', 'doctorName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (252, 26, 'billing_date', '账单日期', 'datetime', 'Date', 'billingDate', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 4, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (253, 26, 'total_amount', '金额', 'decimal(10,2)', 'BigDecimal', 'totalAmount', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (254, 26, 'payment_status', '支付状态', 'varchar(20)', 'String', 'paymentStatus', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'select', 'tt_paystatus', 6, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (255, 26, 'payment_method', '支付方式', 'varchar(20)', 'String', 'paymentMethod', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', 'tt_paymethod', 7, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (256, 26, 'receiver', '见证人', 'varchar(50)', 'String', 'receiver', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (257, 26, 'notes', '备注', 'text', 'String', 'notes', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 9, 'admin', '2024-11-15 16:02:44', '', '2024-11-16 16:17:37');
INSERT INTO `gen_table_column` VALUES (258, 27, 'appointment_id', '预约唯一ID', 'bigint(20)', 'Long', 'appointmentId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (259, 27, 'patient_id', '患者ID，关联患者表', 'bigint(20)', 'Long', 'patientId', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (260, 27, 'doctor_id', '医生ID，关联医生表', 'bigint(20)', 'Long', 'doctorId', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (261, 27, 'appointment_start_time', '预约开始时间', 'datetime', 'Date', 'appointmentStartTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (262, 27, 'appointment_end_time', '预约终止时间', 'datetime', 'Date', 'appointmentEndTime', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (263, 27, 'appointment_duration', '预约时长（分钟）', 'int(11)', 'Long', 'appointmentDuration', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (264, 27, 'appointment_project', '预约的项目', 'varchar(100)', 'String', 'appointmentProject', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (265, 27, 'appointment_status', '预约状态', 'varchar(20)', 'String', 'appointmentStatus', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'radio', '', 8, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (266, 27, 'created_at', '预约创建时间', 'timestamp', 'Date', 'createdAt', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 9, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');
INSERT INTO `gen_table_column` VALUES (267, 27, 'updated_at', '预约更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'datetime', '', 10, 'admin', '2024-11-18 16:56:01', '', '2024-11-18 16:58:35');

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-10-05 15:46:19', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2024-10-05 15:46:19', 'admin', '2024-11-13 16:19:48', '是否开启注册用户功能（true开启，false关闭）');
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
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '牙医诊所', 0, '', '', '', '0', '0', 'admin', '2024-10-05 15:46:15', 'admin', '2024-11-13 16:16:42');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-10-05 15:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2024-10-05 15:46:15', '', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_dict_data` VALUES (117, 0, '已支付', '1', 'tt_paystatus', NULL, 'default', 'N', '0', 'admin', '2024-11-15 16:08:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 1, '未支付', '2', 'tt_paystatus', NULL, 'default', 'N', '0', 'admin', '2024-11-15 16:08:14', 'admin', '2024-11-15 16:08:18', NULL);
INSERT INTO `sys_dict_data` VALUES (119, 2, '已取消', '3', 'tt_paystatus', NULL, 'default', 'N', '0', 'admin', '2024-11-15 16:08:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 0, '微信', '1', 'tt_paymethod', NULL, 'default', 'N', '0', 'admin', '2024-11-15 16:11:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 1, '支付宝', '2', 'tt_paymethod', NULL, 'default', 'N', '0', 'admin', '2024-11-15 16:11:53', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 2, '现金', '3', 'tt_paymethod', NULL, 'default', 'N', '0', 'admin', '2024-11-15 16:12:05', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 3, '多种方式支付', '4', 'tt_paymethod', NULL, 'default', 'N', '0', 'admin', '2024-11-15 16:12:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 4, '未支付', '5', 'tt_paymethod', NULL, 'default', 'N', '0', 'admin', '2024-11-16 16:13:26', '', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_dict_type` VALUES (104, '支付状态', 'tt_paystatus', '0', 'admin', '2024-11-15 16:07:53', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (105, '支付方式', 'tt_paymethod', '0', 'admin', '2024-11-15 16:11:33', '', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 13:01:19');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 13:13:07');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 13:35:45');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 14:51:09');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 15:44:37');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-13 16:18:51');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 16:19:28');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-13 16:19:59');
INSERT INTO `sys_logininfor` VALUES (160, 'test', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '用户不存在/密码错误', '2024-11-13 16:20:21');
INSERT INTO `sys_logininfor` VALUES (161, 'test', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-13 16:20:25');
INSERT INTO `sys_logininfor` VALUES (162, 'test', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-13 16:20:28');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 16:20:35');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-13 21:18:37');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 14:51:11');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-14 15:46:17');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 15:54:36');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 16:34:09');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 16:34:12');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 16:36:45');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 16:36:49');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 16:40:55');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 16:40:57');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 17:06:36');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 17:06:39');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 17:29:35');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 17:35:33');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 19:58:05');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 20:00:33');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 20:03:05');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 20:22:10');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 20:22:16');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 21:02:03');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 21:02:09');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 21:53:52');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 21:53:54');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 22:16:31');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 22:16:36');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-15 22:38:26');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-15 22:38:29');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-16 14:56:39');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-16 22:08:25');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-17 16:43:28');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-17 16:45:58');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-17 16:46:01');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-17 17:10:24');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-17 17:10:28');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-17 17:13:49');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-17 17:13:53');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-17 17:30:07');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-17 17:30:10');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 10:09:44');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 10:32:12');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 10:32:16');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 16:11:48');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 16:15:45');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 16:15:48');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 16:38:59');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 16:39:01');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 16:55:12');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 16:55:15');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 17:32:40');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 17:32:44');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 17:42:14');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码错误', '2024-11-18 17:43:06');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 17:43:10');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-18 17:53:10');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 17:53:14');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-18 21:25:40');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2199 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 6, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-10-05 15:46:16', 'admin', '2024-10-23 17:30:48', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 8, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-10-05 15:46:16', 'admin', '2024-11-13 21:20:42', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 7, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-10-05 15:46:16', 'admin', '2024-11-13 21:20:33', '系统工具目录');
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
INSERT INTO `sys_menu` VALUES (2111, '收银台', 0, 4, 'bill', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'cash', 'admin', '2024-11-01 14:47:45', 'admin', '2024-11-13 21:20:16', '');
INSERT INTO `sys_menu` VALUES (2118, '库存管理', 0, 5, 'inventory', NULL, NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-11-13 13:03:29', 'admin', '2024-11-13 21:20:24', '');
INSERT INTO `sys_menu` VALUES (2119, '药品库存', 2118, 1, 'medicine', 'medicine/medicine/index', NULL, '', 1, 0, 'C', '0', '0', 'medicine:medicine:list', '#', 'admin', '2024-11-13 13:09:58', '', NULL, '药品库存菜单');
INSERT INTO `sys_menu` VALUES (2120, '药品库存查询', 2119, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'medicine:medicine:query', '#', 'admin', '2024-11-13 13:09:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2121, '药品库存新增', 2119, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'medicine:medicine:add', '#', 'admin', '2024-11-13 13:09:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2122, '药品库存修改', 2119, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'medicine:medicine:edit', '#', 'admin', '2024-11-13 13:09:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2123, '药品库存删除', 2119, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'medicine:medicine:remove', '#', 'admin', '2024-11-13 13:09:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2124, '药品库存导出', 2119, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'medicine:medicine:export', '#', 'admin', '2024-11-13 13:09:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2131, '工具库存', 2118, 2, 'inventorytools', 'inventorytool/inventorytools/index', NULL, '', 1, 0, 'C', '0', '0', 'inventorytool:inventorytools:list', '#', 'admin', '2024-11-13 13:32:35', 'admin', '2024-11-13 21:19:18', '工具库存菜单');
INSERT INTO `sys_menu` VALUES (2132, '工具库存查询', 2131, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inventorytool:inventorytools:query', '#', 'admin', '2024-11-13 13:32:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2133, '工具库存新增', 2131, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inventorytool:inventorytools:add', '#', 'admin', '2024-11-13 13:32:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2134, '工具库存修改', 2131, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inventorytool:inventorytools:edit', '#', 'admin', '2024-11-13 13:32:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2135, '工具库存删除', 2131, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inventorytool:inventorytools:remove', '#', 'admin', '2024-11-13 13:32:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2136, '工具库存导出', 2131, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inventorytool:inventorytools:export', '#', 'admin', '2024-11-13 13:32:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2161, '入库工单', 2118, 3, 'inbounds', 'inbound/inbounds/index', NULL, '', 1, 0, 'C', '0', '0', 'inbound:inbounds:list', '#', 'admin', '2024-11-13 15:37:34', 'admin', '2024-11-13 21:19:23', '入库工单菜单');
INSERT INTO `sys_menu` VALUES (2162, '入库工单查询', 2161, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inbound:inbounds:query', '#', 'admin', '2024-11-13 15:37:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2163, '入库工单新增', 2161, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inbound:inbounds:add', '#', 'admin', '2024-11-13 15:37:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2164, '入库工单修改', 2161, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inbound:inbounds:edit', '#', 'admin', '2024-11-13 15:37:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2165, '入库工单删除', 2161, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inbound:inbounds:remove', '#', 'admin', '2024-11-13 15:37:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2166, '入库工单导出', 2161, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'inbound:inbounds:export', '#', 'admin', '2024-11-13 15:37:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2167, '对冲记录工单', 2118, 5, 'offsettings', 'offsetting/offsettings/index', NULL, '', 1, 0, 'C', '0', '0', 'offsetting:offsettings:list', '#', 'admin', '2024-11-13 15:42:34', 'admin', '2024-11-13 21:19:29', '对冲记录工单菜单');
INSERT INTO `sys_menu` VALUES (2168, '对冲记录工单查询', 2167, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'offsetting:offsettings:query', '#', 'admin', '2024-11-13 15:42:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2169, '对冲记录工单新增', 2167, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'offsetting:offsettings:add', '#', 'admin', '2024-11-13 15:42:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2170, '对冲记录工单修改', 2167, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'offsetting:offsettings:edit', '#', 'admin', '2024-11-13 15:42:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2171, '对冲记录工单删除', 2167, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'offsetting:offsettings:remove', '#', 'admin', '2024-11-13 15:42:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2172, '对冲记录工单导出', 2167, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'offsetting:offsettings:export', '#', 'admin', '2024-11-13 15:42:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2173, '出库工单', 2118, 4, 'outbounds', 'outbound/outbounds/index', NULL, '', 1, 0, 'C', '0', '0', 'outbound:outbounds:list', '#', 'admin', '2024-11-13 15:46:48', 'admin', '2024-11-13 21:19:38', '出库工单菜单');
INSERT INTO `sys_menu` VALUES (2174, '出库工单查询', 2173, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'outbound:outbounds:query', '#', 'admin', '2024-11-13 15:46:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2175, '出库工单新增', 2173, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'outbound:outbounds:add', '#', 'admin', '2024-11-13 15:46:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2176, '出库工单修改', 2173, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'outbound:outbounds:edit', '#', 'admin', '2024-11-13 15:46:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2177, '出库工单删除', 2173, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'outbound:outbounds:remove', '#', 'admin', '2024-11-13 15:46:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2178, '出库工单导出', 2173, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'outbound:outbounds:export', '#', 'admin', '2024-11-13 15:46:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2179, '账单管理', 2111, 1, 'billing', 'billing/billing/index', NULL, '', 1, 0, 'C', '0', '0', 'billing:billing:list', '#', 'admin', '2024-11-15 16:17:39', '', NULL, '账单管理菜单');
INSERT INTO `sys_menu` VALUES (2180, '账单管理查询', 2179, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'billing:billing:query', '#', 'admin', '2024-11-15 16:17:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2181, '账单管理新增', 2179, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'billing:billing:add', '#', 'admin', '2024-11-15 16:17:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2182, '账单管理修改', 2179, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'billing:billing:edit', '#', 'admin', '2024-11-15 16:17:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2183, '账单管理删除', 2179, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'billing:billing:remove', '#', 'admin', '2024-11-15 16:17:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2184, '账单管理导出', 2179, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'billing:billing:export', '#', 'admin', '2024-11-15 16:17:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2192, '未支付订单', 2111, 2, 'unpay', 'billing/billing/unpay', NULL, '', 1, 0, 'C', '0', '0', '', 'money', 'admin', '2024-11-15 21:18:32', 'admin', '2024-11-15 21:20:00', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 661 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (361, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"库存管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"inventory\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:03:29', 102);
INSERT INTO `sys_oper_log` VALUES (362, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_medicine,tt_inventory_tools\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:03:52', 82);
INSERT INTO `sys_oper_log` VALUES (363, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"medicine\",\"className\":\"InventoryMedicine\",\"columns\":[{\"capJavaField\":\"MedicineId\",\"columnComment\":\"药品号\",\"columnId\":84,\"columnName\":\"medicine_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"medicineId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicineName\",\"columnComment\":\"药品名称\",\"columnId\":85,\"columnName\":\"medicine_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicineName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicineDescription\",\"columnComment\":\"药品描述\",\"columnId\":86,\"columnName\":\"medicine_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"medicineDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":87,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncremen', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:09:05', 99);
INSERT INTO `sys_oper_log` VALUES (364, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_medicine\"}', NULL, 0, NULL, '2024-11-13 13:09:10', 286);
INSERT INTO `sys_oper_log` VALUES (365, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_medicine\"}', NULL, 0, NULL, '2024-11-13 13:09:12', 29);
INSERT INTO `sys_oper_log` VALUES (366, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/12', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:24:54', 48);
INSERT INTO `sys_oper_log` VALUES (367, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_tools\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:25:01', 93);
INSERT INTO `sys_oper_log` VALUES (368, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"tools\",\"className\":\"InventoryTools\",\"columns\":[{\"capJavaField\":\"ToolsId\",\"columnComment\":\"工具ID\",\"columnId\":99,\"columnName\":\"tools_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"toolsId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ToolsName\",\"columnComment\":\"工具名称\",\"columnId\":100,\"columnName\":\"tools_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"toolsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ToolsDescription\",\"columnComment\":\"工具描述\",\"columnId\":101,\"columnName\":\"tools_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"toolsDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":102,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:27:16', 118);
INSERT INTO `sys_oper_log` VALUES (369, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"medicine\",\"className\":\"InventoryMedicine\",\"columns\":[{\"capJavaField\":\"MedicineId\",\"columnComment\":\"药品号\",\"columnId\":84,\"columnName\":\"medicine_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"medicineId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:09:05\",\"usableColumn\":false},{\"capJavaField\":\"MedicineName\",\"columnComment\":\"药品名称\",\"columnId\":85,\"columnName\":\"medicine_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicineName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:09:05\",\"usableColumn\":false},{\"capJavaField\":\"MedicineDescription\",\"columnComment\":\"药品描述\",\"columnId\":86,\"columnName\":\"medicine_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"medicineDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:09:05\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":87,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:27:51', 47);
INSERT INTO `sys_oper_log` VALUES (370, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_tools\"}', NULL, 0, NULL, '2024-11-13 13:27:54', 225);
INSERT INTO `sys_oper_log` VALUES (371, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_tools\"}', NULL, 0, NULL, '2024-11-13 13:27:54', 58);
INSERT INTO `sys_oper_log` VALUES (372, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_tools\"}', NULL, 0, NULL, '2024-11-13 13:28:24', 52);
INSERT INTO `sys_oper_log` VALUES (373, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_tools\"}', NULL, 0, NULL, '2024-11-13 13:28:28', 50);
INSERT INTO `sys_oper_log` VALUES (374, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"inventorytools\",\"className\":\"InventoryTools\",\"columns\":[{\"capJavaField\":\"ToolsId\",\"columnComment\":\"工具ID\",\"columnId\":99,\"columnName\":\"tools_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"toolsId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"ToolsName\",\"columnComment\":\"工具名称\",\"columnId\":100,\"columnName\":\"tools_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"toolsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"ToolsDescription\",\"columnComment\":\"工具描述\",\"columnId\":101,\"columnName\":\"tools_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"toolsDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":102,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"e', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:31:52', 68);
INSERT INTO `sys_oper_log` VALUES (375, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_tools\"}', NULL, 0, NULL, '2024-11-13 13:31:56', 34);
INSERT INTO `sys_oper_log` VALUES (376, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_tools\"}', NULL, 0, NULL, '2024-11-13 13:31:57', 36);
INSERT INTO `sys_oper_log` VALUES (377, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2126', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:32:12', 108);
INSERT INTO `sys_oper_log` VALUES (378, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2127', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:32:13', 18);
INSERT INTO `sys_oper_log` VALUES (379, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2128', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:32:14', 20);
INSERT INTO `sys_oper_log` VALUES (380, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2129', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:32:15', 21);
INSERT INTO `sys_oper_log` VALUES (381, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2130', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:32:16', 15);
INSERT INTO `sys_oper_log` VALUES (382, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2125', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 13:32:17', 19);
INSERT INTO `sys_oper_log` VALUES (383, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 14:51:19', 113);
INSERT INTO `sys_oper_log` VALUES (384, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"工单ID\",\"columnId\":113,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"入库货物\",\"columnId\":114,\"columnName\":\"item_name\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":115,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应来源\",\"columnId\":116,\"columnName\":\"supplier\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 14:55:42', 50);
INSERT INTO `sys_oper_log` VALUES (385, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 14:56:16', 363);
INSERT INTO `sys_oper_log` VALUES (386, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 14:56:18', 34);
INSERT INTO `sys_oper_log` VALUES (387, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 14:56:42', 24);
INSERT INTO `sys_oper_log` VALUES (388, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 14:56:44', 26);
INSERT INTO `sys_oper_log` VALUES (389, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_outbound,tt_inventory_offsetting\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 14:59:41', 277);
INSERT INTO `sys_oper_log` VALUES (390, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"outbounds\",\"className\":\"InventoryOutbound\",\"columns\":[{\"capJavaField\":\"OutboundId\",\"columnComment\":\"工单ID\",\"columnId\":136,\"columnName\":\"outbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"outboundId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"出库货物\",\"columnId\":137,\"columnName\":\"item_name\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":138,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"出库原因\",\"columnId\":139,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:01:26', 59);
INSERT INTO `sys_oper_log` VALUES (391, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_outbound\"}', NULL, 0, NULL, '2024-11-13 15:01:28', 209);
INSERT INTO `sys_oper_log` VALUES (392, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_outbound\"}', NULL, 0, NULL, '2024-11-13 15:01:29', 52);
INSERT INTO `sys_oper_log` VALUES (393, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_outbound\"}', NULL, 0, NULL, '2024-11-13 15:01:40', 55);
INSERT INTO `sys_oper_log` VALUES (394, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_outbound\"}', NULL, 0, NULL, '2024-11-13 15:01:41', 42);
INSERT INTO `sys_oper_log` VALUES (395, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"offsettings\",\"className\":\"InventoryOffsetting\",\"columns\":[{\"capJavaField\":\"OffsettingId\",\"columnComment\":\"工单ID\",\"columnId\":125,\"columnName\":\"offsetting_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"offsettingId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"对冲货物\",\"columnId\":126,\"columnName\":\"item_name\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":127,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"对冲原因\",\"columnId\":128,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:08:32', 124);
INSERT INTO `sys_oper_log` VALUES (396, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_offsetting\"}', NULL, 0, NULL, '2024-11-13 15:08:35', 221);
INSERT INTO `sys_oper_log` VALUES (397, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_offsetting\"}', NULL, 0, NULL, '2024-11-13 15:08:36', 53);
INSERT INTO `sys_oper_log` VALUES (398, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_offsetting\"}', NULL, 0, NULL, '2024-11-13 15:08:51', 39);
INSERT INTO `sys_oper_log` VALUES (399, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_offsetting\"}', NULL, 0, NULL, '2024-11-13 15:08:53', 46);
INSERT INTO `sys_oper_log` VALUES (400, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/16', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:18:49', 59);
INSERT INTO `sys_oper_log` VALUES (401, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/15', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:18:51', 18);
INSERT INTO `sys_oper_log` VALUES (402, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/14', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:18:52', 19);
INSERT INTO `sys_oper_log` VALUES (403, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_offsetting,tt_inventory_inbound,tt_inventory_outbound\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:18:59', 103);
INSERT INTO `sys_oper_log` VALUES (404, '药品库存', 1, 'com.ruoyi.inventory.controller.InventoryMedicineController.add()', 'POST', 1, 'admin', '研发部门', '/medicine/medicine', '127.0.0.1', '内网IP', '{\"medicineId\":6,\"medicineName\":\"药品F\",\"params\":{},\"quantity\":122,\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:03', 5);
INSERT INTO `sys_oper_log` VALUES (405, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2142', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:29', 62);
INSERT INTO `sys_oper_log` VALUES (406, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2138', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:30', 20);
INSERT INTO `sys_oper_log` VALUES (407, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2140', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:34', 9);
INSERT INTO `sys_oper_log` VALUES (408, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2141', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:35', 8);
INSERT INTO `sys_oper_log` VALUES (409, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2139', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:37', 17);
INSERT INTO `sys_oper_log` VALUES (410, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2137', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:39', 13);
INSERT INTO `sys_oper_log` VALUES (411, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2144', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:42', 23);
INSERT INTO `sys_oper_log` VALUES (412, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2145', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:43', 22);
INSERT INTO `sys_oper_log` VALUES (413, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2146', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:44', 15);
INSERT INTO `sys_oper_log` VALUES (414, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2147', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:46', 15);
INSERT INTO `sys_oper_log` VALUES (415, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2148', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:47', 15);
INSERT INTO `sys_oper_log` VALUES (416, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2143', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:48', 18);
INSERT INTO `sys_oper_log` VALUES (417, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2150', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:52', 22);
INSERT INTO `sys_oper_log` VALUES (418, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2151', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:52', 19);
INSERT INTO `sys_oper_log` VALUES (419, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2152', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:54', 12);
INSERT INTO `sys_oper_log` VALUES (420, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2153', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:55', 21);
INSERT INTO `sys_oper_log` VALUES (421, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2154', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:56', 19);
INSERT INTO `sys_oper_log` VALUES (422, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2149', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:26:58', 8);
INSERT INTO `sys_oper_log` VALUES (423, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/17', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:27:09', 53);
INSERT INTO `sys_oper_log` VALUES (424, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/18', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:27:11', 10);
INSERT INTO `sys_oper_log` VALUES (425, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/19', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:27:14', 20);
INSERT INTO `sys_oper_log` VALUES (426, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound,tt_inventory_offsetting,tt_inventory_outbound\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:27:19', 67);
INSERT INTO `sys_oper_log` VALUES (427, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"工单ID\",\"columnId\":181,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":182,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":183,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应来源\",\"columnId\":184,\"columnName\":\"supplier\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isL', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:29:54', 100);
INSERT INTO `sys_oper_log` VALUES (428, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 15:29:57', 135);
INSERT INTO `sys_oper_log` VALUES (429, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 15:29:58', 32);
INSERT INTO `sys_oper_log` VALUES (430, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 15:30:11', 25);
INSERT INTO `sys_oper_log` VALUES (431, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 15:30:12', 24);
INSERT INTO `sys_oper_log` VALUES (432, '入库工单', 1, 'com.ruoyi.inventory.controller.InventoryInboundController.add()', 'POST', 1, 'admin', '研发部门', '/inbound/inbounds', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 15:33:06\",\"inboundTime\":\"2024-11-13\",\"itemName\":\"药物A\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"supplier\":\"货源A\",\"unit\":\"瓶\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inbound\\InventoryInboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryInboundMapper.insertInventoryInbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_inbound          ( item_name,             responsible,             supplier,             quantity,             unit,             purchase_price,                                       inbound_time,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\n; Field \'inbound_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value', '2024-11-13 15:33:06', 175);
INSERT INTO `sys_oper_log` VALUES (433, '入库工单', 1, 'com.ruoyi.inventory.controller.InventoryInboundController.add()', 'POST', 1, 'admin', '研发部门', '/inbound/inbounds', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 15:33:49\",\"inboundTime\":\"2024-11-13\",\"itemName\":\"药物A\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"supplier\":\"货源A\",\"unit\":\"瓶\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inbound\\InventoryInboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryInboundMapper.insertInventoryInbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_inbound          ( item_name,             responsible,             supplier,             quantity,             unit,             purchase_price,                                       inbound_time,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\n; Field \'inbound_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value', '2024-11-13 15:33:49', 3);
INSERT INTO `sys_oper_log` VALUES (434, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2160', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:34:59', 112);
INSERT INTO `sys_oper_log` VALUES (435, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2159', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:00', 23);
INSERT INTO `sys_oper_log` VALUES (436, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2158', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:00', 18);
INSERT INTO `sys_oper_log` VALUES (437, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2157', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:02', 26);
INSERT INTO `sys_oper_log` VALUES (438, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2156', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:03', 27);
INSERT INTO `sys_oper_log` VALUES (439, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2155', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:05', 15);
INSERT INTO `sys_oper_log` VALUES (440, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/22', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:15', 57);
INSERT INTO `sys_oper_log` VALUES (441, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/21', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:16', 14);
INSERT INTO `sys_oper_log` VALUES (442, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/20', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:18', 16);
INSERT INTO `sys_oper_log` VALUES (443, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound,tt_inventory_offsetting,tt_inventory_outbound\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:35:23', 138);
INSERT INTO `sys_oper_log` VALUES (444, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"工单ID\",\"columnId\":215,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"入库货物\",\"columnId\":216,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":217,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应来源\",\"columnId\":218,\"columnName\":\"supplier\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"is', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:37:10', 76);
INSERT INTO `sys_oper_log` VALUES (445, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 15:37:12', 198);
INSERT INTO `sys_oper_log` VALUES (446, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_inbound\"}', NULL, 0, NULL, '2024-11-13 15:37:13', 52);
INSERT INTO `sys_oper_log` VALUES (447, '入库工单', 1, 'com.ruoyi.inventory.controller.InventoryInboundController.add()', 'POST', 1, 'admin', '研发部门', '/inbound/inbounds', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 15:39:33\",\"inboundId\":1,\"itemName\":\"A\",\"params\":{},\"purchasePrice\":12,\"quantity\":10,\"responsible\":\"刘航\",\"supplier\":\"a\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:39:33', 167);
INSERT INTO `sys_oper_log` VALUES (448, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"offsettings\",\"className\":\"InventoryOffsetting\",\"columns\":[{\"capJavaField\":\"OffsettingId\",\"columnComment\":\"对冲工单id\",\"columnId\":227,\"columnName\":\"offsetting_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"offsettingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":228,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":229,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"对冲原因\",\"columnId\":230,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isIn', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:42:14', 126);
INSERT INTO `sys_oper_log` VALUES (449, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_offsetting\"}', NULL, 0, NULL, '2024-11-13 15:42:20', 120);
INSERT INTO `sys_oper_log` VALUES (450, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_offsetting\"}', NULL, 0, NULL, '2024-11-13 15:42:21', 33);
INSERT INTO `sys_oper_log` VALUES (451, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '研发部门', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 15:45:13\",\"itemName\":\"药品A\",\"offsettingId\":1,\"params\":{},\"quantity\":1,\"reason\":\"丢失药物\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:45:13', 90);
INSERT INTO `sys_oper_log` VALUES (452, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"outbounds\",\"className\":\"InventoryOutbound\",\"columns\":[{\"capJavaField\":\"OutboundId\",\"columnComment\":\"入库工单id\",\"columnId\":238,\"columnName\":\"outbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"outboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":239,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":240,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"出库原因\",\"columnId\":241,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:46:27', 89);
INSERT INTO `sys_oper_log` VALUES (453, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_outbound\"}', NULL, 0, NULL, '2024-11-13 15:46:33', 139);
INSERT INTO `sys_oper_log` VALUES (454, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_inventory_outbound\"}', NULL, 0, NULL, '2024-11-13 15:46:34', 28);
INSERT INTO `sys_oper_log` VALUES (455, '出库工单', 1, 'com.ruoyi.inventory.controller.InventoryOutboundController.add()', 'POST', 1, 'admin', '研发部门', '/outbound/outbounds', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 15:48:59\",\"itemName\":\"药品A\",\"outboundId\":1,\"params\":{},\"quantity\":1,\"reason\":\"退货\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 15:48:59', 232);
INSERT INTO `sys_oper_log` VALUES (456, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:11:40', 78);
INSERT INTO `sys_oper_log` VALUES (457, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/108', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:11:41', 22);
INSERT INTO `sys_oper_log` VALUES (458, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:11:42', 19);
INSERT INTO `sys_oper_log` VALUES (459, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/107', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:11:43', 13);
INSERT INTO `sys_oper_log` VALUES (460, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:11:44', 13);
INSERT INTO `sys_oper_log` VALUES (461, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2024-11-13 16:11:44', 6);
INSERT INTO `sys_oper_log` VALUES (462, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:11:45', 21);
INSERT INTO `sys_oper_log` VALUES (463, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2024-11-13 16:11:46', 6);
INSERT INTO `sys_oper_log` VALUES (464, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}', 0, NULL, '2024-11-13 16:11:46', 3);
INSERT INTO `sys_oper_log` VALUES (465, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2024-11-13 16:11:52', 4);
INSERT INTO `sys_oper_log` VALUES (466, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:46:15\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":100,\"email\":\"ry@qq.com\",\"loginDate\":\"2024-10-05 15:46:15\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:12:11', 92);
INSERT INTO `sys_oper_log` VALUES (467, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:12:15', 16);
INSERT INTO `sys_oper_log` VALUES (468, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2024-11-13 16:12:16', 4);
INSERT INTO `sys_oper_log` VALUES (469, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:16:28', 84);
INSERT INTO `sys_oper_log` VALUES (470, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:16:31', 15);
INSERT INTO `sys_oper_log` VALUES (471, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"牙医诊所\",\"email\":\"\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:16:42', 48);
INSERT INTO `sys_oper_log` VALUES (472, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:46:19\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:17:59', 108);
INSERT INTO `sys_oper_log` VALUES (473, '参数管理', 9, 'com.ruoyi.web.controller.system.SysConfigController.refreshCache()', 'DELETE', 1, 'admin', '研发部门', '/system/config/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:18:15', 15);
INSERT INTO `sys_oper_log` VALUES (474, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:18:21', 11);
INSERT INTO `sys_oper_log` VALUES (475, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/notice/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:18:23', 17);
INSERT INTO `sys_oper_log` VALUES (476, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:46:19\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2024-11-13 16:17:59\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:19:48', 61);
INSERT INTO `sys_oper_log` VALUES (477, '参数管理', 9, 'com.ruoyi.web.controller.system.SysConfigController.refreshCache()', 'DELETE', 1, 'admin', '牙医诊所', '/system/config/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 16:19:55', 12);
INSERT INTO `sys_oper_log` VALUES (478, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"inventorytool/inventorytools/index\",\"createTime\":\"2024-11-13 13:32:35\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2131,\"menuName\":\"工具库存\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2118,\"path\":\"inventorytools\",\"perms\":\"inventorytool:inventorytools:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:19:18', 100);
INSERT INTO `sys_oper_log` VALUES (479, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"inbound/inbounds/index\",\"createTime\":\"2024-11-13 15:37:34\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2161,\"menuName\":\"入库工单\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2118,\"path\":\"inbounds\",\"perms\":\"inbound:inbounds:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:19:23', 26);
INSERT INTO `sys_oper_log` VALUES (480, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"offsetting/offsettings/index\",\"createTime\":\"2024-11-13 15:42:34\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2167,\"menuName\":\"对冲记录工单\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2118,\"path\":\"offsettings\",\"perms\":\"offsetting:offsettings:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:19:29', 17);
INSERT INTO `sys_oper_log` VALUES (481, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"outbound/outbounds/index\",\"createTime\":\"2024-11-13 15:46:48\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2173,\"menuName\":\"出库工单\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2118,\"path\":\"outbounds\",\"perms\":\"outbound:outbounds:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:19:38', 41);
INSERT INTO `sys_oper_log` VALUES (482, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-11-01 14:47:45\",\"icon\":\"cash\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2111,\"menuName\":\"收银台\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"bill\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:20:16', 38);
INSERT INTO `sys_oper_log` VALUES (483, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-11-13 13:03:29\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2118,\"menuName\":\"库存管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"inventory\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:20:24', 32);
INSERT INTO `sys_oper_log` VALUES (484, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:20:33', 50);
INSERT INTO `sys_oper_log` VALUES (485, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:20:43', 55);
INSERT INTO `sys_oper_log` VALUES (486, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:42:00\",\"itemName\":\"A\",\"offsettingId\":2,\"params\":{},\"quantity\":112,\"reason\":\"咋\",\"responsible\":\"1\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:42:00', 145);
INSERT INTO `sys_oper_log` VALUES (487, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:43:04\",\"itemName\":\"啊\",\"offsettingId\":3,\"params\":{},\"quantity\":1222,\"reason\":\"122\",\"responsible\":\"1\",\"unit\":\"122\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:43:04', 42);
INSERT INTO `sys_oper_log` VALUES (488, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:44:10\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 21:44:10', 66);
INSERT INTO `sys_oper_log` VALUES (489, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:44:28\",\"itemName\":\"啊\",\"offsettingId\":4,\"params\":{},\"quantity\":122,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:44:29', 36);
INSERT INTO `sys_oper_log` VALUES (490, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:46:46\",\"itemName\":\"啊\",\"offsettingId\":5,\"params\":{},\"quantity\":122,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:46:47', 195);
INSERT INTO `sys_oper_log` VALUES (491, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:49:20\",\"itemName\":\"啊\",\"offsettingId\":6,\"params\":{},\"quantity\":122,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:49:20', 191);
INSERT INTO `sys_oper_log` VALUES (492, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:50:48\",\"itemName\":\"A\",\"offsettingId\":7,\"params\":{},\"quantity\":12,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:50:48', 39);
INSERT INTO `sys_oper_log` VALUES (493, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:51:46\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 21:51:46', 56);
INSERT INTO `sys_oper_log` VALUES (494, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:52:03\",\"itemName\":\"1\",\"offsettingId\":8,\"params\":{},\"quantity\":33,\"reason\":\"1\",\"responsible\":\"1\",\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:52:03', 33);
INSERT INTO `sys_oper_log` VALUES (495, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:54:27\",\"itemName\":\"1\",\"offsettingId\":9,\"params\":{},\"quantity\":33,\"reason\":\"1\",\"responsible\":\"1\",\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:54:27', 183);
INSERT INTO `sys_oper_log` VALUES (496, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:57:43', 6);
INSERT INTO `sys_oper_log` VALUES (497, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 21:57:43\",\"itemName\":\"1\",\"offsettingId\":10,\"params\":{},\"quantity\":33,\"reason\":\"1\",\"responsible\":\"1\",\"unit\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 21:57:43', 144);
INSERT INTO `sys_oper_log` VALUES (498, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemName\":\"A\",\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:00:36', 19);
INSERT INTO `sys_oper_log` VALUES (499, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:00:36\",\"itemName\":\"A\",\"offsettingId\":11,\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:00:36', 203);
INSERT INTO `sys_oper_log` VALUES (500, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemName\":\"A\",\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:08:05', 10);
INSERT INTO `sys_oper_log` VALUES (501, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:08:05\",\"itemName\":\"A\",\"offsettingId\":12,\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:08:05', 154);
INSERT INTO `sys_oper_log` VALUES (502, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemName\":\"A\",\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:08:20', 0);
INSERT INTO `sys_oper_log` VALUES (503, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:08:20\",\"itemName\":\"A\",\"offsettingId\":13,\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:08:20', 73);
INSERT INTO `sys_oper_log` VALUES (504, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:10:58', 0);
INSERT INTO `sys_oper_log` VALUES (505, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:10:58\",\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 22:10:58', 57);
INSERT INTO `sys_oper_log` VALUES (506, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:11:18', 0);
INSERT INTO `sys_oper_log` VALUES (507, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:11:18\",\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 22:11:18', 10);
INSERT INTO `sys_oper_log` VALUES (508, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:13:08', 13);
INSERT INTO `sys_oper_log` VALUES (509, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:13:08\",\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 22:13:08', 121);
INSERT INTO `sys_oper_log` VALUES (510, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:19:08', 18);
INSERT INTO `sys_oper_log` VALUES (511, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:19:08\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 22:19:08', 201);
INSERT INTO `sys_oper_log` VALUES (512, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:20:21', 0);
INSERT INTO `sys_oper_log` VALUES (513, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:20:21\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 22:20:21', 3);
INSERT INTO `sys_oper_log` VALUES (514, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"medicineId\":12,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:20:28', 1);
INSERT INTO `sys_oper_log` VALUES (515, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:20:28\",\"medicineId\":12,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value', '2024-11-13 22:20:28', 5);
INSERT INTO `sys_oper_log` VALUES (516, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemName\":\"阿萨德\",\"medicineId\":12,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:21:14', 1);
INSERT INTO `sys_oper_log` VALUES (517, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-13 22:21:14\",\"itemName\":\"阿萨德\",\"medicineId\":12,\"offsettingId\":14,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:21:14', 52);
INSERT INTO `sys_oper_log` VALUES (518, '对冲记录工单', 3, 'com.ruoyi.inventory.controller.InventoryOffsettingController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/offsetting/offsettings/2,3,4,5,6,7,8,9,10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:21:27', 27);
INSERT INTO `sys_oper_log` VALUES (519, '对冲记录工单', 3, 'com.ruoyi.inventory.controller.InventoryOffsettingController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/offsetting/offsettings/11,12,13,14', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-13 22:21:33', 9);
INSERT INTO `sys_oper_log` VALUES (520, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemName\":\"TEST1\",\"params\":{},\"quantity\":10,\"reason\":\"TEST\",\"responsible\":\"A\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 15:00:11', 16);
INSERT INTO `sys_oper_log` VALUES (521, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-14 15:00:11\",\"itemName\":\"TEST1\",\"offsettingId\":15,\"params\":{},\"quantity\":10,\"reason\":\"TEST\",\"responsible\":\"A\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 15:00:11', 80);
INSERT INTO `sys_oper_log` VALUES (522, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemId\":\"6\",\"params\":{},\"quantity\":1,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.inventory.mapper.InventoryMedicineMapper.offsettingUpdateInventoryMedicine', '2024-11-14 16:05:09', 13);
INSERT INTO `sys_oper_log` VALUES (523, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-14 16:05:09\",\"itemId\":\"6\",\"offsettingId\":16,\"params\":{},\"quantity\":1,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 16:05:09', 105);
INSERT INTO `sys_oper_log` VALUES (524, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemId\":\"6\",\"params\":{},\"quantity\":1,\"reason\":\"托尔斯泰\",\"responsible\":\"刘航\",\"unit\":\"个\"}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.inventory.mapper.InventoryMedicineMapper.offsettingUpdateInventoryMedicine', '2024-11-14 16:05:47', 0);
INSERT INTO `sys_oper_log` VALUES (525, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-14 16:05:47\",\"itemId\":\"6\",\"offsettingId\":17,\"params\":{},\"quantity\":1,\"reason\":\"托尔斯泰\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 16:05:47', 69);
INSERT INTO `sys_oper_log` VALUES (526, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemId\":\"6\",\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'medicineId\' in \'class com.ruoyi.inventory.domain.InventoryOffsetting\'', '2024-11-14 16:09:03', 28);
INSERT INTO `sys_oper_log` VALUES (527, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()', 'PUT', 1, 'admin', '牙医诊所', '/medicine/medicine/offsettingUpdateMedicine', '127.0.0.1', '内网IP', '{\"itemId\":\"6\",\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 16:17:36', 23);
INSERT INTO `sys_oper_log` VALUES (528, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-14 16:17:36\",\"itemId\":\"6\",\"offsettingId\":18,\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 16:17:36', 208);
INSERT INTO `sys_oper_log` VALUES (529, '对冲记录工单', 3, 'com.ruoyi.inventory.controller.InventoryOffsettingController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/offsetting/offsettings/15,16,17,1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 16:17:51', 98);
INSERT INTO `sys_oper_log` VALUES (530, '药品库存', 2, 'com.ruoyi.inventory.controller.InventoryToolsController.offsettingUpdateInventorytools()', 'PUT', 1, 'admin', '牙医诊所', '/inventorytool/inventorytools/offsettingUpdateInventorytools', '127.0.0.1', '内网IP', '{\"itemId\":\"1\",\"params\":{},\"quantity\":1,\"reason\":\"testtool\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 16:32:22', 32);
INSERT INTO `sys_oper_log` VALUES (531, '对冲记录工单', 1, 'com.ruoyi.inventory.controller.InventoryOffsettingController.add()', 'POST', 1, 'admin', '牙医诊所', '/offsetting/offsettings', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-11-14 16:32:22\",\"itemId\":\"1\",\"offsettingId\":19,\"params\":{},\"quantity\":1,\"reason\":\"testtool\",\"responsible\":\"刘航\",\"unit\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-14 16:32:22', 43);
INSERT INTO `sys_oper_log` VALUES (532, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-15 15:59:12', 9);
INSERT INTO `sys_oper_log` VALUES (533, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:46:15\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"牙医诊所\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"ry@qq.com\",\"loginDate\":\"2024-10-05 15:46:15\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 15:59:54', 93);
INSERT INTO `sys_oper_log` VALUES (534, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-11-01 16:26:49\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"牙医诊所\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2024-11-04 10:22:26\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"test\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"2\",\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 15:59:57', 67);
INSERT INTO `sys_oper_log` VALUES (535, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-11-15 16:00:12', 4);
INSERT INTO `sys_oper_log` VALUES (536, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-10-05 15:46:16\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2062,2042,2043,2044,2045,2046,2047,2061,2099,2100,2101,2102,2103,2104,2060,2105,2106,2107,2108,2109,2110],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:01:10', 79);
INSERT INTO `sys_oper_log` VALUES (537, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:01:34', 149);
INSERT INTO `sys_oper_log` VALUES (538, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2114', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:01:36', 53);
INSERT INTO `sys_oper_log` VALUES (539, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2115', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:01:39', 65);
INSERT INTO `sys_oper_log` VALUES (540, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2116', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:01:41', 52);
INSERT INTO `sys_oper_log` VALUES (541, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2117', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:01:44', 55);
INSERT INTO `sys_oper_log` VALUES (542, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2112', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:01:50', 43);
INSERT INTO `sys_oper_log` VALUES (543, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '牙医诊所', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_billing\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:02:44', 84);
INSERT INTO `sys_oper_log` VALUES (544, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"支付状态\",\"dictType\":\"tt_paystatus\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:07:53', 82);
INSERT INTO `sys_oper_log` VALUES (545, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已支付\",\"dictSort\":0,\"dictType\":\"tt_paystatus\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:08:07', 75);
INSERT INTO `sys_oper_log` VALUES (546, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未支付\",\"dictSort\":0,\"dictType\":\"tt_paystatus\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:08:14', 62);
INSERT INTO `sys_oper_log` VALUES (547, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:08:14\",\"default\":false,\"dictCode\":118,\"dictLabel\":\"未支付\",\"dictSort\":1,\"dictType\":\"tt_paystatus\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:08:18', 92);
INSERT INTO `sys_oper_log` VALUES (548, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已取消\",\"dictSort\":2,\"dictType\":\"tt_paystatus\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:08:29', 112);
INSERT INTO `sys_oper_log` VALUES (549, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"billing\",\"className\":\"TtBilling\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单id\",\"columnId\":249,\"columnName\":\"billing_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":250,\"columnName\":\"patient_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DoctorName\",\"columnComment\":\"就诊医生\",\"columnId\":251,\"columnName\":\"doctor_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BillingDate\",\"columnComment\":\"账单日期\",\"columnId\":252,\"columnName\":\"billing_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:08:59', 154);
INSERT INTO `sys_oper_log` VALUES (550, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"billing\",\"className\":\"TtBilling\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单id\",\"columnId\":249,\"columnName\":\"billing_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:08:59\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":250,\"columnName\":\"patient_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:08:59\",\"usableColumn\":false},{\"capJavaField\":\"DoctorName\",\"columnComment\":\"就诊医生\",\"columnId\":251,\"columnName\":\"doctor_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:08:59\",\"usableColumn\":false},{\"capJavaField\":\"BillingDate\",\"columnComment\":\"账单日期\",\"columnId\":252,\"columnName\":\"billing_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"h', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:10:53', 68);
INSERT INTO `sys_oper_log` VALUES (551, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"支付方式\",\"dictType\":\"tt_paymethod\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:11:33', 86);
INSERT INTO `sys_oper_log` VALUES (552, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"微信\",\"dictSort\":0,\"dictType\":\"tt_paymethod\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:11:47', 125);
INSERT INTO `sys_oper_log` VALUES (553, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"支付宝\",\"dictSort\":1,\"dictType\":\"tt_paymethod\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:11:53', 66);
INSERT INTO `sys_oper_log` VALUES (554, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"现金\",\"dictSort\":2,\"dictType\":\"tt_paymethod\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:12:05', 148);
INSERT INTO `sys_oper_log` VALUES (555, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"多种方式支付\",\"dictSort\":3,\"dictType\":\"tt_paymethod\",\"dictValue\":\"4\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:12:18', 117);
INSERT INTO `sys_oper_log` VALUES (556, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"billing\",\"className\":\"TtBilling\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单id\",\"columnId\":249,\"columnName\":\"billing_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:10:53\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":250,\"columnName\":\"patient_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:10:53\",\"usableColumn\":false},{\"capJavaField\":\"DoctorName\",\"columnComment\":\"就诊医生\",\"columnId\":251,\"columnName\":\"doctor_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:10:53\",\"usableColumn\":false},{\"capJavaField\":\"BillingDate\",\"columnComment\":\"账单日期\",\"columnId\":252,\"columnName\":\"billing_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"di', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:15:53', 207);
INSERT INTO `sys_oper_log` VALUES (557, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '牙医诊所', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_billing\"}', NULL, 0, NULL, '2024-11-15 16:15:58', 272);
INSERT INTO `sys_oper_log` VALUES (558, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付\",\"paymentStatus\":\"已支付,1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:21:21', 40);
INSERT INTO `sys_oper_log` VALUES (559, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付,1\",\"paymentStatus\":\"已支付,1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:21:50', 26);
INSERT INTO `sys_oper_log` VALUES (560, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付,1\",\"paymentStatus\":\"已支付,1,2\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:22:55', 21);
INSERT INTO `sys_oper_log` VALUES (561, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付,1\",\"paymentStatus\":\"已支付,1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:22:58', 25);
INSERT INTO `sys_oper_log` VALUES (562, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付,1\",\"paymentStatus\":\"已支付\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:23:07', 20);
INSERT INTO `sys_oper_log` VALUES (563, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付,1\",\"paymentStatus\":\"已支付,1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:41:16', 28);
INSERT INTO `sys_oper_log` VALUES (564, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付\",\"paymentStatus\":\"已支付,1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:47:09', 29);
INSERT INTO `sys_oper_log` VALUES (565, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"billing\",\"className\":\"TtBilling\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单id\",\"columnId\":249,\"columnName\":\"billing_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:15:53\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":250,\"columnName\":\"patient_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:15:53\",\"usableColumn\":false},{\"capJavaField\":\"DoctorName\",\"columnComment\":\"就诊医生\",\"columnId\":251,\"columnName\":\"doctor_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:15:53\",\"usableColumn\":false},{\"capJavaField\":\"BillingDate\",\"columnComment\":\"账单日期\",\"columnId\":252,\"columnName\":\"billing_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"di', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:50:01', 117);
INSERT INTO `sys_oper_log` VALUES (566, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"扫码支付\",\"paymentStatus\":\"2\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 16:50:41', 20);
INSERT INTO `sys_oper_log` VALUES (567, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":20,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-15\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"依林\",\"params\":{}}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-11-15 17:00:06', 10);
INSERT INTO `sys_oper_log` VALUES (568, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":20,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-15\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"依林\",\"params\":{}}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-11-15 17:00:08', 2);
INSERT INTO `sys_oper_log` VALUES (569, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":20,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-15\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"根号三\",\"params\":{}}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-11-15 17:00:21', 2);
INSERT INTO `sys_oper_log` VALUES (570, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":20,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-15\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"根号三\",\"params\":{}}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-11-15 17:00:30', 2);
INSERT INTO `sys_oper_log` VALUES (571, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":20,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-15\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"根号三\",\"params\":{}}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-11-15 17:00:34', 2);
INSERT INTO `sys_oper_log` VALUES (572, '账单管理', 1, 'com.ruoyi.billing.controller.TtBillingController.add()', 'POST', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-15\",\"billingId\":6,\"doctorName\":\"王医生\",\"notes\":\"666\",\"params\":{},\"patientName\":\"根号三\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"根号二\",\"totalAmount\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 17:02:50', 20);
INSERT INTO `sys_oper_log` VALUES (573, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"1\",\"paymentStatus\":\"2\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 17:02:59', 24);
INSERT INTO `sys_oper_log` VALUES (574, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"现金\",\"paymentStatus\":\"未支付\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 17:03:02', 23);
INSERT INTO `sys_oper_log` VALUES (575, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"2\",\"paymentStatus\":\"1\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 17:03:08', 19);
INSERT INTO `sys_oper_log` VALUES (576, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":3,\"doctorName\":\"雷医生\",\"notes\":\"拔牙账单\",\"params\":{},\"patientName\":\"王五\",\"paymentMethod\":\"2\",\"paymentStatus\":\"2\",\"receiver\":\"李护士\",\"totalAmount\":600}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 17:03:13', 23);
INSERT INTO `sys_oper_log` VALUES (577, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":4,\"doctorName\":\"李医生\",\"notes\":\"牙齿矫正咨询费\",\"params\":{},\"patientName\":\"赵六\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":1200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 17:03:19', 23);
INSERT INTO `sys_oper_log` VALUES (578, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":5,\"doctorName\":\"杜医生\",\"notes\":\"定期牙齿清洁\",\"params\":{},\"patientName\":\"钱七\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"张护士\",\"totalAmount\":500}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 17:03:26', 22);
INSERT INTO `sys_oper_log` VALUES (579, '账单管理', 3, 'com.ruoyi.billing.controller.TtBillingController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/billing/billing/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:06:52', 26);
INSERT INTO `sys_oper_log` VALUES (580, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"4\",\"paymentStatus\":\"3\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:25:47', 29);
INSERT INTO `sys_oper_log` VALUES (581, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"未支付订单\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:34:04', 54);
INSERT INTO `sys_oper_log` VALUES (582, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"billing/billing/unpay\",\"createTime\":\"2024-11-15 20:34:04\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2185,\"menuName\":\"未支付订单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2111,\"path\":\"billing\",\"perms\":\"billing:billing:unpay\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:36:00', 54);
INSERT INTO `sys_oper_log` VALUES (583, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"unpay/unpay/list\",\"createTime\":\"2024-11-15 20:34:04\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2185,\"menuName\":\"未支付订单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2111,\"path\":\"unpay\",\"perms\":\"unpay:unpay:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:39:16', 134);
INSERT INTO `sys_oper_log` VALUES (584, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"unpay\",\"className\":\"Ttunpay\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单id\",\"columnId\":249,\"columnName\":\"billing_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:50:01\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":250,\"columnName\":\"patient_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:50:01\",\"usableColumn\":false},{\"capJavaField\":\"DoctorName\",\"columnComment\":\"就诊医生\",\"columnId\":251,\"columnName\":\"doctor_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 16:50:01\",\"usableColumn\":false},{\"capJavaField\":\"BillingDate\",\"columnComment\":\"账单日期\",\"columnId\":252,\"columnName\":\"billing_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictTy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:45:07', 166);
INSERT INTO `sys_oper_log` VALUES (585, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '牙医诊所', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_unpay\"}', NULL, 0, NULL, '2024-11-15 20:45:10', 258);
INSERT INTO `sys_oper_log` VALUES (586, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2185', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:48:30', 100);
INSERT INTO `sys_oper_log` VALUES (587, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2186', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-11-15 20:49:49', 5);
INSERT INTO `sys_oper_log` VALUES (588, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2191', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:49:55', 58);
INSERT INTO `sys_oper_log` VALUES (589, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2187', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:49:57', 63);
INSERT INTO `sys_oper_log` VALUES (590, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2188', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:50:00', 66);
INSERT INTO `sys_oper_log` VALUES (591, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2189', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:50:02', 59);
INSERT INTO `sys_oper_log` VALUES (592, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2190', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:50:05', 58);
INSERT INTO `sys_oper_log` VALUES (593, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2186', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 20:50:08', 56);
INSERT INTO `sys_oper_log` VALUES (594, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createBy\":\"admin\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"未支付订单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2111,\"path\":\"unpay\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:18:32', 92);
INSERT INTO `sys_oper_log` VALUES (595, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"billing/billing/unpay\",\"createTime\":\"2024-11-15 21:18:32\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2192,\"menuName\":\"未支付订单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2111,\"path\":\"unpay\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:20:00', 117);
INSERT INTO `sys_oper_log` VALUES (596, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"4\",\"paymentStatus\":\"2\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:21:12', 36);
INSERT INTO `sys_oper_log` VALUES (597, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"4\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:21:37', 20);
INSERT INTO `sys_oper_log` VALUES (598, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"4\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:23:45', 4);
INSERT INTO `sys_oper_log` VALUES (599, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:24:57', 29);
INSERT INTO `sys_oper_log` VALUES (600, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\",4\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:25:03', 15);
INSERT INTO `sys_oper_log` VALUES (601, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\",1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:25:08', 25);
INSERT INTO `sys_oper_log` VALUES (602, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:25:36', 22);
INSERT INTO `sys_oper_log` VALUES (603, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\",2\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:25:46', 21);
INSERT INTO `sys_oper_log` VALUES (604, '账单管理', 3, 'com.ruoyi.billing.controller.TtBillingController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/billing/billing/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:26:28', 26);
INSERT INTO `sys_oper_log` VALUES (605, '账单管理', 1, 'com.ruoyi.billing.controller.TtBillingController.add()', 'POST', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-15\",\"billingId\":7,\"doctorName\":\"王医生\",\"notes\":\"666\",\"params\":{},\"patientName\":\"根号三\",\"paymentMethod\":\"\",\"paymentStatus\":\"2\",\"receiver\":\"根号二\",\"totalAmount\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:34:42', 29);
INSERT INTO `sys_oper_log` VALUES (606, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-15\",\"billingId\":7,\"doctorName\":\"王医生\",\"notes\":\"666\",\"params\":{},\"patientName\":\"根号三\",\"paymentMethod\":\"\",\"paymentStatus\":\"1\",\"receiver\":\"根号二\",\"totalAmount\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 21:54:26', 36);
INSERT INTO `sys_oper_log` VALUES (607, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"2\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 22:40:00', 4);
INSERT INTO `sys_oper_log` VALUES (608, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"2\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 22:44:15', 4);
INSERT INTO `sys_oper_log` VALUES (609, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"2\",\"paymentStatus\":\"2\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 22:44:19', 13);
INSERT INTO `sys_oper_log` VALUES (610, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"2\",\"paymentStatus\":\"2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 22:44:47', 20);
INSERT INTO `sys_oper_log` VALUES (611, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"3\",\"paymentStatus\":\"2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 22:45:28', 18);
INSERT INTO `sys_oper_log` VALUES (612, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"4\",\"paymentStatus\":\"1\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 22:46:28', 35);
INSERT INTO `sys_oper_log` VALUES (613, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"1\",\"paymentStatus\":\"2\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-15 22:48:09', 25);
INSERT INTO `sys_oper_log` VALUES (614, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-15\",\"billingId\":7,\"doctorName\":\"王医生\",\"notes\":\"666\",\"params\":{},\"patientName\":\"根号三\",\"paymentMethod\":\",3\",\"paymentStatus\":\"1\",\"receiver\":\"根号二\",\"totalAmount\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 14:56:53', 34);
INSERT INTO `sys_oper_log` VALUES (615, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"2,1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 15:38:25', 60);
INSERT INTO `sys_oper_log` VALUES (616, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 15:38:29', 37);
INSERT INTO `sys_oper_log` VALUES (617, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800.5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 15:48:37', 27);
INSERT INTO `sys_oper_log` VALUES (618, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"billing\",\"className\":\"Ttbilling\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单id\",\"columnId\":249,\"columnName\":\"billing_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 20:45:07\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":250,\"columnName\":\"patient_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 20:45:07\",\"usableColumn\":false},{\"capJavaField\":\"DoctorName\",\"columnComment\":\"就诊医生\",\"columnId\":251,\"columnName\":\"doctor_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-15 20:45:07\",\"usableColumn\":false},{\"capJavaField\":\"BillingDate\",\"columnComment\":\"账单日期\",\"columnId\":252,\"columnName\":\"billing_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"di', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:00:31', 156);
INSERT INTO `sys_oper_log` VALUES (619, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"\",\"paymentStatus\":\"2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:11:14', 20);
INSERT INTO `sys_oper_log` VALUES (620, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\",2\",\"paymentStatus\":\"1\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:11:20', 25);
INSERT INTO `sys_oper_log` VALUES (621, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"\",\"paymentStatus\":\"1,2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:11:26', 27);
INSERT INTO `sys_oper_log` VALUES (622, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"\",\"paymentStatus\":\"2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:11:30', 27);
INSERT INTO `sys_oper_log` VALUES (623, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\",4\",\"paymentStatus\":\"2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:11:43', 19);
INSERT INTO `sys_oper_log` VALUES (624, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\",4\",\"paymentStatus\":\"1\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:11:48', 19);
INSERT INTO `sys_oper_log` VALUES (625, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '牙医诊所', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未支付\",\"dictSort\":4,\"dictType\":\"tt_paymethod\",\"dictValue\":\"5\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:13:26', 185);
INSERT INTO `sys_oper_log` VALUES (626, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"5\",\"paymentStatus\":\"2\",\"receiver\":\"王护士\",\"totalAmount\":800.5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:13:38', 19);
INSERT INTO `sys_oper_log` VALUES (627, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"\",\"paymentStatus\":\"1\",\"receiver\":\"张护士\",\"totalAmount\":300}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'payment_method\' at row 1\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\billing\\TtBillingMapper.xml]\r\n### The error may involve com.ruoyi.billing.mapper.TtBillingMapper.updateTtBilling-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tt_billing                   SET patient_name = ?,             doctor_name = ?,             billing_date = ?,             total_amount = ?,             payment_status = ?,             payment_method = ?,             receiver = ?,             notes = ?          where billing_id = ?\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'\' for column \'payment_method\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'\' for column \'payment_method\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'\' for column \'payment_method\' at row 1', '2024-11-16 16:15:09', 70);
INSERT INTO `sys_oper_log` VALUES (628, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"5\",\"paymentStatus\":\"1\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:15:35', 20);
INSERT INTO `sys_oper_log` VALUES (629, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"billing\",\"className\":\"Ttbilling\",\"columns\":[{\"capJavaField\":\"BillingId\",\"columnComment\":\"账单id\",\"columnId\":249,\"columnName\":\"billing_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"billingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-16 16:00:31\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":250,\"columnName\":\"patient_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-16 16:00:31\",\"usableColumn\":false},{\"capJavaField\":\"DoctorName\",\"columnComment\":\"就诊医生\",\"columnId\":251,\"columnName\":\"doctor_name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"doctorName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-16 16:00:31\",\"usableColumn\":false},{\"capJavaField\":\"BillingDate\",\"columnComment\":\"账单日期\",\"columnId\":252,\"columnName\":\"billing_date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-15 16:02:44\",\"di', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:17:38', 112);
INSERT INTO `sys_oper_log` VALUES (630, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"5\",\"paymentStatus\":\"2\",\"receiver\":\"王护士\",\"totalAmount\":800.5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:18:10', 2);
INSERT INTO `sys_oper_log` VALUES (631, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-10-10\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"2\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:26:43', 12);
INSERT INTO `sys_oper_log` VALUES (632, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-10-10 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-10-10\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"2\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-10-15\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:26:49', 2);
INSERT INTO `sys_oper_log` VALUES (633, '患者信息', 2, 'com.ruoyi.patientlist.controller.PatientListController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/patientlist/patientlists', '127.0.0.1', '内网IP', '{\"address\":\"北京朝阳区幸福街道123号\",\"birthday\":\"1985-05-15\",\"createdAt\":\"2024-10-05\",\"gender\":\"男\",\"medicalRecordNumber\":7,\"name\":\"张伟\",\"params\":{},\"patientId\":1,\"phone\":\"13111488526\",\"remarks\":\"123\",\"updatedAt\":\"2024-10-24\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 16:28:57', 26);
INSERT INTO `sys_oper_log` VALUES (634, '账单管理', 3, 'com.ruoyi.billing.controller.TtBillingController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/billing/billing/7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-16 22:13:50', 27);
INSERT INTO `sys_oper_log` VALUES (635, '账单管理', 1, 'com.ruoyi.billing.controller.TtBillingController.add()', 'POST', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"doctorName\":\"李医生\",\"notes\":\"鸿运当头666\",\"params\":{},\"patientName\":\"刘洋\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"刘护士\",\"totalAmount\":345}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'billing_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\billing\\TtBillingMapper.xml]\r\n### The error may involve com.ruoyi.billing.mapper.TtBillingMapper.insertTtBilling-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_billing                   ( patient_name,             doctor_name,                          total_amount,             payment_status,             payment_method,             receiver,             notes )                    values ( ?,             ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'billing_date\' doesn\'t have a default value\n; Field \'billing_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'billing_date\' doesn\'t have a default value', '2024-11-16 22:15:18', 42);
INSERT INTO `sys_oper_log` VALUES (636, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":20,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-17\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"刘洋\",\"params\":{}}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-11-17 16:46:19', 57);
INSERT INTO `sys_oper_log` VALUES (637, '患者信息', 1, 'com.ruoyi.patientlist.controller.PatientListController.add()', 'POST', 1, 'admin', '牙医诊所', '/patientlist/patientlists', '127.0.0.1', '内网IP', '{\"address\":\"河北省唐山市\",\"birthday\":\"2024-11-04\",\"createdAt\":\"2024-11-17\",\"gender\":\"男\",\"medicalRecordNumber\":13,\"name\":\"刘洋\",\"params\":{},\"patientId\":8,\"phone\":\"11111\",\"remarks\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-17 16:47:15', 38);
INSERT INTO `sys_oper_log` VALUES (638, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":6,\"doctorName\":\"李医生\",\"notes\":\"鸿运当头666，猪头肉\\n\",\"params\":{},\"patientName\":\"刘洋\",\"paymentMethod\":\"2\",\"paymentStatus\":\"1\",\"receiver\":\"刘护士\",\"totalAmount\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-17 16:47:33', 242);
INSERT INTO `sys_oper_log` VALUES (639, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800.5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 10:10:37', 35);
INSERT INTO `sys_oper_log` VALUES (640, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"5\",\"paymentStatus\":\"2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 10:11:27', 25);
INSERT INTO `sys_oper_log` VALUES (641, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16\",\"billingId\":6,\"doctorName\":\"李医生\",\"notes\":\"鸿运当头666，猪头肉\\n\",\"params\":{},\"patientName\":\"刘洋\",\"paymentMethod\":\"5\",\"paymentStatus\":\"2\",\"receiver\":\"刘护士\",\"totalAmount\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 10:11:33', 26);
INSERT INTO `sys_oper_log` VALUES (642, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":111,\"appointmentProject\":\"5\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-18\",\"params\":{},\"ttDoctor\":{\"name\":\"2\",\"params\":{}},\"ttPatient\":{\"name\":\"号三\",\"params\":{}}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\新建文件夹\\GitHub\\403-\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value', '2024-11-18 10:32:57', 11);
INSERT INTO `sys_oper_log` VALUES (643, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '牙医诊所', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments_test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 16:56:01', 204);
INSERT INTO `sys_oper_log` VALUES (644, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '牙医诊所', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"appointments_test\",\"className\":\"TtAppointmentsTest\",\"columns\":[{\"capJavaField\":\"AppointmentId\",\"columnComment\":\"预约唯一ID\",\"columnId\":258,\"columnName\":\"appointment_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-18 16:56:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"appointmentId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者ID，关联患者表\",\"columnId\":259,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-18 16:56:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生ID，关联医生表\",\"columnId\":260,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-18 16:56:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"doctorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":27,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AppointmentStartTime\",\"columnComment\":\"预约开始时间\",\"columnId\":261,\"columnName\":\"appointment_start_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-11-18 16:56:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 16:58:35', 91);
INSERT INTO `sys_oper_log` VALUES (645, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '牙医诊所', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments_test\"}', NULL, 0, NULL, '2024-11-18 16:58:38', 437);
INSERT INTO `sys_oper_log` VALUES (646, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '牙医诊所', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tt_appointments_test\"}', NULL, 0, NULL, '2024-11-18 17:04:36', 34);
INSERT INTO `sys_oper_log` VALUES (647, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2194', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:11:15', 162);
INSERT INTO `sys_oper_log` VALUES (648, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2195', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:11:18', 67);
INSERT INTO `sys_oper_log` VALUES (649, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2196', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:11:21', 183);
INSERT INTO `sys_oper_log` VALUES (650, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2197', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:11:24', 78);
INSERT INTO `sys_oper_log` VALUES (651, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2198', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:11:26', 84);
INSERT INTO `sys_oper_log` VALUES (652, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '牙医诊所', '/system/menu/2193', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:11:31', 82);
INSERT INTO `sys_oper_log` VALUES (653, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-11-18 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-11-18\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"赵医生\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-11-18\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:22:58', 38);
INSERT INTO `sys_oper_log` VALUES (654, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-11-18 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-11-18\",\"createdAt\":\"2024-10-05\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"赵医生\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-11-18\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:23:27', 3);
INSERT INTO `sys_oper_log` VALUES (655, '预约功能', 2, 'com.ruoyi.appointment.controller.TtAppointmentsController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDate\":\"2024-11-18 00:00:00\",\"appointmentDuration\":30,\"appointmentId\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"2\",\"appointmentTime\":\"2024-11-18 08:00:00\",\"createdAt\":\"2024-10-05 00:00:00\",\"doctorId\":3,\"params\":{},\"patientId\":1,\"ttDoctor\":{\"name\":\"赵医生\",\"params\":{}},\"ttPatient\":{\"name\":\"张伟\",\"params\":{}},\"updatedAt\":\"2024-11-18 00:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:27:22', 44);
INSERT INTO `sys_oper_log` VALUES (656, '预约功能', 1, 'com.ruoyi.appointment.controller.TtAppointmentsController.add()', 'POST', 1, 'admin', '牙医诊所', '/appointment/appointments', '127.0.0.1', '内网IP', '{\"appointmentDuration\":45,\"appointmentId\":6,\"appointmentProject\":\"2\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-18 17:32:55\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"11\",\"params\":{}}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:33:01', 27);
INSERT INTO `sys_oper_log` VALUES (657, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-18 17:45:03\",\"billingId\":1,\"doctorName\":\"李医生\",\"notes\":\"牙齿检查及清洁\",\"params\":{},\"patientName\":\"张三\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":800.5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:45:04', 38);
INSERT INTO `sys_oper_log` VALUES (658, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-16 07:02:10\",\"billingId\":2,\"doctorName\":\"杜医生\",\"notes\":\"补牙费用\",\"params\":{},\"patientName\":\"李四\",\"paymentMethod\":\"5\",\"paymentStatus\":\"2\",\"receiver\":\"张护士\",\"totalAmount\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:45:13', 34);
INSERT INTO `sys_oper_log` VALUES (659, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-18 17:45:56\",\"billingId\":6,\"doctorName\":\"李医生\",\"notes\":\"鸿运当头666，猪头肉\\n\",\"params\":{},\"patientName\":\"刘洋\",\"paymentMethod\":\"5\",\"paymentStatus\":\"2\",\"receiver\":\"刘护士\",\"totalAmount\":200}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:45:57', 26);
INSERT INTO `sys_oper_log` VALUES (660, '账单管理', 2, 'com.ruoyi.billing.controller.TtBillingController.edit()', 'PUT', 1, 'admin', '牙医诊所', '/billing/billing', '127.0.0.1', '内网IP', '{\"billingDate\":\"2024-11-13 05:20:45\",\"billingId\":4,\"doctorName\":\"李医生\",\"notes\":\"牙齿矫正咨询费\",\"params\":{},\"patientName\":\"赵六\",\"paymentMethod\":\"1\",\"paymentStatus\":\"1\",\"receiver\":\"王护士\",\"totalAmount\":1200.53}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-18 17:46:12', 29);

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-10-05 15:46:16', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-10-05 15:46:16', 'admin', '2024-11-15 16:01:10', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-18 21:25:41', 'admin', '2024-10-05 15:46:15', '', '2024-11-18 21:25:40', '管理员');
INSERT INTO `sys_user` VALUES (2, 100, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '1', '0', '127.0.0.1', '2024-10-05 15:46:15', 'admin', '2024-10-05 15:46:15', 'admin', '2024-11-15 15:59:54', '测试员');
INSERT INTO `sys_user` VALUES (100, 100, 'test', 'test', '00', '', '', '2', '', '$2a$10$/NIAAJu1SxRBUsCNvALkuO.fPkPNMFZQSuVNe6qjP6r9ReocXAT7q', '1', '0', '127.0.0.1', '2024-11-04 10:22:26', 'admin', '2024-11-01 16:26:49', 'admin', '2024-11-15 15:59:57', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

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
  `appointment_date` date NULL DEFAULT NULL COMMENT '预约终止时间',
  `appointment_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约开始时间',
  `appointment_duration` int(11) NULL DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE INDEX `doctor_id`(`doctor_id`, `appointment_date`, `appointment_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  INDEX `fk_patient_appointment`(`patient_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '预约表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_appointments
-- ----------------------------
INSERT INTO `tt_appointments` VALUES (1, 1, 3, '2024-11-18', '2024-11-18 08:00:00', 30, '1', '2', '2024-10-05 00:00:00', '2024-11-18 00:00:00');
INSERT INTO `tt_appointments` VALUES (2, 2, 1, '2024-11-15', '2024-11-18 11:20:56', 45, '3', '1', '2024-10-05 00:00:00', '2024-11-18 11:20:56');
INSERT INTO `tt_appointments` VALUES (3, 3, 3, '2024-11-29', '2024-11-18 11:20:59', 60, '3', '3', '2024-10-05 00:00:00', '2024-11-18 11:20:59');
INSERT INTO `tt_appointments` VALUES (4, 4, 4, '2024-11-03', '2024-11-18 11:21:03', 30, '4', '3', '2024-10-05 00:00:00', '2024-11-18 11:21:03');
INSERT INTO `tt_appointments` VALUES (5, 5, 5, '2024-11-12', '2024-11-18 11:21:06', 30, '6', '1', '2024-10-05 09:51:34', '2024-11-18 11:21:06');
INSERT INTO `tt_appointments` VALUES (6, 1, 1, NULL, '2024-11-18 17:33:37', 45, '2', '1', '2024-11-18 17:33:01', '2024-11-18 17:33:37');

-- ----------------------------
-- Table structure for tt_appointments_test
-- ----------------------------
DROP TABLE IF EXISTS `tt_appointments_test`;
CREATE TABLE `tt_appointments_test`  (
  `appointment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint(20) NULL DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint(20) NULL DEFAULT NULL COMMENT '医生ID，关联医生表',
  `appointment_start_time` datetime NULL DEFAULT NULL COMMENT '预约开始时间',
  `appointment_end_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约终止时间',
  `appointment_duration` int(11) NULL DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE INDEX `doctor_id`(`doctor_id`, `appointment_start_time`, `appointment_end_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  INDEX `fk_patient_appointment`(`patient_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '预约表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_appointments_test
-- ----------------------------
INSERT INTO `tt_appointments_test` VALUES (1, 1, 3, '2024-11-18 16:54:31', '2024-11-18 16:54:33', 30, '1', '2', '2024-10-05 00:00:00', '2024-11-18 16:54:33');
INSERT INTO `tt_appointments_test` VALUES (2, 2, 1, '2024-11-20 16:54:34', '2024-11-18 16:54:51', 45, '3', '1', '2024-10-05 00:00:00', '2024-11-18 16:54:51');
INSERT INTO `tt_appointments_test` VALUES (3, 3, 3, '2024-11-20 16:54:37', '2024-11-18 16:54:56', 60, '3', '3', '2024-10-05 00:00:00', '2024-11-18 16:54:56');
INSERT INTO `tt_appointments_test` VALUES (4, 4, 4, '2024-11-19 16:54:39', '2024-11-18 16:54:48', 30, '4', '3', '2024-10-05 00:00:00', '2024-11-18 16:54:48');
INSERT INTO `tt_appointments_test` VALUES (5, 5, 5, '2024-11-21 16:54:41', '2024-11-18 16:54:59', 30, '6', '1', '2024-10-05 09:51:34', '2024-11-18 16:54:59');

-- ----------------------------
-- Table structure for tt_billing
-- ----------------------------
DROP TABLE IF EXISTS `tt_billing`;
CREATE TABLE `tt_billing`  (
  `billing_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `doctor_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billing_date` datetime NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `receiver` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`billing_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tt_billing
-- ----------------------------
INSERT INTO `tt_billing` VALUES (1, '张三', '李医生', '2024-11-18 17:45:03', 800.50, '1', '1', '王护士', '牙齿检查及清洁');
INSERT INTO `tt_billing` VALUES (2, '李四', '杜医生', '2024-11-16 07:02:10', 300.00, '2', '5', '张护士', '补牙费用');
INSERT INTO `tt_billing` VALUES (6, '刘洋', '李医生', '2024-11-18 17:45:56', 200.00, '2', '5', '刘护士', '鸿运当头666，猪头肉\n');
INSERT INTO `tt_billing` VALUES (4, '赵六', '李医生', '2024-11-13 05:20:45', 1200.53, '1', '1', '王护士', '牙齿矫正咨询费');
INSERT INTO `tt_billing` VALUES (5, '钱七', '杜医生', '2024-11-13 09:25:30', 500.00, '1', '1', '张护士', '定期牙齿清洁');

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

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
-- Table structure for tt_inventory_inbound
-- ----------------------------
DROP TABLE IF EXISTS `tt_inventory_inbound`;
CREATE TABLE `tt_inventory_inbound`  (
  `inbound_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库工单id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物品名字',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '负责人',
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '供应来源',
  `quantity` bigint(20) NOT NULL COMMENT '入库数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '剂量单位',
  `purchase_price` decimal(10, 0) NOT NULL COMMENT '进价（最小单位）',
  `freight` decimal(10, 0) NULL DEFAULT NULL COMMENT '运费',
  `spending` decimal(10, 0) NULL DEFAULT NULL COMMENT '总开销',
  `inbound_time` date NULL DEFAULT NULL COMMENT '入库时间',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`inbound_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tt_inventory_inbound
-- ----------------------------
INSERT INTO `tt_inventory_inbound` VALUES (1, 'A', '刘航', 'a', 10, '个', 12, NULL, NULL, NULL, '2024-11-13 15:39:33', '2024-11-13 15:39:33');

-- ----------------------------
-- Table structure for tt_inventory_medicine
-- ----------------------------
DROP TABLE IF EXISTS `tt_inventory_medicine`;
CREATE TABLE `tt_inventory_medicine`  (
  `medicine_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '物品ID',
  `medicine_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '物品名称',
  `medicine_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '物品描述',
  `supplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商',
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商产地',
  `purchase_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '进价',
  `selling_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '售价',
  `quantity` bigint(20) NOT NULL COMMENT '库存数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '药品的单位',
  `manufacture_date` date NULL DEFAULT NULL COMMENT '生产日期',
  `shelf_life` int(11) NULL DEFAULT NULL COMMENT '保质期',
  `expiration_date` date NULL DEFAULT NULL COMMENT '过期日期',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`medicine_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '物品管理表，记录库存的物品信息及供应商产地' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_inventory_medicine
-- ----------------------------
INSERT INTO `tt_inventory_medicine` VALUES (1, '药品A', '心脏病药物', '药品公司A', '中国', NULL, NULL, 50, NULL, '2025-12-31', NULL, NULL, '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory_medicine` VALUES (2, '药品B', '抗生素', '药品公司B', '中国', NULL, NULL, 30, NULL, '2025-06-30', NULL, NULL, '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory_medicine` VALUES (3, '药品C', '止痛药', '药品公司C', '中国', NULL, NULL, 40, NULL, '2026-01-15', NULL, NULL, '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory_medicine` VALUES (4, '药品D', '维生素补充剂', '药品公司D', '中国', NULL, NULL, 100, NULL, '2026-03-01', NULL, NULL, '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory_medicine` VALUES (5, '药品E', '抗过敏药物', '药品公司E', '中国', NULL, NULL, 20, NULL, '2024-11-30', NULL, NULL, '2024-10-05 09:51:34', '2024-10-05 09:51:34');
INSERT INTO `tt_inventory_medicine` VALUES (6, '药品F', NULL, NULL, NULL, NULL, NULL, 120, '个', NULL, NULL, NULL, '2024-11-13 15:26:03', '2024-11-14 16:17:36');

-- ----------------------------
-- Table structure for tt_inventory_offsetting
-- ----------------------------
DROP TABLE IF EXISTS `tt_inventory_offsetting`;
CREATE TABLE `tt_inventory_offsetting`  (
  `offsetting_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '对冲工单id',
  `item_id` bigint(20) NOT NULL COMMENT '物品ID',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '负责人',
  `reason` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '对冲原因',
  `quantity` bigint(20) NOT NULL COMMENT '对冲数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '剂量单位',
  `expenses_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '开销原因',
  `spending` decimal(10, 0) NULL DEFAULT NULL COMMENT '开销',
  `offsetting_time` date NULL DEFAULT NULL COMMENT '对冲时间',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`offsetting_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tt_inventory_offsetting
-- ----------------------------
INSERT INTO `tt_inventory_offsetting` VALUES (18, 6, '刘航', 'test', 2, '个', NULL, NULL, NULL, '2024-11-14 16:17:37', '2024-11-14 16:17:36');
INSERT INTO `tt_inventory_offsetting` VALUES (19, 1, '刘航', 'testtool', 1, '个', NULL, NULL, NULL, '2024-11-14 16:32:22', '2024-11-14 16:32:22');

-- ----------------------------
-- Table structure for tt_inventory_outbound
-- ----------------------------
DROP TABLE IF EXISTS `tt_inventory_outbound`;
CREATE TABLE `tt_inventory_outbound`  (
  `outbound_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库工单id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '物品名字',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '负责人',
  `reason` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '出库原因',
  `quantity` bigint(20) NOT NULL COMMENT '出库数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '剂量单位',
  `expenses_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '开销原因',
  `spending` decimal(10, 0) NULL DEFAULT NULL COMMENT '总开销',
  `outbound_time` date NULL DEFAULT NULL COMMENT '出库时间',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`outbound_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tt_inventory_outbound
-- ----------------------------
INSERT INTO `tt_inventory_outbound` VALUES (1, '药品A', '刘航', '退货', 1, '个', NULL, NULL, NULL, '2024-11-13 15:49:00', '2024-11-13 15:48:59');

-- ----------------------------
-- Table structure for tt_inventory_tools
-- ----------------------------
DROP TABLE IF EXISTS `tt_inventory_tools`;
CREATE TABLE `tt_inventory_tools`  (
  `tools_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工具ID',
  `tools_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '工具名称',
  `tools_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '工具描述',
  `supplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商',
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商产地',
  `purchase_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '进价',
  `selling_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '售价',
  `quantity` bigint(20) NOT NULL COMMENT '库存数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '工具的单位',
  `manufacture_date` date NULL DEFAULT NULL COMMENT '生产日期',
  `shelf_life` int(11) NULL DEFAULT NULL COMMENT '保质期',
  `expiration_date` date NULL DEFAULT NULL COMMENT '过期日期',
  `created_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`tools_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_inventory_tools
-- ----------------------------
INSERT INTO `tt_inventory_tools` VALUES (1, '工具A', 'A类工具', '工具供应商A', '中国', NULL, NULL, 49, NULL, '2025-12-31', NULL, NULL, '2024-10-05 09:51:34', '2024-10-05 09:51:34');

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
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `past_medical_history` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '过去病史',
  `allergens` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '过敏源',
  `diagnosis_statue` enum('初诊','复诊') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '初诊' COMMENT '是否初诊',
  PRIMARY KEY (`patient_id`) USING BTREE,
  UNIQUE INDEX `medical_record_number`(`medical_record_number`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '患者信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_patients
-- ----------------------------
INSERT INTO `tt_patients` VALUES (1, '张伟', 7, '1985-05-15', '男', '13111488526', '北京朝阳区幸福街道123号', '2024-10-05 00:00:00', '2024-10-24 00:00:00', '123', NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (2, '李丽', 8, '1990-07-22', '女', '987-654-3210', '上海浦东新区光明路456号', '2024-10-05 09:51:34', '2024-10-24 16:08:29', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (3, '王强', 9, '1978-02-11', '男', '555-123-4567', '广州天河区体育东路789号', '2024-10-05 09:51:34', '2024-10-24 16:08:34', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (4, '赵敏', 10, '2000-12-30', '女', '444-222-1111', '深圳南山区科技园101号', '2024-10-05 09:51:34', '2024-10-24 16:08:37', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (5, '刘洋', 11, '2005-09-18', '男', '666-555-4444', '武汉洪山区珞喻路303号', '2024-10-05 09:51:34', '2024-10-24 16:08:39', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (7, '根号三', 12, '2004-04-17', '男', '13111488526', NULL, '2024-10-05 18:00:54', '2024-10-24 16:08:42', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (8, '刘洋', 13, '2024-11-04', '男', '11111', '河北省唐山市', '2024-11-17 00:00:00', '2024-11-17 16:47:15', '111', NULL, NULL, '初诊');

SET FOREIGN_KEY_CHECKS = 1;
