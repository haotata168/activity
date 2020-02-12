/*
Navicat MySQL Data Transfer

Source Server         : wamp server
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-01-07 23:07:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cjh5_lottery_setting
-- ----------------------------
DROP TABLE IF EXISTS `cjh5_lottery_setting`;
CREATE TABLE `cjh5_lottery_setting` (
  `id` int(11) NOT NULL,
  `activity_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bgcolor` char(50) CHARACTER SET utf8 DEFAULT '',
  `theme_pic` varchar(255) DEFAULT NULL,
  `first_pic` varchar(255) DEFAULT NULL COMMENT '一等奖图片',
  `second_pic` varchar(255) DEFAULT NULL,
  `third_pic` varchar(255) DEFAULT NULL,
  `fourth_pic` varchar(255) DEFAULT NULL,
  `prize_desc_pic` varchar(255) DEFAULT NULL COMMENT '奖品说明图片',
  `activity_txt` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '活动规则',
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `joinPeople` int(11) DEFAULT NULL,
  `prize_items` varchar(1000) DEFAULT NULL,
  `shareTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `shareDesc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `shareLink` char(255) DEFAULT NULL,
  `wxshare_pic` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cjh5_lottery_setting
-- ----------------------------
INSERT INTO `cjh5_lottery_setting` VALUES ('1', '2017新春活动', '#fff', '20170509154949_71405.png', '20170509152413_64934.png', '20170509152920_11598.png', '20170509152926_97206.png', '20170509152934_33345.png', '20170509144531_33939.png', '1、使用《财经》客户端，进入活动页面即可参与抽奖。<br /><br />\r\n2、新老用户均可获得1次/天抽奖机会，微信分享活动链接邀请好友即可获得1次/天抽奖机会。<br /><br />\r\n4、数字版月卡获奖者，请在PC或手机上登录<a href=\"http://shop.caijingmobile.com/home/login?lottery=1\" style=\"color:#005aff;\">订阅中心网站</a>“个人中心”—“数字权限”进行激活并使用', '1472572800', '1476288000', '100', '{\"first\":{\"level\":0,\"name\":\"\\u56fd\\u7a961573\",\"number\":\"50\",\"maxGetNum\":\"5\"},\"second\":{\"level\":2,\"name\":\"\\u7ea2\\u520a\",\"number\":\"1000\",\"maxGetNum\":\"10\"},\"third\":{\"level\":4,\"name\":\"\\u300a\\u54c8\\u8bc4\\u300b\\u6570\\u5b57\\u7248\\u6708\\u5361\",\"number\":\"50\",\"maxGetNum\":\"1\"},\"fourth\":{\"level\":6,\"name\":\"\\u300a\\u8d22\\u7ecf\\u300b\\u6570\\u5b57\\u7248\\u6708\\u5361\",\"number\":\"50\",\"maxGetNum\":\"1\"}}', '盛夏狂欢，赢价值1780元国窖1573', '使用《财经》客户端，进入活动页面即可参与抽奖', 'http://mp.weixin.qq.com/s?__biz=MzIzNjU1NDY0OA==&mid=2247483656&idx=1&sn=7dc4a13952fb9e32b2da8bf7de027bcb&scene=1&srcid=0909hHroLHvKaQtLxj8zrszQ&from=singlemessage&isappinstalled=0', '20170509173517_39599.jpg');
INSERT INTO `cjh5_lottery_setting` VALUES ('2', '财经活动H5', '#d0c407', '20170510143102_46419.png', '20170510143343_19255.png', null, null, null, '20170510143110_81776.png', '一、二等奖为实物奖，中奖后需填写收货信息。三四等奖为虚拟物品，不提示填写信息', '1494345600', '1495209600', '100', '{\"first\":{\"level\":0,\"name\":\"\\u6bcf\\u9875\\u663e\\u793a\\u4e2a\\u6570\",\"number\":\"1\",\"maxGetNum\":\"1\"},\"second\":{\"level\":2,\"name\":\"\\u5168\\u65b0\\u798f\\u7279GT\\u5728\\u4e2d\\u56fd\\u5e02\\u573a\\u7684\\u552e\",\"number\":\"10\",\"maxGetNum\":\"1\"},\"third\":{\"level\":4,\"name\":\"\\u8d22\\u7ecf\\u6570\\u5b57\\u7248\",\"number\":99,\"maxGetNum\":\"10\"},\"fourth\":{\"level\":6,\"name\":\"\\u54c8\\u8bc4\\u6570\\u5b57\\u7248\",\"number\":\"0\",\"maxGetNum\":\"0\"}}', '阿斯蒂芬', '阿斯顿发水电费', 'ddfdf', null);
INSERT INTO `cjh5_lottery_setting` VALUES ('3', '请输入活动名称', '', null, null, null, null, null, null, null, '1496988544', '1496988544', null, '{\"first\":{\"level\":0,\"name\":\"\",\"number\":\"1\",\"maxGetNum\":\"1\",\"price\":\"500\"},\"second\":{\"level\":2,\"name\":\"\",\"number\":\"0\",\"maxGetNum\":\"0\",\"price\":\"0\"},\"third\":{\"level\":4,\"name\":\"\",\"number\":\"0\",\"maxGetNum\":\"0\",\"price\":\"0\"},\"fourth\":{\"level\":6,\"name\":\"\",\"number\":\"0\",\"maxGetNum\":\"0\",\"price\":\"0\"}}', null, null, null, null);
INSERT INTO `cjh5_lottery_setting` VALUES ('4', '请输入活动名称', '', null, null, null, null, null, null, null, '1542618553', '1542618553', null, '{\"first\":{\"level\":0,\"name\":\"\",\"number\":\"1\",\"maxGetNum\":\"1\",\"price\":\"500\"},\"second\":{\"level\":2,\"name\":\"\",\"number\":\"0\",\"maxGetNum\":\"0\",\"price\":\"0\"},\"third\":{\"level\":4,\"name\":\"\",\"number\":\"0\",\"maxGetNum\":\"0\",\"price\":\"0\"},\"fourth\":{\"level\":6,\"name\":\"\",\"number\":\"0\",\"maxGetNum\":\"0\",\"price\":\"0\"}}', null, null, null, null);
