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

/*Table structure for table `circuit` */

DROP TABLE IF EXISTS `circuit`;

CREATE TABLE `circuit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cNumber` varchar(20) NOT NULL COMMENT '线路编号',
  `cName` varchar(20) NOT NULL COMMENT '线路名称',
  `cLength` int(10) NOT NULL COMMENT '线路长度',
  `loopLength` int(10) NOT NULL COMMENT '回路长度',
  `cardinalNumber` int(10) NOT NULL COMMENT '杆塔基数',
  `riseTid` varchar(20) NOT NULL COMMENT '起始杆',
  `endTid` varchar(20) NOT NULL COMMENT '终止杆',
  `commissioningData` date NOT NULL COMMENT '投运日期',
  `grade` int(10) NOT NULL COMMENT '电压等级',
  `cState` int(2) NOT NULL COMMENT '状态1为禁用2为启用',
  `cRemark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `circuit` */

insert  into `circuit`(`id`,`cNumber`,`cName`,`cLength`,`loopLength`,`cardinalNumber`,`riseTid`,`endTid`,`commissioningData`,`grade`,`cState`,`cRemark`) values (1,'XW0001','西渭线',100,100,444,'XW00001','XW00002','2017-06-16',5,1,NULL),(2,'XW0002','西渭线',100,100,243,'XW00003','XW00004','2017-06-16',4,1,NULL),(3,'XW0003','西渭线',100,100,222,'XW00005','XW00006','2017-06-16',3,1,NULL),(4,'XW0004','西渭线',100,100,233,'XW00007','XW00008','2017-06-16',5,0,NULL);

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
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cId` int(10) NOT NULL COMMENT '外键线路表id',
  `tId` int(10) NOT NULL COMMENT '外键杆塔表id',
  `ftId` int(10) NOT NULL COMMENT '外键缺陷类型id',
  `grade` int(10) NOT NULL COMMENT '缺缺陷等级1一般2严重3紧急',
  `describe` varchar(50) DEFAULT NULL COMMENT '缺陷描述',
  `completeness` int(10) NOT NULL COMMENT '完成度百分比',
  `discoverTime` date NOT NULL COMMENT '发布时间',
  `discoverUid` int(10) NOT NULL COMMENT '发现人外键用户表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `flaw` */

insert  into `flaw`(`id`,`cId`,`tId`,`ftId`,`grade`,`describe`,`completeness`,`discoverTime`,`discoverUid`) values (1,1,2,2,3,'拦河线断裂严重',78,'2018-02-09',3),(2,2,3,1,2,'2根已断裂',48,'2018-02-06',3),(3,3,5,6,1,'变形严重',38,'2018-02-07',3),(4,3,6,3,1,'需维修断裂处',78,'2018-02-06',3),(5,4,10,7,1,'其他',80,'2018-02-15',3);

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
  `releaseTime` date NOT NULL COMMENT '发布时间',
  `accomplishTime` date DEFAULT NULL COMMENT '完成时间',
  `fmState` int(2) NOT NULL COMMENT '状态1待分配2已分配3执行中4已完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `flawmission` */

insert  into `flawmission`(`id`,`fmNumber`,`fmName`,`fId`,`principalUid`,`defectUid`,`receipts`,`describe`,`fmRemark`,`releaseTime`,`accomplishTime`,`fmState`) values (1,'RW0245','西渭一线任务巡检',1,2,4,1,'',NULL,'2018-02-02','2018-02-20',4),(2,'RW0246','西渭二线任务巡检',2,2,0,2,'',NULL,'2018-02-06','0000-00-00',1),(3,'RW0246','西渭三线任务巡检',3,2,4,3,'',NULL,'2018-02-20',NULL,2);

/*Table structure for table `flawtype` */

DROP TABLE IF EXISTS `flawtype`;

CREATE TABLE `flawtype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ftName` varchar(20) DEFAULT NULL COMMENT '缺陷类型名称',
  `ftState` int(2) DEFAULT NULL COMMENT '状态1禁用2启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `flawtype` */

insert  into `flawtype`(`id`,`ftName`,`ftState`) values (1,'叉粱断裂',1),(2,'拦河线断裂',1),(3,'绝缘子爆破',1),(4,'杆塔倾斜',1),(5,'绝缘子爆破',1),(6,'吊杆变形',1),(7,'其他',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pollingmission` */

insert  into `pollingmission`(`id`,`pmName`,`pmNumber`,`cId`,`releaseUid`,`pollingUid`,`pmRemark`,`releaseTime`,`accomplishTime`,`pmState`) values (1,'西渭一线任务巡检','RW0245',1,3,4,'','2018-02-13','2018-02-13',4),(2,'西渭二线任务巡检','RW0246',2,3,4,'','2018-02-13',NULL,1),(3,'西渭三线任务巡检','RW0247',2,3,4,'','2018-02-09',NULL,2);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rNumber` varchar(20) NOT NULL COMMENT '角色编号',
  `rName` varchar(20) NOT NULL COMMENT '角色名称',
  `rState` int(2) NOT NULL COMMENT '状态1为禁用2启用',
  `establishDate` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`rNumber`,`rName`,`rState`,`establishDate`) values (1,'ps_role01','系统管理员',1,'2017-01-01'),(2,'ps_role02','线路管理员',1,'2017-01-02'),(3,'ps_role03','巡检员',1,'2017-01-05'),(4,'ps_role04','消缺员',1,'2017-01-06');

/*Table structure for table `tower` */

DROP TABLE IF EXISTS `tower`;

CREATE TABLE `tower` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tNumber` varchar(20) NOT NULL COMMENT '杆塔编号',
  `tState` int(2) NOT NULL COMMENT '杆塔状态1禁用2启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tower` */

insert  into `tower`(`id`,`tNumber`,`tState`) values (1,'XW00001',1),(2,'XW00002',1),(3,'XW00003',1),(4,'XW00004',1),(5,'XW00005',1),(6,'XW00006',1),(7,'XW00007',0),(8,'XW00008',0),(9,'XW00009',1),(10,'XW000010',1);

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
  `lastTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`account`,`uName`,`password`,`phone`,`gender`,`age`,`email`,`entryTime`,`termDate`,`rid`,`ustate`,`lastTime`) values (1,'admin','系统管理员','123','12345678912','男','1988-05-05','admin@qq.com','2018-02-01',NULL,1,1,NULL),(2,'user02','线路管理员测试用户01','123',NULL,NULL,'1999-05-05','user01@**.com','2018-02-08',NULL,2,1,NULL),(3,'user03','巡检员测试用户01','123',NULL,NULL,'1999-05-05','user01@**.com','2018-02-08',NULL,3,1,NULL),(4,'user04','消缺员测试用户01','123',NULL,NULL,'1999-05-05','user03@**.com','2018-02-08',NULL,4,1,NULL),(5,'user05','线路管理员测试用户02','123',NULL,NULL,'1999-05-05','user05@**.com','2018-02-08',NULL,2,0,NULL),(6,'user06','巡检员测试用户02','123',NULL,NULL,'1999-05-05','user06@**.com','2018-02-08',NULL,3,0,NULL),(7,'user07','线路管理员测试用户02','123',NULL,NULL,'1999-05-05','user07@**.com','2018-02-08',NULL,4,0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
