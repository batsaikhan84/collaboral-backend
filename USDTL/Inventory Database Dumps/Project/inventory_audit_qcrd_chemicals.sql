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
-- Table structure for table `audit_qcrd_chemicals`
--

DROP TABLE IF EXISTS `audit_qcrd_chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `audit_qcrd_chemicals` (
  `old_quantity` int(11) DEFAULT NULL,
  `pk_qcrd` int(11) DEFAULT NULL,
  `pk_chemical` int(11) DEFAULT NULL,
  `new_quantity` int(11) DEFAULT NULL,
  `time_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `audit_qcrd_chemicals_fk` (`pk_chemical`),
  KEY `audit_qcrd_chemicals_fk_1` (`pk_qcrd`),
  CONSTRAINT `audit_qcrd_chemicals_fk` FOREIGN KEY (`pk_chemical`) REFERENCES `chemicals` (`pk_chemical`),
  CONSTRAINT `audit_qcrd_chemicals_fk_1` FOREIGN KEY (`pk_qcrd`) REFERENCES `qcrd_chemicals` (`pk_qcrd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_qcrd_chemicals`
--

LOCK TABLES `audit_qcrd_chemicals` WRITE;
/*!40000 ALTER TABLE `audit_qcrd_chemicals` DISABLE KEYS */;
INSERT INTO `audit_qcrd_chemicals` VALUES (1,2,8,2,'2019-06-27 17:54:34',NULL),(2,2,8,1,'2019-06-27 17:54:36',NULL),(1,2,8,1,'2019-06-28 16:09:00','testqcrdemp'),(1,2,8,0,'2019-07-03 21:16:32','testqcrdemp'),(0,2,8,1,'2019-07-03 21:16:33','testqcrdemp'),(1,2,8,1,'2020-02-10 15:53:19',NULL),(1,3,10,1,'2020-02-10 15:53:19',NULL),(7,4,13,7,'2020-02-10 15:53:19',NULL),(1,5,25,1,'2020-02-10 15:53:19',NULL),(3,6,29,3,'2020-02-10 15:53:19',NULL),(1,7,31,1,'2020-02-10 15:53:19',NULL),(1,8,32,1,'2020-02-10 15:53:19',NULL),(1,9,36,1,'2020-02-10 15:53:19',NULL),(1,10,37,1,'2020-02-10 15:53:19',NULL),(1,11,39,1,'2020-02-10 15:53:19',NULL),(1,12,44,1,'2020-02-10 15:53:19',NULL),(2,13,46,2,'2020-02-10 15:53:19',NULL),(4,14,51,4,'2020-02-10 15:53:19',NULL),(2,15,60,2,'2020-02-10 15:53:19',NULL),(1,16,63,1,'2020-02-10 15:53:19',NULL),(4,17,64,4,'2020-02-10 15:53:19',NULL),(3,18,66,3,'2020-02-10 15:53:19',NULL),(10,19,70,10,'2020-02-10 15:53:19',NULL),(1,20,75,1,'2020-02-10 15:53:19',NULL),(1,21,85,1,'2020-02-10 15:53:19',NULL),(1,22,87,1,'2020-02-10 15:53:19',NULL),(1,23,91,1,'2020-02-10 15:53:19',NULL),(1,24,92,1,'2020-02-10 15:53:19',NULL),(2,25,94,2,'2020-02-10 15:53:19',NULL),(2,26,98,2,'2020-02-10 15:53:19',NULL),(1,27,101,1,'2020-02-10 15:53:19',NULL),(1,28,102,1,'2020-02-10 15:53:19',NULL),(1,29,113,1,'2020-02-10 15:53:19',NULL),(1,30,119,1,'2020-02-10 15:53:19',NULL),(5,31,122,5,'2020-02-10 15:53:19',NULL),(1,32,123,1,'2020-02-10 15:53:19',NULL),(1,33,124,1,'2020-02-10 15:53:19',NULL),(7,34,133,7,'2020-02-10 15:53:19',NULL),(3,35,12,3,'2020-02-10 15:53:19',NULL),(6,36,28,6,'2020-02-10 15:53:19',NULL),(1,37,38,1,'2020-02-10 15:53:19',NULL),(1,38,39,1,'2020-02-10 15:53:19',NULL),(1,39,99,1,'2020-02-10 15:53:19',NULL),(1,40,33,1,'2020-02-10 15:53:19',NULL);
/*!40000 ALTER TABLE `audit_qcrd_chemicals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:11:10
