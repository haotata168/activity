/*
Navicat MySQL Data Transfer

Source Server         : wamp server
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : activity

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2020-01-07 23:07:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cjh5_lottery_user
-- ----------------------------
DROP TABLE IF EXISTS `cjh5_lottery_user`;
CREATE TABLE `cjh5_lottery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `shop_uid` int(11) DEFAULT NULL,
  `remain_lottery` int(4) DEFAULT '1',
  `isupload` tinyint(1) DEFAULT NULL,
  `last_share_time` int(11) DEFAULT NULL,
  `last_add_time` int(11) DEFAULT NULL COMMENT '上次自动增加次数时间',
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_shop_id` (`shop_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cjh5_lottery_user
-- ----------------------------
INSERT INTO `cjh5_lottery_user` VALUES ('15', 'db168@263.net', '138194', '2', '0', '1474166342', '1494382345');
INSERT INTO `cjh5_lottery_user` VALUES ('16', '1259003641@qq.com', '177484', '1', '1', '1473745893', '1475909689');
INSERT INTO `cjh5_lottery_user` VALUES ('17', '223112690@qq.com', '224906', '0', '0', '0', '1473813832');
INSERT INTO `cjh5_lottery_user` VALUES ('18', '321099059@qq.com', '234357', '0', '1', '0', '1473814817');
INSERT INTO `cjh5_lottery_user` VALUES ('19', '02611@163.com', '234361', '0', '0', '0', '1473815740');
INSERT INTO `cjh5_lottery_user` VALUES ('20', '849501434@qq.com', '234367', '0', '0', '0', '1473816826');
INSERT INTO `cjh5_lottery_user` VALUES ('21', '2858574766@qq.com', '234381', '0', '0', '0', '1473821352');
INSERT INTO `cjh5_lottery_user` VALUES ('22', 'ynhhuppu@163.com', '231051', '0', '0', '0', '1473821698');
INSERT INTO `cjh5_lottery_user` VALUES ('23', '815850038@qq.com', '148499', '0', '0', '0', '1473827187');
INSERT INTO `cjh5_lottery_user` VALUES ('24', 'blessbeyond@163.com', '207505', '0', '0', '0', '1473828587');
INSERT INTO `cjh5_lottery_user` VALUES ('25', 'ljx69250@sina.com', '158288', '0', '0', '0', '1473828604');
INSERT INTO `cjh5_lottery_user` VALUES ('26', '1154931042@qq.com', '234410', '0', '0', '0', '1473830113');
INSERT INTO `cjh5_lottery_user` VALUES ('27', '913589628@qq.com', '234368', '0', '0', '0', '1473839501');
INSERT INTO `cjh5_lottery_user` VALUES ('28', 'summer855@126.com', '175726', '0', '0', '0', '1473842141');
INSERT INTO `cjh5_lottery_user` VALUES ('29', '369bbs@163.com', '201374', '0', '0', '0', '1473846154');
INSERT INTO `cjh5_lottery_user` VALUES ('30', '864426338@qq.com', '234454', '0', '0', '0', '1473846679');
INSERT INTO `cjh5_lottery_user` VALUES ('31', 'yanyu4777@qq.com', '229492', '0', '0', '0', '1473850542');
INSERT INTO `cjh5_lottery_user` VALUES ('32', '549127256@qq.com', '190507', '0', '0', '0', '1473852142');
INSERT INTO `cjh5_lottery_user` VALUES ('33', 'bufforry_hb@163.com', '234440', '0', '1', '0', '1474530483');
INSERT INTO `cjh5_lottery_user` VALUES ('34', '473282022@qq.com', '234485', '0', '1', '0', '1473861894');
INSERT INTO `cjh5_lottery_user` VALUES ('35', 'gaby7879@163.com', '234491', '0', '0', '0', '1473864126');
INSERT INTO `cjh5_lottery_user` VALUES ('36', '434648532@qq.com', '234527', '0', '0', '0', '1473886174');
INSERT INTO `cjh5_lottery_user` VALUES ('37', 'song12336@qq.com', '234532', '0', '0', '0', '1473893028');
INSERT INTO `cjh5_lottery_user` VALUES ('38', '462097600@qq.com', '185133', '0', '0', '0', '1473899953');
INSERT INTO `cjh5_lottery_user` VALUES ('39', 'hanyi321@yeah.net', '196546', '0', '0', '0', '1473900436');
INSERT INTO `cjh5_lottery_user` VALUES ('40', 'wobushilijing@qq.com', '234550', '0', '0', '0', '1473903048');
INSERT INTO `cjh5_lottery_user` VALUES ('41', '403486389@qq.com', '234553', '0', '0', '0', '1473903917');
INSERT INTO `cjh5_lottery_user` VALUES ('42', 'zwz1012@163.com', '152472', '0', '0', '0', '1473905792');
INSERT INTO `cjh5_lottery_user` VALUES ('43', '1058582731a@gmail.com', '234566', '1', '0', '0', '1474001815');
INSERT INTO `cjh5_lottery_user` VALUES ('44', 'happyreason@qq.com', '234462', '0', '0', '0', '1473909534');
INSERT INTO `cjh5_lottery_user` VALUES ('45', '2399200829@qq.com', '234578', '0', '0', '0', '1475296579');
INSERT INTO `cjh5_lottery_user` VALUES ('46', '493304368@qq.com', '233191', '0', '0', '0', '1473919500');
INSERT INTO `cjh5_lottery_user` VALUES ('47', '81342979@qq.com', '234597', '0', '1', '0', '1473922717');
INSERT INTO `cjh5_lottery_user` VALUES ('48', '775700866@qq.com', '234611', '0', '0', '0', '1473929249');
INSERT INTO `cjh5_lottery_user` VALUES ('49', 'miraclua@163.com', '234518', '0', '0', '0', '1473939015');
INSERT INTO `cjh5_lottery_user` VALUES ('50', 'lixq999@outlook.com', '234637', '0', '0', '0', '1473944092');
INSERT INTO `cjh5_lottery_user` VALUES ('51', 'juhaixiang@126.com', '141589', '0', '1', '0', '1474244948');
INSERT INTO `cjh5_lottery_user` VALUES ('52', 'richard0927@163.com', '139396', '0', '0', '0', '1474092697');
INSERT INTO `cjh5_lottery_user` VALUES ('53', 'gongsiyuan2012@sina.com', '159164', '0', '0', '0', '1473947907');
INSERT INTO `cjh5_lottery_user` VALUES ('54', '18754748688@139.com', '234725', '0', '0', '0', '1473989600');
INSERT INTO `cjh5_lottery_user` VALUES ('55', 'wang505fang@163.com ', '234726', '0', '0', '0', '1473989765');
INSERT INTO `cjh5_lottery_user` VALUES ('56', '2459719101@qq.com', '234732', '0', '0', '0', '1473992003');
INSERT INTO `cjh5_lottery_user` VALUES ('57', '1915151084@qq.com', '234734', '0', '0', '0', '1473992823');
INSERT INTO `cjh5_lottery_user` VALUES ('58', '709374756@163.com', '234745', '0', '0', '0', '1473995513');
INSERT INTO `cjh5_lottery_user` VALUES ('59', '654358311@qq.com', '121701', '0', '0', '0', '1473997124');
INSERT INTO `cjh5_lottery_user` VALUES ('60', 'liweizhang@caijing.com.cn', '177739', '0', '0', '0', '1474017846');
INSERT INTO `cjh5_lottery_user` VALUES ('61', '1224931978@qq.com', '234850', '0', '0', '0', '1476345364');
INSERT INTO `cjh5_lottery_user` VALUES ('62', '228753175@qq.com', '205098', '0', '0', '0', '1474047761');
INSERT INTO `cjh5_lottery_user` VALUES ('63', '253022933@qq.com', '234897', '0', '0', '0', '1474076264');
INSERT INTO `cjh5_lottery_user` VALUES ('64', '1395965194@qq.com', '234917', '0', '0', '0', '1474081233');
INSERT INTO `cjh5_lottery_user` VALUES ('65', '13848411506@163.com', '234960', '0', '0', '0', '1474091810');
INSERT INTO `cjh5_lottery_user` VALUES ('66', '418378644@qq.com', '233947', '0', '0', '0', '1474098320');
INSERT INTO `cjh5_lottery_user` VALUES ('67', 'yzhjtwdzc@sina.com', '139520', '0', '0', '0', '1476605833');
INSERT INTO `cjh5_lottery_user` VALUES ('68', '153108363@qq.com', '235089', '0', '0', '0', '1474153740');
INSERT INTO `cjh5_lottery_user` VALUES ('69', '383596155@qq.com', '235094', '0', '0', '0', '1474156006');
INSERT INTO `cjh5_lottery_user` VALUES ('70', '405797770@qq.com', '235165', '0', '0', '0', '1474405238');
INSERT INTO `cjh5_lottery_user` VALUES ('71', 'gbblucy999@sina.cn', '235138', '0', '0', '0', '1474205816');
INSERT INTO `cjh5_lottery_user` VALUES ('72', '10108114@qq.com', '235346', '0', '0', '0', '1474245783');
INSERT INTO `cjh5_lottery_user` VALUES ('73', '57763084@qq.com', '235364', '0', '0', '0', '1474250150');
INSERT INTO `cjh5_lottery_user` VALUES ('74', '594418197@qq.com', '235387', '0', '0', '0', '1474256274');
INSERT INTO `cjh5_lottery_user` VALUES ('75', '956678917@qq.com', '235240', '0', '0', '0', '1474345700');
INSERT INTO `cjh5_lottery_user` VALUES ('76', '510651525@qq.com', '235969', '0', '0', '0', '1474475937');
INSERT INTO `cjh5_lottery_user` VALUES ('77', '19650098@qq.com', '236172', '0', '0', '0', '1474590809');
INSERT INTO `cjh5_lottery_user` VALUES ('78', 'wanlihongxia@163.com', '236329', '1', '1', '0', '1474642462');
INSERT INTO `cjh5_lottery_user` VALUES ('79', '184733304@qq.com', '236616', '0', '0', '0', '1474787940');
INSERT INTO `cjh5_lottery_user` VALUES ('80', '1462715906@qq.com', '236864', '0', '0', '0', '1474906800');
INSERT INTO `cjh5_lottery_user` VALUES ('81', 'guminwu@163.com', '129861', '0', '0', '0', '1476055908');
INSERT INTO `cjh5_lottery_user` VALUES ('82', '501856693@qq.com', '236837', '0', '0', '0', '1474945078');
INSERT INTO `cjh5_lottery_user` VALUES ('83', 'boyong2008@163.com', '166612', '0', '0', '0', '1475134697');
INSERT INTO `cjh5_lottery_user` VALUES ('84', '2926392742@qq.com', '237709', '0', '0', '0', '1475378175');
INSERT INTO `cjh5_lottery_user` VALUES ('85', 'livxb714@163.com', '181367', '0', '0', '0', '1475759609');
INSERT INTO `cjh5_lottery_user` VALUES ('86', 'dimmpc@hotmail.com', '164948', '0', '0', '0', '1475790020');
INSERT INTO `cjh5_lottery_user` VALUES ('87', 'mingrong@hotmail.es', '239287', '0', '0', '0', '1476090746');
INSERT INTO `cjh5_lottery_user` VALUES ('88', 'yinchunhui100@126.com', '239485', '0', '0', '0', '1476174424');
INSERT INTO `cjh5_lottery_user` VALUES ('89', 'joannazhou1995@163.com', '240047', '0', '0', '0', '1476410960');
INSERT INTO `cjh5_lottery_user` VALUES ('90', 'mxbt_seu@126.com', '240779', '0', '0', '0', '1476719711');
INSERT INTO `cjh5_lottery_user` VALUES ('91', '2329315028@qq.com', '240830', '0', '1', '0', '1476753362');
