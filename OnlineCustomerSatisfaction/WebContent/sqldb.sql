/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.4.20-MariaDB : Database - customersurvey
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`customersurvey` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `customersurvey`;

/*Table structure for table `admintable` */

DROP TABLE IF EXISTS `admintable`;

CREATE TABLE `admintable` (
  `LoginName` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `admintable` */

insert  into `admintable`(`LoginName`,`Password`) values ('admin','admin');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `ContactId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SUBJECT` varchar(50) DEFAULT NULL,
  `Message` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ContactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `contact` */

/*Table structure for table `contacttable` */

DROP TABLE IF EXISTS `contacttable`;

CREATE TABLE `contacttable` (
  `ContactId` int(11) NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(20) DEFAULT NULL,
  `EmailId` varchar(20) DEFAULT NULL,
  `Subject` varchar(200) DEFAULT NULL,
  `Message` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ContactId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `contacttable` */

insert  into `contacttable`(`ContactId`,`ContactName`,`EmailId`,`Subject`,`Message`) values (1,'Dhananjaya','aa@gmail.com','aaa','aaa');

/*Table structure for table `newcustomer` */

DROP TABLE IF EXISTS `newcustomer`;

CREATE TABLE `newcustomer` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `PhoneNum` varchar(50) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `LoginName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `newcustomer` */

insert  into `newcustomer`(`CustomerId`,`FirstName`,`LastName`,`PhoneNum`,`EmailID`,`LoginName`,`Password`,`Address`) values (1,'aaa','Dhananjaya','9886239083','aa@gmail.com','admin','admin','RajajiNagar'),(2,'Preethi','preethi','9886239083','preethiarun69@gmail.com','preethi','1234','RajjaiNagar');

/*Table structure for table `newservice` */

DROP TABLE IF EXISTS `newservice`;

CREATE TABLE `newservice` (
  `ProductId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(50) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `MoreDetails` varchar(50) DEFAULT NULL,
  `OwnerName` varchar(50) DEFAULT NULL,
  `PhoneNum` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `newservice` */

insert  into `newservice`(`ProductId`,`ProductName`,`ProductType`,`MoreDetails`,`OwnerName`,`PhoneNum`,`EmailId`,`Image`) values (1,'For childrens','BMTC','Abcd','Dhanu','9886239083','dhanu.innovation@gmail.com','blog-cat3.jpg');

/*Table structure for table `ratingtable` */

DROP TABLE IF EXISTS `ratingtable`;

CREATE TABLE `ratingtable` (
  `RatingId` int(11) NOT NULL AUTO_INCREMENT,
  `ProductId` int(11) DEFAULT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `MoreDetails` varchar(200) DEFAULT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `PhoneNum` varchar(50) DEFAULT NULL,
  `Comments` varchar(200) DEFAULT NULL,
  `Rating` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RatingId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ratingtable` */

insert  into `ratingtable`(`RatingId`,`ProductId`,`ProductName`,`ProductType`,`MoreDetails`,`CustomerId`,`FirstName`,`LastName`,`EmailId`,`PhoneNum`,`Comments`,`Rating`) values (1,1,'aaa','BMTC','								bbb\r\n								',1,'aaa','Dhananjaya','aa@gmail.com','9886239083','aaa','4'),(2,1,'For childrens','BMTC',' Abcd ',2,'Preethi','preethi','preethiarun69@gmail.','9886239083','It is good','5'),(3,1,'For childrens','BMTC',' Abcd ',2,'Preethi','preethi','preethiarun69@gmail.','9886239083','It is good','5');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
