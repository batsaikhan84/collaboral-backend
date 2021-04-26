CREATE DATABASE  IF NOT EXISTS `inventory` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audit_receiving_chemicals`
--

DROP TABLE IF EXISTS `audit_receiving_chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `audit_receiving_chemicals` (
  `old_quantity` int(11) DEFAULT NULL,
  `pk_receiving` int(11) DEFAULT NULL,
  `pk_chemical` int(11) DEFAULT NULL,
  `new_quantity` int(11) DEFAULT NULL,
  `time_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `audit_receiving_chemicals_fk` (`pk_chemical`),
  KEY `audit_receiving_chemicals_fk_1` (`pk_receiving`),
  CONSTRAINT `audit_receiving_chemicals_fk` FOREIGN KEY (`pk_chemical`) REFERENCES `chemicals` (`pk_chemical`),
  CONSTRAINT `audit_receiving_chemicals_fk_1` FOREIGN KEY (`pk_receiving`) REFERENCES `receiving_chemicals` (`pk_receiving`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_receiving_chemicals`
--

LOCK TABLES `audit_receiving_chemicals` WRITE;
/*!40000 ALTER TABLE `audit_receiving_chemicals` DISABLE KEYS */;
INSERT INTO `audit_receiving_chemicals` VALUES (59,2,6,4,'2019-06-25 21:42:57',NULL),(4,1,3,43,'2019-06-25 21:43:51','testreceivingemp'),(43,1,3,4,'2019-06-25 21:43:53','testreceivingemp'),(4,1,3,43,'2019-06-25 22:20:05','testreceivingemp'),(43,1,3,4,'2019-06-25 22:20:09','testreceivingemp'),(4,1,3,42,'2019-06-25 22:30:38','testreceivingemp'),(42,1,3,4,'2019-06-25 22:30:40','testreceivingemp'),(4,1,3,0,'2019-06-25 22:30:43','testreceivingemp'),(0,1,3,4,'2019-06-25 22:30:46','testreceivingemp'),(4,1,3,4,'2019-06-26 15:21:59','testreceivingemp'),(4,2,6,4,'2019-06-26 15:22:00','testreceivingemp'),(2,3,12,2,'2019-06-26 15:22:00','testreceivingemp'),(3,4,11,3,'2019-06-26 15:22:01','testreceivingemp'),(3,5,13,3,'2019-06-26 15:22:02','testreceivingemp'),(4,1,3,100,'2019-06-26 15:22:19','testreceivingemp'),(100,1,3,4,'2019-06-26 15:22:24','testreceivingemp'),(3,4,11,4,'2019-06-26 23:24:49',NULL),(4,4,11,3,'2019-06-26 23:25:08',NULL),(4,1,3,40,'2019-06-27 14:20:33','testreceivingemp'),(40,1,3,4,'2019-06-27 14:20:38','testreceivingemp'),(4,1,3,1,'2019-06-27 17:54:15',NULL),(1,1,3,4,'2019-06-27 17:54:18',NULL),(4,1,3,4,'2019-06-28 19:27:52','testreceivingemp'),(4,1,3,6,'2019-07-01 15:13:22','testreceivingemp'),(6,1,3,6,'2019-07-01 15:19:37','testreceivingemp'),(6,1,3,5,'2019-07-03 21:15:30','testreceivingemp'),(5,1,3,6,'2019-07-03 21:15:33','testreceivingemp'),(6,1,3,1,'2019-07-03 21:20:35','testreceivingemp'),(1,1,3,6,'2019-07-03 21:20:37','testreceivingemp');
/*!40000 ALTER TABLE `audit_receiving_chemicals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:11:09
