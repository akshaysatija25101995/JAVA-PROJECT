/*
SQLyog Community v11.31 (32 bit)
MySQL - 4.1.14-nt : Database - movie
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`movie` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `movie`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(15) NOT NULL default '0',
  `firstname` varchar(15) default NULL,
  `lastname` varchar(20) default NULL,
  `email` varchar(25) default NULL,
  `password` varchar(15) default NULL,
  `Mobile` varchar(10) default NULL,
  `Age` varchar(5) default NULL,
  `Gender` varchar(6) default NULL,
  `pincode` varchar(10) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userid`,`firstname`,`lastname`,`email`,`password`,`Mobile`,`Age`,`Gender`,`pincode`) values (1,'akshay','satija','blaster','123','981','19','Male`','110064'),(2,'akshay','rus','not','321','252','2','Male','110074');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
