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
-- Table structure for table `qcrd_chemicals`
--

DROP TABLE IF EXISTS `qcrd_chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qcrd_chemicals` (
  `pk_qcrd` int(11) NOT NULL AUTO_INCREMENT,
  `pk_chemical` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pk_qcrd`),
  KEY `qcrd_chemicals_fk` (`pk_chemical`),
  CONSTRAINT `qcrd_chemicals_fk` FOREIGN KEY (`pk_chemical`) REFERENCES `chemicals` (`pk_chemical`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qcrd_chemicals`
--

LOCK TABLES `qcrd_chemicals` WRITE;
/*!40000 ALTER TABLE `qcrd_chemicals` DISABLE KEYS */;
INSERT INTO `qcrd_chemicals` VALUES (2,8,1,'RM-256'),(3,10,1,'RM-256'),(4,13,7,'RM-256'),(5,25,1,'RM-256'),(6,29,3,'RM-256'),(7,31,1,'RM-256'),(8,32,1,'RM-256'),(9,36,1,'RM-256'),(10,37,1,'RM-256'),(11,39,1,'RM-256'),(12,44,1,'RM-256'),(13,46,2,'RM-256'),(14,51,4,'RM-256'),(15,60,2,'RM-256'),(16,63,1,'RM-256'),(17,64,4,'RM-256'),(18,66,3,'RM-256'),(19,70,10,'RM-256'),(20,75,1,'RM-256'),(21,85,1,'RM-256'),(22,87,1,'RM-256'),(23,91,1,'RM-256'),(24,92,1,'RM-256'),(25,94,2,'RM-256'),(26,98,2,'RM-256'),(27,101,1,'RM-256'),(28,102,1,'RM-256'),(29,113,1,'RM-256'),(30,119,1,'RM-256'),(31,122,5,'RM-256'),(32,123,1,'RM-256'),(33,124,1,'RM-256'),(34,133,7,'RM-256'),(35,12,3,'RM-256'),(36,28,6,'RM-256'),(37,38,1,'RM-256'),(38,39,1,'RM-256'),(39,99,1,'RM-256'),(40,33,1,'RM-256'),(41,200,NULL,'RM-256');
/*!40000 ALTER TABLE `qcrd_chemicals` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `qcrdchem_audit` AFTER UPDATE ON `qcrd_chemicals` FOR EACH ROW BEGIN
	insert into inventory.audit_qcrd_chemicals (old_quantity,new_quantity,pk_qcrd,pk_chemical,users) values (old.quantity,new.quantity,old.pk_qcrd,old.pk_chemical,@users);
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

-- Dump completed on 2021-04-21  9:11:12
