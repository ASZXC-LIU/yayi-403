/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.12 : Database - yayi-ruoyi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`aiyachi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `aiyachi`;

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`tpl_web_type`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(38,'tt_medical_records','就诊记录',NULL,NULL,'MedicalRecords','crud','element-plus','com.ruoyi.record','record','records','就诊记录','刘航','0','/','{\"parentMenuId\":2180}','admin','2024-11-30 19:06:21','','2024-11-30 19:10:08',NULL),
(39,'tt_medical_records_case','既往病史记录',NULL,NULL,'MedicalRecordsCase','crud','element-plus','com.ruoyi.record','case','cases','既往病历记录','刘航','0','/','{\"parentMenuId\":2180}','admin','2024-11-30 19:10:43','','2024-11-30 19:15:19',NULL),
(40,'tt_medical_records_items','物品使用记录',NULL,NULL,'MedicalRecordsItems','crud','element-plus','com.ruoyi.record','item','items','就诊物品使用记录','刘航','0','/','{\"parentMenuId\":\"2180\"}','admin','2024-11-30 19:10:43','','2024-11-30 19:15:35',NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(399,38,'medical_records_id','就诊记录ID','bigint(20)','Long','medicalRecordsId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(400,38,'patient_id','患者ID','bigint(20)','Long','patientId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(401,38,'patient_name','患者姓名','varchar(50)','String','patientName','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(402,38,'doctor_id','医生ID','bigint(20)','Long','doctorId','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(403,38,'doctor_name','医生姓名','varchar(50)','String','doctorName','0','0','0','1','1','1','1','LIKE','input','',5,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(404,38,'maincase','主诉','text','String','maincase','0','0','0','1','1','1','0','EQ','textarea','',6,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(405,38,'treatment_type','治疗方式','varchar(255)','String','treatmentType','0','0','0','1','1','1','1','EQ','select','',7,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(406,38,'clinical_results','治疗结果','text','String','clinicalResults','0','0','0','1','1','1','0','EQ','textarea','',8,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(407,38,'medical_records_statue','就诊状态','enum(\'未诊断\',\'已诊断\')','String','medicalRecordsStatue','0','0','0','0','1','1','1','EQ','select','',9,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(408,38,'created_time','记录创建时间','datetime','Date','createdTime','0','0','0','0','0','1','0','EQ','datetime','',10,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(409,38,'updated_time','记录更新时间','datetime','Date','updatedTime','0','0','0','0','0','1','0','EQ','datetime','',11,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(410,38,'appointment_id','预约id','bigint(20)','Long','appointmentId','0','0','0','0','0','0','0','EQ','input','',12,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(411,38,'bill_id','账单id','bigint(20)','Long','billId','0','0','0','0','0','0','0','EQ','input','',13,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(412,38,'test','保留字段','char(255)','String','test','0','0','0','0','0','0','0','EQ','input','',14,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(413,38,'test2','保留字段','char(255)','String','test2','0','0','0','0','0','0','0','EQ','input','',15,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(414,38,'test3','保留字段','char(255)','String','test3','0','0','0','0','0','0','0','EQ','input','',16,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(415,38,'test4','保留字段','char(255)','String','test4','0','0','0','0','0','0','0','EQ','input','',17,'admin','2024-11-30 19:06:21','','2024-11-30 19:10:08'),
(416,39,'records_case_id','既往病历ID','bigint(20)','Long','recordsCaseId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(417,39,'medical_records_id','病历ID','bigint(20)','Long','medicalRecordsId','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(418,39,'case_history','既往病历','text','String','caseHistory','0','0','0','1','1','1','0','EQ','textarea','',3,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(419,39,'patient_id','患者ID','bigint(20)','Long','patientId','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(420,39,'patient_name','患者名字','char(50)','String','patientName','0','0','0','1','1','1','1','LIKE','input','',5,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(421,39,'test','保留字段','char(50)','String','test','0','0','0','0','0','0','0','EQ','input','',6,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(422,39,'test1','保留字段','char(50)','String','test1','0','0','0','0','0','0','0','EQ','input','',7,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(423,39,'test2','保留字段','char(50)','String','test2','0','0','0','0','0','0','0','EQ','input','',8,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:19'),
(424,40,'record_item_id','物品使用记录ID','bigint(20)','Long','recordItemId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35'),
(425,40,'medical_records_id','就诊记录ID','bigint(20)','Long','medicalRecordsId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35'),
(426,40,'item_id','物品ID','bigint(20)','Long','itemId','0','0','1','1','1','1','1','EQ','input','',3,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35'),
(427,40,'supplier_id','供应商ID','bigint(20)','Long','supplierId','0','0','1','1','1','1','1','EQ','input','',4,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35'),
(428,40,'item_type','物品类型，0为药品，1为工具','enum(\'0\',\'1\')','String','itemType','0','0','1','1','1','1','1','EQ','select','',5,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35'),
(429,40,'quantity','使用数量','bigint(20)','Long','quantity','0','0','0','1','1','1','1','EQ','input','',6,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35'),
(430,40,'created_at','创建时间','datetime','Date','createdAt','0','0','0','0','0','1','0','EQ','datetime','',7,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35'),
(431,40,'updated_at','更新时间','datetime','Date','updatedAt','0','0','0','0','0','1','0','EQ','datetime','',8,'admin','2024-11-30 19:10:43','','2024-11-30 19:15:35');

/*Table structure for table `medicine_supplier` */

DROP TABLE IF EXISTS `medicine_supplier`;

CREATE TABLE `medicine_supplier` (
  `medicine_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `medicine_supplier` */

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Blob类型的触发器表';

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='日历信息表';

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Cron类型的触发器表';

/*Data for the table `qrtz_cron_triggers` */

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='已触发的触发器表';

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='任务详细信息表';

/*Data for the table `qrtz_job_details` */

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='存储的悲观锁信息表';

/*Data for the table `qrtz_locks` */

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='暂停的触发器表';

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='调度器状态表';

/*Data for the table `qrtz_scheduler_state` */

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='简单触发器的信息表';

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='同步机制的行锁表';

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='触发器详细信息表';

/*Data for the table `qrtz_triggers` */

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-10-05 15:46:19','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-10-05 15:46:19','',NULL,'初始化密码 123456'),
(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-10-05 15:46:19','',NULL,'深色主题theme-dark，浅色主题theme-light'),
(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2024-10-05 15:46:19','',NULL,'是否开启验证码功能（true开启，false关闭）'),
(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2024-10-05 15:46:19','admin','2024-11-13 16:19:48','是否开启注册用户功能（true开启，false关闭）'),
(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-10-05 15:46:19','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(100,0,'0','牙医诊所',0,'','','','0','0','admin','2024-10-05 15:46:15','admin','2024-11-13 16:16:42'),
(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','2','admin','2024-10-05 15:46:15','',NULL),
(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2024-10-05 15:46:15','',NULL),
(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2024-10-05 15:46:15','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-10-05 15:46:19','',NULL,'性别男'),
(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-10-05 15:46:19','',NULL,'性别女'),
(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-10-05 15:46:19','',NULL,'性别未知'),
(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-10-05 15:46:19','',NULL,'显示菜单'),
(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'隐藏菜单'),
(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-10-05 15:46:19','',NULL,'正常状态'),
(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'停用状态'),
(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-10-05 15:46:19','',NULL,'正常状态'),
(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'停用状态'),
(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-10-05 15:46:19','',NULL,'默认分组'),
(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-10-05 15:46:19','',NULL,'系统分组'),
(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-10-05 15:46:19','',NULL,'系统默认是'),
(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'系统默认否'),
(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-10-05 15:46:19','',NULL,'通知'),
(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-10-05 15:46:19','',NULL,'公告'),
(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-10-05 15:46:19','',NULL,'正常状态'),
(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'关闭状态'),
(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-10-05 15:46:19','',NULL,'其他操作'),
(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-10-05 15:46:19','',NULL,'新增操作'),
(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-10-05 15:46:19','',NULL,'修改操作'),
(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'删除操作'),
(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-10-05 15:46:19','',NULL,'授权操作'),
(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-10-05 15:46:19','',NULL,'导出操作'),
(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-10-05 15:46:19','',NULL,'导入操作'),
(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'强退操作'),
(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-10-05 15:46:19','',NULL,'生成操作'),
(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'清空操作'),
(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-10-05 15:46:19','',NULL,'正常状态'),
(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-10-05 15:46:19','',NULL,'停用状态'),
(100,0,'王医生','1','tt_doctor',NULL,'default','N','0','admin','2024-10-07 21:42:09','',NULL,NULL),
(101,1,'李医生','2','tt_doctor',NULL,'default','N','0','admin','2024-10-07 21:42:16','',NULL,NULL),
(102,2,'赵医生','3','tt_doctor',NULL,'default','N','0','admin','2024-10-07 21:47:58','admin','2024-10-13 10:42:50',NULL),
(103,3,'刘医生','4','tt_doctor',NULL,'default','N','0','admin','2024-10-13 10:43:15','',NULL,NULL),
(104,4,'张医生','5','tt_doctor',NULL,'default','N','0','admin','2024-10-13 10:43:28','',NULL,NULL),
(106,1,'已取消','2','tt_appointments_status',NULL,'default','N','0','admin','2024-10-13 11:13:45','',NULL,NULL),
(107,0,'未到','1','tt_appointments_status',NULL,'default','N','0','admin','2024-10-13 11:13:57','admin','2024-12-01 00:55:26',NULL),
(108,0,'补牙','1','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:28:13','',NULL,NULL),
(109,1,'洁牙','2','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:28:33','',NULL,NULL),
(110,2,'儿童看牙','3','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:28:50','',NULL,NULL),
(111,3,'拔牙','4','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:29:05','',NULL,NULL),
(112,4,'矫正牙齿','5','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:29:27','admin','2024-10-13 11:29:33',NULL),
(113,5,'植牙','6','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:29:49','',NULL,NULL),
(114,6,'口腔检查','7','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:30:21','',NULL,NULL),
(115,7,'化验','8','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:30:42','',NULL,NULL),
(116,8,'口腔急诊','9','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:31:02','',NULL,NULL),
(117,2,'已到','3','tt_appointments_status',NULL,'default','N','0','admin','2024-12-01 00:53:45','admin','2024-12-01 00:55:40',NULL),
(118,3,'已就诊','4','tt_appointments_status',NULL,'default','N','0','admin','2024-12-01 00:54:10','admin','2024-12-01 00:55:45',NULL),
(119,4,'已收款','5','tt_appointments_status',NULL,'default','N','0','admin','2024-12-01 00:54:29','admin','2024-12-01 00:55:49',NULL);

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'用户性别','sys_user_sex','0','admin','2024-10-05 15:46:18','',NULL,'用户性别列表'),
(2,'菜单状态','sys_show_hide','0','admin','2024-10-05 15:46:18','',NULL,'菜单状态列表'),
(3,'系统开关','sys_normal_disable','0','admin','2024-10-05 15:46:18','',NULL,'系统开关列表'),
(4,'任务状态','sys_job_status','0','admin','2024-10-05 15:46:18','',NULL,'任务状态列表'),
(5,'任务分组','sys_job_group','0','admin','2024-10-05 15:46:18','',NULL,'任务分组列表'),
(6,'系统是否','sys_yes_no','0','admin','2024-10-05 15:46:18','',NULL,'系统是否列表'),
(7,'通知类型','sys_notice_type','0','admin','2024-10-05 15:46:18','',NULL,'通知类型列表'),
(8,'通知状态','sys_notice_status','0','admin','2024-10-05 15:46:18','',NULL,'通知状态列表'),
(9,'操作类型','sys_oper_type','0','admin','2024-10-05 15:46:18','',NULL,'操作类型列表'),
(10,'系统状态','sys_common_status','0','admin','2024-10-05 15:46:18','',NULL,'登录状态列表'),
(101,'医生列表','tt_doctor','0','admin','2024-10-07 21:41:33','',NULL,NULL),
(102,'预约状态','tt_appointments_status','0','admin','2024-10-13 11:13:22','',NULL,NULL),
(103,'诊所项目','tt_tooth','0','admin','2024-10-13 11:27:12','',NULL,NULL),
(104,'就诊状态','record_stute','0','admin','2024-12-01 01:03:22','',NULL,NULL);

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-10-05 15:46:20','',NULL,''),
(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-10-05 15:46:20','',NULL,''),
(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-10-05 15:46:20','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  KEY `idx_sys_logininfor_s` (`status`) USING BTREE,
  KEY `idx_sys_logininfor_lt` (`login_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values 
(1,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-30 18:58:15'),
(2,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-30 19:02:58'),
(3,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-30 19:04:00'),
(4,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-30 19:25:32'),
(5,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-30 19:30:11'),
(6,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-30 19:46:57'),
(7,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-30 21:02:24'),
(8,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-30 22:53:37'),
(9,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-30 22:53:42'),
(10,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-01 00:33:10'),
(11,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-12-01 00:46:25'),
(12,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-01 00:46:31'),
(13,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-01 02:36:23'),
(14,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-02 10:17:49'),
(15,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-12-02 10:47:51'),
(16,'ry','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-02 10:47:58'),
(17,'ry','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-12-02 11:00:39'),
(18,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-02 11:07:10'),
(19,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-02 12:43:18'),
(20,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-12-02 12:50:04'),
(21,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-02 12:50:24'),
(22,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-12-02 14:16:48');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`route_name`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统管理',0,9,'system',NULL,'','',1,0,'M','0','0','','system','admin','2024-10-05 15:46:16','admin','2024-12-02 10:47:28','系统管理目录'),
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
(2042,'预约功能',2062,1,'appointments','appointment/appointments/index',NULL,'',1,1,'C','1','1','appointment:appointments:list','date-range','admin','2024-10-14 10:37:47','admin','2024-12-02 10:45:20','预约功能菜单'),
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
(2181,'供应商列表',2180,1,'suppliers','supplier/suppliers/index',NULL,'',1,0,'C','0','0','supplier:suppliers:list','peoples','admin','2024-11-20 00:05:03','admin','2024-12-02 10:46:49','供应商列表菜单'),
(2182,'供应商列表查询',2181,1,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:query','#','admin','2024-11-20 00:05:03','',NULL,''),
(2183,'供应商列表新增',2181,2,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:add','#','admin','2024-11-20 00:05:03','',NULL,''),
(2184,'供应商列表修改',2181,3,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:edit','#','admin','2024-11-20 00:05:03','',NULL,''),
(2185,'供应商列表删除',2181,4,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:remove','#','admin','2024-11-20 00:05:03','',NULL,''),
(2186,'供应商列表导出',2181,5,'#','',NULL,'',1,0,'F','0','0','supplier:suppliers:export','#','admin','2024-11-20 00:05:03','',NULL,''),
(2193,'预约测试',2062,3,'appointmentte','appointmentte/appointmentte/index',NULL,'',1,0,'C','0','0','appointmentte:appointmentte:list','date-range','admin','2024-11-30 02:31:18','admin','2024-12-02 10:45:28',''),
(2194,'预约测试查询',2193,1,'',NULL,NULL,'',1,0,'F','0','0','appointmentte:appointmentte:query','#','admin','2024-11-30 02:33:52','',NULL,''),
(2195,'预约测试新增',2193,2,'appointmentte:appointmentte:add',NULL,NULL,'',1,0,'F','0','0','appointmentte:appointmentte:add','#','admin','2024-11-30 02:34:17','',NULL,''),
(2196,'预约测试修改',2193,3,'',NULL,NULL,'',1,0,'F','0','0','appointmentte:appointmentte:edit','#','admin','2024-11-30 02:34:34','',NULL,''),
(2197,'预约测试删除',2193,4,'',NULL,NULL,'',1,0,'F','0','0','appointmentte:appointmentte:remove','#','admin','2024-11-30 02:34:48','',NULL,''),
(2198,'预约测试导出',2193,5,'',NULL,NULL,'',1,0,'F','0','0','appointmentte:appointmentte:export','#','admin','2024-11-30 02:34:59','',NULL,''),
(2199,'就诊记录',2180,1,'records','record/records/index',NULL,'',1,0,'C','0','0','record:records:list','log','admin','2024-11-30 22:21:59','admin','2024-12-02 10:47:03','就诊记录菜单'),
(2200,'就诊记录查询',2199,1,'#','',NULL,'',1,0,'F','0','0','record:records:query','#','admin','2024-11-30 22:21:59','',NULL,''),
(2201,'就诊记录新增',2199,2,'#','',NULL,'',1,0,'F','0','0','record:records:add','#','admin','2024-11-30 22:21:59','',NULL,''),
(2202,'就诊记录修改',2199,3,'#','',NULL,'',1,0,'F','0','0','record:records:edit','#','admin','2024-11-30 22:21:59','',NULL,''),
(2203,'就诊记录删除',2199,4,'#','',NULL,'',1,0,'F','0','0','record:records:remove','#','admin','2024-11-30 22:21:59','',NULL,''),
(2204,'就诊记录导出',2199,5,'#','',NULL,'',1,0,'F','0','0','record:records:export','#','admin','2024-11-30 22:21:59','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

/*Data for the table `sys_notice` */

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  KEY `idx_sys_oper_log_bt` (`business_type`) USING BTREE,
  KEY `idx_sys_oper_log_s` (`status`) USING BTREE,
  KEY `idx_sys_oper_log_ot` (`oper_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`,`cost_time`) values 
(1,'操作日志',9,'com.ruoyi.web.controller.monitor.SysOperlogController.clean()','DELETE',1,'admin','牙医诊所','/monitor/operlog/clean','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 17:20:27',238),
(2,'登录日志',9,'com.ruoyi.web.controller.monitor.SysLogininforController.clean()','DELETE',1,'admin','牙医诊所','/monitor/logininfor/clean','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 17:20:32',103),
(3,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2192','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:04:17',64),
(4,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2188','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:04:19',32),
(5,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2189','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:04:22',22),
(6,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2190','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:04:24',29),
(7,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2191','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:04:26',24),
(8,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2187','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:05:03',86),
(9,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/37','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:06:16',115),
(10,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:06:21',127),
(11,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"records\",\"className\":\"MedicalRecords\",\"columns\":[{\"capJavaField\":\"MedicalRecordsId\",\"columnComment\":\"就诊记录ID\",\"columnId\":399,\"columnName\":\"medical_records_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:06:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"medicalRecordsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":38,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者ID\",\"columnId\":400,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:06:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":38,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":401,\"columnName\":\"patient_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:06:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":38,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生ID\",\"columnId\":402,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:06:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncremen','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:10:08',76),
(12,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/36','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:10:17',44),
(13,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:10:20',594),
(14,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:10:24',59),
(15,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records_items,tt_medical_records_case\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:10:43',93),
(16,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/35','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:10:48',43),
(17,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/34','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:10:50',22),
(18,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"records\",\"className\":\"MedicalRecordsItems\",\"columns\":[{\"capJavaField\":\"RecordItemId\",\"columnComment\":\"物品使用记录ID\",\"columnId\":424,\"columnName\":\"record_item_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"recordItemId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":40,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordsId\",\"columnComment\":\"就诊记录ID\",\"columnId\":425,\"columnName\":\"medical_records_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":40,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemId\",\"columnComment\":\"物品ID\",\"columnId\":426,\"columnName\":\"item_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":40,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SupplierId\",\"columnComment\":\"供应商ID\",\"columnId\":427,\"columnName\":\"supplier_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncr','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:12:50',46),
(19,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"cases\",\"className\":\"MedicalRecordsCase\",\"columns\":[{\"capJavaField\":\"RecordsCaseId\",\"columnComment\":\"既往病历ID\",\"columnId\":416,\"columnName\":\"records_case_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"recordsCaseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":39,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordsId\",\"columnComment\":\"病历ID\",\"columnId\":417,\"columnName\":\"medical_records_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"medicalRecordsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":39,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CaseHistory\",\"columnComment\":\"既往病历\",\"columnId\":418,\"columnName\":\"case_history\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"caseHistory\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":39,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者ID\",\"columnId\":419,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:15:19',46),
(20,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"items\",\"className\":\"MedicalRecordsItems\",\"columns\":[{\"capJavaField\":\"RecordItemId\",\"columnComment\":\"物品使用记录ID\",\"columnId\":424,\"columnName\":\"record_item_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"recordItemId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":40,\"updateBy\":\"\",\"updateTime\":\"2024-11-30 19:12:50\",\"usableColumn\":false},{\"capJavaField\":\"MedicalRecordsId\",\"columnComment\":\"就诊记录ID\",\"columnId\":425,\"columnName\":\"medical_records_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicalRecordsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":40,\"updateBy\":\"\",\"updateTime\":\"2024-11-30 19:12:50\",\"usableColumn\":false},{\"capJavaField\":\"ItemId\",\"columnComment\":\"物品ID\",\"columnId\":426,\"columnName\":\"item_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:10:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":40,\"updateBy\":\"\",\"updateTime\":\"2024-11-30 19:12:50\",\"usableColumn\":false},{\"capJavaField\":\"SupplierId\",\"columnComment\":\"供应商ID\",\"columnId\":427,\"columnName\":\"supplier_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-30 19:1','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 19:15:35',70),
(21,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:16:00',76),
(22,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:16:00',60),
(23,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:16:17',73),
(24,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:16:24',61),
(25,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:16:32',62),
(26,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 19:16:37',52),
(27,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentProject\":\"7\",\"appointmentStartTime\":\"2024-11-13\",\"appointmentStatus\":\"3\",\"doctorName\":\"1\",\"params\":{},\"patientName\":\"张伟\",\"patientPhone\":\"123-456-7890\",\"remark\":\"132\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'appointmentDuration\' in \'class com.ruoyi.appointmentte.domain.TtAppointmentsTest\'','2024-11-30 21:54:47',32),
(28,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05\",\"appointmentStatus\":\"2\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张伟\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'appointmentDuration\' in \'class com.ruoyi.appointmentte.domain.TtAppointmentsTest\'','2024-11-30 22:01:08',8),
(29,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05\",\"appointmentStatus\":\"2\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张伟\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 22:04:14',112),
(30,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-11\",\"appointmentProject\":\"3\",\"appointmentStartTime\":\"2024-10-29\",\"appointmentStatus\":\"3\",\"doctorName\":\"2\",\"params\":{},\"partTime\":123,\"patientName\":\"阿萨德\",\"patientPhone\":\"123\",\"remark\":\"213\"}','{\"msg\":\"患者不存在，请先添加患者信息\",\"code\":500}',0,NULL,'2024-11-30 22:04:38',9),
(31,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-11\",\"appointmentProject\":\"3\",\"appointmentStartTime\":\"2024-10-29\",\"appointmentStatus\":\"3\",\"doctorName\":\"2\",\"params\":{},\"partTime\":123,\"patientName\":\"张伟\",\"patientPhone\":\"123\",\"remark\":\"213\"}','{\"msg\":\"患者不存在，请先添加患者信息\",\"code\":500}',0,NULL,'2024-11-30 22:04:42',10),
(32,'患者信息',1,'com.ruoyi.patientlist.controller.PatientListController.add()','POST',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-05\",\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientName\":\"刘航\",\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'gender\' in \'class com.ruoyi.patientlist.domain.PatientList\'','2024-11-30 22:07:12',6),
(33,'患者信息',1,'com.ruoyi.patientlist.controller.PatientListController.add()','POST',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-05\",\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientName\":\"刘航\",\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'patientOld\' in \'class com.ruoyi.patientlist.domain.PatientList\'','2024-11-30 22:08:30',11),
(34,'患者信息',1,'com.ruoyi.patientlist.controller.PatientListController.add()','POST',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-05\",\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientName\":\"刘航\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'patientOld\' in \'field list\'\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-patient\\target\\classes\\mapper\\patientlist\\PatientListMapper.xml]\r\n### The error may involve com.ruoyi.patientlist.mapper.PatientListMapper.insertPatientList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_patients          ( patient_name,             patient_birthday,             patient_gender,             patient_phone,             patient_old,             patient_allergens,             patient_address,             created_at,                          patient_remarks )           values ( ?,             ?,             ?,             ?,             patientOld,             patientAllergens,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'patientOld\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'patientOld\' in \'field list\'','2024-11-30 22:10:41',121),
(35,'患者信息',1,'com.ruoyi.patientlist.controller.PatientListController.add()','POST',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-05\",\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientName\":\"刘航\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'patientAllergens\' in \'field list\'\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-patient\\target\\classes\\mapper\\patientlist\\PatientListMapper.xml]\r\n### The error may involve com.ruoyi.patientlist.mapper.PatientListMapper.insertPatientList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_patients          ( patient_name,             patient_birthday,             patient_gender,             patient_phone,             patient_old,             patient_allergens,             patient_address,             created_at,                          patient_remarks )           values ( ?,             ?,             ?,             ?,             ?,             patientAllergens,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'patientAllergens\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'patientAllergens\' in \'field list\'','2024-11-30 22:12:14',134),
(36,'患者信息',1,'com.ruoyi.patientlist.controller.PatientListController.add()','POST',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-05\",\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientName\":\"刘航\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'medical_record_number\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-patient\\target\\classes\\mapper\\patientlist\\PatientListMapper.xml]\r\n### The error may involve com.ruoyi.patientlist.mapper.PatientListMapper.insertPatientList-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_patients          ( patient_name,             patient_birthday,             patient_gender,             patient_phone,             patient_old,             patient_allergens,             patient_address,             created_at,                          patient_remarks )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'medical_record_number\' doesn\'t have a default value\n; Field \'medical_record_number\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'medical_record_number\' doesn\'t have a default value','2024-11-30 22:13:11',124),
(37,'患者信息',1,'com.ruoyi.patientlist.controller.PatientListController.add()','POST',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-05\",\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientId\":8,\"patientName\":\"刘航\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 22:15:21',17),
(38,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientId\":8,\"patientName\":\"刘\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'patient_name\' in \'class com.ruoyi.patientlist.domain.PatientList\'','2024-11-30 22:15:47',7),
(39,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientId\":8,\"patientName\":\"刘\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'patient_name\' in \'class com.ruoyi.patientlist.domain.PatientList\'','2024-11-30 22:15:51',2),
(40,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientId\":8,\"patientName\":\"刘\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'patient_name\' in \'class com.ruoyi.patientlist.domain.PatientList\'','2024-11-30 22:16:02',3),
(41,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"123\",\"patientAllergens\":\"无\",\"patientBirthday\":\"2024-11-07\",\"patientGender\":\"男\",\"patientId\":8,\"patientName\":\"刘\",\"patientOld\":18,\"patientPhone\":\"1343\",\"patientRemarks\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 22:19:54',67),
(42,'患者信息',3,'com.ruoyi.patientlist.controller.PatientListController.remove()','DELETE',1,'admin','牙医诊所','/patientlist/patientlists/8','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 22:20:01',31),
(43,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05\",\"appointmentStatus\":\"已到\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 22:20:13',14),
(44,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records\"}',NULL,0,NULL,'2024-11-30 22:21:13',110),
(45,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records_items\"}',NULL,0,NULL,'2024-11-30 22:21:28',73),
(46,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\record\\MedicalRecordsMapper.xml]\r\n### The error may involve com.ruoyi.record.mapper.MedicalRecordsMapper.insertMedicalRecords-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_medical_records          ( patient_id,             patient_name,             doctor_id,             doctor_name,             maincase,                          clinical_results )           values ( ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_id\' doesn\'t have a default value\n; Field \'appointment_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_id\' doesn\'t have a default value','2024-11-30 22:25:20',75),
(47,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"params\":{},\"patientId\":1,\"patientName\":\"张伟\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 22:26:11',23),
(48,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"未诊断\",\"params\":{},\"patientId\":2,\"patientName\":\"张伟\",\"updatedTime\":\"2024-11-30\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-30 22:26:20',17),
(49,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','牙医诊所','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-10-13 11:13:36\",\"default\":false,\"dictCode\":105,\"dictLabel\":\"已到达\",\"dictSort\":0,\"dictType\":\"tt_appointments_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:02:45',77),
(50,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin','牙医诊所','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"就诊状态\",\"dictType\":\"record_stute\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:03:22',128),
(51,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','牙医诊所','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未就诊\",\"dictSort\":0,\"dictType\":\"record_stute\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:03:42',127),
(52,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','牙医诊所','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已就诊\",\"dictSort\":2,\"dictType\":\"record_stute\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:03:51',58),
(53,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','牙医诊所','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已收费\",\"dictSort\":3,\"dictType\":\"record_stute\",\"dictValue\":\"3\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:04:04',53),
(54,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"2\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"updatedTime\":\"2024-12-01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:06:21',85),
(55,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"1\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"updatedTime\":\"2024-12-01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:06:47',73),
(56,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"3\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"updatedTime\":\"2024-12-01\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\record\\MedicalRecordsMapper.xml]\r\n### The error may involve com.ruoyi.record.mapper.MedicalRecordsMapper.updateMedicalRecords-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tt_medical_records          SET patient_id = ?,             patient_name = ?,             doctor_id = ?,             doctor_name = ?,             maincase = ?,                          clinical_results = ?,             medical_records_statue = ?,             created_time = ?,             updated_time = ?          where medical_records_id = ?\r\n### Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\n; Data truncated for column \'medical_records_statue\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1','2024-12-01 01:06:50',101),
(57,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"3\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"updatedTime\":\"2024-12-01\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\record\\MedicalRecordsMapper.xml]\r\n### The error may involve com.ruoyi.record.mapper.MedicalRecordsMapper.updateMedicalRecords-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tt_medical_records          SET patient_id = ?,             patient_name = ?,             doctor_id = ?,             doctor_name = ?,             maincase = ?,                          clinical_results = ?,             medical_records_statue = ?,             created_time = ?,             updated_time = ?          where medical_records_id = ?\r\n### Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\n; Data truncated for column \'medical_records_statue\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1','2024-12-01 01:06:54',6),
(58,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"1\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"updatedTime\":\"2024-12-01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:08:25',3),
(59,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"未诊断\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"updatedTime\":\"2024-12-01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:08:36',4),
(60,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_medical_records_items\"}',NULL,0,NULL,'2024-12-01 01:12:24',73),
(61,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorId\":1,\"doctorName\":\"1\",\"maincase\":\"123\",\"medicalRecordsId\":2,\"medicalRecordsStatue\":\"2\",\"params\":{},\"patientId\":2,\"patientName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:35:02',43),
(62,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorId\":132,\"doctorName\":\"李医生\",\"maincase\":\"132\",\"medicalRecordsId\":3,\"medicalRecordsStatue\":\"2\",\"params\":{},\"patientId\":123,\"patientName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:35:25',53),
(63,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"132\",\"doctorName\":\"李医生\",\"maincase\":\"132\",\"medicalRecordsId\":4,\"medicalRecordsStatue\":\"2\",\"params\":{},\"patientId\":13,\"patientName\":\"312\",\"treatmentType\":\"132\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-01 01:53:14',79),
(64,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:18:02',32),
(65,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05\",\"appointmentStatus\":\"2\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:18:05',6),
(66,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorName\":\"李医生\",\"maincase\":\"123\",\"medicalRecordsStatue\":\"已就诊\",\"params\":{},\"patientId\":23,\"patientName\":\"123\",\"treatmentType\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\record\\MedicalRecordsMapper.xml]\r\n### The error may involve com.ruoyi.record.mapper.MedicalRecordsMapper.insertMedicalRecords-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_medical_records          ( patient_id,             patient_name,                          doctor_name,             maincase,             treatment_type,             clinical_results,             medical_records_statue )           values ( ?,             ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\n; Data truncated for column \'medical_records_statue\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1','2024-12-02 10:18:35',71),
(67,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorName\":\"李医生\",\"maincase\":\"123\",\"medicalRecordsStatue\":\"已就诊\",\"params\":{},\"patientId\":23,\"patientName\":\"123\",\"treatmentType\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\record\\MedicalRecordsMapper.xml]\r\n### The error may involve com.ruoyi.record.mapper.MedicalRecordsMapper.insertMedicalRecords-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_medical_records          ( patient_id,             patient_name,                          doctor_name,             maincase,             treatment_type,             clinical_results,             medical_records_statue )           values ( ?,             ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\n; Data truncated for column \'medical_records_statue\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1','2024-12-02 10:18:39',5),
(68,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorName\":\"李医生\",\"maincase\":\"123\",\"medicalRecordsStatue\":\"已取消\",\"params\":{},\"patientId\":23,\"patientName\":\"123\",\"treatmentType\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\record\\MedicalRecordsMapper.xml]\r\n### The error may involve com.ruoyi.record.mapper.MedicalRecordsMapper.insertMedicalRecords-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_medical_records          ( patient_id,             patient_name,                          doctor_name,             maincase,             treatment_type,             clinical_results,             medical_records_statue )           values ( ?,             ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1\n; Data truncated for column \'medical_records_statue\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'medical_records_statue\' at row 1','2024-12-02 10:20:56',5),
(69,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"123\",\"doctorName\":\"李医生\",\"maincase\":\"123\",\"medicalRecordsId\":5,\"medicalRecordsStatue\":\"已取消\",\"params\":{},\"patientId\":23,\"patientName\":\"123\",\"treatmentType\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:21:51',19),
(70,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05\",\"appointmentStatus\":\"3\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:22:07',13),
(71,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:27:02',8),
(72,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03\",\"appointmentStatus\":\"1\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"张伟\",\"patientPhone\":\"1985-05-15\",\"remark\":\"123\"}','{\"msg\":\"患者不存在，请先添加患者信息\",\"code\":500}',0,NULL,'2024-12-02 10:30:04',7),
(73,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03\",\"appointmentStatus\":\"1\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-appointmentte\\target\\classes\\mapper\\appointmentte\\TtAppointmentsTestMapper.xml]\r\n### The error may involve com.ruoyi.appointmentte.mapper.TtAppointmentsTestMapper.insertTtAppointmentsTest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments_test          ( patient_name,             doctor_name,             patient_phone,             appointment_start_time,             part_time,             appointment_end_time,             appointment_project,             appointment_status,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1','2024-12-02 10:30:25',16),
(74,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03 00:00:00\",\"appointmentStatus\":\"1\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-appointmentte\\target\\classes\\mapper\\appointmentte\\TtAppointmentsTestMapper.xml]\r\n### The error may involve com.ruoyi.appointmentte.mapper.TtAppointmentsTestMapper.insertTtAppointmentsTest-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments_test          ( patient_name,             doctor_name,             patient_phone,             appointment_start_time,             part_time,             appointment_end_time,             appointment_project,             appointment_status,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1','2024-12-02 10:32:06',148),
(75,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03 00:00:00\",\"appointmentStatus\":\"1\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:34:11',107),
(76,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03 00:00:00\",\"appointmentStatus\":\"2\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:34:18',15),
(77,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05 00:00:00\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:34:21',6),
(78,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05 00:00:00\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:34:33',4),
(79,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03 00:00:00\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:35:46',10),
(80,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03 00:00:00\",\"appointmentStatus\":\"3\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:35:50',6),
(81,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05 00:00:00\",\"appointmentStatus\":\"5\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:35:55',5),
(82,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05 00:00:00\",\"appointmentStatus\":\"4\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"1\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:35:57',5),
(83,'账单管理',1,'com.ruoyi.billing.controller.TtBillingController.add()','POST',1,'admin','牙医诊所','/billing/billing','127.0.0.1','内网IP','{\"billingDate\":\"2024-12-02 10:36:04\",\"billingId\":9,\"doctorName\":\"1\",\"notes\":\"123\",\"params\":{},\"patientName\":\"张\",\"paymentMethod\":\"2\",\"paymentStatus\":\"2\",\"receiver\":\"123\",\"totalAmount\":11}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:36:09',12),
(84,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05 00:00:00\",\"appointmentStatus\":\"4\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:37:09',5),
(85,'账单管理',2,'com.ruoyi.billing.controller.TtBillingController.edit()','PUT',1,'admin','牙医诊所','/billing/billing','127.0.0.1','内网IP','{\"billingDate\":\"2024-12-02 10:36:04\",\"billingId\":9,\"doctorName\":\"杜医生\",\"notes\":\"123\",\"params\":{},\"patientName\":\"张\",\"paymentMethod\":\"2\",\"paymentStatus\":\"2\",\"receiver\":\"123\",\"totalAmount\":11}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:37:26',7),
(86,'就诊记录',1,'com.ruoyi.record.controller.MedicalRecordsController.add()','POST',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"1232\",\"doctorName\":\"王医生\",\"maincase\":\"123\",\"medicalRecordsId\":6,\"medicalRecordsStatue\":\"2\",\"params\":{},\"patientName\":\"赵敏\",\"treatmentType\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:37:39',38),
(87,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:38:11\",\"appointmentStatus\":\"1\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":123,\"patientName\":\"张敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"213\"}','{\"msg\":\"患者不存在，请先添加患者信息\",\"code\":500}',0,NULL,'2024-12-02 10:38:16',10),
(88,'预约测试',1,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.add()','POST',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":11,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:38:11\",\"appointmentStatus\":\"1\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"213\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:38:25',16),
(89,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentEndTime\":\"2024-11-29\",\"appointmentId\":9,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-11-05 00:00:00\",\"appointmentStatus\":\"5\",\"createdAt\":\"2024-11-30 22:04:14\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":12,\"patientName\":\"张\",\"patientPhone\":\"123-456-7890\",\"remark\":\"1\",\"updatedAt\":\"2024-11-30 22:04:14\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:41:40',10),
(90,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":11,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:38:11\",\"appointmentStatus\":\"5\",\"createdAt\":\"2024-12-02 10:38:25\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"213\",\"updatedAt\":\"2024-12-02 10:38:25\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:42:06',7),
(91,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-03 00:00:00\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:42:18',6),
(92,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:42:39\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:42:40',10),
(93,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:42:39\",\"appointmentStatus\":\"3\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:42:57',10),
(94,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:42:39\",\"appointmentStatus\":\"1\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:43:29',10),
(95,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"appointment/appointments/index\",\"createTime\":\"2024-10-14 10:37:47\",\"icon\":\"date-range\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"预约功能\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2062,\"path\":\"appointments\",\"perms\":\"appointment:appointments:list\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:45:20',116),
(96,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"appointmentte/appointmentte/index\",\"createTime\":\"2024-11-30 02:31:18\",\"icon\":\"date-range\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2193,\"menuName\":\"预约测试\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2062,\"path\":\"appointmentte\",\"perms\":\"appointmentte:appointmentte:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:45:28',47),
(97,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"supplier/suppliers/index\",\"createTime\":\"2024-11-20 00:05:03\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2181,\"menuName\":\"供应商列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2180,\"path\":\"suppliers\",\"perms\":\"supplier:suppliers:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:46:49',27),
(98,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"record/records/index\",\"createTime\":\"2024-11-30 22:21:59\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2199,\"menuName\":\"就诊记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2180,\"path\":\"records\",\"perms\":\"record:records:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:47:03',36),
(99,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:47:28',106),
(100,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','牙医诊所','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-10-05 15:46:16\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2062,2042,2043,2044,2045,2046,2047,2193,2194,2195,2196,2197,2198,2061,2060,2111,2112,2113,2114,2115,2116,2117,2179,2118,2119,2120,2121,2122,2123,2124,2131,2132,2133,2134,2135,2136,2161,2162,2163,2164,2165,2166,2173,2174,2175,2176,2177,2178,2167,2168,2169,2170,2171,2172,2180,2099,2100,2101,2102,2103,2104,2181,2182,2183,2184,2185,2186,2199,2200,2201,2202,2203,2204,2105,2106,2107,2108,2109,2110],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 10:47:47',116),
(101,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:42:39\",\"appointmentStatus\":\"4\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"123\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:07:27',19),
(102,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":11,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:38:11\",\"appointmentStatus\":\"4\",\"createdAt\":\"2024-12-02 10:38:25\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"213\",\"updatedAt\":\"2024-12-02 10:38:25\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:07:30',8),
(103,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":11,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:38:11\",\"appointmentStatus\":\"3\",\"createdAt\":\"2024-12-02 10:38:25\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":123,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"213\",\"updatedAt\":\"2024-12-02 10:38:25\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:07:36',12),
(104,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":11,\"appointmentProject\":\"4\",\"appointmentStartTime\":\"2024-12-02 10:38:11\",\"appointmentStatus\":\"3\",\"createdAt\":\"2024-12-02 10:38:25\",\"doctorName\":\"李医生\",\"params\":{},\"partTime\":120,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"\",\"updatedAt\":\"2024-12-02 10:38:25\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:08:30',15),
(105,'预约测试',2,'com.ruoyi.appointmentte.controller.TtAppointmentsTestController.edit()','PUT',1,'admin','牙医诊所','/appointmentte/appointmentte','127.0.0.1','内网IP','{\"appointmentId\":10,\"appointmentProject\":\"2\",\"appointmentStartTime\":\"2024-12-02 10:42:39\",\"appointmentStatus\":\"4\",\"createdAt\":\"2024-12-02 10:34:11\",\"doctorName\":\"王医生\",\"params\":{},\"partTime\":180,\"patientName\":\"赵敏\",\"patientPhone\":\"444-222-1111\",\"remark\":\"多打麻药\",\"updatedAt\":\"2024-12-02 10:34:11\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:08:47',5),
(106,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"北京朝阳区幸福街道123号\",\"patientBirthday\":\"1985-05-15\",\"patientGender\":\"男\",\"patientId\":1,\"patientName\":\"张伟\",\"patientOld\":22,\"patientPhone\":\"123-456-7890\",\"patientRemarks\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:09:05',100),
(107,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"上海浦东新区光明路456号\",\"patientBirthday\":\"1990-07-22\",\"patientGender\":\"女\",\"patientId\":2,\"patientName\":\"李丽\",\"patientOld\":24,\"patientPhone\":\"987-654-3210\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:09:17',31),
(108,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"广州天河区体育东路789号\",\"patientBirthday\":\"1978-02-11\",\"patientGender\":\"男\",\"patientId\":3,\"patientName\":\"王强\",\"patientOld\":44,\"patientPhone\":\"555-123-4567\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:09:22',17),
(109,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"深圳南山区科技园101号\",\"patientBirthday\":\"2000-12-30\",\"patientGender\":\"女\",\"patientId\":4,\"patientName\":\"赵敏\",\"patientOld\":56,\"patientPhone\":\"444-222-1111\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:09:30',31),
(110,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"武汉洪山区珞喻路303号\",\"patientBirthday\":\"2005-09-18\",\"patientGender\":\"男\",\"patientId\":5,\"patientName\":\"刘洋\",\"patientOld\":14,\"patientPhone\":\"666-555-4444\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:09:43',83),
(111,'患者信息',3,'com.ruoyi.patientlist.controller.PatientListController.remove()','DELETE',1,'admin','牙医诊所','/patientlist/patientlists/7','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:09:47',43),
(112,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"成功\",\"createdTime\":\"2024-12-01\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"\",\"medicalRecordsId\":2,\"medicalRecordsStatue\":\"已诊断\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"treatmentType\":\"拔牙\",\"updatedTime\":\"2024-12-01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:11:08',29),
(113,'就诊记录',2,'com.ruoyi.record.controller.MedicalRecordsController.edit()','PUT',1,'admin','牙医诊所','/record/records','127.0.0.1','内网IP','{\"clinicalResults\":\"成功\",\"createdTime\":\"2024-11-30\",\"doctorId\":1,\"doctorName\":\"王医生\",\"maincase\":\"拔牙\",\"medicalRecordsId\":1,\"medicalRecordsStatue\":\"已就诊\",\"params\":{},\"patientId\":1,\"patientName\":\"张伟\",\"updatedTime\":\"2024-12-01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:12:09',80),
(114,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"北京朝阳区幸福街道123号\",\"patientBirthday\":\"2004-07-01\",\"patientGender\":\"男\",\"patientId\":1,\"patientName\":\"张伟\",\"patientOld\":22,\"patientPhone\":\"123-456-7890\",\"patientRemarks\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:12:43',121),
(115,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"上海浦东新区光明路456号\",\"patientBirthday\":\"2000-06-22\",\"patientGender\":\"女\",\"patientId\":2,\"patientName\":\"李丽\",\"patientOld\":24,\"patientPhone\":\"987-654-3210\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:12:55',70),
(116,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"广州天河区体育东路789号\",\"patientBirthday\":\"1980-02-11\",\"patientGender\":\"男\",\"patientId\":3,\"patientName\":\"王强\",\"patientOld\":44,\"patientPhone\":\"555-123-4567\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:13:03',41),
(117,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"深圳南山区科技园101号\",\"patientBirthday\":\"1976-12-30\",\"patientGender\":\"女\",\"patientId\":4,\"patientName\":\"赵敏\",\"patientOld\":56,\"patientPhone\":\"444-222-1111\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:13:19',94),
(118,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"深圳南山区科技园101号\",\"patientBirthday\":\"1972-12-30\",\"patientGender\":\"女\",\"patientId\":4,\"patientName\":\"赵敏\",\"patientOld\":56,\"patientPhone\":\"444-222-1111\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:13:27',19),
(119,'患者信息',2,'com.ruoyi.patientlist.controller.PatientListController.edit()','PUT',1,'admin','牙医诊所','/patientlist/patientlists','127.0.0.1','内网IP','{\"params\":{},\"patientAddress\":\"武汉洪山区珞喻路303号\",\"patientBirthday\":\"2010-09-18\",\"patientGender\":\"男\",\"patientId\":5,\"patientName\":\"刘洋\",\"patientOld\":14,\"patientPhone\":\"666-555-4444\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:13:34',13),
(120,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.edit()','PUT',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-30\",\"medicineDescription\":\"治疗感冒\",\"medicineId\":147,\"medicineName\":\"板蓝根\",\"params\":{},\"quantity\":5,\"sellingPrice\":15,\"unit\":\"袋\",\"updatedAt\":\"2024-11-30\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:15:56',26),
(121,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.edit()','PUT',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"createdAt\":\"2024-11-30\",\"medicineDescription\":\"治疗感冒\",\"medicineId\":147,\"medicineName\":\"板蓝根\",\"params\":{},\"quantity\":5,\"sellingPrice\":1500,\"unit\":\"袋\",\"updatedAt\":\"2024-11-30\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:16:02',21),
(122,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"本品的镇痛、抗炎作用机制尚未完全明确，可能是通过抑制前列腺素或其他刺激性递质的合成而在炎症组织局部发挥作用。\\n\\n本品适用于解热、减轻轻度至中度疼痛，如关节痛、神经痛、肌肉痛、头痛、偏头痛、痛经、牙痛、感冒及流感症状。\",\"medicineId\":148,\"medicineName\":\"布洛芬\",\"params\":{},\"sellingPrice\":2000,\"unit\":\"片\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:16:53',72),
(123,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.edit()','PUT',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"createdAt\":\"2024-12-02\",\"medicineDescription\":\"本品适用于解热、减轻轻度至中度疼痛，如关节痛、神经痛、肌肉痛、头痛、偏头痛、痛经、牙痛、感冒及流感症状。\",\"medicineId\":148,\"medicineName\":\"布洛芬\",\"params\":{},\"quantity\":0,\"sellingPrice\":2000,\"unit\":\"片\",\"updatedAt\":\"2024-12-02\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:17:07',88),
(124,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"抗菌谱与氨苄西林相同，微生物对本品和氨苄西林有完全的交叉耐药性。\\n\\n本品口服吸收良好。服用同量药物，本品的血清药浓度比氨苄西林者高约一倍。常用于敏感菌所致的呼吸道、尿路和胆道感染以及伤寒等。\",\"medicineId\":149,\"medicineName\":\"阿莫西林\",\"params\":{},\"sellingPrice\":5000,\"unit\":\"片\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:17:31',94),
(125,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.edit()','PUT',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"createdAt\":\"2024-12-02\",\"medicineDescription\":\"本品口服吸收良好。服用同量药物，本品的血清药浓度比氨苄西林者高约一倍。常用于敏感菌所致的呼吸道、尿路和胆道感染以及伤寒等。\",\"medicineId\":149,\"medicineName\":\"阿莫西林\",\"params\":{},\"quantity\":0,\"sellingPrice\":5000,\"unit\":\"片\",\"updatedAt\":\"2024-12-02\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:17:44',61),
(126,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"适用于敏感菌所致的急性咽炎、扁桃体炎、中耳炎、支气管炎和肺炎等呼吸道感染、泌尿生殖道感染及皮肤软组织感染等。本品为口服制剂，不宜用于严重感染。\",\"medicineId\":150,\"medicineName\":\"头孢拉定\",\"params\":{},\"sellingPrice\":0,\"unit\":\"片\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:18:04',115),
(127,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.edit()','PUT',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"createdAt\":\"2024-12-02\",\"medicineDescription\":\"适用于敏感菌所致的急性咽炎、扁桃体炎、中耳炎、支气管炎和肺炎等呼吸道感染、泌尿生殖道感染及皮肤软组织感染等。本品为口服制剂，不宜用于严重感染。\",\"medicineId\":150,\"medicineName\":\"头孢拉定\",\"params\":{},\"quantity\":0,\"sellingPrice\":4000,\"unit\":\"片\",\"updatedAt\":\"2024-12-02\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-12-02 11:18:18',66);

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ceo','董事长',1,'0','admin','2024-10-05 15:46:15','',NULL,''),
(2,'se','项目经理',2,'0','admin','2024-10-05 15:46:15','',NULL,''),
(3,'hr','人力资源',3,'0','admin','2024-10-05 15:46:15','',NULL,''),
(4,'user','普通员工',4,'0','admin','2024-10-05 15:46:15','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-10-05 15:46:16','',NULL,'超级管理员'),
(2,'普通角色','common',2,'2',1,1,'0','0','admin','2024-10-05 15:46:16','admin','2024-12-02 10:47:47','普通角色');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values 
(2,100),
(2,101),
(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values 
(2,2042),
(2,2043),
(2,2044),
(2,2045),
(2,2046),
(2,2047),
(2,2060),
(2,2061),
(2,2062),
(2,2099),
(2,2100),
(2,2101),
(2,2102),
(2,2103),
(2,2104),
(2,2105),
(2,2106),
(2,2107),
(2,2108),
(2,2109),
(2,2110),
(2,2111),
(2,2112),
(2,2113),
(2,2114),
(2,2115),
(2,2116),
(2,2117),
(2,2118),
(2,2119),
(2,2120),
(2,2121),
(2,2122),
(2,2123),
(2,2124),
(2,2131),
(2,2132),
(2,2133),
(2,2134),
(2,2135),
(2,2136),
(2,2161),
(2,2162),
(2,2163),
(2,2164),
(2,2165),
(2,2166),
(2,2167),
(2,2168),
(2,2169),
(2,2170),
(2,2171),
(2,2172),
(2,2173),
(2,2174),
(2,2175),
(2,2176),
(2,2177),
(2,2178),
(2,2179),
(2,2180),
(2,2181),
(2,2182),
(2,2183),
(2,2184),
(2,2185),
(2,2186),
(2,2193),
(2,2194),
(2,2195),
(2,2196),
(2,2197),
(2,2198),
(2,2199),
(2,2200),
(2,2201),
(2,2202),
(2,2203),
(2,2204);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,100,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-12-02 14:16:48','admin','2024-10-05 15:46:15','','2024-12-02 14:16:48','管理员'),
(2,100,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-12-02 10:47:58','admin','2024-10-05 15:46:15','admin','2024-12-02 10:47:57','测试员'),
(100,100,'test','test','00','','','2','','$2a$10$/NIAAJu1SxRBUsCNvALkuO.fPkPNMFZQSuVNe6qjP6r9ReocXAT7q','0','0','127.0.0.1','2024-11-04 10:22:26','admin','2024-11-01 16:26:49','','2024-11-04 10:22:25',NULL);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values 
(1,1),
(2,2),
(100,4);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values 
(1,1),
(2,2),
(100,2);


/*Table structure for table `tt_appointments` */

DROP TABLE IF EXISTS `tt_appointments`;

CREATE TABLE `tt_appointments` (
  `appointment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint(20) DEFAULT NULL COMMENT '医生ID，关联医生表',
  `appointment_date` date DEFAULT NULL COMMENT '预约终止时间',
  `appointment_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约开始时间',
  `appointment_duration` int(11) DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE KEY `doctor_id` (`doctor_id`,`appointment_date`,`appointment_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  KEY `fk_patient_appointment` (`patient_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='预约表';

/*Data for the table `tt_appointments` */

insert  into `tt_appointments`(`appointment_id`,`patient_id`,`doctor_id`,`appointment_date`,`appointment_time`,`appointment_duration`,`appointment_project`,`appointment_status`,`created_at`,`updated_at`) values 
(1,1,3,'2024-11-18','2024-11-18 08:00:00',30,'1','1','2024-10-05 00:00:00','2024-11-18 00:00:00'),
(2,2,1,'2024-11-15','2024-11-18 11:20:56',45,'3','3','2024-10-05 00:00:00','2024-11-18 11:20:56'),
(3,3,3,'2024-11-29','2024-11-18 11:20:59',60,'3','3','2024-10-05 00:00:00','2024-11-18 11:20:59'),
(4,4,4,'2024-11-03','2024-11-18 11:21:03',30,'4','3','2024-10-05 00:00:00','2024-11-18 11:21:03'),
(5,5,5,'2024-11-12','2024-11-18 11:21:06',30,'6','1','2024-10-05 09:51:34','2024-11-18 11:21:06'),
(6,1,1,NULL,'2024-11-18 17:33:37',45,'2','1','2024-11-18 17:33:01','2024-11-18 17:33:37');





/*Table structure for table `tt_action_logs` */

DROP TABLE IF EXISTS `tt_action_logs`;

CREATE TABLE `tt_action_logs` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志唯一ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '操作用户ID，关联用户表',
  `action_type` enum('CREATE','UPDATE','DELETE','READ') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作类型',
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作的表名',
  `record_id` bigint(20) DEFAULT NULL COMMENT '操作的记录ID',
  `action_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '操作描述',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='操作日志表，记录用户在系统中的操作';

/*Data for the table `tt_action_logs` */

insert  into `tt_action_logs`(`log_id`,`user_id`,`action_type`,`table_name`,`record_id`,`action_time`,`description`) values 
(1,1,'CREATE','patients',1,'2024-10-05 09:51:34','添加患者信息'),
(2,2,'UPDATE','doctors',1,'2024-10-05 09:51:34','更新医生信息'),
(3,3,'DELETE','appointments',2,'2024-10-05 09:51:34','删除预约记录'),
(4,4,'READ','medical_visits',3,'2024-10-05 09:51:34','查看就诊记录'),
(5,5,'CREATE','billing_records',4,'2024-10-05 09:51:34','添加收费记录');

/*Table structure for table `tt_appointments` */

DROP TABLE IF EXISTS `tt_appointments`;

CREATE TABLE `tt_appointments` (
  `appointment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint(20) DEFAULT NULL COMMENT '医生ID，关联医生表',
  `appointment_date` date DEFAULT NULL COMMENT '预约终止时间',
  `appointment_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约开始时间',
  `appointment_duration` int(11) DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE KEY `doctor_id` (`doctor_id`,`appointment_date`,`appointment_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  KEY `fk_patient_appointment` (`patient_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='预约表';

/*Data for the table `tt_appointments` */

insert  into `tt_appointments`(`appointment_id`,`patient_id`,`doctor_id`,`appointment_date`,`appointment_time`,`appointment_duration`,`appointment_project`,`appointment_status`,`created_at`,`updated_at`) values 
(1,1,3,'2024-11-18','2024-11-18 08:00:00',30,'1','1','2024-10-05 00:00:00','2024-11-18 00:00:00'),
(2,2,1,'2024-11-15','2024-11-18 11:20:56',45,'3','3','2024-10-05 00:00:00','2024-11-18 11:20:56'),
(3,3,3,'2024-11-29','2024-11-18 11:20:59',60,'3','3','2024-10-05 00:00:00','2024-11-18 11:20:59'),
(4,4,4,'2024-11-03','2024-11-18 11:21:03',30,'4','3','2024-10-05 00:00:00','2024-11-18 11:21:03'),
(5,5,5,'2024-11-12','2024-11-18 11:21:06',30,'6','1','2024-10-05 09:51:34','2024-11-18 11:21:06'),
(6,1,1,NULL,'2024-11-18 17:33:37',45,'2','1','2024-11-18 17:33:01','2024-11-18 17:33:37');

/*Table structure for table `tt_appointments_test` */

DROP TABLE IF EXISTS `tt_appointments_test`;

CREATE TABLE `tt_appointments_test` (
  `appointment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint(20) DEFAULT NULL COMMENT '医生ID，关联医生表',
  `patient_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '患者姓名',
  `doctor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医生姓名',
  `patient_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '患者电话',
  `appointment_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `part_time` int(11) DEFAULT NULL COMMENT '时长',
  `appointment_end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `appointment_project` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '预约的项目',
  `appointment_status` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '未到' COMMENT '预约状态',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `test` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test2` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test3` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test4` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE KEY `doctor_id` (`doctor_id`,`appointment_start_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  KEY `fk_patient_appointment` (`patient_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='预约表';

/*Data for the table `tt_appointments_test` */

insert  into `tt_appointments_test`(`appointment_id`,`patient_id`,`doctor_id`,`patient_name`,`doctor_name`,`patient_phone`,`appointment_start_time`,`part_time`,`appointment_end_time`,`appointment_project`,`appointment_status`,`created_at`,`updated_at`,`remark`,`test`,`test2`,`test3`,`test4`) values 
(9,NULL,NULL,'张','李医生','123-456-7890','2024-11-05 00:00:00',12,'2024-11-29 00:00:00','2','5','2024-11-30 22:04:14','2024-11-30 22:04:14','1',NULL,NULL,NULL,NULL),
(10,NULL,NULL,'赵敏','王医生','444-222-1111','2024-12-02 10:42:39',180,NULL,'2','4','2024-12-02 10:34:11','2024-12-02 10:34:11','多打麻药',NULL,NULL,NULL,NULL),
(11,NULL,NULL,'赵敏','李医生','444-222-1111','2024-12-02 10:38:11',120,NULL,'4','3','2024-12-02 10:38:25','2024-12-02 10:38:25','',NULL,NULL,NULL,NULL);

/*Table structure for table `tt_billing` */

DROP TABLE IF EXISTS `tt_billing`;

CREATE TABLE `tt_billing` (
  `billing_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `doctor_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `billing_date` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receiver` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`billing_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tt_billing` */

insert  into `tt_billing`(`billing_id`,`patient_name`,`doctor_name`,`billing_date`,`total_amount`,`payment_status`,`payment_method`,`receiver`,`notes`) values 
(1,'张三','李医生','2024-11-18 17:45:03',800.50,'1','1','王护士','牙齿检查及清洁'),
(2,'李四','杜医生','2024-11-16 07:02:10',300.00,'2','5','张护士','补牙费用'),
(6,'刘洋','李医生','2024-11-18 17:45:56',200.00,'2','5','刘护士','鸿运当头666，猪头肉\n'),
(4,'赵六','李医生','2024-11-13 05:20:45',1200.53,'1','1','王护士','牙齿矫正咨询费'),
(5,'钱七','杜医生','2024-11-13 09:25:30',500.00,'1','1','张护士','定期牙齿清洁'),
(8,'test','杜医生','2024-11-19 11:27:47',11.00,'2','5',NULL,NULL),
(9,'张','杜医生','2024-12-02 10:36:04',11.00,'2','2','123','123');

/*Table structure for table `tt_billing_records` */

DROP TABLE IF EXISTS `tt_billing_records`;

CREATE TABLE `tt_billing_records` (
  `billing_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收费记录唯一ID',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '患者ID，关联患者表',
  `amount` decimal(10,2) NOT NULL COMMENT '收费金额',
  `payment_method` enum('CASH','CREDIT_CARD','INSURANCE','ONLINE') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '支付方式',
  `payment_status` enum('PENDING','COMPLETED','FAILED') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'PENDING' COMMENT '支付状态',
  `payment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '支付时间',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收费记录创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '收费记录更新时间',
  PRIMARY KEY (`billing_id`) USING BTREE,
  KEY `fk_patient_billing` (`patient_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED COMMENT='收费记录表，记录患者的付款信息';

/*Data for the table `tt_billing_records` */

insert  into `tt_billing_records`(`billing_id`,`patient_id`,`amount`,`payment_method`,`payment_status`,`payment_time`,`created_at`,`updated_at`) values 
(1,1,200.00,'CREDIT_CARD','COMPLETED','2024-10-05 09:51:34','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(2,2,300.00,'ONLINE','PENDING','2024-10-05 09:51:34','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(3,3,150.00,'CASH','FAILED','2024-10-05 09:51:34','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(4,4,100.00,'INSURANCE','COMPLETED','2024-10-05 09:51:34','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(5,5,250.00,'CREDIT_CARD','COMPLETED','2024-10-05 09:51:34','2024-10-05 09:51:34','2024-10-05 09:51:34');

/*Table structure for table `tt_doctors` */

DROP TABLE IF EXISTS `tt_doctors`;

CREATE TABLE `tt_doctors` (
  `doctor_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '医生唯一ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '医生姓名',
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科室',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医生联系电话',
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职位（如主治医师等）',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`doctor_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='医生信息表';

/*Data for the table `tt_doctors` */

insert  into `tt_doctors`(`doctor_id`,`name`,`department`,`phone`,`position`,`created_at`,`updated_at`) values 
(1,'王医生','心脏科','111-222-3333','主治医生','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(2,'李医生','神经科','444-555-6666','主任医师','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(3,'赵医生','儿科','777-888-9999','会诊医生','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(4,'刘医生','皮肤科','123-123-1234','住院医生','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(5,'张医生','眼科','222-333-4444','主治医生','2024-10-05 09:51:34','2024-10-05 09:51:34');

/*Table structure for table `tt_follow_ups` */

DROP TABLE IF EXISTS `tt_follow_ups`;

CREATE TABLE `tt_follow_ups` (
  `follow_up_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '随访记录ID',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '患者ID，关联患者表',
  `visit_id` bigint(20) DEFAULT NULL COMMENT '就诊记录ID，关联就诊表',
  `follow_up_date` timestamp NULL DEFAULT NULL COMMENT '随访日期',
  `follow_up_notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '随访备注',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`follow_up_id`) USING BTREE,
  KEY `fk_patient_follow_up` (`patient_id`) USING BTREE,
  KEY `fk_visit_follow_up` (`visit_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='随访记录表，记录患者随访信息';

/*Data for the table `tt_follow_ups` */

insert  into `tt_follow_ups`(`follow_up_id`,`patient_id`,`visit_id`,`follow_up_date`,`follow_up_notes`,`created_at`,`updated_at`) values 
(1,1,1,'2024-11-10 10:00:00','三个月后复诊。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(2,2,2,'2024-12-12 11:30:00','需重新预约。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(3,3,3,'2024-11-15 14:00:00','需注意体温变化。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(4,4,4,'2024-10-25 10:00:00','请定期复查。','2024-10-05 09:51:34','2024-10-05 09:51:34');

/*Table structure for table `tt_inventory_inbound` */

DROP TABLE IF EXISTS `tt_inventory_inbound`;

CREATE TABLE `tt_inventory_inbound` (
  `inbound_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库工单id',
  `item_id` bigint(20) NOT NULL COMMENT '物品id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物品名字',
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_inbound` */

insert  into `tt_inventory_inbound`(`inbound_id`,`item_id`,`item_name`,`responsible`,`supplier`,`quantity`,`unit`,`purchase_price`,`freight`,`spending`,`inbound_time`,`manufacture_date`,`shelf_life`,`expiration_date`,`create_time`,`update_time`) values 
(96,147,'药品A','刘航','25',10,'个',100,100,1100,'2024-11-20','2024-06-30','1','2024-07-31','2024-11-30 04:20:16','2024-11-30 04:20:16'),
(97,147,'药品A','刘航','26',90,'个',100,100,9100,'2024-11-26','2024-02-29','1','2024-03-31','2024-11-30 04:20:59','2024-11-30 04:20:58'),
(100,9,'工具A','刘航','25',40,'个',100,100,4100,'2024-11-26',NULL,NULL,NULL,'2024-11-30 04:32:14','2024-11-30 04:32:14'),
(101,9,'工具A','刘航','26',60,'个',100,100,6100,'2024-11-19','2024-06-30','1','2024-07-31','2024-11-30 04:32:37','2024-11-30 04:32:36'),
(102,147,'药品A','1','25',1,'个',100,100,200,'2024-11-12','2024-03-31','4','2024-07-31','2024-11-30 04:35:44','2024-11-30 04:35:44'),
(103,147,'药品A','刘航','26',1,'个',100,100,200,'2024-11-26','2024-02-29','1','2024-03-31','2024-11-30 04:37:03','2024-11-30 04:37:02'),
(104,147,'药品A','刘航','25',1,'个',100,100,200,'2024-11-26','2024-02-29','1','2024-03-31','2024-11-30 04:38:25','2024-11-30 04:38:24'),
(105,147,'药品A','刘航','26',2,'个',100,100,300,'2024-11-26','2024-02-29','1','2024-03-31','2024-11-30 04:38:41','2024-11-30 04:38:41');

/*Table structure for table `tt_inventory_medicine` */

DROP TABLE IF EXISTS `tt_inventory_medicine`;

CREATE TABLE `tt_inventory_medicine` (
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='物品管理表，记录库存的物品信息及供应商产地';

/*Data for the table `tt_inventory_medicine` */

insert  into `tt_inventory_medicine`(`medicine_id`,`medicine_name`,`medicine_description`,`supplier`,`origin`,`purchase_price`,`selling_price`,`quantity`,`unit`,`manufacture_date`,`shelf_life`,`expiration_date`,`created_at`,`updated_at`) values 
(147,'板蓝根','治疗感冒',NULL,NULL,NULL,1500,5,'袋',NULL,NULL,NULL,'2024-11-30 00:00:00','2024-11-30 00:00:00'),
(148,'布洛芬','本品适用于解热、减轻轻度至中度疼痛，如关节痛、神经痛、肌肉痛、头痛、偏头痛、痛经、牙痛、感冒及流感症状。',NULL,NULL,NULL,2000,25,'片',NULL,NULL,NULL,'2024-12-02 00:00:00','2024-12-02 11:18:58'),
(149,'阿莫西林','本品口服吸收良好。服用同量药物，本品的血清药浓度比氨苄西林者高约一倍。常用于敏感菌所致的呼吸道、尿路和胆道感染以及伤寒等。',NULL,NULL,NULL,5000,50,'片',NULL,NULL,NULL,'2024-12-02 00:00:00','2024-12-02 11:19:00'),
(150,'头孢拉定','适用于敏感菌所致的急性咽炎、扁桃体炎、中耳炎、支气管炎和肺炎等呼吸道感染、泌尿生殖道感染及皮肤软组织感染等。本品为口服制剂，不宜用于严重感染。',NULL,NULL,NULL,4000,100,'片',NULL,NULL,NULL,'2024-12-02 00:00:00','2024-12-02 11:19:14');

/*Table structure for table `tt_inventory_medicine_supplier` */

DROP TABLE IF EXISTS `tt_inventory_medicine_supplier`;

CREATE TABLE `tt_inventory_medicine_supplier` (
  `medicine_supplier_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '联系表ID',
  `item_id` bigint(20) NOT NULL COMMENT '药品ID',
  `supplier_id` bigint(20) NOT NULL COMMENT '供应商ID',
  `item_type` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0为药品，1为工具',
  `item_num` bigint(20) DEFAULT NULL COMMENT '库存数量',
  PRIMARY KEY (`medicine_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_medicine_supplier` */

insert  into `tt_inventory_medicine_supplier`(`medicine_supplier_id`,`item_id`,`supplier_id`,`item_type`,`item_num`) values 
(19,147,25,'0',2),
(20,147,26,'0',3),
(22,9,25,'1',40),
(23,9,26,'1',0);

/*Table structure for table `tt_inventory_offsetting` */

DROP TABLE IF EXISTS `tt_inventory_offsetting`;

CREATE TABLE `tt_inventory_offsetting` (
  `offsetting_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '对冲工单id',
  `item_id` bigint(20) NOT NULL COMMENT '物品ID',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '货物名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_offsetting` */

insert  into `tt_inventory_offsetting`(`offsetting_id`,`item_id`,`item_name`,`responsible`,`reason`,`quantity`,`unit`,`expenses_reason`,`spending`,`offsetting_time`,`create_time`,`update_time`) values 
(36,147,'药品A','刘征','1',10,'个','1',100,'2024-11-19','2024-11-30 04:21:56','2024-11-30 04:21:55'),
(37,9,'工具A','123','123',30,'个','123',12300,'2024-11-21','2024-11-30 04:33:37','2024-11-30 04:33:37');

/*Table structure for table `tt_inventory_outbound` */

DROP TABLE IF EXISTS `tt_inventory_outbound`;

CREATE TABLE `tt_inventory_outbound` (
  `outbound_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '入库工单id',
  `item_id` bigint(20) NOT NULL COMMENT '物品id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物品名字',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null' COMMENT '负责人',
  `reason` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '空' COMMENT '出库原因',
  `quantity` bigint(20) NOT NULL DEFAULT '0' COMMENT '出库数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '个' COMMENT '剂量单位',
  `expenses_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '开销原因',
  `spending` decimal(10,0) DEFAULT NULL COMMENT '总开销',
  `outbound_time` date DEFAULT NULL COMMENT '出库时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`outbound_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_outbound` */

insert  into `tt_inventory_outbound`(`outbound_id`,`item_id`,`item_name`,`responsible`,`reason`,`quantity`,`unit`,`expenses_reason`,`spending`,`outbound_time`,`create_time`,`update_time`) values 
(19,147,'药品A','刘波','空',40,'个','1',100,'2024-11-29','2024-11-30 04:21:35','2024-11-30 04:21:35'),
(20,147,'药品A','刘航','空',50,'个','1',100,'2024-11-27','2024-11-30 04:31:26','2024-11-30 04:31:25'),
(21,9,'工具A','刘航','空',30,'个','1',100,'2024-11-26','2024-11-30 04:32:57','2024-11-30 04:32:56');

/*Table structure for table `tt_inventory_tools` */

DROP TABLE IF EXISTS `tt_inventory_tools`;

CREATE TABLE `tt_inventory_tools` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tt_inventory_tools` */

insert  into `tt_inventory_tools`(`tools_id`,`tools_name`,`tools_description`,`supplier`,`origin`,`purchase_price`,`selling_price`,`quantity`,`unit`,`manufacture_date`,`shelf_life`,`expiration_date`,`created_at`,`updated_at`) values 
(9,'工具A','一个工具A',NULL,NULL,NULL,10000,40,'个',NULL,NULL,NULL,'2024-11-30 04:22:28','2024-11-30 04:22:28');

/*Table structure for table `tt_medical_records` */

DROP TABLE IF EXISTS `tt_medical_records`;

CREATE TABLE `tt_medical_records` (
  `medical_records_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '电子病历id',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '患者ID',
  `patient_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '患者姓名',
  `doctor_id` bigint(20) DEFAULT NULL COMMENT '医生ID',
  `doctor_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '医生姓名',
  `maincase` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '主诉',
  `treatment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '治疗方式',
  `clinical_results` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '治疗结果',
  `medical_records_statue` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '未诊断' COMMENT '诊断状态',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '病历创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '病历更新时间',
  `appointment_id` bigint(20) DEFAULT NULL COMMENT '预约id',
  `bill_id` bigint(20) DEFAULT NULL COMMENT '账单id',
  `test` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test2` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test3` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test4` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`medical_records_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tt_medical_records` */

insert  into `tt_medical_records`(`medical_records_id`,`patient_id`,`patient_name`,`doctor_id`,`doctor_name`,`maincase`,`treatment_type`,`clinical_results`,`medical_records_statue`,`created_time`,`updated_time`,`appointment_id`,`bill_id`,`test`,`test2`,`test3`,`test4`) values 
(1,1,'张伟',1,'王医生','拔牙',NULL,'成功','已就诊','2024-11-30 00:00:00','2024-12-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),
(2,1,'张伟',1,'王医生','','拔牙','成功','已诊断','2024-12-01 00:00:00','2024-12-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL),
(3,123,'123',132,'李医生','132',NULL,'123','已诊断','2024-12-01 01:35:25','2024-12-01 01:35:25',NULL,NULL,NULL,NULL,NULL,NULL),
(4,13,'312',NULL,'李医生','132','132','132','已诊断','2024-12-01 01:53:14','2024-12-01 01:53:14',NULL,NULL,NULL,NULL,NULL,NULL),
(5,23,'123',NULL,'李医生','123','123','123','已取消','2024-12-02 10:21:51','2024-12-02 10:21:51',NULL,NULL,NULL,NULL,NULL,NULL),
(6,NULL,'赵敏',NULL,'王医生','123','123','1232','2','2024-12-02 10:37:39','2024-12-02 10:37:39',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tt_medical_records_case` */

DROP TABLE IF EXISTS `tt_medical_records_case`;

CREATE TABLE `tt_medical_records_case` (
  `records_case_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '既往病历ID',
  `medical_records_id` bigint(20) DEFAULT NULL COMMENT '病历ID',
  `case_history` text COLLATE utf8mb4_unicode_ci COMMENT '既往病历',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '患者ID',
  `patient_name` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '患者名字',
  `test` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test1` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  `test2` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`records_case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_medical_records_case` */

/*Table structure for table `tt_medical_records_items` */

DROP TABLE IF EXISTS `tt_medical_records_items`;

CREATE TABLE `tt_medical_records_items` (
  `record_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录物品使用ID',
  `medical_records_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '就诊记录ID',
  `item_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '物品ID',
  `supplier_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '供应商ID',
  `item_type` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '物品类型，0为药品，1为工具',
  `quantity` bigint(20) DEFAULT '0' COMMENT '使用数量',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`record_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_medical_records_items` */

/*Table structure for table `tt_patients` */

DROP TABLE IF EXISTS `tt_patients`;

CREATE TABLE `tt_patients` (
  `patient_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '患者唯一ID',
  `patient_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '患者姓名',
  `patient_gender` enum('男','女','机器人','未知') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '未知' COMMENT '患者性别',
  `patient_old` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '患者年龄',
  `patient_birthday` date DEFAULT NULL COMMENT '患者生日',
  `patient_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '患者联系电话',
  `patient_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '患者地址',
  `patient_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  `patient_allergens` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '过敏源',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `diagnosis_statue` enum('初诊','复诊') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '初诊' COMMENT '（保留字段，暂时没用）是否初诊',
  `past_medical_history` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '（保留字段，暂时没用）过去病史',
  `medical_record_number` bigint(20) DEFAULT NULL COMMENT '（保留字段，暂时没用）患者病历号',
  PRIMARY KEY (`patient_id`) USING BTREE,
  UNIQUE KEY `medical_record_number` (`medical_record_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='患者信息表';

/*Data for the table `tt_patients` */

insert  into `tt_patients`(`patient_id`,`patient_name`,`patient_gender`,`patient_old`,`patient_birthday`,`patient_phone`,`patient_address`,`patient_remarks`,`patient_allergens`,`created_at`,`updated_at`,`diagnosis_statue`,`past_medical_history`,`medical_record_number`) values 
(1,'张伟','男','22','2004-07-01','123-456-7890','北京朝阳区幸福街道123号','123',NULL,'2024-10-05 00:00:00','2024-12-02 11:12:43','初诊',NULL,7),
(2,'李丽','女','24','2000-06-22','987-654-3210','上海浦东新区光明路456号',NULL,NULL,'2024-10-05 09:51:34','2024-12-02 11:12:55','初诊',NULL,8),
(3,'王强','男','44','1980-02-11','555-123-4567','广州天河区体育东路789号',NULL,NULL,'2024-10-05 09:51:34','2024-12-02 11:13:03','初诊',NULL,9),
(4,'赵敏','女','56','1972-12-30','444-222-1111','深圳南山区科技园101号',NULL,NULL,'2024-10-05 09:51:34','2024-12-02 11:13:27','初诊',NULL,10),
(5,'刘洋','男','14','2010-09-18','666-555-4444','武汉洪山区珞喻路303号',NULL,NULL,'2024-10-05 09:51:34','2024-12-02 11:13:34','初诊',NULL,11);

/*Table structure for table `tt_supplier` */

DROP TABLE IF EXISTS `tt_supplier`;

CREATE TABLE `tt_supplier` (
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_supplier` */

insert  into `tt_supplier`(`supplier_id`,`supplier_name`,`supplier_remark`,`item_id`,`item_name`,`item_remark`,`supplier_phone`,`supplier_phone2`,`supplier_address`,`supplier_post`,`mail`,`contact`,`creditworthiness`,`creat_time`,`update_time`) values 
(25,'供应商A','一个供应商A',NULL,NULL,NULL,'123879','1235432','阿斯顿请问','123-123-123','132124@qq.com','adsf123','特别好','2024-11-30 00:00:00','2024-11-30 05:22:00'),
(26,'供应商B','一个供应商B',NULL,NULL,NULL,'12314','12341','123','123','312','123','差','2024-11-30 04:20:40','2024-11-30 04:20:40'),
(27,'供应商C','213',NULL,NULL,NULL,'1','1','1','1','1','1','未知','2024-11-30 04:41:28','2024-11-30 04:41:28'),
(28,'供货商名称',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'特别好','2024-11-30 00:00:00','2024-11-30 05:20:30'),
(29,'供应商A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'差','2024-11-30 05:02:12','2024-11-30 05:02:12'),
(30,'供应商A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'差','2024-11-30 05:03:35','2024-11-30 05:03:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
