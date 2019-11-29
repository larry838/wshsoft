# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     wshsoft
# Server version:               5.7.16
# Server OS:                    Win64
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2019-11-29 18:18:33
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'wshsoft'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "wshsoft" /*!40100 DEFAULT CHARACTER SET utf8 */;

USE "wshsoft";


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
) AUTO_INCREMENT=25 COMMENT='代码生成业务表';



#
# Dumping data for table 'gen_table'
#

LOCK TABLES "gen_table" WRITE;
/*!40000 ALTER TABLE "gen_table" DISABLE KEYS;*/
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('17','sys_login_log','系统访问记录','LoginLog','crud','com.wshsoft.sys','sys','loginLog','系统访问记录','Carry xie',NULL,'admin','2019-11-25 16:52:35','',NULL,NULL);
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('18','sys_oper_log','操作日志记录','OperLog','crud','com.wshsoft.sys','sys','operLog','操作日志记录','Carry xie',NULL,'admin','2019-11-25 16:52:35','',NULL,NULL);
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('19','sys_post','岗位信息表','Post','crud','com.wshsoft.sys','sys','post','岗位信息','Carry xie',NULL,'admin','2019-11-25 16:52:35','',NULL,NULL);
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('20','gen_table','代码生成业务表','GenTable','crud','com.wshsoft.sys','sys','genTable','代码生成业务','Carry xie',NULL,'admin','2019-11-25 18:00:19','',NULL,NULL);
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('21','gen_table_column','代码生成业务表字段','GenTableColumn','crud','com.wshsoft.sys','sys','genTableColumn','代码生成业务','Carry xie',NULL,'admin','2019-11-25 18:00:19','',NULL,NULL);
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('22','sys_config','参数配置表','Config','crud','com.wshsoft.sys','sys','config','参数配置','Carry xie',NULL,'admin','2019-11-28 10:11:39','',NULL,NULL);
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('23','sys_dept','部门表','Dept','tree','com.wshsoft.sys','sys','dept','部门','Carry xie','{"treeName":"dept_name","treeParentCode":"parent_id","treeCode":"dept_id"}','admin','2019-11-28 10:11:39','','2019-11-28 12:38:29','');
REPLACE INTO "gen_table" ("table_id", "table_name", "table_comment", "class_name", "tpl_category", "package_name", "module_name", "business_name", "function_name", "function_author", "options", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('24','sys_company','公司表','Company','tree','com.wshsoft.sys','sys','company','公司','Carry xie','{"treeName":"company_name","treeParentCode":"parent_id","treeCode":"company_id"}','admin','2019-11-29 17:34:30','','2019-11-29 17:38:25','');
/*!40000 ALTER TABLE "gen_table" ENABLE KEYS;*/
UNLOCK TABLES;


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
) AUTO_INCREMENT=297 COMMENT='代码生成业务表字段';



#
# Dumping data for table 'gen_table_column'
#

LOCK TABLES "gen_table_column" WRITE;
/*!40000 ALTER TABLE "gen_table_column" DISABLE KEYS;*/
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('185','17','log_id','访问ID','bigint(20)','Long','logId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('186','17','login_name','登录账号','varchar(50)','String','loginName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('187','17','ip_address','登录IP地址','varchar(50)','String','ipAddress','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',3,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('188','17','login_location','登录地点','varchar(255)','String','loginLocation','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',4,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('189','17','browser','浏览器类型','varchar(50)','String','browser','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',5,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('190','17','os','操作系统','varchar(50)','String','os','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',6,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('191','17','status','登录状态（0成功 1失败）','char(1)','String','status','0',NULL,'0',NULL,'1','1','1','1','EQ','radio','',7,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('192','17','msg','提示消息','varchar(255)','String','msg','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',8,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('193','17','login_time','访问时间','datetime','Date','loginTime','0',NULL,'0',NULL,'1','1','1','1','EQ','datetime','',9,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('194','18','oper_id','日志主键','bigint(20)','Long','operId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('195','18','title','模块标题','varchar(50)','String','title','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',2,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('196','18','business_type','业务类型（0其它 1新增 2修改 3删除）','int(2)','Integer','businessType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',3,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('197','18','method','方法名称','varchar(100)','String','method','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',4,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('198','18','request_method','请求方式','varchar(10)','String','requestMethod','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',5,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('199','18','operator_type','操作类别（0其它 1后台用户 2手机端用户）','int(1)','Integer','operatorType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',6,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('200','18','oper_name','操作人员','varchar(50)','String','operName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',7,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('201','18','dept_name','部门名称','varchar(50)','String','deptName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',8,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('202','18','oper_url','请求URL','varchar(255)','String','operUrl','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',9,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('203','18','oper_ip','主机地址','varchar(50)','String','operIp','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',10,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('204','18','oper_location','操作地点','varchar(255)','String','operLocation','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',11,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('205','18','oper_param','请求参数','varchar(2000)','String','operParam','0',NULL,'0',NULL,'1','1','1','1','EQ','textarea','',12,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('206','18','json_result','返回参数','varchar(2000)','String','jsonResult','0',NULL,'0',NULL,'1','1','1','1','EQ','textarea','',13,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('207','18','status','操作状态（0正常 1异常）','int(1)','Integer','status','0',NULL,'0',NULL,'1','1','1','1','EQ','radio','',14,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('208','18','error_msg','错误消息','varchar(2000)','String','errorMsg','0',NULL,'0',NULL,'1','1','1','1','EQ','textarea','',15,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('209','18','oper_time','操作时间','datetime','Date','operTime','0',NULL,'0',NULL,'1','1','1','1','EQ','datetime','',16,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('210','19','post_id','岗位ID','bigint(20)','Long','postId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('211','19','post_code','岗位编码','varchar(64)','String','postCode','0',NULL,'0','1','1','1','1','1','EQ','input','',2,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('212','19','post_name','岗位名称','varchar(50)','String','postName','0',NULL,'0','1','1','1','1','1','LIKE','input','',3,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('213','19','post_sort','显示顺序','int(4)','Integer','postSort','0',NULL,'0','1','1','1','1','1','EQ','input','',4,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('214','19','status','状态（0正常 1停用）','char(1)','String','status','0',NULL,'0','1','1','1','1','1','EQ','radio','',5,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('215','19','create_by','创建者','varchar(64)','String','createBy','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('216','19','create_time','创建时间','datetime','Date','createTime','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('217','19','update_by','更新者','varchar(64)','String','updateBy','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('218','19','update_time','更新时间','datetime','Date','updateTime','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('219','19','remark','备注','varchar(500)','String','remark','0',NULL,'0',NULL,'1','1','1',NULL,'EQ','textarea','',10,'admin','2019-11-25 16:52:35','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('220','20','table_id','编号','bigint(20)','Long','tableId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('221','20','table_name','表名称','varchar(200)','String','tableName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('222','20','table_comment','表描述','varchar(500)','String','tableComment','0',NULL,'0',NULL,'1','1','1','1','EQ','textarea','',3,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('223','20','class_name','实体类名称','varchar(100)','String','className','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',4,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('224','20','tpl_category','使用的模板（crud单表操作 tree树表操作）','varchar(200)','String','tplCategory','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',5,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('225','20','package_name','生成包路径','varchar(100)','String','packageName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',6,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('226','20','module_name','生成模块名','varchar(30)','String','moduleName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',7,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('227','20','business_name','生成业务名','varchar(30)','String','businessName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',8,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('228','20','function_name','生成功能名','varchar(50)','String','functionName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',9,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('229','20','function_author','生成功能作者','varchar(50)','String','functionAuthor','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',10,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('230','20','options','其它生成选项','varchar(1000)','String','options','0',NULL,'0',NULL,'1','1','1','1','EQ','textarea','',11,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('231','20','create_by','创建者','varchar(64)','String','createBy','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','input','',12,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('232','20','create_time','创建时间','datetime','Date','createTime','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',13,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('233','20','update_by','更新者','varchar(64)','String','updateBy','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',14,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('234','20','update_time','更新时间','datetime','Date','updateTime','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','datetime','',15,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('235','20','remark','备注','varchar(500)','String','remark','0',NULL,'0',NULL,'1','1','1',NULL,'EQ','textarea','',16,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('236','21','column_id','编号','bigint(20)','Long','columnId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('237','21','table_id','归属表编号','varchar(64)','String','tableId','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',2,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('238','21','column_name','列名称','varchar(200)','String','columnName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('239','21','column_comment','列描述','varchar(500)','String','columnComment','0',NULL,'0',NULL,'1','1','1','1','EQ','textarea','',4,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('240','21','column_type','列类型','varchar(100)','String','columnType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',5,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('241','21','java_type','JAVA类型','varchar(500)','String','javaType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',6,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('242','21','java_field','JAVA字段名','varchar(200)','String','javaField','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',7,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('243','21','is_pk','是否主键（1是）','char(1)','String','isPk','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',8,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('244','21','is_increment','是否自增（1是）','char(1)','String','isIncrement','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',9,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('245','21','is_required','是否必填（1是）','char(1)','String','isRequired','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',10,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('246','21','is_insert','是否为插入字段（1是）','char(1)','String','isInsert','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',11,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('247','21','is_edit','是否编辑字段（1是）','char(1)','String','isEdit','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',12,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('248','21','is_list','是否列表字段（1是）','char(1)','String','isList','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',13,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('249','21','is_query','是否查询字段（1是）','char(1)','String','isQuery','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',14,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('250','21','query_type','查询方式（等于、不等于、大于、小于、范围）','varchar(200)','String','queryType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',15,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('251','21','html_type','显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）','varchar(200)','String','htmlType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',16,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('252','21','dict_type','字典类型','varchar(200)','String','dictType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',17,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('253','21','sort','排序','int(11)','Long','sort','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',18,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('254','21','create_by','创建者','varchar(64)','String','createBy','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','input','',19,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('255','21','create_time','创建时间','datetime','Date','createTime','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',20,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('256','21','update_by','更新者','varchar(64)','String','updateBy','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',21,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('257','21','update_time','更新时间','datetime','Date','updateTime','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','datetime','',22,'admin','2019-11-25 18:00:19','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('258','22','config_id','参数主键','int(5)','Integer','configId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('259','22','config_name','参数名称','varchar(100)','String','configName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('260','22','config_key','参数键名','varchar(100)','String','configKey','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',3,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('261','22','config_value','参数键值','varchar(500)','String','configValue','0',NULL,'0',NULL,'1','1','1','1','EQ','textarea','',4,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('262','22','config_type','系统内置（Y是 N否）','char(1)','String','configType','0',NULL,'0',NULL,'1','1','1','1','EQ','select','',5,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('263','22','create_by','创建者','varchar(64)','String','createBy','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('264','22','create_time','创建时间','datetime','Date','createTime','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('265','22','update_by','更新者','varchar(64)','String','updateBy','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('266','22','update_time','更新时间','datetime','Date','updateTime','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('267','22','remark','备注','varchar(500)','String','remark','0',NULL,'0',NULL,'1','1','1',NULL,'EQ','textarea','',10,'admin','2019-11-28 10:11:39','',NULL);
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('268','23','dept_id','部门id','bigint(20)','Long','deptId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('269','23','parent_id','父部门id','bigint(20)','Long','parentId','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',2,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('270','23','ancestors','祖级列表','varchar(50)','String','ancestors','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',3,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('271','23','dept_name','部门名称','varchar(30)','String','deptName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',4,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('272','23','order_num','显示顺序','int(4)','Integer','orderNum','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',5,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('273','23','leader','负责人','varchar(20)','String','leader','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',6,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('274','23','phone','联系电话','varchar(11)','String','phone','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',7,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('275','23','email','邮箱','varchar(50)','String','email','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',8,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('276','23','status','部门状态（0正常 1停用）','char(1)','String','status','0',NULL,'0',NULL,'1','1','1','1','EQ','radio','sys_common_status',9,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('277','23','del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','input','',10,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('278','23','create_by','创建者','varchar(64)','String','createBy','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','input','',11,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('279','23','create_time','创建时间','datetime','Date','createTime','0',NULL,'0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',12,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('280','23','update_by','更新者','varchar(64)','String','updateBy','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',13,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('281','23','update_time','更新时间','datetime','Date','updateTime','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','datetime','',14,'admin','2019-11-28 10:11:39',NULL,'2019-11-28 12:38:29');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('282','24','company_id','公司id','bigint(20)','Long','companyId','1',NULL,'1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2019-11-29 17:34:30',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('283','24','parent_id','父公司id','bigint(20)','Long','parentId','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',2,'admin','2019-11-29 17:34:30',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('284','24','ancestors','祖级列表','varchar(50)','String','ancestors','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',3,'admin','2019-11-29 17:34:30',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('285','24','company_name','公司名称','varchar(30)','String','companyName','0',NULL,'0',NULL,'1','1','1','1','LIKE','input','',4,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('286','24','order_num','显示顺序','int(4)','Integer','orderNum','0',NULL,'0',NULL,'1','1','1',NULL,'EQ','input','',5,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('287','24','leader','负责人','varchar(20)','String','leader','0',NULL,'0',NULL,'1','1','1','1','EQ','input','',6,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('288','24','phone','联系电话','varchar(11)','String','phone','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',7,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('289','24','email','邮箱','varchar(50)','String','email','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('290','24','status','公司状态（0正常 1停用）','char(1)','String','status','0',NULL,'0',NULL,'1','1','1','1','EQ','radio','sys_common_status',9,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('291','24','del_flag','删除标志（0代表存在 2代表删除）','char(1)','String','delFlag','0',NULL,'0','1',NULL,NULL,NULL,NULL,'EQ','input','',10,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('292','24','create_by','创建者','varchar(64)','String','createBy','0',NULL,'0',NULL,NULL,NULL,NULL,NULL,'EQ','input','',11,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('293','24','create_time','创建时间','datetime','Date','createTime','0',NULL,'0',NULL,NULL,NULL,'1','1','GTE','datetime','',12,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('294','24','update_by','更新者','varchar(64)','String','updateBy','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','input','',13,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('295','24','update_time','更新时间','datetime','Date','updateTime','0',NULL,'0',NULL,'1','1',NULL,NULL,'EQ','datetime','',14,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
REPLACE INTO "gen_table_column" ("column_id", "table_id", "column_name", "column_comment", "column_type", "java_type", "java_field", "is_pk", "is_unique", "is_increment", "is_required", "is_insert", "is_edit", "is_list", "is_query", "query_type", "html_type", "dict_type", "sort", "create_by", "create_time", "update_by", "update_time") VALUES
	('296','24','remark','null','varchar(50)','String','remark','0',NULL,'0',NULL,'1','1','1',NULL,'EQ','input','',15,'admin','2019-11-29 17:34:31',NULL,'2019-11-29 17:38:25');
/*!40000 ALTER TABLE "gen_table_column" ENABLE KEYS;*/
UNLOCK TABLES;


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
	('CommonScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.wshsoft.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720020636F6D2E777368736F66742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000672656D61726B71007E00094C000673746174757371007E000978720029636F6D2E777368736F66742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787371007E00053F400000000000007708000000100000000078707070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740000740001317800);
REPLACE INTO "qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.wshsoft.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720020636F6D2E777368736F66742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000672656D61726B71007E00094C000673746174757371007E000978720029636F6D2E777368736F66742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787371007E00053F400000000000007708000000100000000078707070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740000740001317800);
REPLACE INTO "qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.wshsoft.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720020636F6D2E777368736F66742E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000672656D61726B71007E00094C000673746174757371007E000978720029636F6D2E777368736F66742E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787371007E00053F400000000000007708000000100000000078707070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740000740001317800);
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
	('CommonScheduler','WIN-UC5GQF7P7A01575022526724','1575022712318','15000');
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
	('CommonScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,'1575022530000','-1',5,'PAUSED','CRON','1575022527000','0',NULL,2,'');
REPLACE INTO "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,'1575022530000','-1',5,'PAUSED','CRON','1575022527000','0',NULL,2,'');
REPLACE INTO "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES
	('CommonScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,'1575022540000','-1',5,'PAUSED','CRON','1575022527000','0',NULL,2,'');
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
) AUTO_INCREMENT=117 COMMENT='公司表';



#
# Dumping data for table 'sys_company'
#

LOCK TABLES "sys_company" WRITE;
/*!40000 ALTER TABLE "sys_company" DISABLE KEYS;*/
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('100','0','0','睿创科技',0,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('101','100','0,100','深圳总公司',1,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('102','100','0,100','长沙分公司',2,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('103','101','0,100,101','研发部门',1,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('104','101','0,100,101','市场部门',2,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('105','101','0,100,101','测试部门',3,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('106','101','0,100,101','财务部门',4,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('107','101','0,100,101','运维部门',5,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('108','102','0,100,102','市场部门',1,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_company" ("company_id", "parent_id", "ancestors", "company_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('109','102','0,100,102','财务部门',2,'睿创','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
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
) AUTO_INCREMENT=5 COMMENT='参数配置表';



#
# Dumping data for table 'sys_config'
#

LOCK TABLES "sys_config" WRITE;
/*!40000 ALTER TABLE "sys_config" DISABLE KEYS;*/
REPLACE INTO "sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
REPLACE INTO "sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456');
REPLACE INTO "sys_config" ("config_id", "config_name", "config_key", "config_value", "config_type", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','深色主题theme-dark，浅色主题theme-light');
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
) AUTO_INCREMENT=117 COMMENT='部门表';



#
# Dumping data for table 'sys_dept'
#

LOCK TABLES "sys_dept" WRITE;
/*!40000 ALTER TABLE "sys_dept" DISABLE KEYS;*/
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('100','0','0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('101','100','0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('102','100','0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('103','101','0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('104','101','0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('105','101','0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('106','101','0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('107','101','0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('108','102','0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('109','102','0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('110','104','0,100,101,104','e',0,'','','','0','0','admin','2019-11-28 11:48:42','admin','2019-11-29 14:52:17',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('111','102','','11',1,'3','3','3','0','0','admin','2019-11-28 11:50:14','','2019-11-28 11:50:14',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('112','104','','edd',2,'w','w','w','0','0','admin','2019-11-28 12:46:19','','2019-11-28 12:46:19',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('113','102','0,100,102','33',11,'1','13735561307','s@sohu.com','0','0','admin','2019-11-28 13:10:24','',NULL,NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('114','101','0,100,101','xj',1,'xj','13735561307','dd@gmail.com','0','0','admin','2019-11-29 11:54:27','admin','2019-11-29 14:47:29',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('115','114','0,100,101,114','谢建',1,'11','','','0','0','admin','2019-11-29 14:53:10','','2019-11-29 14:53:10',NULL);
REPLACE INTO "sys_dept" ("dept_id", "parent_id", "ancestors", "dept_name", "order_num", "leader", "phone", "email", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('116','115','0,100,101,114,115','e',2,'2','','','0','0','admin','2019-11-29 14:53:32','','2019-11-29 14:53:32',NULL);
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
	('1',1,'男','0','sys_user_sex','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2',2,'女','1','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3',3,'未知','2','sys_user_sex','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('4',1,'显示','0','sys_show_hide','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('5',2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('6',1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('7',2,'停用','1','sys_normal_disable','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('8',1,'正常','0','sys_job_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('9',2,'暂停','1','sys_job_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('10',1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认分组');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('11',2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统分组');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('12',1,'是','Y','sys_yes_no','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('13',2,'否','N','sys_yes_no','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('14',1,'通知','1','sys_notice_type','','warning','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('15',2,'公告','2','sys_notice_type','','success','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('16',1,'正常','0','sys_notice_status','','primary','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('17',2,'关闭','1','sys_notice_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('18',1,'新增','1','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('19',2,'修改','2','sys_oper_type','','info','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','修改操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('20',3,'删除','3','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','删除操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('21',4,'授权','4','sys_oper_type','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','授权操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('22',5,'导出','5','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导出操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('23',6,'导入','6','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','导入操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('24',7,'强退','7','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','强退操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('25',8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','生成操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('26',9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','清空操作');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('27',1,'成功','0','sys_common_status','','primary','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态');
REPLACE INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('28',2,'失败','1','sys_common_status','','danger','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态');
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
	('1','用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('4','任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('5','任务分组','sys_job_group','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务分组列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('6','系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('7','通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('8','通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('9','操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表');
REPLACE INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('10','系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表');
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
	('1','系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','系统默认（有参）','DEFAULT','ryTask.ryParams(''ry'')','0/15 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_job" ("job_id", "job_name", "job_group", "invoke_target", "cron_expression", "misfire_policy", "concurrent", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
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
) AUTO_INCREMENT=145 COMMENT='系统访问记录';



#
# Dumping data for table 'sys_login_log'
#

LOCK TABLES "sys_login_log" WRITE;
/*!40000 ALTER TABLE "sys_login_log" DISABLE KEYS;*/
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('100','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-14 17:53:10');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('101','admin','127.0.0.1','内网IP','Firefox','Windows 7','0','登录成功','2019-11-14 18:56:27');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('102','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-15 17:19:16');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('103','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-18 08:59:42');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('104','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-19 16:47:54');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('105','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','帐号或密码不正确！您还剩4次重试的机会','2019-11-19 16:47:54');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('106','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-19 16:49:33');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('107','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','帐号或密码不正确！您还剩3次重试的机会','2019-11-19 16:49:33');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('108','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-19 18:18:08');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('109','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-20 08:54:54');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('110','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2019-11-20 09:00:58');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('111','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2019-11-20 09:01:07');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('112','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2019-11-20 09:01:11');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('113','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2019-11-20 09:05:29');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('114','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-20 09:05:43');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('115','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-20 14:22:57');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('116','admin','127.0.0.1','内网IP','Firefox','Windows 7','1','验证码错误','2019-11-20 15:31:46');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('117','admin','127.0.0.1','内网IP','Firefox','Windows 7','0','登录成功','2019-11-20 15:31:54');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('118','admin','127.0.0.1','内网IP','Firefox','Windows 7','0','登录成功','2019-11-20 16:22:27');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('119','admin','127.0.0.1','内网IP','Firefox','Windows 7','0','登录成功','2019-11-20 17:19:16');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('120','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-20 17:27:39');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('121','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-25 14:06:27');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('122','admin','127.0.0.1','内网IP','Internet Explorer 11','Windows 7','0','登录成功','2019-11-25 14:22:18');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('123','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2019-11-26 10:02:18');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('124','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-26 10:03:50');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('125','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2019-11-26 10:31:27');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('126','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2019-11-26 10:41:52');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('127','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-26 14:51:39');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('128','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','退出成功','2019-11-26 14:51:48');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('129','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2019-11-26 14:55:37');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('130','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-26 14:55:46');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('131','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2019-11-26 15:39:07');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('132','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2019-11-26 15:41:02');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('133','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2019-11-26 15:41:16');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('134','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-26 15:41:23');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('135','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-26 16:49:23');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('136','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-26 17:16:14');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('137','admin','127.0.0.1','内网IP','Chrome','Windows 7','1','验证码错误','2019-11-27 17:06:44');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('138','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-27 17:06:53');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('139','admin','127.0.0.1','内网IP','Internet Explorer 11','Windows 7','0','登录成功','2019-11-27 18:23:50');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('140','admin','127.0.0.1','内网IP','Internet Explorer 11','Windows 7','0','登录成功','2019-11-28 10:10:37');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('141','admin','127.0.0.1','内网IP','Internet Explorer 11','Windows 7','0','登录成功','2019-11-29 11:50:55');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('142','admin','127.0.0.1','内网IP','Internet Explorer 11','Windows 7','0','登录成功','2019-11-29 13:26:27');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('143','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-29 13:30:14');
REPLACE INTO "sys_login_log" ("log_id", "login_name", "ip_address", "login_location", "browser", "os", "status", "msg", "login_time") VALUES
	('144','admin','127.0.0.1','内网IP','Chrome','Windows 7','0','登录成功','2019-11-29 17:34:06');
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
  "visible" char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  "permission_code" varchar(100) DEFAULT NULL COMMENT '权限标识',
  "icon" varchar(100) DEFAULT '#' COMMENT '菜单图标',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY ("menu_id")
) AUTO_INCREMENT=1098 COMMENT='菜单权限表';



#
# Dumping data for table 'sys_menu'
#

LOCK TABLES "sys_menu" WRITE;
/*!40000 ALTER TABLE "sys_menu" DISABLE KEYS;*/
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','系统管理','0',NULL,1,'#','','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','系统监控','0',NULL,2,'#','','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','系统工具','0',NULL,3,'#','','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('100','用户管理','1',NULL,1,'/system/user','','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('101','角色管理','1',NULL,2,'/system/role','','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('102','菜单管理','1',NULL,3,'/system/menu','','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('103','部门管理','1',NULL,4,'/system/dept','','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('104','岗位管理','1',NULL,5,'/system/post','','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('105','字典管理','1',NULL,6,'/system/dict','','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('106','参数设置','1',NULL,7,'/system/config','','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('107','通知公告','1',NULL,8,'/system/notice','','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('108','日志管理','1',NULL,9,'#','','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('109','在线用户','2',NULL,1,'/monitor/online','','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('110','定时任务','2',NULL,2,'/monitor/job','','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('111','数据监控','2',NULL,3,'/monitor/data','','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('112','服务监控','2',NULL,3,'/monitor/server','','C','0','monitor:server:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','服务监控菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('113','表单构建','3',NULL,1,'/tool/build','','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('114','代码生成','3',NULL,2,'/tool/gen','','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('115','系统接口','3',NULL,3,'/tool/swagger','','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('500','操作日志','108',NULL,1,'/monitor/operlog','','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('501','登录日志','108',NULL,2,'/monitor/loginLog','','C','0','monitor:loginLog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1000','用户查询','100',NULL,1,'#','','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1001','用户新增','100',NULL,2,'#','','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1002','用户修改','100',NULL,3,'#','','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1003','用户删除','100',NULL,4,'#','','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1004','用户导出','100',NULL,5,'#','','F','0','system:user:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1005','用户导入','100',NULL,6,'#','','F','0','system:user:import','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1006','重置密码','100',NULL,7,'#','','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1007','角色查询','101',NULL,1,'#','','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1008','角色新增','101',NULL,2,'#','','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1009','角色修改','101',NULL,3,'#','','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1010','角色删除','101',NULL,4,'#','','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1011','角色导出','101',NULL,5,'#','','F','0','system:role:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1012','菜单查询','102',NULL,1,'#','','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1013','菜单新增','102',NULL,2,'#','','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1014','菜单修改','102',NULL,3,'#','','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1015','菜单删除','102',NULL,4,'#','','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1016','部门查询','103',NULL,1,'#','','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1017','部门新增','103',NULL,2,'#','','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1018','部门修改','103',NULL,3,'#','','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1019','部门删除','103',NULL,4,'#','','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1020','岗位查询','104',NULL,1,'#','','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1021','岗位新增','104',NULL,2,'#','','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1022','岗位修改','104',NULL,3,'#','','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1023','岗位删除','104',NULL,4,'#','','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1024','岗位导出','104',NULL,5,'#','','F','0','system:post:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1025','字典查询','105',NULL,1,'#','','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1026','字典新增','105',NULL,2,'#','','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1027','字典修改','105',NULL,3,'#','','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1028','字典删除','105',NULL,4,'#','','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1029','字典导出','105',NULL,5,'#','','F','0','system:dict:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1030','参数查询','106',NULL,1,'#','','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1031','参数新增','106',NULL,2,'#','','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1032','参数修改','106',NULL,3,'#','','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1033','参数删除','106',NULL,4,'#','','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1034','参数导出','106',NULL,5,'#','','F','0','system:config:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1035','公告查询','107',NULL,1,'#','','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1036','公告新增','107',NULL,2,'#','','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1037','公告修改','107',NULL,3,'#','','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1038','公告删除','107',NULL,4,'#','','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1039','操作查询','500',NULL,1,'#','','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1040','操作删除','500',NULL,2,'#','','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1041','详细信息','500',NULL,3,'#','','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1042','日志导出','500',NULL,4,'#','','F','0','monitor:operlog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1043','登录查询','501',NULL,1,'#','','F','0','monitor:loginLog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1044','登录删除','501',NULL,2,'#','','F','0','monitor:loginLog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1045','日志导出','501',NULL,3,'#','','F','0','monitor:loginLog:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1046','账户解锁','501',NULL,4,'#','','F','0','monitor:loginLog:unlock','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1047','在线查询','109',NULL,1,'#','','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1048','批量强退','109',NULL,2,'#','','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1049','单条强退','109',NULL,3,'#','','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1050','任务查询','110',NULL,1,'#','','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1051','任务新增','110',NULL,2,'#','','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1052','任务修改','110',NULL,3,'#','','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1053','任务删除','110',NULL,4,'#','','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1054','状态修改','110',NULL,5,'#','','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1055','任务详细','110',NULL,6,'#','','F','0','monitor:job:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1056','任务导出','110',NULL,7,'#','','F','0','monitor:job:export','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1057','生成查询','114',NULL,1,'#','','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1058','生成修改','114',NULL,2,'#','','F','0','tool:gen:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1059','生成删除','114',NULL,3,'#','','F','0','tool:gen:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1060','预览代码','114',NULL,4,'#','','F','0','tool:gen:preview','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1061','生成代码','114',NULL,5,'#','','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1062','岗位信息','3',NULL,1,'/sys/post','','C','0','sys:post:view','#','admin','2019-11-25 00:00:00','',NULL,'岗位信息菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1063','岗位信息查询','1062',NULL,1,'#','','F','0','sys:post:list','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1064','岗位信息新增','1062',NULL,2,'#','','F','0','sys:post:add','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1065','岗位信息修改','1062',NULL,3,'#','','F','0','sys:post:edit','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1066','岗位信息删除','1062',NULL,4,'#','','F','0','sys:post:remove','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1067','岗位信息导出','1062',NULL,5,'#','','F','0','sys:post:export','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1068','操作日志记录','3',NULL,1,'/sys/operLog','','C','0','sys:operLog:view','#','admin','2019-11-25 00:00:00','',NULL,'操作日志记录菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1069','操作日志记录查询','1068',NULL,1,'#','','F','0','sys:operLog:list','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1070','操作日志记录新增','1068',NULL,2,'#','','F','0','sys:operLog:add','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1071','操作日志记录修改','1068',NULL,3,'#','','F','0','sys:operLog:edit','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1072','操作日志记录删除','1068',NULL,4,'#','','F','0','sys:operLog:remove','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1073','操作日志记录导出','1068',NULL,5,'#','','F','0','sys:operLog:export','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1074','系统访问记录','3',NULL,1,'/sys/loginLog','','C','0','sys:loginLog:view','#','admin','2019-11-25 00:00:00','',NULL,'系统访问记录菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1075','系统访问记录查询','1074',NULL,1,'#','','F','0','sys:loginLog:list','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1076','系统访问记录新增','1074',NULL,2,'#','','F','0','sys:loginLog:add','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1077','系统访问记录修改','1074',NULL,3,'#','','F','0','sys:loginLog:edit','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1078','系统访问记录删除','1074',NULL,4,'#','','F','0','sys:loginLog:remove','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1079','系统访问记录导出','1074',NULL,5,'#','','F','0','sys:loginLog:export','#','admin','2019-11-25 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1080','参数配置','3',NULL,1,'/sys/config','','C','0','sys:config:view','#','admin','2019-11-28 00:00:00','',NULL,'参数配置菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1081','参数配置查询','1080',NULL,1,'#','','F','0','sys:config:list','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1082','参数配置新增','1080',NULL,2,'#','','F','0','sys:config:add','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1083','参数配置修改','1080',NULL,3,'#','','F','0','sys:config:edit','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1084','参数配置删除','1080',NULL,4,'#','','F','0','sys:config:remove','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1085','参数配置导出','1080',NULL,5,'#','','F','0','sys:config:export','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1086','部门','3',NULL,1,'/sys/dept','','C','0','sys:dept:view','#','admin','2019-11-28 00:00:00','',NULL,'部门菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1087','部门查询','1086',NULL,1,'#','','F','0','sys:dept:list','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1088','部门新增','1086',NULL,2,'#','','F','0','sys:dept:add','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1089','部门修改','1086',NULL,3,'#','','F','0','sys:dept:edit','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1090','部门删除','1086',NULL,4,'#','','F','0','sys:dept:remove','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1091','部门导出','1086',NULL,5,'#','','F','0','sys:dept:export','#','admin','2019-11-28 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1092','公司','3',NULL,1,'/sys/company','','C','0','sys:company:view','#','admin','2019-11-29 00:00:00','',NULL,'公司菜单');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1093','公司查询','1092',NULL,1,'#','','F','0','sys:company:list','#','admin','2019-11-29 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1094','公司新增','1092',NULL,2,'#','','F','0','sys:company:add','#','admin','2019-11-29 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1095','公司修改','1092',NULL,3,'#','','F','0','sys:company:edit','#','admin','2019-11-29 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1096','公司删除','1092',NULL,4,'#','','F','0','sys:company:remove','#','admin','2019-11-29 00:00:00','',NULL,'');
REPLACE INTO "sys_menu" ("menu_id", "menu_name", "parent_id", "parent_path", "order_num", "url", "target", "menu_type", "visible", "permission_code", "icon", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1097','公司导出','1092',NULL,5,'#','','F','0','sys:company:export','#','admin','2019-11-29 00:00:00','',NULL,'');
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
	(1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
REPLACE INTO "sys_notice" ("notice_id", "notice_title", "notice_type", "notice_content", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
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
  "oper_ip" varchar(50) DEFAULT '' COMMENT '主机地址',
  "oper_location" varchar(255) DEFAULT '' COMMENT '操作地点',
  "oper_param" varchar(2000) DEFAULT '' COMMENT '请求参数',
  "json_result" varchar(2000) DEFAULT '' COMMENT '返回参数',
  "status" int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  "error_msg" varchar(2000) DEFAULT '' COMMENT '错误消息',
  "oper_time" datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY ("oper_id")
) AUTO_INCREMENT=150 COMMENT='操作日志记录';



#
# Dumping data for table 'sys_oper_log'
#

LOCK TABLES "sys_oper_log" WRITE;
/*!40000 ALTER TABLE "sys_oper_log" DISABLE KEYS;*/
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('100','代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "sys_notice,sys_job_log,sys_job,sys_config,sys_user_online,sys_logininfor" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-14 17:54:01');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('101','代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "sys_dept" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-15 17:25:46');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('102','代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "7" ],
  "tableName" : [ "sys_dept" ],
  "tableComment" : [ "部门表" ],
  "className" : [ "SysDept" ],
  "functionAuthor" : [ "ruoyi" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "62" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "部门id" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "deptId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "63" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "父部门id" ],
  "columns[1].javaType" : [ "Long" ],
  "columns[1].javaField" : [ "parentId" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "64" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "祖级列表" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "ancestors" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "65" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "部门名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "deptName" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "66" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "显示顺序" ],
  "columns[4','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-15 17:34:34');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('103','个人信息',2,'com.wshsoft.web.controller.system.SysProfileController.update()','POST',1,'admin',NULL,'/system/user/profile/update','127.0.0.1','内网IP','{
  "id" : [ "" ],
  "userName" : [ "若依" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "ry@163.com" ],
  "gender" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-20 14:32:50');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('104','个人信息',2,'com.wshsoft.web.controller.system.SysProfileController.update()','POST',1,'admin',NULL,'/system/user/profile/update','127.0.0.1','内网IP','{
  "id" : [ "" ],
  "userName" : [ "若依" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "ry@163.com" ],
  "gender" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-20 14:32:56');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('105','个人信息',2,'com.wshsoft.web.controller.system.SysProfileController.update()','POST',1,'admin',NULL,'/system/user/profile/update','127.0.0.1','内网IP','{
  "id" : [ "" ],
  "userName" : [ "若依" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "ry@163.com" ],
  "gender" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-20 14:33:17');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('106','代码生成',3,'com.wshsoft.generator.controller.GenController.remove()','POST',1,'admin',NULL,'/tool/gen/remove','127.0.0.1','内网IP','{
  "ids" : [ "6,1,7,2,3,4,5" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 15:33:06');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('107','代码生成',6,'com.wshsoft.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "sys_oper_log,sys_dict_data,sys_dict_type,sys_config,sys_login_log" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 15:50:27');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('108','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "11" ],
  "tableName" : [ "sys_login_log" ],
  "tableComment" : [ "系统访问记录" ],
  "className" : [ "LoginLog" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "109" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "访问ID" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "logId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "110" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "登录账号" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "loginName" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "LIKE" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "111" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "登录IP地址" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "ipAddress" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "112" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "登录地点" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "loginLocation" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "113" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" ','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 15:51:33');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('109','代码生成',3,'com.wshsoft.generator.controller.GenController.remove()','POST',1,'admin',NULL,'/tool/gen/remove','127.0.0.1','内网IP','{
  "ids" : [ "10" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 15:51:41');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('110','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "9" ],
  "tableName" : [ "sys_dict_data" ],
  "tableComment" : [ "字典数据表" ],
  "className" : [ "DictData" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "86" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "字典编码" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "dictCode" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "87" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "字典排序" ],
  "columns[1].javaType" : [ "Integer" ],
  "columns[1].javaField" : [ "dictSort" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "88" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "字典标签" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "dictLabel" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "89" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "字典键值" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "dictValue" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "90" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "字典类型" ]','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 15:52:07');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('111','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "12" ],
  "tableName" : [ "sys_oper_log" ],
  "tableComment" : [ "操作日志记录" ],
  "className" : [ "OperLog" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "118" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "日志主键" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "operId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "119" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "模块标题" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "title" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "120" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "业务类型（0其它 1新增 2修改 3删除）" ],
  "columns[2].javaType" : [ "Integer" ],
  "columns[2].javaField" : [ "businessType" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "select" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "121" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "方法名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "method" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "122" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnCom','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 15:52:40');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('112','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "8" ],
  "tableName" : [ "sys_config" ],
  "tableComment" : [ "参数配置表" ],
  "className" : [ "Config" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "76" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "参数主键" ],
  "columns[0].javaType" : [ "Integer" ],
  "columns[0].javaField" : [ "configId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "77" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "参数名称" ],
  "columns[1].javaType" : [ "String" ],
  "columns[1].javaField" : [ "configName" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "LIKE" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "78" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "参数键名" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "configKey" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "79" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "参数键值" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "configValue" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "EQ" ],
  "columns[3].htmlType" : [ "textarea" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "80" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "系','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 15:53:25');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('113','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "sys_login_log,sys_oper_log" ]
}','null',0,NULL,'2019-11-25 15:57:49');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('114','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "sys_login_log,sys_oper_log,sys_dict_data,sys_config" ]
}','null',0,NULL,'2019-11-25 16:01:55');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('115','代码生成',3,'com.wshsoft.generator.controller.GenController.remove()','POST',1,'admin',NULL,'/tool/gen/remove','127.0.0.1','内网IP','{
  "ids" : [ "12" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 16:12:24');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('116','代码生成',3,'com.wshsoft.generator.controller.GenController.remove()','POST',1,'admin',NULL,'/tool/gen/remove','127.0.0.1','内网IP','{
  "ids" : [ "13,8,9,11" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 16:36:09');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('117','代码生成',6,'com.wshsoft.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "sys_login_log,sys_post,sys_oper_log" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 16:37:27');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('118','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "sys_post,sys_oper_log,sys_login_log" ]
}','null',0,NULL,'2019-11-25 16:38:52');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('119','代码生成',3,'com.wshsoft.generator.controller.GenController.remove()','POST',1,'admin',NULL,'/tool/gen/remove','127.0.0.1','内网IP','{
  "ids" : [ "16,15,14" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 16:52:03');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('120','代码生成',6,'com.wshsoft.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "sys_login_log,sys_oper_log,sys_post" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 16:52:35');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('121','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "sys_login_log,sys_oper_log,sys_post" ]
}','null',0,NULL,'2019-11-25 16:54:25');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('122','代码生成',6,'com.wshsoft.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "gen_table,gen_table_column" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-25 18:00:19');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('123','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "gen_table,gen_table_column" ]
}','null',0,NULL,'2019-11-25 18:00:54');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('124','代码生成',6,'com.wshsoft.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "sys_config,sys_dept" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 10:11:39');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('125','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "23" ],
  "tableName" : [ "sys_dept" ],
  "tableComment" : [ "部门表" ],
  "className" : [ "Dept" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "268" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "部门id" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "deptId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "269" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "父部门id" ],
  "columns[1].javaType" : [ "Long" ],
  "columns[1].javaField" : [ "parentId" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "270" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "祖级列表" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "ancestors" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "271" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "部门名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "deptName" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "272" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "显示顺序" ],
  "co','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 10:13:08');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('126','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "sys_dept,sys_config" ]
}','null',0,NULL,'2019-11-28 10:13:16');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('127','参数配置',1,'com.wshsoft.sys.controller.ConfigController.addSave()','POST',1,'admin',NULL,'/sys/config/add','127.0.0.1','内网IP','{
  "configName" : [ "11" ],
  "configKey" : [ "11" ],
  "configValue" : [ "11" ],
  "configType" : [ "" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 11:23:42');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('128','部门',1,'com.wshsoft.sys.controller.DeptController.addSave()','POST',1,'admin',NULL,'/sys/dept/add','127.0.0.1','内网IP','{
  "parentId" : [ "104" ],
  "deptName" : [ "" ],
  "orderNum" : [ "" ],
  "leader" : [ "" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "delFlag" : [ "" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 11:48:41');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('129','部门',1,'com.wshsoft.sys.controller.DeptController.addSave()','POST',1,'admin',NULL,'/sys/dept/add','127.0.0.1','内网IP','{
  "parentId" : [ "102" ],
  "deptName" : [ "11" ],
  "orderNum" : [ "1" ],
  "leader" : [ "3" ],
  "phone" : [ "3" ],
  "email" : [ "3" ],
  "delFlag" : [ "" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 11:50:14');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('130','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "23" ],
  "tableName" : [ "sys_dept" ],
  "tableComment" : [ "部门表" ],
  "className" : [ "Dept" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "268" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "部门id" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "deptId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "269" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "父部门id" ],
  "columns[1].javaType" : [ "Long" ],
  "columns[1].javaField" : [ "parentId" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "270" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "祖级列表" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "ancestors" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "271" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "部门名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "deptName" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "272" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "显示顺序" ],
  "co','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 12:38:29');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('131','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "sys_dept" ]
}','null',0,NULL,'2019-11-28 12:38:54');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('132','部门管理',1,'com.wshsoft.sys.controller.DeptController.addSave()','POST',1,'admin',NULL,'/sys/dept/add','127.0.0.1','内网IP','{
  "parentId" : [ "104" ],
  "deptName" : [ "edd" ],
  "orderNum" : [ "2" ],
  "leader" : [ "w" ],
  "phone" : [ "w" ],
  "email" : [ "w" ],
  "status" : [ "0" ],
  "delFlag" : [ "w" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 12:46:18');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('133','部门管理',1,'com.wshsoft.web.controller.system.SysDeptController.addSave()','POST',1,'admin',NULL,'/system/dept/add','127.0.0.1','内网IP','{
  "parentId" : [ "102" ],
  "deptName" : [ "33" ],
  "orderNum" : [ "11" ],
  "leader" : [ "1" ],
  "phone" : [ "13735561307" ],
  "email" : [ "s@sohu.com" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-28 13:10:24');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('134','部门管理',1,'com.wshsoft.sys.controller.DeptController.addSave()','POST',1,'admin',NULL,'/sys/dept/add','127.0.0.1','内网IP','{
  "parentId" : [ "102" ],
  "deptName" : [ "xj" ],
  "orderNum" : [ "1" ],
  "leader" : [ "xj" ],
  "phone" : [ "13735561307" ],
  "email" : [ "dd@gmail.com" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 11:54:27');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('135','部门管理',2,'com.wshsoft.sys.controller.DeptController.editSave()','POST',1,'admin',NULL,'/sys/dept/edit','127.0.0.1','内网IP','{
  "deptId" : [ "110" ],
  "parentId" : [ "104" ],
  "parentName" : [ "市场部门" ],
  "deptName" : [ "e" ],
  "orderNum" : [ "0" ],
  "leader" : [ "" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 12:42:33');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('136','部门管理',2,'com.wshsoft.sys.controller.DeptController.editSave()','POST',1,'admin',NULL,'/sys/dept/edit','127.0.0.1','内网IP','{
  "deptId" : [ "114" ],
  "parentId" : [ "101" ],
  "parentName" : [ "深圳总公司" ],
  "deptName" : [ "xj" ],
  "orderNum" : [ "1" ],
  "leader" : [ "xj" ],
  "phone" : [ "13735561307" ],
  "email" : [ "dd@gmail.com" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 14:47:28');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('137','部门管理',2,'com.wshsoft.sys.controller.DeptController.editSave()','POST',1,'admin',NULL,'/sys/dept/edit','127.0.0.1','内网IP','{
  "deptId" : [ "114" ],
  "parentId" : [ "101" ],
  "parentName" : [ "深圳总公司" ],
  "deptName" : [ "xj" ],
  "orderNum" : [ "1" ],
  "leader" : [ "xj" ],
  "phone" : [ "13735561307" ],
  "email" : [ "dd@gmail.com" ],
  "status" : [ "0" ]
}','null',1,'com.wshsoft.sys.domain.Dept cannot be cast to com.wshsoft.system.domain.SysDept','2019-11-29 14:47:41');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('138','部门管理',2,'com.wshsoft.sys.controller.DeptController.editSave()','POST',1,'admin',NULL,'/sys/dept/edit','127.0.0.1','内网IP','{
  "deptId" : [ "110" ],
  "parentId" : [ "104" ],
  "parentName" : [ "市场部门" ],
  "deptName" : [ "e" ],
  "orderNum" : [ "0" ],
  "leader" : [ "" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "status" : [ "0" ]
}','null',1,'com.wshsoft.sys.domain.Dept cannot be cast to com.wshsoft.system.domain.SysDept','2019-11-29 14:49:52');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('139','部门管理',2,'com.wshsoft.sys.controller.DeptController.editSave()','POST',1,'admin',NULL,'/sys/dept/edit','127.0.0.1','内网IP','{
  "deptId" : [ "110" ],
  "parentId" : [ "104" ],
  "parentName" : [ "市场部门" ],
  "deptName" : [ "e" ],
  "orderNum" : [ "0" ],
  "leader" : [ "" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 14:51:38');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('140','部门管理',2,'com.wshsoft.sys.controller.DeptController.editSave()','POST',1,'admin',NULL,'/sys/dept/edit','127.0.0.1','内网IP','{
  "deptId" : [ "110" ],
  "parentId" : [ "104" ],
  "parentName" : [ "市场部门" ],
  "deptName" : [ "e" ],
  "orderNum" : [ "0" ],
  "leader" : [ "" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 14:52:16');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('141','部门管理',1,'com.wshsoft.sys.controller.DeptController.addSave()','POST',1,'admin',NULL,'/sys/dept/add','127.0.0.1','内网IP','{
  "parentId" : [ "114" ],
  "deptName" : [ "谢建" ],
  "orderNum" : [ "1" ],
  "leader" : [ "11" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 14:53:10');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('142','部门管理',1,'com.wshsoft.sys.controller.DeptController.addSave()','POST',1,'admin',NULL,'/sys/dept/add','127.0.0.1','内网IP','{
  "parentId" : [ "115" ],
  "deptName" : [ "e" ],
  "orderNum" : [ "2" ],
  "leader" : [ "2" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "status" : [ "0" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 14:53:31');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('143','代码生成',6,'com.wshsoft.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{
  "tables" : [ "sys_company" ]
}','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 17:34:31');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('144','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "24" ],
  "tableName" : [ "sys_company" ],
  "tableComment" : [ "公司表" ],
  "className" : [ "Company" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "282" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "公司id" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "companyId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "283" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "父公司id" ],
  "columns[1].javaType" : [ "Long" ],
  "columns[1].javaField" : [ "parentId" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].isList" : [ "1" ],
  "columns[1].isQuery" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "284" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "祖级列表" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "ancestors" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].isList" : [ "1" ],
  "columns[2].isQuery" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "285" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "公司名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "companyName" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "286" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "显示顺','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 17:35:38');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('145','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "24" ],
  "tableName" : [ "sys_company" ],
  "tableComment" : [ "公司表" ],
  "className" : [ "Company" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "282" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "公司id" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "companyId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "283" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "父公司id" ],
  "columns[1].javaType" : [ "Long" ],
  "columns[1].javaField" : [ "parentId" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "284" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "祖级列表" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "ancestors" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "285" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "公司名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "companyName" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "286" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "显示顺序" ],
  "columns[4].javaType" : [ "Integer" ],
  "columns[4].javaField" : [ "orderNum" ],
  "columns[4].isInsert" : [ "1" ],
  "column','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 17:37:53');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('146','代码生成',2,'com.wshsoft.generator.controller.GenController.editSave()','POST',1,'admin',NULL,'/tool/gen/edit','127.0.0.1','内网IP','{
  "tableId" : [ "24" ],
  "tableName" : [ "sys_company" ],
  "tableComment" : [ "公司表" ],
  "className" : [ "Company" ],
  "functionAuthor" : [ "Carry xie" ],
  "remark" : [ "" ],
  "columns[0].columnId" : [ "282" ],
  "columns[0].sort" : [ "1" ],
  "columns[0].columnComment" : [ "公司id" ],
  "columns[0].javaType" : [ "Long" ],
  "columns[0].javaField" : [ "companyId" ],
  "columns[0].isInsert" : [ "1" ],
  "columns[0].queryType" : [ "EQ" ],
  "columns[0].htmlType" : [ "input" ],
  "columns[0].dictType" : [ "" ],
  "columns[1].columnId" : [ "283" ],
  "columns[1].sort" : [ "2" ],
  "columns[1].columnComment" : [ "父公司id" ],
  "columns[1].javaType" : [ "Long" ],
  "columns[1].javaField" : [ "parentId" ],
  "columns[1].isInsert" : [ "1" ],
  "columns[1].isEdit" : [ "1" ],
  "columns[1].queryType" : [ "EQ" ],
  "columns[1].htmlType" : [ "input" ],
  "columns[1].dictType" : [ "" ],
  "columns[2].columnId" : [ "284" ],
  "columns[2].sort" : [ "3" ],
  "columns[2].columnComment" : [ "祖级列表" ],
  "columns[2].javaType" : [ "String" ],
  "columns[2].javaField" : [ "ancestors" ],
  "columns[2].isInsert" : [ "1" ],
  "columns[2].isEdit" : [ "1" ],
  "columns[2].queryType" : [ "EQ" ],
  "columns[2].htmlType" : [ "input" ],
  "columns[2].dictType" : [ "" ],
  "columns[3].columnId" : [ "285" ],
  "columns[3].sort" : [ "4" ],
  "columns[3].columnComment" : [ "公司名称" ],
  "columns[3].javaType" : [ "String" ],
  "columns[3].javaField" : [ "companyName" ],
  "columns[3].isInsert" : [ "1" ],
  "columns[3].isEdit" : [ "1" ],
  "columns[3].isList" : [ "1" ],
  "columns[3].isQuery" : [ "1" ],
  "columns[3].queryType" : [ "LIKE" ],
  "columns[3].htmlType" : [ "input" ],
  "columns[3].dictType" : [ "" ],
  "columns[4].columnId" : [ "286" ],
  "columns[4].sort" : [ "5" ],
  "columns[4].columnComment" : [ "显示顺序" ],
  "columns[4].javaType" : [ "Integer" ],
  "columns[4].javaField" : [ "orderNum" ],
  "columns[4].isInsert" : [ "1" ],
  "column','{
  "msg" : "操作成功",
  "code" : 0
}',0,NULL,'2019-11-29 17:38:26');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('147','代码生成',8,'com.wshsoft.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{
  "tables" : [ "sys_company" ]
}','null',0,NULL,'2019-11-29 17:39:21');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('148','公司管理',1,'com.wshsoft.sys.controller.CompanyController.addSave()','POST',1,'admin',NULL,'/sys/company/add','127.0.0.1','内网IP','{
  "parentId" : [ "102" ],
  "companyName" : [ "" ],
  "orderNum" : [ "" ],
  "leader" : [ "" ],
  "phone" : [ "" ],
  "email" : [ "" ],
  "status" : [ "1" ]
}','{
  "msg" : "新增部门''''失败，公司名称已存在",
  "code" : 500
}',0,NULL,'2019-11-29 18:16:45');
REPLACE INTO "sys_oper_log" ("oper_id", "title", "business_type", "method", "request_method", "operator_type", "oper_name", "dept_name", "oper_url", "oper_ip", "oper_location", "oper_param", "json_result", "status", "error_msg", "oper_time") VALUES
	('149','公司管理',1,'com.wshsoft.sys.controller.CompanyController.addSave()','POST',1,'admin',NULL,'/sys/company/add','127.0.0.1','内网IP','{
  "parentId" : [ "109" ],
  "companyName" : [ "" ],
  "orderNum" : [ "" ],
  "leader" : [ "" ],
  "phone" : [ "" ],
  "email" : [ "" ]
}','{
  "msg" : "新增部门''''失败，公司名称已存在",
  "code" : 500
}',0,NULL,'2019-11-29 18:17:14');
/*!40000 ALTER TABLE "sys_oper_log" ENABLE KEYS;*/
UNLOCK TABLES;


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
) AUTO_INCREMENT=5 COMMENT='岗位信息表';



#
# Dumping data for table 'sys_post'
#

LOCK TABLES "sys_post" WRITE;
/*!40000 ALTER TABLE "sys_post" DISABLE KEYS;*/
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('3','hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
REPLACE INTO "sys_post" ("post_id", "post_code", "post_name", "post_sort", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('4','user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
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
) AUTO_INCREMENT=3 COMMENT='角色信息表';



#
# Dumping data for table 'sys_role'
#

LOCK TABLES "sys_role" WRITE;
/*!40000 ALTER TABLE "sys_role" DISABLE KEYS;*/
REPLACE INTO "sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','管理员','admin',1,'1','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
REPLACE INTO "sys_role" ("role_id", "role_name", "role_key", "role_sort", "data_scope", "status", "del_flag", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('2','普通角色','common',2,'2','0','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','普通角色');
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

LOCK TABLES "sys_role_dept" WRITE;
/*!40000 ALTER TABLE "sys_role_dept" DISABLE KEYS;*/
REPLACE INTO "sys_role_dept" ("role_id", "dept_id") VALUES
	('2','100');
REPLACE INTO "sys_role_dept" ("role_id", "dept_id") VALUES
	('2','101');
REPLACE INTO "sys_role_dept" ("role_id", "dept_id") VALUES
	('2','105');
/*!40000 ALTER TABLE "sys_role_dept" ENABLE KEYS;*/
UNLOCK TABLES;


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

LOCK TABLES "sys_role_menu" WRITE;
/*!40000 ALTER TABLE "sys_role_menu" DISABLE KEYS;*/
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','2');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','3');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','100');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','101');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','102');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','103');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','104');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','105');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','106');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','107');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','108');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','109');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','110');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','111');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','112');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','113');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','114');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','115');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','500');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','501');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1000');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1001');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1002');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1003');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1004');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1005');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1006');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1007');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1008');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1009');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1010');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1011');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1012');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1013');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1014');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1015');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1016');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1017');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1018');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1019');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1020');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1021');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1022');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1023');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1024');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1025');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1026');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1027');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1028');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1029');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1030');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1031');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1032');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1033');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1034');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1035');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1036');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1037');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1038');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1039');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1040');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1041');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1042');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1043');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1044');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1045');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1046');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1047');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1048');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1049');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1050');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1051');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1052');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1053');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1054');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1055');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1056');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1057');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1058');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1059');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1060');
REPLACE INTO "sys_role_menu" ("role_id", "menu_id") VALUES
	('2','1061');
/*!40000 ALTER TABLE "sys_role_menu" ENABLE KEYS;*/
UNLOCK TABLES;


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
  "login_ip" varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  "login_date" datetime DEFAULT NULL COMMENT '最后登陆时间',
  "create_by" varchar(64) DEFAULT '' COMMENT '创建者',
  "create_time" datetime DEFAULT NULL COMMENT '创建时间',
  "update_by" varchar(64) DEFAULT '' COMMENT '更新者',
  "update_time" datetime DEFAULT NULL COMMENT '更新时间',
  "remark" varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY ("user_id")
) AUTO_INCREMENT=3 COMMENT='用户信息表';



#
# Dumping data for table 'sys_user'
#

LOCK TABLES "sys_user" WRITE;
/*!40000 ALTER TABLE "sys_user" DISABLE KEYS;*/
REPLACE INTO "sys_user" ("user_id", "dept_id", "login_name", "modifyed", "user_name", "user_type", "email", "phonenumber", "gender", "avatar", "password", "salt", "status", "del_flag", "login_ip", "login_date", "create_by", "create_time", "update_by", "update_time", "remark") VALUES
	('1','103','admin',NULL,'超级管理员','00','ry@163.com','15888888888','0','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2019-11-29 17:34:06','admin','2018-03-16 11:33:00','ry','2019-11-29 17:34:06','管理员');
/*!40000 ALTER TABLE "sys_user" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sys_user_online'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sys_user_online" (
  "sessionId" varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  "login_name" varchar(50) DEFAULT '' COMMENT '登录账号',
  "dept_name" varchar(50) DEFAULT '' COMMENT '部门名称',
  "ipaddr" varchar(50) DEFAULT '' COMMENT '登录IP地址',
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

LOCK TABLES "sys_user_post" WRITE;
/*!40000 ALTER TABLE "sys_user_post" DISABLE KEYS;*/
REPLACE INTO "sys_user_post" ("user_id", "post_id") VALUES
	('1','1');
REPLACE INTO "sys_user_post" ("user_id", "post_id") VALUES
	('2','2');
/*!40000 ALTER TABLE "sys_user_post" ENABLE KEYS;*/
UNLOCK TABLES;


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
	('1','1');
REPLACE INTO "sys_user_role" ("user_id", "role_id") VALUES
	('2','2');
/*!40000 ALTER TABLE "sys_user_role" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
