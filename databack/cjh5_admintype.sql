/*
Navicat MySQL Data Transfer

Source Server         : wamp server
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-01-07 23:05:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cjh5_admintype
-- ----------------------------
DROP TABLE IF EXISTS `cjh5_admintype`;
CREATE TABLE `cjh5_admintype` (
  `rank` float NOT NULL DEFAULT '1',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `system` smallint(6) NOT NULL DEFAULT '0',
  `purviews` text,
  PRIMARY KEY (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cjh5_admintype
-- ----------------------------
INSERT INTO `cjh5_admintype` VALUES ('1', '运营总监', '1', 'sys_Data sys_User sys_Group sys_Task lottery vote help');
INSERT INTO `cjh5_admintype` VALUES ('5', '编辑', '1', 'lottery vote help');
INSERT INTO `cjh5_admintype` VALUES ('10', '系统管理员', '1', 'admin_AllowAll ');
