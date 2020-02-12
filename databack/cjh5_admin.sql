/*
Navicat MySQL Data Transfer

Source Server         : wamp server
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-01-07 23:05:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cjh5_admin
-- ----------------------------
DROP TABLE IF EXISTS `cjh5_admin`;
CREATE TABLE `cjh5_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usertype` float unsigned DEFAULT '0',
  `userid` char(30) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(20) NOT NULL DEFAULT '',
  `tname` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `typeid` text,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cjh5_admin
-- ----------------------------
INSERT INTO `cjh5_admin` VALUES ('1', '10', 'admin', 'c3949ba59abbe56e057f', 'admin', '', '', '', '1505441760', '0.0.0.0');
INSERT INTO `cjh5_admin` VALUES ('4', '5', 'hbr', 'c3949ba59abbe56e057f', '哈评编辑', '陈萌萌', '', null, '1505386003', '0.0.0.0');
