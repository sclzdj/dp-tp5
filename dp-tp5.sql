/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : dp-tp5

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-10-27 20:32:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dt5_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_access`;
CREATE TABLE `dt5_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '授权节点id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

-- ----------------------------
-- Records of dt5_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for dt5_admin_action
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_action`;
CREATE TABLE `dt5_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of dt5_admin_action
-- ----------------------------
INSERT INTO `dt5_admin_action` VALUES ('1', 'user', 'user_add', '添加用户', '添加用户', '', '[user|get_nickname] 添加了用户：[record|get_nickname]', '1', '1480156399', '1480163853');
INSERT INTO `dt5_admin_action` VALUES ('2', 'user', 'user_edit', '编辑用户', '编辑用户', '', '[user|get_nickname] 编辑了用户：[details]', '1', '1480164578', '1480297748');
INSERT INTO `dt5_admin_action` VALUES ('3', 'user', 'user_delete', '删除用户', '删除用户', '', '[user|get_nickname] 删除了用户：[details]', '1', '1480168582', '1480168616');
INSERT INTO `dt5_admin_action` VALUES ('4', 'user', 'user_enable', '启用用户', '启用用户', '', '[user|get_nickname] 启用了用户：[details]', '1', '1480169185', '1480169185');
INSERT INTO `dt5_admin_action` VALUES ('5', 'user', 'user_disable', '禁用用户', '禁用用户', '', '[user|get_nickname] 禁用了用户：[details]', '1', '1480169214', '1480170581');
INSERT INTO `dt5_admin_action` VALUES ('6', 'user', 'user_access', '用户授权', '用户授权', '', '[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]', '1', '1480221441', '1480221563');
INSERT INTO `dt5_admin_action` VALUES ('7', 'user', 'role_add', '添加角色', '添加角色', '', '[user|get_nickname] 添加了角色：[details]', '1', '1480251473', '1480251473');
INSERT INTO `dt5_admin_action` VALUES ('8', 'user', 'role_edit', '编辑角色', '编辑角色', '', '[user|get_nickname] 编辑了角色：[details]', '1', '1480252369', '1480252369');
INSERT INTO `dt5_admin_action` VALUES ('9', 'user', 'role_delete', '删除角色', '删除角色', '', '[user|get_nickname] 删除了角色：[details]', '1', '1480252580', '1480252580');
INSERT INTO `dt5_admin_action` VALUES ('10', 'user', 'role_enable', '启用角色', '启用角色', '', '[user|get_nickname] 启用了角色：[details]', '1', '1480252620', '1480252620');
INSERT INTO `dt5_admin_action` VALUES ('11', 'user', 'role_disable', '禁用角色', '禁用角色', '', '[user|get_nickname] 禁用了角色：[details]', '1', '1480252651', '1480252651');
INSERT INTO `dt5_admin_action` VALUES ('12', 'user', 'attachment_enable', '启用附件', '启用附件', '', '[user|get_nickname] 启用了附件：附件ID([details])', '1', '1480253226', '1480253332');
INSERT INTO `dt5_admin_action` VALUES ('13', 'user', 'attachment_disable', '禁用附件', '禁用附件', '', '[user|get_nickname] 禁用了附件：附件ID([details])', '1', '1480253267', '1480253340');
INSERT INTO `dt5_admin_action` VALUES ('14', 'user', 'attachment_delete', '删除附件', '删除附件', '', '[user|get_nickname] 删除了附件：附件ID([details])', '1', '1480253323', '1480253323');
INSERT INTO `dt5_admin_action` VALUES ('15', 'admin', 'config_add', '添加配置', '添加配置', '', '[user|get_nickname] 添加了配置，[details]', '1', '1480296196', '1480296196');
INSERT INTO `dt5_admin_action` VALUES ('16', 'admin', 'config_edit', '编辑配置', '编辑配置', '', '[user|get_nickname] 编辑了配置：[details]', '1', '1480296960', '1480296960');
INSERT INTO `dt5_admin_action` VALUES ('17', 'admin', 'config_enable', '启用配置', '启用配置', '', '[user|get_nickname] 启用了配置：[details]', '1', '1480298479', '1480298479');
INSERT INTO `dt5_admin_action` VALUES ('18', 'admin', 'config_disable', '禁用配置', '禁用配置', '', '[user|get_nickname] 禁用了配置：[details]', '1', '1480298506', '1480298506');
INSERT INTO `dt5_admin_action` VALUES ('19', 'admin', 'config_delete', '删除配置', '删除配置', '', '[user|get_nickname] 删除了配置：[details]', '1', '1480298532', '1480298532');
INSERT INTO `dt5_admin_action` VALUES ('20', 'admin', 'database_export', '备份数据库', '备份数据库', '', '[user|get_nickname] 备份了数据库：[details]', '1', '1480298946', '1480298946');
INSERT INTO `dt5_admin_action` VALUES ('21', 'admin', 'database_import', '还原数据库', '还原数据库', '', '[user|get_nickname] 还原了数据库：[details]', '1', '1480301990', '1480302022');
INSERT INTO `dt5_admin_action` VALUES ('22', 'admin', 'database_optimize', '优化数据表', '优化数据表', '', '[user|get_nickname] 优化了数据表：[details]', '1', '1480302616', '1480302616');
INSERT INTO `dt5_admin_action` VALUES ('23', 'admin', 'database_repair', '修复数据表', '修复数据表', '', '[user|get_nickname] 修复了数据表：[details]', '1', '1480302798', '1480302798');
INSERT INTO `dt5_admin_action` VALUES ('24', 'admin', 'database_backup_delete', '删除数据库备份', '删除数据库备份', '', '[user|get_nickname] 删除了数据库备份：[details]', '1', '1480302870', '1480302870');
INSERT INTO `dt5_admin_action` VALUES ('25', 'admin', 'hook_add', '添加钩子', '添加钩子', '', '[user|get_nickname] 添加了钩子：[details]', '1', '1480303198', '1480303198');
INSERT INTO `dt5_admin_action` VALUES ('26', 'admin', 'hook_edit', '编辑钩子', '编辑钩子', '', '[user|get_nickname] 编辑了钩子：[details]', '1', '1480303229', '1480303229');
INSERT INTO `dt5_admin_action` VALUES ('27', 'admin', 'hook_delete', '删除钩子', '删除钩子', '', '[user|get_nickname] 删除了钩子：[details]', '1', '1480303264', '1480303264');
INSERT INTO `dt5_admin_action` VALUES ('28', 'admin', 'hook_enable', '启用钩子', '启用钩子', '', '[user|get_nickname] 启用了钩子：[details]', '1', '1480303294', '1480303294');
INSERT INTO `dt5_admin_action` VALUES ('29', 'admin', 'hook_disable', '禁用钩子', '禁用钩子', '', '[user|get_nickname] 禁用了钩子：[details]', '1', '1480303409', '1480303409');
INSERT INTO `dt5_admin_action` VALUES ('30', 'admin', 'menu_add', '添加节点', '添加节点', '', '[user|get_nickname] 添加了节点：[details]', '1', '1480305468', '1480305468');
INSERT INTO `dt5_admin_action` VALUES ('31', 'admin', 'menu_edit', '编辑节点', '编辑节点', '', '[user|get_nickname] 编辑了节点：[details]', '1', '1480305513', '1480305513');
INSERT INTO `dt5_admin_action` VALUES ('32', 'admin', 'menu_delete', '删除节点', '删除节点', '', '[user|get_nickname] 删除了节点：[details]', '1', '1480305562', '1480305562');
INSERT INTO `dt5_admin_action` VALUES ('33', 'admin', 'menu_enable', '启用节点', '启用节点', '', '[user|get_nickname] 启用了节点：[details]', '1', '1480305630', '1480305630');
INSERT INTO `dt5_admin_action` VALUES ('34', 'admin', 'menu_disable', '禁用节点', '禁用节点', '', '[user|get_nickname] 禁用了节点：[details]', '1', '1480305659', '1480305659');
INSERT INTO `dt5_admin_action` VALUES ('35', 'admin', 'module_install', '安装模块', '安装模块', '', '[user|get_nickname] 安装了模块：[details]', '1', '1480307558', '1480307558');
INSERT INTO `dt5_admin_action` VALUES ('36', 'admin', 'module_uninstall', '卸载模块', '卸载模块', '', '[user|get_nickname] 卸载了模块：[details]', '1', '1480307588', '1480307588');
INSERT INTO `dt5_admin_action` VALUES ('37', 'admin', 'module_enable', '启用模块', '启用模块', '', '[user|get_nickname] 启用了模块：[details]', '1', '1480307618', '1480307618');
INSERT INTO `dt5_admin_action` VALUES ('38', 'admin', 'module_disable', '禁用模块', '禁用模块', '', '[user|get_nickname] 禁用了模块：[details]', '1', '1480307653', '1480307653');
INSERT INTO `dt5_admin_action` VALUES ('39', 'admin', 'module_export', '导出模块', '导出模块', '', '[user|get_nickname] 导出了模块：[details]', '1', '1480307682', '1480307682');
INSERT INTO `dt5_admin_action` VALUES ('40', 'admin', 'packet_install', '安装数据包', '安装数据包', '', '[user|get_nickname] 安装了数据包：[details]', '1', '1480308342', '1480308342');
INSERT INTO `dt5_admin_action` VALUES ('41', 'admin', 'packet_uninstall', '卸载数据包', '卸载数据包', '', '[user|get_nickname] 卸载了数据包：[details]', '1', '1480308372', '1480308372');
INSERT INTO `dt5_admin_action` VALUES ('42', 'admin', 'system_config_update', '更新系统设置', '更新系统设置', '', '[user|get_nickname] 更新了系统设置：[details]', '1', '1480309555', '1480309642');

-- ----------------------------
-- Table structure for dt5_admin_attachment
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_attachment`;
CREATE TABLE `dt5_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(128) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(8) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `width` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片高度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of dt5_admin_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for dt5_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_config`;
CREATE TABLE `dt5_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of dt5_admin_config
-- ----------------------------
INSERT INTO `dt5_admin_config` VALUES ('1', 'web_site_status', '站点开关', 'base', 'switch', '1', '', '站点关闭后将不能访问，后台可正常登录', '', '', '', '', '', '2', '', '', '', '', '1475240395', '1477403914', '1', '1');
INSERT INTO `dt5_admin_config` VALUES ('2', 'web_site_title', '站点标题', 'base', 'text', '后台管理系统', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240646', '1477710341', '2', '1');
INSERT INTO `dt5_admin_config` VALUES ('3', 'web_site_slogan', '站点标语', 'base', 'text', '一套实用而又完美的后台管理系统', '', '站点口号，调用方式：<code>config(\'web_site_slogan\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240994', '1477710357', '3', '1');
INSERT INTO `dt5_admin_config` VALUES ('4', 'web_site_logo', '站点LOGO', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241067', '1475241067', '4', '1');
INSERT INTO `dt5_admin_config` VALUES ('5', 'web_site_description', '站点描述', 'base', 'textarea', '一套实用而又完美的后台管理系统，你值得拥有', '', '网站描述，有利于搜索引擎抓取相关信息', '', '', '', '', '', '2', '', '', '', '', '1475241186', '1475241186', '6', '1');
INSERT INTO `dt5_admin_config` VALUES ('6', 'web_site_keywords', '站点关键词', 'base', 'text', 'PHP、PHP开发框架、后台框架', '', '网站搜索引擎关键字', '', '', '', '', '', '2', '', '', '', '', '1475241328', '1475241328', '7', '1');
INSERT INTO `dt5_admin_config` VALUES ('7', 'web_site_copyright', '版权信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_copyright\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241416', '1477710383', '8', '1');
INSERT INTO `dt5_admin_config` VALUES ('8', 'web_site_icp', '备案信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_icp\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241441', '1477710441', '9', '1');
INSERT INTO `dt5_admin_config` VALUES ('9', 'web_site_statistics', '站点统计', 'base', 'textarea', '', '', '网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241498', '1477710455', '10', '1');
INSERT INTO `dt5_admin_config` VALUES ('10', 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241716', '1477649446', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('11', 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241835', '1495853193', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('12', 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475241897', '1477663520', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('13', 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475241975', '1477649489', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('14', 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475242015', '1477663529', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('15', 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475242056', '1477649506', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('16', 'list_rows', '分页数量', 'system', 'number', '20', '', '每页的记录数', '', '', '', '', '', '2', '', '', '', '', '1475242066', '1476074507', '101', '1');
INSERT INTO `dt5_admin_config` VALUES ('17', 'system_color', '后台配色方案', 'system', 'radio', 'default', 'default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth', '', '', '', '', '', '', '2', '', '', '', '', '1475250066', '1477316689', '102', '1');
INSERT INTO `dt5_admin_config` VALUES ('18', 'develop_mode', '开发模式', 'develop', 'radio', '1', '0:关闭\r\n1:开启', '', '', '', '', '', '', '2', '', '', '', '', '1476864205', '1476864231', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('19', 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', '2', '', '', '', '', '1476866355', '1476866355', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('21', 'data_backup_path', '数据库备份根路径', 'database', 'text', '../data/', '', '路径必须以 / 结尾', '', '', '', '', '', '2', '', '', '', '', '1477017745', '1477018467', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('22', 'data_backup_part_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '', '', '', '', '2', '', '', '', '', '1477017886', '1477017886', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('23', 'data_backup_compress', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:否\r\n1:是', '压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数', '', '', '', '', '', '2', '', '', '', '', '1477017978', '1477018172', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('24', 'data_backup_compress_level', '数据库备份文件压缩级别', 'database', 'radio', '9', '1:最低\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '', '', '', '', '2', '', '', '', '', '1477018083', '1477018083', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('25', 'top_menu_max', '顶部导航模块数量', 'system', 'text', '10', '', '设置顶部导航默认显示的模块数量', '', '', '', '', '', '2', '', '', '', '', '1477579289', '1477579289', '103', '1');
INSERT INTO `dt5_admin_config` VALUES ('26', 'web_site_logo_text', '站点LOGO文字', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1477620643', '1477620643', '5', '1');
INSERT INTO `dt5_admin_config` VALUES ('27', 'upload_image_thumb', '缩略图尺寸', 'upload', 'text', '', '', '不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号', '', '', '', '', '', '2', '', '', '', '', '1477644150', '1477649513', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('28', 'upload_image_thumb_type', '缩略图裁剪类型', 'upload', 'radio', '1', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放', '该项配置只有在启用生成缩略图时才生效', '', '', '', '', '', '2', '', '', '', '', '1477646271', '1477649521', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('29', 'upload_thumb_water', '添加水印', 'upload', 'switch', '0', '', '', '', '', '', '', '', '2', '', '', '', '', '1477649648', '1477649648', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('30', 'upload_thumb_water_pic', '水印图片', 'upload', 'image', '', '', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656390', '1477656390', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('31', 'upload_thumb_water_position', '水印位置', 'upload', 'radio', '9', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656528', '1477656528', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('32', 'upload_thumb_water_alpha', '水印透明度', 'upload', 'text', '50', '', '请输入0~100之间的数字，数字越小，透明度越高', '', '', '', '', '', '2', '', '', '', '', '1477656714', '1477661309', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('33', 'wipe_cache_type', '清除缓存类型', 'system', 'checkbox', 'TEMP_PATH', 'TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存', '清除缓存时，要删除的缓存类型', '', '', '', '', '', '2', '', '', '', '', '1477727305', '1477727305', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('34', 'captcha_signin', '后台验证码开关', 'system', 'switch', '0', '', '后台登录时是否需要验证码', '', '', '', '', '', '2', '', '', '', '', '1478771958', '1478771958', '99', '1');
INSERT INTO `dt5_admin_config` VALUES ('35', 'home_default_module', '前台默认模块', 'system', 'select', 'index', '', '前台默认访问的模块，该模块必须有Index控制器和index方法', '', '', '', '', '', '0', '', '', '', '', '1486714723', '1486715620', '104', '1');
INSERT INTO `dt5_admin_config` VALUES ('36', 'minify_status', '开启minify', 'system', 'switch', '0', '', '开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭', '', '', '', '', '', '0', '', '', '', '', '1487035843', '1487035843', '99', '1');
INSERT INTO `dt5_admin_config` VALUES ('37', 'upload_driver', '上传驱动', 'upload', 'radio', 'local', 'local:本地', '图片或文件上传驱动', '', '', '', '', '', '0', '', '', '', '', '1501488567', '1501490821', '100', '1');
INSERT INTO `dt5_admin_config` VALUES ('38', 'system_log', '系统日志', 'system', 'switch', '1', '', '是否开启系统日志功能', '', '', '', '', '', '0', '', '', '', '', '1512635391', '1512635391', '99', '1');
INSERT INTO `dt5_admin_config` VALUES ('39', 'asset_version', '资源版本号', 'develop', 'text', '20180327', '', '可通过修改版号强制用户更新静态文件', '', '', '', '', '', '0', '', '', '', '', '1522143239', '1522143239', '100', '1');

-- ----------------------------
-- Table structure for dt5_admin_hook
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_hook`;
CREATE TABLE `dt5_admin_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of dt5_admin_hook
-- ----------------------------
INSERT INTO `dt5_admin_hook` VALUES ('1', 'admin_index', '', '后台首页', '1', '1468174214', '1477757518', '1');
INSERT INTO `dt5_admin_hook` VALUES ('2', 'plugin_index_tab_list', '', '插件扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dt5_admin_hook` VALUES ('3', 'module_index_tab_list', '', '模块扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `dt5_admin_hook` VALUES ('4', 'page_tips', '', '每个页面的提示', '1', '1468174214', '1468174214', '1');
INSERT INTO `dt5_admin_hook` VALUES ('5', 'signin_footer', '', '登录页面底部钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dt5_admin_hook` VALUES ('6', 'signin_captcha', '', '登录页面验证码钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `dt5_admin_hook` VALUES ('7', 'signin', '', '登录控制器钩子', '1', '1479386875', '1479386875', '1');
INSERT INTO `dt5_admin_hook` VALUES ('8', 'upload_attachment', '', '附件上传钩子', '1', '1501493808', '1501493808', '1');
INSERT INTO `dt5_admin_hook` VALUES ('9', 'page_plugin_js', '', '页面插件js钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('10', 'page_plugin_css', '', '页面插件css钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('11', 'signin_sso', '', '单点登录钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('12', 'signout_sso', '', '单点退出钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('13', 'user_add', '', '添加用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('14', 'user_edit', '', '编辑用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('15', 'user_delete', '', '删除用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('16', 'user_enable', '', '启用用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `dt5_admin_hook` VALUES ('17', 'user_disable', '', '禁用用户钩子', '1', '1503633591', '1503633591', '1');

-- ----------------------------
-- Table structure for dt5_admin_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_hook_plugin`;
CREATE TABLE `dt5_admin_hook_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

-- ----------------------------
-- Records of dt5_admin_hook_plugin
-- ----------------------------
INSERT INTO `dt5_admin_hook_plugin` VALUES ('1', 'admin_index', 'SystemInfo', '1477757503', '1477757503', '1', '1');
INSERT INTO `dt5_admin_hook_plugin` VALUES ('2', 'admin_index', 'DevTeam', '1477755780', '1477755780', '2', '1');

-- ----------------------------
-- Table structure for dt5_admin_icon
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_icon`;
CREATE TABLE `dt5_admin_icon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '图标名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图标css地址',
  `prefix` varchar(32) NOT NULL DEFAULT '' COMMENT '图标前缀',
  `font_family` varchar(32) NOT NULL DEFAULT '' COMMENT '字体名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图标表';

-- ----------------------------
-- Records of dt5_admin_icon
-- ----------------------------

-- ----------------------------
-- Table structure for dt5_admin_icon_list
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_icon_list`;
CREATE TABLE `dt5_admin_icon_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属图标id',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '图标标题',
  `class` varchar(255) NOT NULL DEFAULT '' COMMENT '图标类名',
  `code` varchar(128) NOT NULL DEFAULT '' COMMENT '图标关键词',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='详细图标列表';

-- ----------------------------
-- Records of dt5_admin_icon_list
-- ----------------------------

-- ----------------------------
-- Table structure for dt5_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_log`;
CREATE TABLE `dt5_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of dt5_admin_log
-- ----------------------------
INSERT INTO `dt5_admin_log` VALUES ('1', '7', '1', '2130706433', 'admin_role', '2', '程序员 添加了角色：超级管理员', '1', '1540448663');
INSERT INTO `dt5_admin_log` VALUES ('2', '1', '1', '2130706433', 'admin_user', '2', '程序员 添加了用户：站长', '1', '1540448761');
INSERT INTO `dt5_admin_log` VALUES ('3', '8', '1', '2130706433', 'admin_role', '2', '程序员 编辑了角色：超级管理员', '1', '1540448825');
INSERT INTO `dt5_admin_log` VALUES ('4', '8', '1', '2130706433', 'admin_role', '2', '程序员 编辑了角色：超级管理员', '1', '1540449029');
INSERT INTO `dt5_admin_log` VALUES ('5', '35', '1', '2130706433', 'admin_module', '0', '程序员 安装了模块：项目', '1', '1540449897');
INSERT INTO `dt5_admin_log` VALUES ('6', '35', '1', '2130706433', 'admin_module', '0', '程序员 安装了模块：项目', '1', '1540449897');
INSERT INTO `dt5_admin_log` VALUES ('7', '30', '1', '2130706433', 'admin_menu', '236', '程序员 添加了节点：所属模块(project),所属节点ID(0),节点标题(分类管理),节点链接(project/category/index)', '1', '1540450155');
INSERT INTO `dt5_admin_log` VALUES ('8', '30', '1', '2130706433', 'admin_menu', '240', '程序员 添加了节点：所属模块(project),所属节点ID(0),节点标题(项目),节点链接(admin/index/index)', '1', '1540450218');
INSERT INTO `dt5_admin_log` VALUES ('9', '30', '1', '2130706433', 'admin_menu', '241', '程序员 添加了节点：所属模块(project),所属节点ID(240),节点标题(栏目中心),节点链接()', '1', '1540450276');
INSERT INTO `dt5_admin_log` VALUES ('10', '2', '1', '2130706433', 'admin_user', '1', '程序员 编辑了用户：程序员', '1', '1540450690');
INSERT INTO `dt5_admin_log` VALUES ('11', '30', '1', '2130706433', 'admin_menu', '242', '程序员 添加了节点：所属模块(project),所属节点ID(241),节点标题(项目首页),节点链接(project/index/index)', '1', '1540450762');
INSERT INTO `dt5_admin_log` VALUES ('12', '31', '1', '2130706433', 'admin_menu', '240', '程序员 编辑了节点：节点ID(240)', '1', '1540450795');
INSERT INTO `dt5_admin_log` VALUES ('13', '31', '1', '2130706433', 'admin_menu', '240', '程序员 编辑了节点：节点ID(240)', '1', '1540462470');
INSERT INTO `dt5_admin_log` VALUES ('14', '42', '1', '2130706433', 'admin_config', '0', '程序员 更新了系统设置：分组(base)', '1', '1540464580');
INSERT INTO `dt5_admin_log` VALUES ('15', '42', '1', '2130706433', 'admin_config', '0', '程序员 更新了系统设置：分组(base)', '1', '1540464617');
INSERT INTO `dt5_admin_log` VALUES ('16', '42', '1', '2130706433', 'admin_config', '0', '程序员 更新了系统设置：分组(base)', '1', '1540464632');
INSERT INTO `dt5_admin_log` VALUES ('17', '30', '1', '2130706433', 'admin_menu', '243', '程序员 添加了节点：所属模块(project),所属节点ID(236),节点标题(排序),节点链接(project/category/save)', '1', '1540464849');
INSERT INTO `dt5_admin_log` VALUES ('18', '31', '1', '2130706433', 'admin_menu', '243', '程序员 编辑了节点：节点ID(243)', '1', '1540464858');

-- ----------------------------
-- Table structure for dt5_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_menu`;
CREATE TABLE `dt5_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of dt5_admin_menu
-- ----------------------------
INSERT INTO `dt5_admin_menu` VALUES ('1', '0', 'admin', '首页', 'fa fa-fw fa-home', 'module_admin', 'admin/index/index', '_self', '0', '1467617722', '1477710540', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('2', '1', 'admin', '快捷操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1467618170', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('3', '2', 'admin', '清空缓存', 'fa fa-fw fa-trash-o', 'module_admin', 'admin/index/wipecache', '_self', '0', '1467618273', '1489049773', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('4', '0', 'admin', '系统', 'fa fa-fw fa-gear', 'module_admin', 'admin/system/index', '_self', '0', '1467618361', '1477710540', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('5', '4', 'admin', '系统功能', 'si si-wrench', 'module_admin', '', '_self', '0', '1467618441', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('6', '5', 'admin', '系统设置', 'fa fa-fw fa-wrench', 'module_admin', 'admin/system/index', '_self', '0', '1467618490', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('7', '5', 'admin', '配置管理', 'fa fa-fw fa-gears', 'module_admin', 'admin/config/index', '_self', '0', '1467618618', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('8', '7', 'admin', '新增', '', 'module_admin', 'admin/config/add', '_self', '0', '1467618648', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('9', '7', 'admin', '编辑', '', 'module_admin', 'admin/config/edit', '_self', '0', '1467619566', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('10', '7', 'admin', '删除', '', 'module_admin', 'admin/config/delete', '_self', '0', '1467619583', '1477710695', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('11', '7', 'admin', '启用', '', 'module_admin', 'admin/config/enable', '_self', '0', '1467619609', '1477710695', '4', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('12', '7', 'admin', '禁用', '', 'module_admin', 'admin/config/disable', '_self', '0', '1467619637', '1477710695', '5', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('13', '5', 'admin', '节点管理', 'fa fa-fw fa-bars', 'module_admin', 'admin/menu/index', '_self', '0', '1467619882', '1477710695', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('14', '13', 'admin', '新增', '', 'module_admin', 'admin/menu/add', '_self', '0', '1467619902', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('15', '13', 'admin', '编辑', '', 'module_admin', 'admin/menu/edit', '_self', '0', '1467620331', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('16', '13', 'admin', '删除', '', 'module_admin', 'admin/menu/delete', '_self', '0', '1467620363', '1477710695', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('17', '13', 'admin', '启用', '', 'module_admin', 'admin/menu/enable', '_self', '0', '1467620386', '1477710695', '4', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('18', '13', 'admin', '禁用', '', 'module_admin', 'admin/menu/disable', '_self', '0', '1467620404', '1477710695', '5', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('19', '68', 'user', '权限管理', 'fa fa-fw fa-key', 'module_admin', '', '_self', '0', '1467688065', '1477710702', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('20', '19', 'user', '用户管理', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1467688137', '1477710702', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('21', '20', 'user', '新增', '', 'module_admin', 'user/index/add', '_self', '0', '1467688177', '1477710702', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('22', '20', 'user', '编辑', '', 'module_admin', 'user/index/edit', '_self', '0', '1467688202', '1477710702', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('23', '20', 'user', '删除', '', 'module_admin', 'user/index/delete', '_self', '0', '1467688219', '1477710702', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('24', '20', 'user', '启用', '', 'module_admin', 'user/index/enable', '_self', '0', '1467688238', '1477710702', '4', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('25', '20', 'user', '禁用', '', 'module_admin', 'user/index/disable', '_self', '0', '1467688256', '1477710702', '5', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('211', '64', 'admin', '日志详情', '', 'module_admin', 'admin/log/details', '_self', '0', '1480299320', '1480299320', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('32', '4', 'admin', '扩展中心', 'si si-social-dropbox', 'module_admin', '', '_self', '0', '1467688853', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('33', '32', 'admin', '模块管理', 'fa fa-fw fa-th-large', 'module_admin', 'admin/module/index', '_self', '0', '1467689008', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('34', '33', 'admin', '导入', '', 'module_admin', 'admin/module/import', '_self', '0', '1467689153', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('35', '33', 'admin', '导出', '', 'module_admin', 'admin/module/export', '_self', '0', '1467689173', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('36', '33', 'admin', '安装', '', 'module_admin', 'admin/module/install', '_self', '0', '1467689192', '1477710695', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('37', '33', 'admin', '卸载', '', 'module_admin', 'admin/module/uninstall', '_self', '0', '1467689241', '1477710695', '4', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('38', '33', 'admin', '启用', '', 'module_admin', 'admin/module/enable', '_self', '0', '1467689294', '1477710695', '5', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('39', '33', 'admin', '禁用', '', 'module_admin', 'admin/module/disable', '_self', '0', '1467689312', '1477710695', '6', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('40', '33', 'admin', '更新', '', 'module_admin', 'admin/module/update', '_self', '0', '1467689341', '1477710695', '7', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('41', '32', 'admin', '插件管理', 'fa fa-fw fa-puzzle-piece', 'module_admin', 'admin/plugin/index', '_self', '0', '1467689527', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('42', '41', 'admin', '导入', '', 'module_admin', 'admin/plugin/import', '_self', '0', '1467689650', '1477710695', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('43', '41', 'admin', '导出', '', 'module_admin', 'admin/plugin/export', '_self', '0', '1467689665', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('44', '41', 'admin', '安装', '', 'module_admin', 'admin/plugin/install', '_self', '0', '1467689680', '1477710695', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('45', '41', 'admin', '卸载', '', 'module_admin', 'admin/plugin/uninstall', '_self', '0', '1467689700', '1477710695', '4', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('46', '41', 'admin', '启用', '', 'module_admin', 'admin/plugin/enable', '_self', '0', '1467689730', '1477710695', '5', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('47', '41', 'admin', '禁用', '', 'module_admin', 'admin/plugin/disable', '_self', '0', '1467689747', '1477710695', '6', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('48', '41', 'admin', '设置', '', 'module_admin', 'admin/plugin/config', '_self', '0', '1467689789', '1477710695', '7', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('49', '41', 'admin', '管理', '', 'module_admin', 'admin/plugin/manage', '_self', '0', '1467689846', '1477710695', '8', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('50', '5', 'admin', '附件管理', 'fa fa-fw fa-cloud-upload', 'module_admin', 'admin/attachment/index', '_self', '0', '1467690161', '1477710695', '4', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('51', '70', 'admin', '文件上传', '', 'module_admin', 'admin/attachment/upload', '_self', '0', '1467690240', '1489049773', '1', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('52', '50', 'admin', '下载', '', 'module_admin', 'admin/attachment/download', '_self', '0', '1467690334', '1477710695', '2', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('53', '50', 'admin', '启用', '', 'module_admin', 'admin/attachment/enable', '_self', '0', '1467690352', '1477710695', '3', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('54', '50', 'admin', '禁用', '', 'module_admin', 'admin/attachment/disable', '_self', '0', '1467690369', '1477710695', '4', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('55', '50', 'admin', '删除', '', 'module_admin', 'admin/attachment/delete', '_self', '0', '1467690396', '1477710695', '5', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('56', '41', 'admin', '删除', '', 'module_admin', 'admin/plugin/delete', '_self', '0', '1467858065', '1477710695', '11', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('57', '41', 'admin', '编辑', '', 'module_admin', 'admin/plugin/edit', '_self', '0', '1467858092', '1477710695', '10', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('60', '41', 'admin', '新增', '', 'module_admin', 'admin/plugin/add', '_self', '0', '1467858421', '1477710695', '9', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('61', '41', 'admin', '执行', '', 'module_admin', 'admin/plugin/execute', '_self', '0', '1467879016', '1477710695', '14', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('62', '13', 'admin', '保存', '', 'module_admin', 'admin/menu/save', '_self', '0', '1468073039', '1477710695', '6', '1', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('64', '5', 'admin', '系统日志', 'fa fa-fw fa-book', 'module_admin', 'admin/log/index', '_self', '0', '1476111944', '1477710695', '6', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('65', '5', 'admin', '数据库管理', 'fa fa-fw fa-database', 'module_admin', 'admin/database/index', '_self', '0', '1476111992', '1477710695', '8', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('66', '32', 'admin', '数据包管理', 'fa fa-fw fa-database', 'module_admin', 'admin/packet/index', '_self', '0', '1476112326', '1477710695', '4', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('67', '19', 'user', '角色管理', 'fa fa-fw fa-users', 'module_admin', 'user/role/index', '_self', '0', '1476113025', '1477710702', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('68', '0', 'user', '用户', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1476193348', '1477710540', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('69', '32', 'admin', '钩子管理', 'fa fa-fw fa-anchor', 'module_admin', 'admin/hook/index', '_self', '0', '1476236193', '1477710695', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('70', '2', 'admin', '后台首页', 'fa fa-fw fa-tachometer', 'module_admin', 'admin/index/index', '_self', '0', '1476237472', '1489049773', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('71', '67', 'user', '新增', '', 'module_admin', 'user/role/add', '_self', '0', '1476256935', '1477710702', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('72', '67', 'user', '编辑', '', 'module_admin', 'user/role/edit', '_self', '0', '1476256968', '1477710702', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('73', '67', 'user', '删除', '', 'module_admin', 'user/role/delete', '_self', '0', '1476256993', '1477710702', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('74', '67', 'user', '启用', '', 'module_admin', 'user/role/enable', '_self', '0', '1476257023', '1477710702', '4', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('75', '67', 'user', '禁用', '', 'module_admin', 'user/role/disable', '_self', '0', '1476257046', '1477710702', '5', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('76', '20', 'user', '授权', '', 'module_admin', 'user/index/access', '_self', '0', '1476375187', '1477710702', '6', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('77', '69', 'admin', '新增', '', 'module_admin', 'admin/hook/add', '_self', '0', '1476668971', '1477710695', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('78', '69', 'admin', '编辑', '', 'module_admin', 'admin/hook/edit', '_self', '0', '1476669006', '1477710695', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('79', '69', 'admin', '删除', '', 'module_admin', 'admin/hook/delete', '_self', '0', '1476669375', '1477710695', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('80', '69', 'admin', '启用', '', 'module_admin', 'admin/hook/enable', '_self', '0', '1476669427', '1477710695', '4', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('81', '69', 'admin', '禁用', '', 'module_admin', 'admin/hook/disable', '_self', '0', '1476669564', '1477710695', '5', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('183', '66', 'admin', '安装', '', 'module_admin', 'admin/packet/install', '_self', '0', '1476851362', '1477710695', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('184', '66', 'admin', '卸载', '', 'module_admin', 'admin/packet/uninstall', '_self', '0', '1476851382', '1477710695', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('185', '5', 'admin', '行为管理', 'fa fa-fw fa-bug', 'module_admin', 'admin/action/index', '_self', '0', '1476882441', '1477710695', '7', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('186', '185', 'admin', '新增', '', 'module_admin', 'admin/action/add', '_self', '0', '1476884439', '1477710695', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('187', '185', 'admin', '编辑', '', 'module_admin', 'admin/action/edit', '_self', '0', '1476884464', '1477710695', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('188', '185', 'admin', '启用', '', 'module_admin', 'admin/action/enable', '_self', '0', '1476884493', '1477710695', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('189', '185', 'admin', '禁用', '', 'module_admin', 'admin/action/disable', '_self', '0', '1476884534', '1477710695', '4', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('190', '185', 'admin', '删除', '', 'module_admin', 'admin/action/delete', '_self', '0', '1476884551', '1477710695', '5', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('191', '65', 'admin', '备份数据库', '', 'module_admin', 'admin/database/export', '_self', '0', '1476972746', '1477710695', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('192', '65', 'admin', '还原数据库', '', 'module_admin', 'admin/database/import', '_self', '0', '1476972772', '1477710695', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('193', '65', 'admin', '优化表', '', 'module_admin', 'admin/database/optimize', '_self', '0', '1476972800', '1477710695', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('194', '65', 'admin', '修复表', '', 'module_admin', 'admin/database/repair', '_self', '0', '1476972825', '1477710695', '4', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('195', '65', 'admin', '删除备份', '', 'module_admin', 'admin/database/delete', '_self', '0', '1476973457', '1477710695', '5', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('210', '41', 'admin', '快速编辑', '', 'module_admin', 'admin/plugin/quickedit', '_self', '0', '1477713981', '1477713981', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('209', '185', 'admin', '快速编辑', '', 'module_admin', 'admin/action/quickedit', '_self', '0', '1477713939', '1477713939', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('208', '7', 'admin', '快速编辑', '', 'module_admin', 'admin/config/quickedit', '_self', '0', '1477713808', '1477713808', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('207', '69', 'admin', '快速编辑', '', 'module_admin', 'admin/hook/quickedit', '_self', '0', '1477713770', '1477713770', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('212', '2', 'admin', '个人设置', 'fa fa-fw fa-user', 'module_admin', 'admin/index/profile', '_self', '0', '1489049767', '1489049773', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('213', '70', 'admin', '检查版本更新', '', 'module_admin', 'admin/index/checkupdate', '_self', '0', '1490588610', '1490588610', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('214', '68', 'user', '消息管理', 'fa fa-fw fa-comments-o', 'module_admin', '', '_self', '0', '1520492129', '1520492129', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('215', '214', 'user', '消息列表', 'fa fa-fw fa-th-list', 'module_admin', 'user/message/index', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('216', '215', 'user', '新增', '', 'module_admin', 'user/message/add', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('217', '215', 'user', '编辑', '', 'module_admin', 'user/message/edit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('218', '215', 'user', '删除', '', 'module_admin', 'user/message/delete', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('219', '215', 'user', '启用', '', 'module_admin', 'user/message/enable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('220', '215', 'user', '禁用', '', 'module_admin', 'user/message/disable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('221', '215', 'user', '快速编辑', '', 'module_admin', 'user/message/quickedit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('222', '2', 'admin', '消息中心', 'fa fa-fw fa-comments-o', 'module_admin', 'admin/message/index', '_self', '0', '1520495992', '1520496254', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('223', '222', 'admin', '删除', '', 'module_admin', 'admin/message/delete', '_self', '0', '1520495992', '1520496263', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('224', '222', 'admin', '启用', '', 'module_admin', 'admin/message/enable', '_self', '0', '1520495992', '1520496270', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('225', '32', 'admin', '图标管理', 'fa fa-fw fa-tint', 'module_admin', 'admin/icon/index', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('226', '225', 'admin', '新增', '', 'module_admin', 'admin/icon/add', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('227', '225', 'admin', '编辑', '', 'module_admin', 'admin/icon/edit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('228', '225', 'admin', '删除', '', 'module_admin', 'admin/icon/delete', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('229', '225', 'admin', '启用', '', 'module_admin', 'admin/icon/enable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('230', '225', 'admin', '禁用', '', 'module_admin', 'admin/icon/disable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('231', '225', 'admin', '快速编辑', '', 'module_admin', 'admin/icon/quickedit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('232', '225', 'admin', '图标列表', '', 'module_admin', 'admin/icon/items', '_self', '0', '1520923368', '1520923368', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('233', '225', 'admin', '更新图标', '', 'module_admin', 'admin/icon/reload', '_self', '0', '1520931908', '1520931908', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('234', '20', 'user', '快速编辑', '', 'module_admin', 'user/index/quickedit', '_self', '0', '1526028258', '1526028258', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('235', '67', 'user', '快速编辑', '', 'module_admin', 'user/role/quickedit', '_self', '0', '1526028282', '1526028282', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('236', '241', 'project', '分类管理', 'fa fa-fw fa-list', 'module_admin', 'project/category/index', '_self', '0', '1540450155', '1540450783', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('237', '236', 'project', '新增', '', 'module_admin', 'project/category/add', '_self', '0', '1540450155', '1540450783', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('238', '236', 'project', '编辑', '', 'module_admin', 'project/category/edit', '_self', '0', '1540450155', '1540450783', '2', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('239', '236', 'project', '删除', '', 'module_admin', 'project/category/delete', '_self', '0', '1540450155', '1540450783', '3', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('240', '0', 'project', '项目', 'fa fa-fw fa-product-hunt', 'module_admin', 'project/index/index', '_self', '0', '1540450219', '1540462470', '100', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('241', '240', 'project', '栏目中心', 'fa fa-fw fa-th', 'module_admin', '', '_self', '0', '1540450277', '1540450783', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('242', '241', 'project', '项目首页', 'fa fa-fw fa-home', 'module_admin', 'project/index/index', '_self', '0', '1540450762', '1540450783', '1', '0', '1', '');
INSERT INTO `dt5_admin_menu` VALUES ('243', '236', 'project', '排序', '', 'module_admin', 'project/category/save', '_self', '0', '1540464850', '1540464858', '100', '0', '1', '');

-- ----------------------------
-- Table structure for dt5_admin_message
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_message`;
CREATE TABLE `dt5_admin_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid_receive` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收消息的用户id',
  `uid_send` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送消息的用户id',
  `type` varchar(128) NOT NULL DEFAULT '' COMMENT '消息分类',
  `content` text NOT NULL COMMENT '消息内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of dt5_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for dt5_admin_module
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_module`;
CREATE TABLE `dt5_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名称（标识）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模块标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text COMMENT '配置信息',
  `access` text COMMENT '授权配置',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '模块唯一标识符',
  `system_module` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of dt5_admin_module
-- ----------------------------
INSERT INTO `dt5_admin_module` VALUES ('1', 'admin', '系统', 'fa fa-fw fa-gear', '系统模块，DolphinPHP的核心模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'admin.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dt5_admin_module` VALUES ('2', 'user', '用户', 'fa fa-fw fa-user', '用户模块，DolphinPHP自带模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'user.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `dt5_admin_module` VALUES ('3', 'project', '项目', '', '项目模块', 'DuJun', '', null, null, '1.0.0', 'project.uun.module', '0', '1540449897', '1540449897', '100', '1');
INSERT INTO `dt5_admin_module` VALUES ('4', 'project', '项目', '', '项目模块', 'DuJun', '', null, null, '1.0.0', 'project.uun.module', '0', '1540449897', '1540449897', '100', '1');

-- ----------------------------
-- Table structure for dt5_admin_packet
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_packet`;
CREATE TABLE `dt5_admin_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据包表';

-- ----------------------------
-- Records of dt5_admin_packet
-- ----------------------------

-- ----------------------------
-- Table structure for dt5_admin_plugin
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_plugin`;
CREATE TABLE `dt5_admin_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of dt5_admin_plugin
-- ----------------------------
INSERT INTO `dt5_admin_plugin` VALUES ('1', 'SystemInfo', '系统环境信息', 'fa fa-fw fa-info-circle', '在后台首页显示服务器信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'system_info.ming.plugin', '0', '1477757503', '1477757503', '100', '1');
INSERT INTO `dt5_admin_plugin` VALUES ('2', 'DevTeam', '开发团队成员信息', 'fa fa-fw fa-users', '开发团队成员信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'dev_team.ming.plugin', '0', '1477755780', '1477755780', '100', '1');

-- ----------------------------
-- Table structure for dt5_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_role`;
CREATE TABLE `dt5_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  `default_module` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '默认访问模块',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of dt5_admin_role
-- ----------------------------
INSERT INTO `dt5_admin_role` VALUES ('1', '0', '开发工程师', '系统默认创建的角色，拥有最高权限', '', '0', '1476270000', '1468117612', '1', '1', '0');
INSERT INTO `dt5_admin_role` VALUES ('2', '0', '超级管理员', '拥有最高权限', '[\"51\",\"213\",\"70\",\"212\",\"3\",\"2\",\"1\",\"6\",\"50\",\"191\",\"65\",\"5\",\"4\",\"21\",\"22\",\"23\",\"24\",\"25\",\"234\",\"20\",\"71\",\"72\",\"73\",\"74\",\"75\",\"235\",\"67\",\"19\",\"68\"]', '100', '1540448663', '1540449029', '1', '1', '1');

-- ----------------------------
-- Table structure for dt5_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `dt5_admin_user`;
CREATE TABLE `dt5_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of dt5_admin_user
-- ----------------------------
INSERT INTO `dt5_admin_user` VALUES ('1', 'program ', '程序员', '$2y$10$8E/ZM/1XNP.HEN1RgClx9.Gvt/eq2YrDjIhfUO5Ear2VfzSZxMvAW', '', '0', '', '0', '0', '0.00', '0', '1', '0', '0', '1476065410', '1540624101', '1540624101', '2130706433', '100', '1');
INSERT INTO `dt5_admin_user` VALUES ('2', 'admin', '站长', '$2y$10$JQufyVL3NfK6GdfgCAiNsOAkNLj9TOe5iAjwIY2YMxdkZyJ3tk3R.', '', '0', '', '0', '0', '0.00', '0', '2', '0', '0', '1540448761', '1540462707', '1540462707', '2130706433', '100', '1');

-- ----------------------------
-- Table structure for dt5_categorys
-- ----------------------------
DROP TABLE IF EXISTS `dt5_categorys`;
CREATE TABLE `dt5_categorys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '' COMMENT '名称',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序，升序取数据',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of dt5_categorys
-- ----------------------------
INSERT INTO `dt5_categorys` VALUES ('1', 'RD', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('2', 'HAcvQXEX', '1', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('3', 'C1lfdEi', '2', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('4', 'e2VVqpn', '1', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('5', 'NS4xn', '4', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('6', 'vpVOBHel', '4', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('7', 'ohejDcRyh', '1', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('8', 'JxiZnCK', '7', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('9', 'QMpF2tggN', '7', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('10', 'cTgto', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('11', 'b7VVx', '10', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('12', 'IYzG', '11', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('13', 'vLSATgsrd', '11', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('14', 'kBHiheUD', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('15', 'xsQXhZEjU', '14', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('16', 'GjM3', '14', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('17', 'NI', '16', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('18', 'SnNDlxYbk', '16', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('19', 'Ujax', '16', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('20', '1rsuJD', '14', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('21', 'ysF', '20', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('22', 'vrLJ4l9U', '20', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('23', 'i8', '20', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('24', 'hcuAgLZEan', '20', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('25', 'epztyz', '14', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('26', 'vYSj', '25', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('27', 'NJF9KNJ31K', '25', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('28', 'hD1G', '25', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('29', 'YuNedl', '25', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('30', 'UvbmsW', '14', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('31', 'IxJT', '30', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('32', 'rthk2', '30', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('33', 'Po', '30', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('34', 'Ihbux5eI', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('35', '5VAqZ', '34', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('36', 'bD', '35', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('37', '9n', '35', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('38', '0C2l', '35', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('39', 'MIA9b68l', '35', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('40', 'HboDIjQPze', '35', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('41', 'mJ', '35', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('42', '7zXN', '34', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('43', 'thQxrcb0', '42', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('44', 'O6wHDNMZb', '42', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('45', 'i73Off', '42', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('46', 'Wlg5r', '34', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('47', 'msHfyVn', '46', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('48', 'J4SGnDcBUo', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('49', 'bi22', '48', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('50', 'NyP8X5md', '49', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('51', '9coI', '49', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('52', 'IA', '49', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('53', 'UirDMN73vg', '48', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('54', 'ZD4', '53', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('55', 'ZuO1', '53', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('56', 'fBi3tvEZS', '48', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('57', 'LxI', '56', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('58', 'doBryx63T', '56', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('59', 'jZV9X2Q37Z', '48', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('60', 'uHbbJLH6ti', '59', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('61', 'u6k6HiJ', '59', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('62', 'dL', '59', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('63', 'pL86FMU', '59', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('64', 'oZB', '48', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('65', '1WFpOMD49P', '64', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('66', 'qISWurxlk', '64', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('67', 'k55d6ZNG', '64', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('68', 'Q0T99hJ', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('69', 'nP8', '68', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('70', 'vPg', '69', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('71', 'xmTRNYbFa', '69', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('72', 'EYKEHu', '69', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('73', 'sxIykgn58', '69', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('74', '1ddz5zkG', '69', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('75', 'evGVI0J', '69', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('76', '3o', '69', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('77', 'v5', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('78', '9I5ggtI73K', '77', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('79', 'sHCcKHCyb', '77', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('80', 'agni7WTZ', '79', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('81', 'mch3', '79', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('82', 'y21Z', '77', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('83', 'yDL', '82', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('84', 'Vr2nh', '82', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('85', 'asSX2pB', '82', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('86', 'Mxsu0CH', '82', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('87', 'kw', '77', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('88', 'DGHZhG', '87', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('89', 'Yen', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('90', 'eKa', '89', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('91', 'RlMo3b6od', '90', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('92', '9fck', '90', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('93', 'fFj1XUms', '90', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('94', 'LuplpKJ1aQ', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('95', 'NpCS8t', '94', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('96', '3akkB438u', '95', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('97', 'aa1joL2Z2', '95', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('98', 'ze6wEERQJ', '95', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('99', 'wyEt2wLC', '95', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('100', '3SmPl', '95', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('101', 'Wn6L9upy8O', '94', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('102', 'fFK', '101', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('103', 'AP', '101', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('104', 'NpBYC', '94', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('105', 'fT', '104', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('106', 'XTN', '104', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('107', 'LOMlxsYga', '104', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('108', 'K2nztilT8', '0', '100', '1540643013', '1540643013');
INSERT INTO `dt5_categorys` VALUES ('109', '6lAi6m', '108', '100', '1540643013', '1540643013');

-- ----------------------------
-- Table structure for dt5_guard_tokens
-- ----------------------------
DROP TABLE IF EXISTS `dt5_guard_tokens`;
CREATE TABLE `dt5_guard_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(323) NOT NULL DEFAULT '' COMMENT '验证标志:必须填去掉前缀的表名',
  `guard` varchar(191) NOT NULL DEFAULT '' COMMENT '守卫',
  `token_type` varchar(191) NOT NULL DEFAULT '' COMMENT '类型',
  `expires_in` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `is_forever` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否永远不过期',
  `is_logout` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否退出',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='=守卫验证';

-- ----------------------------
-- Records of dt5_guard_tokens
-- ----------------------------
INSERT INTO `dt5_guard_tokens` VALUES ('1', '84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', 'users', 'bearer', '2592000', '0', '1', '1540643170', '1540643404');

-- ----------------------------
-- Table structure for dt5_migrations
-- ----------------------------
DROP TABLE IF EXISTS `dt5_migrations`;
CREATE TABLE `dt5_migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dt5_migrations
-- ----------------------------
INSERT INTO `dt5_migrations` VALUES ('20181025070948', 'Categorys', '2018-10-27 20:23:25', '2018-10-27 20:23:25', '0');
INSERT INTO `dt5_migrations` VALUES ('20181027065043', 'RequestLogs', '2018-10-27 20:23:25', '2018-10-27 20:23:25', '0');
INSERT INTO `dt5_migrations` VALUES ('20181027095545', 'Users', '2018-10-27 20:23:25', '2018-10-27 20:23:25', '0');
INSERT INTO `dt5_migrations` VALUES ('20181027104247', 'GuardTokens', '2018-10-27 20:23:25', '2018-10-27 20:23:25', '0');

-- ----------------------------
-- Table structure for dt5_request_logs
-- ----------------------------
DROP TABLE IF EXISTS `dt5_request_logs`;
CREATE TABLE `dt5_request_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL COMMENT '完整接口地址',
  `type` varchar(191) NOT NULL DEFAULT '' COMMENT '请求类型',
  `authorization` text NOT NULL COMMENT '认证凭据',
  `data` text NOT NULL COMMENT '请求参数',
  `sign` varchar(191) NOT NULL DEFAULT '' COMMENT '签名',
  `ip` varchar(191) NOT NULL DEFAULT '' COMMENT '请求ip',
  `terminal` varchar(191) NOT NULL DEFAULT '' COMMENT '请求终端',
  `brower` varchar(191) NOT NULL DEFAULT '' COMMENT '请求浏览器',
  `agent` text NOT NULL COMMENT '代理信息',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='接口日志';

-- ----------------------------
-- Records of dt5_request_logs
-- ----------------------------
INSERT INTO `dt5_request_logs` VALUES ('1', 'http://www.dp-tp5.dj/index.php/login/users?username=sclzdj&password=1241421', 'POST', '', '{\"username\":\"sclzdj\",\"password\":\"1241421\"}', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643023', '1540643023');
INSERT INTO `dt5_request_logs` VALUES ('2', 'http://www.dp-tp5.dj/index.php/login/users?username=sclzdj&password=adaa', 'POST', '', '{\"username\":\"sclzdj\",\"password\":\"adaa\"}', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643048', '1540643048');
INSERT INTO `dt5_request_logs` VALUES ('3', 'http://www.dp-tp5.dj/index.php/login/users?username=sclzdj&password=sclzdj', 'POST', '', '{\"username\":\"sclzdj\",\"password\":\"sclzdj\"}', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643052', '1540643052');
INSERT INTO `dt5_request_logs` VALUES ('4', 'http://www.dp-tp5.dj/index.php/login/users?username=sclzdj&password=sclzdj', 'POST', '', '{\"username\":\"sclzdj\",\"password\":\"sclzdj\"}', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643170', '1540643170');
INSERT INTO `dt5_request_logs` VALUES ('5', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', '', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643208', '1540643208');
INSERT INTO `dt5_request_logs` VALUES ('6', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643229', '1540643229');
INSERT INTO `dt5_request_logs` VALUES ('7', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643232', '1540643232');
INSERT INTO `dt5_request_logs` VALUES ('8', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643290', '1540643290');
INSERT INTO `dt5_request_logs` VALUES ('9', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643308', '1540643308');
INSERT INTO `dt5_request_logs` VALUES ('10', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643330', '1540643330');
INSERT INTO `dt5_request_logs` VALUES ('11', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643354', '1540643354');
INSERT INTO `dt5_request_logs` VALUES ('12', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643374', '1540643374');
INSERT INTO `dt5_request_logs` VALUES ('13', 'http://www.dp-tp5.dj/index.php/logout/users', 'GET', '', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643387', '1540643387');
INSERT INTO `dt5_request_logs` VALUES ('14', 'http://www.dp-tp5.dj/index.php/logout/users', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643404', '1540643404');
INSERT INTO `dt5_request_logs` VALUES ('15', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643407', '1540643407');
INSERT INTO `dt5_request_logs` VALUES ('16', 'http://www.dp-tp5.dj/index.php/logout/users', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540643418', '1540643418');

-- ----------------------------
-- Table structure for dt5_users
-- ----------------------------
DROP TABLE IF EXISTS `dt5_users`;
CREATE TABLE `dt5_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(191) NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(191) NOT NULL DEFAULT '' COMMENT '昵称',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '账号状态0:禁用 1:开启',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of dt5_users
-- ----------------------------
INSERT INTO `dt5_users` VALUES ('1', 'sclzdj', 'a6e7409c16ece6451c3657d9c1af8820', 'sclzdj', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('2', 'dujun', '9536809f97e454fd5568771b34b22e86', 'dujun', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('3', 'Cfg', 'LWqQVkOvbEwsUpwBx4vwzzNaS5ur8cMzb8rC2lgvyqh8YD9FCRVsmBzbD15hvuMNsMpQo5UKBZKKPRRBqgOQqry6sBhjORx05V66rxBhH33NgC7w5oO8XBoT5nS8QFirlOdFYNTpbsQXxjtpWZbpULccrSD51iuJW5zFpBnL3vU474MlrWQRYf2uztc7baH', 'ke40', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('4', 'p1CW08z5n', 'xWZOXLbk1kncFdyO0X6j3W71NapqOTKvnLcTENi1HENyiZjToQNQZSLvE9GwFrYggDrFoSMtclNeOqiKMBh9WPe32RjBcrCR82Nz42z3yQEsl7wSQ9izG0UwzeAItbYsPtrloL1fUIQePs22vTYPWPsuxPi2WdhIM2WHj9cJPV3ptRpVD4iOudIqYzOWY9R', 'fZDWHekpbo', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('5', 'Gl8', 'rbmYFTQNoIUzktwy3luPpRog5njqVRum5eHq8C46DejEXebQ2IYT3oEE1Ag0SZ2hcqRNOybpkesVMA5PKGysEDJsx201ZoBpXltnT4WTmc7CnXG68u4Lf6uNTfVLlJymdgv4xxNXE93GCnSFBSkqBf809IlnJ2KpRhpBBPTxmsY6aValnm5YVpgJTOrEEU0', 'fiPsR2z', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('6', 'UWe0yS', 'Do7IsOfQrGLK18Ln6lYmItI7rTCVzP65AdyVjOWPoMqPJvH9EGOGe2AbBZBhnDO91kCKME63jJxKldNp5HQ0DqdkM0Zne0Pfjf7LvBRojvb3P2CEqETWxEkGEZCAEkHf3Ye9gYtFdBfOmCoABqVl8cdmGGrqU18BpAXwngzt0xjp1RWBS36MCyD5PLB76IY', 'h5l7K', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('7', 'rp', 'OJUVRxyENGxCM7YKqSlOsJ9awPxMJrk2O6R3EnY8vu6RKVjFsGyqlZ63Qiqh2zn0DCCxF2SrjlXHK9MWrghIettbR2UCS8NmUmmTZCYdfIHkNVyaQJnwag4uVeaYciXINQV1XfCS7Qf8LeSeyYUU8qLomGWEDIII2piURQkEHQes8zqhNFP3lEW90FCPOFT', 'LzKhXi', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('8', '5JJ', 'BQ4Imjrepvx9WKo43OVITJW5IaLTVcPsTrAXny0n2MvuRcScCSbZYbHYhBCIyEV1A9Caz5PMduyLwKtsduyYqeVPBrSxYbUTSoBWkpgSpCbFoT3uwrtoAqgdAhVdpSbXZjByjWPCB8ZS47q4N8HlWrhLStwNZk7nViqXWjOuMrzt4cFfDO1phIAsskzfUcZ', 'LlQEW', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('9', 'Kxqn', 'LLEPMNXToXQtA5l996am0IbxQoAS1icgExdWamRO8vKjweXBPNH8KzohVOr22f1WtAAd4hfkzm4b1WlTL5fEpKOem9AYGsqqrXZYmSqKHFf0lrBvESMRMZpYcdx0HXsRrCu3nqoxmziyqPEljIKHkhMTQy4E3lH60Uhe2UoovEpnrdkGgFFZyRSc7L3E6Ap', 'RtoIi', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('10', '19CWbSVN', 'qOnkkpbYXsLCvM7QNDuPLNrQ17C38tRPiHKWfGGkUJS17Z0eGPwJCLrjdYTIvuLSrJ13ymyXDlUadYO4nI8Puw3H5yGfSZWSlWA6LTQtJFCsr4w3RN0yLIBpwgdxVOGmzjA2VzWEYJXj7wIYYskHFqaqKxq60yuPkr9ltx36QqvIWbc05kMdhz2kjKEBCc4', 'orhnVWCN', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('11', 'sI9Z8o3ls1', 'xfDuQqn5YdPuqKtjOvIzcORELoEFs5wq6ztbrfZlJ7lvhy58TOo3mzeYuEYpk8LogU6Z5hAoUrCFKJEERT7VHz8pOMOu9ttzHW9B7gbUe7IL2WhxILhYOzU2CK2QltjDIcpdxAskTkJoz0CY8jLAjRSNkddoo4yZgli1OJrNgKe1bxcWkreQH2auZjGl8CN', 'TZ', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('12', '7pH9k', 'SbrOEibAXKExcDB0S0K4qqSXdgAbFPgIWAfOGxUjXZH2R0W1AZrOCcPvMDnWGHeB3edVHO13b6ADQtMtvtJTib3ACh1jhoeHqkP33Z65F0AgGowJJQi2HZkDdiM4catkwZUbEwyN7HPCIGhO7VxY0EEZaFg1NR1D0kLA0eALPxj33ZZNNoMa6tMDPn6OWQn', 'tKVODKa', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('13', 'K4Anyqq4', 'SLnLAxAPD6g8FFhjUuBEznGE77mzXYqFjj1avUj6Z0zXrQxh3DwghYtlq9wajg9ToXdOTJfYJzUP3zXrrNj9KamatWRNxn4v2hTdh0JjI3olq97BqbcafK7Z9TDYweg4SYoWhnS7PvvdMjTlwrF7sb7qUacqdn8j41ychy8u4uquxtr2qLUhQ0Vt0kv9dpM', 'bH4EdPdzb', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('14', 'UTTY8cv7', 'ccaCAKreVgxGtuptQfGpdfDkZAaje1ApR7rqKBD1DPwLjsOqg7dumhk9snU2dbu0TfmTW2sQfMqiuAOBx1UA3uBFul1pXL41tr9KhWsOTSRMvQgNthjYYQUQhF4SLXYF5zLlQlZIDJLNUL6zNV7SQrgVeXH9FPrJk6vY0Ra8LhB2PrZtcuBZ8m5EyAWZYRz', 'lbJT', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('15', 'Hl2tvWc', 'GXYSKwel1Ompy9LrgsYUzo9jB89NCMT0hULw4xP5RlCMbR1y50I4O4174bHtQuZdFqlvqJ0KWOMNbjRSGBzpyXj1C8JGgBl8VHt4B14y0uwLXdYHdcFWEMlJOxfvUbTZpkFH49ukHesbpBLGQBBmIouMU9CiVAfj9Hy1XXJmQ9ZsU7p2hpUD9bBgg2ChulC', '03dq61', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('16', '9m3l6', 'UHpuJWhxvxIHFwHKxplZZrn6LHHKjfjAxpGMgasMgEGexRt3rNP3sKlzj47TuLWRc0nBvI23e3jbgsyLXyYdrixCFy1swdef4WJPNQFr7qDWOPMATlthwZunVZHwVyq8o3gJO5mcwMuPCdD4X6MFPHGoQpfzBgO2ut0w1zGELzJGr7mcotda2hVFvZDDI6d', '8uI2FUV', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('17', 'kndsuo9C95', 's0BAV3fKfcMsiUZIKO0yBhAci7ii5GVtZGcGibSQ3pVWG9dtpGr24Zmk2aA4OQ5qFCrPB9jxZBQixUVhIZBSAL5KgN8nEWGdrRFBCYxDJnKiYya8YP6DNxBEzEow1f77yzGfqvThZ1LgFNQWHw2dEd3VDdNtM0crr87dokDcw7UJybA2EuQGNNtZqy3zyrs', 'cnQnDS', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('18', '68pdw2', 'ldd4GNi9d3CHIV3YH3hEUImvFhRjI4XR8qmGUHbq3F0Zan2Itz6VSU4G5qZ3pvBgjnMF7aXNOpyjRBh8qkZ8t5ELwUcz0xS03soqHSO9dW7ymkzs5sCERf2rQ8u5R5R1H9cHOwww7LPiCVxPgi41BEWLLZwu7uolyj0afkaS5aEb9ZVbkmuivU0HNM1Ue5Z', 'wcAAeIP7Y', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('19', 'rRSb7GU', 'OZ1mU2HAZNLF2CP3AazkLz6HvIqS8pqSj8wXqdKrUqMlrAR5SoMy5gsMm1BJBg2JtNqd7ykJScMekeQlmQo582OoEug2cZrnU9VpIjmWakWpNLkmqdNxUq9eL5aEnJEf50r5CENH1EFsmdueVYRv9lIpaS0u05oH6GRZ8nzeyCUGZ3bnY68gzmwd9CHbvw8', 'FlcQLqoE', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('20', 'vCN', 'RlgnV25NHhRCqSF8KXFCdmpwu0teXWNKUJbm2cZed1JnS5IQz60n5fzezNhMnYCoBOtmM2swhZeUZrcW0V0UAkJmY3ONCE16O8EaDy2RG2A1uWbT5z3uicPWljKUlpDls07yHeMt9incKeJbm1nVHJ7yOCf6syDj1JQWXmONCKcVOR8cC7xhdw5NOkPDogM', 'C3eMYyzzS', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('21', 'hjeI3aNr2Y', 'UcyTKscLzvEwAgFmN8vEKoUNFTJyyoPHlJfB9SCIHGXdWYkXh0OdZvTONTiWNybSza2lJbOBuVLBjNMq3ThnrHj8LBSpuHP7hKtmZaOvD45c92iWhOqOnfeM50UOFpano2OTbmPATOrJSKCFIGlbOvRfSkC3hRxTxhbd3gRy92eEsOGrjOhw7aGGVRZWyQM', 'FeH9', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('22', 'pQLVseD', 'c8xAEmzeH1HKR7DDRvpE67yfswUr6z80ducF64g6DjPBxguQlh7S1HnzxPVOO0yozh3PD79zjMsILdz5N9gdTxtMXH37n4wb5R8tl6cK5zUBM7nm9zLvq0YeUp0QDsz7P4CtzLhnQFSVUAoA26d93IGi96RevnJViyGyfkpBYAPYBVAH1kjJQhQXJhz2chb', '2FzK', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('23', 'QEiGMDyfV', 'MtE5YJdffqmqv9vL64mBdRU1aOKhsDkpW9OKbH7mt5s4Z4nFMyTsgZ8kNgTQckpfhNdkYwhdCQA5uzG7VatsvnL9hDkMjqdX5tiYrDdvq00rrBXt7uAKhlaftP8WfYOt9DTwhduTvHL5eaaSLEd8HTEz54QqxGNBzUPFj97VgWeRdfttvzed35WUEBfJ6xl', 'U4Z1b', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('24', 'MTpWVb8m4', 'BKNn2klUeidqWtpmX4aIVMLQ12l0jLvekvtJks19c8NPHQAoD2KiBKQPAa5oPaqsd1dBxXjyoRx6jwBvBQnOWT8tu8ddxPIyc0xsECNQZ7qTKRoMh2BqafLBicCmqywWd8ghP53lMuI2nB3eFuOUcbCoXtw2UbQ2VdLEK9DfJ9eQ3dkHftE8IBwt1EPeJcm', 'u43ZW8vj3V', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('25', 'uXg5', '1uc6WpNh3z1CX7R54TTNN6ty5UgWtJ0UWVEW4mC2V28mNQf9wk2xseAuoxNMOhA24Xk4oIfqsbmKedXMVuLeIcXQigZrVT2qmlzO6oe41kB3pGZeM3FaX3t3nTiAiIDqFpsCXPVM6h1RH1NCxM1H3tXOPL753Gakl162kxOk7ciErUHk7I8Cqm8yzU1H8Nr', 'Nvy', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('26', 'U9', '9jUgepIGVyA3pnwJKIIxlzttMztlKwixxV7qvXcr4iH4ikNkWa78Dry1doFVM0o8URs2bnnp0hUaZMh5kuvO8LtYTRZhTA84XknLYs1DaNvoQ852xwNxFFk6y235VBrCzVaTj2VyExvKmgZ0fgI4fBjRzROXmvsBuYQM71rDP057FZpus0qNCsozShuIKmO', 's5NMBNe', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('27', 'byJnJoD1', 'CPxi75mXQghLdiuK6UeQ0nxmN5IS7q3mmxwBTexiCJyLqp2FIIM6b2L20XpiYARyQZUEhaUcgUdhD4TsnVugP4RyGFq2nr0uI3GY1eErxaM6d1bTtdk75UvB5pk3TfzIcLpakYR9i7pdjB3E21bJLClWsLKKbGwNJHYS4Lw5kR9fglQlWadue0N8b0RRfWu', 'Gmv7in6a7', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('28', '8dPo', 'k3PYpkMW1gkuK4NmtI01bTOOeXywpjj5cOXcBPDjMHjs0M4FWGUgoUwaUTJazclBEsSUPwRV6Irgem361r10GUyf5zOmxiWvoLej7K8vRnE6sb0SKLCrRNostMEAOzsXjH1s85MoNIR701twGsSnp8MOIU9UMfnukvtUYS94TmEVtrZM48HJHsfQXoZOpE4', 'Nn4435O3A', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('29', '7HlA3bMyM', '6SKcZ2E87gELlaKteJ04CByEsJZkLlgH57yHfmsaMFGkYS2WyssiwNQX3L1b8TVCH9gViXmMG8Ste9LVTodaRlJ6CsSAsIj7aaqBAcEkviXCES1TtGbO44BgeFYrVSyocDBTInx2qiK6GtRFgrTQjmuBisD1cJzVrwT6jEctiTSNtvohZgreh6KMwGcgmzT', 'AJfX', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('30', 'y5HqANb', '619h1A2yCI5LORK1BDxSmoKDzzBrhL3ZMp3dzjHiXNSe3BFVUAUvsyQ9BMo6XWgRM33W9LFHuUbPCvyecMcmzDQMtzSQaoIqlNwybtbRyQ9PxcfvczDbuqp1JCFuZLe4ZuIBLuAdUtR6vHo4w9rESbxOPtFrAg6OSXBGVD5xoqhuOEpW3bKpXV6mt3NUeu6', '6x75', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('31', 'E0FEl4a8sS', '31H9IoTFtNtfsUnLs37RiHNFuF03FDBzUzVs2kwNMJBQE2xkfzd6jjRJaLiugIjSQn6LaHasdre2QfQ5Iq2bteu9qLATuUijEGcTBqWjLQl3aY9cFv4pPXlO3mGp9fmOv9HF5mgZiW8ey5YAa0RQpPAyo7Fa1Gnt36nwr29MMnqeHP7XrOHaUcXEleAGEiI', 'lGEKkCi', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('32', 'wyQY5', 'wBjZhgfTozuz0qgVBvvZESHcjwdiQumtL6HRF6q5PAYEFATkuOtxCjvdbIbKxA4fCjAO0AGQOi7PkPCriKxDPAv2QkzGUwgcZby9nH14THw73JoTLXva0GpVy761f2lvGal4QgXdsBmQTYD6Pv3caB58Ya6Ps2Cljsr13I0oAzRr6KUZjl9xANRAUfrVdMW', 'p5iLqVe4', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('33', 'Q46Wup12IJ', 'PzwRbQ7yUWrYVQerxkvZ6Etas23xwhPN8thFJIEkPAOjOY6Nf9nVXPzrW4m6UHeA3DCtItipvhZijHRUMDiiHUJMkrAZxUSBkEDTiTH2fMzeAi3Z9viRKI0h8ZNTgpZCL3Wo6hZRSKQcU89OYffjizinvnMA6CpnyYnVT5eBHa2bd6QhROw64voYRD8cX0S', 'pbOiSic', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('34', 'asDiXbz9YF', 'FJCIzi1q7wSRfiKiUtgzp6Xb1wRVMqfdNF9Sq8nkqaNMTTlpjqnlc3R3Cu7lnFe5C4jZFXT5etAZnQDvMIBfUkWByB8vRA1mJgYZ8yw7MmyjQNVjirXBzu0obb2z0zaO62ilQMuDCx39p4reQKqF0i8swMSZom9I7GxkAMjrHo7GoaiaCE6nG3gdXRbYhVA', 'WcdBy9S', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('35', 'Rhe', '4SasR9Wk2DWbGoyO6Ven4428NixCFQtfVK3o5UizBAtHm7jIwpPIbxlNmCJrpqoxAyjWKYWoXdyMRVrq10yCYbcluWaSnWYELdxieRT8ZxAHjYPy0NDcn88v0myxt4xHvgkNX4rGj6IQp0yCiW5ABzhoiPVnkhPVvjCoPZSPCjHJOTpdU0RtmR4wmB416jE', 'qElM60', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('36', 'YHYtI3CX', 'xuVxIs91HAxG57vlaP5L3AiCDXhovvTSnrvuy3GFTbyEmNWCw3Yj3furlP1pPTqMzIFOquFeu0diV465y2YEZ0N9yYG3v2MajDrcerZpMuv3Iegwut9NYJtZGFCOc6FZGHWKO8i0XSQ44e3hT0TiamUcpUinkDpWhoX9uqrPjMyHIcrkfI3ccvbR57AKgrA', 'Jd4Peiwuvl', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('37', 'EbL', 'y5xhHi6R4xDwnZcQzkbtR87nbYafqILp1SdTeTRbCPmuHGeQpmtKNoK2v6AXGeNhiT4t4PBvEXHUfmIfTljv4iS0qqtceVkQjYKBOG0hdN92MUrlWUd5zcfdKWopsj4qAMsN9CgM5GOLn6MecjAWuT0iVZmrcsQe24FrUgigOooGjIG0Ga31D0QLbKU1ulW', 'eCqpPby7gt', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('38', 'BJufny7', 'yYPjNLId4xVES5F60OKb13VMyiI2n7Bmm1B8QjXAPXOdwd9YpchKw3EeVj6B1iVFqFBPcmoQIUx1qbw0MzAAVQ4ua7MTfdm35Z3kfOwT3baQ8P7YC2l5bSZ4Bd432IZybi5VYsHjvPXgY1QToNR6hDeicdfiYzP5fipGLaxNOhXFVHjdTQRPM0XN7QAV93r', 'ZFxhwt', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('39', 'A04I', 'ndQfEGMVeTSUMAIvBYR4rma8SFHBLDisvnY8ou846ciYmIMC5fiHsPrbVLBUbyCzc78dwrgg5OyEOc7cTMizuTzCsrDF0LPzN2AHLodphVtFwpMaN6KHZD0mYkwe5iv61wzgC7fO6GcMTTbsd63SDtdEiJTTrXBupvCljnV4hfaW73G2yA8ml3Hdr4mtzEs', 'GC3H21', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('40', 'NFRWqlJg9L', '5u7MrL17LbcI1hXrYbc5FbrT61Kr77aHsP8epsLU9Rc6wCRNdUqX5Urg4KC6jFb0bu7jrKvZ2yIkVgjXXWNsr0EyekJFgFERQQG1gxIaGOfQ6cQd40tkpYrLyAnXTuiOGs2ja2gpdDK4DcNGxZUOx4zMgN79B2kj1PNbqVGccXol3CZgw89vEy2WxCzgLhl', '5aeU', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('41', 'kyqlz', 'Y8wbyRALfPCOPKp7akcBj1ZjhFRSoqPbhwoU3mjGRsql6dd6WNocGgDEFs4N10kq4WucIq4FkwKZwkMqEnJ77MAmJFeWZAGQJ3BceabdfzHl5ErksKMDwsJ4qJrGaRVhTqvgg0HXOkOCpxdXvud3Wuy53wSppRYWDfLptmgNWbIkMD2rdiClE94QnLqROJ5', 'OOR', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('42', 'EBkmnJ3g', '3nKIbnSOSBPhHfgmRuNpINXdTZXXAc61j2LCqHG89uaeWb4CD0flr4mPey5AyvrCxhTvWhBnjukWgz95Zl5k3DOM3urTLmpg9t8Y3S4jrFzu46dglEj5eRzAxCtPHESXeOx36oNjtKD5hx4OqKsoIMZROjFZPWX9zyzBRzu1EzlkQCzStwSUYCay4bmmYz2', 'mUlutD5j', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('43', 'YtItHhjz', 'qb6Bh6ojEDF1BeCqdLY0qP3EFHPnTI9OLS1RJKK6A5FoJHijitRS0UvgTR3HrC8KxipGyEdwVx8yWcbzEGLAvoUNoZfYHAlDbzeWqruYL6MWtitlBQ4EgBLRKqWPJlQexI5Si1O7cBUadbPCibFlrnsxkSpoFz1iV5sDByQFEOInMab7DIM0r450J6tSxl2', 'T67gUhc', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('44', 'Y1Nq7', 'Ix6qEvbgeloNEVo8Kd3Vf22JWHWZNzmyCilXOX59ObN4W8k8uCxMadx8k9NS31e2Si6bKaZ3n4dIIlBDflXe7Qo2pKi4GVLiTsX5dLT6wrKp9CmAJN8wXRbxAKdrr9QWTHMPZ0vfOBV4yHSnGEck7AmAI5KQFbp1egeVTf91L0q2YzzNPwI6d7IKDnd04Q6', 'kGyf', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('45', '5t', 'BGTcBiKHLI0cBKvBTCyoRVss0kXgieGnIKYe7MWRXWUbPzZV9ftMmrwJQxizC1AAtVf0FJmFcmnzuxUW3p8bUMn6ZxSLCafNsD1lVaypDOeN1Vf81qcEk4UIGz2akLFqgyRwcYLhFwL4T4xpWAZqKTmegykkewpSkbJJJlD2GodZ1H5QbZM6jbwLzVXOiI4', 'ucX', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('46', 'kI66X', '7IzQTVUxeovHowDMrCZRb3nCe3jsTJitO1RiIKV6iiTSuK493x9PfCiC7bMho6C6LVWKXijBxZk1W300cKui7lMLoloZHJbk4gGJYXHgecnxAHU2mSddKMtToNTge8Q6hya5Bt2VOaMSvzkeUA2CqStbnnVUhvr7yiwzNUYgu6MzQReyvY9rNQTd1RGkQwL', 'hPbTQLxwJ7', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('47', 'sNnMtW7jb', 'zhhrWc0NYGcNX6v0oe4RdBEb8PP5eTB829avnUeqgefTGIB7WcT2clie0vMmb1sKvRA2kuKiSQgE3EzOphuoonfZXheD5I74kuWA8eg0CXC7bpGupkONd2o5HV9KU8FgLF9iCcTNHA1ixS2eQY3OeSQN8a36IwfmvdP3mqjXzQ8m66Aj6BrWdBCr9OGfGH1', 'DQk', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('48', 'QZxK65sL', 'ZONxLxyNgSFLAAg7cqZniw75tnjzJJc2FtR0JZpBweYBNwyop5G8QFp7TSmxZ3eBKodcKOtkoJrYBgemYfWEJcb84HBNdJxljzQUzPlE1wShtByh0wx3cgRWv1ujO7x9ZBLFadFme3tEBfPnWk8fIBihrrMV50lmVsScetENdRPmnJu7NSvsQGpJDC7pBk5', 'euy589R', '1', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('49', 'Va9KZ', 'mMrGE644bZQSB0bZHgPzGgi95KsruDqEIvKkGP8lBRYFN6VD14IM7IRF16N9fCtT0Onk6lUamVHtVX3mAZ4sfDiONJ7sNuFnCv49QsBA7zY5QhQHdn5CBh0mg9nIczJ975Q0vDH5JuYGu9DRA9LKlZlzRDQZ8UY9zXonkQii1ri72iqrLaKPmV3W7KsjQiR', 'LNSo', '0', '1540643013', '1540643013');
INSERT INTO `dt5_users` VALUES ('50', 'ZqSs', 'FmiHyD3IHnq4YC40cmRyFVGAuQkr0KKlr7tlgAeB5DBzba7OgtCDEpwOoTuvA9Xe6xttoguLKFO0bZX71Q6nbVLUiZDKJBdfXVQnG3wlup70U9ka1bnCZppkOs24Rj2J1aaZqCv57xTb66HQpfVS1lo8CY4LiWhCTmJ6xbfRAa1ALBMZZfIczTXtaffnX3o', 'zrw0OuKb', '0', '1540643013', '1540643013');
