/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - db_hotel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_hotel`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `age` varchar(2) DEFAULT NULL COMMENT '性别',
  `work` varchar(10) DEFAULT NULL COMMENT '职务',
  `img` varchar(50) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`age`,`work`,`img`) values (3,'王浩','123','22','总经理','deer.jpg'),(2,'宋佳伟','123','21','董事长','ren.jpg'),(6,'孙含笑','123','23','销售总监','4.png'),(10,'王飞1','123','22','财务总监','2.png'),(18,'顾伟姝','123','20','人事部','6.png');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `passwd` varbinary(20) DEFAULT NULL COMMENT '密码',
  `identity` varchar(20) DEFAULT NULL COMMENT '身份证',
  `address` varchar(50) DEFAULT NULL COMMENT '住址',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  `contact` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `img` varchar(50) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`passwd`,`identity`,`address`,`sex`,`contact`,`img`) values (1,'张三1','123','3213212312323','江苏南京','男','18064844332','hi.jpg'),(2,'李四','123','321231212321','上海宝山','男','1233434234','hi.jpg'),(3,'李芳芳','123','123123123131223','北京朝阳','女','123123123','hi.jpg'),(4,'李强','234','1231332342323','吾问无为谓','男','1213122342','hi.jpg'),(29,'王噶','666666','33333544463423',NULL,'男','123412322',NULL),(23,'王五1','666666','1231231212342',NULL,'男','2312312123',NULL),(10,'版本13','3434','2123123213212','更广泛','女','1345451231','hi.jpg'),(12,'我','123','231231231431231','版本','男','1231233434','hi.jpg'),(13,'你','344','121231313131236','mm们','男','123123565','hi.jpg'),(14,'qq群','23','1231312312313','那你呢','女','1241431212','hi.jpg'),(15,'恩恩','123','2423423424242','刚刚','女','121215234','hi.jpg'),(16,'我','23','2342424242424','sdfsd','男','124342312','hi.jpg'),(17,'看看','34','2342424232342','sfsdfsdf','女','12423123','hi.jpg'),(18,'宋佳伟','666666','23123434253342',NULL,'男','2323112312',NULL),(30,'王五','666666','23212323232325',NULL,'男','1232333554',NULL),(31,'sssssss','111111','222222222222222',NULL,NULL,'2222222222',NULL),(36,'王八蛋','12345','222222',NULL,NULL,'2222222',NULL),(37,'小三','111','444444444444444',NULL,NULL,'444444444444444',NULL);

/*Table structure for table `livein` */

DROP TABLE IF EXISTS `livein`;

CREATE TABLE `livein` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `identity` varchar(22) DEFAULT NULL COMMENT '身份证',
  `contact` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `outTime` varchar(15) DEFAULT NULL COMMENT '退房时间',
  `roomnumber` varchar(10) DEFAULT NULL COMMENT '房间号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `livein` */

insert  into `livein`(`id`,`name`,`identity`,`contact`,`outTime`,`roomnumber`) values (2,'宋吉文','312312332123123','12232322323','2017-03-24','1001'),(4,'二狗子','2312324234234','12232113232','2017-03-07','3001'),(5,'小芳','2223123232321','1454234432','2017-03-10','3002'),(8,'阿傻','32312324578765','12345432334','2017-03-09','1008'),(7,'王五','23212323232325','1232333554','2017-03-08','3004'),(10,'赵牛','223123123123111','1223423423','2017-03-10','1003'),(11,'孙子','2231233346456','12123243454','2017-03-09','2008'),(12,'宋佳伟','32324242343423','1212121222','2017-03-16','5201'),(14,'黄龙','2212313123423423','121312312','2017-03-10','8881'),(15,'宋佳伟','321322199202295000','18360701111','2017-03-10','3003'),(16,'王浩','321322213124124323','15343255623','2017-03-16','1002');

/*Table structure for table `orderroom` */

DROP TABLE IF EXISTS `orderroom`;

CREATE TABLE `orderroom` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL COMMENT '姓名',
  `identity` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `contact` varchar(12) DEFAULT NULL COMMENT '联系电话',
  `inTime` varchar(10) DEFAULT NULL COMMENT '预定入住时间',
  `inDays` varchar(10) DEFAULT NULL COMMENT '预订天数',
  `roomStyle` varchar(20) DEFAULT NULL COMMENT '预订什么样式的房间',
  `overTime` varchar(10) DEFAULT NULL COMMENT '订单过期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

/*Data for the table `orderroom` */

insert  into `orderroom`(`id`,`name`,`identity`,`contact`,`inTime`,`inDays`,`roomStyle`,`overTime`) values (10,'我','231231231431231','1231233434','2017-04-13','2017-04-11','双人房',NULL),(7,'李四1','222121212312112','1122232312','2017-03-22','2017-03-23','双人房',NULL),(3,'王飞','231434223423432324','143334322344','2017-03-10','2017-03-14','标准房',NULL),(4,'孙含笑','32124435557755446','22112331221','2017-03-08','2017-03-16','双人房',NULL),(5,'张三','2233211233455667765','12445664643','2017-03-05','2017-03-08','豪华房',NULL),(6,'李四','22332112341233232','123223212332','2017-03-07','2017-03-09','总统套房',NULL),(44,'小三','444444444444444','444444444444','2017-04-19','2017-04-21','标准房',NULL);

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `roomNum` varchar(10) DEFAULT NULL COMMENT '房间号',
  `roomStyle` varchar(20) DEFAULT NULL COMMENT '房间样式',
  `roomRest` varchar(10) DEFAULT NULL COMMENT '房间剩余',
  `roomPrice` varchar(10) DEFAULT NULL COMMENT '房间价格',
  `roomImg` varchar(20) DEFAULT NULL COMMENT '房间图片',
  `roomNews` varchar(50) DEFAULT NULL COMMENT '房间介绍',
  `roomOn` varchar(2) DEFAULT NULL COMMENT '房间是否空余（1表示是 0表示否）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `room` */

insert  into `room`(`id`,`roomNum`,`roomStyle`,`roomRest`,`roomPrice`,`roomImg`,`roomNews`,`roomOn`) values (1,'1001-1010','单人间','10','110','1.jpg','这是标准的单人间，环境优雅，空气清新','1'),(2,'1011-1020','双人间','10','150','2.jpg','这是双人间！','1'),(3,'8881-8885','豪华间','5','200','3.jpg','这是豪华套房1','1'),(4,'3011-3010','标准间','10','130','4.jpg','电视电脑一应俱全','1'),(8,'5201-5205','情侣套房','5','666','qq.jpg','情侣套间你值得拥有！',NULL);

/*Table structure for table `roomstyle` */

DROP TABLE IF EXISTS `roomstyle`;

CREATE TABLE `roomstyle` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `roomStyle` varchar(10) DEFAULT NULL COMMENT '房间样式',
  `roomNum` varchar(10) DEFAULT NULL COMMENT '房间区间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `roomstyle` */

/*Table structure for table `sysdo` */

DROP TABLE IF EXISTS `sysdo`;

CREATE TABLE `sysdo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `startTime` varchar(50) DEFAULT NULL COMMENT '设置时间',
  `endTime` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `reason` varchar(100) DEFAULT NULL COMMENT '原因',
  `sysImg` varchar(20) DEFAULT NULL COMMENT '图片',
  `chkBtn` char(10) DEFAULT NULL COMMENT '打开还是关闭',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `sysdo` */

insert  into `sysdo`(`id`,`startTime`,`endTime`,`reason`,`sysImg`,`chkBtn`) values (1,'2017-3-1','2017-3-3','倒闭了','bag.jpg','false');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
