/*
Navicat MySQL Data Transfer

Source Server         : Azure-mysql
Source Server Version : 50500
Source Host           : mysql2018ncepu.mysqldb.chinacloudapi.cn:3306
Source Database       : dubbo

Target Server Type    : MYSQL
Target Server Version : 50500
File Encoding         : 65001

Date: 2019-01-23 17:29:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mooc_actor_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_actor_t`;
CREATE TABLE `mooc_actor_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `actor_name` varchar(50) DEFAULT NULL COMMENT '演员名称',
  `actor_img` varchar(200) DEFAULT NULL COMMENT '演员图片位置',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='演员表';

-- ----------------------------
-- Records of mooc_actor_t
-- ----------------------------
INSERT INTO `mooc_actor_t` VALUES ('1', '徐峥', 'actors/2b98c9d2e6d23a7eff25dcac8b584b0136045.jpg');
INSERT INTO `mooc_actor_t` VALUES ('2', '王传君', 'actors/b782d497577baffb5ed14de52841dcb164365.jpg');
INSERT INTO `mooc_actor_t` VALUES ('3', '谭卓', 'actors/acf7db57456cb1aed1a42f7ebffedaa842002.jpg');
INSERT INTO `mooc_actor_t` VALUES ('4', '黄渤', 'actors/c6594ef2705dcaf7d9df857d228b5e1645712.jpg');
INSERT INTO `mooc_actor_t` VALUES ('5', '舒淇', 'actors/6b32a489467283bb739a2bac3b2b929742175.jpg');
INSERT INTO `mooc_actor_t` VALUES ('6', '张艺兴', 'actors/b738d5e78a1f5c3379d9d42a9b18286f32246.jpeg');
INSERT INTO `mooc_actor_t` VALUES ('7', '强森', 'actors/7e3067d066c1e285b0cc17bfd5f1b34e108474.jpg');
INSERT INTO `mooc_actor_t` VALUES ('8', '杰森·斯坦森', 'actors/7ec0c90aec03c7904c1db3af1153162f77864.jpg');
INSERT INTO `mooc_actor_t` VALUES ('9', '李冰冰', 'actors/d2258cd0529950cf5099206519d91d0e51803.jpg');
INSERT INTO `mooc_actor_t` VALUES ('10', '汤姆·克鲁斯', 'actors/6afaea1cb4ca2b346e86e265347c78b833970.jpg');

-- ----------------------------
-- Table structure for `mooc_area_dict_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_area_dict_t`;
CREATE TABLE `mooc_area_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地域信息表';

-- ----------------------------
-- Records of mooc_area_dict_t
-- ----------------------------
INSERT INTO `mooc_area_dict_t` VALUES ('1', '朝阳区');
INSERT INTO `mooc_area_dict_t` VALUES ('2', '海淀区');
INSERT INTO `mooc_area_dict_t` VALUES ('3', '丰台区');
INSERT INTO `mooc_area_dict_t` VALUES ('4', '大兴区');
INSERT INTO `mooc_area_dict_t` VALUES ('5', '东城区');
INSERT INTO `mooc_area_dict_t` VALUES ('6', '西城区');
INSERT INTO `mooc_area_dict_t` VALUES ('7', '通州区');
INSERT INTO `mooc_area_dict_t` VALUES ('8', '房山区');
INSERT INTO `mooc_area_dict_t` VALUES ('9', '昌平区');
INSERT INTO `mooc_area_dict_t` VALUES ('10', '顺义区');
INSERT INTO `mooc_area_dict_t` VALUES ('11', '怀柔区');
INSERT INTO `mooc_area_dict_t` VALUES ('12', '门头沟');
INSERT INTO `mooc_area_dict_t` VALUES ('13', '石景山区');
INSERT INTO `mooc_area_dict_t` VALUES ('14', '密云区');
INSERT INTO `mooc_area_dict_t` VALUES ('15', '平谷区');
INSERT INTO `mooc_area_dict_t` VALUES ('16', '延庆区');
INSERT INTO `mooc_area_dict_t` VALUES ('99', '全部');

-- ----------------------------
-- Table structure for `mooc_banner_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_banner_t`;
CREATE TABLE `mooc_banner_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `banner_address` varchar(50) DEFAULT NULL COMMENT 'banner图存放路径',
  `banner_url` varchar(200) DEFAULT NULL COMMENT 'banner点击跳转url',
  `is_valid` int(11) DEFAULT '0' COMMENT '是否弃用 0-失效,1-失效',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='banner信息表';

-- ----------------------------
-- Records of mooc_banner_t
-- ----------------------------
INSERT INTO `mooc_banner_t` VALUES ('2', 'banners/9d75708ae91d5fc918369b76e9e2edba197666.jpg', 'www.meetingshop.cn', '0');
INSERT INTO `mooc_banner_t` VALUES ('3', 'banners/15b3730838f35d56a76d88a1787aaaa5186414.jpg', 'www.meetingshop.cn', '0');
INSERT INTO `mooc_banner_t` VALUES ('4', 'banners/51afa73f0347e9b98957c53fa971d41491652.jpg', 'www.meetingshop.cn', '0');
INSERT INTO `mooc_banner_t` VALUES ('5', 'banners/6605d3518e2bba10f29a6f9ae32b361987015.jpg', 'www.meetingshop.cn', '0');
INSERT INTO `mooc_banner_t` VALUES ('6', 'banners/c1a713981cabef02c88ae5f42888de70183835.jpg', 'www.meetingshop.cn', '0');

-- ----------------------------
-- Table structure for `mooc_brand_dict_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_brand_dict_t`;
CREATE TABLE `mooc_brand_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='品牌信息表';

-- ----------------------------
-- Records of mooc_brand_dict_t
-- ----------------------------
INSERT INTO `mooc_brand_dict_t` VALUES ('1', '大地影院');
INSERT INTO `mooc_brand_dict_t` VALUES ('2', '万达影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('3', '耀莱成龙国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('4', '保利国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('5', '博纳国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('6', '金逸影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('7', '中影国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('8', 'CGV影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('9', '橙天嘉禾影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('10', '新华国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('11', '星美国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('12', '百老汇影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('13', 'UME国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('14', '幸福蓝海国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('15', '首都电影院');
INSERT INTO `mooc_brand_dict_t` VALUES ('16', '华谊兄弟影院');
INSERT INTO `mooc_brand_dict_t` VALUES ('17', '卢米埃影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('18', '沃美影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('19', '美嘉欢乐影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('20', '嘉华国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('21', '17.5影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('22', '太平洋电影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('23', 'SFC上影影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('24', '嘉美国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('25', '东都影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('26', '鲁信影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('27', '华影国际影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('28', '搜秀影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('29', '横店电影城');
INSERT INTO `mooc_brand_dict_t` VALUES ('99', '全部');

-- ----------------------------
-- Table structure for `mooc_cat_dict_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_cat_dict_t`;
CREATE TABLE `mooc_cat_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='类型信息表';

-- ----------------------------
-- Records of mooc_cat_dict_t
-- ----------------------------
INSERT INTO `mooc_cat_dict_t` VALUES ('1', '爱情');
INSERT INTO `mooc_cat_dict_t` VALUES ('2', '喜剧');
INSERT INTO `mooc_cat_dict_t` VALUES ('3', '动画');
INSERT INTO `mooc_cat_dict_t` VALUES ('4', '剧情');
INSERT INTO `mooc_cat_dict_t` VALUES ('5', '恐怖');
INSERT INTO `mooc_cat_dict_t` VALUES ('6', '惊悚');
INSERT INTO `mooc_cat_dict_t` VALUES ('7', '科幻');
INSERT INTO `mooc_cat_dict_t` VALUES ('8', '动作');
INSERT INTO `mooc_cat_dict_t` VALUES ('9', '悬疑');
INSERT INTO `mooc_cat_dict_t` VALUES ('10', '犯罪');
INSERT INTO `mooc_cat_dict_t` VALUES ('11', '冒险');
INSERT INTO `mooc_cat_dict_t` VALUES ('12', '战争');
INSERT INTO `mooc_cat_dict_t` VALUES ('13', '奇幻');
INSERT INTO `mooc_cat_dict_t` VALUES ('14', '运动');
INSERT INTO `mooc_cat_dict_t` VALUES ('15', '家庭');
INSERT INTO `mooc_cat_dict_t` VALUES ('16', '古装');
INSERT INTO `mooc_cat_dict_t` VALUES ('17', '武侠');
INSERT INTO `mooc_cat_dict_t` VALUES ('18', '西部');
INSERT INTO `mooc_cat_dict_t` VALUES ('19', '历史');
INSERT INTO `mooc_cat_dict_t` VALUES ('20', '传记');
INSERT INTO `mooc_cat_dict_t` VALUES ('21', '歌舞');
INSERT INTO `mooc_cat_dict_t` VALUES ('22', '短片');
INSERT INTO `mooc_cat_dict_t` VALUES ('23', '纪录片');
INSERT INTO `mooc_cat_dict_t` VALUES ('24', '黑色电影');
INSERT INTO `mooc_cat_dict_t` VALUES ('99', '全部');

-- ----------------------------
-- Table structure for `mooc_cinema_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_cinema_t`;
CREATE TABLE `mooc_cinema_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `cinema_name` varchar(50) DEFAULT NULL COMMENT '影院名称',
  `cinema_phone` varchar(50) DEFAULT NULL COMMENT '影院电话',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌编号',
  `area_id` int(11) DEFAULT NULL COMMENT '地域编号',
  `hall_ids` varchar(200) DEFAULT NULL COMMENT '包含的影厅类型,以#作为分割',
  `img_address` varchar(500) DEFAULT NULL COMMENT '影院图片地址',
  `cinema_address` varchar(200) DEFAULT NULL COMMENT '影院地址',
  `minimum_price` int(11) DEFAULT '0' COMMENT '最低票价',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影院信息表';

-- ----------------------------
-- Records of mooc_cinema_t
-- ----------------------------
INSERT INTO `mooc_cinema_t` VALUES ('1', '大地影院(顺义店)', '18500003333', '1', '1', '#1#3#5#6#', '/cinemas/30445282__5675168.jpg', '北京市顺义区华联金街购物中心', '60');
INSERT INTO `mooc_cinema_t` VALUES ('2', '大地影院(中关村店)', '010-58391939', '1', '2', '#1#2#3#4#', '/cinemas/30445282__5675168.jpg', '北京市中关村海龙大厦', '60');
INSERT INTO `mooc_cinema_t` VALUES ('3', '万达影院(大屯店)', '010-58391939', '2', '3', '#5#6#7#8#', '/cinemas/44374823__5777386.jpg', '北京市朝阳区大屯路50号金街商场', '60');
INSERT INTO `mooc_cinema_t` VALUES ('4', '万达影院(奥体中心店)', '010-58391231', '2', '4', '#1#3#5#6#', '/cinemas/44374823__5777386.jpg', '北京市朝阳区奥林匹克公园新奥购物中心', '60');
INSERT INTO `mooc_cinema_t` VALUES ('5', '万达影院(中南海店)', '010-58398521', '2', '5', '#1#5#7#8#', '/cinemas/44374823__5777386.jpg', '北京市东城区中南海52号', '60');
INSERT INTO `mooc_cinema_t` VALUES ('6', '万达影院(国贸店)', '010-96385274', '2', '6', '#1#2#3#7#', '/cinemas/5_0805163047.jpg', '北京市朝阳区国贸CBD核心商场5012', '60');
INSERT INTO `mooc_cinema_t` VALUES ('7', '慕课影院(大屯店)', '010-98765432', '3', '7', '#1#5#8#9#', '/cinemas/5_0805163047.jpg', '北京市朝阳区大屯路50号金街商场', '60');

-- ----------------------------
-- Table structure for `mooc_field_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_field_t`;
CREATE TABLE `mooc_field_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `begin_time` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `hall_id` int(11) DEFAULT NULL COMMENT '放映厅类型编号',
  `hall_name` varchar(200) DEFAULT NULL COMMENT '放映厅名称',
  `price` int(11) DEFAULT NULL COMMENT '票价',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='放映场次表';

-- ----------------------------
-- Records of mooc_field_t
-- ----------------------------
INSERT INTO `mooc_field_t` VALUES ('1', '1', '2', '09:50', '11:20', '1', '一号厅', '60');
INSERT INTO `mooc_field_t` VALUES ('2', '1', '3', '11:50', '13:20', '2', 'IMAX厅', '60');
INSERT INTO `mooc_field_t` VALUES ('3', '1', '3', '13:50', '15:20', '3', '飞翔体验厅', '60');
INSERT INTO `mooc_field_t` VALUES ('4', '3', '2', '11:50', '13:20', '3', '7号超大厅', '60');
INSERT INTO `mooc_field_t` VALUES ('5', '3', '2', '11:50', '13:20', '4', '飞翔体验厅', '60');
INSERT INTO `mooc_field_t` VALUES ('6', '5', '2', '11:50', '13:20', '5', '3号VIP厅', '60');
INSERT INTO `mooc_field_t` VALUES ('7', '6', '2', '11:50', '13:20', '6', '5号4D厅', '60');

-- ----------------------------
-- Table structure for `mooc_film_actor_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_film_actor_t`;
CREATE TABLE `mooc_film_actor_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_id` int(11) DEFAULT NULL COMMENT '影片编号,对应mooc_film_t',
  `actor_id` int(11) DEFAULT NULL COMMENT '演员编号,对应mooc_actor_t',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影片与演员映射表';

-- ----------------------------
-- Records of mooc_film_actor_t
-- ----------------------------
INSERT INTO `mooc_film_actor_t` VALUES ('1', '2', '1', '演员1');
INSERT INTO `mooc_film_actor_t` VALUES ('2', '2', '2', '演员2');
INSERT INTO `mooc_film_actor_t` VALUES ('3', '2', '3', '演员3');
INSERT INTO `mooc_film_actor_t` VALUES ('4', '2', '4', '演员4');

-- ----------------------------
-- Table structure for `mooc_film_info_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_film_info_t`;
CREATE TABLE `mooc_film_info_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_id` varchar(100) DEFAULT NULL COMMENT '影片编号',
  `film_en_name` varchar(50) DEFAULT NULL COMMENT '影片英文名称',
  `film_score` varchar(20) DEFAULT NULL COMMENT '影片评分',
  `film_score_num` int(11) DEFAULT NULL COMMENT '评分人数,以万为单位',
  `film_length` int(11) DEFAULT NULL COMMENT '播放时长，以分钟为单位，不足取整',
  `biography` text COMMENT '影片介绍',
  `director_id` int(11) DEFAULT NULL COMMENT '导演编号',
  `film_imgs` text COMMENT '影片图片集地址,多个图片以逗号分隔',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影片主表';

-- ----------------------------
-- Records of mooc_film_info_t
-- ----------------------------
INSERT INTO `mooc_film_info_t` VALUES ('2', '2', 'Dying To Survive', '9.7', '225', '117', '一位不速之客的意外到访，打破了神油店老板程勇（徐峥 饰）的平凡人生，他从一个交不起房租的男性保健品商贩，一跃成为印度仿制药“格列宁”的独家代理商。收获巨额利润的他，生活剧烈变化，被病患们冠以“药神”的称号。但是，一场关于救赎的拉锯战也在波涛暗涌中慢慢展开......', '1', 'films/3065271341357040f5f5dd988550951e586199.jpg,films/6b2b3fd6260ac37e5ad44d00ea474ea3651419.jpg,films/4633dd44c51ff15fc7e939679d7cdb67561602.jpg,films/df2d30b1a3bd58fb1d38b978662ae844648169.jpg,films/c845f6b04aa49059951fd55e6b0eddac454036.jpg');

-- ----------------------------
-- Table structure for `mooc_film_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_film_t`;
CREATE TABLE `mooc_film_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_name` varchar(100) DEFAULT NULL COMMENT '影片名称',
  `film_type` int(11) DEFAULT NULL COMMENT '片源类型: 0-2D,1-3D,2-3DIMAX,4-无',
  `img_address` varchar(200) DEFAULT NULL COMMENT '影片主图地址',
  `film_score` varchar(20) DEFAULT NULL COMMENT '影片评分',
  `film_preSaleNum` int(11) DEFAULT NULL COMMENT '影片预售数量',
  `film_box_office` int(11) DEFAULT NULL COMMENT '影片票房：每日更新，以万为单位',
  `film_source` int(11) DEFAULT NULL COMMENT '影片片源，参照片源字典表',
  `film_cats` varchar(50) DEFAULT NULL COMMENT '影片分类，参照分类表,多个分类以#分割',
  `film_area` int(11) DEFAULT NULL COMMENT '影片区域，参照区域表',
  `film_date` int(11) DEFAULT NULL COMMENT '影片上映年代，参照年代表',
  `film_time` timestamp NULL DEFAULT NULL COMMENT '影片上映时间',
  `film_status` int(11) DEFAULT NULL COMMENT '影片状态,1-正在热映，2-即将上映，3-经典影片',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影片主表';

-- ----------------------------
-- Records of mooc_film_t
-- ----------------------------
INSERT INTO `mooc_film_t` VALUES ('2', '我不是药神', '0', 'films/238e2dc36beae55a71cabfc14069fe78236351.jpg', '9.7', '231432491', '309600', '1', '#2#4#22#', '1', '13', '2018-07-05 00:00:00', '1');

-- ----------------------------
-- Table structure for `mooc_hall_dict_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_hall_dict_t`;
CREATE TABLE `mooc_hall_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  `seat_address` varchar(200) DEFAULT NULL COMMENT '座位文件存放地址',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地域信息表';

-- ----------------------------
-- Records of mooc_hall_dict_t
-- ----------------------------
INSERT INTO `mooc_hall_dict_t` VALUES ('1', 'IMAX厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('2', 'CGS中国巨幕厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('3', '杜比全景声厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('4', 'Dolby Cinema厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('5', 'RealD厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('6', 'RealD 6FL厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('7', 'LUXE巨幕厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('8', '4DX厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('9', 'DTS:X 临境音厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('10', '儿童厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('11', '4K厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('12', '4D厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('13', '巨幕厅', 'seats/123214.json');
INSERT INTO `mooc_hall_dict_t` VALUES ('99', '全部', null);

-- ----------------------------
-- Table structure for `mooc_hall_film_info_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_hall_film_info_t`;
CREATE TABLE `mooc_hall_film_info_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `film_name` varchar(50) DEFAULT NULL COMMENT '电影名称',
  `film_length` varchar(50) DEFAULT NULL COMMENT '电影时长',
  `film_cats` varchar(200) DEFAULT NULL COMMENT '电影类型',
  `film_language` varchar(50) DEFAULT NULL COMMENT '电影语言',
  `actors` varchar(200) DEFAULT NULL COMMENT '演员列表',
  `img_address` varchar(500) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='影厅电影信息表';

-- ----------------------------
-- Records of mooc_hall_film_info_t
-- ----------------------------
INSERT INTO `mooc_hall_film_info_t` VALUES ('1', '2', '我不是药神', '117', '喜剧,剧情', '国语2D', '程勇,曹斌,吕受益,刘思慧', 'films/238e2dc36beae55a71cabfc14069fe78236351.jpg');
INSERT INTO `mooc_hall_film_info_t` VALUES ('2', '3', '爱情公寓', '123', '喜剧,动作,冒险', '国语2D', '曾小贤,胡一菲,唐悠悠,张伟', 'films/238e2dc36beae55a71cabfc14069fe78236351.jpg');

-- ----------------------------
-- Table structure for `mooc_order_2017_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_order_2017_t`;
CREATE TABLE `mooc_order_2017_t` (
  `UUID` varchar(100) DEFAULT NULL COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `field_id` int(11) DEFAULT NULL COMMENT '放映场次编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `seats_ids` varchar(50) DEFAULT NULL COMMENT '已售座位编号',
  `seats_name` varchar(200) DEFAULT NULL COMMENT '已售座位名称',
  `film_price` double DEFAULT NULL COMMENT '影片售价',
  `order_price` double DEFAULT NULL COMMENT '订单总金额',
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `order_user` int(11) DEFAULT NULL COMMENT '下单人',
  `order_status` int(11) DEFAULT '0' COMMENT '0-待支付,1-已支付,2-已关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息表';

-- ----------------------------
-- Records of mooc_order_2017_t
-- ----------------------------
INSERT INTO `mooc_order_2017_t` VALUES ('329123812gnfn31', '1', '1', '2', '1,2,3,4', '第一排1座,第一排2座,第一排3座,第一排4座', '63.2', '126.4', '2017-05-03 12:13:42', '1', '0');

-- ----------------------------
-- Table structure for `mooc_order_2018_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_order_2018_t`;
CREATE TABLE `mooc_order_2018_t` (
  `UUID` varchar(100) DEFAULT NULL COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `field_id` int(11) DEFAULT NULL COMMENT '放映场次编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `seats_ids` varchar(50) DEFAULT NULL COMMENT '已售座位编号',
  `seats_name` varchar(200) DEFAULT NULL COMMENT '已售座位名称',
  `film_price` double DEFAULT NULL COMMENT '影片售价',
  `order_price` double DEFAULT NULL COMMENT '订单总金额',
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `order_user` int(11) DEFAULT NULL COMMENT '下单人',
  `order_status` int(11) DEFAULT '0' COMMENT '0-待支付,1-已支付,2-已关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息表';

-- ----------------------------
-- Records of mooc_order_2018_t
-- ----------------------------
INSERT INTO `mooc_order_2018_t` VALUES ('124583135asdf81', '1', '1', '2', '1,2,3,4', '第一排1座,第一排2座,第一排3座,第一排4座', '63.2', '126.4', '2018-02-12 11:53:42', '1', '0');

-- ----------------------------
-- Table structure for `mooc_order_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_order_t`;
CREATE TABLE `mooc_order_t` (
  `UUID` varchar(100) DEFAULT NULL COMMENT '主键编号',
  `cinema_id` int(11) DEFAULT NULL COMMENT '影院编号',
  `field_id` int(11) DEFAULT NULL COMMENT '放映场次编号',
  `film_id` int(11) DEFAULT NULL COMMENT '电影编号',
  `seats_ids` varchar(50) DEFAULT NULL COMMENT '已售座位编号',
  `seats_name` varchar(200) DEFAULT NULL COMMENT '已售座位名称',
  `film_price` double DEFAULT NULL COMMENT '影片售价',
  `order_price` double DEFAULT NULL COMMENT '订单总金额',
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `order_user` int(11) DEFAULT NULL COMMENT '下单人',
  `order_status` int(11) DEFAULT '0' COMMENT '0-待支付,1-已支付,2-已关闭'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单信息表';

-- ----------------------------
-- Records of mooc_order_t
-- ----------------------------
INSERT INTO `mooc_order_t` VALUES ('415sdf58ew12ds5fe1', '1', '1', '2', '1,2,3,4', '第一排1座,第一排2座,第一排3座,第一排4座', '63.2', '126.4', '2019-01-17 13:14:03', '1', '0');

-- ----------------------------
-- Table structure for `mooc_source_dict_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_source_dict_t`;
CREATE TABLE `mooc_source_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区域信息表';

-- ----------------------------
-- Records of mooc_source_dict_t
-- ----------------------------
INSERT INTO `mooc_source_dict_t` VALUES ('1', '大陆');
INSERT INTO `mooc_source_dict_t` VALUES ('2', '美国');
INSERT INTO `mooc_source_dict_t` VALUES ('3', '韩国');
INSERT INTO `mooc_source_dict_t` VALUES ('4', '日本');
INSERT INTO `mooc_source_dict_t` VALUES ('5', '中国香港');
INSERT INTO `mooc_source_dict_t` VALUES ('6', '中国台湾');
INSERT INTO `mooc_source_dict_t` VALUES ('7', '印度');
INSERT INTO `mooc_source_dict_t` VALUES ('8', '法国');
INSERT INTO `mooc_source_dict_t` VALUES ('9', '英国');
INSERT INTO `mooc_source_dict_t` VALUES ('10', '俄罗斯');
INSERT INTO `mooc_source_dict_t` VALUES ('11', '意大利');
INSERT INTO `mooc_source_dict_t` VALUES ('12', '西班牙');
INSERT INTO `mooc_source_dict_t` VALUES ('13', '德国');
INSERT INTO `mooc_source_dict_t` VALUES ('14', '波兰');
INSERT INTO `mooc_source_dict_t` VALUES ('15', '澳大利亚');
INSERT INTO `mooc_source_dict_t` VALUES ('16', '伊朗');
INSERT INTO `mooc_source_dict_t` VALUES ('99', '全部');

-- ----------------------------
-- Table structure for `mooc_year_dict_t`
-- ----------------------------
DROP TABLE IF EXISTS `mooc_year_dict_t`;
CREATE TABLE `mooc_year_dict_t` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `show_name` varchar(100) DEFAULT NULL COMMENT '显示名称',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='年代信息表';

-- ----------------------------
-- Records of mooc_year_dict_t
-- ----------------------------
INSERT INTO `mooc_year_dict_t` VALUES ('1', '更早');
INSERT INTO `mooc_year_dict_t` VALUES ('2', '70年代');
INSERT INTO `mooc_year_dict_t` VALUES ('3', '80年代');
INSERT INTO `mooc_year_dict_t` VALUES ('4', '90年代');
INSERT INTO `mooc_year_dict_t` VALUES ('5', '2000-2010');
INSERT INTO `mooc_year_dict_t` VALUES ('6', '2011');
INSERT INTO `mooc_year_dict_t` VALUES ('7', '2012');
INSERT INTO `mooc_year_dict_t` VALUES ('8', '2013');
INSERT INTO `mooc_year_dict_t` VALUES ('9', '2014');
INSERT INTO `mooc_year_dict_t` VALUES ('10', '2015');
INSERT INTO `mooc_year_dict_t` VALUES ('11', '2016');
INSERT INTO `mooc_year_dict_t` VALUES ('12', '2017');
INSERT INTO `mooc_year_dict_t` VALUES ('13', '2018');
INSERT INTO `mooc_year_dict_t` VALUES ('14', '2018以后');
INSERT INTO `mooc_year_dict_t` VALUES ('99', '全部');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UUID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户账号',
  `user_pwd` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `nick_name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `user_sex` int(11) DEFAULT NULL COMMENT '用户性别 0-男，1-女',
  `birthday` varchar(50) DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  `user_phone` varchar(50) DEFAULT NULL COMMENT '用户手机号',
  `address` varchar(50) DEFAULT NULL COMMENT '用户住址',
  `head_url` varchar(50) DEFAULT NULL COMMENT '头像URL',
  `biography` varchar(200) DEFAULT NULL COMMENT '个人介绍',
  `life_state` int(11) DEFAULT NULL COMMENT '生活状态 0-单身，1-热恋中，2-已婚，3-为人父母',
  `begin_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'admin', '0192023a7bbd73250516f069df18b500', '隔壁泰山', '0', '2018-07-31', 'admin@mooc.com', '13888888888', '北京市海淀区朝阳北路中南海国宾馆', 'films/img/head-img.jpg', '没有合适的伞，我宁可淋着雨', '0', '2019-01-10 08:54:35', '2019-01-10 08:54:35');
INSERT INTO `user` VALUES ('3', 'jiangzh', '5e2de6bd1c9b50f6e27d4e55da43b917', '阿里郎', '0', '2018-08-20', 'jiangzh@mooc.com', '13866666666', '北京市朝阳区大望路万达广场', 'films/img/head-img.jpg', '我喜欢隔壁泰山', '1', '2019-01-10 08:54:35', '2019-01-10 08:54:35');
INSERT INTO `user` VALUES ('4', 'justin', 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, null, null, null, null, '2019-01-10 13:26:38', '2019-01-10 13:26:38');
