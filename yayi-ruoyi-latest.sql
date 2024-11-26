/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.30 : Database - yayi-ruoyi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yayi-ruoyi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `yayi-ruoyi`;

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`tpl_web_type`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(7,'tt_appointments','预约表',NULL,NULL,'TtAppointments','crud','element-plus','com.ruoyi.appointment','appointment','appointments','预约功能','ruoyi','0','/','{\"parentMenuId\":3}','admin','2024-10-07 10:11:36','','2024-10-14 10:32:14',NULL),
(8,'tt_doctors','医生信息表',NULL,NULL,'DoctorList','crud','element-plus','com.ruoyi.doctorlist','doctorlist','doctorlists','医生信息','ruoyi','0','/','{\"parentMenuId\":2060}','admin','2024-10-09 10:29:30','','2024-10-24 15:51:17',NULL),
(9,'tt_patients','患者信息表',NULL,NULL,'PatientList','crud','element-plus','com.ruoyi.patientlist','patientlist','patientlists','患者信息','ruoyi','0','/','{\"parentMenuId\":2061}','admin','2024-10-09 10:29:30','','2024-10-24 15:27:39',NULL),
(10,'tt_billing_records','收费记录表，记录患者的付款信息',NULL,NULL,'BillingRecords','crud','element-plus','com.ruoyi.bill','bill','bills','收费','ruoyi','0','/','{\"parentMenuId\":\"2111\"}','admin','2024-11-01 14:47:04','','2024-11-01 15:02:02',NULL),
(13,'tt_inventory_tools','工具库存表',NULL,NULL,'InventoryTools','crud','element-plus','com.ruoyi.inventory','inventorytool','inventorytools','工具库存','刘航','0','/','{\"parentMenuId\":2118}','admin','2024-11-13 13:25:01','','2024-11-13 13:31:52',NULL),
(24,'tt_inventory_offsetting','对冲记录表',NULL,NULL,'InventoryOffsetting','crud','element-plus','com.ruoyi.inventory','offsetting','offsettings','对冲记录工单','刘航','0','/','{\"parentMenuId\":2118}','admin','2024-11-13 15:35:23','','2024-11-13 15:42:14',NULL),
(25,'tt_inventory_outbound','出库表',NULL,NULL,'InventoryOutbound','crud','element-plus','com.ruoyi.inventory','outbound','outbounds','出库工单','刘航','0','/','{\"parentMenuId\":2118}','admin','2024-11-13 15:35:23','','2024-11-13 15:46:27',NULL),
(26,'tt_inventory_inbound','入库工单表',NULL,NULL,'InventoryInbound','crud','element-plus','com.ruoyi.inventory','inbound','inbounds','入库工单','刘航','0','/','{\"parentMenuId\":\"2118\"}','admin','2024-11-17 19:58:31','','2024-11-17 20:40:52',NULL),
(27,'tt_inventory_medicine','物品管理表，记录库存的物品信息及供应商产地',NULL,NULL,'TtInventoryMedicine','crud','','com.ruoyi.system','system','medicine','物品管理，记录库存的物品信息及供应商产地','ruoyi','0','/',NULL,'admin','2024-11-18 10:27:35','',NULL,NULL),
(30,'tt_supplier','供货商表',NULL,NULL,'Supplier','crud','element-plus','com.ruoyi.supplier','supplier','suppliers','供应商列表','刘航','0','/','{\"parentMenuId\":2180}','admin','2024-11-20 00:01:21','','2024-11-20 00:04:19',NULL),
(32,'tt_emr','病历表',NULL,NULL,'Emr','crud','element-plus','com.ruoyi.emr','emr','emrs','病历列表','刘航','0','/','{\"parentMenuId\":1}','admin','2024-11-24 21:52:44','','2024-11-24 22:09:48',NULL),
(33,'tt_inventory_medicine_supplier','药品供应商联系表',NULL,NULL,'InventoryMedicineSupplier','crud','element-plus','com.ruoyi.medicinesupplier','medicinesupplier','medicinesuppliers','medicine_supplier','ruoyi','0','/','{\"parentMenuId\":\"\"}','admin','2024-11-25 17:54:43','','2024-11-25 17:56:54',NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(48,7,'appointment_id','预约ID','bigint(20)','Long','appointmentId','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(49,7,'patient_id','患者姓名','bigint(20)','Long','patientId','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(50,7,'doctor_id','医生姓名','bigint(20)','Long','doctorId','0','0','1','1','1','1','1','LIKE','select','tt_doctor',3,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(51,7,'appointment_date','预约日期','date','Date','appointmentDate','0','0','0','0','0','0','0','EQ','datetime','',4,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(52,7,'appointment_time','会诊时间','time','Date','appointmentTime','0','0','1','1','1','1','0','EQ','datetime','',5,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(53,7,'appointment_duration','预约时长','int(11)','Long','appointmentDuration','0','0','1','1','1','1','1','EQ','input','',6,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(54,7,'appointment_project','预约项目','varchar(100)','String','appointmentProject','0','0','1','1','1','1','1','EQ','select','tt_tooth',7,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(55,7,'appointment_status','预约状态','enum(\'PENDING\',\'CONFIRMED\',\'CANCELLED\',\'MISSED\')','String','appointmentStatus','0','0','1','1','1','1','1','EQ','select','tt_appointments_status',8,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(56,7,'created_at','预约创建时间','timestamp','Date','createdAt','0','0','0','0','0','1','0','EQ','datetime','',9,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(57,7,'updated_at','预约更新时间','timestamp','Date','updatedAt','0','0','0','0','0','1','0','EQ','datetime','',10,'admin','2024-10-07 10:11:36','','2024-10-14 10:32:14'),
(58,8,'doctor_id','医生唯一ID','bigint(20)','Long','doctorId','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-10-09 10:29:30','','2024-10-24 15:51:17'),
(59,8,'name','医生姓名','varchar(100)','String','name','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-10-09 10:29:30','','2024-10-24 15:51:17'),
(60,8,'department','科室','varchar(100)','String','department','0','0','0','1','1','1','1','EQ','input','',3,'admin','2024-10-09 10:29:30','','2024-10-24 15:51:17'),
(61,8,'phone','医生联系电话','varchar(20)','String','phone','0','0','0','1','1','1','0','EQ','input','',4,'admin','2024-10-09 10:29:30','','2024-10-24 15:51:17'),
(62,8,'position','职位（如主治医师等）','varchar(50)','String','position','0','0','0','1','1','1','0','EQ','input','',5,'admin','2024-10-09 10:29:30','','2024-10-24 15:51:17'),
(63,8,'created_at','创建时间','timestamp','Date','createdAt','0','0','0','1','1','1','0','EQ','datetime','',6,'admin','2024-10-09 10:29:30','','2024-10-24 15:51:17'),
(64,8,'updated_at','更新时间','timestamp','Date','updatedAt','0','0','0','0','0','1','0','EQ','datetime','',7,'admin','2024-10-09 10:29:30','','2024-10-24 15:51:17'),
(65,9,'patient_id','患者唯一ID','bigint(20)','Long','patientId','1','1','0','0',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(66,9,'name','患者姓名','varchar(100)','String','name','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(67,9,'medical_record_number','患者病历号','bigint(20)','Long','medicalRecordNumber','0','0','1','1','1','1','1','EQ','input','',3,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(68,9,'birthday','患者生日','date','Date','birthday','0','0','0','1','1','1','0','EQ','datetime','',4,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(69,9,'gender','患者性别','varchar(20)','String','gender','0','0','1','1','1','1','0','EQ','input','',5,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(70,9,'phone','患者联系电话','varchar(20)','String','phone','0','0','0','1','1','1','1','EQ','input','',6,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(71,9,'address','患者地址','varchar(255)','String','address','0','0','0','1','1','1','0','EQ','input','',7,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(72,9,'created_at','创建时间','timestamp','Date','createdAt','0','0','0','1','1','1','0','EQ','datetime','',8,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(73,9,'updated_at','更新时间','timestamp','Date','updatedAt','0','0','0','0','0','1','0','EQ','datetime','',9,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(74,9,'remarks','备注','text','String','remarks','0','0','0','1','1','1','0','EQ','textarea','',10,'admin','2024-10-09 10:29:30','','2024-10-24 15:27:39'),
(75,10,'billing_id','账单ID','bigint(20)','Long','billingId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(76,10,'patient_id','患者姓名','bigint(20)','Long','patientId','0','0','0','1','1','1','1','EQ','input','',2,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(77,10,'appointment_id','','bigint(20)','Long','appointmentId','0','0','0','0','0','0','0','EQ','input','',3,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(78,10,'amount','收费金额','decimal(10,2)','BigDecimal','amount','0','0','0','0','0','1','0','EQ','input','',4,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(79,10,'payment_method','支付方式','enum(\'CASH\',\'CREDIT_CARD\',\'INSURANCE\',\'ONLINE\')','String','paymentMethod','0','0','0','0','1','1','1','EQ','select','',5,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(80,10,'payment_status','支付状态','enum(\'PENDING\',\'COMPLETED\',\'FAILED\')','String','paymentStatus','0','0','0','0','0','1','1','EQ','select','',6,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(81,10,'payment_time','支付时间','timestamp','Date','paymentTime','0','0','0','0','0','1','0','EQ','datetime','',7,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(82,10,'created_at','收费记录创建时间','timestamp','Date','createdAt','0','0','0','0','0','1','0','EQ','datetime','',8,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(83,10,'updated_at','收费记录更新时间','timestamp','Date','updatedAt','0','0','0','0','0','1','0','EQ','datetime','',9,'admin','2024-11-01 14:47:04','','2024-11-01 15:02:02'),
(99,13,'tools_id','工具ID','bigint(20)','Long','toolsId','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(100,13,'tools_name','工具名称','varchar(100)','String','toolsName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(101,13,'tools_description','工具描述','text','String','toolsDescription','0','0','0','1','1','1','0','EQ','textarea','',3,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(102,13,'supplier','供应商','varchar(100)','String','supplier','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(103,13,'origin','供应商产地','varchar(100)','String','origin','0','0','0','0','0','0','0','EQ','input','',5,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(104,13,'purchase_price','进价','decimal(10,0)','Long','purchasePrice','0','0','0','1','1','1','0','EQ','input','',6,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(105,13,'selling_price','售价','decimal(10,0)','Long','sellingPrice','0','0','0','1','1','1','0','EQ','input','',7,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(106,13,'quantity','库存数量','bigint(20)','Long','quantity','0','0','1','1','1','1','0','EQ','input','',8,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(107,13,'unit','工具的单位','char(20)','String','unit','0','0','0','1','1','1','0','EQ','input','',9,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(108,13,'manufacture_date','生产日期','date','Date','manufactureDate','0','0','0','1','1','1','0','EQ','datetime','',10,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(109,13,'shelf_life','保质期','int(11)','Long','shelfLife','0','0','0','1','1','1','0','EQ','input','',11,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(110,13,'expiration_date','过期日期','date','Date','expirationDate','0','0','0','1','1','1','1','EQ','datetime','',12,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(111,13,'created_at','创建时间','datetime','Date','createdAt','0','0','0','0','0','1','0','EQ','datetime','',13,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(112,13,'updated_at','更新时间','datetime','Date','updatedAt','0','0','0','0','0','1','0','EQ','datetime','',14,'admin','2024-11-13 13:25:01','','2024-11-13 13:31:52'),
(227,24,'offsetting_id','对冲工单id','bigint(20)','Long','offsettingId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(228,24,'item_name','物品名字','char(255)','String','itemName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(229,24,'responsible','负责人','char(30)','String','responsible','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(230,24,'reason','对冲原因','varchar(300)','String','reason','0','0','1','1','1','1','0','EQ','input','',4,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(231,24,'quantity','对冲数量','bigint(20)','Long','quantity','0','0','1','1','1','1','0','EQ','input','',5,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(232,24,'unit','剂量单位','char(20)','String','unit','0','0','1','1','1','1','0','EQ','input','',6,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(233,24,'expenses_reason','开销原因','text','String','expensesReason','0','0','0','1','1','1','0','EQ','textarea','',7,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(234,24,'spending','开销','decimal(10,0)','Long','spending','0','0','0','1','1','1','0','EQ','input','',8,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(235,24,'offsetting_time','对冲时间','date','Date','offsettingTime','0','0','0','1','1','1','1','EQ','datetime','',9,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(236,24,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,'1',NULL,'EQ','datetime','',10,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(237,24,'update_time','修改时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',11,'admin','2024-11-13 15:35:23','','2024-11-13 15:42:14'),
(238,25,'outbound_id','入库工单id','bigint(20)','Long','outboundId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(239,25,'item_name','物品名字','char(255)','String','itemName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(240,25,'responsible','负责人','char(30)','String','responsible','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(241,25,'reason','出库原因','varchar(300)','String','reason','0','0','1','1','1','1','0','EQ','input','',4,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(242,25,'quantity','出库数量','bigint(20)','Long','quantity','0','0','1','1','1','1','0','EQ','input','',5,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(243,25,'unit','剂量单位','char(20)','String','unit','0','0','1','1','1','1','0','EQ','input','',6,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(244,25,'expenses_reason','开销原因','text','String','expensesReason','0','0','0','1','1','1','0','EQ','textarea','',7,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(245,25,'spending','总开销','decimal(10,0)','Long','spending','0','0','0','1','1','1','0','EQ','input','',8,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(246,25,'outbound_time','出库时间','date','Date','outboundTime','0','0','0','1','1','1','1','EQ','datetime','',9,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(247,25,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,'1',NULL,'EQ','datetime','',10,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(248,25,'update_time','修改时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',11,'admin','2024-11-13 15:35:23','','2024-11-13 15:46:27'),
(249,26,'inbound_id','入库工单id','bigint(20)','Long','inboundId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(250,26,'item_name','物品名字','char(255)','String','itemName','0','0','1','1','0','1','1','LIKE','input','',3,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(251,26,'responsible','负责人','char(30)','String','responsible','0','0','1','1','0','1','1','LIKE','input','',4,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(252,26,'supplier','供应来源','varchar(255)','String','supplier','0','0','1','1','0','1','1','LIKE','input','',5,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(253,26,'quantity','入库数量','bigint(20)','Long','quantity','0','0','1','1','0','1','0','LIKE','input','',6,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(254,26,'unit','剂量单位','char(20)','String','unit','0','0','1','1','0','1','0','EQ','input','',7,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(255,26,'purchase_price','进价（最小单位）','decimal(10,0)','Long','purchasePrice','0','0','1','1','0','1','0','EQ','input','',8,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(256,26,'freight','运费','decimal(10,0)','Long','freight','0','0','1','1','0','1','0','EQ','input','',9,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(257,26,'spending','总开销','decimal(10,0)','Long','spending','0','0','1','1','0','1','0','EQ','input','',10,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(258,26,'inbound_time','入库时间','date','Date','inboundTime','0','0','1','1','0','1','1','EQ','datetime','',11,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(259,26,'manufacture_date','生产日期','date','Date','manufactureDate','0','0','1','1','0','1','1','EQ','datetime','',12,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(260,26,'shelf_life','保质期','char(20)','String','shelfLife','0','0','1','1','0','1','0','EQ','input','',13,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(261,26,'expiration_date','过期日期','date','Date','expirationDate','0','0','1','1','0','1','1','EQ','datetime','',14,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(262,26,'create_time','创建时间','datetime','Date','createTime','0','0','0','0',NULL,'1',NULL,'EQ','datetime','',15,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(263,26,'update_time','修改时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',16,'admin','2024-11-17 19:58:31','','2024-11-17 20:40:52'),
(264,26,'item_id','物品id','bigint(20)','Long','itemId','0','0','1','1','0','1','1','EQ','input','',2,'','2024-11-17 20:39:22','','2024-11-17 20:40:52'),
(265,27,'medicine_id','物品ID','bigint(20)','Long','medicineId','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2024-11-18 10:27:35','',NULL),
(266,27,'medicine_name','物品名称','varchar(100)','String','medicineName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-11-18 10:27:35','',NULL),
(267,27,'medicine_description','物品描述','text','String','medicineDescription','0','0','0','1','1','1','1','EQ','textarea','',3,'admin','2024-11-18 10:27:35','',NULL),
(268,27,'supplier','供应商','varchar(100)','String','supplier','0','0','0','1','1','1','1','EQ','input','',4,'admin','2024-11-18 10:27:35','',NULL),
(269,27,'origin','供应商产地','varchar(100)','String','origin','0','0','0','1','1','1','1','EQ','input','',5,'admin','2024-11-18 10:27:35','',NULL),
(270,27,'purchase_price','进价','decimal(10,0)','Long','purchasePrice','0','0','0','1','1','1','1','EQ','input','',6,'admin','2024-11-18 10:27:35','',NULL),
(271,27,'selling_price','售价','decimal(10,0)','Long','sellingPrice','0','0','0','1','1','1','1','EQ','input','',7,'admin','2024-11-18 10:27:35','',NULL),
(272,27,'quantity','库存数量','bigint(20)','Long','quantity','0','0','0','1','1','1','1','EQ','input','',8,'admin','2024-11-18 10:27:35','',NULL),
(273,27,'unit','药品的单位','char(20)','String','unit','0','0','0','1','1','1','1','EQ','input','',9,'admin','2024-11-18 10:27:35','',NULL),
(274,27,'manufacture_date','生产日期','date','Date','manufactureDate','0','0','0','1','1','1','1','EQ','datetime','',10,'admin','2024-11-18 10:27:35','',NULL),
(275,27,'shelf_life','保质期','char(20)','String','shelfLife','0','0','0','1','1','1','1','EQ','input','',11,'admin','2024-11-18 10:27:35','',NULL),
(276,27,'expiration_date','过期日期','date','Date','expirationDate','0','0','0','1','1','1','1','EQ','datetime','',12,'admin','2024-11-18 10:27:35','',NULL),
(277,27,'created_at','创建时间','datetime','Date','createdAt','0','0','0','1','1','1','1','EQ','datetime','',13,'admin','2024-11-18 10:27:35','',NULL),
(278,27,'updated_at','更新时间','datetime','Date','updatedAt','0','0','0','1','1','1','1','EQ','datetime','',14,'admin','2024-11-18 10:27:35','',NULL),
(302,30,'supplier_id','供应商ID','bigint(20)','Long','supplierId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(303,30,'supplier_name','供应商名称','varchar(50)','String','supplierName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(304,30,'supplier_remark','供应商备注','text','String','supplierRemark','0','0','0','1','1','1','0','EQ','textarea','',3,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(305,30,'item_id','供应货物ID','bigint(20)','Long','itemId','0','0','1','1','1','1','0','EQ','input','',4,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(306,30,'item_name','供应货物名称','varchar(50)','String','itemName','0','0','1','1','1','1','1','LIKE','input','',5,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(307,30,'item_remark','货物备注','text','String','itemRemark','0','0','0','1','1','1','0','EQ','textarea','',6,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(308,30,'supplier_phone','供应商电话','char(20)','String','supplierPhone','0','0','0','1','1','1','1','LIKE','input','',7,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(309,30,'supplier_phone2','备用电话','char(20)','String','supplierPhone2','0','0','0','1','1','1','0','EQ','input','',8,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(310,30,'supplier_address','供应商地址','varchar(250)','String','supplierAddress','0','0','0','1','1','1','0','EQ','input','',9,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(311,30,'supplier_post','邮政编码','char(50)','String','supplierPost','0','0','0','1','1','1','0','EQ','input','',10,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(312,30,'mail','邮箱地址','char(255)','String','mail','0','0','0','1','1','1','0','EQ','input','',11,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(313,30,'Contact','联系人','char(250)','String','Contact','0','0','0','1','1','1','1','LIKE','input','',12,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(314,30,'Creditworthiness','信用度','enum(\'未知\',\'差\',\'一般\',\'较好\',\'特别好\')','String','Creditworthiness','0','0','1','1','1','1','1','EQ','select','',13,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(315,30,'creat_time','创建时间','datetime','Date','creatTime','0','0','0','0','0','1','0','EQ','datetime','',14,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(316,30,'update_time','更新时间','datetime','Date','updateTime','0','0','0','0','0','1',NULL,'EQ','datetime','',15,'admin','2024-11-20 00:01:21','','2024-11-20 00:04:19'),
(331,32,'emr_id','电子病历id','bigint(20)','Long','emrId','1','0','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-24 21:52:44','','2024-11-24 22:09:48'),
(332,32,'patient_id','患者ID','bigint(20)','Long','patientId','0','0','0','0','0','0','0','EQ','input','',2,'admin','2024-11-24 21:52:44','','2024-11-24 22:09:48'),
(333,32,'patient_name','患者姓名','varchar(50)','String','patientName','0','0','1','0','1','1','1','LIKE','input','',3,'admin','2024-11-24 21:52:44','','2024-11-24 22:09:48'),
(334,32,'doctor_id','医生ID','bigint(20)','Long','doctorId','0','0','0','0','0','0','0','EQ','input','',4,'admin','2024-11-24 21:52:44','','2024-11-24 22:09:48'),
(335,32,'doctor_name','医生姓名','varchar(50)','String','doctorName','0','0','1','0','1','1','1','LIKE','input','',5,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(336,32,'maincase','主诉','text','String','maincase','0','0','0','0','1','1','0','EQ','textarea','',6,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(337,32,'current_medical_history','现在病史','text','String','currentMedicalHistory','0','0','0','0','1','1','0','EQ','textarea','',7,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(338,32,'treatment_type','治疗方式','varchar(255)','String','treatmentType','0','0','0','0','1','1','1','EQ','select','',8,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(339,32,'clinical_results','治疗结果','text','String','clinicalResults','0','0','0','0','1','1','0','EQ','textarea','',9,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(340,32,'created_time','病历创建时间','datetime','Date','createdTime','0','0','0','0','0','1','1','EQ','datetime','',10,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(341,32,'updated_time','更新时间','datetime','Date','updatedTime','0','0','0','0','0','1','0','EQ','datetime','',11,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(342,32,'emr_statue','诊断状态','enum(\'未诊断\',\'已诊断\')','String','emrStatue','0','0','0','0','1','1','1','EQ','select','',12,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(343,32,'appointment_id','预约id','bigint(20)','Long','appointmentId','0','0','0','0','0','0','0','EQ','input','',13,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(344,32,'bill_id','账单id','bigint(20)','Long','billId','0','0','0','0','0','0','0','EQ','input','',14,'admin','2024-11-24 21:52:45','','2024-11-24 22:09:48'),
(345,33,'medicine_supplier_id','联系表ID','bigint(20)','Long','medicineSupplierId','1','1','0','0',NULL,'1',NULL,'EQ','input','',1,'admin','2024-11-25 17:54:43','','2024-11-25 17:56:54'),
(346,33,'item_id','药品ID','bigint(20)','Long','itemId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2024-11-25 17:54:43','','2024-11-25 17:56:54'),
(347,33,'supplier_id','供应商ID','bigint(20)','Long','supplierId','0','0','1','1','1','1','1','EQ','input','',3,'admin','2024-11-25 17:54:43','','2024-11-25 17:56:54'),
(348,33,'item_type','0为药品，1为工具','enum(\'0\',\'1\')','String','itemType','0','0','1','1','1','1','1','EQ','select','',4,'admin','2024-11-25 17:54:43','','2024-11-25 17:56:54'),
(349,33,'item_num','库存数量','bigint(20)','Long','itemNum','0','0','0','1','1','1','0','EQ','input','',5,'admin','2024-11-25 17:54:43','','2024-11-25 17:56:54');

/*Table structure for table `medicine_supplier` */

DROP TABLE IF EXISTS `medicine_supplier`;

CREATE TABLE `medicine_supplier` (
  `medicine_id` bigint NOT NULL,
  `supplier_id` bigint NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `medicine_supplier` */

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Blob类型的触发器表';

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='日历信息表';

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Cron类型的触发器表';

/*Data for the table `qrtz_cron_triggers` */

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='已触发的触发器表';

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='任务详细信息表';

/*Data for the table `qrtz_job_details` */

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='存储的悲观锁信息表';

/*Data for the table `qrtz_locks` */

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='暂停的触发器表';

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='调度器状态表';

/*Data for the table `qrtz_scheduler_state` */

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='简单触发器的信息表';

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='同步机制的行锁表';

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='触发器详细信息表';

/*Data for the table `qrtz_triggers` */

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='参数配置表';

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
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(100,0,'0','牙医诊所',0,'','','','0','0','admin','2024-10-05 15:46:15','admin','2024-11-13 16:16:42'),
(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','2','admin','2024-10-05 15:46:15','',NULL),
(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2024-10-05 15:46:15','',NULL),
(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2024-10-05 15:46:15','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='字典数据表';

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
(105,0,'已确定','1','tt_appointments_status',NULL,'default','N','0','admin','2024-10-13 11:13:36','admin','2024-10-13 11:14:16',NULL),
(106,1,'已取消','2','tt_appointments_status',NULL,'default','N','0','admin','2024-10-13 11:13:45','',NULL,NULL),
(107,2,'未到','3','tt_appointments_status',NULL,'default','N','0','admin','2024-10-13 11:13:57','',NULL,NULL),
(108,0,'补牙','1','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:28:13','',NULL,NULL),
(109,1,'洁牙','2','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:28:33','',NULL,NULL),
(110,2,'儿童看牙','3','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:28:50','',NULL,NULL),
(111,3,'拔牙','4','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:29:05','',NULL,NULL),
(112,4,'矫正牙齿','5','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:29:27','admin','2024-10-13 11:29:33',NULL),
(113,5,'植牙','6','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:29:49','',NULL,NULL),
(114,6,'口腔检查','7','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:30:21','',NULL,NULL),
(115,7,'化验','8','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:30:42','',NULL,NULL),
(116,8,'口腔急诊','9','tt_tooth',NULL,'default','N','0','admin','2024-10-13 11:31:02','',NULL,NULL);

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

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
(103,'诊所项目','tt_tooth','0','admin','2024-10-13 11:27:12','',NULL,NULL);

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-10-05 15:46:20','',NULL,''),
(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-10-05 15:46:20','',NULL,''),
(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-10-05 15:46:20','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  KEY `idx_sys_logininfor_s` (`status`) USING BTREE,
  KEY `idx_sys_logininfor_lt` (`login_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values 
(100,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-05 15:56:25'),
(101,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码已失效','2024-10-05 17:43:26'),
(102,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-05 17:43:29'),
(103,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-05 20:01:03'),
(104,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-06 10:21:12'),
(105,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-07 10:08:00'),
(106,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-07 21:26:28'),
(107,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-08 16:50:15'),
(108,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-08 17:40:46'),
(109,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-09 09:56:56'),
(110,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-09 10:59:17'),
(111,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-09 20:22:26'),
(112,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-10 16:18:49'),
(113,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-10 18:50:32'),
(114,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-10 20:58:55'),
(115,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-13 10:36:35'),
(116,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-13 14:43:11'),
(117,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-10-13 17:13:12'),
(118,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-13 17:13:17'),
(119,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-14 10:09:28'),
(120,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码已失效','2024-10-14 18:35:06'),
(121,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-14 18:35:09'),
(122,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-14 19:30:27'),
(123,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-15 11:14:57'),
(124,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-15 15:25:12'),
(125,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-15 16:07:54'),
(126,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-15 21:09:56'),
(127,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-16 09:20:27'),
(128,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-17 15:55:15'),
(129,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-10-17 22:35:10'),
(130,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-17 22:35:15'),
(131,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-18 10:15:46'),
(132,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-23 17:16:15'),
(133,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-24 15:12:26'),
(134,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-24 16:53:10'),
(135,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-24 20:58:14'),
(136,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-24 22:05:14'),
(137,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-30 14:37:38'),
(138,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码已失效','2024-10-30 18:04:37'),
(139,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-30 18:04:39'),
(140,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-30 18:08:53'),
(141,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-30 22:12:03'),
(142,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-10-31 20:37:15'),
(143,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-01 14:36:16'),
(144,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-01 15:58:16'),
(145,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-01 16:26:54'),
(146,'test','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-01 16:27:02'),
(147,'test','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-02 21:59:37'),
(148,'test','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-04 10:22:25'),
(149,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','用户不存在/密码错误','2024-11-05 20:30:17'),
(150,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','用户不存在/密码错误','2024-11-05 20:31:08'),
(151,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-05 20:31:30'),
(152,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 13:01:19'),
(153,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 13:13:07'),
(154,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 13:35:45'),
(155,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 14:51:09'),
(156,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 15:44:37'),
(157,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-13 16:18:51'),
(158,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 16:19:28'),
(159,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-13 16:19:59'),
(160,'test','127.0.0.1','内网IP','Chrome 13','Windows 10','1','用户不存在/密码错误','2024-11-13 16:20:21'),
(161,'test','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-11-13 16:20:25'),
(162,'test','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-11-13 16:20:28'),
(163,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 16:20:35'),
(164,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-13 21:18:37'),
(165,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-14 14:51:11'),
(166,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-14 15:46:17'),
(167,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-14 21:18:09'),
(168,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-15 15:59:46'),
(169,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-15 16:44:39'),
(170,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-17 19:41:41'),
(171,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-17 19:57:29'),
(172,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-17 19:57:32'),
(173,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-11-17 21:51:52'),
(174,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-17 21:51:54'),
(175,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-18 10:00:18'),
(176,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-18 10:20:25'),
(177,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-18 10:20:29'),
(178,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-18 16:18:51'),
(179,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-18 17:19:24'),
(180,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-18 17:19:26'),
(181,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-19 21:35:46'),
(182,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-19 21:56:33'),
(183,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-11-19 21:56:44'),
(184,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-19 21:56:48'),
(185,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-19 22:10:54'),
(186,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-19 22:11:29'),
(187,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-20 00:58:53'),
(188,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-20 00:58:58'),
(189,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-20 02:39:01'),
(190,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-20 02:39:04'),
(191,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-20 04:37:40'),
(192,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-20 04:37:44'),
(193,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-20 05:14:13'),
(194,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-20 05:14:17'),
(195,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-20 16:23:50'),
(196,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-11-20 21:21:23'),
(197,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-20 21:21:27'),
(198,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-21 11:49:22'),
(199,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-21 12:09:06'),
(200,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-21 12:09:09'),
(201,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-21 12:50:05'),
(202,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-21 12:50:20'),
(203,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-21 13:13:09'),
(204,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码错误','2024-11-21 13:13:13'),
(205,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-21 13:13:15'),
(206,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-21 20:28:08'),
(207,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-21 21:12:20'),
(208,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-21 21:12:23'),
(209,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-22 08:50:22'),
(210,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-22 09:25:37'),
(211,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-22 10:50:01'),
(212,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码已失效','2024-11-22 15:59:58'),
(213,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-22 16:00:03'),
(214,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-22 16:57:28'),
(215,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','1','验证码已失效','2024-11-24 14:58:00'),
(216,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-24 14:58:03'),
(217,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-24 15:55:35'),
(218,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-24 20:33:56'),
(219,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-24 20:56:32'),
(220,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-24 20:56:36'),
(221,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-24 21:07:32'),
(222,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-24 21:31:57'),
(223,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-24 21:43:51'),
(224,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-24 21:43:53'),
(225,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-25 10:08:39'),
(226,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-25 10:49:39'),
(227,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-25 10:50:34'),
(228,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-25 11:20:42'),
(229,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-25 17:11:16'),
(230,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-26 09:48:07'),
(231,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-26 10:30:39'),
(232,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','退出成功','2024-11-26 10:41:24'),
(233,'admin','127.0.0.1','内网IP','Chrome 13','Windows 10','0','登录成功','2024-11-26 10:41:27');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2193 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

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

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='通知公告表';

/*Data for the table `sys_notice` */

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  KEY `idx_sys_oper_log_bt` (`business_type`) USING BTREE,
  KEY `idx_sys_oper_log_s` (`status`) USING BTREE,
  KEY `idx_sys_oper_log_ot` (`oper_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=810 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`,`cost_time`) values 
(361,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"库存管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"inventory\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:03:29',102),
(362,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_medicine,tt_inventory_tools\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:03:52',82),
(363,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"medicine\",\"className\":\"InventoryMedicine\",\"columns\":[{\"capJavaField\":\"MedicineId\",\"columnComment\":\"药品号\",\"columnId\":84,\"columnName\":\"medicine_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"medicineId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicineName\",\"columnComment\":\"药品名称\",\"columnId\":85,\"columnName\":\"medicine_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicineName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MedicineDescription\",\"columnComment\":\"药品描述\",\"columnId\":86,\"columnName\":\"medicine_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"medicineDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":87,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncremen','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:09:05',99),
(364,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_medicine\"}',NULL,0,NULL,'2024-11-13 13:09:10',286),
(365,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_medicine\"}',NULL,0,NULL,'2024-11-13 13:09:12',29),
(366,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/12','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:24:54',48),
(367,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_tools\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:25:01',93),
(368,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"tools\",\"className\":\"InventoryTools\",\"columns\":[{\"capJavaField\":\"ToolsId\",\"columnComment\":\"工具ID\",\"columnId\":99,\"columnName\":\"tools_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"toolsId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ToolsName\",\"columnComment\":\"工具名称\",\"columnId\":100,\"columnName\":\"tools_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"toolsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ToolsDescription\",\"columnComment\":\"工具描述\",\"columnId\":101,\"columnName\":\"tools_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"toolsDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":102,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:27:16',118),
(369,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"medicine\",\"className\":\"InventoryMedicine\",\"columns\":[{\"capJavaField\":\"MedicineId\",\"columnComment\":\"药品号\",\"columnId\":84,\"columnName\":\"medicine_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"medicineId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:09:05\",\"usableColumn\":false},{\"capJavaField\":\"MedicineName\",\"columnComment\":\"药品名称\",\"columnId\":85,\"columnName\":\"medicine_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"medicineName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:09:05\",\"usableColumn\":false},{\"capJavaField\":\"MedicineDescription\",\"columnComment\":\"药品描述\",\"columnId\":86,\"columnName\":\"medicine_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"medicineDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:09:05\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":87,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:03:','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:27:51',47),
(370,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_tools\"}',NULL,0,NULL,'2024-11-13 13:27:54',225),
(371,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_tools\"}',NULL,0,NULL,'2024-11-13 13:27:54',58),
(372,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_tools\"}',NULL,0,NULL,'2024-11-13 13:28:24',52),
(373,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_tools\"}',NULL,0,NULL,'2024-11-13 13:28:28',50),
(374,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"inventorytools\",\"className\":\"InventoryTools\",\"columns\":[{\"capJavaField\":\"ToolsId\",\"columnComment\":\"工具ID\",\"columnId\":99,\"columnName\":\"tools_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"toolsId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"ToolsName\",\"columnComment\":\"工具名称\",\"columnId\":100,\"columnName\":\"tools_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"toolsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"ToolsDescription\",\"columnComment\":\"工具描述\",\"columnId\":101,\"columnName\":\"tools_description\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"toolsDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-11-13 13:27:16\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应商\",\"columnId\":102,\"columnName\":\"supplier\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 13:25:01\",\"dictType\":\"\",\"e','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:31:52',68),
(375,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_tools\"}',NULL,0,NULL,'2024-11-13 13:31:56',34),
(376,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_tools\"}',NULL,0,NULL,'2024-11-13 13:31:57',36),
(377,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2126','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:32:12',108),
(378,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2127','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:32:13',18),
(379,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2128','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:32:14',20),
(380,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2129','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:32:15',21),
(381,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2130','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:32:16',15),
(382,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2125','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 13:32:17',19),
(383,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 14:51:19',113),
(384,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"工单ID\",\"columnId\":113,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"入库货物\",\"columnId\":114,\"columnName\":\"item_name\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":115,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应来源\",\"columnId\":116,\"columnName\":\"supplier\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:51:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isP','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 14:55:42',50),
(385,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 14:56:16',363),
(386,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 14:56:18',34),
(387,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 14:56:42',24),
(388,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 14:56:44',26),
(389,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_outbound,tt_inventory_offsetting\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 14:59:41',277),
(390,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"outbounds\",\"className\":\"InventoryOutbound\",\"columns\":[{\"capJavaField\":\"OutboundId\",\"columnComment\":\"工单ID\",\"columnId\":136,\"columnName\":\"outbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"outboundId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"出库货物\",\"columnId\":137,\"columnName\":\"item_name\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":138,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"出库原因\",\"columnId\":139,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"is','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:01:26',59),
(391,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_outbound\"}',NULL,0,NULL,'2024-11-13 15:01:28',209),
(392,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_outbound\"}',NULL,0,NULL,'2024-11-13 15:01:29',52),
(393,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_outbound\"}',NULL,0,NULL,'2024-11-13 15:01:40',55),
(394,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_outbound\"}',NULL,0,NULL,'2024-11-13 15:01:41',42),
(395,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"offsettings\",\"className\":\"InventoryOffsetting\",\"columns\":[{\"capJavaField\":\"OffsettingId\",\"columnComment\":\"工单ID\",\"columnId\":125,\"columnName\":\"offsetting_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"offsettingId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"对冲货物\",\"columnId\":126,\"columnName\":\"item_name\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":127,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"对冲原因\",\"columnId\":128,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 14:59:41\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:08:32',124),
(396,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_offsetting\"}',NULL,0,NULL,'2024-11-13 15:08:35',221),
(397,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_offsetting\"}',NULL,0,NULL,'2024-11-13 15:08:36',53),
(398,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_offsetting\"}',NULL,0,NULL,'2024-11-13 15:08:51',39),
(399,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_offsetting\"}',NULL,0,NULL,'2024-11-13 15:08:53',46),
(400,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/16','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:18:49',59),
(401,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/15','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:18:51',18),
(402,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/14','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:18:52',19),
(403,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_offsetting,tt_inventory_inbound,tt_inventory_outbound\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:18:59',103),
(404,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','研发部门','/medicine/medicine','127.0.0.1','内网IP','{\"medicineId\":6,\"medicineName\":\"药品F\",\"params\":{},\"quantity\":122,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:03',5),
(405,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2142','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:29',62),
(406,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2138','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:30',20),
(407,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2140','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:34',9),
(408,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2141','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:35',8),
(409,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2139','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:37',17),
(410,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2137','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:39',13),
(411,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2144','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:42',23),
(412,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2145','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:43',22),
(413,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2146','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:44',15),
(414,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2147','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:46',15),
(415,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2148','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:47',15),
(416,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2143','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:48',18),
(417,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2150','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:52',22),
(418,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2151','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:52',19),
(419,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2152','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:54',12),
(420,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2153','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:55',21),
(421,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2154','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:56',19),
(422,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2149','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:26:58',8),
(423,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/17','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:27:09',53),
(424,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/18','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:27:11',10),
(425,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/19','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:27:14',20),
(426,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound,tt_inventory_offsetting,tt_inventory_outbound\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:27:19',67),
(427,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"工单ID\",\"columnId\":181,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":182,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":183,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应来源\",\"columnId\":184,\"columnName\":\"supplier\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:27:19\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isL','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:29:54',100),
(428,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 15:29:57',135),
(429,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 15:29:58',32),
(430,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 15:30:11',25),
(431,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 15:30:12',24),
(432,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','研发部门','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 15:33:06\",\"inboundTime\":\"2024-11-13\",\"itemName\":\"药物A\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"supplier\":\"货源A\",\"unit\":\"瓶\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inbound\\InventoryInboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryInboundMapper.insertInventoryInbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_inbound          ( item_name,             responsible,             supplier,             quantity,             unit,             purchase_price,                                       inbound_time,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\n; Field \'inbound_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value','2024-11-13 15:33:06',175),
(433,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','研发部门','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 15:33:49\",\"inboundTime\":\"2024-11-13\",\"itemName\":\"药物A\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"supplier\":\"货源A\",\"unit\":\"瓶\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inbound\\InventoryInboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryInboundMapper.insertInventoryInbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_inbound          ( item_name,             responsible,             supplier,             quantity,             unit,             purchase_price,                                       inbound_time,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value\n; Field \'inbound_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'inbound_id\' doesn\'t have a default value','2024-11-13 15:33:49',3),
(434,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2160','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:34:59',112),
(435,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2159','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:00',23),
(436,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2158','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:00',18),
(437,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2157','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:02',26),
(438,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2156','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:03',27),
(439,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2155','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:05',15),
(440,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/22','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:15',57),
(441,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/21','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:16',14),
(442,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/20','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:18',16),
(443,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound,tt_inventory_offsetting,tt_inventory_outbound\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:35:23',138),
(444,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"工单ID\",\"columnId\":215,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"入库货物\",\"columnId\":216,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":217,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应来源\",\"columnId\":218,\"columnName\":\"supplier\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"is','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:37:10',76),
(445,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 15:37:12',198),
(446,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}',NULL,0,NULL,'2024-11-13 15:37:13',52),
(447,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','研发部门','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 15:39:33\",\"inboundId\":1,\"itemName\":\"A\",\"params\":{},\"purchasePrice\":12,\"quantity\":10,\"responsible\":\"刘航\",\"supplier\":\"a\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:39:33',167),
(448,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"offsettings\",\"className\":\"InventoryOffsetting\",\"columns\":[{\"capJavaField\":\"OffsettingId\",\"columnComment\":\"对冲工单id\",\"columnId\":227,\"columnName\":\"offsetting_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"offsettingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":228,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":229,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"对冲原因\",\"columnId\":230,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isIn','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:42:14',126),
(449,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_offsetting\"}',NULL,0,NULL,'2024-11-13 15:42:20',120),
(450,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_offsetting\"}',NULL,0,NULL,'2024-11-13 15:42:21',33),
(451,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','研发部门','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 15:45:13\",\"itemName\":\"药品A\",\"offsettingId\":1,\"params\":{},\"quantity\":1,\"reason\":\"丢失药物\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:45:13',90),
(452,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"outbounds\",\"className\":\"InventoryOutbound\",\"columns\":[{\"capJavaField\":\"OutboundId\",\"columnComment\":\"入库工单id\",\"columnId\":238,\"columnName\":\"outbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"outboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":239,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":240,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Reason\",\"columnComment\":\"出库原因\",\"columnId\":241,\"columnName\":\"reason\",\"columnType\":\"varchar(300)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-13 15:35:23\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:46:27',89),
(453,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_outbound\"}',NULL,0,NULL,'2024-11-13 15:46:33',139),
(454,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_outbound\"}',NULL,0,NULL,'2024-11-13 15:46:34',28),
(455,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','研发部门','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 15:48:59\",\"itemName\":\"药品A\",\"outboundId\":1,\"params\":{},\"quantity\":1,\"reason\":\"退货\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 15:48:59',232),
(456,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/109','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:11:40',78),
(457,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/108','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:11:41',22),
(458,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/102','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:11:42',19),
(459,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/107','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:11:43',13),
(460,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/106','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:11:44',13),
(461,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/105','127.0.0.1','内网IP','{}','{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}',0,NULL,'2024-11-13 16:11:44',6),
(462,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/104','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:11:45',21),
(463,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/103','127.0.0.1','内网IP','{}','{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}',0,NULL,'2024-11-13 16:11:46',6),
(464,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/101','127.0.0.1','内网IP','{}','{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}',0,NULL,'2024-11-13 16:11:46',3),
(465,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/105','127.0.0.1','内网IP','{}','{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}',0,NULL,'2024-11-13 16:11:52',4),
(466,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:46:15\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":100,\"email\":\"ry@qq.com\",\"loginDate\":\"2024-10-05 15:46:15\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:12:11',92),
(467,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/105','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:12:15',16),
(468,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/103','127.0.0.1','内网IP','{}','{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}',0,NULL,'2024-11-13 16:12:16',4),
(469,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/103','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:16:28',84),
(470,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/101','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:16:31',15),
(471,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin','研发部门','/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"牙医诊所\",\"email\":\"\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:16:42',48),
(472,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:46:19\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:17:59',108),
(473,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.refreshCache()','DELETE',1,'admin','研发部门','/system/config/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:18:15',15),
(474,'通知公告',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin','研发部门','/system/notice/2','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:18:21',11),
(475,'通知公告',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin','研发部门','/system/notice/1','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:18:23',17),
(476,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','牙医诊所','/system/config','127.0.0.1','内网IP','{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2024-10-05 15:46:19\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2024-11-13 16:17:59\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:19:48',61),
(477,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.refreshCache()','DELETE',1,'admin','牙医诊所','/system/config/refreshCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 16:19:55',12),
(478,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"inventorytool/inventorytools/index\",\"createTime\":\"2024-11-13 13:32:35\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2131,\"menuName\":\"工具库存\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2118,\"path\":\"inventorytools\",\"perms\":\"inventorytool:inventorytools:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:19:18',100),
(479,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"inbound/inbounds/index\",\"createTime\":\"2024-11-13 15:37:34\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2161,\"menuName\":\"入库工单\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2118,\"path\":\"inbounds\",\"perms\":\"inbound:inbounds:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:19:23',26),
(480,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"offsetting/offsettings/index\",\"createTime\":\"2024-11-13 15:42:34\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2167,\"menuName\":\"对冲记录工单\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2118,\"path\":\"offsettings\",\"perms\":\"offsetting:offsettings:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:19:29',17),
(481,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"outbound/outbounds/index\",\"createTime\":\"2024-11-13 15:46:48\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2173,\"menuName\":\"出库工单\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2118,\"path\":\"outbounds\",\"perms\":\"outbound:outbounds:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:19:38',41),
(482,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-11-01 14:47:45\",\"icon\":\"cash\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2111,\"menuName\":\"收银台\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"bill\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:20:16',38),
(483,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-11-13 13:03:29\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2118,\"menuName\":\"库存管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"inventory\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:20:24',32),
(484,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:20:33',50),
(485,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-10-05 15:46:16\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:20:43',55),
(486,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:42:00\",\"itemName\":\"A\",\"offsettingId\":2,\"params\":{},\"quantity\":112,\"reason\":\"咋\",\"responsible\":\"1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:42:00',145),
(487,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:43:04\",\"itemName\":\"啊\",\"offsettingId\":3,\"params\":{},\"quantity\":1222,\"reason\":\"122\",\"responsible\":\"1\",\"unit\":\"122\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:43:04',42),
(488,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:44:10\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 21:44:10',66),
(489,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:44:28\",\"itemName\":\"啊\",\"offsettingId\":4,\"params\":{},\"quantity\":122,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:44:29',36),
(490,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:46:46\",\"itemName\":\"啊\",\"offsettingId\":5,\"params\":{},\"quantity\":122,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:46:47',195),
(491,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:49:20\",\"itemName\":\"啊\",\"offsettingId\":6,\"params\":{},\"quantity\":122,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:49:20',191),
(492,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:50:48\",\"itemName\":\"A\",\"offsettingId\":7,\"params\":{},\"quantity\":12,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:50:48',39),
(493,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:51:46\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 21:51:46',56),
(494,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:52:03\",\"itemName\":\"1\",\"offsettingId\":8,\"params\":{},\"quantity\":33,\"reason\":\"1\",\"responsible\":\"1\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:52:03',33),
(495,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:54:27\",\"itemName\":\"1\",\"offsettingId\":9,\"params\":{},\"quantity\":33,\"reason\":\"1\",\"responsible\":\"1\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:54:27',183),
(496,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:57:43',6),
(497,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 21:57:43\",\"itemName\":\"1\",\"offsettingId\":10,\"params\":{},\"quantity\":33,\"reason\":\"1\",\"responsible\":\"1\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 21:57:43',144),
(498,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemName\":\"A\",\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:00:36',19),
(499,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:00:36\",\"itemName\":\"A\",\"offsettingId\":11,\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:00:36',203),
(500,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemName\":\"A\",\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:08:05',10),
(501,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:08:05\",\"itemName\":\"A\",\"offsettingId\":12,\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:08:05',154),
(502,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemName\":\"A\",\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:08:20',0),
(503,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:08:20\",\"itemName\":\"A\",\"offsettingId\":13,\"params\":{},\"quantity\":21,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:08:20',73),
(504,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:10:58',0),
(505,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:10:58\",\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 22:10:58',57),
(506,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:11:18',0),
(507,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:11:18\",\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 22:11:18',10),
(508,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:13:08',13),
(509,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:13:08\",\"params\":{},\"quantity\":1223,\"reason\":\"A\",\"responsible\":\"A\",\"unit\":\"A\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 22:13:08',121),
(510,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:19:08',18),
(511,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:19:08\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 22:19:08',201),
(512,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:20:21',0),
(513,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:20:21\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( create_time )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 22:20:21',3),
(514,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"medicineId\":12,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:20:28',1),
(515,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:20:28\",\"medicineId\":12,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\offsetting\\InventoryOffsettingMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOffsettingMapper.insertInventoryOffsetting-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_offsetting          ( responsible,             reason,             quantity,             unit,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-13 22:20:28',5),
(516,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemName\":\"阿萨德\",\"medicineId\":12,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:21:14',1),
(517,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-13 22:21:14\",\"itemName\":\"阿萨德\",\"medicineId\":12,\"offsettingId\":14,\"params\":{},\"quantity\":1,\"reason\":\"12\",\"responsible\":\"12\",\"unit\":\"阿达打\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:21:14',52),
(518,'对冲记录工单',3,'com.ruoyi.inventory.controller.InventoryOffsettingController.remove()','DELETE',1,'admin','牙医诊所','/offsetting/offsettings/2,3,4,5,6,7,8,9,10','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:21:27',27),
(519,'对冲记录工单',3,'com.ruoyi.inventory.controller.InventoryOffsettingController.remove()','DELETE',1,'admin','牙医诊所','/offsetting/offsettings/11,12,13,14','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-13 22:21:33',9),
(520,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemName\":\"TEST1\",\"params\":{},\"quantity\":10,\"reason\":\"TEST\",\"responsible\":\"A\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 15:00:11',16),
(521,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-14 15:00:11\",\"itemName\":\"TEST1\",\"offsettingId\":15,\"params\":{},\"quantity\":10,\"reason\":\"TEST\",\"responsible\":\"A\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 15:00:11',80),
(522,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"6\",\"params\":{},\"quantity\":1,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}',NULL,1,'Invalid bound statement (not found): com.ruoyi.inventory.mapper.InventoryMedicineMapper.offsettingUpdateInventoryMedicine','2024-11-14 16:05:09',13),
(523,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-14 16:05:09\",\"itemId\":\"6\",\"offsettingId\":16,\"params\":{},\"quantity\":1,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 16:05:09',105),
(524,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"6\",\"params\":{},\"quantity\":1,\"reason\":\"托尔斯泰\",\"responsible\":\"刘航\",\"unit\":\"个\"}',NULL,1,'Invalid bound statement (not found): com.ruoyi.inventory.mapper.InventoryMedicineMapper.offsettingUpdateInventoryMedicine','2024-11-14 16:05:47',0),
(525,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-14 16:05:47\",\"itemId\":\"6\",\"offsettingId\":17,\"params\":{},\"quantity\":1,\"reason\":\"托尔斯泰\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 16:05:47',69),
(526,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"6\",\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'medicineId\' in \'class com.ruoyi.inventory.domain.InventoryOffsetting\'','2024-11-14 16:09:03',28),
(527,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"6\",\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 16:17:36',23),
(528,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-14 16:17:36\",\"itemId\":\"6\",\"offsettingId\":18,\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 16:17:36',208),
(529,'对冲记录工单',3,'com.ruoyi.inventory.controller.InventoryOffsettingController.remove()','DELETE',1,'admin','牙医诊所','/offsetting/offsettings/15,16,17,1','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 16:17:51',98),
(530,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.offsettingUpdateInventorytools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/offsettingUpdateInventorytools','127.0.0.1','内网IP','{\"itemId\":\"1\",\"params\":{},\"quantity\":1,\"reason\":\"testtool\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 16:32:22',32),
(531,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-14 16:32:22\",\"itemId\":\"1\",\"offsettingId\":19,\"params\":{},\"quantity\":1,\"reason\":\"testtool\",\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-14 16:32:22',43),
(532,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"1\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-15 16:50:54',19),
(533,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-15 16:50:55\",\"params\":{},\"purchasePrice\":20,\"quantity\":10,\"responsible\":\"刘航\",\"supplier\":\"药品公司A\",\"unit\":\"个\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inbound\\InventoryInboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryInboundMapper.insertInventoryInbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_inbound          ( responsible,             supplier,             quantity,             unit,             purchase_price,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-15 16:50:55',68),
(534,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/23','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 19:58:14',88),
(535,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/11','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 19:58:23',11),
(536,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_inbound\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 19:58:31',113),
(537,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"入库工单id\",\"columnId\":249,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-17 19:58:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":250,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-17 19:58:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":251,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-17 19:58:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"responsible\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Supplier\",\"columnComment\":\"供应来源\",\"columnId\":252,\"columnName\":\"supplier\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-17 19:58:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:20:44',74),
(538,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":120,\"unit\":\"个\"}',NULL,0,NULL,'2024-11-17 20:29:12',16),
(539,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 20:29:12\",\"expirationDate\":\"2024-11-16\",\"freight\":20,\"inboundId\":2,\"inboundTime\":\"2024-11-17\",\"itemName\":\"1\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":120,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:29:12',235),
(540,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":20,\"inboundTime\":\"2024-11-17\",\"itemName\":\"1\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":120,\"supplier\":\"AA\",\"unit\":\"个\"}',NULL,0,NULL,'2024-11-17 20:33:54',7),
(541,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 20:33:54\",\"expirationDate\":\"2024-11-16\",\"freight\":20,\"inboundId\":3,\"inboundTime\":\"2024-11-17\",\"itemName\":\"1\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":120,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:33:54',47),
(542,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemName\":\"1\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":20,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":210,\"supplier\":\"AA\",\"unit\":\"个\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'itemId\' in \'class com.ruoyi.inventory.domain.InventoryInbound\'','2024-11-17 20:36:10',23),
(543,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin','牙医诊所','/tool/gen/synchDb/tt_inventory_inbound','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:39:23',149),
(544,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"inbounds\",\"className\":\"InventoryInbound\",\"columns\":[{\"capJavaField\":\"InboundId\",\"columnComment\":\"入库工单id\",\"columnId\":249,\"columnName\":\"inbound_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-17 19:58:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"inboundId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-17 20:39:22\",\"usableColumn\":false},{\"capJavaField\":\"ItemId\",\"columnComment\":\"物品id\",\"columnId\":264,\"columnName\":\"item_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"\",\"createTime\":\"2024-11-17 20:39:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemName\",\"columnComment\":\"物品名字\",\"columnId\":250,\"columnName\":\"item_name\",\"columnType\":\"char(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-17 19:58:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"updateTime\":\"2024-11-17 20:39:22\",\"usableColumn\":false},{\"capJavaField\":\"Responsible\",\"columnComment\":\"负责人\",\"columnId\":251,\"columnName\":\"responsible\",\"columnType\":\"char(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-17 19:58:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:40:52',63),
(545,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":1,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":110,\"supplier\":\"aa\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:48:02',15),
(546,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 20:48:02\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":1,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":110,\"supplier\":\"aa\",\"unit\":\"个\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inbound\\InventoryInboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryInboundMapper.insertInventoryInbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_inbound          ( item_id,                          responsible,             supplier,             quantity,             unit,             purchase_price,             freight,             spending,             inbound_time,             manufacture_date,             shelf_life,             expiration_date,             create_time )           values ( ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'item_name\' doesn\'t have a default value\n; Field \'item_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_name\' doesn\'t have a default value','2024-11-17 20:48:02',72),
(547,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":1,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":20,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:50:52',4),
(548,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 20:50:52\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundId\":4,\"inboundTime\":\"2024-11-17\",\"itemId\":1,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":20,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:50:52',88),
(549,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"manufactureDate\":\"2024-11-11\",\"medicineDescription\":\"测试用例\",\"medicineName\":\"EE\",\"params\":{},\"sellingPrice\":10,\"shelfLife\":10,\"unit\":\"个\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'quantity\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\medicine\\InventoryMedicineMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryMedicineMapper.insertInventoryMedicine-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_medicine          ( medicine_name,             medicine_description,                                                    selling_price,                          unit,             manufacture_date,             shelf_life )           values ( ?,             ?,                                                    ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'quantity\' doesn\'t have a default value\n; Field \'quantity\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'quantity\' doesn\'t have a default value','2024-11-17 20:53:16',11),
(550,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"manufactureDate\":\"2024-11-11\",\"medicineDescription\":\"测试用例\",\"medicineId\":7,\"medicineName\":\"EE\",\"params\":{},\"sellingPrice\":10,\"shelfLife\":10,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:53:51',6),
(551,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"test\",\"medicineId\":8,\"medicineName\":\"FF\",\"params\":{},\"sellingPrice\":20}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:54:08',10),
(552,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":110,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:54:46',3),
(553,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 20:54:46\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundId\":5,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":110,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 20:54:46',88),
(554,'入库工单',3,'com.ruoyi.inventory.controller.InventoryInboundController.remove()','DELETE',1,'admin','牙医诊所','/inbound/inbounds/5,4','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:00:08',31),
(555,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":220,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:01:13',16),
(556,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 21:01:13\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundId\":6,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":220,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:01:13',28),
(557,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":2,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":30,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:04:11',4),
(558,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 21:04:11\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundId\":7,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":2,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":30,\"supplier\":\"AA\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:04:12',68),
(559,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":21,\"supplier\":\"test1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:08:42',6),
(560,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 21:08:42\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundId\":8,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":21,\"supplier\":\"test1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:08:42',82),
(561,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-15\",\"freight\":10,\"inboundTime\":\"2024-11-11\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-05\",\"params\":{},\"purchasePrice\":10,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":1010,\"supplier\":\"test22\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:10:20',5),
(562,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 21:10:20\",\"expirationDate\":\"2024-11-15\",\"freight\":10,\"inboundId\":9,\"inboundTime\":\"2024-11-11\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-05\",\"params\":{},\"purchasePrice\":10,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":1010,\"supplier\":\"test22\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:10:20',69),
(563,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":1010,\"supplier\":\"BB\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:11:42',9),
(564,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 21:11:42\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundId\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":1010,\"supplier\":\"BB\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:11:42',12),
(565,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":1,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":11,\"supplier\":\"testf\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:52:23',16),
(566,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-17 21:52:23\",\"expirationDate\":\"2024-11-16\",\"freight\":10,\"inboundId\":11,\"inboundTime\":\"2024-11-17\",\"itemId\":8,\"itemName\":\"FF\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":1,\"quantity\":1,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":11,\"supplier\":\"testf\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-17 21:52:23',70),
(567,'药品库存',3,'com.ruoyi.inventory.controller.InventoryMedicineController.remove()','DELETE',1,'admin','牙医诊所','/medicine/medicine/6,8,7','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 10:06:39',16),
(568,'工具库存',3,'com.ruoyi.inventory.controller.InventoryToolsController.remove()','DELETE',1,'admin','牙医诊所','/inventorytool/inventorytools/1','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 10:06:56',33),
(569,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"testdecimal\",\"medicineId\":9,\"medicineName\":\"药品F\",\"params\":{},\"sellingPrice\":10.8}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 10:25:18',26),
(570,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_medicine\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 10:27:36',106),
(571,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineId\":10,\"medicineName\":\"1\",\"params\":{},\"sellingPrice\":1100}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 11:07:01',12),
(572,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineId\":11,\"medicineName\":\"12\",\"params\":{},\"sellingPrice\":11111220}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 11:07:39',4),
(573,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineId\":12,\"medicineName\":\"test\",\"params\":{},\"sellingPrice\":10022}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 11:08:07',6),
(574,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"test\",\"medicineId\":13,\"medicineName\":\"GG\",\"params\":{},\"sellingPrice\":120022}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 11:11:18',5),
(575,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"12\",\"medicineId\":14,\"medicineName\":\"22\",\"params\":{},\"sellingPrice\":1122}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:24:38',3),
(576,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-20\",\"freight\":1144,\"inboundTime\":\"2024-11-18\",\"itemId\":13,\"itemName\":\"GG\",\"manufactureDate\":\"2024-11-16\",\"params\":{},\"purchasePrice\":1033,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":2177,\"supplier\":\"test\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:32:16',8),
(577,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-18 16:32:16\",\"expirationDate\":\"2024-11-20\",\"freight\":1144,\"inboundId\":12,\"inboundTime\":\"2024-11-18\",\"itemId\":13,\"itemName\":\"GG\",\"manufactureDate\":\"2024-11-16\",\"params\":{},\"purchasePrice\":1033,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":2177,\"supplier\":\"test\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:32:17',16),
(578,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":2222,\"inboundTime\":\"2024-11-18\",\"itemId\":12,\"itemName\":\"test\",\"manufactureDate\":\"2024-11-19\",\"params\":{},\"purchasePrice\":1111,\"quantity\":10,\"responsible\":\"1\",\"shelfLife\":\"11\",\"spending\":3333,\"supplier\":\"1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:42:33',4),
(579,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-18 16:42:33\",\"expirationDate\":\"2024-11-30\",\"freight\":2222,\"inboundId\":13,\"inboundTime\":\"2024-11-18\",\"itemId\":12,\"itemName\":\"test\",\"manufactureDate\":\"2024-11-19\",\"params\":{},\"purchasePrice\":1111,\"quantity\":10,\"responsible\":\"1\",\"shelfLife\":\"11\",\"spending\":3333,\"supplier\":\"1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:42:33',52),
(580,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-28\",\"freight\":2233,\"inboundTime\":\"2024-11-18\",\"itemId\":12,\"itemName\":\"12\",\"manufactureDate\":\"2024-11-20\",\"params\":{},\"purchasePrice\":1122,\"quantity\":12,\"responsible\":\"12\",\"shelfLife\":\"122\",\"spending\":3355,\"supplier\":\"12\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:45:49',6),
(581,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-18 16:45:49\",\"expirationDate\":\"2024-11-28\",\"freight\":2233,\"inboundId\":14,\"inboundTime\":\"2024-11-18\",\"itemId\":12,\"itemName\":\"12\",\"manufactureDate\":\"2024-11-20\",\"params\":{},\"purchasePrice\":1122,\"quantity\":12,\"responsible\":\"12\",\"shelfLife\":\"122\",\"spending\":3355,\"supplier\":\"12\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:45:50',54),
(582,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"测试\",\"itemId\":\"12\",\"offsettingTime\":\"2024-11-18\",\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"spending\":1022,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:49:42',8),
(583,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-18 16:49:42\",\"expensesReason\":\"测试\",\"itemId\":\"12\",\"offsettingId\":20,\"offsettingTime\":\"2024-11-18\",\"params\":{},\"quantity\":2,\"reason\":\"test\",\"responsible\":\"刘航\",\"spending\":1022,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 16:49:42',13),
(584,'预约功能',1,'com.ruoyi.appointment.controller.TtAppointmentsController.add()','POST',1,'admin','牙医诊所','/appointment/appointments','127.0.0.1','内网IP','{\"appointmentDuration\":12,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-18\",\"params\":{},\"ttDoctor\":{\"params\":{}},\"ttPatient\":{\"params\":{}}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value','2024-11-18 17:22:12',7),
(585,'预约功能',1,'com.ruoyi.appointment.controller.TtAppointmentsController.add()','POST',1,'admin','牙医诊所','/appointment/appointments','127.0.0.1','内网IP','{\"appointmentDuration\":12,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-18\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"11\",\"params\":{}}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value','2024-11-18 17:22:16',2),
(586,'预约功能',1,'com.ruoyi.appointment.controller.TtAppointmentsController.add()','POST',1,'admin','牙医诊所','/appointment/appointments','127.0.0.1','内网IP','{\"appointmentDuration\":12,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-18\",\"params\":{},\"ttDoctor\":{\"name\":\"1\",\"params\":{}},\"ttPatient\":{\"name\":\"11\",\"params\":{}}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value','2024-11-18 17:22:28',2),
(587,'预约功能',1,'com.ruoyi.appointment.controller.TtAppointmentsController.add()','POST',1,'admin','牙医诊所','/appointment/appointments','127.0.0.1','内网IP','{\"appointmentDuration\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-18 05:27:01\",\"params\":{},\"ttDoctor\":{\"params\":{}},\"ttPatient\":{\"params\":{}}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value','2024-11-18 17:27:11',164),
(588,'预约功能',1,'com.ruoyi.appointment.controller.TtAppointmentsController.add()','POST',1,'admin','牙医诊所','/appointment/appointments','127.0.0.1','内网IP','{\"appointmentDuration\":1,\"appointmentProject\":\"1\",\"appointmentStatus\":\"1\",\"appointmentTime\":\"2024-11-18 05:27:01\",\"params\":{},\"ttDoctor\":{\"params\":{}},\"ttPatient\":{\"params\":{}}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\appointment\\TtAppointmentsMapper.xml]\r\n### The error may involve com.ruoyi.appointment.mapper.TtAppointmentsMapper.insertTtAppointments-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_appointments          ( appointment_time,             appointment_duration,             appointment_project,             appointment_status )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value\n; Field \'appointment_date\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'appointment_date\' doesn\'t have a default value','2024-11-18 17:27:42',4),
(589,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"aaaaa\",\"medicineId\":135,\"medicineName\":\"Test\",\"params\":{},\"sellingPrice\":1080}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 17:40:23',19),
(590,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-19\",\"freight\":12,\"inboundTime\":\"2024-11-18\",\"itemId\":135,\"itemName\":\"Test\",\"manufactureDate\":\"2024-11-18\",\"params\":{},\"purchasePrice\":12,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":222,\"supplier\":\"1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 17:41:13',28),
(591,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-18 17:41:13\",\"expirationDate\":\"2024-11-19\",\"freight\":12,\"inboundId\":15,\"inboundTime\":\"2024-11-18\",\"itemId\":135,\"itemName\":\"Test\",\"manufactureDate\":\"2024-11-18\",\"params\":{},\"purchasePrice\":12,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"10\",\"spending\":222,\"supplier\":\"1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-18 17:41:13',68),
(592,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"billing/billing/index\",\"createTime\":\"2024-11-01 14:51:13\",\"icon\":\"cash\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2112,\"menuName\":\"收费\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2111,\"path\":\"billing\",\"perms\":\"billing:billing:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 11:22:11',71),
(593,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"billing/billing/index\",\"createTime\":\"2024-11-01 14:51:13\",\"icon\":\"cash\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2112,\"menuName\":\"收费\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2111,\"path\":\"billing\",\"perms\":\"billing:billing:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 11:27:14',75),
(594,'账单管理',1,'com.ruoyi.billing.controller.TtBillingController.add()','POST',1,'admin','牙医诊所','/billing/billing','127.0.0.1','内网IP','{\"billingDate\":\"2024-11-19 11:27:47\",\"billingId\":8,\"doctorName\":\"杜医生\",\"params\":{},\"patientName\":\"test\",\"paymentMethod\":\"5\",\"paymentStatus\":\"2\",\"totalAmount\":11}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 11:27:53',48),
(595,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"未支付\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2111,\"path\":\"unpay\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 11:29:14',99),
(596,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"billing/billing/unpay\",\"createTime\":\"2024-11-19 11:29:13\",\"icon\":\"money\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2179,\"menuName\":\"未支付\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2111,\"path\":\"unpay\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 11:33:02',165),
(597,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"阿萨德\",\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'itemId\' in \'class com.ruoyi.inventory.domain.InventoryOutbound\'','2024-11-19 22:31:37',16),
(598,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"阿萨德\",\"itemId\":\"135\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 22:37:23',23),
(599,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"阿萨德\",\"itemId\":135,\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 22:52:28',27),
(600,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"刘航\",\"itemId\":12,\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:11:20',17),
(601,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"阿萨德\",\"itemId\":135,\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10090,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:12:30',5),
(602,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-19 23:12:30\",\"expensesReason\":\"阿萨德\",\"itemId\":135,\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10090,\"unit\":\"个\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'Test\' for column \'item_id\' at row 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\outbound\\InventoryOutboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOutboundMapper.insertInventoryOutbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_outbound          ( item_id,             item_name,             responsible,                          quantity,             unit,             expenses_reason,             spending,             outbound_time,             create_time )           values ( ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'Test\' for column \'item_id\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'Test\' for column \'item_id\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'Test\' for column \'item_id\' at row 1','2024-11-19 23:12:30',74),
(603,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"阿萨德离开家\",\"itemId\":135,\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":19988,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:15:08',18),
(604,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-19 23:15:08\",\"expensesReason\":\"阿萨德离开家\",\"itemId\":135,\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":19988,\"unit\":\"个\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'reason\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\outbound\\InventoryOutboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryOutboundMapper.insertInventoryOutbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_outbound          ( item_id,             item_name,             responsible,                          quantity,             unit,             expenses_reason,             spending,             outbound_time,             create_time )           values ( ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'reason\' doesn\'t have a default value\n; Field \'reason\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'reason\' doesn\'t have a default value','2024-11-19 23:15:08',93),
(605,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"阿萨德\",\"itemId\":135,\"itemName\":\"Test\",\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":100,\"responsible\":\"刘航\",\"spending\":10088,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:18:50',4),
(606,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-19 23:18:50\",\"expensesReason\":\"阿萨德\",\"itemId\":135,\"itemName\":\"Test\",\"outboundId\":2,\"outboundTime\":\"2024-11-19\",\"params\":{},\"quantity\":100,\"responsible\":\"刘航\",\"spending\":10088,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:18:50',86),
(607,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"信息管理\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"information\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:44:00',113),
(608,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"patientlist/patientlists/index\",\"createTime\":\"2024-10-24 15:28:54\",\"icon\":\"患者管理\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2099,\"menuName\":\"患者信息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2180,\"path\":\"patientlists\",\"perms\":\"patientlist:patientlists:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:44:14',29),
(609,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"doctorlist/doctorlists/index\",\"createTime\":\"2024-10-24 15:52:05\",\"icon\":\"医生\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2105,\"menuName\":\"医生信息\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2180,\"path\":\"doctorlists\",\"perms\":\"doctorlist:doctorlists:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:44:29',42),
(610,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2061','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-11-19 23:44:34',10),
(611,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2061','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-11-19 23:44:38',6),
(612,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2061','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-11-19 23:45:01',5),
(613,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-10-23 17:18:06\",\"icon\":\"患者管理\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2061,\"menuName\":\"患者列表\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"null\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:45:15',56),
(614,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-10-23 17:17:16\",\"icon\":\"6-医疗-医生\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2060,\"menuName\":\"医生列表\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"null\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:45:23',17),
(615,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','牙医诊所','/system/menu/2061','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-11-19 23:45:26',4),
(616,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_supplier\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:53:07',124),
(617,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/28','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:56:05',28),
(618,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_supplier\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-19 23:56:08',40),
(619,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/29','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 00:01:17',69),
(620,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_supplier\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 00:01:21',33),
(621,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"suppliers\",\"className\":\"Supplier\",\"columns\":[{\"capJavaField\":\"SupplierId\",\"columnComment\":\"供应商ID\",\"columnId\":302,\"columnName\":\"supplier_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-20 00:01:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"supplierId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SupplierName\",\"columnComment\":\"供应商名称\",\"columnId\":303,\"columnName\":\"supplier_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-20 00:01:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"supplierName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SupplierRemark\",\"columnComment\":\"供应商备注\",\"columnId\":304,\"columnName\":\"supplier_remark\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2024-11-20 00:01:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"supplierRemark\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":30,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemId\",\"columnComment\":\"供应货物ID\",\"columnId\":305,\"columnName\":\"item_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-20 00:01:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 00:04:19',39),
(622,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_supplier\"}',NULL,0,NULL,'2024-11-20 00:04:23',399),
(623,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_supplier\"}',NULL,0,NULL,'2024-11-20 00:04:26',34),
(624,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_supplier\"}',NULL,0,NULL,'2024-11-20 00:04:45',28),
(625,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_supplier\"}',NULL,0,NULL,'2024-11-20 00:04:46',25),
(626,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\supplier\\SupplierMapper.xml]\r\n### The error may involve com.ruoyi.supplier.mapper.SupplierMapper.insertSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_supplier\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1','2024-11-20 00:35:43',73),
(627,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\supplier\\SupplierMapper.xml]\r\n### The error may involve com.ruoyi.supplier.mapper.SupplierMapper.insertSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_supplier\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1','2024-11-20 00:37:28',6),
(628,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\supplier\\SupplierMapper.xml]\r\n### The error may involve com.ruoyi.supplier.mapper.SupplierMapper.insertSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_supplier\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1','2024-11-20 00:39:17',47),
(629,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":135,\"itemName\":\"test\",\"itemRemark\":\"234\",\"mail\":\"123142\",\"params\":{},\"supplierAddress\":\"asd123\",\"supplierId\":1,\"supplierName\":\"A\",\"supplierPhone\":\"1234\",\"supplierPhone2\":\"2345\",\"supplierPost\":\"qwe-ased1231234\",\"supplierRemark\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 00:41:04',16),
(630,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":123,\"itemName\":\"234\",\"itemRemark\":\"213\",\"mail\":\"123\",\"params\":{},\"supplierAddress\":\"123\",\"supplierId\":2,\"supplierName\":\"B\",\"supplierPhone\":\"123\",\"supplierPhone2\":\"123\",\"supplierPost\":\"123\",\"supplierRemark\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 01:29:30',50),
(631,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":123,\"itemName\":\"123\",\"params\":{},\"supplierId\":3,\"supplierName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 01:29:55',110),
(632,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":123,\"itemName\":\"123\",\"params\":{},\"supplierId\":4,\"supplierName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 01:32:58',68),
(633,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":123,\"itemName\":\"123\",\"params\":{},\"supplierId\":5,\"supplierName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 01:38:18',63),
(634,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":123,\"itemName\":\"123\",\"params\":{},\"supplierId\":6,\"supplierName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 01:42:00',29),
(635,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":123,\"itemName\":\"2341\",\"params\":{},\"supplierId\":7,\"supplierName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 01:45:47',32),
(636,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":123,\"itemName\":\"123\",\"params\":{},\"supplierId\":8,\"supplierName\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 01:59:18',113),
(637,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":12,\"itemName\":\"test\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 10\",\"code\":500}',0,NULL,'2024-11-20 02:11:58',39),
(638,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":12,\"itemName\":\"test\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 10\",\"code\":500}',0,NULL,'2024-11-20 02:15:05',7),
(639,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":12,\"itemName\":\"testy\",\"params\":{},\"quantity\":12,\"responsible\":\"123\",\"spending\":0,\"unit\":\"1\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 12\",\"code\":500}',0,NULL,'2024-11-20 02:39:18',4),
(640,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineId\":136,\"medicineName\":\"123\",\"params\":{},\"sellingPrice\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 02:39:26',15),
(641,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":136,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"123\",\"spending\":0,\"unit\":\"1\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 11\",\"code\":500}',0,NULL,'2024-11-20 02:39:36',3),
(642,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1367,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:44:47',16),
(643,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1367,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:45:03',3),
(644,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1367,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:45:17',1),
(645,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1367,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:45:23',22),
(646,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1367,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:49:32',12),
(647,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1345,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:51:01',9),
(648,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":123123,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:52:59',3),
(649,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1233,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:53:36',2),
(650,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1233,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:53:41',3),
(651,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1233,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:56:05',21),
(652,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1233,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:56:38',5),
(653,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":1233,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:58:16',16),
(654,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":137,\"itemName\":\"1223\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:58:29',5),
(655,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":137,\"itemName\":\"1223\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:58:38',4),
(656,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":137,\"itemName\":\"1223\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:59:33',3),
(657,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":137,\"itemName\":\"1223\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:59:43',13),
(658,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:59:48',3),
(659,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:59:53',2),
(660,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:59:58',4),
(661,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 02:59:59',4),
(662,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 03:00:03',3),
(663,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":136,\"itemName\":\"阿萨德\",\"params\":{},\"quantity\":1000,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 1000\",\"code\":500}',0,NULL,'2024-11-20 03:00:18',5),
(664,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"expensesReason\":\"奥德赛\",\"itemId\":5,\"itemName\":\"药品E\",\"outboundTime\":\"2024-11-14\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:01:02',9),
(665,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 03:01:02\",\"expensesReason\":\"奥德赛\",\"itemId\":5,\"itemName\":\"药品E\",\"outboundId\":3,\"outboundTime\":\"2024-11-14\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:01:03',90),
(666,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":5,\"itemName\":\"药品E\",\"outboundTime\":\"2024-11-20\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:05:42',24),
(667,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 03:05:42\",\"itemId\":5,\"itemName\":\"药品E\",\"outboundId\":4,\"outboundTime\":\"2024-11-20\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":10080,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:05:42',22),
(668,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"136\",\"params\":{},\"quantity\":10,\"reason\":\"阿伟\",\"responsible\":\"刘航\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 03:06:11',4),
(669,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"136\",\"params\":{},\"quantity\":10,\"reason\":\"阿伟\",\"responsible\":\"刘航\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 03:06:15',5),
(670,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":136,\"itemName\":\"123\",\"params\":{},\"quantity\":113,\"responsible\":\"123\",\"spending\":0,\"unit\":\"1\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 113\",\"code\":500}',0,NULL,'2024-11-20 03:08:22',9),
(671,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":136,\"itemName\":\"345\",\"params\":{},\"quantity\":0,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:09:16',3),
(672,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 03:09:16\",\"itemId\":136,\"itemName\":\"345\",\"outboundId\":5,\"params\":{},\"quantity\":0,\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:09:16',73),
(673,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":145,\"itemName\":\"123\",\"params\":{},\"quantity\":12,\"responsible\":\"123\",\"spending\":0,\"unit\":\"1\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 03:16:48',25),
(674,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":145,\"itemName\":\"123\",\"params\":{},\"quantity\":123,\"responsible\":\"123\",\"spending\":0,\"unit\":\"123\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 03:17:42',2),
(675,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":145,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"阿萨德\",\"spending\":0,\"unit\":\"个\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 03:18:09',5),
(676,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":145,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"阿萨德\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"出库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 03:20:12',11),
(677,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":145,\"itemName\":\"123\",\"params\":{},\"quantity\":11,\"responsible\":\"阿萨德\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"出库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 03:20:16',2),
(678,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":136,\"itemName\":\"1234\",\"params\":{},\"quantity\":11,\"responsible\":\"阿萨德\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"出库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-20 03:20:24',2),
(679,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":136,\"itemName\":\"123\",\"params\":{},\"quantity\":1100,\"responsible\":\"阿萨德\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 1100\",\"code\":500}',0,NULL,'2024-11-20 03:20:30',3),
(680,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":136,\"itemName\":\"123\",\"params\":{},\"quantity\":-100,\"responsible\":\"阿萨德\",\"spending\":11,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:20:48',11),
(681,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 03:20:49\",\"itemId\":136,\"itemName\":\"123\",\"outboundId\":6,\"params\":{},\"quantity\":-100,\"responsible\":\"阿萨德\",\"spending\":11,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 03:20:49',83),
(682,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"freight\":0,\"params\":{},\"purchasePrice\":0,\"spending\":0}','{\"msg\":\"入库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 03:23:47',13),
(683,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"freight\":0,\"itemId\":136,\"itemName\":\"234\",\"params\":{},\"purchasePrice\":0,\"spending\":0}','{\"msg\":\"入库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-20 03:24:31',18),
(684,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.outboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/outboundUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}','{\"msg\":\"出库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 03:24:37',4),
(685,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.domain.InventoryMedicine.getQuantity()\" because the return value of \"com.ruoyi.inventory.service.IInventoryMedicineService.selectInventoryMedicineByMedicineId(java.lang.Long)\" is null','2024-11-20 03:24:39',4),
(686,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot parse null string','2024-11-20 03:30:51',10),
(687,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot parse null string','2024-11-20 03:31:03',8),
(688,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"params\":{},\"spending\":0}',NULL,1,'Cannot parse null string','2024-11-20 03:31:05',0),
(689,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"134\",\"params\":{},\"spending\":0}','{\"msg\":\"出库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 03:31:16',3),
(690,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.offsettingUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/offsettingUpdateMedicine','127.0.0.1','内网IP','{\"itemId\":\"12\",\"params\":{},\"quantity\":111,\"reason\":\"123\",\"responsible\":\"123\",\"spending\":0,\"unit\":\"1\"}','{\"msg\":\"出库失败：当前库存不足，库存量为 0，出库量为 111\",\"code\":500}',0,NULL,'2024-11-20 03:31:31',2),
(691,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.offsettingUpdateInventorytools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/offsettingUpdateInventorytools','127.0.0.1','内网IP','{\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where tools_id = null\' at line 3\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inventorytool\\InventoryToolsMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryToolsMapper.offsettingUpdateInventoryInventoryToolsResult-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update tt_inventory_tools                    where tools_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where tools_id = null\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where tools_id = null\' at line 3','2024-11-20 03:35:53',66),
(692,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.inboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/inboundUpdateTools','127.0.0.1','内网IP','{\"freight\":0,\"params\":{},\"purchasePrice\":0,\"spending\":0}','{\"msg\":\"入库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 04:07:04',12),
(693,'工具库存',1,'com.ruoyi.inventory.controller.InventoryToolsController.add()','POST',1,'admin','牙医诊所','/inventorytool/inventorytools','127.0.0.1','内网IP','{\"params\":{},\"sellingPrice\":1080,\"toolsDescription\":\"一个工具\",\"toolsName\":\"工具A\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'quantity\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inventorytool\\InventoryToolsMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryToolsMapper.insertInventoryTools-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_tools          ( tools_name,             tools_description,                                                    selling_price )           values ( ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'quantity\' doesn\'t have a default value\n; Field \'quantity\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'quantity\' doesn\'t have a default value','2024-11-20 04:07:17',74),
(694,'工具库存',1,'com.ruoyi.inventory.controller.InventoryToolsController.add()','POST',1,'admin','牙医诊所','/inventorytool/inventorytools','127.0.0.1','内网IP','{\"params\":{},\"sellingPrice\":1080,\"toolsDescription\":\"一个工具\",\"toolsId\":6,\"toolsName\":\"工具A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:09:24',22),
(695,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.inboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/inboundUpdateTools','127.0.0.1','内网IP','{\"freight\":0,\"itemId\":7,\"params\":{},\"purchasePrice\":0,\"spending\":0}','{\"msg\":\"入库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 04:09:38',3),
(696,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.inboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/inboundUpdateTools','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-19\",\"freight\":20,\"inboundTime\":\"2024-11-20\",\"itemId\":7,\"itemName\":\"工具A\",\"manufactureDate\":\"2024-11-13\",\"params\":{},\"purchasePrice\":10080,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"6\",\"spending\":12080,\"supplier\":\"工厂A\",\"unit\":\"个\"}','{\"msg\":\"入库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 04:10:13',5),
(697,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.inboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/inboundUpdateTools','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-19\",\"freight\":20,\"inboundTime\":\"2024-11-20\",\"itemId\":6,\"itemName\":\"工具A\",\"manufactureDate\":\"2024-11-13\",\"params\":{},\"purchasePrice\":10080,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"6\",\"spending\":12080,\"supplier\":\"工厂A\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:10:19',14),
(698,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 04:10:19\",\"expirationDate\":\"2024-11-19\",\"freight\":20,\"inboundId\":16,\"inboundTime\":\"2024-11-20\",\"itemId\":6,\"itemName\":\"工具A\",\"manufactureDate\":\"2024-11-13\",\"params\":{},\"purchasePrice\":10080,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"6\",\"spending\":12080,\"supplier\":\"工厂A\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:10:19',18),
(699,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":6,\"itemName\":\"工具A\",\"itemRemark\":\"123\",\"mail\":\"123\",\"params\":{},\"supplierAddress\":\"123\",\"supplierId\":9,\"supplierName\":\"22\",\"supplierPhone\":\"123\",\"supplierPhone2\":\"123\",\"supplierPost\":\"123\",\"supplierRemark\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:11:20',84),
(700,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.inboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/inboundUpdateTools','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-21\",\"freight\":123,\"inboundTime\":\"2024-11-20\",\"itemId\":6,\"itemName\":\"工具A\",\"manufactureDate\":\"2024-11-13\",\"params\":{},\"purchasePrice\":123,\"quantity\":11,\"responsible\":\"123\",\"shelfLife\":\"6\",\"spending\":123,\"supplier\":\"123\",\"unit\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:40:54',101),
(701,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 04:40:54\",\"expirationDate\":\"2024-11-21\",\"freight\":123,\"inboundId\":17,\"inboundTime\":\"2024-11-20\",\"itemId\":6,\"itemName\":\"工具A\",\"manufactureDate\":\"2024-11-13\",\"params\":{},\"purchasePrice\":123,\"quantity\":11,\"responsible\":\"123\",\"shelfLife\":\"6\",\"spending\":123,\"supplier\":\"123\",\"unit\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:40:54',18),
(702,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.outboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/outboundUpdateTools','127.0.0.1','内网IP','{\"itemId\":5,\"params\":{},\"spending\":0}','{\"msg\":\"出库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 04:41:06',7),
(703,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.outboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/outboundUpdateTools','127.0.0.1','内网IP','{\"itemId\":6,\"itemName\":\"啊\",\"params\":{},\"spending\":0}','{\"msg\":\"出库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-20 04:41:09',4),
(704,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.outboundUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/outboundUpdateTools','127.0.0.1','内网IP','{\"expensesReason\":\"123\",\"itemId\":6,\"itemName\":\"工具A\",\"outboundTime\":\"2024-11-20\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":2288,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:41:25',87),
(705,'出库工单',1,'com.ruoyi.inventory.controller.InventoryOutboundController.add()','POST',1,'admin','牙医诊所','/outbound/outbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 04:41:25\",\"expensesReason\":\"123\",\"itemId\":6,\"itemName\":\"工具A\",\"outboundId\":7,\"outboundTime\":\"2024-11-20\",\"params\":{},\"quantity\":10,\"responsible\":\"刘航\",\"spending\":2288,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:41:25',10),
(706,'药品库存',2,'com.ruoyi.inventory.controller.InventoryToolsController.offsettingUpdateTools()','PUT',1,'admin','牙医诊所','/inventorytool/inventorytools/offsettingUpdateTools','127.0.0.1','内网IP','{\"itemId\":\"6\",\"params\":{},\"quantity\":1,\"reason\":\"123\",\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:41:52',55),
(707,'对冲记录工单',1,'com.ruoyi.inventory.controller.InventoryOffsettingController.add()','POST',1,'admin','牙医诊所','/offsetting/offsettings','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 04:41:52\",\"itemId\":\"6\",\"offsettingId\":21,\"params\":{},\"quantity\":1,\"reason\":\"123\",\"responsible\":\"123\",\"spending\":0,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 04:41:52',23),
(708,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":12,\"itemName\":\"123\",\"itemRemark\":\"123\",\"mail\":\"123\",\"params\":{},\"supplierAddress\":\"123\",\"supplierId\":11,\"supplierName\":\"123\",\"supplierPhone\":\"123\",\"supplierPhone2\":\"123\",\"supplierPost\":\"123\",\"supplierRemark\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 21:23:39',114),
(709,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"123\",\"medicineId\":137,\"medicineName\":\"234\",\"params\":{},\"sellingPrice\":11180,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 21:33:14',155),
(710,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"freight\":0,\"itemId\":123,\"params\":{},\"purchasePrice\":0,\"spending\":0}','{\"msg\":\"入库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-20 21:45:03',21),
(711,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"freight\":0,\"itemId\":137,\"itemName\":\"21\",\"params\":{},\"purchasePrice\":0,\"spending\":0}','{\"msg\":\"入库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-20 21:46:33',7),
(712,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-23\",\"freight\":10,\"inboundTime\":\"2024-11-20\",\"itemId\":137,\"itemName\":\"234\",\"manufactureDate\":\"2024-11-12\",\"params\":{},\"purchasePrice\":12,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"6\",\"spending\":1210,\"supplier\":\"test1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 21:47:06',11),
(713,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-23\",\"freight\":10,\"inboundTime\":\"2024-11-20\",\"itemId\":137,\"itemName\":\"234\",\"manufactureDate\":\"2024-11-12\",\"params\":{},\"purchasePrice\":12,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"6\",\"spending\":1210,\"supplier\":\"test1\"}',NULL,1,'Cannot invoke \"com.ruoyi.inventory.service.impl.InventoryMedicineServiceImpl.selectInventoryMedicineByMedicineId(java.lang.Long)\" because \"inventoryMedicineService\" is null','2024-11-20 21:47:06',3),
(714,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-21\",\"freight\":2,\"inboundTime\":\"2024-11-20\",\"itemId\":137,\"itemName\":\"234\",\"manufactureDate\":\"2024-11-26\",\"params\":{},\"purchasePrice\":100,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1·\",\"spending\":10002,\"supplier\":\"test1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:02:01',14),
(715,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-20 22:02:01\",\"expirationDate\":\"2024-11-21\",\"freight\":2,\"inboundId\":18,\"inboundTime\":\"2024-11-20\",\"itemId\":137,\"itemName\":\"234\",\"manufactureDate\":\"2024-11-26\",\"params\":{},\"purchasePrice\":100,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1·\",\"spending\":10002,\"supplier\":\"test1\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:02:02',133),
(716,'药品库存',3,'com.ruoyi.inventory.controller.InventoryMedicineController.remove()','DELETE',1,'admin','牙医诊所','/medicine/medicine/14,13,12,135,136','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:04:19',10),
(717,'入库工单',3,'com.ruoyi.inventory.controller.InventoryInboundController.remove()','DELETE',1,'admin','牙医诊所','/inbound/inbounds/1,6,7,8,9,10,11,12,13,14','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:04:27',13),
(718,'入库工单',3,'com.ruoyi.inventory.controller.InventoryInboundController.remove()','DELETE',1,'admin','牙医诊所','/inbound/inbounds/15,16,17,18','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:04:30',15),
(719,'药品库存',3,'com.ruoyi.inventory.controller.InventoryMedicineController.remove()','DELETE',1,'admin','牙医诊所','/medicine/medicine/137','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:04:35',9),
(720,'出库工单',3,'com.ruoyi.inventory.controller.InventoryOutboundController.remove()','DELETE',1,'admin','牙医诊所','/outbound/outbounds/2,3,4,5,6,7','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:04:41',27),
(721,'对冲记录工单',3,'com.ruoyi.inventory.controller.InventoryOffsettingController.remove()','DELETE',1,'admin','牙医诊所','/offsetting/offsettings/18,19,20,21','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-20 22:04:47',19),
(722,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-14\",\"freight\":1,\"inboundTime\":\"2024-11-26\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-13\",\"params\":{},\"purchasePrice\":12,\"quantity\":1,\"responsible\":\"12\",\"shelfLife\":\"1\",\"spending\":0,\"supplier\":\"12\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 12:24:44',16),
(723,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 12:24:44\",\"expirationDate\":\"2024-11-14\",\"freight\":1,\"inboundTime\":\"2024-11-26\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-13\",\"params\":{},\"purchasePrice\":12,\"quantity\":1,\"responsible\":\"12\",\"shelfLife\":\"1\",\"spending\":0,\"supplier\":\"12\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'unit\' doesn\'t have a default value\r\n### The error may exist in file [D:\\work\\work\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\inbound\\InventoryInboundMapper.xml]\r\n### The error may involve com.ruoyi.inventory.mapper.InventoryInboundMapper.insertInventoryInbound-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_inbound          ( item_id,             item_name,             responsible,             supplier,             quantity,                          purchase_price,             freight,             spending,             inbound_time,             manufacture_date,             shelf_life,             expiration_date,             create_time )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'unit\' doesn\'t have a default value\n; Field \'unit\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'unit\' doesn\'t have a default value','2024-11-21 12:24:45',115),
(724,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-07\",\"freight\":10,\"inboundTime\":\"2024-11-14\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10010,\"quantity\":9,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":91090,\"supplier\":\"test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 12:32:08',11),
(725,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 12:32:08\",\"expirationDate\":\"2024-11-07\",\"freight\":10,\"inboundId\":19,\"inboundTime\":\"2024-11-14\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-06\",\"params\":{},\"purchasePrice\":10010,\"quantity\":9,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":9010000,\"supplier\":\"test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 12:32:08',100),
(726,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-28\",\"freight\":1222,\"inboundTime\":\"2024-11-20\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-12\",\"params\":{},\"purchasePrice\":1080,\"quantity\":100,\"responsible\":\"刘航\",\"spending\":109222,\"supplier\":\"testtime\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 12:51:20',7),
(727,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 12:51:20\",\"expirationDate\":\"2024-11-28\",\"freight\":1222,\"inboundId\":20,\"inboundTime\":\"2024-11-20\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-12\",\"params\":{},\"purchasePrice\":1080,\"quantity\":100,\"responsible\":\"刘航\",\"spending\":10922200,\"supplier\":\"testtime\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 12:51:20',43),
(728,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2026-04-09\",\"freight\":20,\"inboundTime\":\"2024-11-21\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-11\",\"params\":{},\"purchasePrice\":10080,\"quantity\":90,\"responsible\":\"刘航\",\"spending\":909200,\"supplier\":\"test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 12:59:02',6),
(729,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 12:59:02\",\"expirationDate\":\"2026-04-09\",\"freight\":20,\"inboundId\":21,\"inboundTime\":\"2024-11-21\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2024-11-11\",\"params\":{},\"purchasePrice\":10080,\"quantity\":90,\"responsible\":\"刘航\",\"spending\":90722000,\"supplier\":\"test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 12:59:02',17),
(730,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2045-12-31\",\"freight\":2020,\"inboundTime\":\"2024-11-21\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2025-12-31\",\"params\":{},\"purchasePrice\":1080,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"7305\",\"spending\":110020,\"supplier\":\"test月份\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 20:40:49',13),
(731,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 20:40:49\",\"expirationDate\":\"2045-12-31\",\"freight\":2020,\"inboundId\":22,\"inboundTime\":\"2024-11-21\",\"itemId\":5,\"itemName\":\"药品E\",\"manufactureDate\":\"2025-12-31\",\"params\":{},\"purchasePrice\":1080,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"7305\",\"spending\":11002000,\"supplier\":\"test月份\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 20:40:49',62),
(732,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"freight\":2088,\"inboundTime\":\"2024-11-20\",\"itemId\":2,\"itemName\":\"药品C\",\"params\":{},\"purchasePrice\":1020,\"quantity\":60,\"responsible\":\"liuhang\",\"spending\":63288,\"supplier\":\"test月份2\"}','{\"msg\":\"入库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-21 20:44:59',3),
(733,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2036-05-31\",\"freight\":2088,\"inboundTime\":\"2024-11-20\",\"itemId\":2,\"itemName\":\"药品C\",\"manufactureDate\":\"2026-05-31\",\"params\":{},\"purchasePrice\":1020,\"quantity\":60,\"responsible\":\"liuhang\",\"shelfLife\":\"3653\",\"spending\":6328800,\"supplier\":\"test月份2\"}','{\"msg\":\"入库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-21 20:45:07',3),
(734,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2036-05-31\",\"freight\":2088,\"inboundTime\":\"2024-11-20\",\"itemId\":2,\"itemName\":\"药品B\",\"manufactureDate\":\"2026-05-31\",\"params\":{},\"purchasePrice\":1020,\"quantity\":60,\"responsible\":\"liuhang\",\"shelfLife\":\"3653\",\"spending\":6328800,\"supplier\":\"test月份2\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 20:45:15',10),
(735,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 20:45:15\",\"expirationDate\":\"2036-05-31\",\"freight\":2088,\"inboundId\":23,\"inboundTime\":\"2024-11-20\",\"itemId\":2,\"itemName\":\"药品B\",\"manufactureDate\":\"2026-05-31\",\"params\":{},\"purchasePrice\":1020,\"quantity\":60,\"responsible\":\"liuhang\",\"shelfLife\":\"3653\",\"spending\":6328800,\"supplier\":\"test月份2\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 20:45:15',24),
(736,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":10,\"inboundTime\":\"2024-11-21\",\"itemId\":3,\"itemName\":\"药品C\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":220,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":23000,\"supplier\":\"test月份3\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 20:59:07',11),
(737,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 20:59:07\",\"expirationDate\":\"2024-11-30\",\"freight\":10,\"inboundId\":24,\"inboundTime\":\"2024-11-21\",\"itemId\":3,\"itemName\":\"药品C\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":220,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":2201000,\"supplier\":\"test月份3\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 20:59:07',12),
(738,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-06-30\",\"freight\":179889,\"inboundTime\":\"2024-11-21\",\"itemId\":2,\"itemName\":\"药品B\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":0,\"supplier\":\"test4\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 21:13:17',13),
(739,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-21 21:13:17\",\"expirationDate\":\"2024-06-30\",\"freight\":179889,\"inboundId\":25,\"inboundTime\":\"2024-11-21\",\"itemId\":2,\"itemName\":\"药品B\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":10,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":0,\"supplier\":\"test4\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-21 21:13:17',30),
(740,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":10000,\"inboundTime\":\"2024-11-13\",\"itemId\":1,\"itemName\":\"药品A\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":198,\"quantity\":20,\"responsible\":\"刘航\",\"shelfLife\":\"6\",\"spending\":1003960,\"supplier\":\"test5\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 09:39:50',33),
(741,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"freight\":1,\"params\":{},\"purchasePrice\":1,\"quantity\":1,\"spending\":200}','{\"msg\":\"入库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-22 09:41:44',2),
(742,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"freight\":1,\"params\":{},\"purchasePrice\":1,\"quantity\":1,\"spending\":200}','{\"msg\":\"入库失败：货物不存在\",\"code\":500}',0,NULL,'2024-11-22 09:41:54',2),
(743,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":1,\"inboundTime\":\"2024-11-19\",\"itemId\":1,\"itemName\":\"药品A\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":198,\"quantity\":1,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":298,\"supplier\":\"刘航\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 09:44:37',7),
(744,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":2059,\"inboundTime\":\"2024-11-22\",\"itemId\":1,\"itemName\":\"药品A\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":2350,\"quantity\":100,\"responsible\":\"留阿灰姑娘\",\"shelfLife\":\"1\",\"spending\":237059,\"supplier\":\"test23\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 09:50:08',8),
(745,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 09:50:08\",\"expirationDate\":\"2024-11-30\",\"freight\":2059,\"inboundId\":26,\"inboundTime\":\"2024-11-22\",\"itemId\":1,\"itemName\":\"药品A\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":2350,\"quantity\":100,\"responsible\":\"留阿灰姑娘\",\"shelfLife\":\"1\",\"spending\":237059,\"supplier\":\"test23\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 09:50:08',34),
(746,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"test\",\"medicineId\":138,\"medicineName\":\"药品T\",\"params\":{},\"sellingPrice\":10099,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 09:56:28',11),
(747,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":2055,\"inboundTime\":\"2024-11-22\",\"itemId\":138,\"itemName\":\"药品T\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":9999,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":1001955,\"supplier\":\"testyeah\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 09:57:28',7),
(748,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 09:57:28\",\"expirationDate\":\"2024-11-30\",\"freight\":2055,\"inboundId\":27,\"inboundTime\":\"2024-11-22\",\"itemId\":138,\"itemName\":\"药品T\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":9999,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":1001955,\"supplier\":\"testyeah\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 09:57:28',10),
(749,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"test1\",\"medicineId\":139,\"medicineName\":\"麻醉药\",\"params\":{},\"sellingPrice\":19999,\"unit\":\"针\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 10:50:33',14),
(750,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":2050,\"inboundTime\":\"2024-11-19\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":102050,\"supplier\":\"厂商A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 10:51:04',9),
(751,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 10:51:04\",\"expirationDate\":\"2024-11-30\",\"freight\":2050,\"inboundId\":28,\"inboundTime\":\"2024-11-19\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":10,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":3050,\"supplier\":\"厂商A\",\"unit\":\"针\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 10:51:04',70),
(752,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":2050,\"inboundTime\":\"2024-11-21\",\"itemId\":139,\"itemName\":\"麻醉针\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":90,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":902050,\"supplier\":\"test2\"}','{\"msg\":\"入库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-22 10:52:12',2),
(753,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":2050,\"inboundTime\":\"2024-11-21\",\"itemId\":139,\"itemName\":\"麻醉针\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":90,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":11050,\"supplier\":\"test2\"}','{\"msg\":\"入库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-22 10:52:15',2),
(754,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":2050,\"inboundTime\":\"2024-11-21\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":90,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":11050,\"supplier\":\"test2\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 10:52:23',5),
(755,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 10:52:23\",\"expirationDate\":\"2024-11-30\",\"freight\":2050,\"inboundId\":29,\"inboundTime\":\"2024-11-21\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":90,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":11050,\"supplier\":\"test2\",\"unit\":\"针\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 10:52:23',29),
(756,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":2050,\"inboundTime\":\"2024-11-22\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":1002050,\"supplier\":\"test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 10:57:17',6),
(757,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 10:57:17\",\"expirationDate\":\"2024-07-31\",\"freight\":2050,\"inboundId\":30,\"inboundTime\":\"2024-11-22\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":12050,\"supplier\":\"test\",\"unit\":\"针\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 10:57:17',13),
(758,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-11-30\",\"freight\":2050,\"inboundTime\":\"2024-11-21\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":1002050,\"supplier\":\"test1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:00:03',7),
(759,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 11:00:03\",\"expirationDate\":\"2024-11-30\",\"freight\":2050,\"inboundId\":31,\"inboundTime\":\"2024-11-21\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-10-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":12050,\"supplier\":\"test1\",\"unit\":\"针\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:00:03',48),
(760,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":2050,\"inboundTime\":\"2024-11-20\",\"itemId\":139,\"itemName\":\"麻醉哟啊\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":10000,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":1002050,\"supplier\":\"test22\"}','{\"msg\":\"入库失败:货物名称不正确\",\"code\":500}',0,NULL,'2024-11-22 11:03:33',2),
(761,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":205000,\"inboundTime\":\"2024-11-20\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":1000000,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":100205000,\"supplier\":\"test22\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:03:39',10),
(762,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 11:03:39\",\"expirationDate\":\"2024-07-31\",\"freight\":205000,\"inboundId\":32,\"inboundTime\":\"2024-11-20\",\"itemId\":139,\"itemName\":\"麻醉药\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":1000000,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":100205000,\"supplier\":\"test22\",\"unit\":\"针\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:03:39',16),
(763,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":555,\"itemName\":\"555\",\"params\":{},\"supplierId\":12,\"supplierName\":\"555\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:12:21',82),
(764,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":666,\"itemName\":\"666\",\"params\":{},\"supplierId\":13,\"supplierName\":\"666\",\"supplierRemark\":\"666\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:13:08',99),
(765,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":888,\"itemName\":\"888\",\"params\":{},\"supplierId\":14,\"supplierName\":\"888\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:15:12',35),
(766,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":1,\"itemName\":\"1\",\"params\":{},\"supplierId\":15,\"supplierName\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:17:10',87),
(767,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":1,\"itemName\":\"1\",\"params\":{},\"supplierId\":16,\"supplierName\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:17:38',79),
(768,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"itemId\":1,\"itemName\":\"1\",\"params\":{},\"supplierName\":\"1\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'Contact\' in \'class com.ruoyi.supplier.domain.Supplier\'','2024-11-22 11:36:40',8),
(769,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"creditworthiness\":\"特别好\",\"itemId\":1,\"itemName\":\"1\",\"params\":{},\"supplierName\":\"1\"}',NULL,1,'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'Contact\' in \'class com.ruoyi.supplier.domain.Supplier\'','2024-11-22 11:37:51',1),
(770,'供应商列表',1,'com.ruoyi.supplier.controller.SupplierController.add()','POST',1,'admin','牙医诊所','/supplier/suppliers','127.0.0.1','内网IP','{\"creditworthiness\":\"特别好\",\"itemId\":1,\"itemName\":\"1\",\"params\":{},\"supplierId\":17,\"supplierName\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 11:39:18',17),
(771,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2032-05-31\",\"freight\":2555,\"inboundTime\":\"2024-11-22\",\"itemId\":1,\"itemName\":\"药品A\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":99,\"responsible\":\"刘航\",\"shelfLife\":\"96\",\"spending\":992555,\"supplier\":\"2\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 16:11:19',20),
(772,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 16:11:19\",\"expirationDate\":\"2032-05-31\",\"freight\":2555,\"inboundId\":33,\"inboundTime\":\"2024-11-22\",\"itemId\":1,\"itemName\":\"药品A\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":99,\"responsible\":\"刘航\",\"shelfLife\":\"96\",\"spending\":12455,\"supplier\":\"2\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 16:11:19',48),
(773,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-06-30\",\"freight\":2055,\"inboundTime\":\"2024-11-22\",\"itemId\":3,\"itemName\":\"药品C\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":60,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":602055,\"supplier\":\"B\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 16:17:26',13),
(774,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-22 16:17:26\",\"expirationDate\":\"2024-06-30\",\"freight\":2055,\"inboundId\":34,\"inboundTime\":\"2024-11-22\",\"itemId\":3,\"itemName\":\"药品C\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":60,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":8055,\"supplier\":\"B\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-22 16:17:26',32),
(775,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineDescription\":\"test\",\"medicineId\":140,\"medicineName\":\"test111\",\"params\":{},\"sellingPrice\":10000,\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 20:56:49',17),
(776,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2025-06-30\",\"freight\":2550,\"inboundTime\":\"2024-11-24\",\"itemId\":140,\"itemName\":\"test111\",\"manufactureDate\":\"2024-01-31\",\"params\":{},\"purchasePrice\":2000,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"17\",\"spending\":202550,\"supplier\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 20:57:16',10),
(777,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-24 20:57:16\",\"expirationDate\":\"2025-06-30\",\"freight\":2550,\"inboundId\":35,\"inboundTime\":\"2024-11-24\",\"itemId\":140,\"itemName\":\"test111\",\"manufactureDate\":\"2024-01-31\",\"params\":{},\"purchasePrice\":2000,\"quantity\":100,\"responsible\":\"刘航\",\"shelfLife\":\"17\",\"spending\":202550,\"supplier\":\"A\",\"unit\":\"个\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 20:57:16',36),
(778,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_emr\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 21:32:06',118),
(779,'药品库存',1,'com.ruoyi.inventory.controller.InventoryMedicineController.add()','POST',1,'admin','牙医诊所','/medicine/medicine','127.0.0.1','内网IP','{\"medicineId\":141,\"medicineName\":\"test22\",\"params\":{},\"sellingPrice\":0,\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 21:44:04',10),
(780,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2025-05-31\",\"freight\":100,\"inboundTime\":\"2024-12-02\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":12,\"responsible\":\"去玩儿\",\"shelfLife\":\"12\",\"spending\":1300,\"supplier\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 21:44:21',14),
(781,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-24 21:44:21\",\"expirationDate\":\"2025-05-31\",\"freight\":100,\"inboundId\":36,\"inboundTime\":\"2024-12-02\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-05-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":12,\"responsible\":\"去玩儿\",\"shelfLife\":\"12\",\"spending\":1300,\"supplier\":\"123\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 21:44:21',73),
(782,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','牙医诊所','/tool/gen/31','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 21:52:41',32),
(783,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_emr\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 21:52:45',96),
(784,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"emrs\",\"className\":\"Emr\",\"columns\":[{\"capJavaField\":\"EmrId\",\"columnComment\":\"电子病历id\",\"columnId\":331,\"columnName\":\"emr_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"emrId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者ID\",\"columnId\":332,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":333,\"columnName\":\"patient_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生ID\",\"columnId\":334,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isP','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 22:09:13',42),
(785,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"emrs\",\"className\":\"Emr\",\"columns\":[{\"capJavaField\":\"EmrId\",\"columnComment\":\"电子病历id\",\"columnId\":331,\"columnName\":\"emr_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"emrId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2024-11-24 22:09:13\",\"usableColumn\":false},{\"capJavaField\":\"PatientId\",\"columnComment\":\"患者ID\",\"columnId\":332,\"columnName\":\"patient_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"patientId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2024-11-24 22:09:13\",\"usableColumn\":false},{\"capJavaField\":\"PatientName\",\"columnComment\":\"患者姓名\",\"columnId\":333,\"columnName\":\"patient_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"patientName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2024-11-24 22:09:13\",\"usableColumn\":false},{\"capJavaField\":\"DoctorId\",\"columnComment\":\"医生ID\",\"columnId\":334,\"columnName\":\"doctor_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-24 21:52:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 22:09:48',106),
(786,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_emr\"}',NULL,0,NULL,'2024-11-24 22:09:51',285),
(787,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_emr\"}',NULL,0,NULL,'2024-11-24 22:09:55',30),
(788,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','牙医诊所','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"emr/emrs/index\",\"createTime\":\"2024-11-24 22:10:16\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2187,\"menuName\":\"病历列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2180,\"path\":\"emrs\",\"perms\":\"emr:emrs:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-24 22:12:07',90),
(789,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-03-31\",\"freight\":100,\"inboundTime\":\"2024-11-25\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-02-29\",\"params\":{},\"purchasePrice\":100,\"quantity\":12,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":1300,\"supplier\":\"555\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-25 17:46:06',26),
(790,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-25 17:46:06\",\"expirationDate\":\"2024-03-31\",\"freight\":100,\"inboundId\":37,\"inboundTime\":\"2024-11-25\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-02-29\",\"params\":{},\"purchasePrice\":100,\"quantity\":12,\"responsible\":\"刘航\",\"shelfLife\":\"1\",\"spending\":1300,\"supplier\":\"555\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-25 17:46:06',190),
(791,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','牙医诊所','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_medicine_supplier\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-25 17:54:43',74),
(792,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','牙医诊所','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"medicinesuppliers\",\"className\":\"InventoryMedicineSupplier\",\"columns\":[{\"capJavaField\":\"MedicineSupplierId\",\"columnComment\":\"联系表ID\",\"columnId\":345,\"columnName\":\"medicine_supplier_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 17:54:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"medicineSupplierId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemId\",\"columnComment\":\"药品ID\",\"columnId\":346,\"columnName\":\"item_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 17:54:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"itemId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SupplierId\",\"columnComment\":\"供应商ID\",\"columnId\":347,\"columnName\":\"supplier_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 17:54:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"supplierId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ItemType\",\"columnComment\":\"0为药品，1为工具\",\"columnId\":348,\"columnName\":\"item_type\",\"columnType\":\"enum(\'0\',\'1\')\",\"createBy\":\"admin\",\"createTime\":\"2024-11-25 17:54:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEd','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-25 17:56:54',57),
(793,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_medicine_supplier\"}',NULL,0,NULL,'2024-11-25 17:56:58',354),
(794,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','牙医诊所','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tt_inventory_medicine_supplier\"}',NULL,0,NULL,'2024-11-26 10:49:36',183),
(795,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-02-29\",\"freight\":100,\"inboundTime\":\"2024-11-04\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-01-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"123\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 10:57:57',9),
(796,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-26 10:57:57\",\"expirationDate\":\"2024-02-29\",\"freight\":100,\"inboundId\":38,\"inboundTime\":\"2024-11-04\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-01-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"123\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 10:57:57',15),
(797,'medicine_supplier',1,'com.ruoyi.medicinesupplier.controller.InventoryMedicineSupplierController.add()','POST',1,'admin','牙医诊所','/medicinesupplier/medicinesuppliers','127.0.0.1','内网IP','{\"itemId\":141,\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\RJ\\Documents\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\medicinesupplier\\InventoryMedicineSupplierMapper.xml]\r\n### The error may involve com.ruoyi.medicinesupplier.mapper.InventoryMedicineSupplierMapper.insertInventoryMedicineSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_medicine_supplier          ( item_id )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\n; Field \'supplier_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value','2024-11-26 10:57:57',49),
(798,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-02-29\",\"freight\":100,\"inboundTime\":\"2024-11-04\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-01-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:01:01',6),
(799,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-26 11:01:01\",\"expirationDate\":\"2024-02-29\",\"freight\":100,\"inboundId\":39,\"inboundTime\":\"2024-11-04\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-01-31\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:01:01',10),
(800,'medicine_supplier',1,'com.ruoyi.medicinesupplier.controller.InventoryMedicineSupplierController.add()','POST',1,'admin','牙医诊所','/medicinesupplier/medicinesuppliers','127.0.0.1','内网IP','{\"itemId\":141,\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\RJ\\Documents\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\medicinesupplier\\InventoryMedicineSupplierMapper.xml]\r\n### The error may involve com.ruoyi.medicinesupplier.mapper.InventoryMedicineSupplierMapper.insertInventoryMedicineSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_medicine_supplier          ( item_id )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\n; Field \'supplier_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value','2024-11-26 11:01:01',2),
(801,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":100,\"inboundTime\":\"2024-11-05\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:02:51',6),
(802,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-26 11:02:51\",\"expirationDate\":\"2024-07-31\",\"freight\":100,\"inboundId\":40,\"inboundTime\":\"2024-11-05\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:02:51',8),
(803,'medicine_supplier',1,'com.ruoyi.medicinesupplier.controller.InventoryMedicineSupplierController.add()','POST',1,'admin','牙医诊所','/medicinesupplier/medicinesuppliers','127.0.0.1','内网IP','{\"itemId\":141,\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\RJ\\Documents\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\medicinesupplier\\InventoryMedicineSupplierMapper.xml]\r\n### The error may involve com.ruoyi.medicinesupplier.mapper.InventoryMedicineSupplierMapper.insertInventoryMedicineSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_medicine_supplier          ( item_id )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\n; Field \'supplier_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value','2024-11-26 11:02:51',2),
(804,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":100,\"inboundTime\":\"2024-11-05\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:05:14',6),
(805,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-26 11:05:14\",\"expirationDate\":\"2024-07-31\",\"freight\":100,\"inboundId\":41,\"inboundTime\":\"2024-11-05\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:05:14',8),
(806,'medicine_supplier',1,'com.ruoyi.medicinesupplier.controller.InventoryMedicineSupplierController.add()','POST',1,'admin','牙医诊所','/medicinesupplier/medicinesuppliers','127.0.0.1','内网IP','{\"itemId\":141,\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\RJ\\Documents\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\medicinesupplier\\InventoryMedicineSupplierMapper.xml]\r\n### The error may involve com.ruoyi.medicinesupplier.mapper.InventoryMedicineSupplierMapper.insertInventoryMedicineSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_medicine_supplier          ( item_id )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value\n; Field \'supplier_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'supplier_id\' doesn\'t have a default value','2024-11-26 11:05:14',2),
(807,'药品库存',2,'com.ruoyi.inventory.controller.InventoryMedicineController.inboundUpdateMedicine()','PUT',1,'admin','牙医诊所','/medicine/medicine/inboundUpdateMedicine','127.0.0.1','内网IP','{\"expirationDate\":\"2024-07-31\",\"freight\":100,\"inboundTime\":\"2024-11-05\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:07:07',6),
(808,'入库工单',1,'com.ruoyi.inventory.controller.InventoryInboundController.add()','POST',1,'admin','牙医诊所','/inbound/inbounds','127.0.0.1','内网IP','{\"createTime\":\"2024-11-26 11:07:07\",\"expirationDate\":\"2024-07-31\",\"freight\":100,\"inboundId\":42,\"inboundTime\":\"2024-11-05\",\"itemId\":141,\"itemName\":\"test22\",\"manufactureDate\":\"2024-06-30\",\"params\":{},\"purchasePrice\":100,\"quantity\":1,\"responsible\":\"1\",\"shelfLife\":\"1\",\"spending\":200,\"supplier\":\"A\",\"unit\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-11-26 11:07:07',15),
(809,'medicine_supplier',1,'com.ruoyi.medicinesupplier.controller.InventoryMedicineSupplierController.add()','POST',1,'admin','牙医诊所','/medicinesupplier/medicinesuppliers','127.0.0.1','内网IP','{\"itemType\":\"0\",\"params\":{}}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'item_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\Users\\RJ\\Documents\\GitHub\\yayi-403\\todo-back\\ruoyi-admin\\target\\classes\\mapper\\medicinesupplier\\InventoryMedicineSupplierMapper.xml]\r\n### The error may involve com.ruoyi.medicinesupplier.mapper.InventoryMedicineSupplierMapper.insertInventoryMedicineSupplier-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into tt_inventory_medicine_supplier          ( item_type )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'item_id\' doesn\'t have a default value\n; Field \'item_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'item_id\' doesn\'t have a default value','2024-11-26 11:07:07',2);

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ceo','董事长',1,'0','admin','2024-10-05 15:46:15','',NULL,''),
(2,'se','项目经理',2,'0','admin','2024-10-05 15:46:15','',NULL,''),
(3,'hr','人力资源',3,'0','admin','2024-10-05 15:46:15','',NULL,''),
(4,'user','普通员工',4,'0','admin','2024-10-05 15:46:15','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-10-05 15:46:16','',NULL,'超级管理员'),
(2,'普通角色','common',2,'2',1,1,'0','0','admin','2024-10-05 15:46:16','admin','2024-11-01 16:24:16','普通角色');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values 
(2,100),
(2,101),
(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色和菜单关联表';

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
(2,2117);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,100,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-11-26 10:41:27','admin','2024-10-05 15:46:15','','2024-11-26 10:41:27','管理员'),
(2,100,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-10-05 15:46:15','admin','2024-10-05 15:46:15','admin','2024-11-13 16:12:11','测试员'),
(100,100,'test','test','00','','','2','','$2a$10$/NIAAJu1SxRBUsCNvALkuO.fPkPNMFZQSuVNe6qjP6r9ReocXAT7q','0','0','127.0.0.1','2024-11-04 10:22:26','admin','2024-11-01 16:26:49','','2024-11-04 10:22:25',NULL);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values 
(1,1),
(2,2),
(100,4);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values 
(1,1),
(2,2),
(100,2);

/*Table structure for table `tt_action_logs` */

DROP TABLE IF EXISTS `tt_action_logs`;

CREATE TABLE `tt_action_logs` (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志唯一ID',
  `user_id` bigint DEFAULT NULL COMMENT '操作用户ID，关联用户表',
  `action_type` enum('CREATE','UPDATE','DELETE','READ') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '操作类型',
  `table_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '操作的表名',
  `record_id` bigint DEFAULT NULL COMMENT '操作的记录ID',
  `action_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '操作描述',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='操作日志表，记录用户在系统中的操作';

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
  `appointment_id` bigint NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint DEFAULT NULL COMMENT '医生ID，关联医生表',
  `appointment_date` date DEFAULT NULL COMMENT '预约终止时间',
  `appointment_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约开始时间',
  `appointment_duration` int DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE KEY `doctor_id` (`doctor_id`,`appointment_date`,`appointment_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  KEY `fk_patient_appointment` (`patient_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='预约表';

/*Data for the table `tt_appointments` */

insert  into `tt_appointments`(`appointment_id`,`patient_id`,`doctor_id`,`appointment_date`,`appointment_time`,`appointment_duration`,`appointment_project`,`appointment_status`,`created_at`,`updated_at`) values 
(1,1,3,'2024-11-18','2024-11-18 08:00:00',30,'1','2','2024-10-05 00:00:00','2024-11-18 00:00:00'),
(2,2,1,'2024-11-15','2024-11-18 11:20:56',45,'3','1','2024-10-05 00:00:00','2024-11-18 11:20:56'),
(3,3,3,'2024-11-29','2024-11-18 11:20:59',60,'3','3','2024-10-05 00:00:00','2024-11-18 11:20:59'),
(4,4,4,'2024-11-03','2024-11-18 11:21:03',30,'4','3','2024-10-05 00:00:00','2024-11-18 11:21:03'),
(5,5,5,'2024-11-12','2024-11-18 11:21:06',30,'6','1','2024-10-05 09:51:34','2024-11-18 11:21:06'),
(6,1,1,NULL,'2024-11-18 17:33:37',45,'2','1','2024-11-18 17:33:01','2024-11-18 17:33:37');

/*Table structure for table `tt_appointments_test` */

DROP TABLE IF EXISTS `tt_appointments_test`;

CREATE TABLE `tt_appointments_test` (
  `appointment_id` bigint NOT NULL AUTO_INCREMENT COMMENT '预约唯一ID',
  `patient_id` bigint DEFAULT NULL COMMENT '患者ID，关联患者表',
  `doctor_id` bigint DEFAULT NULL COMMENT '医生ID，关联医生表',
  `appointment_start_time` datetime DEFAULT NULL COMMENT '预约开始时间',
  `appointment_end_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '预约终止时间',
  `appointment_duration` int DEFAULT NULL COMMENT '预约时长（分钟）',
  `appointment_project` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '预约的项目',
  `appointment_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约更新时间',
  PRIMARY KEY (`appointment_id`) USING BTREE,
  UNIQUE KEY `doctor_id` (`doctor_id`,`appointment_start_time`,`appointment_end_time`) USING BTREE COMMENT '确保医生在同一时间内不能重复预约',
  KEY `fk_patient_appointment` (`patient_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='预约表';

/*Data for the table `tt_appointments_test` */

insert  into `tt_appointments_test`(`appointment_id`,`patient_id`,`doctor_id`,`appointment_start_time`,`appointment_end_time`,`appointment_duration`,`appointment_project`,`appointment_status`,`created_at`,`updated_at`) values 
(1,1,3,'2024-11-18 16:54:31','2024-11-18 16:54:33',30,'1','2','2024-10-05 00:00:00','2024-11-18 16:54:33'),
(2,2,1,'2024-11-20 16:54:34','2024-11-18 16:54:51',45,'3','1','2024-10-05 00:00:00','2024-11-18 16:54:51'),
(3,3,3,'2024-11-20 16:54:37','2024-11-18 16:54:56',60,'3','3','2024-10-05 00:00:00','2024-11-18 16:54:56'),
(4,4,4,'2024-11-19 16:54:39','2024-11-18 16:54:48',30,'4','3','2024-10-05 00:00:00','2024-11-18 16:54:48'),
(5,5,5,'2024-11-21 16:54:41','2024-11-18 16:54:59',30,'6','1','2024-10-05 09:51:34','2024-11-18 16:54:59');

/*Table structure for table `tt_billing` */

DROP TABLE IF EXISTS `tt_billing`;

CREATE TABLE `tt_billing` (
  `billing_id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `doctor_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `billing_date` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `receiver` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`billing_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tt_billing` */

insert  into `tt_billing`(`billing_id`,`patient_name`,`doctor_name`,`billing_date`,`total_amount`,`payment_status`,`payment_method`,`receiver`,`notes`) values 
(1,'张三','李医生','2024-11-18 17:45:03',800.50,'1','1','王护士','牙齿检查及清洁'),
(2,'李四','杜医生','2024-11-16 07:02:10',300.00,'2','5','张护士','补牙费用'),
(6,'刘洋','李医生','2024-11-18 17:45:56',200.00,'2','5','刘护士','鸿运当头666，猪头肉\n'),
(4,'赵六','李医生','2024-11-13 05:20:45',1200.53,'1','1','王护士','牙齿矫正咨询费'),
(5,'钱七','杜医生','2024-11-13 09:25:30',500.00,'1','1','张护士','定期牙齿清洁'),
(8,'test','杜医生','2024-11-19 11:27:47',11.00,'2','5',NULL,NULL);

/*Table structure for table `tt_billing_records` */

DROP TABLE IF EXISTS `tt_billing_records`;

CREATE TABLE `tt_billing_records` (
  `billing_id` bigint NOT NULL AUTO_INCREMENT COMMENT '收费记录唯一ID',
  `patient_id` bigint DEFAULT NULL COMMENT '患者ID，关联患者表',
  `amount` decimal(10,2) NOT NULL COMMENT '收费金额',
  `payment_method` enum('CASH','CREDIT_CARD','INSURANCE','ONLINE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '支付方式',
  `payment_status` enum('PENDING','COMPLETED','FAILED') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'PENDING' COMMENT '支付状态',
  `payment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '支付时间',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收费记录创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '收费记录更新时间',
  PRIMARY KEY (`billing_id`) USING BTREE,
  KEY `fk_patient_billing` (`patient_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=FIXED COMMENT='收费记录表，记录患者的付款信息';

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
  `doctor_id` bigint NOT NULL AUTO_INCREMENT COMMENT '医生唯一ID',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '医生姓名',
  `department` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '科室',
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '医生联系电话',
  `position` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '职位（如主治医师等）',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`doctor_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='医生信息表';

/*Data for the table `tt_doctors` */

insert  into `tt_doctors`(`doctor_id`,`name`,`department`,`phone`,`position`,`created_at`,`updated_at`) values 
(1,'王医生','心脏科','111-222-3333','主治医生','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(2,'李医生','神经科','444-555-6666','主任医师','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(3,'赵医生','儿科','777-888-9999','会诊医生','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(4,'刘医生','皮肤科','123-123-1234','住院医生','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(5,'张医生','眼科','222-333-4444','主治医生','2024-10-05 09:51:34','2024-10-05 09:51:34');

/*Table structure for table `tt_emr` */

DROP TABLE IF EXISTS `tt_emr`;

CREATE TABLE `tt_emr` (
  `emr_id` bigint NOT NULL AUTO_INCREMENT COMMENT '电子病历id',
  `patient_id` bigint DEFAULT NULL COMMENT '患者ID',
  `patient_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '患者姓名',
  `doctor_id` bigint DEFAULT NULL COMMENT '医生ID',
  `doctor_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '医生姓名',
  `maincase` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '主诉',
  `current_medical_history` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '现在病史',
  `treatment_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '治疗方式',
  `clinical_results` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '治疗结果',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '病历创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `emr_statue` enum('未诊断','已诊断') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '未诊断' COMMENT '诊断状态',
  `appointment_id` bigint NOT NULL COMMENT '预约id',
  `bill_id` bigint NOT NULL COMMENT '账单id',
  PRIMARY KEY (`emr_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tt_emr` */

/*Table structure for table `tt_follow_ups` */

DROP TABLE IF EXISTS `tt_follow_ups`;

CREATE TABLE `tt_follow_ups` (
  `follow_up_id` bigint NOT NULL AUTO_INCREMENT COMMENT '随访记录ID',
  `patient_id` bigint DEFAULT NULL COMMENT '患者ID，关联患者表',
  `visit_id` bigint DEFAULT NULL COMMENT '就诊记录ID，关联就诊表',
  `follow_up_date` timestamp NULL DEFAULT NULL COMMENT '随访日期',
  `follow_up_notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '随访备注',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`follow_up_id`) USING BTREE,
  KEY `fk_patient_follow_up` (`patient_id`) USING BTREE,
  KEY `fk_visit_follow_up` (`visit_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='随访记录表，记录患者随访信息';

/*Data for the table `tt_follow_ups` */

insert  into `tt_follow_ups`(`follow_up_id`,`patient_id`,`visit_id`,`follow_up_date`,`follow_up_notes`,`created_at`,`updated_at`) values 
(1,1,1,'2024-11-10 10:00:00','三个月后复诊。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(2,2,2,'2024-12-12 11:30:00','需重新预约。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(3,3,3,'2024-11-15 14:00:00','需注意体温变化。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(4,4,4,'2024-10-25 10:00:00','请定期复查。','2024-10-05 09:51:34','2024-10-05 09:51:34');

/*Table structure for table `tt_inventory_inbound` */

DROP TABLE IF EXISTS `tt_inventory_inbound`;

CREATE TABLE `tt_inventory_inbound` (
  `inbound_id` bigint NOT NULL AUTO_INCREMENT COMMENT '入库工单id',
  `item_id` bigint NOT NULL COMMENT '物品id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物品名字',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '负责人',
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '供应来源',
  `quantity` bigint NOT NULL COMMENT '入库数量',
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_inbound` */

insert  into `tt_inventory_inbound`(`inbound_id`,`item_id`,`item_name`,`responsible`,`supplier`,`quantity`,`unit`,`purchase_price`,`freight`,`spending`,`inbound_time`,`manufacture_date`,`shelf_life`,`expiration_date`,`create_time`,`update_time`) values 
(19,5,'药品E','刘航','test',9,NULL,10010,10,9010000,'2024-11-14','2024-11-06','1','2024-11-07','2024-11-21 12:32:09','2024-11-21 12:32:08'),
(20,5,'药品E','刘航','testtime',100,NULL,1080,1222,10922200,'2024-11-20','2024-11-12',NULL,'2024-11-28','2024-11-21 12:51:20','2024-11-21 12:51:20'),
(21,5,'药品E','刘航','test',90,NULL,10080,20,90722000,'2024-11-21','2024-11-11',NULL,'2026-04-09','2024-11-21 12:59:02','2024-11-21 12:59:02'),
(22,5,'药品E','刘航','test月份',100,NULL,1080,2020,11002000,'2024-11-21','2025-12-31','7305','2045-12-31','2024-11-21 20:40:50','2024-11-21 20:40:49'),
(23,2,'药品B','liuhang','test月份2',60,NULL,1020,2088,6328800,'2024-11-20','2026-05-31','3653','2036-05-31','2024-11-21 20:45:15','2024-11-21 20:45:15'),
(24,3,'药品C','刘航','test月份3',100,NULL,220,10,2201000,'2024-11-21','2024-10-31','1','2024-11-30','2024-11-21 20:59:08','2024-11-21 20:59:07'),
(25,2,'药品B','刘航','test4',10,NULL,10,179889,0,'2024-11-21','2024-05-31','1','2024-06-30','2024-11-21 21:13:17','2024-11-21 21:13:17'),
(26,1,'药品A','留阿灰姑娘','test23',100,NULL,2350,2059,237059,'2024-11-22','2024-10-31','1','2024-11-30','2024-11-22 09:50:08','2024-11-22 09:50:08'),
(27,138,'药品T','刘航','testyeah',100,'个',9999,2055,1001955,'2024-11-22','2024-10-31','1','2024-11-30','2024-11-22 09:57:28','2024-11-22 09:57:28'),
(28,139,'麻醉药','刘航','厂商A',10,'针',100,2050,3050,'2024-11-19','2024-10-31','1','2024-11-30','2024-11-22 10:51:04','2024-11-22 10:51:04'),
(29,139,'麻醉药','刘航','test2',90,'针',100,2050,11050,'2024-11-21','2024-10-31','1','2024-11-30','2024-11-22 10:52:23','2024-11-22 10:52:23'),
(30,139,'麻醉药','刘航','test',100,'针',100,2050,12050,'2024-11-22','2024-06-30','1','2024-07-31','2024-11-22 10:57:17','2024-11-22 10:57:17'),
(31,139,'麻醉药','刘航','test1',100,'针',100,2050,12050,'2024-11-21','2024-10-31','1','2024-11-30','2024-11-22 11:00:03','2024-11-22 11:00:03'),
(32,139,'麻醉药','刘航','test22',100,'针',1000000,205000,100205000,'2024-11-20','2024-06-30','1','2024-07-31','2024-11-22 11:03:39','2024-11-22 11:03:39'),
(33,1,'药品A','刘航','2',99,NULL,100,2555,12455,'2024-11-22','2024-05-31','96','2032-05-31','2024-11-22 16:11:19','2024-11-22 16:11:19'),
(34,3,'药品C','刘航','B',60,NULL,100,2055,8055,'2024-11-22','2024-05-31','1','2024-06-30','2024-11-22 16:17:26','2024-11-22 16:17:26'),
(35,140,'test111','刘航','A',100,'个',2000,2550,202550,'2024-11-24','2024-01-31','17','2025-06-30','2024-11-24 20:57:16','2024-11-24 20:57:16'),
(36,141,'test22','去玩儿','123',12,'1',100,100,1300,'2024-12-02','2024-05-31','12','2025-05-31','2024-11-24 21:44:21','2024-11-24 21:44:21'),
(37,141,'test22','刘航','555',12,'1',100,100,1300,'2024-11-25','2024-02-29','1','2024-03-31','2024-11-25 17:46:06','2024-11-25 17:46:06'),
(38,141,'test22','123','A',1,'1',100,100,200,'2024-11-04','2024-01-31','1','2024-02-29','2024-11-26 10:57:57','2024-11-26 10:57:57'),
(39,141,'test22','1','A',1,'1',100,100,200,'2024-11-04','2024-01-31','1','2024-02-29','2024-11-26 11:01:02','2024-11-26 11:01:01'),
(40,141,'test22','1','A',1,'1',100,100,200,'2024-11-05','2024-06-30','1','2024-07-31','2024-11-26 11:02:51','2024-11-26 11:02:51'),
(41,141,'test22','1','A',1,'1',100,100,200,'2024-11-05','2024-06-30','1','2024-07-31','2024-11-26 11:05:14','2024-11-26 11:05:14'),
(42,141,'test22','1','A',1,'1',100,100,200,'2024-11-05','2024-06-30','1','2024-07-31','2024-11-26 11:07:08','2024-11-26 11:07:07');

/*Table structure for table `tt_inventory_medicine` */

DROP TABLE IF EXISTS `tt_inventory_medicine`;

CREATE TABLE `tt_inventory_medicine` (
  `medicine_id` bigint NOT NULL AUTO_INCREMENT COMMENT '物品ID',
  `medicine_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '物品名称',
  `medicine_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '物品描述',
  `supplier` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供应商',
  `origin` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '供应商产地',
  `purchase_price` decimal(10,0) DEFAULT NULL COMMENT '进价',
  `selling_price` decimal(10,0) DEFAULT NULL COMMENT '售价',
  `quantity` bigint NOT NULL DEFAULT '0' COMMENT '库存数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '药品的单位',
  `manufacture_date` date DEFAULT NULL COMMENT '生产日期',
  `shelf_life` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保质期',
  `expiration_date` date DEFAULT NULL COMMENT '过期日期',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`medicine_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='物品管理表，记录库存的物品信息及供应商产地';

/*Data for the table `tt_inventory_medicine` */

insert  into `tt_inventory_medicine`(`medicine_id`,`medicine_name`,`medicine_description`,`supplier`,`origin`,`purchase_price`,`selling_price`,`quantity`,`unit`,`manufacture_date`,`shelf_life`,`expiration_date`,`created_at`,`updated_at`) values 
(1,'药品A','心脏病药物','2','中国',NULL,NULL,300,NULL,'2025-12-31',NULL,NULL,'2024-10-05 09:51:34','2024-11-22 16:11:19'),
(2,'药品B','抗生素',NULL,'中国',NULL,NULL,100,NULL,'2025-06-30',NULL,NULL,'2024-10-05 09:51:34','2024-11-21 21:13:17'),
(3,'药品C','止痛药','B','中国',NULL,NULL,200,NULL,'2026-01-15',NULL,NULL,'2024-10-05 09:51:34','2024-11-22 16:17:26'),
(4,'药品D','维生素补充剂',NULL,'中国',NULL,NULL,100,NULL,'2026-03-01',NULL,NULL,'2024-10-05 09:51:34','2024-10-05 09:51:34'),
(5,'药品E','抗过敏药物',NULL,'中国',NULL,NULL,300,NULL,'2024-11-30',NULL,NULL,'2024-10-05 09:51:34','2024-11-21 20:40:49'),
(138,'药品T','test',NULL,NULL,NULL,10099,100,'个',NULL,NULL,NULL,'2024-11-22 09:56:28','2024-11-22 09:57:28'),
(139,'麻醉药','test1','test22',NULL,NULL,19999,400,'针',NULL,NULL,NULL,'2024-11-22 10:50:33','2024-11-22 11:03:38'),
(140,'test111','test','A',NULL,NULL,10000,100,'个',NULL,NULL,NULL,'2024-11-24 20:56:49','2024-11-24 20:57:16'),
(141,'test22',NULL,'A',NULL,NULL,0,29,'1',NULL,NULL,NULL,'2024-11-24 21:44:04','2024-11-26 11:07:07');

/*Table structure for table `tt_inventory_medicine_supplier` */

DROP TABLE IF EXISTS `tt_inventory_medicine_supplier`;

CREATE TABLE `tt_inventory_medicine_supplier` (
  `medicine_supplier_id` bigint NOT NULL AUTO_INCREMENT COMMENT '联系表ID',
  `item_id` bigint NOT NULL COMMENT '药品ID',
  `supplier_id` bigint NOT NULL COMMENT '供应商ID',
  `item_type` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0为药品，1为工具',
  `item_num` bigint DEFAULT NULL COMMENT '库存数量',
  PRIMARY KEY (`medicine_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_medicine_supplier` */

/*Table structure for table `tt_inventory_offsetting` */

DROP TABLE IF EXISTS `tt_inventory_offsetting`;

CREATE TABLE `tt_inventory_offsetting` (
  `offsetting_id` bigint NOT NULL AUTO_INCREMENT COMMENT '对冲工单id',
  `item_id` bigint NOT NULL COMMENT '物品ID',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '负责人',
  `reason` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '对冲原因',
  `quantity` bigint NOT NULL COMMENT '对冲数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '剂量单位',
  `expenses_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '开销原因',
  `spending` decimal(10,0) DEFAULT NULL COMMENT '开销',
  `offsetting_time` date DEFAULT NULL COMMENT '对冲时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`offsetting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_offsetting` */

/*Table structure for table `tt_inventory_outbound` */

DROP TABLE IF EXISTS `tt_inventory_outbound`;

CREATE TABLE `tt_inventory_outbound` (
  `outbound_id` bigint NOT NULL AUTO_INCREMENT COMMENT '入库工单id',
  `item_id` bigint NOT NULL COMMENT '物品id',
  `item_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '物品名字',
  `responsible` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null' COMMENT '负责人',
  `reason` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '空' COMMENT '出库原因',
  `quantity` bigint NOT NULL DEFAULT '0' COMMENT '出库数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '个' COMMENT '剂量单位',
  `expenses_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '开销原因',
  `spending` decimal(10,0) DEFAULT NULL COMMENT '总开销',
  `outbound_time` date DEFAULT NULL COMMENT '出库时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`outbound_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_inventory_outbound` */

/*Table structure for table `tt_inventory_tools` */

DROP TABLE IF EXISTS `tt_inventory_tools`;

CREATE TABLE `tt_inventory_tools` (
  `tools_id` bigint NOT NULL AUTO_INCREMENT COMMENT '工具ID',
  `tools_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '工具名称',
  `tools_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '工具描述',
  `supplier` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '供应商',
  `origin` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '供应商产地',
  `purchase_price` decimal(10,0) DEFAULT NULL COMMENT '进价',
  `selling_price` decimal(10,0) DEFAULT NULL COMMENT '售价',
  `quantity` bigint DEFAULT '0' COMMENT '库存数量',
  `unit` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工具的单位',
  `manufacture_date` date DEFAULT NULL COMMENT '生产日期',
  `shelf_life` int DEFAULT NULL COMMENT '保质期',
  `expiration_date` date DEFAULT NULL COMMENT '过期日期',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`tools_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tt_inventory_tools` */

insert  into `tt_inventory_tools`(`tools_id`,`tools_name`,`tools_description`,`supplier`,`origin`,`purchase_price`,`selling_price`,`quantity`,`unit`,`manufacture_date`,`shelf_life`,`expiration_date`,`created_at`,`updated_at`) values 
(6,'工具A','一个工具',NULL,NULL,NULL,1080,0,NULL,NULL,NULL,NULL,'2024-11-20 04:09:24','2024-11-20 04:09:24');

/*Table structure for table `tt_medical_visits` */

DROP TABLE IF EXISTS `tt_medical_visits`;

CREATE TABLE `tt_medical_visits` (
  `visit_id` bigint NOT NULL AUTO_INCREMENT COMMENT '就诊记录唯一ID',
  `patient_id` bigint NOT NULL COMMENT '患者ID，关联患者表',
  `visit_date` timestamp NULL DEFAULT NULL COMMENT '就诊时间',
  `department` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '科目',
  `doctor_id` bigint NOT NULL COMMENT '医生ID，关联医生表',
  `appointment_id` bigint DEFAULT NULL COMMENT '预约ID，关联预约表',
  `appointment_project` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '预约项目',
  `visit_status` enum('COMPLETED','MISSED') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'COMPLETED' COMMENT '就诊状态',
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '就诊备注',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`visit_id`) USING BTREE,
  KEY `fk_patient_visit` (`patient_id`) USING BTREE,
  KEY `fk_doctor_visit` (`doctor_id`) USING BTREE,
  KEY `fk_appointment` (`appointment_id`) USING BTREE,
  CONSTRAINT `fk_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `tt_appointments` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='诊疗记录表';

/*Data for the table `tt_medical_visits` */

insert  into `tt_medical_visits`(`visit_id`,`patient_id`,`visit_date`,`department`,`doctor_id`,`appointment_id`,`appointment_project`,`visit_status`,`notes`,`created_at`,`updated_at`) values 
(1,1,'2024-10-10 09:00:00','心脏科',1,1,'心脏科会诊','COMPLETED','建议三个月后复诊。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(2,2,'2024-10-12 11:30:00','神经科',2,2,'神经科检查','MISSED','患者未出席。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(3,3,'2024-10-15 14:00:00','儿科',3,3,'儿科体检','COMPLETED','已完成常规疫苗接种。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(4,4,'2024-10-20 10:00:00','皮肤科',4,4,'皮肤科筛查','COMPLETED','确诊皮肤过敏，开具药膏。','2024-10-05 09:51:34','2024-10-05 09:51:34'),
(5,5,'2024-10-25 15:30:00','眼科',5,5,'眼科检查','COMPLETED','视力正常，无其他问题。','2024-10-05 09:51:34','2024-10-05 09:51:34');

/*Table structure for table `tt_patients` */

DROP TABLE IF EXISTS `tt_patients`;

CREATE TABLE `tt_patients` (
  `patient_id` bigint NOT NULL AUTO_INCREMENT COMMENT '患者唯一ID',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '患者姓名',
  `medical_record_number` bigint NOT NULL COMMENT '患者病历号',
  `birthday` date DEFAULT NULL COMMENT '患者生日',
  `gender` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '患者性别',
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '患者联系电话',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '患者地址',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  `past_medical_history` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '过去病史',
  `allergens` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci COMMENT '过敏源',
  `diagnosis_statue` enum('初诊','复诊') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '初诊' COMMENT '是否初诊',
  PRIMARY KEY (`patient_id`) USING BTREE,
  UNIQUE KEY `medical_record_number` (`medical_record_number`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='患者信息表';

/*Data for the table `tt_patients` */

insert  into `tt_patients`(`patient_id`,`name`,`medical_record_number`,`birthday`,`gender`,`phone`,`address`,`created_at`,`updated_at`,`remarks`,`past_medical_history`,`allergens`,`diagnosis_statue`) values 
(1,'张伟',7,'1985-05-15','男','123-456-7890','北京朝阳区幸福街道123号','2024-10-05 00:00:00','2024-10-24 00:00:00','123',NULL,NULL,'初诊'),
(2,'李丽',8,'1990-07-22','女','987-654-3210','上海浦东新区光明路456号','2024-10-05 09:51:34','2024-10-24 16:08:29',NULL,NULL,NULL,'初诊'),
(3,'王强',9,'1978-02-11','男','555-123-4567','广州天河区体育东路789号','2024-10-05 09:51:34','2024-10-24 16:08:34',NULL,NULL,NULL,'初诊'),
(4,'赵敏',10,'2000-12-30','女','444-222-1111','深圳南山区科技园101号','2024-10-05 09:51:34','2024-10-24 16:08:37',NULL,NULL,NULL,'初诊'),
(5,'刘洋',11,'2005-09-18','男','666-555-4444','武汉洪山区珞喻路303号','2024-10-05 09:51:34','2024-10-24 16:08:39',NULL,NULL,NULL,'初诊'),
(7,'根号三',12,'2004-04-17','男','13111488526',NULL,'2024-10-05 18:00:54','2024-10-24 16:08:42',NULL,NULL,NULL,'初诊');

/*Table structure for table `tt_supplier` */

DROP TABLE IF EXISTS `tt_supplier`;

CREATE TABLE `tt_supplier` (
  `supplier_id` bigint NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `supplier_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '供货商名称' COMMENT '供应商名称',
  `supplier_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '供应商备注',
  `item_id` bigint DEFAULT NULL COMMENT '供应货物id',
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tt_supplier` */

insert  into `tt_supplier`(`supplier_id`,`supplier_name`,`supplier_remark`,`item_id`,`item_name`,`item_remark`,`supplier_phone`,`supplier_phone2`,`supplier_address`,`supplier_post`,`mail`,`contact`,`creditworthiness`,`creat_time`,`update_time`) values 
(1,'A','123',135,'test','234','1234','2345','asd123','qwe-ased1231234','123142',NULL,'未知','2024-11-20 00:41:04','2024-11-20 00:41:04'),
(2,'B','123',123,'234','213','123','123','123','123','123',NULL,'未知','2024-11-20 01:29:30','2024-11-20 01:29:30'),
(8,'123',NULL,123,'123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'未知','2024-11-20 01:59:17','2024-11-20 01:59:17'),
(9,'22','123',6,'工具A','123','123','123','123','123','123',NULL,'未知','2024-11-20 04:11:20','2024-11-20 04:11:20'),
(11,'123','123',12,'123','123','123','123','123','123','123',NULL,'未知','2024-11-20 21:23:38','2024-11-20 21:23:38'),
(12,'555',NULL,555,'555',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'未知','2024-11-22 11:12:21','2024-11-22 11:12:21'),
(13,'666','666',666,'666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'未知','2024-11-22 11:13:08','2024-11-22 11:13:08'),
(14,'888',NULL,888,'888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'未知','2024-11-22 11:15:12','2024-11-22 11:15:12'),
(15,'1',NULL,1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'未知','2024-11-22 11:17:10','2024-11-22 11:17:10'),
(16,'1',NULL,1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'未知','2024-11-22 11:17:38','2024-11-22 11:17:38'),
(17,'1',NULL,1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'特别好','2024-11-22 11:39:18','2024-11-22 11:39:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
