/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : jdbcdemo

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-11-27 13:52:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `d_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `d_userinfo`;
CREATE TABLE `d_userinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of d_userinfo
-- ----------------------------
INSERT INTO `d_userinfo` VALUES ('1', 'jackma', '123456', 'alibaba', '994997968@qq.com', '18649755402', '男', '马云爸爸');
INSERT INTO `d_userinfo` VALUES ('2', 'bruce', 'qq123456', null, '994@qq.com', '18649755402', null, null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) DEFAULT NULL,
  `dir_id` bigint(11) DEFAULT NULL,
  `salePrice` double(10,2) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `cutoff` double(2,2) DEFAULT NULL,
  `costPrice` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '罗技M90', '3', '90.00', '罗技', '罗技', '0.50', '35.00');
INSERT INTO `product` VALUES ('2', '罗技M100', '3', '49.00', '罗技', '罗技', '0.90', '33.00');
INSERT INTO `product` VALUES ('3', '罗技M115', '3', '99.00', '罗技', '罗技', '0.60', '38.00');
INSERT INTO `product` VALUES ('4', '罗技M125', '3', '80.00', '罗技', '罗技', '0.90', '39.00');
INSERT INTO `product` VALUES ('5', '罗技木星轨迹球', '3', '182.00', '罗技', '罗技', '0.80', '80.00');
INSERT INTO `product` VALUES ('6', '罗技火星轨迹球', '3', '349.00', '罗技', '罗技', '0.87', '290.00');
INSERT INTO `product` VALUES ('7', '罗技G9X', '3', '680.00', '罗技', '罗技', '0.70', '470.00');
INSERT INTO `product` VALUES ('8', '罗技M215', '2', '89.00', '罗技', '罗技', '0.79', '30.00');
INSERT INTO `product` VALUES ('9', '罗技M305', '2', '119.00', '罗技', '罗技', '0.82', '48.00');
INSERT INTO `product` VALUES ('10', '罗技M310', '2', '135.00', '罗技', '罗技', '0.92', '69.80');
INSERT INTO `product` VALUES ('11', '罗技M505', '2', '148.00', '罗技', '罗技', '0.92', '72.00');
INSERT INTO `product` VALUES ('12', '罗技M555', '2', '275.00', '罗技', '罗技', '0.88', '140.00');
INSERT INTO `product` VALUES ('13', '罗技M905', '2', '458.00', '罗技', '罗技', '0.88', '270.00');
INSERT INTO `product` VALUES ('14', '罗技MX1100', '2', '550.00', '罗技', '罗技', '0.76', '300.00');
INSERT INTO `product` VALUES ('15', '罗技M950', '2', '678.00', '罗技', '罗技', '0.78', '320.00');
INSERT INTO `product` VALUES ('16', '罗技MX Air', '2', '1299.00', '罗技', '罗技', '0.72', '400.00');
INSERT INTO `product` VALUES ('17', '罗技G1', '4', '155.00', '罗技', '罗技', '0.80', '49.00');
INSERT INTO `product` VALUES ('18', '罗技G3', '4', '229.00', '罗技', '罗技', '0.77', '96.00');
INSERT INTO `product` VALUES ('19', '罗技G500', '4', '399.00', '罗技', '罗技', '0.88', '130.00');
INSERT INTO `product` VALUES ('20', '罗技G700', '4', '699.00', '罗技', '罗技', '0.79', '278.00');

-- ----------------------------
-- Table structure for `productdir`
-- ----------------------------
DROP TABLE IF EXISTS `productdir`;
CREATE TABLE `productdir` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `dirName` varchar(30) DEFAULT NULL,
  `parent_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productdir
-- ----------------------------
INSERT INTO `productdir` VALUES ('1', '鼠标', '0');
INSERT INTO `productdir` VALUES ('2', '无线鼠标', '1');
INSERT INTO `productdir` VALUES ('3', '有线鼠标', '1');
INSERT INTO `productdir` VALUES ('4', '游戏鼠标', '1');

-- ----------------------------
-- Table structure for `productstock`
-- ----------------------------
DROP TABLE IF EXISTS `productstock`;
CREATE TABLE `productstock` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(11) DEFAULT NULL,
  `storeNum` int(10) DEFAULT NULL,
  `lastIncomeDate` datetime DEFAULT NULL,
  `lastOutcomeDate` datetime DEFAULT NULL,
  `warningNum` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productstock
-- ----------------------------
INSERT INTO `productstock` VALUES ('1', '1', '182', '2015-03-12 20:33:00', '2015-03-12 20:33:04', '20');
INSERT INTO `productstock` VALUES ('2', '2', '27', '2015-03-02 20:33:28', '2015-03-09 20:33:40', '20');
INSERT INTO `productstock` VALUES ('3', '3', '89', '2015-02-28 20:34:13', '2015-03-12 20:34:19', '20');
INSERT INTO `productstock` VALUES ('4', '5', '19', '2015-03-01 20:34:43', '2015-03-12 20:34:48', '20');
INSERT INTO `productstock` VALUES ('5', '6', '3', '2015-02-01 20:35:12', '2015-03-02 20:35:16', '5');
INSERT INTO `productstock` VALUES ('6', '7', '2', '2015-02-02 20:35:59', '2015-02-27 20:36:05', '3');
INSERT INTO `productstock` VALUES ('7', '8', '120', '2015-03-12 20:36:31', '2015-03-12 20:36:33', '20');
INSERT INTO `productstock` VALUES ('8', '9', '58', '2015-03-02 20:36:50', '2015-03-12 20:36:53', '20');
INSERT INTO `productstock` VALUES ('9', '11', '28', '2015-03-02 20:37:12', '2015-03-12 20:37:15', '20');
INSERT INTO `productstock` VALUES ('10', '12', '8', '2015-03-02 20:37:35', '2015-03-09 20:37:38', '5');
INSERT INTO `productstock` VALUES ('11', '13', '3', '2015-03-02 20:37:58', '2015-03-12 20:38:01', '5');
INSERT INTO `productstock` VALUES ('12', '14', '6', '2015-03-02 20:38:20', '2015-03-07 20:38:23', '5');
INSERT INTO `productstock` VALUES ('13', '15', '2', '2015-02-02 20:38:38', '2015-02-24 20:38:44', '5');
INSERT INTO `productstock` VALUES ('14', '16', '3', '2015-02-02 20:39:05', '2015-02-06 20:39:09', '3');
INSERT INTO `productstock` VALUES ('15', '17', '49', '2015-03-02 20:39:36', '2015-03-12 20:39:40', '20');
INSERT INTO `productstock` VALUES ('16', '18', '14', '2015-03-02 20:39:57', '2015-03-09 20:40:01', '10');
INSERT INTO `productstock` VALUES ('17', '20', '7', '2015-03-02 20:40:22', '2015-03-03 20:40:25', '5');

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `ADMINID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ADMINNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADMINID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `t_cartitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_cartitem`;
CREATE TABLE `t_cartitem` (
  `cartItemId` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cartitem
-- ----------------------------
INSERT INTO `t_cartitem` VALUES ('1', '3', 'jackma');
INSERT INTO `t_cartitem` VALUES ('3', '2', 'jackma');
INSERT INTO `t_cartitem` VALUES ('5', '1', 'jackma');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `products` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('小米', '张三');
INSERT INTO `t_order` VALUES ('大米', '王五');
INSERT INTO `t_order` VALUES ('红米', '李四');

-- ----------------------------
-- Table structure for `t_orderitems`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitems`;
CREATE TABLE `t_orderitems` (
  `orderId` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderDate` varchar(255) DEFAULT NULL,
  `orderContent` varchar(255) DEFAULT NULL,
  `orderPrice` double DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `orderStatus` varchar(255) DEFAULT NULL,
  `saleStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitems
-- ----------------------------
INSERT INTO `t_orderitems` VALUES ('1', '2012/11/11', '小米NOTE3 *1', '1999', 'mike', '18649755402', '厦门中软', '未接单', '待发货');
INSERT INTO `t_orderitems` VALUES ('2', '2012/11/12', 'iPhone X', '8988', 'Bruce', '13808506721', '厦门软件园', '未接单', '代发货');

-- ----------------------------
-- Table structure for `t_player`
-- ----------------------------
DROP TABLE IF EXISTS `t_player`;
CREATE TABLE `t_player` (
  `playerId` bigint(20) NOT NULL AUTO_INCREMENT,
  `playerName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `integral` bigint(20) DEFAULT NULL,
  `wins` bigint(20) DEFAULT NULL,
  `losts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`playerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_player
-- ----------------------------

-- ----------------------------
-- Table structure for `t_playeroption`
-- ----------------------------
DROP TABLE IF EXISTS `t_playeroption`;
CREATE TABLE `t_playeroption` (
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `result` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_playeroption
-- ----------------------------

-- ----------------------------
-- Table structure for `t_product_detail`
-- ----------------------------
DROP TABLE IF EXISTS `t_product_detail`;
CREATE TABLE `t_product_detail` (
  `productId` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` double(255,0) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `storageCapacity` int(11) DEFAULT NULL,
  `inventoryNumber` int(11) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_detail
-- ----------------------------
INSERT INTO `t_product_detail` VALUES ('1', '小米', '小米NOTE3', 'XXX', '1999', '黑色', '64', '99', '公开版', 'miNOTE3');
INSERT INTO `t_product_detail` VALUES ('2', '小米', '小米NOTE3', 'XXX', '1999', '灰色', '64', '98', '公开版', 'miNOTE3');
INSERT INTO `t_product_detail` VALUES ('3', '小米', '小米NOTE3', 'XXX', '1999', '黑色', '64', '66', '公开版', 'miNOTE3');
INSERT INTO `t_product_detail` VALUES ('4', '小米', '小米NOTE3', 'XXX', '2899', '灰色', '128', '20', '联通版', 'miNOTE3');
INSERT INTO `t_product_detail` VALUES ('5', '小米', '小米NOTE3', 'XXX', '2012', '红色', '64', '55', '联通版', 'miNOTE3');
INSERT INTO `t_product_detail` VALUES ('6', '小米', '小米NOTE3', 'XXX', '2012', '红色', '64', '55', '联通版', 'miNOTE3');

-- ----------------------------
-- Table structure for `t_product_img`
-- ----------------------------
DROP TABLE IF EXISTS `t_product_img`;
CREATE TABLE `t_product_img` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phonetype` varchar(255) DEFAULT NULL,
  `imglocation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_img
-- ----------------------------
INSERT INTO `t_product_img` VALUES ('1', 'miNOTE3', 'minote31.png');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'username', 'password');
INSERT INTO `t_user` VALUES ('2', 'username2', 'password2');
INSERT INTO `t_user` VALUES ('3', 'username2', 'password2');
INSERT INTO `t_user` VALUES ('4', 'username2', 'password2');
INSERT INTO `t_user` VALUES ('5', 'username2', 'password2');
INSERT INTO `t_user` VALUES ('6', 'username2', 'password2');
INSERT INTO `t_user` VALUES ('7', '222', '222');
