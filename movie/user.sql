/*
SQLyog Trial v12.12 (32 bit)
MySQL - 4.1.14-nt 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `user` (
	`userid` varchar (45),
	`firstname` varchar (45),
	`lastname` varchar (60),
	`email` varchar (75),
	`password` varchar (45),
	`Mobile` varchar (30),
	`Age` varchar (15),
	`pincode` varchar (30)
); 
insert into `user` (`userid`, `firstname`, `lastname`, `email`, `password`, `Mobile`, `Age`, `pincode`) values('a','akshay','satija','blaster','123','981','19','110064');
insert into `user` (`userid`, `firstname`, `lastname`, `email`, `password`, `Mobile`, `Age`, `pincode`) values('b','akshay','rus','not','321','252','2','110074');
