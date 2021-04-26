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
-- Table structure for table `audit_research_chemicals`
--

DROP TABLE IF EXISTS `audit_research_chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `audit_research_chemicals` (
  `old_quantity` int(11) DEFAULT NULL,
  `pk_research` int(11) DEFAULT NULL,
  `pk_chemical` int(11) DEFAULT NULL,
  `new_quantity` int(11) DEFAULT NULL,
  `time_changed` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `users` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `audit_research_chemicals_fk` (`pk_chemical`),
  KEY `audit_research_chemicals_fk_1` (`pk_research`),
  CONSTRAINT `audit_research_chemicals_fk` FOREIGN KEY (`pk_chemical`) REFERENCES `chemicals` (`pk_chemical`),
  CONSTRAINT `audit_research_chemicals_fk_1` FOREIGN KEY (`pk_research`) REFERENCES `research_chemicals` (`pk_research`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_research_chemicals`
--

LOCK TABLES `audit_research_chemicals` WRITE;
/*!40000 ALTER TABLE `audit_research_chemicals` DISABLE KEYS */;
INSERT INTO `audit_research_chemicals` VALUES (1,1,8,2,'2019-06-27 17:54:50',NULL),(2,1,8,1,'2019-06-27 17:54:52',NULL);
/*!40000 ALTER TABLE `audit_research_chemicals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:11:12
