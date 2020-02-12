/*
Navicat MySQL Data Transfer

Source Server         : wamp server
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-01-07 23:07:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cjh5_viper
-- ----------------------------
DROP TABLE IF EXISTS `cjh5_viper`;
CREATE TABLE `cjh5_viper` (
  `vip_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vip_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `vip_title` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `vip_photo` char(255) DEFAULT NULL,
  `vip_contact` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vip_detail` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cjh5_viper
-- ----------------------------
