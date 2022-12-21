/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - test_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test_database` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test_database`;

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `KODE_DOSEN` varchar(20) NOT NULL,
  `NAMA_DOSEN` varchar(50) DEFAULT NULL,
  `ALAMAT` text DEFAULT NULL,
  `KOTA` varchar(30) DEFAULT NULL,
  `KODE_POS` varchar(20) DEFAULT NULL,
  `TELEPON` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KODE_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `NPM` varchar(20) NOT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `LAHIR` varchar(50) DEFAULT NULL,
  `AGAMA` varchar(30) DEFAULT NULL,
  `ALAMAT` text DEFAULT NULL,
  `KOTA` varchar(50) DEFAULT NULL,
  `KODE_POS` varchar(10) DEFAULT NULL,
  `TELEPON` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `matakuliah` */

DROP TABLE IF EXISTS `matakuliah`;

CREATE TABLE `matakuliah` (
  `KODE_MK` varchar(10) NOT NULL,
  `NAMA_MK` varchar(50) DEFAULT NULL,
  `SKS` int(2) DEFAULT NULL,
  `STATUS` set('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`KODE_MK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `prestasi` */

DROP TABLE IF EXISTS `prestasi`;

CREATE TABLE `prestasi` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `NPM` varchar(30) NOT NULL,
  `KODE_DOSEN` varchar(30) DEFAULT NULL,
  `KODE_MK` varchar(20) DEFAULT NULL,
  `NIL_MID` int(3) DEFAULT NULL,
  `NIL_FIN` int(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
