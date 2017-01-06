/*
SQLyog Ultimate v8.55 
MySQL - 5.5.45 : Database - movie
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

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `name1` varchar(20) DEFAULT NULL,
  `name2` varchar(20) DEFAULT NULL,
  `name3` varchar(20) DEFAULT NULL,
  `number` int(40) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `District` varchar(20) DEFAULT NULL,
  `Theater` varchar(20) DEFAULT NULL,
  `Movie` varchar(20) DEFAULT NULL,
  `x` varchar(20) DEFAULT NULL,
  `b` varchar(20) DEFAULT NULL,
  `c` varchar(20) DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL,
  `Time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`name1`,`name2`,`name3`,`number`,`City`,`District`,`Theater`,`Movie`,`x`,`b`,`c`,`days`,`Time`) values ('a','','',1,'','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','a','',3,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',11,'delhi','janakpuri','Pacific','pk',NULL,NULL,NULL,'wednesday','3pm-6pm'),('a','','',12,'de','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('qw','','',22,'a','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('akshay','','',56,'553','janakpuri','Vishal','pk',NULL,'z',NULL,'monday','9am-12am'),('a','','',67,'3','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('akshay','','',878,'delhi','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('akshay','','',887,'delhi','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('tarun','','',999,'123','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('akshay','','',9811,'delhi','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('akshay','ajay','',11122,'delhi','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('q2','','',22,'de','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',1,'2','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',1,'d','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('a','a','',4,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('q','','',1,'s','janakpuri','Pacific','Brothers','y',NULL,NULL,'monday','3pm-6pm'),('a','a','w',12,'s','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','a','',98,'','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('ak','','',65,'delhi','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('as','','',12,'s','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',12,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',2,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',2,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',2,'6','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',9,'1','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',77,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',6,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','a','',9,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',1,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',1,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',9,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',12,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',4,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('akshay','','',9,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('aksha','','',12,'delhi','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('akshay','aman','',9888,'delhi','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('ak','','',99,'delhi','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('as','','',677,'de','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('as','','',123,'delhi','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('ak','','',99,'delhi','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('ak','sk','',99,'delhi','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('a','','',77,'de','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',9,'a','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('as','','',99,'del','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('ak','','',98,'12','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('as','','',12,'de','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('a','','',2,'d','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('a','','',9,'d','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12pm'),('a','','',12,'d','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12pm'),('a','','',9,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12pm'),('aksahy','','',88,'dd','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12pm'),('ak','','',98,'dd','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',2,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('as','','',9,'f','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('as','','',23,'d','janakpuri','Vishal','pk',NULL,NULL,NULL,'monday','9am-12am'),('a','','',98,'1','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('ak','','',12,'d','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am'),('a','','',23,'dd','janakpuri','Vishal','pk','y',NULL,NULL,'monday','9am-12am');

/*Table structure for table `days` */

DROP TABLE IF EXISTS `days`;

CREATE TABLE `days` (
  `Movie_Name` char(50) DEFAULT NULL,
  `Monday` char(15) DEFAULT NULL,
  `Tuesday` char(10) DEFAULT NULL,
  `Wednesday` char(20) DEFAULT NULL,
  `Thursday` char(20) DEFAULT NULL,
  `Friday` char(15) DEFAULT NULL,
  `Saturday` char(10) DEFAULT NULL,
  `Sunday` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `days` */

insert  into `days`(`Movie_Name`,`Monday`,`Tuesday`,`Wednesday`,`Thursday`,`Friday`,`Saturday`,`Sunday`) values ('pk','Y','N','N','Y','Y','N','Y'),('bajrangi bhaijan','N','Y','Y','N','Y','Y','N'),('brothers','N','N','Y','Y','N','Y','Y'),('Terminator','Y','Y','N','N','N','Y','Y'),('MissionImpossible','N','Y','N','N','N','Y','N');

/*Table structure for table `details` */

DROP TABLE IF EXISTS `details`;

CREATE TABLE `details` (
  `id` int(20) DEFAULT NULL,
  `Theatre` char(20) DEFAULT NULL,
  `days` char(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `Seats` int(200) DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `details` */

insert  into `details`(`id`,`Theatre`,`days`,`time`,`Seats`,`price`) values (1,'Vishal','monday','9am-12am',89,150),(2,'Mgf','tuesday','12am-3pm',100,100),(3,'Pacific','wednesday','3pm-6pm',80,100),(4,'Raj','Thursday','6pm-9pm',80,180),(5,'Bmg','Friday','9pm-12pm',100,100);

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` int(10) NOT NULL,
  `Movie` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `movie` */

insert  into `movie`(`id`,`Movie`) values (1,'pk'),(2,'bajrangi bhaijan'),(3,'Brothers'),(4,'Terminator'),(5,' Mission impossible');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `Name` varchar(30) DEFAULT NULL,
  `AccountNo` varchar(30) DEFAULT NULL,
  `Pin` varchar(40) DEFAULT NULL,
  `Balance` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`Name`,`AccountNo`,`Pin`,`Balance`) values ('akshay','122','2','-150'),('ad','44','2332','6000'),('a','1','2','50'),('1','2','3','600'),('a','1','1','500'),('a1','2','2','4000'),('as','12','2','-150'),(NULL,NULL,NULL,NULL),('a','12','2','-150'),('Akshay','122','2','-150'),('ak','1','2','250'),('akshay','12','4','200'),('ak','4','80','250'),('as','22','6','50'),('as','23','4554','350'),('ak','34','23','60'),('al','12','4','200'),('a','1','2','50'),('a','1','2','50'),('as','13','q','-146'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('a','2','3','350'),('as','21','3','250'),('as','21','3','250'),('as','21','3','250'),('as','21','3','250'),('as','21','3','250'),('a','2','4','449'),('a','3','6','50'),('a','3','6','50'),('a','3','6','50'),('a','3','6','50'),('a','3','6','50'),('a','3','6','50'),('a','3','6','50'),('a','2','4','449'),('a','3','6','50'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('asas','2','1','300'),('ak','1','3','50'),('a','1','2','50'),('as','4','5','-148'),('12','2','5','150'),('a','5','7','0');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `Mobile` varchar(30) DEFAULT NULL,
  `Age` varchar(15) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userid`,`firstname`,`lastname`,`email`,`password`,`Mobile`,`Age`,`pincode`) values ('a','akshay','satija','blaster','123','981','19','110064'),('b','akshay','rus','not','321','252','2','110074');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
