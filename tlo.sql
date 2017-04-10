/*
Navicat MySQL Data Transfer

Source Server         : Ruby
Source Server Version : 50717
Source Host           : 192.168.221.130:3306
Source Database       : tlo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-09 21:52:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
INSERT INTO `ar_internal_metadata` VALUES ('environment', 'development', '2017-04-09 09:08:29', '2017-04-09 09:08:29');

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('20170409092438');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'love', '$2a$10$tg.mlJRUCkPBbVSSLGkhROvDRY3uoMd5ouhSFQs.uvMwjEFpcr5li', '2017-04-09 09:47:47', '2017-04-09 09:47:47');
INSERT INTO `users` VALUES ('3', '33', '$2a$10$8s7twAdPZXhFZohmhcobWO0JKIpieiCgM4.yeobG2eYPQZAvCDo0.', '2017-04-09 12:25:20', '2017-04-09 12:25:20');
INSERT INTO `users` VALUES ('4', '33', '$2a$10$/.hWIFw7x4/w7RM4dETPu.G3CXoiVpEL7ScBukSfaTVNSmtLPDia6', '2017-04-09 12:26:43', '2017-04-09 12:26:43');
INSERT INTO `users` VALUES ('5', 'root', '$2a$10$vTy0ZgiO1fbMo/KXmvBfIe6aiJwfca/29pNFr6Qy.TSyEFv6v90tC', '2017-04-09 13:02:11', '2017-04-09 13:02:11');
