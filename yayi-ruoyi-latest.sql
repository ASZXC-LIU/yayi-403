/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306_1
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : yayi-ruoyi

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 30/11/2024 01:17:45
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



) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;




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

) ENGINE = InnoDB AUTO_INCREMENT = 354 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

/*Data for the table `gen_table_column` */



-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for medicine_supplier
-- ----------------------------
DROP TABLE IF EXISTS `medicine_supplier`;
CREATE TABLE `medicine_supplier`  (
  `medicine_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  PRIMARY KEY (`medicine_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of medicine_supplier
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 281 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
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

) ENGINE=InnoDB AUTO_INCREMENT=2193 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`route_name`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统管理',0,6,'system',NULL,'','',1,0,'M','0','0','','system','admin','2024-10-05 15:46:16','admin','2024-10-23 17:30:48','系统管理目录'),
(2,'系统监控',0,8,'monitor',NULL,'','',1,0,'M','0','0','','monitor','admin','2024-10-05 15:46:16','admin','2024-11-13 21:20:42','系统监控目录'),
(3,'系统工具',0,7,'tool',NULL,'','',1,0,'M','0','0','','tool','admin','2024-10-05 15:46:16','admin','2024-11-13 21:20:33','系统工具目录'),
(100,'用户管理',1,1,'user','system/user/index','','',1,0,'C','0','0','system:user:list','user','admin','2024-10-05 15:46:16','',NULL,'用户管理菜单'),
(101,'角色管理',1,2,'role','system/role/index','','',1,0,'C','0','0','system:role:list','peoples','admin','2024-10-05 15:46:16','',NULL,'角色管理菜单'),
(102,'菜单管理',1,3,'menu','system/menu/index','','',1,1,'C','0','0','system:menu:list','tree-table','admin','2024-10-05 15:46:16','admin','2024-11-01 16:01:26','菜单管理菜单'),
(103,'部门管理',1,4,'dept','system/dept/index','','',1,0,'C','0','0','system:dept:list','tree','admin','2024-10-05 15:46:16','',NULL,'部门管理菜单'),
(104,'岗位管理',1,5,'post','system/post/index','','',1,0,'C','0','0','system:post:list','post','admin','2024-10-05 15:46:16','',NULL,'岗位管理菜单'),
(105,'字典管理',1,6,'dict','system/dict/index','','',1,0,'C','0','0','system:dict:list','dict','admin','2024-10-05 15:46:16','',NULL,'字典管理菜单'),
(106,'参数设置',1,7,'config','system/config/index','','',1,0,'C','0','0','system:config:list','edit','admin','2024-10-05 15:46:16','',NULL,'参数设置菜单'),
(107,'通知公告',1,8,'notice','system/notice/index','','',1,0,'C','0','0','system:notice:list','message','admin','2024-10-05 15:46:16','',NULL,'通知公告菜单'),
(108,'日志管理',1,9,'log','','','',1,0,'M','0','0','','log','admin','2024-10-05 15:46:16','',NULL,'日志管理菜单'),
(109,'在线用户',2,1,'online','monitor/online/index','','',1,0,'C','0','0','monitor:online:list','online','admin','2024-10-05 15:46:16','',NULL,'在线用户菜单'),
(110,'定时任务',2,2,'job','monitor/job/index','','',1,0,'C','0','0','monitor:job:list','job','admin','2024-10-05 15:46:16','',NULL,'定时任务菜单'),
(111,'数据监控',2,3,'druid','monitor/druid/index','','',1,0,'C','0','0','monitor:druid:list','druid','admin','2024-10-05 15:46:16','',NULL,'数据监控菜单'),
(112,'服务监控',2,4,'server','monitor/server/index','','',1,0,'C','0','0','monitor:server:list','server','admin','2024-10-05 15:46:16','',NULL,'服务监控菜单'),
(113,'缓存监控',2,5,'cache','monitor/cache/index','','',1,0,'C','0','0','monitor:cache:list','redis','admin','2024-10-05 15:46:16','',NULL,'缓存监控菜单'),
(114,'缓存列表',2,6,'cacheList','monitor/cache/list','','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2024-10-05 15:46:16','',NULL,'缓存列表菜单'),
(115,'表单构建',3,1,'build','tool/build/index','','',1,0,'C','0','0','tool:build:list','build','admin','2024-10-05 15:46:16','',NULL,'表单构建菜单'),
(116,'代码生成',3,2,'gen','tool/gen/index','','',1,0,'C','0','0','tool:gen:list','code','admin','2024-10-05 15:46:16','',NULL,'代码生成菜单'),
(117,'系统接口',3,3,'swagger','tool/swagger/index','','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2024-10-05 15:46:16','',NULL,'系统接口菜单'),
(500,'操作日志',108,1,'operlog','monitor/operlog/index','','',1,0,'C','0','0','monitor:operlog:list','form','admin','2024-10-05 15:46:16','',NULL,'操作日志菜单'),
(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2024-10-05 15:46:16','',NULL,'登录日志菜单'),
(1000,'用户查询',100,1,'','','','',1,0,'F','0','0','system:user:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1001,'用户新增',100,2,'','','','',1,0,'F','0','0','system:user:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1002,'用户修改',100,3,'','','','',1,0,'F','0','0','system:user:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1003,'用户删除',100,4,'','','','',1,0,'F','0','0','system:user:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1004,'用户导出',100,5,'','','','',1,0,'F','0','0','system:user:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(1005,'用户导入',100,6,'','','','',1,0,'F','0','0','system:user:import','#','admin','2024-10-05 15:46:16','',NULL,''),
(1006,'重置密码',100,7,'','','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2024-10-05 15:46:16','',NULL,''),
(1007,'角色查询',101,1,'','','','',1,0,'F','0','0','system:role:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1008,'角色新增',101,2,'','','','',1,0,'F','0','0','system:role:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1009,'角色修改',101,3,'','','','',1,0,'F','0','0','system:role:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1010,'角色删除',101,4,'','','','',1,0,'F','0','0','system:role:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1011,'角色导出',101,5,'','','','',1,0,'F','0','0','system:role:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(1012,'菜单查询',102,1,'','','','',1,0,'F','0','0','system:menu:query','#','admin','2024-10-05 15:46:16','admin','2024-11-01 16:01:29',''),
(1013,'菜单新增',102,2,'','','','',1,0,'F','0','0','system:menu:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1014,'菜单修改',102,3,'','','','',1,0,'F','0','0','system:menu:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1015,'菜单删除',102,4,'','','','',1,0,'F','0','0','system:menu:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1016,'部门查询',103,1,'','','','',1,0,'F','0','0','system:dept:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1017,'部门新增',103,2,'','','','',1,0,'F','0','0','system:dept:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1018,'部门修改',103,3,'','','','',1,0,'F','0','0','system:dept:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1019,'部门删除',103,4,'','','','',1,0,'F','0','0','system:dept:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1020,'岗位查询',104,1,'','','','',1,0,'F','0','0','system:post:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1021,'岗位新增',104,2,'','','','',1,0,'F','0','0','system:post:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1022,'岗位修改',104,3,'','','','',1,0,'F','0','0','system:post:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1023,'岗位删除',104,4,'','','','',1,0,'F','0','0','system:post:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1024,'岗位导出',104,5,'','','','',1,0,'F','0','0','system:post:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(1025,'字典查询',105,1,'#','','','',1,0,'F','0','0','system:dict:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1026,'字典新增',105,2,'#','','','',1,0,'F','0','0','system:dict:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1027,'字典修改',105,3,'#','','','',1,0,'F','0','0','system:dict:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1028,'字典删除',105,4,'#','','','',1,0,'F','0','0','system:dict:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1029,'字典导出',105,5,'#','','','',1,0,'F','0','0','system:dict:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(1030,'参数查询',106,1,'#','','','',1,0,'F','0','0','system:config:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1031,'参数新增',106,2,'#','','','',1,0,'F','0','0','system:config:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1032,'参数修改',106,3,'#','','','',1,0,'F','0','0','system:config:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1033,'参数删除',106,4,'#','','','',1,0,'F','0','0','system:config:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1034,'参数导出',106,5,'#','','','',1,0,'F','0','0','system:config:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(1035,'公告查询',107,1,'#','','','',1,0,'F','0','0','system:notice:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1036,'公告新增',107,2,'#','','','',1,0,'F','0','0','system:notice:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1037,'公告修改',107,3,'#','','','',1,0,'F','0','0','system:notice:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1038,'公告删除',107,4,'#','','','',1,0,'F','0','0','system:notice:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1039,'操作查询',500,1,'#','','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1040,'操作删除',500,2,'#','','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1041,'日志导出',500,3,'#','','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(1042,'登录查询',501,1,'#','','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1043,'登录删除',501,2,'#','','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1044,'日志导出',501,3,'#','','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(1045,'账户解锁',501,4,'#','','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2024-10-05 15:46:16','',NULL,''),
(1046,'在线查询',109,1,'#','','','',1,0,'F','0','0','monitor:online:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1047,'批量强退',109,2,'#','','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2024-10-05 15:46:16','',NULL,''),
(1048,'单条强退',109,3,'#','','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2024-10-05 15:46:16','',NULL,''),
(1049,'任务查询',110,1,'#','','','',1,0,'F','0','0','monitor:job:query','#','admin','2024-10-05 15:46:16','',NULL,''),
(1050,'任务新增',110,2,'#','','','',1,0,'F','0','0','monitor:job:add','#','admin','2024-10-05 15:46:16','',NULL,''),
(1051,'任务修改',110,3,'#','','','',1,0,'F','0','0','monitor:job:edit','#','admin','2024-10-05 15:46:16','',NULL,''),
(1052,'任务删除',110,4,'#','','','',1,0,'F','0','0','monitor:job:remove','#','admin','2024-10-05 15:46:16','',NULL,''),
(1053,'状态修改',110,5,'#','','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2024-10-05 15:46:16','',NULL,''),
(1054,'任务导出',110,6,'#','','','',1,0,'F','0','0','monitor:job:export','#','admin','2024-10-05 15:46:16','',NULL,''),
(2042,'预约功能',2062,1,'appointments','appointment/appointments/index',NULL,'',1,1,'C','0','0','appointment:appointments:list','date-range','admin','2024-10-14 10:37:47','admin','2024-11-01 16:07:43','预约功能菜单'),
(2043,'预约功能查询',2042,1,'#','',NULL,'',1,0,'F','0','0','appointment:appointments:query','#','admin','2024-10-14 10:37:47','',NULL,''),
(2044,'预约功能新增',2042,2,'#','',NULL,'',1,0,'F','0','0','appointment:appointments:add','#','admin','2024-10-14 10:37:47','',NULL,''),
(2045,'预约功能修改',2042,3,'#','',NULL,'',1,0,'F','0','0','appointment:appointments:edit','#','admin','2024-10-14 10:37:47','',NULL,''),
(2046,'预约功能删除',2042,4,'#','',NULL,'',1,0,'F','0','0','appointment:appointments:remove','#','admin','2024-10-14 10:37:47','',NULL,''),
(2047,'预约功能导出',2042,5,'#','',NULL,'',1,0,'F','0','0','appointment:appointments:export','#','admin','2024-10-14 10:37:47','',NULL,''),
(2060,'医生列表',0,3,'null',NULL,NULL,'',1,0,'M','0','1','','6-医疗-医生','admin','2024-10-23 17:17:16','admin','2024-11-19 23:45:23',''),
(2061,'患者列表',0,2,'null',NULL,NULL,'',1,0,'M','0','1','','患者管理','admin','2024-10-23 17:18:06','admin','2024-11-19 23:45:15',''),
(2062,'预约功能',0,1,'appointments',NULL,NULL,'',1,0,'M','0','0','','date','admin','2024-10-23 17:19:06','admin','2024-11-01 16:06:02',''),
(2099,'患者信息',2180,1,'patientlists','patientlist/patientlists/index',NULL,'',1,1,'C','0','0','patientlist:patientlists:list','患者管理','admin','2024-10-24 15:28:54','admin','2024-11-19 23:44:14','患者信息菜单'),
(2100,'患者信息查询',2099,1,'#','',NULL,'',1,0,'F','0','0','patientlist:patientlists:query','#','admin','2024-10-24 15:28:54','',NULL,''),
(2101,'患者信息新增',2099,2,'#','',NULL,'',1,0,'F','0','0','patientlist:patientlists:add','#','admin','2024-10-24 15:28:54','',NULL,''),
(2102,'患者信息修改',2099,3,'#','',NULL,'',1,0,'F','0','0','patientlist:patientlists:edit','#','admin','2024-10-24 15:28:54','',NULL,''),
(2103,'患者信息删除',2099,4,'#','',NULL,'',1,0,'F','0','0','patientlist:patientlists:remove','#','admin','2024-10-24 15:28:54','',NULL,''),
(2104,'患者信息导出',2099,5,'#','',NULL,'',1,0,'F','0','0','patientlist:patientlists:export','#','admin','2024-10-24 15:28:54','',NULL,''),
(2105,'医生信息',2180,2,'doctorlists','doctorlist/doctorlists/index',NULL,'',1,1,'C','0','0','doctorlist:doctorlists:list','医生','admin','2024-10-24 15:52:05','admin','2024-11-19 23:44:29','医生信息菜单'),
(2106,'医生信息查询',2105,1,'#','',NULL,'',1,0,'F','0','0','doctorlist:doctorlists:query','#','admin','2024-10-24 15:52:05','',NULL,''),
(2107,'医生信息新增',2105,2,'#','',NULL,'',1,0,'F','0','0','doctorlist:doctorlists:add','#','admin','2024-10-24 15:52:05','',NULL,''),
(2108,'医生信息修改',2105,3,'#','',NULL,'',1,0,'F','0','0','doctorlist:doctorlists:edit','#','admin','2024-10-24 15:52:05','',NULL,''),
(2109,'医生信息删除',2105,4,'#','',NULL,'',1,0,'F','0','0','doctorlist:doctorlists:remove','#','admin','2024-10-24 15:52:05','',NULL,''),
(2110,'医生信息导出',2105,5,'#','',NULL,'',1,0,'F','0','0','doctorlist:doctorlists:export','#','admin','2024-10-24 15:52:05','',NULL,''),
(2111,'收银台',0,4,'billing',NULL,NULL,'',1,0,'M','0','0','','cash','admin','2024-11-01 14:47:45','admin','2024-11-13 21:20:16',''),
(2112,'收费',2111,1,'billing','billing/billing/index',NULL,'',1,1,'C','0','0','billing:billing:list','cash','admin','2024-11-01 14:51:13','admin','2024-11-19 11:27:14','收费菜单'),
(2113,'收费查询',2112,1,'#','',NULL,'',1,0,'F','0','0','billing:billing:query','#','admin','2024-11-01 14:51:13','',NULL,''),
(2114,'收费新增',2112,2,'#','',NULL,'',1,0,'F','0','0','billing:billing:add','#','admin','2024-11-01 14:51:13','',NULL,''),
(2115,'收费修改',2112,3,'#','',NULL,'',1,0,'F','0','0','billing:billing:edit','#','admin','2024-11-01 14:51:13','',NULL,''),
(2116,'收费删除',2112,4,'#','',NULL,'',1,0,'F','0','0','billing:billing:remove','#','admin','2024-11-01 14:51:13','',NULL,''),
(2117,'收费导出',2112,5,'#','',NULL,'',1,0,'F','0','0','billing:billing:export','#','admin','2024-11-01 14:51:13','',NULL,''),
(2118,'库存管理',0,5,'inventory',NULL,NULL,'',1,0,'M','0','0','','monitor','admin','2024-11-13 13:03:29','admin','2024-11-13 21:20:24',''),
(2119,'药品库存',2118,1,'medicine','medicine/medicine/index',NULL,'',1,0,'C','0','0','medicine:medicine:list','#','admin','2024-11-13 13:09:58','',NULL,'药品库存菜单'),
(2120,'药品库存查询',2119,1,'#','',NULL,'',1,0,'F','0','0','medicine:medicine:query','#','admin','2024-11-13 13:09:58','',NULL,''),
(2121,'药品库存新增',2119,2,'#','',NULL,'',1,0,'F','0','0','medicine:medicine:add','#','admin','2024-11-13 13:09:59','',NULL,''),
(2122,'药品库存修改',2119,3,'#','',NULL,'',1,0,'F','0','0','medicine:medicine:edit','#','admin','2024-11-13 13:09:59','',NULL,''),
(2123,'药品库存删除',2119,4,'#','',NULL,'',1,0,'F','0','0','medicine:medicine:remove','#','admin','2024-11-13 13:09:59','',NULL,''),
(2124,'药品库存导出',2119,5,'#','',NULL,'',1,0,'F','0','0','medicine:medicine:export','#','admin','2024-11-13 13:09:59','',NULL,''),
(2131,'工具库存',2118,2,'inventorytools','inventorytool/inventorytools/index',NULL,'',1,0,'C','0','0','inventorytool:inventorytools:list','#','admin','2024-11-13 13:32:35','admin','2024-11-13 21:19:18','工具库存菜单'),
(2132,'工具库存查询',2131,1,'#','',NULL,'',1,0,'F','0','0','inventorytool:inventorytools:query','#','admin','2024-11-13 13:32:35','',NULL,''),
(2133,'工具库存新增',2131,2,'#','',NULL,'',1,0,'F','0','0','inventorytool:inventorytools:add','#','admin','2024-11-13 13:32:35','',NULL,''),
(2134,'工具库存修改',2131,3,'#','',NULL,'',1,0,'F','0','0','inventorytool:inventorytools:edit','#','admin','2024-11-13 13:32:35','',NULL,''),
(2135,'工具库存删除',2131,4,'#','',NULL,'',1,0,'F','0','0','inventorytool:inventorytools:remove','#','admin','2024-11-13 13:32:35','',NULL,''),
(2136,'工具库存导出',2131,5,'#','',NULL,'',1,0,'F','0','0','inventorytool:inventorytools:export','#','admin','2024-11-13 13:32:35','',NULL,''),
(2161,'入库工单',2118,3,'inbounds','inbound/inbounds/index',NULL,'',1,0,'C','0','0','inbound:inbounds:list','#','admin','2024-11-13 15:37:34','admin','2024-11-13 21:19:23','入库工单菜单'),
(2162,'入库工单查询',2161,1,'#','',NULL,'',1,0,'F','0','0','inbound:inbounds:query','#','admin','2024-11-13 15:37:34','',NULL,''),
(2163,'入库工单新增',2161,2,'#','',NULL,'',1,0,'F','0','0','inbound:inbounds:add','#','admin','2024-11-13 15:37:34','',NULL,''),
(2164,'入库工单修改',2161,3,'#','',NULL,'',1,0,'F','0','0','inbound:inbounds:edit','#','admin','2024-11-13 15:37:34','',NULL,''),
(2165,'入库工单删除',2161,4,'#','',NULL,'',1,0,'F','0','0','inbound:inbounds:remove','#','admin','2024-11-13 15:37:34','',NULL,''),
(2166,'入库工单导出',2161,5,'#','',NULL,'',1,0,'F','0','0','inbound:inbounds:export','#','admin','2024-11-13 15:37:34','',NULL,''),
(2167,'对冲记录工单',2118,5,'offsettings','offsetting/offsettings/index',NULL,'',1,0,'C','0','0','offsetting:offsettings:list','#','admin','2024-11-13 15:42:34','admin','2024-11-13 21:19:29','对冲记录工单菜单'),
(2168,'对冲记录工单查询',2167,1,'#','',NULL,'',1,0,'F','0','0','offsetting:offsettings:query','#','admin','2024-11-13 15:42:34','',NULL,''),
(2169,'对冲记录工单新增',2167,2,'#','',NULL,'',1,0,'F','0','0','offsetting:offsettings:add','#','admin','2024-11-13 15:42:34','',NULL,''),
(2170,'对冲记录工单修改',2167,3,'#','',NULL,'',1,0,'F','0','0','offsetting:offsettings:edit','#','admin','2024-11-13 15:42:34','',NULL,''),
(2171,'对冲记录工单删除',2167,4,'#','',NULL,'',1,0,'F','0','0','offsetting:offsettings:remove','#','admin','2024-11-13 15:42:34','',NULL,''),
(2172,'对冲记录工单导出',2167,5,'#','',NULL,'',1,0,'F','0','0','offsetting:offsettings:export','#','admin','2024-11-13 15:42:34','',NULL,''),
(2173,'出库工单',2118,4,'outbounds','outbound/outbounds/index',NULL,'',1,0,'C','0','0','outbound:outbounds:list','#','admin','2024-11-13 15:46:48','admin','2024-11-13 21:19:38','出库工单菜单'),
(2174,'出库工单查询',2173,1,'#','',NULL,'',1,0,'F','0','0','outbound:outbounds:query','#','admin','2024-11-13 15:46:48','',NULL,''),
(2175,'出库工单新增',2173,2,'#','',NULL,'',1,0,'F','0','0','outbound:outbounds:add','#','admin','2024-11-13 15:46:48','',NULL,''),
(2176,'出库工单修改',2173,3,'#','',NULL,'',1,0,'F','0','0','outbound:outbounds:edit','#','admin','2024-11-13 15:46:48','',NULL,''),
(2177,'出库工单删除',2173,4,'#','',NULL,'',1,0,'F','0','0','outbound:outbounds:remove','#','admin','2024-11-13 15:46:48','',NULL,''),
(2178,'出库工单导出',2173,5,'#','',NULL,'',1,0,'F','0','0','outbound:outbounds:export','#','admin','2024-11-13 15:46:48','',NULL,''),
(2179,'未支付',2111,2,'unpay','billing/billing/unpay',NULL,'',1,1,'C','0','0','','money','admin','2024-11-19 11:29:13','admin','2024-11-19 11:33:02',''),
(2180,'信息管理',0,6,'information',NULL,NULL,'',1,0,'M','0','0',NULL,'documentation','admin','2024-11-19 23:44:00','',NULL,''),
(2181,'供应商列表',2180,1,'suppliers','supplier/suppliers/index',NULL,'',1,0,'C','0','0','supplier:suppliers:list','#','admin','2024-11-20 00:05:03','',NULL,'供应商列表菜单'),
(2182,'供应商列表查询',2181,1,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:query','#','admin','2024-11-20 00:05:03','',NULL,''),
(2183,'供应商列表新增',2181,2,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:add','#','admin','2024-11-20 00:05:03','',NULL,''),
(2184,'供应商列表修改',2181,3,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:edit','#','admin','2024-11-20 00:05:03','',NULL,''),
(2185,'供应商列表删除',2181,4,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:remove','#','admin','2024-11-20 00:05:03','',NULL,''),
(2186,'供应商列表导出',2181,5,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:export','#','admin','2024-11-20 00:05:03','',NULL,''),
(2187,'病历列表',2180,1,'emrs','emr/emrs/index',NULL,'',1,0,'C','0','0','emr:emrs:list','#','admin','2024-11-24 22:10:16','admin','2024-11-24 22:12:07','病历列表菜单'),
(2188,'病历列表查询',2187,1,'#','',NULL,'',1,0,'F','0','0','emr:emrs:query','#','admin','2024-11-24 22:10:16','',NULL,''),
(2189,'病历列表新增',2187,2,'#','',NULL,'',1,0,'F','0','0','emr:emrs:add','#','admin','2024-11-24 22:10:16','',NULL,''),
(2190,'病历列表修改',2187,3,'#','',NULL,'',1,0,'F','0','0','emr:emrs:edit','#','admin','2024-11-24 22:10:16','',NULL,''),
(2191,'病历列表删除',2187,4,'#','',NULL,'',1,0,'F','0','0','emr:emrs:remove','#','admin','2024-11-24 22:10:16','',NULL,''),
(2192,'病历列表导出',2187,5,'#','',NULL,'',1,0,'F','0','0','emr:emrs:export','#','admin','2024-11-24 22:10:16','',NULL,'');
INSERT INTO `sys_menu` VALUES (2187, '预约测试', 2062, 1, 'aptest', 'aptest/aptest/index', NULL, '', 1, 0, 'C', '0', '0', 'aptest:aptest:list', '#', 'admin', '2024-11-26 20:39:36', '', NULL, '预约测试菜单');
INSERT INTO `sys_menu` VALUES (2188, '预约测试查询', 2187, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'aptest:aptest:query', '#', 'admin', '2024-11-26 20:39:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2189, '预约测试新增', 2187, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'aptest:aptest:add', '#', 'admin', '2024-11-26 20:39:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2190, '预约测试修改', 2187, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'aptest:aptest:edit', '#', 'admin', '2024-11-26 20:39:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2191, '预约测试删除', 2187, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'aptest:aptest:remove', '#', 'admin', '2024-11-26 20:39:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2192, '预约测试导出', 2187, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'aptest:aptest:export', '#', 'admin', '2024-11-26 20:39:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2193, '预约测试', 2062, 1, 'appointmentte', 'appointmentte/appointmentte/index', NULL, '', 1, 0, 'C', '0', '0', 'appointmentte:appointmentte:list', '#', 'admin', '2024-11-28 11:01:56', '', NULL, '预约测试菜单');
INSERT INTO `sys_menu` VALUES (2194, '预约测试查询', 2193, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointmentte:appointmentte:query', '#', 'admin', '2024-11-28 11:01:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2195, '预约测试新增', 2193, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointmentte:appointmentte:add', '#', 'admin', '2024-11-28 11:01:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2196, '预约测试修改', 2193, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointmentte:appointmentte:edit', '#', 'admin', '2024-11-28 11:01:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2197, '预约测试删除', 2193, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointmentte:appointmentte:remove', '#', 'admin', '2024-11-28 11:01:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2198, '预约测试导出', 2193, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'appointmentte:appointmentte:export', '#', 'admin', '2024-11-28 11:01:56', '', NULL, '');

/*Table structure for table `sys_notice` */


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
) ENGINE = InnoDB AUTO_INCREMENT = 841 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-10-05 15:46:16', 'admin', '2024-11-01 16:24:16', '普通角色');

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
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-30 01:15:42', 'admin', '2024-10-05 15:46:15', '', '2024-11-30 01:15:42', '管理员');
INSERT INTO `sys_user` VALUES (2, 100, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-10-05 15:46:15', 'admin', '2024-10-05 15:46:15', 'admin', '2024-11-13 16:12:11', '测试员');
INSERT INTO `sys_user` VALUES (100, 100, 'test', 'test', '00', '', '', '2', '', '$2a$10$/NIAAJu1SxRBUsCNvALkuO.fPkPNMFZQSuVNe6qjP6r9ReocXAT7q', '0', '0', '127.0.0.1', '2024-11-04 10:22:26', 'admin', '2024-11-01 16:26:49', '', '2024-11-04 10:22:25', NULL);

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
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '预约表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_appointments
-- ----------------------------
INSERT INTO `tt_appointments` VALUES (1, 1, 1, '2024-11-18', '2024-11-28 09:08:56', 30, '1', '1', '2024-10-05 00:00:00', '2024-11-28 09:08:56');
INSERT INTO `tt_appointments` VALUES (2, 1, 1, '2024-11-15', '2024-11-28 09:09:03', 45, '3', '1', '2024-10-05 00:00:00', '2024-11-28 09:09:03');
INSERT INTO `tt_appointments` VALUES (3, 3, 3, '2024-11-29', '2024-11-18 11:20:59', 60, '3', '3', '2024-10-05 00:00:00', '2024-11-18 11:20:59');
INSERT INTO `tt_appointments` VALUES (4, 4, 4, '2024-11-03', '2024-11-18 11:21:03', 30, '4', '3', '2024-10-05 00:00:00', '2024-11-18 11:21:03');
INSERT INTO `tt_appointments` VALUES (5, 5, 5, '2024-11-12', '2024-11-18 11:21:06', 30, '6', '1', '2024-10-05 09:51:34', '2024-11-18 11:21:06');
INSERT INTO `tt_appointments` VALUES (6, 1, 1, '2024-11-25', '2024-11-25 21:17:19', 45, '2', '1', '2024-11-18 17:33:01', '2024-11-25 21:17:19');
INSERT INTO `tt_appointments` VALUES (7, 3, 1, '2024-11-25', '2024-11-25 21:17:08', 30, '1', '1', '2024-11-25 21:17:14', '2024-11-25 21:17:14');
INSERT INTO `tt_appointments` VALUES (8, 3, 1, '2024-11-26', '2024-11-26 15:08:42', 45, '2', '1', '2024-11-26 15:06:27', '2024-11-26 15:08:42');
INSERT INTO `tt_appointments` VALUES (9, 3, 1, '2024-11-28', '2024-11-28 09:04:13', 45, '2', '1', '2024-11-27 22:26:01', '2024-11-28 09:04:13');

-- ----------------------------
-- Table structure for tt_appointments_test
-- ----------------------------
DROP TABLE IF EXISTS `tt_appointments_test`;
CREATE TABLE `tt_appointments_test`  (
  `appointment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint(20) NULL DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint(20) NULL DEFAULT NULL COMMENT '医生ID，关联医生表',
  `patient_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '患者姓名',
  `doctor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '医生姓名',
  `patient_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '患者联系方式',
  `appointment_start_time` datetime NULL DEFAULT NULL COMMENT '预约开始时间',
  `appointment_duration` int(11) NULL DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '预约状态',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE INDEX `doctor_id`(`doctor_id`, `appointment_start_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  INDEX `fk_patient_appointment`(`patient_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '预约表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_appointments_test
-- ----------------------------
INSERT INTO `tt_appointments_test` VALUES (2, 2, 2, '李丽', '1', '987-654-3210', '2024-11-20 00:00:00', 45, '3', '1', '2024-10-05 00:00:00', '2024-11-28 09:16:47', NULL);
INSERT INTO `tt_appointments_test` VALUES (3, 3, 3, '王强', '2', '555-123-4567', '2024-11-20 00:00:00', 60, '3', '3', '2024-10-05 00:00:00', '2024-11-28 09:16:54', NULL);
INSERT INTO `tt_appointments_test` VALUES (4, 4, 4, '赵敏', '2', '444-222-1111', '2024-11-19 00:00:00', 30, '4', '3', '2024-10-05 00:00:00', '2024-11-28 09:17:00', NULL);
INSERT INTO `tt_appointments_test` VALUES (5, 5, 5, '刘洋', '3', '666-555-4444', '2024-11-21 00:00:00', 30, '6', '1', '2024-10-05 09:51:34', '2024-11-28 09:17:04', NULL);
INSERT INTO `tt_appointments_test` VALUES (1, 3, 3, '张伟', '2', '555-123-4567', '2024-11-28 00:00:00', 45, '6', '1', '2024-11-28 09:06:18', '2024-11-28 09:17:13', NULL);
INSERT INTO `tt_appointments_test` VALUES (6, NULL, NULL, '张三', '1', '1008611', '2024-11-28 00:00:00', 45, '1', '1', '2024-11-28 11:12:46', '2024-11-29 23:21:48', NULL);
INSERT INTO `tt_appointments_test` VALUES (7, NULL, NULL, '123', '1', '123123', '2024-11-29 00:00:00', 45, '1', '1', '2024-11-29 21:02:37', '2024-11-29 21:02:37', NULL);
INSERT INTO `tt_appointments_test` VALUES (8, NULL, NULL, '张三', '1', '1008611', '2024-11-06 00:00:00', 1, '2', '3', '2024-11-29 23:24:34', '2024-11-29 23:24:34', '12');

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
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_billing
-- ----------------------------
INSERT INTO `tt_billing` VALUES (1, '张三', '李医生', '2024-11-18 17:45:03', 800.50, '1', '1', '王护士', '牙齿检查及清洁');
INSERT INTO `tt_billing` VALUES (2, '李四', '杜医生', '2024-11-16 07:02:10', 300.00, '2', '5', '张护士', '补牙费用');
INSERT INTO `tt_billing` VALUES (6, '刘洋', '李医生', '2024-11-18 17:45:56', 200.00, '2', '5', '刘护士', '鸿运当头666，猪头肉\n');
INSERT INTO `tt_billing` VALUES (4, '赵六', '李医生', '2024-11-13 05:20:45', 1200.53, '1', '1', '王护士', '牙齿矫正咨询费');
INSERT INTO `tt_billing` VALUES (5, '钱七', '杜医生', '2024-11-13 09:25:30', 500.00, '1', '1', '张护士', '定期牙齿清洁');
INSERT INTO `tt_billing` VALUES (8, 'test', '杜医生', '2024-11-19 11:27:47', 11.00, '2', '5', NULL, NULL);
INSERT INTO `tt_billing` VALUES (9, '123', '123', '2024-11-25 21:17:36', 130.00, '1', '1', NULL, NULL);
INSERT INTO `tt_billing` VALUES (10, '郭依林', '王护士', '2024-11-26 15:04:02', 130.00, '1', '1', NULL, NULL);
INSERT INTO `tt_billing` VALUES (11, '郭依林', '王护士', '2024-11-26 15:04:23', 22.00, '2', '5', NULL, NULL);
INSERT INTO `tt_billing` VALUES (12, '郭依林', '王护士', '2024-11-26 15:04:23', 22.00, '1', '1', NULL, NULL);
INSERT INTO `tt_billing` VALUES (13, '张伟', '王医生', '2024-11-27 11:16:29', 1111.00, '1', '1', NULL, NULL);

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
  `patient_id` bigint(20) NULL DEFAULT NULL COMMENT '患者ID',
  `patient_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '患者姓名',
  `doctor_id` bigint(20) NULL DEFAULT NULL COMMENT '医生ID',
  `doctor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '医生姓名',
  `maincase` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '主诉',
  `current_medical_history` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '现在病史',
  `treatment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '治疗方式',
  `clinical_results` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL COMMENT '治疗结果',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '病历创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `emr_statue` enum('未诊断','已诊断') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '未诊断' COMMENT '诊断状态',
  `appointment_id` bigint(20) NOT NULL COMMENT '预约id',
  `bill_id` bigint(20) NOT NULL COMMENT '账单id',
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
  `item_id` bigint(20) NOT NULL COMMENT '物品id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物品名字',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '负责人',
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '供应来源',
  `quantity` bigint(20) NOT NULL COMMENT '入库数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '剂量单位',
  `purchase_price` decimal(10,0) NOT NULL COMMENT '进价（最小单位）',
  `freight` decimal(10,0) DEFAULT NULL COMMENT '运费',
  `spending` decimal(10,0) DEFAULT NULL COMMENT '总开销',
  `inbound_time` date DEFAULT NULL COMMENT '入库时间',
  `manufacture_date` date DEFAULT NULL COMMENT '生产日期',
  `shelf_life` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保质期',
  `expiration_date` date DEFAULT NULL COMMENT '过期日期',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`inbound_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_inbound` */

insert  into `tt_inventory_inbound`(`inbound_id`,`item_id`,`item_name`,`responsible`,`supplier`,`quantity`,`unit`,`purchase_price`,`freight`,`spending`,`inbound_time`,`manufacture_date`,`shelf_life`,`expiration_date`,`create_time`,`update_time`) values 
(76,8,'工具A','刘航','23',100,'个',100,100,10100,'2024-11-19','2024-10-31','1','2024-11-30','2024-11-28 20:39:55','2024-11-28 20:39:55'),
(77,145,'药品A','刘航','24',22,'瓶',1100,1300,25500,'2024-11-19','2024-02-29','1','2024-03-31','2024-11-29 21:43:25','2024-11-29 21:43:25'),
(78,146,'药品A','刘航','23',10,'个',500,250,5250,'2024-11-20','2024-09-30','14','2025-11-30','2024-11-30 00:50:45','2024-11-30 00:50:44'),
(79,146,'药品A','刘航','23',90,'个',100,100,9100,'2024-11-26','2024-06-30','1','2024-07-31','2024-11-30 00:52:27','2024-11-30 00:52:27'),
(80,146,'药品A','刘航','23',10,'个',100,100,1100,'2024-11-26','2024-06-30','1','2024-07-31','2024-11-30 00:55:48','2024-11-30 00:55:47'),
(81,146,'药品A','刘航','23',10,'个',10000,10000,110000,'2024-11-26','2024-06-30','1','2024-07-31','2024-11-30 00:57:40','2024-11-30 00:57:40'),
(82,146,'药品A','刘航','23',10,'个',100,100,1100,'2024-11-26','2024-02-29','1','2024-03-31','2024-11-30 00:59:39','2024-11-30 00:59:39');

/*Table structure for table `tt_inventory_medicine` */
DROP TABLE IF EXISTS `tt_inventory_medicine`;
CREATE TABLE `tt_inventory_medicine`  (
  `medicine_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '物品ID',
  `medicine_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '物品名称',
  `medicine_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '物品描述',
  `supplier` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商',
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商产地',
  `purchase_price` decimal(10,0) DEFAULT NULL COMMENT '进价',
  `selling_price` decimal(10,0) DEFAULT NULL COMMENT '售价',
  `quantity` bigint(20) NOT NULL DEFAULT '0' COMMENT '库存数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '药品的单位',
  `manufacture_date` date DEFAULT NULL COMMENT '生产日期',
  `shelf_life` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保质期',
  `expiration_date` date DEFAULT NULL COMMENT '过期日期',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`medicine_id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='物品管理表，记录库存的物品信息及供应商产地';

/*Data for the table `tt_inventory_medicine` */

insert  into `tt_inventory_medicine`(`medicine_id`,`medicine_name`,`medicine_description`,`supplier`,`origin`,`purchase_price`,`selling_price`,`quantity`,`unit`,`manufacture_date`,`shelf_life`,`expiration_date`,`created_at`,`updated_at`) values 
(146,'药品A','一个药品A','23',NULL,NULL,1000,0,'个',NULL,NULL,NULL,'2024-11-30 00:50:19','2024-11-30 00:50:19');

/*Table structure for table `tt_inventory_medicine_supplier` */

DROP TABLE IF EXISTS `tt_inventory_medicine_supplier`;

CREATE TABLE `tt_inventory_medicine_supplier` (
  `medicine_supplier_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '联系表ID',
  `item_id` bigint(20) NOT NULL COMMENT '药品ID',
  `supplier_id` bigint(20) NOT NULL COMMENT '供应商ID',
  `item_type` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0为药品，1为工具',
  `item_num` bigint(20) DEFAULT NULL COMMENT '库存数量',
  PRIMARY KEY (`medicine_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_medicine_supplier` */

insert  into `tt_inventory_medicine_supplier`(`medicine_supplier_id`,`item_id`,`supplier_id`,`item_type`,`item_num`) values 
(17,146,23,'0',130);

/*Table structure for table `tt_inventory_offsetting` */
DROP TABLE IF EXISTS `tt_inventory_offsetting`;
CREATE TABLE `tt_inventory_offsetting`  (
  `offsetting_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '对冲工单id',
  `item_id` bigint(20) NOT NULL COMMENT '物品ID',
  `item_name` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '负责人',
  `reason` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '对冲原因',
  `quantity` bigint(20) NOT NULL COMMENT '对冲数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '剂量单位',
  `expenses_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '开销原因',
  `spending` decimal(10,0) DEFAULT NULL COMMENT '总开销',
  `offsetting_time` date DEFAULT NULL COMMENT '对冲时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`offsetting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_offsetting` */

/*Table structure for table `tt_inventory_outbound` */
DROP TABLE IF EXISTS `tt_inventory_outbound`;
CREATE TABLE `tt_inventory_outbound`  (
  `outbound_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库工单id',
  `item_id` bigint(20) NOT NULL COMMENT '物品id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '物品名字',

  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null' COMMENT '负责人',
  `reason` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '空' COMMENT '出库原因',
  `quantity` bigint(20) NOT NULL DEFAULT 0 COMMENT '出库数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '个' COMMENT '剂量单位',
  `expenses_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '开销原因',
  `spending` decimal(10,0) DEFAULT NULL COMMENT '总开销',
  `outbound_time` date DEFAULT NULL COMMENT '出库时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`outbound_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_outbound` */

/*Table structure for table `tt_inventory_tools` */

DROP TABLE IF EXISTS `tt_inventory_tools`;
CREATE TABLE `tt_inventory_tools`  (
  `tools_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '工具ID',
  `tools_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工具名称',
  `tools_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '工具描述',
  `supplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商',
  `origin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供应商产地',
  `purchase_price` decimal(10,0) DEFAULT NULL COMMENT '进价',
  `selling_price` decimal(10,0) DEFAULT NULL COMMENT '售价',
  `quantity` bigint(20) DEFAULT '0' COMMENT '库存数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工具的单位',
  `manufacture_date` date DEFAULT NULL COMMENT '生产日期',
  `shelf_life` int(11) DEFAULT NULL COMMENT '保质期',
  `expiration_date` date DEFAULT NULL COMMENT '过期日期',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`tools_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tt_inventory_tools` */

insert  into `tt_inventory_tools`(`tools_id`,`tools_name`,`tools_description`,`supplier`,`origin`,`purchase_price`,`selling_price`,`quantity`,`unit`,`manufacture_date`,`shelf_life`,`expiration_date`,`created_at`,`updated_at`) values 
(8,'工具A','1','23',NULL,NULL,100,99,'个',NULL,NULL,NULL,'2024-11-28 20:39:31','2024-11-28 20:39:31');

/*Table structure for table `tt_medical_visits` */

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
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '患者信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tt_patients
-- ----------------------------
INSERT INTO `tt_patients` VALUES (1, '张伟', 7, '1985-05-15', '男', '123-456-7890', '北京朝阳区幸福街道123号', '2024-10-05 00:00:00', '2024-10-24 00:00:00', '123', NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (2, '李丽', 8, '1990-07-22', '女', '987-654-3210', '上海浦东新区光明路456号', '2024-10-05 09:51:34', '2024-10-24 16:08:29', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (3, '王强', 9, '1978-02-11', '男', '555-123-4567', '广州天河区体育东路789号', '2024-10-05 09:51:34', '2024-10-24 16:08:34', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (4, '赵敏', 10, '2000-12-30', '女', '444-222-1111', '深圳南山区科技园101号', '2024-10-05 09:51:34', '2024-10-24 16:08:37', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (5, '刘洋', 11, '2005-09-18', '男', '666-555-4444', '武汉洪山区珞喻路303号', '2024-10-05 09:51:34', '2024-10-24 16:08:39', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (7, '根号三', 12, '2004-04-17', '男', '13111488526', NULL, '2024-10-05 18:00:54', '2024-10-24 16:08:42', NULL, NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (8, '张三', 13, '2024-11-13', '男', '1008611', '河北省唐山市', '2024-11-27 00:00:00', '2024-11-27 22:11:46', '111', NULL, NULL, '初诊');
INSERT INTO `tt_patients` VALUES (9, '张四', 14, '2024-11-11', '男', '12345666666', '河北省唐山市', '2024-11-27 00:00:00', '2024-11-27 22:12:13', NULL, NULL, NULL, '初诊');

-- ----------------------------
-- Table structure for tt_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tt_supplier`;
CREATE TABLE `tt_supplier`  (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `supplier_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '供货商名称' COMMENT '供应商名称',
  `supplier_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '供应商备注',
  `item_id` bigint(20) DEFAULT NULL COMMENT '供应货物id',
  `item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应货物名称',
  `item_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '货物备注',
  `supplier_phone` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商电话',
  `supplier_phone2` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商备用电话',
  `supplier_address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商地址',
  `supplier_post` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商邮政编码',
  `mail` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商邮箱地址',
  `contact` char(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `creditworthiness` enum('未知','差','一般','较好','特别好') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '未知' COMMENT '信用度',
  `creat_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_supplier` */

insert  into `tt_supplier`(`supplier_id`,`supplier_name`,`supplier_remark`,`item_id`,`item_name`,`item_remark`,`supplier_phone`,`supplier_phone2`,`supplier_address`,`supplier_post`,`mail`,`contact`,`creditworthiness`,`creat_time`,`update_time`) values 
(23,'供应商A','一个供应商',146,NULL,NULL,'1333113131','22223333333','邯郸学院','123-321-456','123142@qq.com','123','特别好','2024-11-28 20:04:12','2024-11-30 00:50:44'),
(24,'供应商B','第二个供应商',0,NULL,NULL,'123142124','123123123','123123','12312','3123123','123','差','2024-11-28 20:06:02','2024-11-30 00:49:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;