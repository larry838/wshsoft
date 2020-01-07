
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_unique` char(1) DEFAULT NULL COMMENT '是否唯一 (1是)',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_company`
-- ----------------------------
DROP TABLE IF EXISTS `sys_company`;
CREATE TABLE `sys_company` (
  `company_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父公司id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `company_name` varchar(30) DEFAULT '' COMMENT '公司名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '公司状态（0正常 1停用）',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='公司表';

-- ----------------------------
-- Records of sys_company
-- ----------------------------
INSERT INTO `sys_company` VALUES ('100', '0', '0', '睿创科技', '0', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('101', '100', '0,100', '深圳总公司', '1', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('102', '100', '0,100', '长沙分公司', '2', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('103', '101', '0,100,101', '研发部门', '1', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('104', '101', '0,100,101', '市场部门', '2', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('105', '101', '0,100,101', '测试部门', '3', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('106', '101', '0,100,101', '财务部门', '4', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('107', '101', '0,100,101', '运维部门', '5', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('108', '102', '0,100,102', '市场部门', '1', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);
INSERT INTO `sys_company` VALUES ('109', '102', '0,100,102', '财务部门', '2', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:24:50', '', null, null);

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'root', '2020-01-06 16:25:00', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'root', '2020-01-06 16:25:00', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'root', '2020-01-06 16:25:00', '', null, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '全集团', '0', 'admin', '15888888888', 'admin@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', 'root', '2020-01-06 16:36:20', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '睿创', '15888888888', 'ry@qq.com', '0', '0', 'root', '2020-01-06 16:25:08', '', null, null);

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_gender', '', '', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_gender', '', '', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_gender', '', '', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'root', '2020-01-06 16:25:30', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'root', '2020-01-06 16:25:30', '', null, '停用状态');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_gender', '0', 'root', '2020-01-06 16:25:40', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'root', '2020-01-06 16:25:40', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'root', '2020-01-06 16:25:40', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'root', '2020-01-06 16:25:40', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'root', '2020-01-06 16:25:40', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'root', '2020-01-06 16:25:40', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'root', '2020-01-06 16:25:40', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'root', '2020-01-06 16:25:40', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'root', '2020-01-06 16:25:40', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'root', '2020-01-06 16:25:40', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'root', '2020-01-06 16:25:50', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'root', '2020-01-06 16:25:50', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'root', '2020-01-06 16:25:50', '', null, '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ip_address` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `parent_path` tinyint(3) unsigned DEFAULT NULL COMMENT '父权限ID路径',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `permission_code` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', null, '1', '#', '', 'M', '0', '', 'fa fa-gear', 'root', '2020-01-06 16:24:11', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', null, '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'root', '2020-01-06 16:24:11', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', null, '3', '#', '', 'M', '0', '', 'fa fa-bars', 'root', '2020-01-06 16:24:11', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '用户管理', '1', null, '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'root', '2020-01-06 16:24:11', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('5', '角色管理', '1', null, '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'root', '2020-01-06 16:24:11', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('6', '菜单管理', '1', null, '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'root', '2020-01-06 16:24:11', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('7', '部门管理', '1', null, '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'root', '2020-01-06 16:24:11', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('8', '岗位管理', '1', null, '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'root', '2020-01-06 16:24:11', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('9', '字典管理', '1', null, '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'root', '2020-01-06 16:24:11', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('10', '参数设置', '1', null, '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'root', '2020-01-06 16:24:11', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('11', '通知公告', '1', null, '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'root', '2020-01-06 16:24:11', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('12', '日志管理', '1', null, '9', '#', '', 'M', '0', '', '#', 'root', '2020-01-06 16:24:11', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('13', '在线用户', '2', null, '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'root', '2020-01-06 16:24:11', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('14', '定时任务', '2', null, '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'root', '2020-01-06 16:24:11', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('15', '数据监控', '2', null, '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'root', '2020-01-06 16:24:11', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('16', '服务监控', '2', null, '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'root', '2020-01-06 16:24:11', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('17', '表单构建', '3', null, '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'root', '2020-01-06 16:24:11', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('18', '代码生成', '3', null, '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'root', '2020-01-06 16:24:11', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('19', '系统接口', '3', null, '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'root', '2020-01-06 16:24:11', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('20', '操作日志', '12', null, '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'root', '2020-01-06 16:24:11', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('21', '登录日志', '12', null, '2', '/monitor/loginLog', '', 'C', '0', 'monitor:loginLog:view', '#', 'root', '2020-01-06 16:24:11', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('22', '用户查询', '4', null, '1', '#', '', 'F', '0', 'system:user:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('23', '用户新增', '4', null, '2', '#', '', 'F', '0', 'system:user:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('24', '用户修改', '4', null, '3', '#', '', 'F', '0', 'system:user:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('25', '用户删除', '4', null, '4', '#', '', 'F', '0', 'system:user:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('26', '用户导出', '4', null, '5', '#', '', 'F', '0', 'system:user:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('27', '用户导入', '4', null, '6', '#', '', 'F', '0', 'system:user:import', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('28', '重置密码', '4', null, '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('29', '角色查询', '5', null, '1', '#', '', 'F', '0', 'system:role:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('30', '角色新增', '5', null, '2', '#', '', 'F', '0', 'system:role:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('31', '角色修改', '5', null, '3', '#', '', 'F', '0', 'system:role:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('32', '角色删除', '5', null, '4', '#', '', 'F', '0', 'system:role:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('33', '角色导出', '5', null, '5', '#', '', 'F', '0', 'system:role:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('34', '菜单查询', '6', null, '1', '#', '', 'F', '0', 'system:menu:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('35', '菜单新增', '6', null, '2', '#', '', 'F', '0', 'system:menu:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('36', '菜单修改', '6', null, '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('37', '菜单删除', '6', null, '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('38', '部门查询', '7', null, '1', '#', '', 'F', '0', 'system:dept:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('39', '部门新增', '7', null, '2', '#', '', 'F', '0', 'system:dept:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('40', '部门修改', '7', null, '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('41', '部门删除', '7', null, '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('42', '岗位查询', '8', null, '1', '#', '', 'F', '0', 'system:post:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('43', '岗位新增', '8', null, '2', '#', '', 'F', '0', 'system:post:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('44', '岗位修改', '8', null, '3', '#', '', 'F', '0', 'system:post:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('45', '岗位删除', '8', null, '4', '#', '', 'F', '0', 'system:post:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('46', '岗位导出', '8', null, '5', '#', '', 'F', '0', 'system:post:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('47', '字典查询', '9', null, '1', '#', '', 'F', '0', 'system:dict:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('48', '字典新增', '9', null, '2', '#', '', 'F', '0', 'system:dict:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('49', '字典修改', '9', null, '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('50', '字典删除', '9', null, '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('51', '字典导出', '9', null, '5', '#', '', 'F', '0', 'system:dict:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('52', '参数查询', '10', null, '1', '#', '', 'F', '0', 'system:config:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('53', '参数新增', '10', null, '2', '#', '', 'F', '0', 'system:config:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('54', '参数修改', '10', null, '3', '#', '', 'F', '0', 'system:config:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('55', '参数删除', '10', null, '4', '#', '', 'F', '0', 'system:config:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('56', '参数导出', '10', null, '5', '#', '', 'F', '0', 'system:config:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('57', '公告查询', '11', null, '1', '#', '', 'F', '0', 'system:notice:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('58', '公告新增', '11', null, '2', '#', '', 'F', '0', 'system:notice:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('59', '公告修改', '11', null, '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('60', '公告删除', '11', null, '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('61', '操作查询', '20', null, '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('62', '操作删除', '20', null, '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('63', '详细信息', '20', null, '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('64', '日志导出', '20', null, '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('65', '登录查询', '21', null, '1', '#', '', 'F', '0', 'monitor:loginLog:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('66', '登录删除', '21', null, '2', '#', '', 'F', '0', 'monitor:loginLog:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('67', '日志导出', '21', null, '3', '#', '', 'F', '0', 'monitor:loginLog:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('68', '账户解锁', '21', null, '4', '#', '', 'F', '0', 'monitor:loginLog:unlock', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('69', '在线查询', '13', null, '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('70', '批量强退', '13', null, '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('71', '单条强退', '13', null, '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('72', '任务查询', '14', null, '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('73', '任务新增', '14', null, '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('74', '任务修改', '14', null, '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('75', '任务删除', '14', null, '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('76', '状态修改', '14', null, '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('77', '任务详细', '14', null, '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('78', '任务导出', '14', null, '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('79', '生成查询', '18', null, '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('80', '生成修改', '18', null, '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('81', '生成删除', '18', null, '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('82', '预览代码', '18', null, '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'root', '2020-01-06 16:24:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('83', '生成代码', '18', null, '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'root', '2020-01-06 16:24:11', '', null, '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 新版本发布啦', '2', '新版本内容', '0', 'root', '2020-01-06 17:00:17', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 系统凌晨维护', '1', '维护内容', '0', 'root', '2020-01-06 17:00:17', '', null, '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'root', '2020-01-06 17:00:36', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'pm', '项目经理', '2', '0', 'root', '2020-01-06 17:00:36', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'root', '2020-01-06 17:00:36', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'root', '2020-01-06 17:00:36', '', null, '');
INSERT INTO `sys_post` VALUES ('5', 'kj', '会计', '5', '0', 'root', '2020-01-06 17:00:36', '', null, null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'root', '1', '1', '0', '0', 'root', '2020-01-06 17:00:46', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '测试', 'test', '2', '1', '0', '0', 'root', '2020-01-06 17:00:46', '', null, '测试');
INSERT INTO `sys_role` VALUES ('3', '员工', 'staff', '3', '1', '0', '0', 'root', '2020-01-06 17:00:46', '', null, '员工');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `modifyed` char(1) DEFAULT '0' COMMENT '初始化0，1已修改',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `gender` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'root', '0', '超级管理员', '00', 'root@wshsoft.com', '13735561307', '0', '/profile/avatar/2020/01/06/2dce2fb53e7a4b63428cf1ec6b5c9beb.png', 'b1d33eaa6dcf8acc8114b62cb10b02b8', '123456', '0', '0', '127.0.0.1', '2020-01-06 17:40:29', 'root', '2020-01-06 17:01:00', '', '2020-01-06 17:40:29', '超级管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'test', '0', '测试帐号', '00', 'test@wshsoft.com', '13777858464', '0', '', 'bdbbd48177df6fb86b829ef7be29ee56', '1e4d6b', '0', '0', '', null, 'root', '2020-01-06 17:01:00', 'root', '2020-01-06 17:40:53', '');
INSERT INTO `sys_user` VALUES ('3', '104', 'user', '0', '普通员工', '00', 'user@wshsoft.com', '13735561308', '0', '', 'eb40b979368ec731eefaede4a62c54b6', '8e1761', '0', '0', '127.0.0.1', '2020-01-06 16:53:32', 'root', '2020-01-06 17:01:00', 'root', '2020-01-06 17:42:17', '');

-- ----------------------------
-- Table structure for `sys_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('3', '4');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '3');
