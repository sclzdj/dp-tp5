/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : dp-tp5

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-10-28 20:23:48
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
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COMMENT='分类';

-- ----------------------------
-- Records of dt5_categorys
-- ----------------------------
INSERT INTO `dt5_categorys` VALUES ('1', 'tsv', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('2', 'GurbH', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('3', 'uSa', '2', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('4', 'UvX25Y', '3', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('5', 'jwAXhteY', '3', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('6', 'AhC', '3', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('7', 'EQXsKFIgx', '2', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('8', 'RP23d4', '2', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('9', 'fzB1Ov', '8', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('10', '0ST4', '8', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('11', '1F', '8', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('12', '7DMxwWzbQ', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('13', 'Bpi1', '12', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('14', 'O7oC17T', '13', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('15', 'GhW', '13', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('16', 'TJMEfz8N8T', '13', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('17', 'natI', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('18', 'UKL', '17', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('19', 'RDhz', '18', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('20', 'eSlM4ZQx', '18', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('21', 'dgyT1mI', '18', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('22', 'ibmlJ', '18', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('23', 'jTasVXg', '18', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('24', 'cML16g8g', '18', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('25', '6k', '18', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('26', 'Gw', '17', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('27', 'JKSE5dnx', '26', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('28', 'oj6lZbQ', '17', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('29', 'IBOd', '28', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('30', '14k7A', '28', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('31', 'B22xDl8c6t', '28', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('32', 'scZ1mbH2Iv', '28', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('33', 'Ys23', '28', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('34', 'o3THmpb6TX', '17', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('35', 'Si2Ep', '34', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('36', 'NFm', '34', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('37', 'NT', '34', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('38', 'utA', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('39', 'QkSU', '38', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('40', 'DhlXYni', '39', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('41', 'o7PfYhvL3v', '39', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('42', 'CZlq', '38', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('43', 'rOe8', '42', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('44', 'rrB0W', '38', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('45', 'pi', '38', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('46', 'Bbfrw', '45', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('47', 'VarzTNiLE', '45', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('48', 'Jj', '45', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('49', 'lIST61tnz', '45', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('50', 'xPq1eD', '38', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('51', 'i1CwdC', '50', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('52', 'DRjs45vA1e', '50', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('53', 'EED', '38', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('54', 'PBqNl2xSO', '53', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('55', 'wj903c9', '53', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('56', 'IavMXPc', '53', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('57', 'H6EO68CFo', '53', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('58', 'a3OM', '53', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('59', 'Mpxx', '53', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('60', 'Wfu', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('61', '5YCMpPxBm8', '60', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('62', '1pIF', '61', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('63', 'at9on3F', '61', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('64', '0CbIG8Pta', '61', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('65', 'kR98iee', '61', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('66', 'QCj', '60', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('67', 'XN7cQaDEy', '66', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('68', 'FdTB1oZj7', '60', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('69', 'GxG', '60', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('70', 'NKW8', '69', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('71', 'b5Hp', '69', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('72', 'L0pyk', '69', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('73', '9daaLNgiH', '69', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('74', 'HgOeX8FYw', '69', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('75', 'EKp', '69', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('76', '5Ze', '60', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('77', 's6Fk9Yxd', '76', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('78', 'jAc82kSJP', '76', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('79', 'W33I', '76', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('80', 'bY4Z8NRp', '76', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('81', 'YXzRhEXO', '60', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('82', 'sXyTEhT27', '81', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('83', '81rQ', '81', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('84', '6fZBehe6', '60', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('85', 'ZXqO', '84', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('86', 'Xn2xJRUW', '84', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('87', 'Cl06rdNBbT', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('88', 'qk0Jt9o4Tk', '87', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('89', '57', '88', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('90', '23YeWpD', '88', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('91', 'EregZh', '88', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('92', 'ez8Fze6UGU', '88', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('93', 'lS', '88', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('94', 'ERgB6rhm', '87', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('95', 'Kv', '94', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('96', '2hi', '94', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('97', '6ejZu8VE', '94', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('98', 'm6', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('99', 'CYU2CWMM5', '98', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('100', 'gw5', '99', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('101', 'yA', '99', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('102', 'BSZh', '99', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('103', 'AuR1CRI', '98', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('104', 'z7O323en5s', '103', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('105', 'Shz', '103', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('106', 'YeWDfV6Jl7', '98', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('107', 'JwJUomeQp', '106', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('108', 'ftgr', '106', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('109', '679cFz4hcF', '98', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('110', '5cMRAWYDV', '109', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('111', 'yGi', '98', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('112', 'Zhga1VHyA', '111', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('113', '7S5x', '111', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('114', '8bLPTTTzI6', '111', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('115', 'WAtmB8zzW', '111', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('116', '9SPh', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('117', 'OSaPt3ae', '116', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('118', 'P0vTYW9frX', '117', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('119', 'RXzj3LhTC', '116', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('120', 'bBt52', '119', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('121', 'smm5', '119', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('122', 'Q1QJ3Ba', '119', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('123', 'J9T8', '116', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('124', 'eBb', '123', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('125', 'h0gPq24', '123', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('126', '1XgA3kQr3T', '116', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('127', 'xQSDZs', '126', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('128', 'S8VuVU6', '126', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('129', 'eUYF61d7', '126', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('130', 'ZM', '126', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('131', 'bNgih', '126', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('132', 'Qwvq0aTLL3', '0', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('133', 'jUIO3MGLF', '132', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('134', 'ADxAnH9N', '133', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('135', 'ss2u06cg', '132', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('136', '4QdWiN', '135', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('137', 'jLwfPG', '135', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('138', 'viFQiyK', '132', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('139', 'BlxarBVa', '138', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('140', 'cJXcwm18', '138', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('141', 'VCkg', '132', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('142', 'sDVr0gp', '141', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('143', '7jqIcvd4', '141', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('144', 'ODAEkc', '141', '100', '1540650883', '1540650883');
INSERT INTO `dt5_categorys` VALUES ('145', 'J9vu', '141', '100', '1540650883', '1540650883');

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
  `relate_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联ID',
  `is_forever` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否永远不过期',
  `is_logout` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否退出',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token` (`access_token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='=守卫验证';

-- ----------------------------
-- Records of dt5_guard_tokens
-- ----------------------------
INSERT INTO `dt5_guard_tokens` VALUES ('1', 'N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', 'users', 'bearer', '2592000', '1', '0', '0', '1540651055', '1540651055');
INSERT INTO `dt5_guard_tokens` VALUES ('2', 'qEBl2h0jOwkwbBj6lekEgHYKVg5hXxfUjtIn2wJooJJ8gn7addBFn7zXKpjzobmqGmmLEviId1qVGzBjIxALO67bRV0y2qjLRRnZPKbl4HFlXjphFTunRcjhl5zBgcFDaDsSnA1pS4EOh4Wba528IYouegID83WpU4jqlaXBCdJNclTSrA9WJ3d8Leq5iulM3cetTgHMaviwshEV51BB7AeQqYtZA5JkhjZ6FPjXleL9AEcEYkktPjretVFXiplxtxQiB4E91PV2oKsSMipyHjIGoAYbwXrFJ8lvk5LWWnGi3xTCarzEH4U1o124f0BrOLx', 'users', 'bearer', '0', '1', '1', '0', '1540652617', '1540652617');

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
INSERT INTO `dt5_migrations` VALUES ('20181025070948', 'Categorys', '2018-10-27 22:28:32', '2018-10-27 22:28:32', '0');
INSERT INTO `dt5_migrations` VALUES ('20181027065043', 'RequestLogs', '2018-10-27 22:28:32', '2018-10-27 22:28:32', '0');
INSERT INTO `dt5_migrations` VALUES ('20181027095545', 'Users', '2018-10-27 22:28:32', '2018-10-27 22:28:32', '0');
INSERT INTO `dt5_migrations` VALUES ('20181027104247', 'GuardTokens', '2018-10-27 22:28:32', '2018-10-27 22:28:32', '0');
INSERT INTO `dt5_migrations` VALUES ('20181027141950', 'RequestLimits', '2018-10-27 22:28:32', '2018-10-27 22:28:33', '0');

-- ----------------------------
-- Table structure for dt5_request_limits
-- ----------------------------
DROP TABLE IF EXISTS `dt5_request_limits`;
CREATE TABLE `dt5_request_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(191) NOT NULL DEFAULT '' COMMENT '请求ip',
  `module` varchar(191) NOT NULL DEFAULT '' COMMENT '请求模块',
  `controller` varchar(191) NOT NULL DEFAULT '' COMMENT '请求控制器',
  `action` varchar(191) NOT NULL DEFAULT '' COMMENT '请求动作',
  `method` varchar(191) NOT NULL DEFAULT '' COMMENT '请求方法',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='接口日志';

-- ----------------------------
-- Records of dt5_request_limits
-- ----------------------------
INSERT INTO `dt5_request_limits` VALUES ('1', '127.0.0.1', 'api', 'Category', 'getindex', 'GET', '1540650932', '1540650932');
INSERT INTO `dt5_request_limits` VALUES ('2', '127.0.0.1', 'api', 'Category', 'getindex', 'GET', '1540650936', '1540650936');
INSERT INTO `dt5_request_limits` VALUES ('3', '127.0.0.1', 'api', 'Category', 'getindex', 'GET', '1540651046', '1540651046');
INSERT INTO `dt5_request_limits` VALUES ('4', '127.0.0.1', 'api', 'AuthUsers', 'login', 'POST', '1540651055', '1540651055');
INSERT INTO `dt5_request_limits` VALUES ('5', '127.0.0.1', 'api', 'Category', 'getindex', 'GET', '1540651067', '1540651067');
INSERT INTO `dt5_request_limits` VALUES ('6', '127.0.0.1', 'api', 'Category', 'getauthid', 'GET', '1540651082', '1540651082');
INSERT INTO `dt5_request_limits` VALUES ('7', '127.0.0.1', 'api', 'Category', 'getauthid', 'GET', '1540651096', '1540651096');
INSERT INTO `dt5_request_limits` VALUES ('8', '127.0.0.1', 'api', 'Category', 'getauthid', 'GET', '1540651134', '1540651134');
INSERT INTO `dt5_request_limits` VALUES ('9', '127.0.0.1', 'api', 'Category', 'getinfo', 'GET', '1540652519', '1540652519');
INSERT INTO `dt5_request_limits` VALUES ('10', '127.0.0.1', 'api', 'Category', 'getinfo', 'GET', '1540652520', '1540652520');
INSERT INTO `dt5_request_limits` VALUES ('11', '127.0.0.1', 'api', 'Category', 'getinfo', 'GET', '1540652521', '1540652521');
INSERT INTO `dt5_request_limits` VALUES ('12', '127.0.0.1', 'api', 'Category', 'getinfo', 'GET', '1540652522', '1540652522');
INSERT INTO `dt5_request_limits` VALUES ('13', '127.0.0.1', 'api', 'Category', 'getinfo', 'GET', '1540652523', '1540652523');
INSERT INTO `dt5_request_limits` VALUES ('14', '127.0.0.1', 'api', 'Category', 'getinfo', 'GET', '1540652604', '1540652604');

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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='接口日志';

-- ----------------------------
-- Records of dt5_request_logs
-- ----------------------------
INSERT INTO `dt5_request_logs` VALUES ('1', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540650932', '1540650932');
INSERT INTO `dt5_request_logs` VALUES ('2', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540650936', '1540650936');
INSERT INTO `dt5_request_logs` VALUES ('3', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer 84g200AFIROxBSFaIKCCcFo821xg0gM1QxGAh00aKZAIUCFa8dX7g93fgBrNr8OkeMUCSe6dfl4tBwFXg0f8d4YXgi2gkgPy3YVlUueYy2RBA67SuqOZqdJ0uLkYeOl6KL2T2J26is5LzV7MWV862XtvNu2TGZMwscwdm21B3AI3sjcKNj8m7K15iWmBsl5kCtyPyftKNxLXIW6qdFUhA1bRXE9kjXqrFr8olPz8cQDCEahF5OiMbGkv6It80mtFmP8S87J440YqydBj1lHGftoCQiPXsm5vD8ccqTNZhxiTa59nRMH86txHPZa8ZIoLgDd', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651046', '1540651046');
INSERT INTO `dt5_request_logs` VALUES ('4', 'http://www.dp-tp5.dj/index.php/login/users?username=sclzdj&password=sclzdj', 'POST', '', '{\"username\":\"sclzdj\",\"password\":\"sclzdj\"}', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651055', '1540651055');
INSERT INTO `dt5_request_logs` VALUES ('5', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651067', '1540651067');
INSERT INTO `dt5_request_logs` VALUES ('6', 'http://www.dp-tp5.dj/index.php/category/authid', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651082', '1540651082');
INSERT INTO `dt5_request_logs` VALUES ('7', 'http://www.dp-tp5.dj/index.php/category/authid', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuH', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651096', '1540651096');
INSERT INTO `dt5_request_logs` VALUES ('8', 'http://www.dp-tp5.dj/index.php/category/authid', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651134', '1540651134');
INSERT INTO `dt5_request_logs` VALUES ('9', 'http://www.dp-tp5.dj/index.php/category/authid', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651187', '1540651187');
INSERT INTO `dt5_request_logs` VALUES ('10', 'http://www.dp-tp5.dj/index.php/category/authid', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651187', '1540651187');
INSERT INTO `dt5_request_logs` VALUES ('11', 'http://www.dp-tp5.dj/index.php/category/authid', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651188', '1540651188');
INSERT INTO `dt5_request_logs` VALUES ('12', 'http://www.dp-tp5.dj/index.php/category/authid', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651716', '1540651716');
INSERT INTO `dt5_request_logs` VALUES ('13', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651729', '1540651729');
INSERT INTO `dt5_request_logs` VALUES ('14', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651768', '1540651768');
INSERT INTO `dt5_request_logs` VALUES ('15', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651800', '1540651800');
INSERT INTO `dt5_request_logs` VALUES ('16', 'http://www.dp-tp5.dj/index.php/category/index', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540651889', '1540651889');
INSERT INTO `dt5_request_logs` VALUES ('17', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652103', '1540652103');
INSERT INTO `dt5_request_logs` VALUES ('18', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652126', '1540652126');
INSERT INTO `dt5_request_logs` VALUES ('19', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652147', '1540652147');
INSERT INTO `dt5_request_logs` VALUES ('20', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652504', '1540652504');
INSERT INTO `dt5_request_logs` VALUES ('21', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652505', '1540652505');
INSERT INTO `dt5_request_logs` VALUES ('22', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652519', '1540652519');
INSERT INTO `dt5_request_logs` VALUES ('23', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652520', '1540652520');
INSERT INTO `dt5_request_logs` VALUES ('24', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652521', '1540652521');
INSERT INTO `dt5_request_logs` VALUES ('25', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652522', '1540652522');
INSERT INTO `dt5_request_logs` VALUES ('26', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652523', '1540652523');
INSERT INTO `dt5_request_logs` VALUES ('27', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652604', '1540652604');
INSERT INTO `dt5_request_logs` VALUES ('28', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652611', '1540652611');
INSERT INTO `dt5_request_logs` VALUES ('29', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer N7d1GDry6pl8L9WPBBtXF5286EKKcGJgwfIrzDJDqmIUfJ6Lhqq0sFl4cEvyUafawGfNhJ0sQtM1LpYpbMWs7PUCNyewQKq2hYLYHvR79V8HUKhghz1qHCKjIlmlrqsGT4ImeGfgxBoklPP4jy9WDYXTIHPVuu0nXo5ViGyVRpnqy2SCYFp6lv5dIWvecWTGw3ILGhHZ9haSwNNrjEmLvsXAIdAJygAPeCpLXZqwl0DLhBssXpMJs5rTlh3qb4TXgAOAvPR4AVeMf3lJnotpWPDOAeII51NgbFmiJUB2sB6KUo2FKRBdWk2eN3905qjjuHN', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652615', '1540652615');
INSERT INTO `dt5_request_logs` VALUES ('30', 'http://www.dp-tp5.dj/index.php/login/users?username=sclzdj&password=sclzdj', 'POST', '', '{\"username\":\"sclzdj\",\"password\":\"sclzdj\"}', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652617', '1540652617');
INSERT INTO `dt5_request_logs` VALUES ('31', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer qEBl2h0jOwkwbBj6lekEgHYKVg5hXxfUjtIn2wJooJJ8gn7addBFn7zXKpjzobmqGmmLEviId1qVGzBjIxALO67bRV0y2qjLRRnZPKbl4HFlXjphFTunRcjhl5zBgcFDaDsSnA1pS4EOh4Wba528IYouegID83WpU4jqlaXBCdJNclTSrA9WJ3d8Leq5iulM3cetTgHMaviwshEV51BB7AeQqYtZA5JkhjZ6FPjXleL9AEcEYkktPjretVFXiplxtxQiB4E91PV2oKsSMipyHjIGoAYbwXrFJ8lvk5LWWnGi3xTCarzEH4U1o124f0BrOLx', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652631', '1540652631');
INSERT INTO `dt5_request_logs` VALUES ('32', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer qEBl2h0jOwkwbBj6lekEgHYKVg5hXxfUjtIn2wJooJJ8gn7addBFn7zXKpjzobmqGmmLEviId1qVGzBjIxALO67bRV0y2qjLRRnZPKbl4HFlXjphFTunRcjhl5zBgcFDaDsSnA1pS4EOh4Wba528IYouegID83WpU4jqlaXBCdJNclTSrA9WJ3d8Leq5iulM3cetTgHMaviwshEV51BB7AeQqYtZA5JkhjZ6FPjXleL9AEcEYkktPjretVFXiplxtxQiB4E91PV2oKsSMipyHjIGoAYbwXrFJ8lvk5LWWnGi3xTCarzEH4U1o124f0BrOLx', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652632', '1540652632');
INSERT INTO `dt5_request_logs` VALUES ('33', 'http://www.dp-tp5.dj/index.php/category/info', 'GET', 'Bearer qEBl2h0jOwkwbBj6lekEgHYKVg5hXxfUjtIn2wJooJJ8gn7addBFn7zXKpjzobmqGmmLEviId1qVGzBjIxALO67bRV0y2qjLRRnZPKbl4HFlXjphFTunRcjhl5zBgcFDaDsSnA1pS4EOh4Wba528IYouegID83WpU4jqlaXBCdJNclTSrA9WJ3d8Leq5iulM3cetTgHMaviwshEV51BB7AeQqYtZA5JkhjZ6FPjXleL9AEcEYkktPjretVFXiplxtxQiB4E91PV2oKsSMipyHjIGoAYbwXrFJ8lvk5LWWnGi3xTCarzEH4U1o124f0BrOLx', '[]', '', '127.0.0.1', '', '', 'PostmanRuntime/7.3.0', '1540652633', '1540652633');

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
INSERT INTO `dt5_users` VALUES ('1', 'sclzdj', 'a6e7409c16ece6451c3657d9c1af8820', 'sclzdj', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('2', 'dujun', '9536809f97e454fd5568771b34b22e86', 'dujun', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('3', 'C5j', 'PsequlpdkYk0BRTcA6lGkVKpcIUviODiJsFIzHHAqL6vqKCUtRWFt61dhQeBP9JLVaIFiHNNW9JGoAwbhoPWKUZcOCT1WsA4GYdYFWzbnj2IucFpxT9xsN1yRSxNOQAXThaWHXoo4G91zpZ9E2KjvPjO9LTbtknmV1hnHRCs44E7stpLm1NL9wrpdkd9PvV', 'q4q', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('4', '0jB1NUEx', 'SKpwc5LbDAjN7sYBGMia6elXVFHOuZzMZ7eSdawBUHFHBATGN1SCFoCgl2BGyVQqxIEkLYga0hd7URKfpBtfFK6O37cEtaQ3sm1pXWMOmqjNizxjoNyRR3HT1zSWKDoPx0GtC05ctWvU3pogH7ytAp2aG7wBr64nIuFRXdc4Cqz3bPOA9puQo9EEc8Sgf6d', 'MiXH1', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('5', 'tMS', 'itEIYma0wIe5LbKg9sk3DJ9CixrJWNdHvD9UPqtkvxF2rbosUyKpExeRONoDDqZ2oHHSRx6kAV2jbIWS9pRGIN4cC5ZLTUjlviQ7GaCyQQwh4Z8YBtdesBTZSz80sdviF2LSn6WaGVBcLWMRgIP4j8n0ZGi03GHj57R3BS8JyjPGcKdXnOlLv43tePRN89H', 'lTYP009bb', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('6', 'a2eurHPqy', 'PNo2ccB7j1iWDNGQMHm9D3Rk8j0jRR4G0EiUUTkZeetADgWBPtoe7w3UWmxMIa67T7UievCxJbjlDgQL2siIBydHimV8jyjxCVUyvYpDTRAj5Rsu8NYSnhN3ZsbwxxlOC5ejXiJ5zcVofCivpVEAuj3d1pRtOmp3euYgWKqjEVP1J2SXiYgRdmKFwksdJ6B', 'Lt27S732wg', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('7', 'Uac', '6fKEpJ8N9S5Qp9afw8Pucx5SoHS3ZnHtH4DB9k7vWvgJKurYTTMiwaQOI8wIIlxHqMxsH7wZrRHfirPv9Pugo4NuuIQLlyGcjJdMBBXmU9cMTUI1nVKRvOahBzfVIz2cEGfJVbDlby2LBGWxB6DwPTzmgw7479ALG8CMX5As7VmlbnPmWiNrkjTLp9DbtU4', '4WI9DiX71O', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('8', 'tE', 'VvHvoq96PJzvqb6iU6GuB3RLdabwtoCYkVx2CicIdGJ61wcey8LpKRQYQqRE5SZkNlP94zMDALxJ0x4cs1uk2ZraOnwUnkRJ6DVCSCtci8btV1wY27qXscYXMKwFn4zrXhtIuWt2DcuFwbt403H1ENPEYu01MwwShrzBpabVAfuGvV1MHyrXqSmriiAmpRP', 'lqbxrH', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('9', 'j1LRsOYk', 'L8Ri81wtFtcZD6tj2N5g0twyRomXremD9zK4N60DHafS85dEcuZknkxSHrH7CeMA7uhw96aabXRxtqNLbkPmtSM2c2YaIe2d411STtSZL0ioFZtcp6b6TNiMRnPx4hgdCpc7Erw7u2I0LmzMdMnVMlIdAqjlEeUy4Cvda99VTsGWY54HpylE8a06i7eCv9n', 'inCsvv61F', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('10', 'MFHdi', 'mpmO9PRv0mjqpesXVFblYiyAhIVOzsRcjDM9V3VWTdceDBQFTqP7b0PxgYtPRBlOqIVzme61kvO5Mse4CDX1t7pCZknYmKHpGPwgPoqj7pGyNd1aUsLn3QtMqzR6h4yMtSnRRhF39BKaJ1WtBWMGvb3oT1FIEIEJx0qo45yjqLLA2TrhhTmcjuoCwCz3GRG', 'H9aHXe', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('11', 'jzA', '1FCqaq3xdrD9MWgDSukMi68udKSrIzSpcazwyQ9xcDPlcIjgQIb2UJGnr0zZDcmDBeySrZ1sWngVzg9o7Ik2kl3UmuGBlRc9B0KgKeWkAdHTWt5D0rO7RjQQ3lLFZpz6Hz8O7D1PQ13LTsq9fj9oDKkkCFY5JG19XVE8SmEHB2stadq4ohpcKf5UHyq2jXX', 'LTVLsAR', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('12', 'OGw', '9YoY6Y8BZt6ERbu22s7898ZdwqhT2Y8KwixBF0eBLnIbnomjXnyWl6fCaPpni5o4qzIBKVZlMe4fHeWnPaKOLpHNxrcq7boRdY2xjcbrOf0DwMrAxb7V4J63qKpv6IlpROPughFwtwLhx9qRYRjWSKUqMib05n8c5yEByJGiUxaiWu7DebSQ9lBk6T3T3D6', 's03l2iLdbd', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('13', 'D434JGCbc', 'WyLrr8MiSYX6Z74hQ7DMky0LsAhEEloY7QK0QdETRfhCdOOB07Eynh2mefCRGsR68dBON1pfvxpjk8TUSXPvAc7L1TF5LeDMQ5EYNBwSLxz6mFuu7glNzOhffX6WUyLbW9o3xz79XKe5K1zhuGz4JuwoqkvwlAUSWosup0ixiOnwCIPtFUG4b6Pb3Xlb9dv', 'WEgWXmYB0D', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('14', 'FB3O', 'xsnC6jqINHFJRhvGdRJVoz8MbLDMHdfkaEejb9Ny0Ubf5qi5xr7azD3aTW5Y4JoR9wgc2gPQWAWwipUMV2PjUXJzKHbvjjZVAl4u2Gp7c8M4d4R7Suka9js10m4PrqWGJlOQPGh9ZBh3U8AMq9RJoJNOmqK16A9M3tuVC2rc9e1KxmSN7J1qMsXgpDTR5aD', 'JtF6Qy727', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('15', 'NTy', 'DZ0E4FrL1U28fWPVbaAom9bubD6an9gGR4CdnZ19aetVvBxmyMgs5bD1SepGbDW11xYWw5dJKiMylK3Yuj91GT9TvHpSLYI2cwsZORe02nxcJcdmkX5j8WStmvrb8jWIkmzcLMyDRX2LvihaOpECkochC4duAoNoWMB8P7a2WeiVlNyxctwWCCnt2eTGo1S', 'PlliLS', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('16', 'eRqp31a', 'U266jXL2kGEqiVqg4jq1dWXNfFVw340s8xMEWBxp9rNFk3xaDMbp6IyXo1ACTObqzXF8aeP2suRIfjVl2ahzwYSQTA7BMcmdioCQccOXBhah6spnliuVZHK4wme9F22V9KVApgIINa8Pm8FFszknnHkijaoebAVSM9eFgichCxobQupfLqCxCkZWZa3hCCm', 'FYOwtRc0Y', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('17', 'no', 'jT1m0iFZ3BWi0hNto1lSfOAxbkvuJO9CkzkLj9UF1A4zFy84SguB9OOt4A34dXwrdwEsbssjkOczJH5cCeO0eIIlYR0gTRuwrPqq4QG1NkoOhwcl92mxP2BwvPb5HiSlF7nX1MIsSdc9iywti3ZkH2aJ4VwcT5usiUMyJyefJ0N9ud6mVsedsE0yvsAsCCf', 'Gw9XPzJ', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('18', 'fcbuR', 'AHu0V5l1Pxp7vpyKae1trTqPB19ImGrZxQH9ZdfohJme0ZUqcE9R1oNZpqTRmUfeKhaKl23KbE5THthW1CtABcSRVf8p9uY5XeTNDm38V1QRTYrVn5sTChfDPbcjCsoWl7GVs5tsXBsHstga1bxLepy0Y4J8pcqwvcSwBfGdT8tS0wXA8jEtuhwQjngdtl8', 'rcImJ4fjq8', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('19', 'za', 'iFXCagWLgmJCGwVVQrM6NgSGxb49W7HL7ZI1IqQVoGBPzdXvWNGq4Limskftann3zSsuAaL0vp79uuDKD3ZByzWV5aUET4LLOyhEaF0hGbVzcghyRlVSK9cvJO19l258q03lrEIBYK3s8ASOc6CgdFJaLNc8b42bumbbOKA0lxejuIQJ6rRv7yhiiAJflYZ', 'LemcMm', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('20', 'rDBBN', 'vTu1wPXNQdTm3UaGdXmmGvROFIgNASNGqb8X4QJAtA0uok6L4kjvZQ5kWZ4GsH4l4vtzw1qAOlR2WCsjL3UW07wjCoZuEiaOjK5KCtB94O79qiu9Any6Ezmovl02Z1YdhtThohoCWwv6cBYdRQqwy8L4Xwsv5hMWdsmH0yS9kkeKtV5XvA07n6Dx9vTJLyU', 'xX80', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('21', 'OZqb', '5PQEwNMoMo5b2XpAisPjvvmijJGQFdc1CHH13yf1SwWASlNx5SqR4ciqHI7zulvdDeA8LjOO24iz6vqnv89yKuBglJaQubm3JQL6irOdG51o0wEHLYAkNHBGeAazlPDrNlBfyOori6fnXXwvfDKNO3ykgSlF1g8ipsFX3MT817vhFQbnyAf2KXQ8IsNKc1M', 'O4mJgjb', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('22', '8gTZEgjK', '9Iz0FKmi1AhcimyOLXVdLCSqIZOptUjTL9HmvtysR9G96NtmFaQ7ZzklEkjrSf69W6mt65NI2HizZdY90Kfw5ewpvv1jIv1rHOBKWPlCiywghloqO8UQXgloM0Rubnf0sRw751yVqDBOScsxbQi2NFs32ZAnI6C25H3h4Ko9RhJXjZN0pVXZoPclIbCy7AA', '7XtA4MnKAm', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('23', 'Cgv', 'DFPL06LWKlFirrk1uScHxa92VcIVZ3vt7VdbsrBYc3S99bPQQJxbiuCLiPtY86Kuta6X7qx7Pis8IcwsY9jkoT3YkMXP3zs9HYJfCaRUNz8mhwjdiWHbBfnwerDjRz4GnlibxqSPy3nntV6wy3kI5m7wKbDuCb9LIsgEGxB09PtTPq4uOsmlzBRFHs5vCtV', 'rzt', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('24', 'PxgmBSa', '4eIPckV6bBRUOm7bfhnNP3l7qDuddlnzqEJ4DcEqEwZUvRLAYHZeNux9loJK1gzSQrJsy5rnhHN8YpxgSDyzOEJaIsdKCcNNLijEz5NE00Tk2DDDDyNxgSZYeC7jch8Kp6dPlTVi3NJnPisVUKOrZSwoxm0Ao1ZG2VkR5lu5ueo1aukU2ZZvn2RELy03yBG', 'qXkntG', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('25', 'sJ', 'JF8hibMawR6oe8RSXTg2TYdJb4j287p6Fn8DHjvDUfVLPSrWdXXiDW87U1cfMDjMh3BfxUCQjF446dVyqZHzkEqNQ3OWF8ct67DzgYqoIGNYqAGCRJPZIuRyvWhntgCngDOPKRCmXJje2njBCcFn0NaDp8V4VDPEVzv9Vn4UuettOMZIc3x6AJpwVjP3Hf9', 'assGRxBpLU', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('26', 'MX8HDV3', 'I2YnPaRwi169lyJ17XmkToBCtylJ8Dz662hzkRvAGlKprT8VwNwbYPlDYSDeUMSGKStuU2Krd0szUzkGLktp61tJrRIQkF8wTTpeh6yn3cxGTBNefOJtW760gpkCQSw8teUvBkwKpwdYPumHaxdSJWIRlk0esiPQs7YjA1DwInTUXvfKSzQ4VPROwQdZsSO', 'G5SQps', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('27', 'xB7gbsg6c', '5mdLVwUAbJshW8oKaRhgoxdKjqd8aWNnM7ntAky4TWjh2IP7tArmF1ixwSGgGTpqAvDJw4VUFTIYXTO6qB2LqUOITDV3niB6XqJU0Dh8KsbWJcnjhKtrZITsL6veAnSBb1lekzDjgcK89AKijWqfBC55j9WHU4GnuB1yEff5d2gXw2bRZGLlPIbbt8E83h2', 'urTcbzzx', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('28', 'zPF', 'ngmLQ5U7xUzJfYtz2sx9usCtmAEeUce9zGpDqmmN3UePO0jEkxlgGh6TUaWR3ggKN9XbIifwLEDaQWTEPLqBTrCppukId7rS4b0QLgtdE3K8BT2alYgCZasMDiZNXGmW6YFu26HzSzly6nqxR46PvqV6gP6ZZ0k9rb5wD3RmwW5VhpVbnVdqJDEUvgSNaXt', 'K7zIcha', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('29', 'RHukEKxk', 'RFW9qDpKFHqpmhcSIsvQ1ZknUgV6kaSrQfUuSU4LfmZ2SWVcNNVn2habDWm6WQpZPNru7JB3QvSNVl7xvRyMv3hJuTjrdsqO7e9zOp2uI6dfd2Q7fz94nousGS6vSdCaLbnAkIXR63wELgVP6OC6tpRh8uXqw88EJlReIsF2aR97W9aoAKVqh7sSth5sM6r', 'andZ1N3PK', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('30', 'DyGgPjMX3', 'MtRieQIsOLgXj3dVYYkEwALriTsHYtkexGtLYGLbd4bJ0Evy1VDdbv74hEOaA6KVN4r677My6ATOxPdn1XGOycOw1ofphtahdpockBIaJ6Rc9hrWtT9tXTeQZBDHfsoHdDWWejBtCfmb7IXfYoToWikfdLIxDVwlKIFjav5YNjSvo6mzJCkP8kKUmxvRReS', 'QsCSiKu', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('31', 'SU1bVmdz', 'MDPmiFAiRlemvpmot77tieZkzUTOQ7WSbU2vYxf564mRWSO6nW5trqYZ9WFsNe63EjK1Ama6SUfWOXLUr0UsK9KOlbEh4sIn5uMI08vkBFjAogDLNtR49FKRtFy8ZAA6qLyqKoSePnCIseRXXMWbmp38BGD6M5gOffskDXNoEEVpubOxS7sfv5qNwz4iqnl', 'JvH1ps', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('32', 'gp', 'CizTzEZZrdyfB1Br2vif1NeXFYh5DEIol7MDKSrZZQIkoJESUNnBVv5pvMCJIozTluO8Q065VVyc5Wudui0x2nAwcQCvGiJJzvHdCQgC1gXoSUrwoO2DsbHDO4u0hiiZKuF3JCtVSeaIXg9muD3OW8NgNtRNpTmUnEbRW60Iza9q8zBx1X97GmmRLx1Wgbc', 'WS', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('33', 'Vt0', 'H475bnbMznZUYqsujHr9w0PvOJfRaHVSTJNrU6BJPWpeBoKhOBmlQeOsMGBUhf9veOF1S2tTuduv3tFB7HybHYKYTxD7mpF4fjy4o1c1jNdJ65GIYcIG4u5HclaKIk5KIqVlhDlr9N59gFX6FAnywaIVBRV1UkGipNVWbfA26eNCZs0ZfA9NKNTn8iABTuW', 'JiYoigYzg', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('34', '6VtYc7OdT', 'Uy6wFMSzYwp4gN2fQL74i6NyULcE8W9zdCra4GjeLow5elkLwdljHvV76Yw2VOnlbfiDFKpfJe6uk6Z1Xt99Hawakz8WnslCiaZ0e7Ls3Z8nqodSAajDOTHwFKyE3A6AOtHibyUCN6pkJentsdHUqFvQYUzLiiiTzffY40eANRzrigXqDHB4WgeUSuWvDml', 'LHiGNRSxg', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('35', 'b5m8M5hxli', 'TgqpWXM7nFnjno7lo3U8BvDuBGTzobUhcC5IS0zAoS42d6eDkkroOSEGhFcKb0lPMJ0HJyay29ZYCehGyCftZKpbu3IEOgeU4BM6fcSGMBzhQdfAEDz2FWfqdnafeKLc0ceSjcwxxZceGK6FfZW6O4qYYIDgcN9tRE7s4arXtE4Vqxd56gZqA5MGKk2frCm', 'TO9jalQk', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('36', 'WClaFm6n', 'SGGxkCUylhq5ebWUFJE1jMCxhcfWcm8X2kAYQgWgAZJ4Axq8FQ6GIMtjC2BRscLa3v6eLxmJDuJxhox9JBd28vuLv6C1rjPnNoLI5TPKFPFfSMvJm4sdkRlLIjyhf581Rdr1DiU6jnoh7rPJR0hSW58nOM9ABXP0SuxRjoFfJSACJE0XnTlGPh5uF55JOaV', 'QePY', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('37', '5Nt0FPQ2', 'bOhxMR0mJUiNFyAMs9XCtCSuwMQ9NZj6rESqZ48ZvmEF2vejPWzvS60weREq9r1WppyWMrpqFtJYhbotTHltL7qlrDPFRFFynYAdgU6YLbUxPA1XRArjg346KY6kQLEpW6odve3q3QIvdcJkbWm0CoyeiUi155w9PwKrDq7MXAdjVH7UPqvnlFChkqTE8AT', 'TzNv', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('38', 'iaAZIH6fNA', 'dSNzNVGezqV4L9TVI5EWSbAM3UoBLngucv3r1TDyGxmYV1cuxck7EcdB3ldCTjLqtR2NtKWPqLPObhN7Kt6P6Dp8QWVSJfUOdBIB01mj4qMWpC7RndAnJLPho4WacBu3LrpLL3OLkIzfTIBtgLMO667rsNxCWneNxlKhCs1Ku205jwJ36DSyLk1IdnQrcgO', 'VcM0', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('39', 'oCEKrKfbLM', '4DtdeHKiFI7ha6RLmADkaXzlTCl3q1XzbmVTzhpokC7SqxcifYrDyhWxzWQ1FpWMqFo4rmltRD3GWaXUVhsaDxFhBAM4gZ4ZIihVpkLG5LtNTXoD4uk3V5vRPXWFxbFe2PAr2SSPA0T3jzLyxVgH6vbS9j8oOAv841tuJ4KWUUHtdYK1KCnx0PsX1Td9Bga', 'hl1', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('40', 'fCx', 'IClQYdFioNgIrMXdkqKZiWbrYIR5vlySrpmIGvzI2hPPWBFlOzwiUrpzTV0owSYcikSczsD36rw9WGbzLvaIG61xc6m0BeKP1MYtvJc3yhJr7Gu8JckW1eDoiVQnunrPFJO9mJiaZovPWeH5xyySMXUqvXBL9qYTR7TgAp2YjUPbLKWG8V4P117UTFPsFD9', 'gx', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('41', 'BEnQBHa', 'DHYqwyoUBZS6Uh6l2fVCuuUECygSOQOGCakSpi6ROGZCpzqAQ7XFEfblzBk9JGxk8tiX0D9DdVkYYCWbBAJj24V61plEdSgfkD5mHy4hQmUpO6ZPW4jDR7e2MUWnwr1rVwBC6JwEdAAh3Hzh5BEWMlTSrvLlcvmOLndncOJQp3YQceEZ8Mm8Zeqk9TRXAeN', 'p9d2', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('42', 'BGxh7k5z', 'XJT38q5cycjvuWV0zO7n1KKhhMausuzD42aarzrbesuIsFg6jR8MPj40Z5d4vrhrloX0EOaRW2NysSoGMwwXSJS4LpcmbRfHolwnSJUuUEQtl8HkKj4lbdPsBqIGtzUUtJkZUfrnA5RRnuzpJpybkYWz0ECwJftJg2alx2XyY4iPyrQlTjSZRVq4D1gEDWj', 'cfxsLnD', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('43', 'yaS9JuoM', 'hGVbp1m6mX5rZugBjEXjNkgcfJzpXadKyNk7B1FTg9kIXio9X7mYVRIfzgoNRIOgiWe4X3SgHorNOBphVmL8iB9LPs37hCVIfTHXULdeBwhVKOvAr3TBPKk81TMWWiq0epJGeGlVT6CdfdP08NGky79Gay40xWiSJAxtVYyByHvpCt2x7qbYe2wptvLRp9l', 'toAaeFx5', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('44', 'ps', 'RVW9G10Kb2IQkMSdhNFGjEN7qRrd1FWlxzMfzszGGhRS4i2YCZpdEUbZmH0gK9wpVfmM9MGnjHG7anqR65grTi3nagZNiVgFU8VWOQ5EeveTAv5Qgt3kr0svRF66IHYLXErQDNVx4F3KaAQW8zlEgVTc79DcBA1d7gFqKmrlvacR6idOBiSx5onxrWKh419', 'UgLCJ', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('45', 'kDGNe', 'IRvI9J6NlqNmpnpJUZOD2oAZY1nARl0aSbjm4lnMOdQDvDlNaWVbmTnA4D2ez7t1HAiyLCSXqoibrzCU6yt89z3Vr5yV5NsgoE0jIwN7QPxxraaSHaJughxPuxJFjz3M5JH2INhJue2DBDfpKQpEb5u379bNGbBdGbHGlzxJjiDtpe2kueC2JkavTsPlhJo', 'CpMwquPW', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('46', 's4CQQHtPf', 'LPDYpHto9P2c9i3ySmjZ8zUG5WPHS8tlV8TyzYhqEgDhMyf1ZatIvbnoZ4a7PbpKajpgknqTSFB0ep22JcufEfiDEng0juqtewZO0t0AXLygcnfoS7Etsp8OdmZcC3Hdu1EQzEbZHF7zxhqQf7lPbCZ88bmfW2gvf7ofQ8VPNiUSNdnJ8RpE3T4Wb2pDeU3', 'Tln', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('47', 'Jp', 'MOWZ7qeyW16OnkNY230IzFtfDKBBpM5YhSrQFaLqU9UCbSRPOcswclZyvUJfXfkkUEJo5FVEC4mLjfonAbtaLvdLSxZ6x89VJx7TEhwW1zGJpfyB6Lz4bxvB5zQHQuGo88BPNtKVMJwQTZUiY7F31gIxTGoUtuRC67cA3xy3GjZVOgKXnI3tSBYEovfISwb', 'QhD', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('48', 'tX1CTb', 'WjG1jKHLIEPh0nVlJksiLYyIwtKiIWbPMHLmiNpTCvbGB7bYsFTAJupA0YlXVFev4QjIIenNUGvY7atlyjXndq4s8XVAkEyhn5Vl321sssz5Gt3abIS96NONyH5YnoAnYbRZG6lwKjNl0Npb4mLYxdvNhwYBdlWAHZ1fq8ytWgVD60Ry8TyloEnHe72diT7', 'SUc59dqI', '1', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('49', 'u1PKf', '4vh54f8GDkgXEJRIdjQ4Xmb4TmT6YOV52MZupMfpI88xrv6PTf8m6z8f12NdQ5aNhbxcJ7od9PGkYalj2CeMeMuXmGIDA84ixNsA832UgKZ8StcYrizEVe4SXJLxyPjzyruRinGWIQU7rvqbq1rbVI8jgkWlz7LAkg51rJBWqJyScPFtvhmalxlH7FneI8i', 'Xb', '0', '1540650883', '1540650883');
INSERT INTO `dt5_users` VALUES ('50', 'dcY', '2sicux0289jWVNHdbqlAwp9xDqXPmd2cxRqDLVQ4D0uBLbz0I59oExhXIIiMbDoJIy6IINw0XQ2pGZWXi1HAGeoq8eK7BLDcpHTx8kCiQhCQE2kEnxGqE3wd9TnB9qNXB9uODYDK9u0J1WYrXNOjAgb4u4cdn8WZmgtieFvJkYfFvBI8xUJMnHVjryHKKPq', '8f', '1', '1540650883', '1540650883');
