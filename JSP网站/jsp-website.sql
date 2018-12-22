/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50552
Source Host           : localhost:3306
Source Database       : jsp-website

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2018-12-06 19:00:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for labellist
-- ----------------------------
DROP TABLE IF EXISTS `labellist`;
CREATE TABLE `labellist` (
  `Label_number` varchar(20) NOT NULL,
  `Label_name` varchar(10) NOT NULL,
  PRIMARY KEY (`Label_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of labellist
-- ----------------------------

-- ----------------------------
-- Table structure for useraction
-- ----------------------------
DROP TABLE IF EXISTS `useraction`;
CREATE TABLE `useraction` (
  `Action_number` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Action_name` varchar(20) NOT NULL,
  `Action_executionTime` datetime NOT NULL,
  PRIMARY KEY (`Action_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useraction
-- ----------------------------

-- ----------------------------
-- Table structure for useralbum
-- ----------------------------
DROP TABLE IF EXISTS `useralbum`;
CREATE TABLE `useralbum` (
  `Album_number` varchar(20) NOT NULL,
  `Album_name` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Album_publicationDate` datetime NOT NULL,
  `Encryption_is` char(3) NOT NULL,
  `Private_is` char(3) NOT NULL,
  `Public_is` varchar(10) NOT NULL,
  `Encryption_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Album_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useralbum
-- ----------------------------

-- ----------------------------
-- Table structure for userarticle
-- ----------------------------
DROP TABLE IF EXISTS `userarticle`;
CREATE TABLE `userarticle` (
  `Article_number` varchar(20) NOT NULL,
  `Article_name` varchar(50) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Article_publicationDate` datetime NOT NULL,
  `Label_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Article_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userarticle
-- ----------------------------

-- ----------------------------
-- Table structure for userbasicinfo
-- ----------------------------
DROP TABLE IF EXISTS `userbasicinfo`;
CREATE TABLE `userbasicinfo` (
  `User_id` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Nickname` varchar(15) NOT NULL,
  `User_registrationDate` datetime NOT NULL,
  `Sex` char(3) NOT NULL,
  `Phone_number` varchar(20) NOT NULL,
  `Age` varchar(5) DEFAULT NULL,
  `Mailbox` varchar(50) NOT NULL,
  `Location` varchar(15) DEFAULT NULL,
  `Constellation` varchar(5) DEFAULT NULL,
  `Occupation` varchar(40) DEFAULT NULL,
  `Birthday` datetime DEFAULT NULL,
  `Autograph` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userbasicinfo
-- ----------------------------

-- ----------------------------
-- Table structure for usercomment
-- ----------------------------
DROP TABLE IF EXISTS `usercomment`;
CREATE TABLE `usercomment` (
  `Comment_number` varchar(20) NOT NULL,
  `Article_name` varchar(20) NOT NULL,
  `Comment_publicationDate` datetime NOT NULL,
  `username` varchar(20) NOT NULL,
  `Comment_content` varchar(100) NOT NULL,
  PRIMARY KEY (`Comment_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercomment
-- ----------------------------
