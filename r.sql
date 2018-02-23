/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.17-log : Database - powerpatrol
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`powerpatrol` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `powerpatrol`;

/*Table structure for table `Circuit` */

DROP TABLE IF EXISTS `circuit`;

CREATE TABLE `circuit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cNumber` varchar(20) NOT NULL COMMENT '线路编号',
  `cName` varchar(20) NOT NULL COMMENT '线路名称',
  `cLength` int(10) NOT NULL COMMENT '线路长度',
  `loopLength` int(10) NOT NULL COMMENT '回路长度',
  `cardinalNumber` int(10) NOT NULL COMMENT '杆塔基数',
  `riseTid` int(10) NOT NULL COMMENT '起始杆，杆塔表id',
  `endTid` int(10) NOT NULL COMMENT '终止杆，杆塔表id',
  `commissioningData` date NOT NULL COMMENT '投运日期',
  `grade` int(10) NOT NULL COMMENT '电压等级',
  `cState` int(2) NOT NULL COMMENT '状态1为禁用2为启用',
  `cRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Circuit` */

/*Table structure for table `deploydata` */

DROP TABLE IF EXISTS `deploydata`;

CREATE TABLE `deploydata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ddNumber` varchar(20) NOT NULL COMMENT '配置编号',
  `ddName` varchar(20) NOT NULL COMMENT '配置名称',
  `dtId` int(10) NOT NULL COMMENT '配置类型id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deploydata` */

/*Table structure for table `deploytype` */

DROP TABLE IF EXISTS `deploytype`;

CREATE TABLE `deploytype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dtNumber` varchar(20) NOT NULL COMMENT '配置类型编号',
  `dtName` varchar(20) NOT NULL COMMENT '配置类型名称',
  `describe` varchar(50) NOT NULL COMMENT '描述',
  `dtState` int(2) NOT NULL COMMENT '状态1禁用2启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `deploytype` */

/*Table structure for table `flaw` */

DROP TABLE IF EXISTS `flaw`;

CREATE TABLE `flaw` (
  `id` int(10) NOT NULL,
  `cId` int(10) NOT NULL COMMENT '外键线路表id',
  `tId` int(10) NOT NULL COMMENT '外键杆塔表id',
  `ftId` int(10) NOT NULL COMMENT '外键缺陷类型id',
  `grade` int(10) NOT NULL COMMENT '缺缺陷等级1一般2严重3紧急',
  `describe` varchar(50) DEFAULT NULL COMMENT '缺陷描述',
  `completeness` int(10) NOT NULL COMMENT '完成度百分比',
  `discoverTime` date NOT NULL COMMENT '发布时间',
  `discoverUid` int(10) NOT NULL COMMENT '发现人外键用户表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flaw` */

/*Table structure for table `flawmission` */

DROP TABLE IF EXISTS `flawmission`;

CREATE TABLE `flawmission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fmNumber` varchar(20) NOT NULL COMMENT '任务编号',
  `fmName` varchar(20) NOT NULL COMMENT '任务名称',
  `fId` int(10) NOT NULL COMMENT '缺陷表id',
  `principalUid` int(10) NOT NULL COMMENT '负责人员工表id',
  `defectUid` int(10) NOT NULL COMMENT '消缺人',
  `receipts` int(2) NOT NULL COMMENT '工作单据1 任务单、2第一种单据、3第二种单据',
  `describe` varchar(50) NOT NULL COMMENT '任务完成描述',
  `fmRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flawmission` */

/*Table structure for table `flawtype` */

DROP TABLE IF EXISTS `flawtype`;

CREATE TABLE `flawtype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ftName` varchar(20) DEFAULT NULL COMMENT '缺陷类型名称',
  `ftState` int(2) DEFAULT NULL COMMENT '状态1禁用2启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `flawtype` */

/*Table structure for table `pollingmission` */

DROP TABLE IF EXISTS `pollingmission`;

CREATE TABLE `pollingmission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pmName` varchar(20) NOT NULL COMMENT '巡查任务名称',
  `pmNumber` varchar(20) NOT NULL COMMENT '巡查任务编号',
  `cId` int(10) NOT NULL COMMENT '外键线路表id',
  `releaseUid` int(10) NOT NULL COMMENT '发布人外键用户表id',
  `pollingUid` int(10) NOT NULL COMMENT '巡查员外键用户表id',
  `pmRemark` varchar(50) NOT NULL COMMENT '备注',
  `releaseTime` date NOT NULL COMMENT '发布时间',
  `accomplishTime` date DEFAULT NULL COMMENT '完成时间',
  `pmState` int(2) NOT NULL COMMENT '状态1待分配2已分配3执行中4已完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pollingmission` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rNumber` varchar(20) NOT NULL COMMENT '角色编号',
  `rName` varchar(20) NOT NULL COMMENT '角色名称',
  `rState` int(2) NOT NULL COMMENT '状态1为禁用2启用',
  `establishDate` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

/*Table structure for table `tower` */

DROP TABLE IF EXISTS `tower`;

CREATE TABLE `tower` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tNumber` varchar(20) NOT NULL COMMENT '杆塔编号',
  `tState` int(2) NOT NULL COMMENT '杆塔状态1禁用2启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tower` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL COMMENT '账号',
  `uName` varchar(20) NOT NULL COMMENT '用户名称',
  `password` varchar(20) NOT NULL COMMENT '用户密码',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `age` date DEFAULT NULL COMMENT '出生日期',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `entryTime` date DEFAULT NULL COMMENT '入职时间',
  `termDate` date DEFAULT NULL COMMENT '离职时间',
  `rid` int(10) NOT NULL COMMENT '外键角色表id',
  `ustate` int(2) NOT NULL COMMENT '状态1为禁用2为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
