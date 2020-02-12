/*
Navicat MySQL Data Transfer

Source Server         : wamp server
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-01-07 23:07:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cjh5_lottery_record
-- ----------------------------
DROP TABLE IF EXISTS `cjh5_lottery_record`;
CREATE TABLE `cjh5_lottery_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT '1' COMMENT '活动id',
  `account` varchar(30) DEFAULT NULL,
  `award_level` int(4) DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `contact_info` text,
  `status` int(11) DEFAULT NULL COMMENT '状态（0未中奖，1中奖、2已领取）',
  PRIMARY KEY (`id`),
  KEY `idx_account` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cjh5_lottery_record
-- ----------------------------
INSERT INTO `cjh5_lottery_record` VALUES ('389', '1', 'db168@263.net', '4', '《财经》数字版月卡', '1473738114', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('390', '1', '1259003641@qq.com', '2', '红刊', '1473745804', '大转盘', '{\"realname\":\"\\u6768\\u6587\",\"email\":\"1259003641@qq.com\",\"tel\":\"15120081505\",\"address\":\"\\u5317\\u4eac\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('391', '1', '1259003641@qq.com', '4', '《财经》数字版月卡', '1473745903', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('392', '1', '1259003641@qq.com', '0', '下次再来哦', '1473745932', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('393', '1', '223112690@qq.com', '3', '《哈评》数字版月卡', '1473813845', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('394', '1', '321099059@qq.com', '3', '《哈评》数字版月卡', '1473814824', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('395', '1', '321099059@qq.com', '0', '下次再来哦', '1473814852', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('396', '1', '02611@163.com', '4', '《财经》数字版月卡', '1473815747', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('397', '1', '849501434@qq.com', '3', '《哈评》数字版月卡', '1473816832', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('398', '1', '2858574766@qq.com', '4', '《财经》数字版月卡', '1473821359', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('399', '1', 'ynhhuppu@163.com', '2', '红刊', '1473821705', '大转盘', '{\"realname\":\"\\u666e\\u5b66\\u5e73\",\"email\":\"ynhhuppu@163.com\",\"tel\":\"15287353799\",\"address\":\"\\u4e91\\u5357\\u7701\\u7ea2\\u6cb3\\u5dde\\u8499\\u81ea\\u5e02\\u7ea2\\u6cb3\\u5dde\\u4eba\\u6c11\\u68c0\\u5bdf\\u9662\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('400', '1', '815850038@qq.com', '2', '红刊', '1473827195', '大转盘', '{\"realname\":\"\\u8d75\\u4e1c\\u5f3a\",\"email\":\"815850038@qq.com\",\"tel\":\"15936231792\",\"address\":\"\\u4e0a\\u6d77\\u5e02\\u95f5\\u884c\\u533a\\u4e03\\u8398\\u8def2423\\u53f7\\u4e00\\u697c\\u7cbe\\u9510\\u6559\\u80b2\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('401', '1', 'blessbeyond@163.com', '3', '《哈评》数字版月卡', '1473828593', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('402', '1', 'ljx69250@sina.com', '4', '《财经》数字版月卡', '1473828612', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('403', '1', '1154931042@qq.com', '3', '《哈评》数字版月卡', '1473830121', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('404', '1', '913589628@qq.com', '2', '红刊', '1473839509', '大转盘', '{\"realname\":\"\\u8d75\\u777f\",\"email\":\"913589628@qq.com\",\"tel\":\"17865356171\",\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u9f99\\u53e3\\u5e02\\u70df\\u53f0\\u5357\\u5c71\\u5b66\\u9662\\u4e1c\\u6d77\\u6821\\u533a\\u4e00\\u533a\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('405', '1', 'summer855@126.com', '3', '《哈评》数字版月卡', '1473842158', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('406', '1', '369bbs@163.com', '3', '《哈评》数字版月卡', '1473846161', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('407', '1', '864426338@qq.com', '2', '红刊', '1473846686', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('408', '1', 'yanyu4777@qq.com', '2', '红刊', '1473850550', '大转盘', '{\"realname\":\"\\u8c22\\u660c\\u8273\",\"email\":\"yanyu477@qq.com\",\"tel\":\"18007951678\",\"address\":\"\\u6c5f\\u897f\\u7701\\u6a1f\\u6811\\u5e02\\u836f\\u90fd\\u5317\\u5927\\u9053202\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('409', '1', '549127256@qq.com', '3', '《哈评》数字版月卡', '1473852149', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('410', '1', 'bufforry_hb@163.com', '4', '《财经》数字版月卡', '1473859411', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('411', '1', 'bufforry_hb@163.com', '3', '《哈评》数字版月卡', '1473860882', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('412', '1', '473282022@qq.com', '4', '《财经》数字版月卡', '1473861901', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('413', '1', '473282022@qq.com', '3', '《哈评》数字版月卡', '1473861932', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('414', '1', 'gaby7879@163.com', '4', '《财经》数字版月卡', '1473864135', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('415', '1', '434648532@qq.com', '4', '《财经》数字版月卡', '1473886180', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('416', '1', 'song12336@qq.com', '4', '《财经》数字版月卡', '1473893037', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('417', '1', '462097600@qq.com', '4', '《财经》数字版月卡', '1473899959', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('418', '1', 'bufforry_hb@163.com', '0', '下次再来哦', '1473900214', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('419', '1', 'hanyi321@yeah.net', '4', '《财经》数字版月卡', '1473900444', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('420', '1', 'wobushilijing@qq.com', '3', '《哈评》数字版月卡', '1473903054', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('421', '1', '403486389@qq.com', '3', '《哈评》数字版月卡', '1473903924', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('422', '1', 'zwz1012@163.com', '3', '《哈评》数字版月卡', '1473905799', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('423', '1', '1058582731a@gmail.com', '4', '《财经》数字版月卡', '1473907697', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('424', '1', 'happyreason@qq.com', '4', '《财经》数字版月卡', '1473909541', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('425', '1', '2399200829@qq.com', '2', '红刊', '1473913169', '大转盘', '{\"realname\":\"\\u5218\\u4e00\",\"email\":\"2399200829@qq.com\",\"tel\":\"15738370138\",\"address\":\"\\u6cb3\\u5357\\u90d1\\u5dde\\u5e02\\u91d1\\u6c34\\u533a\\u5929\\u660e\\u8def\\u4e30\\u4e50\\u82b1\\u82d114\\u680b\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('426', '1', '493304368@qq.com', '3', '《哈评》数字版月卡', '1473919507', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('427', '1', '81342979@qq.com', '4', '《财经》数字版月卡', '1473922725', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('428', '1', '81342979@qq.com', '2', '红刊', '1473922844', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('429', '1', '775700866@qq.com', '4', '《财经》数字版月卡', '1473929255', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('430', '1', 'miraclua@163.com', '3', '《哈评》数字版月卡', '1473939022', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('431', '1', 'lixq999@outlook.com', '3', '《哈评》数字版月卡', '1473944100', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('432', '1', 'juhaixiang@126.com', '3', '《哈评》数字版月卡', '1473944926', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('433', '1', 'richard0927@163.com', '3', '《哈评》数字版月卡', '1473947303', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('434', '1', 'gongsiyuan2012@sina.com', '4', '《财经》数字版月卡', '1473947913', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('435', '1', 'bufforry_hb@163.com', '0', '下次再来哦', '1473982623', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('436', '1', '18754748688@139.com', '3', '《哈评》数字版月卡', '1473989606', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('437', '1', 'wang505fang@163.com ', '4', '《财经》数字版月卡', '1473989773', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('438', '1', '2459719101@qq.com', '4', '《财经》数字版月卡', '1473992011', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('439', '1', '1915151084@qq.com', '4', '《财经》数字版月卡', '1473992831', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('440', '1', '709374756@163.com', '4', '《财经》数字版月卡', '1473995519', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('441', '1', 'db168@263.net', '2', '红刊', '1473996086', '大转盘', '{\"realname\":\"\\u9093\\u5f6c\",\"email\":\"db@263.net\",\"tel\":\"13717706008\",\"address\":\"\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('442', '1', '654358311@qq.com', '3', '《哈评》数字版月卡', '1473997132', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('443', '1', 'richard0927@163.com', '4', '《财经》数字版月卡', '1474008014', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('444', '1', 'liweizhang@caijing.com.cn', '2', '红刊', '1474017852', '大转盘', '{\"realname\":\"zhang\",\"email\":\"liweizhang@caijing.com.cn\",\"tel\":\"18310706907\",\"address\":\"\\u5317\\u4eac\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('445', '1', '1224931978@qq.com', '2', '红刊', '1474039060', '大转盘', '{\"realname\":\"\\u7f57\\u6d69\\u5b87\",\"email\":\"1224931978@qq.com\",\"tel\":\"15675195436\",\"address\":\"\\u6e56\\u5357\\u7701\\u957f\\u6c99\\u5e02\\u96e8\\u82b1\\u533a\\u4e07\\u5bb6\\u4e3d\\u5357\\u8def\\u4e8c\\u6bb5960\\u53f7\\u957f\\u6c99\\u7406\\u5de5\\u5927\\u5b66\\u4e91\\u5858\\u6821\\u533a\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('446', '1', '1224931978@qq.com', '4', '《财经》数字版月卡', '1474042323', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('447', '1', '228753175@qq.com', '3', '《哈评》数字版月卡', '1474047767', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('448', '1', '253022933@qq.com', '3', '《哈评》数字版月卡', '1474076273', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('449', '1', 'bufforry_hb@163.com', '0', '下次再来哦', '1474080920', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('450', '1', '1395965194@qq.com', '3', '《哈评》数字版月卡', '1474081244', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('451', '1', '13848411506@163.com', '2', '红刊', '1474091819', '大转盘', '{\"realname\":\"\\u5218\\u4fca\\u971e\",\"email\":\"13848411506@163.com\",\"tel\":\"13848411506\",\"address\":\"\\u5185\\u8499\\u53e4\\u547c\\u548c\\u6d69\\u7279\\u5e02\\u8d5b\\u7f55\\u533a\\u65b0\\u534e\\u8054\\u96c5\\u56ed\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('452', '1', 'richard0927@163.com', '0', '下次再来哦', '1474092710', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('453', '1', '418378644@qq.com', '2', '红刊', '1474098328', '大转盘', '{\"realname\":\"\\u8521\\u7ea2\\u6d2a\\u660c\",\"email\":\"418378644@qq.com\",\"tel\":\"18753465495\",\"address\":\"\\u5c71\\u4e1c\\u7701\\u5fb7\\u5dde\\u5e02\\u5fb7\\u5dde\\u804c\\u4e1a\\u6280\\u672f\\u5b66\\u9662\\u6559\\u5b66\\u533a\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('454', '1', 'yzhjtwdzc@sina.com', '2', '红刊', '1474105080', '大转盘', '{\"realname\":\"\\u5c39\\u632f\\u534e\",\"email\":\"jintianweilai@outlook.com\",\"tel\":\"17196697965\",\"address\":\"\\u6d77\\u53e3\\u5e02 \\u7f8e\\u5170\\u533a  \\u6021\\u5fc3\\u8def  \\u4e30\\u6cfd\\u56ed  2\\u680b1\\u5355\\u5143602\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('455', '1', 'bufforry_hb@163.com', '0', '下次再来哦', '1474152322', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('456', '1', '153108363@qq.com', '2', '红刊', '1474153748', '大转盘', '{\"realname\":\"\\u82cf\\u98de\",\"email\":\"153108363@qq.com\",\"tel\":\"18251950799\",\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6816\\u971e\\u533a\\u73ca\\u745a\\u897f\\u8def9\\u53f7\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('457', '1', '383596155@qq.com', '2', '红刊', '1474156014', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('458', '1', '1259003641@qq.com', '3', '《哈评》数字版月卡', '1474166013', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('459', '1', 'db168@263.net', '0', '下次再来哦', '1474166300', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('460', '1', 'db168@263.net', '3', '《哈评》数字版月卡', '1474166352', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('461', '1', '405797770@qq.com', '4', '《财经》数字版月卡', '1474172570', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('462', '1', 'gbblucy999@sina.cn', '4', '《财经》数字版月卡', '1474205822', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('463', '1', '405797770@qq.com', '0', '下次再来哦', '1474217896', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('464', '1', 'juhaixiang@126.com', '4', '《财经》数字版月卡', '1474244957', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('465', '1', 'juhaixiang@126.com', '0', '下次再来哦', '1474244969', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('466', '1', '10108114@qq.com', '3', '《哈评》数字版月卡', '1474245799', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('467', '1', '57763084@qq.com', '2', '红刊', '1474250158', '大转盘', '{\"realname\":\"\\u5f20\\u5f3a\",\"email\":\"57763084@qq.com\",\"tel\":\"13880165459\",\"address\":\"\\u6210\\u90fd\\u5e02\\u9526\\u6c5f\\u533a\\u5353\\u9526\\u57ce\\u516d\\u671f\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('468', '1', '594418197@qq.com', '2', '红刊', '1474256281', '大转盘', '{\"realname\":\"\\u6768\\u59e3\",\"email\":\"594418197@qq.com\",\"tel\":\"15629318237\",\"address\":\"\\u4e0a\\u6d77\\u5e02\\u95f8\\u5317\\u533a\\u4e2d\\u5174\\u8def1101\\u53f7\\u6606\\u6cf0\\u5927\\u53a68\\u697c8A17\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('469', '1', '1224931978@qq.com', '3', '《哈评》数字版月卡', '1474275605', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('470', '1', '1224931978@qq.com', '0', '下次再来哦', '1474333435', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('471', '1', '956678917@qq.com', '4', '《财经》数字版月卡', '1474345706', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('472', '1', '405797770@qq.com', '0', '下次再来哦', '1474405244', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('473', '1', '510651525@qq.com', '4', '《财经》数字版月卡', '1474475945', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('474', '1', 'bufforry_hb@163.com', '0', '下次再来哦', '1474530489', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('475', '1', '19650098@qq.com', '2', '红刊', '1474590816', '大转盘', '{\"realname\":\"\\u6c64\\u9ece\\u660e\",\"email\":\"19650098@qq.com\",\"tel\":\"13967269090\",\"address\":\"\\u6d59\\u6c5f\\u7701\\u5fb7\\u6e05\\u53bf\\u6b66\\u5eb7\\u9547\\u5b8b\\u77f3\\u8857102\\u53f7\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('476', '1', '1224931978@qq.com', '0', '下次再来哦', '1474629768', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('477', '1', 'wanlihongxia@163.com', '4', '《财经》数字版月卡', '1474642468', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('478', '1', '2399200829@qq.com', '0', '下次再来哦', '1474718294', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('479', '1', '184733304@qq.com', '2', '红刊', '1474787947', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('480', '1', '1462715906@qq.com', '2', '红刊', '1474906806', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('481', '1', 'guminwu@163.com', '4', '《财经》数字版月卡', '1474927140', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('482', '1', '501856693@qq.com', '3', '《哈评》数字版月卡', '1474945084', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('483', '1', 'guminwu@163.com', '0', '下次再来哦', '1475060789', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('484', '1', 'boyong2008@163.com', '4', '《财经》数字版月卡', '1475134704', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('485', '1', 'guminwu@163.com', '2', '红刊', '1475148401', '大转盘', '{\"realname\":\"\\u987e\\u654f\\u6b66\",\"email\":\"guminwu@163.com\",\"tel\":\"13961610611\",\"address\":\"\\u6c5f\\u82cf\\u6c5f\\u9634\\u5e02\\u6f84\\u6c5f\\u897f\\u8def145\\u53f7\\u519c\\u884c\\u6c5f\\u9634\\u5206\\u884c\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('486', '1', '1224931978@qq.com', '0', '下次再来哦', '1475284123', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('487', '1', 'guminwu@163.com', '3', '《哈评》数字版月卡', '1475290894', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('488', '1', '2399200829@qq.com', '0', '下次再来哦', '1475296586', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('489', '1', '2926392742@qq.com', '2', '红刊', '1475378181', '大转盘', '{\"realname\":\"\\u6881\\u6587\\u53cc\",\"email\":\"2926392742@qq.com\",\"tel\":\"18347887611\",\"address\":\"\\u5185\\u8499\\u53e4\\u5df4\\u5f66\\u6dd6\\u5c14\\u5e02\\u4e34\\u6cb3\\u533a\\u5df4\\u5f66\\u6dd6\\u5c14\\u6c11\\u65cf\\u827a\\u672f\\u5b66\\u9662\"}', '0');
INSERT INTO `cjh5_lottery_record` VALUES ('490', '1', 'guminwu@163.com', '0', '下次再来哦', '1475422346', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('491', '1', 'guminwu@163.com', '0', '下次再来哦', '1475489916', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('492', '1', 'guminwu@163.com', '0', '下次再来哦', '1475578669', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('493', '1', 'guminwu@163.com', '0', '下次再来哦', '1475653019', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('494', '1', 'livxb714@163.com', '3', '《哈评》数字版月卡', '1475759615', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('495', '1', 'dimmpc@hotmail.com', '4', '《财经》数字版月卡', '1475790027', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('496', '1', '1259003641@qq.com', '0', '下次再来哦', '1475909882', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('497', '1', 'guminwu@163.com', '0', '下次再来哦', '1476055915', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('498', '1', 'mingrong@hotmail.es', '2', '红刊', '1476090753', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('499', '1', 'yinchunhui100@126.com', '2', '红刊', '1476174431', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('500', '1', '1224931978@qq.com', '0', '下次再来哦', '1476345370', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('501', '1', 'joannazhou1995@163.com', '2', '红刊', '1476410966', '大转盘', '{\"realname\":\"\\u5f20\\u4e09\",\"email\":\"joannazhou1995@163.com\",\"tel\":\"15927127068\",\"address\":\"\\u6e56\\u5317\\u7701\\u6b66\\u6c49\\u5e02\\u6b66\\u6c49\\u5927\\u5b66\\u6e56\\u6ee8\"}', '1');
INSERT INTO `cjh5_lottery_record` VALUES ('502', '1', 'yzhjtwdzc@sina.com', '0', '下次再来哦', '1476605843', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('503', '1', 'mxbt_seu@126.com', '2', '红刊', '1476719718', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('504', '1', '2329315028@qq.com', '2', '红刊', '1476753369', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('505', '1', '2329315028@qq.com', '0', '下次再来哦', '1476753472', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('506', '1', 'db168@263.net', '0', '下次再来哦', '1494232133', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('507', '1', 'db168@263.net', '0', '下次再来哦', '1494297962', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('508', '1', 'db168@263.net', '0', '下次再来哦', '1494313340', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('509', '1', 'db168@263.net', '2', '红刊', '1494313423', '大转盘', null, '1');
INSERT INTO `cjh5_lottery_record` VALUES ('510', '1', 'db168@263.net', '2', '红刊', '1494382706', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('511', '1', 'db168@263.net', '2', '红刊', '1494386661', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('512', '2', 'db168@263.net', '0', '下次再来哦', '1494398522', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('513', '2', 'db168@263.net', '0', '下次再来哦', '1494398536', '大转盘', null, '0');
INSERT INTO `cjh5_lottery_record` VALUES ('514', '2', 'db168@263.net', '3', '财经数字版', '1494398690', '大转盘', null, '1');
