/*
Navicat MySQL Data Transfer

Source Server         : HarveyJI
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : obss

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2022-11-04 14:27:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrators`
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `account` varchar(20) NOT NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('Harvey', '123456');

-- ----------------------------
-- Table structure for `books`
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `BookNumber` char(13) NOT NULL default 'Books',
  `BookName` varchar(40) default NULL,
  `Price` float default NULL,
  `Author` varchar(8) default NULL,
  `BookCategory` varchar(30) default NULL,
  `Publisher` varchar(30) default NULL,
  `PublicationTime` date default NULL,
  `BookStock` int(11) default NULL,
  PRIMARY KEY  (`BookNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('9781314592407', '智能编曲', '59.8', '张三', '教育', '人民教育出版社', '2021-10-21', '10');
INSERT INTO `books` VALUES ('9787111646334', '数据库系统原理及应用教程', '59', '苗雪兰', '教育', '机械工业出版社', '2021-09-15', '1000');
INSERT INTO `books` VALUES ('9787115006004', 'Python编程三剑客新版', '253.7', '埃里克马', '教育', '人民邮电出版社', '1963-11-28', '452');
INSERT INTO `books` VALUES ('9787115435590', '普林斯顿微积分读本', '68.3', '阿德里', '教育', '人民邮电出版社', '2016-04-05', '231');
INSERT INTO `books` VALUES ('9787115461476', '深度学习', '159.2', 'IanGood', '教育', '人民邮电出版社', '2006-08-06', '631');
INSERT INTO `books` VALUES ('9787302544555', 'SQL Server从入门到精通', '61.1', '鲁睿元', '教育', '人民教育出版社', '1972-11-16', '103');
INSERT INTO `books` VALUES ('9787506365437', '活着', '31', '余华', '小说', '人民邮电出版社', '2021-07-21', '846');
INSERT INTO `books` VALUES ('9787510031502', '精英化学提高读本', '58', '芮承国', '励志', '清华大学出版社', '1974-10-06', '503');
INSERT INTO `books` VALUES ('9787513347501', '红楼梦', '39.8', '曹雪芹', '文学', '新星出版社', '2014-07-21', '500');
INSERT INTO `books` VALUES ('9787550280496', '史记', '198', '司马迁', '人文', '社会科学', '2011-05-23', '100');
INSERT INTO `books` VALUES ('text', '测试', '666', '测试', '教育', '测试', '1950-01-01', '666');

-- ----------------------------
-- Table structure for `salerecord`
-- ----------------------------
DROP TABLE IF EXISTS `salerecord`;
CREATE TABLE `salerecord` (
  `saleID` char(10) NOT NULL,
  `bookNumber` char(13) NOT NULL default '',
  `saleDate` date NOT NULL default '0000-00-00',
  `salesvolume` int(11) default NULL,
  PRIMARY KEY  (`saleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salerecord
-- ----------------------------
INSERT INTO `salerecord` VALUES ('100000', '9781314592407', '2020-08-12', '120');
INSERT INTO `salerecord` VALUES ('100001', '9787111646334', '2020-04-12', '106');
INSERT INTO `salerecord` VALUES ('100002', '9787115435590', '2016-10-08', '214');
INSERT INTO `salerecord` VALUES ('100003', '9787550280496', '2019-05-11', '84');
INSERT INTO `salerecord` VALUES ('100004', '9787510031502', '2016-12-20', '58');
INSERT INTO `salerecord` VALUES ('100005', '9787115461476', '2009-10-13', '87');
INSERT INTO `salerecord` VALUES ('100006', '9781314592407', '2016-12-22', '107');
INSERT INTO `salerecord` VALUES ('100007', '9787115435590', '2007-03-23', '123');
INSERT INTO `salerecord` VALUES ('100008', '9787510031502', '2009-05-16', '46');
INSERT INTO `salerecord` VALUES ('100009', '9781314592407', '2022-03-13', '186');
INSERT INTO `salerecord` VALUES ('100010', '9787302544555', '2020-07-18', '134');
INSERT INTO `salerecord` VALUES ('100011', '9787513347501', '2022-04-16', '146');
INSERT INTO `salerecord` VALUES ('100012', '9787510031502', '2021-03-23', '177');
INSERT INTO `salerecord` VALUES ('100013', '9787510031502', '2017-03-28', '110');
INSERT INTO `salerecord` VALUES ('100014', '9787115435590', '2010-12-17', '115');
INSERT INTO `salerecord` VALUES ('100015', '9787530221532', '2018-02-17', '160');
INSERT INTO `salerecord` VALUES ('100016', '9787115461476', '2013-07-20', '193');
INSERT INTO `salerecord` VALUES ('100017', '9787111646334', '2009-06-15', '89');
INSERT INTO `salerecord` VALUES ('100018', '9787302544555', '0201-01-25', '211');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `account` varchar(20) NOT NULL,
  `password` varchar(20) default NULL,
  PRIMARY KEY  (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('A886612', 'asd123');
INSERT INTO `user` VALUES ('B886613', 'qwe456');
INSERT INTO `user` VALUES ('C886614', '123456');
INSERT INTO `user` VALUES ('D886615', '123456');
INSERT INTO `user` VALUES ('E886616', '123456');
INSERT INTO `user` VALUES ('JHW666', '123456');
