# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     wshsoft
# Server version:               5.7.16
# Server OS:                    Win64
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2020-12-19 17:16:23
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'wshsoft'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "wshsoft" /*!40100 DEFAULT CHARACTER SET utf8 */;

USE "wshsoft";


#
# Table structure for table 'flyway_schema_history'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "flyway_schema_history" (
  "installed_rank" int(11) NOT NULL,
  "version" varchar(50) DEFAULT NULL,
  "description" varchar(200) NOT NULL,
  "type" varchar(20) NOT NULL,
  "script" varchar(1000) NOT NULL,
  "checksum" int(11) DEFAULT NULL,
  "installed_by" varchar(100) NOT NULL,
  "installed_on" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "execution_time" int(11) NOT NULL,
  "success" tinyint(1) NOT NULL,
  PRIMARY KEY ("installed_rank"),
  KEY "flyway_schema_history_s_idx" ("success")
);



#
# Dumping data for table 'flyway_schema_history'
#

LOCK TABLES "flyway_schema_history" WRITE;
/*!40000 ALTER TABLE "flyway_schema_history" DISABLE KEYS;*/
REPLACE INTO "flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "installed_on", "execution_time", "success") VALUES
	(1,'1','<< Flyway Baseline >>','BASELINE','<< Flyway Baseline >>',NULL,'root','2020-05-29 19:31:40',0,1);
REPLACE INTO "flyway_schema_history" ("installed_rank", "version", "description", "type", "script", "checksum", "installed_by", "installed_on", "execution_time", "success") VALUES
	(2,'1.0.1','create init wshsoft db','SQL','V1.0.1__create_init_wshsoft_db.sql',297361368,'root','2020-12-04 16:10:31',10753,1);
/*!40000 ALTER TABLE "flyway_schema_history" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'gen_table'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "gen_table" (
  "table_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  "table_name" varchar(200) DEFAULT '' COMMENT '表名称',
  "table_comment" varchar(500) DEFAULT '' COMMENT '表描述',
  "class_name" varchar(100) DEFAULT '' COMMENT '实体类名称',
  "tpl_category" varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  "package_name" varchar(100) DEFAULT NULL COMMENT '生成包路径',
  "module_name" varchar(30) DEFAULT NULL COMMENT '生成模块名',
  "business_name" varchar(30) DEFAULT NULL COMMENT '生成业务名',
  "function_name" varchar(50) DEFAULT NULL COMMENT '生成功能名',
  "function_author" varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  "options" varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("table_id")
) COMMENT='代码生成业务表';



#
# Dumping data for table 'gen_table'
#

# No data found.



#
# Table structure for table 'gen_table_column'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "gen_table_column" (
  "column_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  "table_id" varchar(64) DEFAULT NULL COMMENT '归属表编号',
  "column_name" varchar(200) DEFAULT NULL COMMENT '列名称',
  "column_comment" varchar(500) DEFAULT NULL COMMENT '列描述',
  "column_type" varchar(100) DEFAULT NULL COMMENT '列类型',
  "java_type" varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  "java_field" varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  "is_pk" char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  "is_unique" char(1) DEFAULT NULL COMMENT '是否唯一 (1是)',
  "is_increment" char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  "is_required" char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  "is_insert" char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  "is_edit" char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  "is_list" char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  "is_query" char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  "query_type" varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  "html_type" varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  "dict_type" varchar(200) DEFAULT '' COMMENT '字典类型',
  "sort" int(11) DEFAULT NULL COMMENT '排序',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY ("column_id")
) COMMENT='代码生成业务表字段';



#
# Dumping data for table 'gen_table_column'
#

# No data found.



#
# Table structure for table 'qrtz_blob_triggers'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_blob_triggers" (
  "sched_name" varchar(120) NOT NULL,
  "trigger_name" varchar(200) NOT NULL,
  "trigger_group" varchar(200) NOT NULL,
  "blob_data" blob,
  PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
  CONSTRAINT "qrtz_blob_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group")
);



#
# Dumping data for table 'qrtz_blob_triggers'
#

# No data found.



#
# Table structure for table 'qrtz_calendars'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_calendars" (
  "sched_name" varchar(120) NOT NULL,
  "calendar_name" varchar(200) NOT NULL,
  "calendar" blob NOT NULL,
  PRIMARY KEY ("sched_name","calendar_name")
);



#
# Dumping data for table 'qrtz_calendars'
#

# No data found.



#
# Table structure for table 'qrtz_cron_triggers'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_cron_triggers" (
  "sched_name" varchar(120) NOT NULL,
  "trigger_name" varchar(200) NOT NULL,
  "trigger_group" varchar(200) NOT NULL,
  "cron_expression" varchar(200) NOT NULL,
  "time_zone_id" varchar(80) DEFAULT NULL,
  PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
  CONSTRAINT "qrtz_cron_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group")
);



#
# Dumping data for table 'qrtz_cron_triggers'
#

LOCK TABLES "qrtz_cron_triggers" WRITE;
/*!40000 ALTER TABLE "qrtz_cron_triggers" DISABLE KEYS;*/
REPLACE INTO "qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES
	('CommonScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai');
REPLACE INTO "qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES
	('CommonScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai');
REPLACE INTO "qrtz_cron_triggers" ("sched_name", "trigger_name", "trigger_group", "cron_expression", "time_zone_id") VALUES
	('CommonScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE "qrtz_cron_triggers" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'qrtz_fired_triggers'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_fired_triggers" (
  "sched_name" varchar(120) NOT NULL,
  "entry_id" varchar(95) NOT NULL,
  "trigger_name" varchar(200) NOT NULL,
  "trigger_group" varchar(200) NOT NULL,
  "instance_name" varchar(200) NOT NULL,
  "fired_time" bigint(13) NOT NULL,
  "sched_time" bigint(13) NOT NULL,
  "priority" int(11) NOT NULL,
  "state" varchar(16) NOT NULL,
  "job_name" varchar(200) DEFAULT NULL,
  "job_group" varchar(200) DEFAULT NULL,
  "is_nonconcurrent" varchar(1) DEFAULT NULL,
  "requests_recovery" varchar(1) DEFAULT NULL,
  PRIMARY KEY ("sched_name","entry_id")
);



#
# Dumping data for table 'qrtz_fired_triggers'
#

# No data found.



#
# Table structure for table 'qrtz_job_details'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_job_details" (
  "sched_name" varchar(120) NOT NULL,
  "job_name" varchar(200) NOT NULL,
  "job_group" varchar(200) NOT NULL,
  "description" varchar(250) DEFAULT NULL,
  "job_class_name" varchar(250) NOT NULL,
  "is_durable" varchar(1) NOT NULL,
  "is_nonconcurrent" varchar(1) NOT NULL,
  "is_update_data" varchar(1) NOT NULL,
  "requests_recovery" varchar(1) NOT NULL,
  "job_data" blob,
  PRIMARY KEY ("sched_name","job_name","job_group")
);



#
# Dumping data for table 'qrtz_job_details'
#

LOCK TABLES "qrtz_job_details" WRITE;
/*!40000 ALTER TABLE "qrtz_job_details" DISABLE KEYS;*/
REPLACE INTO "qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.wshsoft.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720020636F6D2E777368736F66742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000672656D61726B71007E00094C000673746174757371007E000978720029636F6D2E777368736F66742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C7870740004726F6F747372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001762CCD6150787371007E00053F400000000000007708000000100000000078707070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740000740001317800);
REPLACE INTO "qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.wshsoft.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720020636F6D2E777368736F66742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000672656D61726B71007E00094C000673746174757371007E000978720029636F6D2E777368736F66742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C7870740004726F6F747372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001762CCD6150787371007E00053F400000000000007708000000100000000078707070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740000740001317800);
REPLACE INTO "qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.wshsoft.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720020636F6D2E777368736F66742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000672656D61726B71007E00094C000673746174757371007E000978720029636F6D2E777368736F66742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C7870740004726F6F747372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001762CCD6150787371007E00053F400000000000007708000000100000000078707070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740000740001317800);
/*!40000 ALTER TABLE "qrtz_job_details" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'qrtz_locks'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_locks" (
  "sched_name" varchar(120) NOT NULL,
  "lock_name" varchar(40) NOT NULL,
  PRIMARY KEY ("sched_name","lock_name")
);



#
# Dumping data for table 'qrtz_locks'
#

LOCK TABLES "qrtz_locks" WRITE;
/*!40000 ALTER TABLE "qrtz_locks" DISABLE KEYS;*/
REPLACE INTO "qrtz_locks" ("sched_name", "lock_name") VALUES
	('CommonScheduler','STATE_ACCESS');
REPLACE INTO "qrtz_locks" ("sched_name", "lock_name") VALUES
	('CommonScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE "qrtz_locks" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'qrtz_paused_trigger_grps'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) NOT NULL,
  "trigger_group" varchar(200) NOT NULL,
  PRIMARY KEY ("sched_name","trigger_group")
);



#
# Dumping data for table 'qrtz_paused_trigger_grps'
#

# No data found.



#
# Table structure for table 'qrtz_scheduler_state'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_scheduler_state" (
  "sched_name" varchar(120) NOT NULL,
  "instance_name" varchar(200) NOT NULL,
  "last_checkin_time" bigint(13) NOT NULL,
  "checkin_interval" bigint(13) NOT NULL,
  PRIMARY KEY ("sched_name","instance_name")
);



#
# Dumping data for table 'qrtz_scheduler_state'
#

LOCK TABLES "qrtz_scheduler_state" WRITE;
/*!40000 ALTER TABLE "qrtz_scheduler_state" DISABLE KEYS;*/
REPLACE INTO "qrtz_scheduler_state" ("sched_name", "instance_name", "last_checkin_time", "checkin_interval") VALUES
	('CommonScheduler','WIN7-2020NXAJQJ1607073689231','1607076379754','15000');
/*!40000 ALTER TABLE "qrtz_scheduler_state" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'qrtz_simple_triggers'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_simple_triggers" (
  "sched_name" varchar(120) NOT NULL,
  "trigger_name" varchar(200) NOT NULL,
  "trigger_group" varchar(200) NOT NULL,
  "repeat_count" bigint(7) NOT NULL,
  "repeat_interval" bigint(12) NOT NULL,
  "times_triggered" bigint(10) NOT NULL,
  PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
  CONSTRAINT "qrtz_simple_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group")
);



#
# Dumping data for table 'qrtz_simple_triggers'
#

# No data found.



#
# Table structure for table 'qrtz_simprop_triggers'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_simprop_triggers" (
  "sched_name" varchar(120) NOT NULL,
  "trigger_name" varchar(200) NOT NULL,
  "trigger_group" varchar(200) NOT NULL,
  "str_prop_1" varchar(512) DEFAULT NULL,
  "str_prop_2" varchar(512) DEFAULT NULL,
  "str_prop_3" varchar(512) DEFAULT NULL,
  "int_prop_1" int(11) DEFAULT NULL,
  "int_prop_2" int(11) DEFAULT NULL,
  "long_prop_1" bigint(20) DEFAULT NULL,
  "long_prop_2" bigint(20) DEFAULT NULL,
  "dec_prop_1" decimal(13,4) DEFAULT NULL,
  "dec_prop_2" decimal(13,4) DEFAULT NULL,
  "bool_prop_1" varchar(1) DEFAULT NULL,
  "bool_prop_2" varchar(1) DEFAULT NULL,
  PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
  CONSTRAINT "qrtz_simprop_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group")
);



#
# Dumping data for table 'qrtz_simprop_triggers'
#

# No data found.



#
# Table structure for table 'qrtz_triggers'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "qrtz_triggers" (
  "sched_name" varchar(120) NOT NULL,
  "trigger_name" varchar(200) NOT NULL,
  "trigger_group" varchar(200) NOT NULL,
  "job_name" varchar(200) NOT NULL,
  "job_group" varchar(200) NOT NULL,
  "description" varchar(250) DEFAULT NULL,
  "next_fire_time" bigint(13) DEFAULT NULL,
  "prev_fire_time" bigint(13) DEFAULT NULL,
  "priority" int(11) DEFAULT NULL,
  "trigger_state" varchar(16) NOT NULL,
  "trigger_type" varchar(8) NOT NULL,
  "start_time" bigint(13) NOT NULL,
  "end_time" bigint(13) DEFAULT NULL,
  "calendar_name" varchar(200) DEFAULT NULL,
  "misfire_instr" smallint(2) DEFAULT NULL,
  "job_data" blob,
  PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
  KEY "sched_name" ("sched_name","job_name","job_group"),
  CONSTRAINT "qrtz_triggers_ibfk_1" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "qrtz_job_details" ("sched_name", "job_name", "job_group")
);



#
# Dumping data for table 'qrtz_triggers'
#

LOCK TABLES "qrtz_triggers" WRITE;
/*!40000 ALTER TABLE "qrtz_triggers" DISABLE KEYS;*/
REPLACE INTO "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,'1607073690000','-1',5,'PAUSED','CRON','1607073689000','0',NULL,2,'');
REPLACE INTO "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,'1607073690000','-1',5,'PAUSED','CRON','1607073689000','0',NULL,2,'');
REPLACE INTO "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,'1607073700000','-1',5,'PAUSED','CRON','1607073690000','0',NULL,2,'');
/*!40000 ALTER TABLE "qrtz_triggers" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_company'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_company" (
  "company_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公司id',
  "parent_id" bigint(20) DEFAULT '0' COMMENT '父公司id',
  "ancestors" varchar(50) DEFAULT '' COMMENT '祖级列表',
  "company_name" varchar(30) DEFAULT '' COMMENT '公司名称',
  "order_num" int(4) DEFAULT '0' COMMENT '显示顺序',
  "leader" varchar(20) DEFAULT NULL COMMENT '负责人',
  "phone" varchar(11) DEFAULT NULL COMMENT '联系电话',
  "email" varchar(50) DEFAULT NULL COMMENT '邮箱',
  "status" char(1) DEFAULT '0' COMMENT '公司状态（0正常 1停用）',
  "del_flag" char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(50) DEFAULT NULL,
  PRIMARY KEY ("company_id")
) AUTO_INCREMENT=110 COMMENT='公司表';



#
# Dumping data for table 'sys_company'
#

LOCK TABLES "sys_company" WRITE;
/*!40000 ALTER TABLE "sys_company" DISABLE KEYS;*/
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('100','0','0','睿创科技',0,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('101','100','0,100','深圳总公司',1,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('102','100','0,100','长沙分公司',2,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('103','101','0,100,101','研发部门',1,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('104','101','0,100,101','市场部门',2,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('105','101','0,100,101','测试部门',3,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('106','101','0,100,101','财务部门',4,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('107','101','0,100,101','运维部门',5,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('108','102','0,100,102','市场部门',1,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('109','102','0,100,102','财务部门',2,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
/*!40000 ALTER TABLE "sys_company" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_config'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_config" (
  "config_id" int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  "config_name" varchar(100) DEFAULT '' COMMENT '参数名称',
  "config_key" varchar(100) DEFAULT '' COMMENT '参数键名',
  "config_value" varchar(500) DEFAULT '' COMMENT '参数键值',
  "config_type" char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("config_id")
) AUTO_INCREMENT=4 COMMENT='参数配置表';



#
# Dumping data for table 'sys_config'
#

LOCK TABLES "sys_config" WRITE;
/*!40000 ALTER TABLE "sys_config" DISABLE KEYS;*/
REPLACE INTO "sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','root','2020-12-04 16:10:25','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
REPLACE INTO "sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','root','2020-12-04 16:10:25','',NULL,'初始化密码 123456');
REPLACE INTO "sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','root','2020-12-04 16:10:25','',NULL,'深色主题theme-dark，浅色主题theme-light');
/*!40000 ALTER TABLE "sys_config" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_dept'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_dept" (
  "dept_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  "parent_id" bigint(20) DEFAULT '0' COMMENT '父部门id',
  "ancestors" varchar(50) DEFAULT '' COMMENT '祖级列表',
  "dept_name" varchar(30) DEFAULT '' COMMENT '部门名称',
  "order_num" int(4) DEFAULT '0' COMMENT '显示顺序',
  "leader" varchar(20) DEFAULT NULL COMMENT '负责人',
  "phone" varchar(11) DEFAULT NULL COMMENT '联系电话',
  "email" varchar(50) DEFAULT NULL COMMENT '邮箱',
  "status" char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  "del_flag" char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(50) DEFAULT NULL,
  PRIMARY KEY ("dept_id")
) AUTO_INCREMENT=110 COMMENT='部门表';



#
# Dumping data for table 'sys_dept'
#

LOCK TABLES "sys_dept" WRITE;
/*!40000 ALTER TABLE "sys_dept" DISABLE KEYS;*/
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('100','0','0','全集团',0,'admin','15888888888','admin@qq.com','0','0','root','2020-12-04 16:10:25','root','2020-12-04 16:10:25',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('101','100','0,100','深圳总公司',1,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('102','100','0,100','长沙分公司',2,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('103','101','0,100,101','研发部门',1,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('104','101','0,100,101','市场部门',2,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('105','101','0,100,101','测试部门',3,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('106','101','0,100,101','财务部门',4,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('107','101','0,100,101','运维部门',5,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('108','102','0,100,102','市场部门',1,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('109','102','0,100,102','财务部门',2,'睿创','15888888888','ry@qq.com','0','0','root','2020-12-04 16:10:25','',NULL,NULL);
/*!40000 ALTER TABLE "sys_dept" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_dict_data'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_dict_data" (
  "dict_code" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  "dict_sort" int(4) DEFAULT '0' COMMENT '字典排序',
  "dict_label" varchar(100) DEFAULT '' COMMENT '字典标签',
  "dict_value" varchar(100) DEFAULT '' COMMENT '字典键值',
  "dict_type" varchar(100) DEFAULT '' COMMENT '字典类型',
  "css_class" varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  "list_class" varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  "is_default" char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  "status" char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("dict_code")
) AUTO_INCREMENT=29 COMMENT='字典数据表';



#
# Dumping data for table 'sys_dict_data'
#

LOCK TABLES "sys_dict_data" WRITE;
/*!40000 ALTER TABLE "sys_dict_data" DISABLE KEYS;*/
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1',1,'男','0','sys_user_gender','','','Y','0','root','2020-12-04 16:10:26','',NULL,'性别男');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2',2,'女','1','sys_user_gender','','','N','0','root','2020-12-04 16:10:26','',NULL,'性别女');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3',3,'未知','2','sys_user_gender','','','N','0','root','2020-12-04 16:10:26','',NULL,'性别未知');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('4',1,'显示','0','sys_show_hide','','primary','Y','0','root','2020-12-04 16:10:26','',NULL,'显示菜单');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('5',2,'隐藏','1','sys_show_hide','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'隐藏菜单');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('6',1,'正常','0','sys_normal_disable','','primary','Y','0','root','2020-12-04 16:10:26','',NULL,'正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('7',2,'停用','1','sys_normal_disable','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'停用状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('8',1,'正常','0','sys_job_status','','primary','Y','0','root','2020-12-04 16:10:26','',NULL,'正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('9',2,'暂停','1','sys_job_status','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'停用状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('10',1,'默认','DEFAULT','sys_job_group','','','Y','0','root','2020-12-04 16:10:26','',NULL,'默认分组');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('11',2,'系统','SYSTEM','sys_job_group','','','N','0','root','2020-12-04 16:10:26','',NULL,'系统分组');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('12',1,'是','Y','sys_yes_no','','primary','Y','0','root','2020-12-04 16:10:26','',NULL,'系统默认是');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('13',2,'否','N','sys_yes_no','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'系统默认否');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('14',1,'通知','1','sys_notice_type','','warning','Y','0','root','2020-12-04 16:10:26','',NULL,'通知');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('15',2,'公告','2','sys_notice_type','','success','N','0','root','2020-12-04 16:10:26','',NULL,'公告');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('16',1,'正常','0','sys_notice_status','','primary','Y','0','root','2020-12-04 16:10:26','',NULL,'正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('17',2,'关闭','1','sys_notice_status','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'关闭状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('18',1,'新增','1','sys_oper_type','','info','N','0','root','2020-12-04 16:10:26','',NULL,'新增操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('19',2,'修改','2','sys_oper_type','','info','N','0','root','2020-12-04 16:10:26','',NULL,'修改操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('20',3,'删除','3','sys_oper_type','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'删除操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('21',4,'授权','4','sys_oper_type','','primary','N','0','root','2020-12-04 16:10:26','',NULL,'授权操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('22',5,'导出','5','sys_oper_type','','warning','N','0','root','2020-12-04 16:10:26','',NULL,'导出操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('23',6,'导入','6','sys_oper_type','','warning','N','0','root','2020-12-04 16:10:26','',NULL,'导入操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('24',7,'强退','7','sys_oper_type','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'强退操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('25',8,'生成代码','8','sys_oper_type','','warning','N','0','root','2020-12-04 16:10:26','',NULL,'生成操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('26',9,'清空数据','9','sys_oper_type','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'清空操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('27',1,'成功','0','sys_common_status','','primary','N','0','root','2020-12-04 16:10:26','',NULL,'正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('28',2,'失败','1','sys_common_status','','danger','N','0','root','2020-12-04 16:10:26','',NULL,'停用状态');
/*!40000 ALTER TABLE "sys_dict_data" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_dict_type'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_dict_type" (
  "dict_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  "dict_name" varchar(100) DEFAULT '' COMMENT '字典名称',
  "dict_type" varchar(100) DEFAULT '' COMMENT '字典类型',
  "status" char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("dict_id"),
  UNIQUE KEY "dict_type" ("dict_type")
) AUTO_INCREMENT=11 COMMENT='字典类型表';



#
# Dumping data for table 'sys_dict_type'
#

LOCK TABLES "sys_dict_type" WRITE;
/*!40000 ALTER TABLE "sys_dict_type" DISABLE KEYS;*/
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','用户性别','sys_user_gender','0','root','2020-12-04 16:10:26','',NULL,'用户性别列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','菜单状态','sys_show_hide','0','root','2020-12-04 16:10:26','',NULL,'菜单状态列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','系统开关','sys_normal_disable','0','root','2020-12-04 16:10:26','',NULL,'系统开关列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('4','任务状态','sys_job_status','0','root','2020-12-04 16:10:26','',NULL,'任务状态列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('5','任务分组','sys_job_group','0','root','2020-12-04 16:10:26','',NULL,'任务分组列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('6','系统是否','sys_yes_no','0','root','2020-12-04 16:10:26','',NULL,'系统是否列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('7','通知类型','sys_notice_type','0','root','2020-12-04 16:10:26','',NULL,'通知类型列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('8','通知状态','sys_notice_status','0','root','2020-12-04 16:10:26','',NULL,'通知状态列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('9','操作类型','sys_oper_type','0','root','2020-12-04 16:10:26','',NULL,'操作类型列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('10','系统状态','sys_common_status','0','root','2020-12-04 16:10:26','',NULL,'登录状态列表');
/*!40000 ALTER TABLE "sys_dict_type" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_job'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_job" (
  "job_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  "job_name" varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  "job_group" varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  "invoke_target" varchar(500) NOT NULL COMMENT '调用目标字符串',
  "cron_expression" varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  "misfire_policy" varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  "concurrent" char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  "status" char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY ("job_id","job_name","job_group")
) AUTO_INCREMENT=4 COMMENT='定时任务调度表';



#
# Dumping data for table 'sys_job'
#

LOCK TABLES "sys_job" WRITE;
/*!40000 ALTER TABLE "sys_job" DISABLE KEYS;*/
REPLACE INTO "sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','root','2020-12-04 16:10:26','',NULL,'');
REPLACE INTO "sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','系统默认（有参）','DEFAULT','ryTask.ryParams(''ry'')','0/15 * * * * ?','3','1','1','root','2020-12-04 16:10:26','',NULL,'');
REPLACE INTO "sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','root','2020-12-04 16:10:26','',NULL,'');
/*!40000 ALTER TABLE "sys_job" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_job_log'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_job_log" (
  "job_log_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  "job_name" varchar(64) NOT NULL COMMENT '任务名称',
  "job_group" varchar(64) NOT NULL COMMENT '任务组名',
  "invoke_target" varchar(500) NOT NULL COMMENT '调用目标字符串',
  "job_message" varchar(500) DEFAULT NULL COMMENT '日志信息',
  "status" char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  "exception_info" varchar(2000) DEFAULT '' COMMENT '异常信息',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY ("job_log_id")
) COMMENT='定时任务调度日志表';



#
# Dumping data for table 'sys_job_log'
#

# No data found.



#
# Table structure for table 'sys_logininfor'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_logininfor" (
  "info_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  "login_name" varchar(50) DEFAULT '' COMMENT '登录账号',
  "ipaddr" varchar(128) DEFAULT '' COMMENT '登录IP地址',
  "login_location" varchar(255) DEFAULT '' COMMENT '登录地点',
  "browser" varchar(50) DEFAULT '' COMMENT '浏览器类型',
  "os" varchar(50) DEFAULT '' COMMENT '操作系统',
  "status" char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  "msg" varchar(255) DEFAULT '' COMMENT '提示消息',
  "login_time" datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY ("info_id")
) AUTO_INCREMENT=5 COMMENT='系统访问记录';



#
# Dumping data for table 'sys_logininfor'
#

LOCK TABLES "sys_logininfor" WRITE;
/*!40000 ALTER TABLE "sys_logininfor" DISABLE KEYS;*/
REPLACE INTO "sys_logininfor" ("info_id", "login_name", "ipaddr", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('1','admin','127.0.0.1','内网IP','Chrome 8','Windows 7','1','验证码错误','2020-07-07 18:14:31');
REPLACE INTO "sys_logininfor" ("info_id", "login_name", "ipaddr", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('2','admin','127.0.0.1','内网IP','Chrome 8','Windows 7','1','用户不存在/密码错误','2020-07-07 18:15:25');
REPLACE INTO "sys_logininfor" ("info_id", "login_name", "ipaddr", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('3','root','127.0.0.1','内网IP','Chrome 8','Windows 7','1','密码输入错误1次','2020-07-07 18:15:47');
REPLACE INTO "sys_logininfor" ("info_id", "login_name", "ipaddr", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('4','root','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-07-07 18:16:29');
/*!40000 ALTER TABLE "sys_logininfor" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_login_log'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_login_log" (
  "log_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  "login_name" varchar(50) DEFAULT '' COMMENT '登录账号',
  "ip_address" varchar(50) DEFAULT '' COMMENT '登录IP地址',
  "login_location" varchar(255) DEFAULT '' COMMENT '登录地点',
  "browser" varchar(50) DEFAULT '' COMMENT '浏览器类型',
  "os" varchar(50) DEFAULT '' COMMENT '操作系统',
  "status" char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  "msg" varchar(255) DEFAULT '' COMMENT '提示消息',
  "login_time" datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY ("log_id")
) AUTO_INCREMENT=3 COMMENT='系统访问记录';



#
# Dumping data for table 'sys_login_log'
#

LOCK TABLES "sys_login_log" WRITE;
/*!40000 ALTER TABLE "sys_login_log" DISABLE KEYS;*/
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('1','root','127.0.0.1','内网IP','Chrome 8','Windows 7','1','验证码错误','2020-12-04 17:22:03');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('2','root','127.0.0.1','内网IP','Chrome 8','Windows 7','0','登录成功','2020-12-04 17:22:12');
/*!40000 ALTER TABLE "sys_login_log" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_menu'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_menu" (
  "menu_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  "menu_name" varchar(50) NOT NULL COMMENT '菜单名称',
  "parent_id" bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  "parent_path" tinyint(3) unsigned DEFAULT NULL COMMENT '父权限ID路径',
  "order_num" int(4) DEFAULT '0' COMMENT '显示顺序',
  "url" varchar(200) DEFAULT '#' COMMENT '请求地址',
  "target" varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  "menu_type" char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  "visible" char(1) NOT NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  "is_refresh" char(1) NOT NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  "permission_code" varchar(100) DEFAULT NULL COMMENT '权限标识',
  "icon" varchar(100) DEFAULT '#' COMMENT '菜单图标',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY ("menu_id")
) AUTO_INCREMENT=84 COMMENT='菜单权限表';



#
# Dumping data for table 'sys_menu'
#

LOCK TABLES "sys_menu" WRITE;
/*!40000 ALTER TABLE "sys_menu" DISABLE KEYS;*/
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','系统管理','0',NULL,1,'#','','M','0','1','','fa fa-gear','root','2020-12-04 16:10:27','',NULL,'系统管理目录');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','系统监控','0',NULL,2,'#','','M','0','1','','fa fa-video-camera','root','2020-12-04 16:10:27','',NULL,'系统监控目录');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','系统工具','0',NULL,3,'#','','M','0','1','','fa fa-bars','root','2020-12-04 16:10:27','',NULL,'系统工具目录');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('4','用户管理','1',NULL,1,'/system/user','','C','0','1','system:user:view','#','root','2020-12-04 16:10:27','',NULL,'用户管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('5','角色管理','1',NULL,2,'/system/role','','C','0','1','system:role:view','#','root','2020-12-04 16:10:27','',NULL,'角色管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('6','菜单管理','1',NULL,3,'/system/menu','','C','0','1','system:menu:view','#','root','2020-12-04 16:10:27','',NULL,'菜单管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('7','部门管理','1',NULL,4,'/system/dept','','C','0','1','system:dept:view','#','root','2020-12-04 16:10:27','',NULL,'部门管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('8','岗位管理','1',NULL,5,'/system/post','','C','0','1','system:post:view','#','root','2020-12-04 16:10:27','',NULL,'岗位管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('9','字典管理','1',NULL,6,'/system/dict','','C','0','1','system:dict:view','#','root','2020-12-04 16:10:27','',NULL,'字典管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('10','参数设置','1',NULL,7,'/system/config','','C','0','1','system:config:view','#','root','2020-12-04 16:10:27','',NULL,'参数设置菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('11','通知公告','1',NULL,8,'/system/notice','','C','0','1','system:notice:view','#','root','2020-12-04 16:10:27','',NULL,'通知公告菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('12','日志管理','1',NULL,9,'#','','M','0','1','','#','root','2020-12-04 16:10:27','',NULL,'日志管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('13','在线用户','2',NULL,1,'/monitor/online','','C','0','1','monitor:online:view','#','root','2020-12-04 16:10:27','',NULL,'在线用户菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('14','定时任务','2',NULL,2,'/monitor/job','','C','0','1','monitor:job:view','#','root','2020-12-04 16:10:27','',NULL,'定时任务菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('15','数据监控','2',NULL,3,'/monitor/data','','C','0','1','monitor:data:view','#','root','2020-12-04 16:10:27','',NULL,'数据监控菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('16','服务监控','2',NULL,3,'/monitor/server','','C','0','1','monitor:server:view','#','root','2020-12-04 16:10:27','',NULL,'服务监控菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('17','表单构建','3',NULL,1,'/tool/build','','C','0','1','tool:build:view','#','root','2020-12-04 16:10:27','',NULL,'表单构建菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('18','代码生成','3',NULL,2,'/tool/gen','','C','0','1','tool:gen:view','#','root','2020-12-04 16:10:27','',NULL,'代码生成菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('19','系统接口','3',NULL,3,'/tool/swagger','','C','0','1','tool:swagger:view','fa fa-gg','root','2020-12-04 16:10:27','',NULL,'系统接口菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('20','操作日志','12',NULL,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','#','root','2020-12-04 16:10:27','',NULL,'操作日志菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('21','登录日志','12',NULL,2,'/monitor/loginLog','','C','0','1','monitor:loginLog:view','#','root','2020-12-04 16:10:27','',NULL,'登录日志菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('22','用户查询','4',NULL,1,'#','','F','0','1','system:user:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('23','用户新增','4',NULL,2,'#','','F','0','1','system:user:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('24','用户修改','4',NULL,3,'#','','F','0','1','system:user:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('25','用户删除','4',NULL,4,'#','','F','0','1','system:user:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('26','用户导出','4',NULL,5,'#','','F','0','1','system:user:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('27','用户导入','4',NULL,6,'#','','F','0','1','system:user:import','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('28','重置密码','4',NULL,7,'#','','F','0','1','system:user:resetPwd','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('29','角色查询','5',NULL,1,'#','','F','0','1','system:role:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('30','角色新增','5',NULL,2,'#','','F','0','1','system:role:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('31','角色修改','5',NULL,3,'#','','F','0','1','system:role:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('32','角色删除','5',NULL,4,'#','','F','0','1','system:role:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('33','角色导出','5',NULL,5,'#','','F','0','1','system:role:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('34','菜单查询','6',NULL,1,'#','','F','0','1','system:menu:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('35','菜单新增','6',NULL,2,'#','','F','0','1','system:menu:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('36','菜单修改','6',NULL,3,'#','','F','0','1','system:menu:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('37','菜单删除','6',NULL,4,'#','','F','0','1','system:menu:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('38','部门查询','7',NULL,1,'#','','F','0','1','system:dept:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('39','部门新增','7',NULL,2,'#','','F','0','1','system:dept:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('40','部门修改','7',NULL,3,'#','','F','0','1','system:dept:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('41','部门删除','7',NULL,4,'#','','F','0','1','system:dept:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('42','岗位查询','8',NULL,1,'#','','F','0','1','system:post:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('43','岗位新增','8',NULL,2,'#','','F','0','1','system:post:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('44','岗位修改','8',NULL,3,'#','','F','0','1','system:post:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('45','岗位删除','8',NULL,4,'#','','F','0','1','system:post:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('46','岗位导出','8',NULL,5,'#','','F','0','1','system:post:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('47','字典查询','9',NULL,1,'#','','F','0','1','system:dict:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('48','字典新增','9',NULL,2,'#','','F','0','1','system:dict:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('49','字典修改','9',NULL,3,'#','','F','0','1','system:dict:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('50','字典删除','9',NULL,4,'#','','F','0','1','system:dict:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('51','字典导出','9',NULL,5,'#','','F','0','1','system:dict:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('52','参数查询','10',NULL,1,'#','','F','0','1','system:config:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('53','参数新增','10',NULL,2,'#','','F','0','1','system:config:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('54','参数修改','10',NULL,3,'#','','F','0','1','system:config:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('55','参数删除','10',NULL,4,'#','','F','0','1','system:config:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('56','参数导出','10',NULL,5,'#','','F','0','1','system:config:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('57','公告查询','11',NULL,1,'#','','F','0','1','system:notice:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('58','公告新增','11',NULL,2,'#','','F','0','1','system:notice:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('59','公告修改','11',NULL,3,'#','','F','0','1','system:notice:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('60','公告删除','11',NULL,4,'#','','F','0','1','system:notice:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('61','操作查询','20',NULL,1,'#','','F','0','1','monitor:operlog:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('62','操作删除','20',NULL,2,'#','','F','0','1','monitor:operlog:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('63','详细信息','20',NULL,3,'#','','F','0','1','monitor:operlog:detail','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('64','日志导出','20',NULL,4,'#','','F','0','1','monitor:operlog:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('65','登录查询','21',NULL,1,'#','','F','0','1','monitor:loginLog:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('66','登录删除','21',NULL,2,'#','','F','0','1','monitor:loginLog:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('67','日志导出','21',NULL,3,'#','','F','0','1','monitor:loginLog:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('68','账户解锁','21',NULL,4,'#','','F','0','1','monitor:loginLog:unlock','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('69','在线查询','13',NULL,1,'#','','F','0','1','monitor:online:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('70','批量强退','13',NULL,2,'#','','F','0','1','monitor:online:batchForceLogout','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('71','单条强退','13',NULL,3,'#','','F','0','1','monitor:online:forceLogout','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('72','任务查询','14',NULL,1,'#','','F','0','1','monitor:job:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('73','任务新增','14',NULL,2,'#','','F','0','1','monitor:job:add','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('74','任务修改','14',NULL,3,'#','','F','0','1','monitor:job:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('75','任务删除','14',NULL,4,'#','','F','0','1','monitor:job:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('76','状态修改','14',NULL,5,'#','','F','0','1','monitor:job:changeStatus','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('77','任务详细','14',NULL,6,'#','','F','0','1','monitor:job:detail','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('78','任务导出','14',NULL,7,'#','','F','0','1','monitor:job:export','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('79','生成查询','18',NULL,1,'#','','F','0','1','tool:gen:list','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('80','生成修改','18',NULL,2,'#','','F','0','1','tool:gen:edit','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('81','生成删除','18',NULL,3,'#','','F','0','1','tool:gen:remove','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('82','预览代码','18',NULL,4,'#','','F','0','1','tool:gen:preview','#','root','2020-12-04 16:10:27','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "is_refresh", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('83','生成代码','18',NULL,5,'#','','F','0','1','tool:gen:code','#','root','2020-12-04 16:10:27','',NULL,'');
/*!40000 ALTER TABLE "sys_menu" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_notice'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_notice" (
  "notice_id" int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  "notice_title" varchar(50) NOT NULL COMMENT '公告标题',
  "notice_type" char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  "notice_content" varchar(2000) DEFAULT NULL COMMENT '公告内容',
  "status" char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("notice_id")
) AUTO_INCREMENT=3 COMMENT='通知公告表';



#
# Dumping data for table 'sys_notice'
#

LOCK TABLES "sys_notice" WRITE;
/*!40000 ALTER TABLE "sys_notice" DISABLE KEYS;*/
REPLACE INTO "sys_notice" ("notice_id", "notice_title", "notice_type", "notice_content", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(1,'温馨提醒：2018-07-01 新版本发布啦','2','新版本内容','0','root','2020-12-04 16:10:28','',NULL,'管理员');
REPLACE INTO "sys_notice" ("notice_id", "notice_title", "notice_type", "notice_content", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(2,'维护通知：2018-07-01 系统凌晨维护','1','维护内容','0','root','2020-12-04 16:10:28','',NULL,'管理员');
/*!40000 ALTER TABLE "sys_notice" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_oper_log'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_oper_log" (
  "oper_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  "title" varchar(50) DEFAULT '' COMMENT '模块标题',
  "business_type" int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  "method" varchar(100) DEFAULT '' COMMENT '方法名称',
  "request_method" varchar(10) DEFAULT '' COMMENT '请求方式',
  "operator_type" int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  "oper_name" varchar(50) DEFAULT '' COMMENT '操作人员',
  "dept_name" varchar(50) DEFAULT '' COMMENT '部门名称',
  "oper_url" varchar(255) DEFAULT '' COMMENT '请求URL',
  "oper_ip" varchar(128) DEFAULT '' COMMENT '主机地址',
  "oper_location" varchar(255) DEFAULT '' COMMENT '操作地点',
  "oper_param" varchar(2000) DEFAULT '' COMMENT '请求参数',
  "json_result" varchar(2000) DEFAULT '' COMMENT '返回参数',
  "status" int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  "error_msg" varchar(2000) DEFAULT '' COMMENT '错误消息',
  "oper_time" datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY ("oper_id")
) AUTO_INCREMENT=2 COMMENT='操作日志记录';



#
# Dumping data for table 'sys_oper_log'
#

# No data found.



#
# Table structure for table 'sys_post'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_post" (
  "post_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  "post_code" varchar(64) NOT NULL COMMENT '岗位编码',
  "post_name" varchar(50) NOT NULL COMMENT '岗位名称',
  "post_sort" int(4) NOT NULL COMMENT '显示顺序',
  "status" char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("post_id")
) AUTO_INCREMENT=6 COMMENT='岗位信息表';



#
# Dumping data for table 'sys_post'
#

LOCK TABLES "sys_post" WRITE;
/*!40000 ALTER TABLE "sys_post" DISABLE KEYS;*/
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','ceo','董事长',1,'0','root','2020-12-04 16:10:28','',NULL,'');
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','pm','项目经理',2,'0','root','2020-12-04 16:10:28','',NULL,'');
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','hr','人力资源',3,'0','root','2020-12-04 16:10:28','',NULL,'');
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('4','user','普通员工',4,'0','root','2020-12-04 16:10:28','',NULL,'');
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('5','kj','会计',5,'0','root','2020-12-04 16:10:28','',NULL,NULL);
/*!40000 ALTER TABLE "sys_post" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_role'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_role" (
  "role_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  "role_name" varchar(30) NOT NULL COMMENT '角色名称',
  "role_key" varchar(100) NOT NULL COMMENT '角色权限字符串',
  "role_sort" int(4) NOT NULL COMMENT '显示顺序',
  "data_scope" char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  "status" char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  "del_flag" char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("role_id")
) AUTO_INCREMENT=4 COMMENT='角色信息表';



#
# Dumping data for table 'sys_role'
#

LOCK TABLES "sys_role" WRITE;
/*!40000 ALTER TABLE "sys_role" DISABLE KEYS;*/
REPLACE INTO "sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','超级管理员','root',1,'1','0','0','root','2020-12-04 16:10:29','',NULL,'超级管理员');
REPLACE INTO "sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','测试','test',2,'1','0','0','root','2020-12-04 16:10:29','',NULL,'测试');
REPLACE INTO "sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','员工','staff',3,'1','0','0','root','2020-12-04 16:10:29','',NULL,'员工');
/*!40000 ALTER TABLE "sys_role" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_role_dept'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_role_dept" (
  "role_id" bigint(20) NOT NULL COMMENT '角色ID',
  "dept_id" bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY ("role_id","dept_id")
) COMMENT='角色和部门关联表';



#
# Dumping data for table 'sys_role_dept'
#

# No data found.



#
# Table structure for table 'sys_role_menu'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_role_menu" (
  "role_id" bigint(20) NOT NULL COMMENT '角色ID',
  "menu_id" bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY ("role_id","menu_id")
) COMMENT='角色和菜单关联表';



#
# Dumping data for table 'sys_role_menu'
#

# No data found.



#
# Table structure for table 'sys_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_user" (
  "user_id" bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  "dept_id" bigint(20) DEFAULT NULL COMMENT '部门ID',
  "login_name" varchar(30) NOT NULL COMMENT '登录账号',
  "modifyed" char(1) DEFAULT '0' COMMENT '初始化0，1已修改',
  "user_name" varchar(30) NOT NULL COMMENT '用户昵称',
  "user_type" varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  "email" varchar(50) DEFAULT '' COMMENT '用户邮箱',
  "phonenumber" varchar(11) DEFAULT '' COMMENT '手机号码',
  "gender" char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  "avatar" varchar(100) DEFAULT '' COMMENT '头像路径',
  "password" varchar(50) DEFAULT '' COMMENT '密码',
  "salt" varchar(20) DEFAULT '' COMMENT '盐加密',
  "status" char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  "del_flag" char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  "login_ip" varchar(128) DEFAULT '' COMMENT '最后登录IP',
  "login_date" datetime DEFAULT NULL COMMENT '最后登录时间',
  "pwd_update_date" datetime DEFAULT NULL COMMENT '密码最后更新时间',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("user_id")
) AUTO_INCREMENT=4 COMMENT='用户信息表';



#
# Dumping data for table 'sys_user'
#

LOCK TABLES "sys_user" WRITE;
/*!40000 ALTER TABLE "sys_user" DISABLE KEYS;*/
REPLACE INTO "sys_user" ("user_id", "dept_id", "login_name", "modifyed", "user_name", "user_type", "email", "phonenumber", "gender", "avatar", "password", "salt", "status", "del_flag", "login_ip", "login_date", "pwd_update_date", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','103','root','0','超级管理员','00','root@wshsoft.com','13735561307','0','','2cd9d64309fda936de1dffe0eb918e91','2bb804','0','0','127.0.0.1','2020-12-04 17:22:13','2020-12-04 16:10:30','root','2020-12-04 16:10:30','','2020-12-04 17:22:12','超级管理员');
REPLACE INTO "sys_user" ("user_id", "dept_id", "login_name", "modifyed", "user_name", "user_type", "email", "phonenumber", "gender", "avatar", "password", "salt", "status", "del_flag", "login_ip", "login_date", "pwd_update_date", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','105','test','0','测试帐号','00','test@wshsoft.com','13777858464','0','','bdbbd48177df6fb86b829ef7be29ee56','1e4d6b','0','0','127.0.0.1','2020-12-04 16:10:30','2020-12-04 16:10:30','root','2020-12-04 16:10:30','root','2020-12-04 16:10:30','');
REPLACE INTO "sys_user" ("user_id", "dept_id", "login_name", "modifyed", "user_name", "user_type", "email", "phonenumber", "gender", "avatar", "password", "salt", "status", "del_flag", "login_ip", "login_date", "pwd_update_date", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','104','user','0','普通员工','00','user@wshsoft.com','13735561308','0','','eb40b979368ec731eefaede4a62c54b6','8e1761','0','0','127.0.0.1','2020-12-04 16:10:30','2020-12-04 16:10:30','root','2020-12-04 16:10:30','root','2020-12-04 16:10:30','');
/*!40000 ALTER TABLE "sys_user" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_user_online'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_user_online" (
  "sessionId" varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  "login_name" varchar(50) DEFAULT '' COMMENT '登录账号',
  "dept_name" varchar(50) DEFAULT '' COMMENT '部门名称',
  "ipaddr" varchar(128) DEFAULT '' COMMENT '登录IP地址',
  "login_location" varchar(255) DEFAULT '' COMMENT '登录地点',
  "browser" varchar(50) DEFAULT '' COMMENT '浏览器类型',
  "os" varchar(50) DEFAULT '' COMMENT '操作系统',
  "status" varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  "start_timestamp" datetime DEFAULT NULL COMMENT 'session创建时间',
  "last_access_time" datetime DEFAULT NULL COMMENT 'session最后访问时间',
  "expire_time" int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY ("sessionId")
) COMMENT='在线用户记录';



#
# Dumping data for table 'sys_user_online'
#

# No data found.



#
# Table structure for table 'sys_user_post'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_user_post" (
  "user_id" bigint(20) NOT NULL COMMENT '用户ID',
  "post_id" bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY ("user_id","post_id")
) COMMENT='用户与岗位关联表';



#
# Dumping data for table 'sys_user_post'
#

# No data found.



#
# Table structure for table 'sys_user_role'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_user_role" (
  "user_id" bigint(20) NOT NULL COMMENT '用户ID',
  "role_id" bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY ("user_id","role_id")
) COMMENT='用户和角色关联表';



#
# Dumping data for table 'sys_user_role'
#

LOCK TABLES "sys_user_role" WRITE;
/*!40000 ALTER TABLE "sys_user_role" DISABLE KEYS;*/
REPLACE INTO "sys_user_role" ("user_id", "role_id") VALUES
	('2','2');
REPLACE INTO "sys_user_role" ("user_id", "role_id") VALUES
	('3','3');
/*!40000 ALTER TABLE "sys_user_role" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
