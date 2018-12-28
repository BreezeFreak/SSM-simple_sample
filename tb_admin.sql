/*
Navicat MySQL Data Transfer

Source Server         : root@loacalhost
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2018-12-27 22:21:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` varchar(16) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('42', 'joe', '123', '1', '122239491', '123@qq.com');
INSERT INTO `tb_admin` VALUES ('43', 'blue', '1233', '男', '1233123', '123@16.com');
INSERT INTO `tb_admin` VALUES ('45', 'jack', '123', '0', '12312', '123@16.co');
