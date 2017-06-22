/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : lihe2017

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-06-16 17:05:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `think_captcha`
-- ----------------------------
DROP TABLE IF EXISTS `think_captcha`;
CREATE TABLE `think_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of think_captcha
-- ----------------------------
INSERT INTO `think_captcha` VALUES ('254', '1497517295', '127.0.0.1', 'hwwe');

-- ----------------------------
-- Table structure for `think_contact`
-- ----------------------------
DROP TABLE IF EXISTS `think_contact`;
CREATE TABLE `think_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `content` text,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_contact
-- ----------------------------
INSERT INTO `think_contact` VALUES ('1', 'contact', '<p>\r\n	北京动力永兴信息技术有限公司\r\n</p>\r\n<p>\r\n	电话：010-51667916\r\n</p>\r\n<p>\r\n	联系人：张经理\r\n</p>\r\n<p>\r\n	联系地址：北京市海淀区天秀路10号中国农大国际创业园3号楼\r\n</p>', '', '联系我们');
INSERT INTO `think_contact` VALUES ('2', 'about', '<p><br/></p><h1 style=\"font-size:16px;font-family:微软雅黑, 黑体;text-align:center;\">\r\n	北京动力永兴信息技术有限公司</h1><p style=\"text-align:left;\">\r\n		&nbsp;<span style=\"font-size:18px;\">北京动力永兴达信息技术有限公司</span><span style=\"font-size:18px;\">（以下简称动力永兴）是一家集IT网络产品销售、系统集成、应用技术服务为一体的IT综合型企业。</span> \r\n	</p><p><span style=\"font-size:16px;\"><span class=\"scayt-misspell\" style=\"font-size:18px;\">在过去的几多年里，动力永兴伴随着中国IT产业和电信互联网的发展不断成长</span><span style=\"font-size:18px;\">.&nbsp;</span><span class=\"scayt-misspell\"><span style=\"font-size:18px;\">先</span>后参与了中国电信、中国联通、中国网通、中国移动和中国吉通全国性IP骨干网和VoIP网络工程建设，足迹遍布中国200多个城市</span>.&nbsp;<span class=\"scayt-misspell\">所承建的项目涉及电信级IP网、宽带城域网、社区宽带网络、楼宇宽带网络、宽带IP应用、网络安全、安防监控、VoIP、IP</span>&nbsp;Video,&nbsp;<span class=\"scayt-misspell\">VPN、综合布线等各方面的解决方案。</span></span> \r\n	</p><p><span style=\"font-size:16px;\"><span class=\"scayt-misspell\"><span style=\"color:#333333;font-family:Tahoma, Arial;font-size:18px;line-height:27px;\">动力永兴</span>凭借自己丰富的经验和雄厚的实力，与Cisco、Juniper、IBM、HP、Sun、EMC、Nortel、Radware、F5、Aruba、Ruckus、Oracle、CA、Bea、Sybase、Sony、Websense等国际著名厂商建立了紧密的合作关系，并发展成为在电信、政府、金融和企业等</span><span class=\"scayt-misspell\">领域都颇具影响力的集成服务供应商。</span></span><span style=\"font-size:16px;\">围绕“做中国最优秀的IT服务提供商”的战略目标，盛鑫腾达确定了以“IT咨询、行业解决方案与服务、IT产品增值服务、</span><span class=\"scayt-misspell\" style=\"font-size:16px;\">IT基础设施服务</span><span style=\"font-size:16px;\">”等为主营业务，面向政府、金融、能源、军队、冶金、媒体、体育、出版、制造业、医院、外企、企事业单位等行业提供一体化IT服务。</span> \r\n	</p><p><span style=\"font-size:16px;background-color:#4C33E5;\"><span style=\"color:#337FE5;background-color:#FFFFFF;\">IT咨询服务</span><span style=\"background-color:#FFFFFF;\"></span></span> \r\n	</p><p style=\"text-align:left;\"><span style=\"font-size:16px;\">集行业知识、工程实践、一流技术于一身，通过提供业务咨询和技术咨询，帮助客户轻松克服业务运营和信息技术应用难关。我们将围绕客户战略和业务需求，提供业务流程分析与优化咨询、IT应用战略咨询、信息系统规划与设计咨询、工程管理咨询、工程监理、系统测试等服务。</span> \r\n	</p><p style=\"text-align:left;\"><span style=\"color:#337FE5;font-size:16px;\">IT基础设施服务</span> \r\n	</p><p><span style=\"font-size:16px;\">将智能化、信息化与绿色、节能理念融合，塑造全新智能化工程和数据中心概念，支持业务连续性，并大幅度降低运营成本。我们将面向国家机关、金融、电信、卫生、教育、能源、体育、大型企事业单位以及商务、社区提供建筑智能化、新一代数据中心、机房、安防、会议系统等IT基础设施规划设计、建设、运维、项目管理等服务。</span> \r\n	</p><p style=\"text-align:left;\"><span style=\"color:#337FE5;font-size:16px;\">行业解决方案与服务</span> \r\n	</p><p style=\"text-align:left;\"><span style=\"font-size:16px;\">基于成熟的方法论和知识库体系，以客户战略和业务为牵引，提供适应性的业务解决方案，帮助客户实现跃升发展。我们将整合创新网络、安全、门户、应用支撑、业务应用以及运维等领域技术和产品，针对政府与公共事业、金融、能源、冶金、媒体、出版、制造业、医院、外企、企事业单位等行业客户业务需求，定制提供解决方案及相关服务。</span> \r\n	</p><p style=\"text-align:left;\"><span style=\"color:#337FE5;font-size:16px;\">IT产品增值服务</span> \r\n	</p><p style=\"text-align:left;\"><span style=\"font-size:16px;\">依托技术专家队伍和行业经验，贴近客户，服务客户，实现信息产品与业务运行充分融合，让产品发挥最大价值。我们将整合国内外合作伙伴产品资源，围绕平台级软件产品、主机系统、网络、存储、安防等信息系统产品，提供产品咨询、销售、定制开发、系统维护、性能优化等增值服务。</span> \r\n	</p><p><br/></p><p><span style=\"line-height:1.5;\"><br/></span> </p>', '569dafe92ac66.jpg', '公司简介');

-- ----------------------------
-- Table structure for `think_dept`
-- ----------------------------
DROP TABLE IF EXISTS `think_dept`;
CREATE TABLE `think_dept` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_dept
-- ----------------------------
INSERT INTO `think_dept` VALUES ('1', '开发部');
INSERT INTO `think_dept` VALUES ('2', '销售部');
INSERT INTO `think_dept` VALUES ('3', '财务部');

-- ----------------------------
-- Table structure for `think_form`
-- ----------------------------
DROP TABLE IF EXISTS `think_form`;
CREATE TABLE `think_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_form
-- ----------------------------
INSERT INTO `think_form` VALUES ('1', 'ThinkPHP2.0发布', '祖国60周年华诞献礼，ThinkPHP2.0新版正式发布了！', '1', '1254325349', '0', '1', '');
INSERT INTO `think_form` VALUES ('2', '新版套装销售', 'ThinkPHP新版发布超值纪念套装火热征订中！还送2G主机空间！', '33', '1254325948', '0', '1', '');

-- ----------------------------
-- Table structure for `think_group`
-- ----------------------------
DROP TABLE IF EXISTS `think_group`;
CREATE TABLE `think_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `icon` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_group
-- ----------------------------
INSERT INTO `think_group` VALUES ('2', 'App', '应用中心', '1222841259', '0', '0', '0', '0', '');
INSERT INTO `think_group` VALUES ('6', 'Info', '单页信息', '1222841259', '0', '1', '0', '0', '');
INSERT INTO `think_group` VALUES ('7', 'Pro', '利和产品', '1222841259', '0', '1', '0', '0', '');
INSERT INTO `think_group` VALUES ('8', 'Yanjiu', '研究开发', '1222841259', '0', '1', '0', '0', '');
INSERT INTO `think_group` VALUES ('9', 'Zhiliang', '质量控制', '1222841259', '0', '1', '0', '0', '');
INSERT INTO `think_group` VALUES ('10', 'Hse', 'HSE', '1222841259', '0', '1', '0', '0', '');
INSERT INTO `think_group` VALUES ('11', 'Keji', '科技前沿', '1222841259', '0', '1', '0', '0', '');

-- ----------------------------
-- Table structure for `think_keji`
-- ----------------------------
DROP TABLE IF EXISTS `think_keji`;
CREATE TABLE `think_keji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attach` varchar(200) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lang` char(10) DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_keji
-- ----------------------------
INSERT INTO `think_keji` VALUES ('6', '4f9b4a62ce18f.swf', 'An New Face to Innovene PP - MAACK 2010', '1335535722', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('7', '4f9b4a7b7f330.swf', 'An New Face to Innovene PP - MAACK 2010', '1335535736', '', 'en', '');
INSERT INTO `think_keji` VALUES ('8', '4f9aa8a34b5ae.swf', 'INEOS Innovene PP Brochure', '1335535779', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('9', '4f9aa8bc258a1.swf', 'INEOS Innovene PP Brochure', '1335535804', '', 'en', '');
INSERT INTO `think_keji` VALUES ('10', '4f9aa8cababdd.swf', 'NOVOLEN工艺综述', '1335535818', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('11', '4f9aa8d26c19c.swf', 'NOVOLEN工艺综述', '1335535826', '', 'en', '');
INSERT INTO `think_keji` VALUES ('12', '52d387772e9f5.swf', 'LyondellBasell授权江苏盛虹基团Lupotech技术（LDPE和EVA生产）', '1389592554', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('13', '52d385ca65a54.swf', 'Albemarle starts-up new single site catalyst commercial plant in South Korea', '1389592871', '', 'en', '');
INSERT INTO `think_keji` VALUES ('14', '52d3875dd2dd8.swf', 'LyondellBasell 授权Lupotech t的工艺授权给三星道达尔石化', '1389593202', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('15', '52d38784a64a8.swf', 'Ineos和中石化启动中国最大的苯酚丙酮项目', '1389593736', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('16', '52d3958b226b7.swf', 'BASF increases prices for polymer dispersions, polymer powders and resins', '1389598091', '', 'en', '');
INSERT INTO `think_keji` VALUES ('17', '52d395c8c9ce8.swf', 'Borealis to invest EUR 65 million in Porvoo Borstar PE plant', '1389598152', '', 'en', '');
INSERT INTO `think_keji` VALUES ('18', '52d3962ea412a.swf', 'Chinese Company CNOOC has selected INEOS Technologies’ Innovene S HDPE process for their new project in Huizhou, Guangdong Province,', '1389598254', '', 'en', '');
INSERT INTO `think_keji` VALUES ('19', '52d39673e512d.swf', 'LyondellBasell授权神华第二套Lupotech T工艺装置', '1389598323', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('20', '52d396a103877.swf', 'LyondellBasell授权中国海洋石油总公司聚丙烯厂Spherizone', '1389598369', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('21', '52d396c297be2.swf', 'LyondellBasell授予其最大的Hostalen ACP工艺牌照给陕西延长石油', '1389598402', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('22', '52d396d65b462.swf', 'LyondellBasell推出新系列第五代聚丙烯催化剂', '1389598422', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('23', '52d3970b1ade1.swf', 'LyondellBasell许可中石化Spherizone和Lupotech', '1389598475', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('24', '52d3971f2a010.swf', 'Solvay和Ineos提交申请到欧盟委员会建议成立合营公司', '1389598495', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('25', '52d3973961b51.swf', 'Solvay收购总部位于美国的Chemlogics以拓展其石油和天然气化学品业务', '1389598521', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('26', '52d3975a30b7f.swf', 'UNIPETROL RPA选择英力士Innovene S HDPE工艺', '1389598554', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('27', '52d39769d7a9e.swf', '巴斯夫（BASF）提高聚合物分散体、聚合物粉末和树脂售价', '1389598569', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('28', '52d397861967c.swf', '北欧化工（Borealis）在波尔沃（Porvoo）北星双峰Borstar PE装置投资6500万欧元', '1389598598', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('29', '52d39798b24ec.swf', '东方能源宁波新项目选择英力士的Innovene PP工艺', '1389598616', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('30', '52d397a8d9423.swf', '格雷斯催化剂技术公司宣布提价', '1389598632', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('31', '52d397c4e20d6.swf', '美国雅宝公司在韩国的单活性中心催化剂工业装置启动', '1389598660', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('32', '52d397d5e5b92.swf', '欧盟委员会继续衡量Solvay和Ineos合资氯乙烯的申请', '1389598677', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('33', '52d397e9ed74b.swf', '三井化学启动在韩国的聚丙烯催化剂厂', '1389598697', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('34', '52d397f78e1ef.swf', '三井化学在美国和墨西哥扩大汽车用聚丙烯生产', '1389598711', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('35', '52d3980c73c33.swf', '三菱公司在欧洲和中国聚合物业务建立新的管理结构性能', '1389598732', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('36', '52d3981b433ed.swf', '陶氏推出有效结合PE和PP的突破性技术', '1389598747', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('37', '52d39834ea685.swf', '英力士烯烃和聚合物（INEOS Olefins & Polymers USA）签署与沙索就HDPE合资的协议', '1389598772', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('38', '52d398423ae3e.swf', '中海油（CNOOC）广东惠州新项目选择英力士Innovene S HDPE工艺', '1389598786', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('39', '52d3985055737.swf', '中石化和英力士就成立一家年产120万吨的异丙苯苯酚丙酮合资企业草签了协议。', '1389598800', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('40', '52d39a3463942.swf', 'Dow Introduces Breakthrough Technology for Effectively Combining PE and PP', '1389598872', '', 'en', '');
INSERT INTO `think_keji` VALUES ('41', '52d39bcbba8a1.swf', 'Establishment of New Management Structures for Performance ', '1389599691', '', 'en', '');
INSERT INTO `think_keji` VALUES ('42', '52d39c0406d24.swf', 'European Commission to continue evaluation of proposed chlorvinyls Joint Venture between Solvay and INEOS ', '1389599748', '', 'en', '');
INSERT INTO `think_keji` VALUES ('43', '52d39c1228229.swf', 'Grace Catalysts Technologies Announces Price Increase ', '1389599762', '', 'en', '');
INSERT INTO `think_keji` VALUES ('44', '52d39c2d5d72b.swf', 'Grace to End Silica Sol FCC Catalyst Production After Three Decades ', '1389599789', '', 'en', '');
INSERT INTO `think_keji` VALUES ('45', '52d39c3e85637.swf', 'INEOS and Sinopec break ground on the largest Phenol Acetone plant in China', '1389599806', '', 'en', '');
INSERT INTO `think_keji` VALUES ('46', '52d39c7d24b89.swf', 'INEOS and Sinopec initial agreements to form 1.2 million tonne cumene, phenol and acetone Joint Venture to be based at the Nanjing Chemical Industrial Park in Jiangsu Province,', '1389599869', '', 'en', '');
INSERT INTO `think_keji` VALUES ('47', '52d39c8c4b623.swf', 'INEOS Olefins & Polymers USA signs MOU with Sasol for High-density Polyethylene Joint Venture ', '1389599884', '', 'en', '');
INSERT INTO `think_keji` VALUES ('48', '52d39ca186f54.swf', 'LyondellBasell Grants Its Largest Hostalen ACP Process License to Chinese Company', '1389599905', '', 'en', '');
INSERT INTO `think_keji` VALUES ('49', '52d39caeab6ce.swf', 'LyondellBasell Grants Lupotech T Process License to Samsung Total Petrochemicals', '1389599918', '', 'en', '');
INSERT INTO `think_keji` VALUES ('50', '52d39cbd7450d.swf', 'LyondellBasell Grants Second Lupotech T License to Shenhua', '1389599933', '', 'en', '');
INSERT INTO `think_keji` VALUES ('51', '52d39ccb4828c.swf', 'LyondellBasell Grants Spherizone and Lupotech Licenses to Sinopec', '1389599947', '', 'en', '');
INSERT INTO `think_keji` VALUES ('52', '52d39cdc33ae6.swf', 'LyondellBasell Grants Spherizone License to CNOOC for PP Plant in China', '1389599964', '', 'en', '');
INSERT INTO `think_keji` VALUES ('53', '52d39cefdfe01.swf', 'LyondellBasell Launches New Family of Fifth-Generation Polypropylene Catalysts', '1389599983', '', 'en', '');
INSERT INTO `think_keji` VALUES ('54', '52d39d01a9113.swf', 'LyondellBasell licenses Lupotech technologies for LDPE and EVA production to Jiangsu Shenghong Group', '1389600001', '', 'en', '');
INSERT INTO `think_keji` VALUES ('55', '52d39d1bd4e55.swf', 'Mitsui Chemicals Expands Automotive Use Polypropylene Production in the U', '1389600027', '', 'en', '');
INSERT INTO `think_keji` VALUES ('56', '52d39d2811732.swf', 'Mitsui Chemicals Start-up of Polypropylene Catalyst Plant in Korea', '1389600040', '', 'en', '');
INSERT INTO `think_keji` VALUES ('57', '52d39d477f018.swf', 'Oriental Energy selects INEOS Technologies’ Innovene PP process for their new project in Ningbo, ', '1389600071', '', 'en', '');
INSERT INTO `think_keji` VALUES ('58', '52d39d55ee09f.swf', 'Solvay and INEOS submit application to European Commission for clearance of proposed joint venture ', '1389600085', '', 'en', '');
INSERT INTO `think_keji` VALUES ('59', '52d39d7d456f7.swf', 'Solvay to acquire U.S.-based Chemlogics, extending its oil & gas chemical solutions business ', '1389600125', '', 'en', '');
INSERT INTO `think_keji` VALUES ('60', '52d39d8c12e96.swf', 'Unipetrol RPA has selected INEOS Technologies’ Innovene S HDPE process for its new polyethylene project in Litvinov,', '1389600140', '', 'en', '');
INSERT INTO `think_keji` VALUES ('61', '52d492d20039f.swf', '中石化和英力士就成立一家年产120万吨的异丙苯苯酚丙酮合资企业草签了协议。', '1389662929', '', 'cn', '');
INSERT INTO `think_keji` VALUES ('62', '', '中石化和英力士就成立一家年产120万吨的异丙苯苯酚丙酮合资企业草签了协议', '1496153438', null, 'cn', '<p>\r\n	<span style=\"color:#555555;font-family:Arial, Helvetica, sans-serif;line-height:20px;text-indent:24px;white-space:normal;background-color:#FFFFFF;\">保隆科技本次IPO的发行价格为22.87元/股，对应发行后市盈率为21.66倍，发行股数2,928万股，全部为新股发行，占发行后总股本比例的25.00%，募集资金合计人民币6.70亿元。回拨机制启动后，本次IPO的网下最终发行数量为292.80万股，占本次发行总量的10%；网上最终发行数量为2,635.20万股，占本次发行总量90%，网上发行最终中签率为0.02756514%。</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#555555;font-family:Arial, Helvetica, sans-serif;line-height:20px;text-indent:24px;white-space:normal;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>');
INSERT INTO `think_keji` VALUES ('63', '', '中石化和英力士就成立一家年', '1496153594', null, null, '<br />\r\n<br />\r\n<p>\r\n	第一创业摩根大通证券有限责任公司（J.P. Morgan First Capital Securities Co., Ltd.）（中文简称\"一创摩根\"，英文简称\"JPMFC\"）由第一创业证券股份有限公司（简称\"第一创业\"）和摩根大通共同出资组建。公司总部位于中国北京。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<br />\r\n<p>\r\n	一创摩根，是第一创业和摩根大通基于相互认同的企业价值观、互利共赢的发展愿景，依照规范的公司治理架构所创建的合资证券公司，体现了双方对中国资本市场的长期承诺。一创摩根借助第一创业长期根植本土资本市场所积累的丰富经验与摩根大通作为具有悠久历史的全球领先金融机构的国际视野和平台，秉承以一流方式做一流业务的传统，坚持开放、创新、包容、协作的发展理念，努力成为推动中国资本市场发展的重要力量。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<br />\r\n<p>\r\n	一创摩根致力于成为备受尊敬的一流中国投资银行。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<br />');

-- ----------------------------
-- Table structure for `think_member`
-- ----------------------------
DROP TABLE IF EXISTS `think_member`;
CREATE TABLE `think_member` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `dept_id` smallint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_member
-- ----------------------------

-- ----------------------------
-- Table structure for `think_member_groups`
-- ----------------------------
DROP TABLE IF EXISTS `think_member_groups`;
CREATE TABLE `think_member_groups` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `groups_id` mediumint(5) NOT NULL,
  `member_id` mediumint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_member_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `think_news`
-- ----------------------------
DROP TABLE IF EXISTS `think_news`;
CREATE TABLE `think_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `content` text,
  `type` varchar(255) DEFAULT NULL,
  `lang` char(5) DEFAULT NULL,
  `is_pro` int(1) NOT NULL DEFAULT '0' COMMENT '是否为产品',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_news
-- ----------------------------
INSERT INTO `think_news` VALUES ('1', '', '<p><img alt=\"\" src=\"/Public/Js/editor/attached/image/20170222/20170222145759_90461.png\" height=\"262\" width=\"680\"/> </p><p><span style=\"font-size:12px;\">利和科技（任丘市利和科技发展有限公司和北京利和知信科技有限公司）是致力于聚烯烃催化剂的研发、制造、销售，并拥有自主知识产权的高科技企业。建立“以人为本，安全第一，环境友好的企业”是我们的目标；“专注催化剂，服务聚烯烃“，是我们的经营理念。公司自2005年成立以来，于2009年通过科技部组织的高新技术企业认证，2010年通过ISO 9001质量体系认证。公司自主开发的新型烯烃聚合催化剂，已经申请了几十项发明专利，其中多项专利已获授权，包括新型非邻给电子体专利技术。</span> </p><p><span style=\"font-size:12px;\">利和科技拥有 610吨／年高效固体催化剂生产装置（430吨／年丙烯聚合高效固体催化剂生产装置和180吨／年乙烯聚合高效固体催化剂生产装置）；拥有独立的研发中心，研发中心配备有完善的催化剂小试、中试装置和产品质检、聚合考评等设施。</span> </p><p><span style=\"font-size:12px;\">公司的聚烯烃催化剂产品已长周期、稳定地应用于中石化、中石油、中海油、中国神华、台塑集团、中煤集团、中国大唐等国内知名企业，并远销海外市场，为聚烯烃行业增效、技术升级、产品开发做出突出贡献。</span> </p><p><span style=\"font-size:12px;\">任丘市利和科技发展有限公司坐落于华北石油化工基地，河北省任丘市雁翎开发区，陆运、海运、空运均非常便利，距离北京和天津150公里左右。</span> </p><p><img alt=\"\" src=\"/Public/Js/editor/attached/image/20170222/20170222151823_78807.png\" p=\"\" height=\"371\" width=\"680\"/> </p>', 'info', 'cn', '0');
INSERT INTO `think_news` VALUES ('2', '', '<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601162526_49630.jpg\" />\r\n</p>\r\n<p style=\"text-align:justify;margin-left:0in;\">\r\n	<span style=\"color:#333333;font-family:Arial;font-size:12px;font-weight:bold;\">LIHE Technology Ltd</span><span style=\"font-family:Calibri;font-size:11pt;\"> </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">is committed to the research and development, production and sales\r\nof polyolefin catalysts. It is a high-tech enterprise with proprietary\r\nintellectual property rights. The establishment of </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">”people-oriented</span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">, safety first,\r\nenvironmental friendly </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">enterprise” </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">is our goal; </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">“focus </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">on catalyst, devoted to </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">polyolefin” </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">is our business philosophy. </span> \r\n</p>\r\n<p style=\"text-align:justify;text-indent:0.28in;margin-left:0in;\">\r\n	<span style=\"color:#333333;font-family:Arial;font-size:12px;\">Since establishment in\r\n2005, </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">Lihe</span><span style=\"color:#2E75B6;font-family:Calibri;font-size:11pt;\"> </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">Technology</span><span style=\"color:#2E75B6;font-family:Calibri;font-size:11pt;\"> </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">has </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">received the Certificate of\r\nHigh-tech Enterprise authorized by the Ministry of Science and Technology\r\n(MOST) in 2009, and passed </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">the </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">ISO 9001 quality system certification in 2010.</span><span style=\"font-family:Calibri;font-size:11pt;\"> </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">Up to date, LIHE\r\nTechnology has </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">issued </span><span style=\"color:#333333;font-family:Arial;font-size:12px;\">for tens of patents for its proprietary high efficiency solid\r\ncatalyst for olefin polymerization, among which many patents have been\r\nauthorized, including the newly developed non-phthalates internal donors\r\ntechnology.</span> \r\n</p>\r\n<p style=\"text-align:justify;text-indent:0.28in;margin-left:0in;\">\r\n	<span style=\"color:#333333;text-indent:0.28in;font-family:Arial;\">The catalyst production\r\ncapacity is 610 t/a with three sets of PP catalyst production lines total 430\r\nt/a and one set of PE catalyst production line 180 </span><span style=\"color:#333333;text-indent:0.28in;font-family:Arial;\">t/a. </span><span style=\"color:#333333;text-indent:0.28in;font-family:Arial;\">We have an independent\r\nR&amp;D center which is fully equipped with lab test and pilot test reactors\r\nand facilities for catalyst quality-control and polymerization evaluation .</span> \r\n</p>\r\n<p style=\"text-align:justify;text-indent:0.28in;margin-left:0in;\">\r\n	<span style=\"color:#333333;font-family:Arial;\"> The polyolefin catalysts produced by </span><span style=\"color:#333333;font-family:Arial;\">LiHe</span><span style=\"color:#333333;font-family:Arial;\"> Technology have been widely and on a long-term basis used in\r\nSinopec, Petro China, CNOOC, China </span><span style=\"color:#333333;font-family:Arial;\">Shenhua</span><span style=\"color:#333333;font-family:Arial;\">, China coal energy, Formosa Plastics </span><span style=\"color:#333333;font-family:Arial;\">Corporation, </span><span style=\"color:#333333;font-family:Arial;\">China </span><span style=\"color:#333333;font-family:Arial;\">Datang</span><span style=\"color:#333333;font-family:Arial;\"> and other well-known\r\ndomestic enterprises, and exported to overseas </span><span style=\"color:#333333;font-family:Arial;\">markets. </span><span style=\"color:#333333;font-family:Arial;\">I</span><span style=\"color:#333333;font-family:Arial;\">t </span><span style=\"color:#333333;font-family:Arial;\">has made outstanding contributions for the polyolefin industry\r\nefficiency improvement, technology upgrading and product development.</span> \r\n</p>\r\n<p style=\"text-align:justify;text-indent:0.28in;margin-left:0in;\">\r\n	<span style=\"color:#333333;font-family:Arial;\">Renqiu</span><span style=\"color:#2E75B6;font-family:Calibri;font-size:11pt;\"> </span><span style=\"color:#333333;font-family:Arial;\">LIHE Technology is situated in the North China </span><span style=\"color:#333333;font-family:Arial;\">petroleum </span><span style=\"color:#333333;font-family:Arial;\">and chemical industry base, </span><span style=\"color:#333333;font-family:Arial;\">Yanling</span><span style=\"color:#333333;font-family:Arial;\"> Development Zone in Renqiu\r\ncity </span><span style=\"color:#333333;font-family:Arial;\">of</span><span style=\"color:#2E75B6;font-family:Calibri;font-size:11pt;\"> </span><span style=\"color:#333333;font-family:Arial;\">Hebei </span><span style=\"color:#333333;font-family:Arial;\">province. It is 150\r\nkilometers away from Beijing and Tianjin, where the land, sea and air </span><span style=\"color:#333333;font-family:Arial;\">transportation </span><span style=\"color:#333333;font-family:Arial;\">is very convenient.</span> \r\n</p>\r\n<p style=\"text-align:justify;margin-left:0in;\">\r\n	<span style=\"color:#2E75B6;font-family:Calibri;font-size:11pt;\"><br />\r\n</span> \r\n</p>\r\n<span style=\"font-family:Arial;\"></span> \r\n<p>\r\n	<br />\r\n</p>', 'info', 'en', '0');
INSERT INTO `think_news` VALUES ('3', '', '<br />\r\n&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602215603_74491.jpg\" /><br />\r\n<br />', 'contact', 'cn', '0');
INSERT INTO `think_news` VALUES ('4', '', '<br />\r\n&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602215615_97730.jpg\" /><br />\r\n<br />', 'contact', 'en', '0');
INSERT INTO `think_news` VALUES ('5', '', '<p>\r\n	<strong>环保</strong> \r\n</p>\r\n<hr />\r\n<span style=\"white-space:normal;\">使全员参与危害识别和风险控制，定期进行管理评审和监督审核。</span>采用规划(PLAN)--实施(DO)--验证(CHECK)--改进(ACTION)运行模式，在PDCA循环运行过程中实现持续改进，预防、控制和消除职业危害，增进劳动者健康和保护环境；加强设备设施本质安全建设，建立安全生产的长效机制；杜绝严重的安全和环境事故，尽最大可能减少事故发生，保证员工的健康与安全，力争实现“零事故、零损失、零伤害”的工作目标。\r\n<p>\r\n	<br />\r\n</p>', 'huanbao', 'cn', '0');
INSERT INTO `think_news` VALUES ('6', '', '<p><br />\r\n\r\nAll staff are involved in hazard identification and risk control, and assessment and supervision of safety management are conducted on a regular basis. We adopt and continuously improve the operation mode of PLAN-DO-CHECK-ACTION during production to prevent, control and diminish occupational hazard, protecting the health of our employees and improving environment protection. <br />\r\n<br />\r\nAt the same time, we are strengthening the intrinsic safety building of equipments and facilities to establish a long-term mechanism of safe production. By these measures, we try to eliminate any possibility of safety or environmental incidents and ensure the health and safety of our staff, thus achieving the goal of \"zero accidents, zero loss, zero harm.\"<br />\r\n<br />\r\n</p>', 'huanbao', 'en', '0');
INSERT INTO `think_news` VALUES ('7', '', '<p>\r\n	<strong>安全</strong>\r\n</p>\r\n<hr />\r\n公司通过多渠道获取产品质量、健康、安全和环境的法律、法规，并进行适用性评价，保证所遵守法律的有效性；积极推行生产全过程的减污、节能、降耗、节水技术，综合利用\"三废\"，从源头有效控制污染，提高环境治理水平，防止对环境的不利影响；在人员、资金、设施等方面提供切实保证，认真贯彻HSE管理体系，做到事事有人管，人人有责任，办事有程序，检查有标 准，问题有处理，处理有结果；努力改善劳动条件、克服不安全因素，积极开展职工身体检查、职业健康监测、设备监测、环境监测，同时加强员工的HSE教育培训，通过培训强化员工健康意识、安全意识、环境意识，树立一切事故都可以预防的思想，规范员工安全行为，坚持“工艺安全管理（PSM）”和“行为安全管理（BSM）”并重；\r\n<p>\r\n	<br />\r\n</p>', 'anquan', 'cn', '0');
INSERT INTO `think_news` VALUES ('8', '', '<p>\r\n	<br />\r\nRegular assessments on relative laws, regulations, and policies on product quality, health, safety and environmental protection are conducted in LiHe to ensure their applicability to our production. Advanced technologies are applied to the whole production process in pollution abatement and energy and water conservation to achieve an effective control on industry pollution from the source and improve environmental protection methods. Human resources, funding and infrastructure are guaranteed to ensure a comprehensive implementation of HSE (Health, Safety and Environment) Management System in LiHe, with clear division of responsibility to the people, standard procedures to process and effective response to problems.\r\n<br />\r\n<br />\r\nLiHe is committed to improve its working conditions and eliminate security risks,and inspections on equipments and environment monitoring are carried out regularly. In addition to regular physical examinations and occupational health monitoring for employees, we strengthen HSE training and education, improve the employees\' awareness of HSE, regulating employees\' safety behavior and sticking to Process Safety Management (PSM) and Behavior Safety Management (BSM).\r\n<br />\r\n<br />\r\n</p>', 'anquan', 'en', '0');
INSERT INTO `think_news` VALUES ('9', '', '<p>\r\n	<strong>健康</strong>\r\n</p>\r\n<hr />\r\n<p>\r\n	利和科技严格遵守国家对产品质量、健康、安全和环境的各项法律、法规、政策；坚持\"安全第一，预防为主，以人为本，改善环境，全员动手，综合治理，防治结合，持续改进\" 的方针；高度重视员工健康保障，高度重视安全生产，高度重视环境保护；积极开展环境影响评价、安全生产评价、职业病危害评价，并顺利通过了环境保护竣工验收、安全生产竣工验收、职业病危害控效评价、ISO9001质量管理体系认证及安全标准化二级企业的评审；认真履行公司的社会责任，在保障生产过程不危害环境的同时，注重研发无害于环境和人体健康的产品；注重资源的减量利用和循环利用，尽量降低废弃物的生产量，保护自然资源，促进企业与环境的平衡和协调，积极实施可持续发展战略。<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'jiankang', 'cn', '0');
INSERT INTO `think_news` VALUES ('10', '', '<p>\r\n	<br />\r\nLiHe strictly complies with national laws, regulations, and policies on product quality, health, safety and environmental protection. We prioritize safe production and uphold a people-oriented and environmental-friendly policy with comprehensive prevention and control methods, to prevent any hazard to the environment and the health condition of workers. <br />\r\n<br />\r\nIn addition to our commitment to environmental protection during production, we try to realize our social responsibility by developing environmental-friendly products and recycling measures, reducing wastes as well as the use of resources. We are committed to balance the development of LiHe and natural environment to achieve a sustainable development.<br />\r\n<br />\r\n</p>', 'jiankang', 'en', '0');
INSERT INTO `think_news` VALUES ('11', null, '科技前沿中文', 'keji', 'cn', '0');
INSERT INTO `think_news` VALUES ('12', null, '科技前沿英文', 'keji', 'en', '0');
INSERT INTO `think_news` VALUES ('13', '质量控制 - 完善的原料监控、催化剂生产、表征、聚合评价体系 \r\n通过ISO9001：2008质量管理体系认证，催化剂生产关键过程实现自控，保障品质稳定。', '<br />\r\n<img alt=\"\" src=\"/Public/Js/editor/attached/image/20120524/20120524130445_40222.jpg\" /><br />\r\n<br />', 'jhpj', 'cn', '0');
INSERT INTO `think_news` VALUES ('14', 'Quality Control: ·Complete system for raw material monitoring ·Catalyst production ·Characterization and polytest ·Certified by ISO9001: 2008 quality management system, auto-control in key production process to guarantee consistent quality.', '<img alt=\"\" src=\"/Public/Js/editor/attached/image/20120524/20120524231359_83494.jpg\" /><br />\r\n<br />', 'jhpj', 'en', '0');
INSERT INTO `think_news` VALUES ('15', '质量控制 - 完善的原料监控、催化剂生产、表征、聚合评价体系 \r\n通过ISO9001：2008质量管理体系认证，催化剂生产关键过程实现自控，保障品质稳定。', '<br />\r\n<p>\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601150728_37594.jpg\" /> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601151058_60108.jpg\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'chjsc', 'cn', '0');
INSERT INTO `think_news` VALUES ('16', 'Quality Control: ·Complete system for raw material monitoring ·Catalyst production ·Characterization and polytest ·Certified by ISO9001: 2008 quality management system, auto-control in key production process to guarantee consistent quality.', '<p>\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601150809_67817.jpg\" /> \r\n</p>\r\n<br />\r\n<p>\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601151116_22534.jpg\" />\r\n</p>', 'chjsc', 'en', '0');
INSERT INTO `think_news` VALUES ('17', '质量控制 - 完善的原料监控、催化剂生产、表征、聚合评价体系\r\n通过ISO9001：2008质量管理体系认证，催化剂生产关键过程实现自控，保障品质稳定。', '<br />\r\n&nbsp;&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601150203_59069.jpg\" /><br />\r\n<br />', 'yuanliao', 'cn', '0');
INSERT INTO `think_news` VALUES ('18', 'Quality Control: ·Complete system for raw material monitoring ·Catalyst production ·Characterization and polytest ·Certified by ISO9001: 2008 quality management system, auto-control in key production process to guarantee consistent quality.', '<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601150226_63140.jpg\" /><br />\r\n&nbsp;<br />', 'yuanliao', 'en', '0');
INSERT INTO `think_news` VALUES ('19', '聚丙烯催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好, 特别适合生产抗冲共聚产品。', '<strong>LP催化剂－适用于本体－气相法组合(Hypol/SPG/ZHG)工艺</strong><br />\r\n<br />\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601102500_93349.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:12px;\">应用厂家：燕山石化、广州石化、鸿基石化、</span><span style=\"font-family:Arial;font-size:14px;white-space:normal;\"><span style=\"font-size:12px;\">东方宏业、</span><span style=\"font-size:12px;\">三江石化、卫星石化</span></span><span style=\"font-size:12px;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:14px;white-space:normal;\"><span style=\"font-size:12px;\"><br />\r\n</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:12px;\">典型牌号：F401/CJS700/4220/J340/012/045/075/140/225等</span> \r\n</p>', 'lp', 'cn', '1');
INSERT INTO `think_news` VALUES ('20', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p>\r\n	<strong><span style=\"font-family:Arial;\">LP catalyst — Applied to liquid-gas phase, hypol/SPG/ZHG process</span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601104052_96886.jpg\" /> \r\n</p>\r\n<br />\r\nClients include:\r\n<p>\r\n	Yanshan Petrochemical,\r\n</p>\r\n<p>\r\n	Guangzhou Petrochemical,\r\n</p>\r\n<p>\r\n	Shandong Orient Hongye Chemical Co. Ltd\r\n</p>\r\n<p>\r\n	Zhejiang Hongji Petrochemical Co. Ltd\r\n</p>\r\n<p>\r\n	China Sanjiang Fine Chemicals Company Ltd\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\nTypical Trademarks:\r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;\">F401/CJS700/4220/J340/012/045/075/140/225</span> \r\n</p>', 'lp', 'en', '1');
INSERT INTO `think_news` VALUES ('21', '聚丙烯催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好, 特别适合生产抗冲共聚产品。', '<p>\r\n	<strong>S-copo催化剂－适用于间歇本体共聚工艺</strong>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105859_50581.jpg\" /> \r\n</p>\r\n<br />\r\n<p>\r\n	应用厂家：南京金陵塑胶化工有限公司\r\n</p>\r\n<div>\r\n	<br />\r\n</div>\r\n<p>\r\n	典型牌号：R005等\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'scopo', 'cn', '1');
INSERT INTO `think_news` VALUES ('22', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p>\r\n	<strong><span style=\"font-family:Arial;\">S-copo catalyst — Applied to batch bulk (copolymerization) process</span></strong><br />\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105950_72407.jpg\" /> \r\n</p>\r\n<p>\r\n	Clients include:&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;Nanjing Jinling plastic &amp; Petrochemical Co.,Ltd.\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\nTypical Trademarks: R005\r\n<p>\r\n	<br />\r\n</p>', 'scopo', 'en', '1');
INSERT INTO `think_news` VALUES ('23', '聚丙烯催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好, 特别适合生产抗冲共聚产品。', '<p>\r\n	<strong>LS催化剂－适用于间歇本体均聚工艺</strong>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105534_78357.jpg\" /> \r\n</p>\r\n<br />\r\n<p>\r\n	应用厂家：南京金陵塑胶、沧州炼油厂、天利高新、镇海工贸、宁波甬兴、温州银泰、南京炼油厂、玉皇石化、山东汇丰织造布等\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n典型牌号：PP-H-GD-013/040/085/150/230/320/450等\r\n<p>\r\n	<br />\r\n</p>', 'ls', 'cn', '1');
INSERT INTO `think_news` VALUES ('24', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p>\r\n	<strong><span style=\"font-family:Arial;\">LS catalyst — Applied to batch bulk (homopolymerization) process</span></strong><br />\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105718_73725.jpg\" /> \r\n</p>\r\n<br />\r\nClients include:\r\n<p>\r\n	Nanjing Jinling plastic &amp; Petrochemical Co.,LTD,\r\n</p>\r\n<p>\r\n	Cangzhou Petrochemical,\r\n</p>\r\n<p>\r\n	Xinjiang Dushanzi Tianli High&amp;Newtech Co.,LTD,\r\n</p>\r\n<p>\r\n	Zhenhai Petrochemical Industrial Trade Co.,LTD,\r\n</p>\r\n<p>\r\n	Ningbo Yongxing Chemical Co.,LTD,\r\n</p>\r\n<p>\r\n	Wenzhou Yintai Chemical &amp; Industrial Co.,LTD,\r\n</p>\r\n<p>\r\n	Nanjing Refinery Co.,LTD,\r\n</p>\r\n<p>\r\n	Shandong Yuhuang Chemical (Group) Co., LTD,\r\n</p>\r\n<p>\r\n	Shandong Huifeng Nonwovenfabric Co.,LTD\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\nTypical Trademarks:&nbsp;\r\n</p>\r\n<p>\r\n	&nbsp;PP-H-GD-013/040/085/150/230/320/450\r\n</p>', 'ls', 'en', '1');
INSERT INTO `think_news` VALUES ('58', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，共聚性能好，氢调性能好，同时适合生产窄分子量分布和双峰分布树脂产品。适用于CX工艺。', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong><span style=\"font-size:14px;\">SEL-1催化剂——适用于CX工艺</span></strong>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601115252_28171.jpg\" /> \r\n</p>', 'SEL', 'cn', '1');
INSERT INTO `think_news` VALUES ('59', 'Features of Polyethylene Catalysts: ·High activity ·Good particle shape, spherical ·Narrow polymer particle distribution, low fine powder proportion ·Good copolymerization performance, good hydrogen response. ', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"color:#585858;font-family:宋体, Arial, Helvetica, sans-serif;font-size:13px;font-variant-ligatures:normal;orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;\"><span style=\"width:716px;font-family:Arial;\">SEL-1 catalyst — Applied to CX process</span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601115324_88385.jpg\" /> \r\n</p>', 'SEL', 'en', '1');
INSERT INTO `think_news` VALUES ('60', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，共聚性能好，同时适合生产窄分子量分布和双峰分布树脂产品，氢调性能好。', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\"><span style=\"font-family:Microsoft YaHei;\">SEL-2催化剂－适用于 Hostalen</span><span style=\"font-family:Microsoft YaHei;\">工艺</span></strong><span style=\"font-family:Microsoft YaHei;\"></span> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180402_85813.jpg\" />\r\n</p>\r\n<p>\r\n	应用厂家：四川石化\r\n</p>\r\n<p>\r\n	典型牌号：<span style=\"font-family:&quot;&quot;;font-size:12px;\">HA7260</span><span style=\"font-family:;font-size:10.5pt;\" \"=\"\"><span style=\"font-size:12px;\">、</span><span style=\"font-size:12px;\">HF7750S</span><span style=\"font-size:12px;\">、</span><span style=\"font-size:12px;\">HF4760</span><span style=\"font-size:12px;\">、</span><span style=\"font-size:12px;\">HM9455F1</span><span style=\"font-size:12px;\">、</span><span style=\"font-size:12px;\">HMCRP100N</span></span> \r\n</p>', 'SEL2', 'cn', '1');
INSERT INTO `think_news` VALUES ('61', 'Features of Polyethylene Catalysts: ·High activity ·Good particle shape, spherical ·Narrow polymer particle distribution, low fine powder proportion ·Good copolymerization performance, good hydrogen response. -for Hostalen process', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"color:#585858;font-family:宋体, Arial, Helvetica, sans-serif;font-size:13px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\"><span style=\"width:716px;font-family:Arial;\">SEL-2 catalyst — Applied to Hostalen process </span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180429_90098.jpg\" />\r\n</p>\r\n<p align=\"center\">\r\n	<br />\r\n</p>\r\n<blockquote style=\"color:#585858;line-height:23.8px;font-family:Arial;font-size:14px;white-space:normal;\" type=\"cite\">\r\n	<p>\r\n		<span style=\"width:716px;line-height:1.7;font-size:12px;\"><span style=\"color:#585858;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:13px;white-space:normal;background-color:#FFFFFF;\"><br />\r\n</span></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"width:716px;line-height:1.7;\"><span style=\"color:#585858;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">Clients include: </span>Petrochina Sichuan Petrochemical Company</span> \r\n	</p>\r\n	<p>\r\n		<span style=\"width:716px;line-height:1.7;\"><br />\r\n</span> \r\n	</p>\r\n	<p>\r\n		<span style=\"width:716px;line-height:1.7;\">Typical trademarks: <span style=\"font-family:&quot;&quot;;\">HA7260</span><span \"=\"\"><span>、</span><span>HF7750S</span><span>、</span><span>HF4760</span><span>、</span><span>HM9455F1</span><span>、</span><span>HMCRP100N</span></span></span> \r\n	</p>\r\n</blockquote>\r\n<p>\r\n	<br />\r\n</p>', 'SEL2', 'en', '1');
INSERT INTO `think_news` VALUES ('62', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，共聚性能好，适合生产双峰分布树脂产品，氢调性能好。适用于Innovene-S工艺。', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"color:#585858;font-family:宋体, Arial, Helvetica, sans-serif;font-size:14px;font-variant-ligatures:normal;letter-spacing:3px;orphans:2;text-indent:28px;white-space:normal;widows:2;background-color:#FFFFFF;\"><span style=\"width:716px;font-family:\'Microsoft YaHei\';font-size:14px;\">SEL-3催化剂－适用于 Innovene-S</span><span style=\"width:716px;font-family:\'Microsoft YaHei\';font-size:14px;\">工艺</span></strong><span style=\"font-size:14px;font-family:\'Microsoft YaHei\';\"></span>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601115433_75127.jpg\" /> \r\n</p>', 'SEL3', 'cn', '1');
INSERT INTO `think_news` VALUES ('63', 'Features of Polyethylene Catalysts: ·High activity ·Good particle shape, spherical ·Narrow polymer particle distribution, low fine powder proportion ·Good copolymerization performance, good hydrogen response. -for Innovene S process', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"color:#585858;font-family:宋体, Arial, Helvetica, sans-serif;font-size:13px;font-variant-ligatures:normal;orphans:2;white-space:normal;widows:2;background-color:#FFFFFF;\"><span style=\"width:716px;font-family:Arial;\">SEL-3catalyst — Applied to Innovene S&nbsp;process&nbsp;</span></strong>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601115457_81176.jpg\" /> \r\n</p>', 'SEL3', 'en', '1');
INSERT INTO `think_news` VALUES ('64', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，共聚性能好，适合生产HDPE和LLDPE等各个牌号产品，氢调性能好。-适用于Spherilene工艺', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"font-family:&quot;Microsoft YaHei&quot;;font-size:14px;\"><strong>SEG-S催化剂——适用于Spherilene 工艺</strong></span> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180246_99638.jpg\" />\r\n</p>', 'SEGS', 'cn', '1');
INSERT INTO `think_news` VALUES ('25', '聚丙烯催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好，特别适合生产抗冲共聚产品。', '<p>\r\n	<strong>PG催化剂－适用于 Novolen 工艺</strong><br />\r\n<span style=\"font-size:12px;white-space:nowrap;\"><br />\r\n</span> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105303_53213.jpg\" /> \r\n</p>\r\n<br />\r\n<span style=\"font-size:12px;\">应用厂家：锦西石化、宁波台塑、台湾台塑、伊朗石化、神华宁煤、</span><span style=\"font-family:Arial;font-size:12px;white-space:normal;\">福建联合石化</span><span style=\"white-space:normal;\"></span> \r\n<p>\r\n	<br />\r\n<br />\r\n<span style=\"font-size:12px;\"> 典型牌号：</span>\r\n</p>\r\n<p>\r\n	<span style=\"text-indent:0cm;\">均聚: </span><span style=\"text-indent:0cm;\">1102K</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">1080K</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">1100N</span>\r\n</p>\r\n<p>\r\n	<span style=\"text-indent:0cm;\">共聚：</span><span style=\"text-indent:0cm;\">3003</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">3009</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">3015</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">3040</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">3064</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">3204</span><span style=\"text-indent:0cm;\">、</span><span style=\"text-indent:0cm;\">4204</span>\r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>', 'pg', 'cn', '1');
INSERT INTO `think_news` VALUES ('26', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p>\r\n	<strong><span style=\"font-family:Arial;\">PG catalyst — Applied to Novolen process</span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105406_12496.jpg\" /> \r\n</p>\r\n<br />\r\nClients include:\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:12px;\">Formosa Plastic Corporation of Taiwan</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:12px;\"> Formosa Plastic Corporation of Ningbo</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:12px;\"> Shenhua Ningxia Coal industry Group Company Ltd</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:12px;\"> Petrochina Jinxi Petrochemical Company</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:12px;\"> Fujian Refining &amp; Petrochemical Company Ltd</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:14px;\"><span style=\"font-size:12px;\"> </span><span style=\"font-size:12px;\">Iran Petrochemical</span></span><span style=\"font-family:Arial;font-size:12px;\">，</span><span style=\"font-family:Arial;font-size:14px;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Typical Trademarks:\r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'\';text-indent:0cm;\">homo-polymer: &nbsp;1102K、1080K、1100N</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:\'\';text-indent:0cm;\">co-polymer：3003、3009、3015、3040、3064、3204、4204</span>\r\n</p>\r\n<div>\r\n	<span style=\"font-family:\'\';\"><br />\r\n</span> \r\n</div>\r\n<span style=\"white-space:normal;\"></span> \r\n<p>\r\n	<br />\r\n</p>', 'pg', 'en', '1');
INSERT INTO `think_news` VALUES ('65', 'Features of Polyethylene Catalysts: ·High activity ·Good particle shape, spherical ·Narrow polymer particle distribution, low fine powder proportion ·Good copolymerization performance, good hydrogen response. Suitable for production of HDPE and LLDPE. -for Spherilene process', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"color:#585858;font-family:宋体, Arial, Helvetica, sans-serif;font-size:13px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\"><span style=\"width:716px;font-family:Arial;\">SEG-S catalyst — Applied to Spherilene&nbsp;process </span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180306_33170.jpg\" />\r\n</p>', 'SEGS', 'en', '1');
INSERT INTO `think_news` VALUES ('66', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，性能好，适合生产超高分子量聚乙烯树脂产品，氢调性能好。', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">SEL-UHM催化剂——适合生产超高分子量聚乙烯树脂</span>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601132104_85251.jpg\" /> \r\n</p>', 'SELUHM', 'cn', '1');
INSERT INTO `think_news` VALUES ('27', '聚丙烯催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好,特别适合生产抗冲共聚产品。', '<p>\r\n	<strong>SPG催化剂－适用于 Innovene、Chisso 工艺</strong> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105009_87843.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-size:12px;\">应用厂家：</span><span style=\"font-family:Arial;font-size:12px;\">燕山石化、扬子石化、上海赛科、独山子石化、宁夏宝丰、陕西延长中煤榆能化、茂名石化</span><span style=\"font-size:12px;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	典型牌号：\r\n</p>\r\n<p>\r\n	均聚：S1003/F1002B等\r\n</p>\r\n<p>\r\n	无规共聚：B4808/K4912/K4818/B4101等\r\n</p>\r\n<p>\r\n	抗冲共聚：K8303/K7726/B8101/K6606/K9026/K9726/K9016/K9720等\r\n</p>\r\n<p>\r\n	三元共聚：C5608/C5908/F5606/F5006\r\n</p>\r\n<p>\r\n	超高橡胶含量K9103、B9101\r\n</p>\r\n<p>\r\n	氢调法高熔指聚丙烯：K7760H/K7780H/K7100H等\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'spg', 'cn', '1');
INSERT INTO `think_news` VALUES ('28', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p>\r\n	<strong><span style=\"font-family:Arial;\">SPG catalyst — Applied to Innovene and Chisso process</span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601105150_27753.jpg\" /> \r\n</p>\r\n<br />\r\n<br />\r\n<p>\r\n	Clients include:\r\n</p>\r\n<p>\r\n	Sinopec Beijing Yansha company\r\n</p>\r\n<p>\r\n	Sinopec Yangzi Petrochemical company Ltd\r\n</p>\r\n<p>\r\n	Shanghai SECCo petrochemical company limited\r\n</p>\r\n<p>\r\n	Dushanzi Petrochemical company\r\n</p>\r\n<p>\r\n	Shanxi Yanchang Coal Yulin Coal Energy &amp; Chemical Co. Ltd\r\n</p>\r\n<p>\r\n	Sinopec Maoming Company\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Typical Trademarks:\r\n</p>\r\n<p>\r\n	HPP: S1003/F1002B\r\n</p>\r\n<p>\r\n	RPP(Ethylene-Propylene): B4808/K4912/K4818/B4101\r\n</p>\r\n<p>\r\n	ICP: K8303/K7726/B8101/K6606/K9026/K9726/K9016/K9720\r\n</p>\r\n<p>\r\n	RPP(Ethylene-Propylene-Butene): C5608/C5908/F5606/F5006\r\n</p>\r\n<p>\r\n	High rubber content:K9103/B9101\r\n</p>\r\n<p>\r\n	High MI PP by Hydrogen Adjustment: K7760H/K7780H/K7100H\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'spg', 'en', '1');
INSERT INTO `think_news` VALUES ('29', '聚丙烯催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，特别适合生产抗冲共聚产品，氢调性能好。', '<p>\r\n	<strong>SUG催化剂－适用Unipol工艺</strong> <span style=\"font-size:12px;white-space:nowrap;\"><br />\r\n</span> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601104745_21436.jpg\" /> \r\n</p>\r\n<br />\r\n<p>\r\n	应用厂家：<span style=\"font-family:Arial;font-size:14px;white-space:normal;\"><span style=\"font-size:12px;\">神华包头、大唐多伦、广西</span><span style=\"font-size:12px;\">石化、四川石化、中煤榆林</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;font-size:14px;white-space:normal;\"><span style=\"font-size:12px;\"><br />\r\n</span></span>\r\n</p>\r\n<p>\r\n	典型牌号：L5E89/L5D98/V30G等\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"margin-left:18.0pt;text-indent:0cm;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'sug', 'cn', '1');
INSERT INTO `think_news` VALUES ('30', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p>\r\n	<strong><span style=\"font-family:Arial;\">SUG catalyst — Applied to Unipol process</span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601104841_77934.jpg\" /> \r\n</p>\r\n<br />\r\nClients include:\r\n<p>\r\n	Shenhua (Baotou) Charcoal Chemical Industry Co. Ltd\r\n</p>\r\n<p>\r\n	DATANG ENERGY CHEMICAL,\r\n</p>\r\n<p>\r\n	Petrochina Guangxi Petrochemical Company\r\n</p>\r\n<p>\r\n	Petrochina Sichuan Petrochemical Company\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Typical Trademarks:\r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;\">L5E89/L5D98/V30G</span> \r\n</p>', 'sug', 'en', '1');
INSERT INTO `think_news` VALUES ('67', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·Good copolymerization performance, esp. for manufacturing of ultra high molecular PE ·Good hydrogen response. ', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"font-size:14px;\">SEL-UHM catalyst——suitable for&nbsp;</span><span style=\"font-size:14px;\">manufacturing of ultra high molecular PE</span>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601132130_36336.jpg\" /> \r\n</p>', 'SELUHM', 'en', '1');
INSERT INTO `think_news` VALUES ('68', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好，特别适合生产抗冲共聚产品。', '<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"font-family:&quot;Microsoft YaHei&quot;;font-size:14px;\"><strong>SP催化剂——适用于Spheripol/Spherizone工艺</strong></span> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180532_69134.jpg\" />\r\n</p>\r\n<p>\r\n	应用厂家：海天石化、蒲洁能化、宁波富德\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	典型牌号：\r\n</p>\r\n<p>\r\n	均聚：T30S/HP425/HP500N/HP648T\r\n</p>\r\n<p>\r\n	无规：PA14D/RP320M\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:0cm;margin-left:18pt;\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'JBXSP', 'cn', '1');
INSERT INTO `think_news` VALUES ('31', '聚乙烯催化剂产品特点：催化剂聚合活性高，催化剂粒形好，呈球形，催化剂粒度分布集中，细粉少，催化剂共聚性能好，氢调敏感。', '<p>\r\n	<strong>SEG催化剂－适用于Unipol工艺</strong> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180051_20688.jpg\" />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;Microsoft YaHei&quot;;\">应用厂家：</span><span style=\"font-family:&quot;Microsoft YaHei&quot;;\">沈阳蜡化、神华包头、中煤榆林、独山子石化、宁夏宝丰、蒲洁能化、延长榆能化、四川石化、俄罗斯KOS</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;Microsoft YaHei&quot;;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:&quot;Microsoft YaHei&quot;;\">典型牌号：DFDA-7047/DFDA-7042/8008/8920等</span> \r\n</p>', 'seg', 'cn', '1');
INSERT INTO `think_news` VALUES ('32', 'Features of Polyethylene Catalysts: ·High activity ·Good particle shape, spherical ·Narrow polymer particle distribution, low fine powder proportion ·Good copolymerization performance, good hydrogen response. ', '<p>\r\n	<strong><span style=\"font-family:Arial;\">SEG catalyst — Applied to Unipol process</span></strong> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180143_21520.jpg\" />\r\n</p>\r\n<br />\r\n<p>\r\n	Clients include:\r\n</p>\r\n<p>\r\n	Shenyang Chemical Co. Ltd\r\n</p>\r\n<p>\r\n	Shenhua (Baotou) Charcoal Chemical Industry Co. Ltd\r\n</p>\r\n<p>\r\n	China-Coal Shanxi Yulin Energy &amp; Chemical Co. Ltd\r\n</p>\r\n<p>\r\n	PetroChina Dushanzi Petrochemical company\r\n</p>\r\n<p>\r\n	Pucheng Clean Energy Chemical Co. Ltd\r\n</p>\r\n<p>\r\n	Shanxi Yanchang Coal Yulin Coal Energy &amp; Chemical Co. Ltd\r\n</p>\r\n<p>\r\n	Petrochina Sichuan Petrochemical Company\r\n</p>\r\n<p>\r\n	Kazan PJSC Organichesky Sintez\r\n</p>\r\n<br />\r\n<p>\r\n	Typical Trademarks:\r\n</p>\r\n<p>\r\n	DFDA-7047/DFDA-7042/8008/8920\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'seg', 'en', '1');
INSERT INTO `think_news` VALUES ('33', '研究开发－完善的催化剂小试、中试、分析测试体系', '<br />\r\n&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601145324_31662.jpg\" /><br />', 'fenxi', 'cn', '0');
INSERT INTO `think_news` VALUES ('34', 'PResearch & Development - Comprehensive system for catalyst lab test, pilot test and analysis. ', '<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601145800_84631.jpg\" /><br />', 'fenxi', 'en', '0');
INSERT INTO `think_news` VALUES ('35', '研究开发－完善的催化剂小试、中试、分析测试体系', '<br />\r\n&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601145307_62990.jpg\" /><br />', 'zhongshi', 'cn', '0');
INSERT INTO `think_news` VALUES ('36', 'PResearch & Development - Comprehensive system for catalyst lab test, pilot test and analysis. ', '<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601145742_39553.jpg\" /><br />', 'zhongshi', 'en', '0');
INSERT INTO `think_news` VALUES ('37', '研究开发－完善的催化剂小试、中试、分析测试体系', '<br />\r\n<p>\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601145248_93201.jpg\" />\r\n</p>', 'xiaoshi', 'cn', '0');
INSERT INTO `think_news` VALUES ('38', 'PResearch & Development - Comprehensive system for catalyst lab test, pilot test and analysis. ', '<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601145719_75917.jpg\" /><br />', 'xiaoshi', 'en', '0');
INSERT INTO `think_news` VALUES ('39', '研究开发－完善的催化剂小试、中试、分析测试体系', '<p>\r\n	<strong><span style=\"font-size:9px;\">专利证书1<br />\r\n</span></strong> \r\n</p>\r\n<hr />\r\n<strong><img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428101249_79422.jpg\" alt=\"\" /><br />\r\n<p>\r\n	<strong><span style=\"font-size:9px;\">专利证书2<br />\r\n</span></strong> \r\n</p>\r\n<hr />\r\n<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428101314_52536.jpg\" alt=\"\" /><br />\r\n<p>\r\n	<strong><span style=\"font-size:9px;\">专利证书3<br />\r\n</span></strong> \r\n</p>\r\n<hr />\r\n<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428101340_84639.jpg\" alt=\"\" /><br />\r\n</strong> \r\n<p>\r\n	<br />\r\n</p>', 'yanjiu', 'cn', '0');
INSERT INTO `think_news` VALUES ('40', 'Research & Development - Comprehensive system of catalyst lab,pilot plant and analysis test', '<p>\r\n	<strong style=\"font-weight:bold;\">Certificate of Patent 1</strong> \r\n</p>\r\n<hr style=\"font-weight:bold;white-space:normal;\" />\r\n<p>\r\n	<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428101249_79422.jpg\" alt=\"\" /><br />\r\n<strong style=\"font-weight:bold;\">Certificate of Patent 2 </strong>\r\n</p>\r\n<hr style=\"font-weight:bold;white-space:normal;\" />\r\n<p>\r\n	<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428101314_52536.jpg\" alt=\"\" /><br />\r\n<strong style=\"font-weight:bold;\">Certificate of Patent 3 </strong>\r\n</p>\r\n<hr style=\"font-weight:bold;white-space:normal;\" />\r\n<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428101340_84639.jpg\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>', 'yanjiu', 'en', '0');
INSERT INTO `think_news` VALUES ('41', '丰富的产品线 - 不同的催化剂满足不同工艺的需要。\r\n\r\n', '<p>\r\n	<span style=\"white-space:normal;\">利和科技的聚烯烃催化剂产品内孔丰富,聚合活性高、共聚性能好，可生产均聚、无规共聚、抗冲共聚、高橡胶含量、宽分子量分布等上百种牌号树脂，其中三元共聚产品为国内首创。现有两大类15种主打产品，分别适用于多种聚合工艺。</span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;\"><img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601142710_60362.jpg\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:normal;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:14px;\">聚丙烯催化剂</span></strong>产品特点：催化剂活性高颗粒形状好，呈类球形粉料粒度分布集中、细粉少树脂等规度高、易调共聚性能好，特别适合生产抗冲共聚产品氢调性能好。\r\n</p>\r\n<br />\r\n<p>\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601144418_78499.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"white-space:normal;\">\r\n	<strong><span style=\"font-size:14px;\">聚乙烯催化剂</span></strong>产品特点：催化剂聚合活性高，催化剂粒形好，呈球形，催化剂粒度分布集中，细粉少，催化剂共聚性能好，氢调敏感。\r\n</p>\r\n<br />\r\n<p>\r\n	<div>\r\n		<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602175435_16165.jpg\" /><br />\r\n	</div>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		载体\r\n	</p>\r\n	<hr />\r\n	<p>\r\n		<img width=\"185\" height=\"155\" align=\"left\" alt=\"\" src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428083301_43704.jpg\" /> \r\n	</p>\r\n	<p>\r\n		聚丙烯催化剂产品特点：催化剂活性高颗粒形状好，呈类球形粉料粒度分布集中、细粉少树脂等规度高、易调共聚性能好，特别适合生产抗冲共聚产品氢调性能好。\r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		催化剂\r\n	</p>\r\n	<hr />\r\n	<p>\r\n		<img width=\"185\" height=\"155\" align=\"left\" alt=\"\" src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428083311_83508.jpg\" />聚丙烯催化剂产品特点：催化剂活性高颗粒形状好，呈类球形粉料粒度分布集中、细粉少树脂等规度高、易调共聚性能好，特别适合生产抗冲共聚产品氢调性能好。\r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		聚合物\r\n	</p>\r\n	<hr />\r\n	<p>\r\n		<img width=\"185\" height=\"155\" align=\"left\" alt=\"\" src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428083324_98086.jpg\" />聚丙烯催化剂产品特点：催化剂活性高颗粒形状好，呈类球形粉料粒度分布集中、细粉少树脂等规度高、易调共聚性能好，特别适合生产抗冲共聚产品氢调性能好。\r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<span style=\"white-space:nowrap;\"></span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>', 'lihe', 'cn', '1');
INSERT INTO `think_news` VALUES ('42', 'Extensive Product Line – Different catalyst caters to different technology request.\r\n', '<p>\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601155130_34451.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;white-space:nowrap;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">LIHE’s\r\npolyolefin catalyst products have<span> rich pore</span>s, high polymerization </span><span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">activity, </span><span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">and good\r\ncopolymerization performance. </span> \r\n</p>\r\n<p>\r\n	<span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">More than 100 trademarks of resins, such as\r\nhomo-polymers, random copolymers, impact copolymers, high rubber content </span> \r\n</p>\r\n<p>\r\n	<span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">and\r\nbroad molecular weight distribution resins, etc</span><span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">.</span><span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">, can be produced with our catalysts, among which the\r\nternary-copolymer</span> \r\n</p>\r\n<p>\r\n	<span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\"> products are domestic initiative. There are </span><span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">15 </span><span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">series of main\r\nproducts so far, which are suitable for different kinds of </span> \r\n</p>\r\n<p>\r\n	<span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\">polymerization\r\nprocess. </span> \r\n</p>\r\n<p>\r\n	<span style=\"text-align:justify;color:#404040;text-indent:0.28in;font-family:Arial;white-space:nowrap;\"><img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601155359_80758.jpg\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;white-space:nowrap;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;white-space:nowrap;\"><img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602175828_67204.jpg\" /><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;white-space:nowrap;\"><strong>Carriers</strong></span> \r\n</p>\r\n<hr />\r\n<p>\r\n	<img width=\"185\" height=\"155\" align=\"left\" alt=\"\" src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428083301_43704.jpg\" /> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Arial;\">High activity Good particle shape, spheriod Narrow polymer particle distribution, low fine powder High isotacticity of resin, easily adjust Good performance of copolymerization, esp. for manufacturing impact copolymer Good hydrogen response</span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n<span style=\"font-family:Arial;white-space:nowrap;\"><strong>Catalyst</strong></span> \r\n</p>\r\n<hr />\r\n<p>\r\n	<img width=\"185\" height=\"155\" align=\"left\" alt=\"\" src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428083311_83508.jpg\" /><span style=\"font-family:Arial;white-space:normal;\">High activity Good particle shape, spheriod Narrow polymer particle distribution, low fine powder High isotacticity of resin, easily adjust Good performance of copolymerization, esp. for manufacturing impact copolymer Good hydrogen response</span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"><br />\r\n<strong><span style=\"font-family:Arial;\">Polymer</span></strong></span> \r\n</p>\r\n<hr />\r\n<p>\r\n	<img width=\"185\" height=\"155\" align=\"left\" alt=\"\" src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428083324_98086.jpg\" /><span style=\"font-family:Arial;white-space:normal;\">High activity Good particle shape, spheriod Narrow polymer particle distribution, low fine powder High isotacticity of resin, easily adjust Good performance of copolymerization, esp. for manufacturing impact copolymer Good hydrogen response</span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'lihe', 'en', '1');
INSERT INTO `think_news` VALUES ('43', '质量控制 - 完善的原料监控、催化剂生产、表征、聚合评价体系</br>\r\n通过ISO9001：2008质量管理体系认证，催化剂生产关键过程实现自控，保障品质稳定。', '<p>\r\n	<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428110455_18814.jpg\" alt=\"\" />\r\n</p>', 'zhiliang', 'cn', '0');
INSERT INTO `think_news` VALUES ('44', 'Quality Control - Complete system of raw material monitor, catalyst production, characterization and polytest\r\nPassed authorization and audit of ISO9001:2008 Quality System \r\nKey process of catalyst production realized auto-control to guarantee consistent quality', '<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428110455_18814.jpg\" alt=\"\" style=\"white-space:normal;\" />', 'zhiliang', 'en', '0');
INSERT INTO `think_news` VALUES ('45', '', '<p>\r\n	<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428121848_72035.jpg\" alt=\"\" style=\"white-space:nowrap;\" />\r\n</p>', 'hse', 'cn', '0');
INSERT INTO `think_news` VALUES ('46', '', '<img src=\"/lihe/Public/Js/editor/attached/image/20120428/20120428121848_72035.jpg\" alt=\"\" />', 'hse', 'en', '0');
INSERT INTO `think_news` VALUES ('54', '拉克丝极度分裂看见爱上来得及', '阿斯顿发送到生生死死', 'else', 'cn', '1');
INSERT INTO `think_news` VALUES ('55', 'asdfsdfsddds', 'fsdfsdfsdfsdf', 'else', 'en', '1');
INSERT INTO `think_news` VALUES ('56', '聚丙烯LP催化剂聚丙烯LP催化剂聚丙烯LP催化剂聚丙烯LP催化剂聚丙烯LP催化剂聚丙烯LP催化剂', '<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂<span style=\"font:14px/21px Tahoma, Verdana, Helvetica, Arial, sans-serif;text-align:left;color:#000000;text-transform:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;float:none;display:inline !important;white-space:normal;widows:1;font-size-adjust:none;font-stretch:normal;background-color:#FFFFFF;-webkit-text-stroke-width:0px;\">聚丙烯LP催化剂</span></span></span></span></span></span></span></span>', '11111111111', 'cn', '1');
INSERT INTO `think_news` VALUES ('57', null, null, '11111111111', 'en', '1');
INSERT INTO `think_news` VALUES ('69', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"font-family:&quot;Microsoft YaHei&quot;;font-size:14px;white-space:normal;\">SP catlayst——Applied to&nbsp;Spheripol/Spherizone process</strong> \r\n</p>\r\n<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180548_88638.jpg\" />\r\n</p>\r\n<p align=\"center\">\r\n	<br />\r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\"><span style=\"color:#585858;font-family:Arial;font-size:12px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\">Clients include:</span></span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\">Jiangsu Xuzhou Haitian petrochemical</span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\">Shanxi Pouching Clean energy Ltd</span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\">Ningbo Fude Energy Ltd</span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;orphans:2;widows:2;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;orphans:2;widows:2;background-color:#FFFFFF;\">Typical trademarks：</span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;orphans:2;widows:2;background-color:#FFFFFF;\">Homo-polymer</span><span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;orphans:2;widows:2;background-color:#FFFFFF;\">：T30S/HP425/HP500N/HP648T</span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;orphans:2;widows:2;background-color:#FFFFFF;\">Random polymer</span><span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:Arial;font-size:12px;orphans:2;widows:2;background-color:#FFFFFF;\">：PA14D/RP320M</span> \r\n</p>\r\n<p align=\"center\" style=\"text-align:left;\">\r\n	<span style=\"color:#585858;text-indent:28px;letter-spacing:3px;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;orphans:2;widows:2;background-color:#FFFFFF;font-variant-ligatures:normal;\"><br />\r\n</span> \r\n</p>\r\n<p align=\"center\">\r\n	<br />\r\n</p>', 'JBXSP', 'en', '1');
INSERT INTO `think_news` VALUES ('70', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好, 特别适合生产抗冲共聚产品。', '<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180652_68428.jpg\" />\r\n</p>\r\n<p>\r\n	应用厂家：燕山石化、上海赛科、独山子石化、陕西延长中煤榆能化\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	典型牌号：\r\n</p>\r\n<p>\r\n	PPR管材料：T4400/T4401\r\n</p>\r\n<p>\r\n	三元共聚：C5608/C5908/F5606/F5006\r\n</p>\r\n<p>\r\n	高流动高抗冲：K9829/K9017\r\n</p>\r\n<p>\r\n	超高橡胶含量：K9103/K9101\r\n</p>\r\n<p>\r\n	<p style=\"text-indent:0cm;margin-left:18pt;\">\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>', 'JBXY', 'cn', '1');
INSERT INTO `think_news` VALUES ('71', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. ', '<p align=\"center\">\r\n	&nbsp;<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170602/20170602180709_45942.jpg\" />\r\n</p>\r\n<p align=\"center\">\r\n	<br />\r\n</p>\r\n<p align=\"center\">\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"color:#585858;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:13px;background-color:#FFFFFF;\">Clients include:</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#585858;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:13px;background-color:#FFFFFF;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	Sinopec Beijing Yansha company\r\n</p>\r\n<p>\r\n	Shanghai SECCo petrochemical company limited\r\n</p>\r\n<p>\r\n	Dushanzi Petrochemical company\r\n</p>\r\n<p>\r\n	Shanxi Yanchang Coal Yulin Coal Energy &amp; Chemical Co. Ltd\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	Typical trademarks:\r\n</p>\r\n<p>\r\n	PPR pipe material：<span style=\"white-space:normal;\">T4400/T4401</span> \r\n</p>\r\n<p>\r\n	Ternary copolymerization：<span style=\"white-space:normal;\">C5608/C5908/F5606/F5006</span> \r\n</p>\r\n<p>\r\n	High flow high impact:<span style=\"white-space:normal;\">K9829/K9017</span> \r\n</p>\r\n<p>\r\n	High rubber content：<span style=\"white-space:normal;\">K9103/K9101</span> \r\n</p>\r\n<p>\r\n	<p style=\"white-space:normal;\">\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<blockquote style=\"color:#585858;line-height:23.8px;font-family:Arial;font-size:14px;white-space:normal;\" type=\"cite\">\r\n		<br />\r\n		<p>\r\n			<br />\r\n		</p>\r\n	</blockquote>\r\n	<p>\r\n		<br />\r\n	</p>', 'JBXY', 'en', '1');
INSERT INTO `think_news` VALUES ('72', '催化剂产品特点：催化剂活性高，颗粒形状好，呈类球形，粉料粒度分布集中、细粉少，树脂等规度高、易调，共聚性能好，氢调性能好，特别适合生产抗冲共聚产品。催化剂中不含有邻苯二甲酸酯类塑化剂。', '<p align=\"center\">\r\n	<br />\r\n</p>\r\n<p style=\"text-align:left;margin-left:18pt;text-indent:0cm;\">\r\n	<strong><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">LID</span></strong><strong><span style=\"font-family:\" color:#585858;background:white;\"=\"\"><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">催化剂－适用于</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">Innovene</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">、</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">Unipol</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">、</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">Novolen</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">等多种聚丙烯工艺</span></span></strong><span style=\"font-family:;\" \"=\"\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601133343_70075.jpg\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'LID', 'cn', '1');
INSERT INTO `think_news` VALUES ('73', 'Features of Polypropylene Catalysts: ·High activity ·Good particle shape ·spheriod ·Narrow polymer particle distribution, low fine powder proportion ·High resin isotacticity, easy to adjust ·Good copolymerization performance, esp. for manufacturing impact copolymer ·Good hydrogen response. Phthalates-free catalyst.', '<p align=\"center\" style=\"text-align:left;\">\r\n	<strong style=\"white-space:normal;\"><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">LID catalyst</span></strong><strong style=\"white-space:normal;\"><span color:#585858;background:white;\"=\"\"><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">－Applied to&nbsp;</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">Innovene</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">、</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">Unipol</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">、</span><span style=\"font-family:\'Microsoft YaHei\';font-size:14px;\">Novolen PP process</span></span></strong>\r\n</p>\r\n<p align=\"center\">\r\n	<img alt=\"\" src=\"/Public/Js/editor/attached/image/20170601/20170601133410_28582.jpg\" /> \r\n</p>', 'LID', 'en', '1');
INSERT INTO `think_news` VALUES ('74', '测试的中文', '<p>测试的中文</p>', 'test', 'cn', '1');
INSERT INTO `think_news` VALUES ('75', '测试的英文', '<p>测试的英文测试的英文测试的英文测试的英文</p>', 'test', 'en', '1');
INSERT INTO `think_news` VALUES ('76', null, null, '', 'cn', '1');
INSERT INTO `think_news` VALUES ('77', null, null, '', 'en', '1');

-- ----------------------------
-- Table structure for `think_node`
-- ----------------------------
DROP TABLE IF EXISTS `think_node`;
CREATE TABLE `think_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_node
-- ----------------------------
INSERT INTO `think_node` VALUES ('49', 'read', '查看', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('40', 'Index', '默认模块', '1', '', '1', '1', '2', '0', '0');
INSERT INTO `think_node` VALUES ('39', 'index', '列表', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('37', 'resume', '恢复', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('36', 'forbid', '禁用', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('35', 'foreverdelete', '删除', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('34', 'update', '更新', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('33', 'edit', '编辑', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('32', 'insert', '写入', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('31', 'add', '新增', '1', '', null, '30', '3', '0', '0');
INSERT INTO `think_node` VALUES ('30', 'Public', '公共模块', '1', '', '2', '1', '2', '0', '0');
INSERT INTO `think_node` VALUES ('69', 'Form', '数据管理', '1', '', '1', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('7', 'User', '后台用户', '1', '', '4', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('6', 'Role', '角色管理', '1', '', '3', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('2', 'Node', '节点管理', '1', '', '2', '1', '2', '0', '2');
INSERT INTO `think_node` VALUES ('1', 'Rbac', 'Rbac后台管理', '1', '', null, '0', '1', '0', '0');
INSERT INTO `think_node` VALUES ('50', 'main', '空白首页', '1', '', null, '40', '3', '0', '0');
INSERT INTO `think_node` VALUES ('89', 'Page/index?type=xiaoshi&cur=89', '小试研发', '1', '', '1', '1', '2', '0', '8');
INSERT INTO `think_node` VALUES ('85', 'Page/index?type=contact&cur=85', '联系我们', '1', '', null, '1', '2', '0', '6');
INSERT INTO `think_node` VALUES ('90', 'Page/index?type=zhongshi&cur=90', '中试研发', '1', '', '2', '1', '2', '0', '8');
INSERT INTO `think_node` VALUES ('91', 'Page/index?type=fenxi&cur=91', '分析检测', '1', '', '3', '1', '2', '0', '8');
INSERT INTO `think_node` VALUES ('92', 'Seg', '聚乙烯SEG催化剂', '0', '', '1', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('93', 'Sug', '聚丙烯SUG催化剂', '0', '', '2', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('94', 'Spg', '聚丙烯SPG催化剂', '0', '', '3', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('95', 'Pg', '聚丙烯PG催化剂', '0', '', '4', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('96', 'Ls', '聚丙烯LS催化剂', '0', '', '5', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('97', 'Scopo', '聚丙烯S-COPO催化剂', '0', '', '6', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('98', 'Lp', '聚丙烯LP催化剂', '0', '', '7', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('99', 'Page/index?type=yuanliao&cur=99', '原料监控', '1', '', '1', '1', '2', '0', '9');
INSERT INTO `think_node` VALUES ('100', 'Page/index?type=chjsc&cur=100', '催化剂生产', '1', '', '2', '1', '2', '0', '9');
INSERT INTO `think_node` VALUES ('101', 'Page/index?type=jhpj&cur=101', '聚合评价', '1', '', '3', '1', '2', '0', '9');
INSERT INTO `think_node` VALUES ('102', 'Page/index?type=info&cur=102', '公司简介', '1', '', null, '1', '2', '0', '6');
INSERT INTO `think_node` VALUES ('103', 'Keji/index?cur=103', '科技前沿', '1', '', null, '1', '2', '0', '11');
INSERT INTO `think_node` VALUES ('104', 'Page/index?type=jiankang&cur=104', '健康', '1', '', '1', '1', '2', '0', '10');
INSERT INTO `think_node` VALUES ('105', 'Page/index?type=anquan&cur=105', '安全', '1', '', '2', '1', '2', '0', '10');
INSERT INTO `think_node` VALUES ('106', 'Page/index?type=huanbao&cur=106', '环保', '1', '', '3', '1', '2', '0', '10');
INSERT INTO `think_node` VALUES ('107', 'Page/index?type=yanjiu&cur=107', '研究开发', '1', '', '0', '1', '2', '0', '8');
INSERT INTO `think_node` VALUES ('108', 'Page/index?type=lihe&cur=108', '利和产品', '1', '', '0', '1', '2', '0', '7');
INSERT INTO `think_node` VALUES ('109', 'Page/index?type=zhiliang&cur=109', '质量控制', '1', '', '0', '1', '2', '0', '9');
INSERT INTO `think_node` VALUES ('110', 'Page/index?type=hse&cur=110', 'HSE', '1', '', '0', '1', '2', '0', '10');
INSERT INTO `think_node` VALUES ('111', 'Product?cur=111', '产品列表', '1', null, null, '1', '2', '0', '7');

-- ----------------------------
-- Table structure for `think_product`
-- ----------------------------
DROP TABLE IF EXISTS `think_product`;
CREATE TABLE `think_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `en_name` varchar(255) NOT NULL,
  `sort` int(2) NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of think_product
-- ----------------------------
INSERT INTO `think_product` VALUES ('7', '聚乙烯SEG催化剂', 'seg', 'SEG for PE', '4');
INSERT INTO `think_product` VALUES ('8', '聚丙烯SUG催化剂', 'sug', 'SUG for PP', '8');
INSERT INTO `think_product` VALUES ('9', '聚丙烯SPG催化剂', 'spg', 'SPG for PP', '7');
INSERT INTO `think_product` VALUES ('10', '聚丙烯PG催化剂', 'pg', 'PG for PP', '9');
INSERT INTO `think_product` VALUES ('11', '聚丙烯LS催化剂', 'ls', 'LS for PP', '12');
INSERT INTO `think_product` VALUES ('12', '聚丙烯S-COPO催化剂', 'scopo', 'S-COPO for PP', '13');
INSERT INTO `think_product` VALUES ('14', '聚丙烯LP催化剂', 'lp', 'LP-LPX for PP', '11');
INSERT INTO `think_product` VALUES ('15', '聚乙烯SEL-1催化剂', 'SEL', 'SEL-1 for PE', '1');
INSERT INTO `think_product` VALUES ('16', '聚乙烯SEL-2催化剂', 'SEL2', 'SEL-2 for PE', '2');
INSERT INTO `think_product` VALUES ('17', '聚乙烯SEL-3催化剂', 'SEL3', 'SEL-3 for PE', '3');
INSERT INTO `think_product` VALUES ('18', '聚乙烯SEG-S催化剂', 'SEGS', 'SEG-S for PE', '5');
INSERT INTO `think_product` VALUES ('19', '聚乙烯SEL-UHM催化剂', 'SELUHM', 'SEL-UHM for PE', '6');
INSERT INTO `think_product` VALUES ('20', '聚丙烯SP催化剂', 'JBXSP', 'SP for PP', '10');
INSERT INTO `think_product` VALUES ('21', '聚丙烯Y系列', 'JBXY', 'Y for PP', '14');
INSERT INTO `think_product` VALUES ('22', '聚丙烯LID催化剂', 'LID', 'LID for PP', '15');
INSERT INTO `think_product` VALUES ('23', '测试的', 'test', 'test1', '1');

-- ----------------------------
-- Table structure for `think_role`
-- ----------------------------
DROP TABLE IF EXISTS `think_role`;
CREATE TABLE `think_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ename` varchar(5) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`ename`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_role
-- ----------------------------
INSERT INTO `think_role` VALUES ('1', '领导组', '0', '1', '', '', '1208784792', '1254325558');
INSERT INTO `think_role` VALUES ('2', '员工组', '0', '1', '', '', '1215496283', '1254325566');
INSERT INTO `think_role` VALUES ('7', '演示组', '0', '1', '', null, '1254325787', '0');

-- ----------------------------
-- Table structure for `think_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `think_role_user`;
CREATE TABLE `think_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_role_user
-- ----------------------------
INSERT INTO `think_role_user` VALUES ('4', '27');
INSERT INTO `think_role_user` VALUES ('4', '26');
INSERT INTO `think_role_user` VALUES ('4', '30');
INSERT INTO `think_role_user` VALUES ('5', '31');
INSERT INTO `think_role_user` VALUES ('3', '22');
INSERT INTO `think_role_user` VALUES ('3', '1');
INSERT INTO `think_role_user` VALUES ('1', '4');
INSERT INTO `think_role_user` VALUES ('2', '3');
INSERT INTO `think_role_user` VALUES ('7', '2');
INSERT INTO `think_role_user` VALUES ('3', '35');

-- ----------------------------
-- Table structure for `think_search`
-- ----------------------------
DROP TABLE IF EXISTS `think_search`;
CREATE TABLE `think_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `lang` char(5) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_search
-- ----------------------------
INSERT INTO `think_search` VALUES ('1', '聚乙烯SEG催化剂', 'cn', 'Seg');
INSERT INTO `think_search` VALUES ('2', '聚丙烯SUG催化剂', 'cn', 'Sug');
INSERT INTO `think_search` VALUES ('3', '聚丙烯SPG催化剂', 'cn', 'Spg');
INSERT INTO `think_search` VALUES ('4', '聚丙烯PG催化剂', 'cn', 'Pg');
INSERT INTO `think_search` VALUES ('5', '聚丙烯LS催化剂', 'cn', 'Ls');
INSERT INTO `think_search` VALUES ('6', '聚丙烯S-COPO催化剂', 'cn', 'S-copo');
INSERT INTO `think_search` VALUES ('7', '聚丙烯LP催化剂', 'cn', 'Lp');
INSERT INTO `think_search` VALUES ('8', 'SPG Catalyst', 'en', 'Spg');
INSERT INTO `think_search` VALUES ('9', 'SUG Catalyst', 'en', 'Sug');
INSERT INTO `think_search` VALUES ('10', 'PG Catalyst', 'en', 'Pg');
INSERT INTO `think_search` VALUES ('11', 'LP Catalyst', 'en', 'Lp');
INSERT INTO `think_search` VALUES ('12', 'LS Catalyst', 'en', 'Ls');
INSERT INTO `think_search` VALUES ('13', 'S-COPO Catalyst', 'en', 'S-copo');
INSERT INTO `think_search` VALUES ('14', 'SEG Catalyst', 'en', 'Seg');

-- ----------------------------
-- Table structure for `think_setting`
-- ----------------------------
DROP TABLE IF EXISTS `think_setting`;
CREATE TABLE `think_setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_setting
-- ----------------------------
INSERT INTO `think_setting` VALUES ('1', '1', '1', '1阿萨德法师');

-- ----------------------------
-- Table structure for `think_tag`
-- ----------------------------
DROP TABLE IF EXISTS `think_tag`;
CREATE TABLE `think_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` mediumint(6) unsigned NOT NULL,
  `module` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`),
  KEY `count` (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_tag
-- ----------------------------
INSERT INTO `think_tag` VALUES ('1', 'abc', '1', 'Blog');
INSERT INTO `think_tag` VALUES ('2', 'php', '1', 'Blog');
INSERT INTO `think_tag` VALUES ('3', 'js', '1', 'Blog');
INSERT INTO `think_tag` VALUES ('4', 'jquery', '1', 'Blog');

-- ----------------------------
-- Table structure for `think_tagged`
-- ----------------------------
DROP TABLE IF EXISTS `think_tagged`;
CREATE TABLE `think_tagged` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL,
  `recordId` int(11) unsigned NOT NULL,
  `tagId` int(11) NOT NULL,
  `tagTime` int(11) NOT NULL,
  `module` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_tagged
-- ----------------------------
INSERT INTO `think_tagged` VALUES ('1', '0', '1', '1', '1277718745', 'Blog');
INSERT INTO `think_tagged` VALUES ('2', '0', '2', '2', '1277718803', 'Blog');
INSERT INTO `think_tagged` VALUES ('3', '0', '2', '2', '1277718803', 'Blog');
INSERT INTO `think_tagged` VALUES ('4', '0', '3', '3', '1277718927', 'Blog');
INSERT INTO `think_tagged` VALUES ('5', '0', '3', '4', '1277718927', 'Blog');

-- ----------------------------
-- Table structure for `think_user`
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `bind_account` varchar(50) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `type_id` tinyint(2) unsigned DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES ('1', 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', '', '1496411726', '114.253.3.90', '1001', '8888', 'liu21st@gmail.com', '备注信息', '1222907803', '1239977420', '1', '0', '');
INSERT INTO `think_user` VALUES ('2', 'demo', '演示', 'fe01ce2a7fbac8fafaed7c982a04e229', '', '1254326091', '127.0.0.1', '90', '8888', '', '', '1239783735', '1254325770', '1', '0', '');
INSERT INTO `think_user` VALUES ('3', 'member', '员工', 'aa08769cdcb26674c6706093503ff0a3', '', '1285670573', '127.0.0.1', '16', '', '', '', '1253514375', '1254325728', '1', '0', '');
INSERT INTO `think_user` VALUES ('4', 'leader', '领导', 'c444858e0aaeb727da73d2eae62321ad', '', '1254325906', '127.0.0.1', '15', '', '', '领导', '1253514575', '1254325705', '1', '0', '');
INSERT INTO `think_user` VALUES ('35', 'spring', '123456', 'e10adc3949ba59abbe56e057f20f883e', '', '1332400173', '127.0.0.1', '1', null, '', '', '1332400149', '0', '1', '0', '');
