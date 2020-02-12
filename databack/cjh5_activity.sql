/*
Navicat MySQL Data Transfer

Source Server         : wamp server
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-01-07 23:05:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cjh5_activity
-- ----------------------------
DROP TABLE IF EXISTS `cjh5_activity`;
CREATE TABLE `cjh5_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activityName` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '活动名称',
  `activityDate` date DEFAULT NULL COMMENT '活动日期',
  `activityLocal` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '活动地点',
  `activityVipList` int(11) DEFAULT NULL COMMENT '嘉宾列表',
  `activityVipTempletID` int(11) DEFAULT NULL COMMENT 'vip模板',
  `activityScheduleID` int(11) DEFAULT NULL COMMENT '日程ID',
  `activityShareTitle` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信分享标题',
  `activityShareDesc` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信分享描述',
  `activityShareLink` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信分享链接',
  `activitySharePic` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信分享图片',
  `activityPoster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '活动海报',
  `activityPhotolist` int(11) DEFAULT NULL COMMENT '活动照片集ID',
  `activityBrief` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '活动简介',
  `activityRegID` int(11) DEFAULT NULL COMMENT '网上报名模块ID',
  `activityRecord` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '报名记录',
  `activityVideo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '直播地址',
  `activityOptions` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '活动主办方，协办方、联系方式等',
  `activityNews` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '专题地址',
  `activityThanks` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '鸣谢单位图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cjh5_activity
-- ----------------------------
INSERT INTO `cjh5_activity` VALUES ('2', '三亚•财经国际论坛2017', '2016-12-08', '中国·海南·三亚保利瑰丽酒店', null, '1', '1', '三亚•财经国际论坛', '全球治理挑战与中国角色', 'http://news.caijingmobile.com/activity/activity/index.php?templet=sanya2017&aid=2', 'GThFEn3QYzrVnmAntmBeBcDOOuXvuVKP.jpg', 'MQLqI7w5uIC3HhUKPw90I28IWvdUIWyw.jpg', null, '　　变局之年，“三亚·财经国际论坛”将邀请中国、美国、欧洲、美洲及亚洲的政界、商界、学界最具影响力的领袖，旨在通过民间智库撬动政经能量，以思想的共鸣引领变革方向，在推动国际经济技术交流合作、研讨解决重大问题、促进世界经济良性发展中持续发挥更为积极的现实效应。', null, null, null, '{\r\n    \"sponsor\": [{\"name\":\"财经杂志\",\"logo\":\"url\"}],\r\n    \"partner\": [{\"name\":\"青岛市政府\",\"logo\":\"url\"},{\"name\":\"北京银行\",\"logo\":\"url\"}],\r\n    \"contact\": [{\"name\": \"于女士\",\"phone\": \"13812345678\",\"email\": \"yu@caijing.com.cn\"}]}', null, null);
INSERT INTO `cjh5_activity` VALUES ('4', '2017杭州湾论坛', '2017-11-03', '杭州国际博览中心', null, '1', '3', '2017杭州湾论坛', '新时代 新金融 新经济，2017年11月3-4日，杭州国际博览中心', 'http://news.caijingmobile.com/activity/hangzhou/index.php', 'oiaWCTOjkAU0vfLi1PRX98wkaQAKv7PB.jpg', 'bcsOwIYj1TwzEShvN88eYL45vcsrgbRr.jpg', null, '2017杭州湾论坛，通过对新经济和新金融业态的趋势判断和对杭州新经济新金融成功实践的解读与剖析，厘清新形势下新经济与新金融的新产融共荣之道，探求金融科技发展日新月异背景下金融创新和监管的平衡之术 。', null, null, null, '{\n    \"sponsor\": [{\"name\":\"杭州市人民政府\",\"logo\":\"url\"}],\n    \"partner\": [{\"name\":\"杭州市西博办\",\"logo\":\"url\"},{\"name\":\"杭州市金融办\",\"logo\":\"url\"},{\"name\":\"《财经》杂志\",\"logo\":\"url\"},{\"name\":\"阿里巴巴集团\",\"logo\":\"url\"},{\"name\":\"杭州银行\",\"logo\":\"url\"},{\"name\":\"浙商国际\",\"logo\":\"url\"},{\"name\":\"浙江日报报业集团\",\"logo\":\"url\"}],\n    \"contact\": [{\"name\": \"朱雷\",\"phone\": \"010-85657519\",\"email\": \"yangliu@caijing.com.cn\"}]}', null, null);
INSERT INTO `cjh5_activity` VALUES ('5', '《财经》年会2018：预测与战略', '2017-11-28', '中国大饭店', null, '1', '1', '《财经》年会2018：预测与战略', '变局之年，《财经》年会与您共解未来世界与中国发展之道…', 'http://news.caijingmobile.com/activity/activity/index.php?templet=caijing2017&aid=5', 'FqFfcHzj6AIsKmVIKeTlCIAgiQmTYxc8.jpg', 'bVkL7P5QxIJmtaeg3P3WdqHKupnjZCkm.jpg', null, '2017年11月，《财经》年会将再度汇聚国内外政商学界精英，深入分析全局性热点，全面展望经济、政治、社会、科技等方面的发展趋势，共同求解未来中国与世界可持续繁荣之道。', null, null, null, '{\n    \"sponsor\": [{\"name\":\"财经杂志\",\"logo\":\"url\"}],\n    \"partner\": [{\"name\":\"青岛市政府\",\"logo\":\"url\"},{\"name\":\"北京银行\",\"logo\":\"url\"}],\n    \"contact\": [{\"name\": \"于女士\",\"phone\": \"13812345678\",\"email\": \"yu@caijing.com.cn\"}]}', null, null);
INSERT INTO `cjh5_activity` VALUES ('6', '财经年会测一', '2017-11-28', '中国大饭店', null, '1', '0', '财经年会-煮酒夜话：', '“数字经济——新经济、新动力、新格局”邀请函', 'http://news.caijingmobile.com/activity/activity/index.php?templet=night4&aid=6', 'N8iGDNT5IFMl5cp0gXjx2kZtMLUhFkJw.jpg', null, null, '', null, null, null, '{\n    \"sponsor\": [{\"name\":\"财经杂志\",\"logo\":\"url\"}],\n    \"partner\": [{\"name\":\"青岛市政府\",\"logo\":\"url\"},{\"name\":\"北京银行\",\"logo\":\"url\"}],\n    \"contact\": [{\"name\": \"于女士\",\"phone\": \"13812345678\",\"email\": \"yu@caijing.com.cn\"}]}', null, null);
