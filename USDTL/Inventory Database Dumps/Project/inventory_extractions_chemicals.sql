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
-- Table structure for table `extractions_chemicals`
--

DROP TABLE IF EXISTS `extractions_chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `extractions_chemicals` (
  `pk_extractions` int(11) NOT NULL AUTO_INCREMENT,
  `pk_chemical` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_extractions`),
  KEY `extractions_chemicals_fk` (`pk_chemical`),
  CONSTRAINT `extractions_chemicals_fk` FOREIGN KEY (`pk_chemical`) REFERENCES `chemicals` (`pk_chemical`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extractions_chemicals`
--

LOCK TABLES `extractions_chemicals` WRITE;
/*!40000 ALTER TABLE `extractions_chemicals` DISABLE KEYS */;
INSERT INTO `extractions_chemicals` VALUES (3,2,5),(4,4,2),(5,9,4),(6,11,5),(7,14,2),(8,23,2),(9,27,18),(10,30,4),(11,34,7),(12,38,3),(15,41,4),(16,43,5),(17,47,3),(18,48,35),(19,51,10),(20,52,1),(21,53,2),(22,57,6),(23,60,4),(24,67,8),(25,69,21),(26,72,2),(27,74,2),(28,76,17),(29,77,7),(30,81,8),(31,83,1),(32,88,82),(33,89,2),(34,90,12),(35,96,8),(36,97,6),(37,99,1),(38,100,5),(39,103,4),(40,104,3),(41,105,1),(42,106,3),(43,107,3),(44,109,3),(45,110,9),(46,111,7),(47,114,2),(48,115,9),(49,116,1),(50,118,1),(51,120,5),(52,6,2),(53,55,5),(54,54,52),(56,26,NULL),(57,56,NULL);
/*!40000 ALTER TABLE `extractions_chemicals` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `extractionschem_audit` AFTER UPDATE ON `extractions_chemicals` FOR EACH ROW BEGIN
 insert into inventory.audit_extractions_chemicals (old_quantity,new_quantity,pk_extractions,pk_chemical,users) values (old.quantity,new.quantity,old.pk_extractions,old.pk_chemical,@users);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:11:13
