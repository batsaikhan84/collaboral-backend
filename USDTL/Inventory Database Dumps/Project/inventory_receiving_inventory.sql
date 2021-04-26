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
-- Table structure for table `receiving_inventory`
--

DROP TABLE IF EXISTS `receiving_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `receiving_inventory` (
  `pk_receiving_inventory` int(11) NOT NULL AUTO_INCREMENT,
  `item` int(11) DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `min_quantity` int(11) DEFAULT NULL,
  `max_quantity` int(11) DEFAULT NULL,
  `ro_point` int(11) DEFAULT NULL,
  `ro_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_receiving_inventory`),
  KEY `extractions_inventory_fk` (`item`) USING BTREE,
  CONSTRAINT `receiving_inventory_fk` FOREIGN KEY (`item`) REFERENCES `master_list` (`pk_inventory`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiving_inventory`
--

LOCK TABLES `receiving_inventory` WRITE;
/*!40000 ALTER TABLE `receiving_inventory` DISABLE KEYS */;
INSERT INTO `receiving_inventory` VALUES (1,1,'RM-567-STAT2-E-1',0,5,10,5,5),(2,3,'RM-567-SONIC-A-4',0,7,13,7,6),(3,78,'RM-567-STAT1-A-1',0,4,7,4,3),(4,2,'RM-567-STAT1-G-1',0,4,8,4,4),(5,77,'RM-567-STAT1-C-1',0,59,84,35,24),(6,42,'RM-567-GLA-STA-B2',0,NULL,NULL,NULL,NULL),(7,41,'RM-567-GLA-STA-C1',4,NULL,NULL,NULL,NULL),(8,9,'RM-567-SONCI-A-1',0,2,3,2,1),(9,106,'RM-567-STAT1-D-2',0,3,5,3,2),(10,103,'RM-567-STAT2-A-3',0,4,8,4,4),(11,104,'RM-567-STAT2-A-3',0,NULL,NULL,NULL,NULL),(12,12,'RM-567-STAT2-C-2',0,2,3,2,1),(13,7,'RM-567-STAT1-E-1',0,1,1,0,1),(14,11,'RM-567-STAT3-D-2',0,1,2,1,1),(15,91,'RM-567-BLDSP-A-2',0,1,2,1,1),(16,92,'RM-567-BLDSP-A-2',0,1,2,1,1),(17,113,'RM-567-BLDSP-B-1',0,2,3,2,1),(18,88,'RM-567-BLDSP-B-2',0,1,2,1,1),(19,89,'RM-567-BLDSP-B-2',0,1,2,1,1),(20,86,'RM-567-BLDSP-C-1',0,1,2,1,1),(21,31,'RM-567-BLDSP-C-2',0,4,12,4,8),(22,32,'RM-567-BLDSP-C-2',0,12,24,12,12),(23,33,'RM-567-BLDSP-C-2',0,4,8,4,4),(24,114,'RM-567-BLDSP-D-1',0,6,10,6,4),(25,30,'RM-567-BLDSP-D-2',0,12,24,12,12),(26,29,'RM-567-BLDSP-D-2',0,4,8,4,4),(27,96,'RM-567-FH-S121-H2',0,2,5,2,3),(28,93,'RM-567-FH-S121-H2',0,2,5,2,3),(29,94,'RM-567-FH-S121-H2',0,2,5,2,3),(30,95,'RM-567-FH-S121-H2',0,2,5,2,3),(31,4,'RM-567-FH-S121-H3',0,2,3,2,1),(32,6,'RM-567-FH-S121-H4',0,1,2,1,1),(33,5,'RM-567-FH-S121-H4',0,1,2,1,1),(34,38,'RM-567-FH-S122-H8',0,1,2,0,1),(35,111,'RM-567-FH-S122-H8 ',0,1,1,0,1),(36,509,'RM-567-FLM-CAB-A1',0,NULL,NULL,NULL,NULL),(37,452,'RM-567-FLM-CAB-A1',0,NULL,NULL,NULL,NULL),(38,703,'RM-567-FLM-CAB-B1',0,NULL,NULL,NULL,NULL),(39,499,'RM-567-FLM-CAB-B1',0,NULL,NULL,NULL,NULL),(40,450,'RM-567-FLM-CAB-C1',0,NULL,NULL,NULL,NULL),(41,489,'RM-567-FLM-CAB-C1',0,NULL,NULL,NULL,NULL),(42,702,'RM-567-FLM-CAB-D1',0,NULL,NULL,NULL,NULL),(43,45,'RM-567-GLA-STA-A1',0,NULL,NULL,NULL,NULL),(44,43,'RM-567-GLA-STA-A2',0,NULL,NULL,NULL,NULL),(45,46,'RM-567-GLA-STA-A2',0,NULL,NULL,NULL,NULL),(46,48,'RM-567-GLA-STA-A2',0,NULL,NULL,NULL,NULL),(47,44,'RM-567-GLA-STA-B1',0,NULL,NULL,NULL,NULL),(48,36,'RM-567-STAT1-A-4',0,1,1,0,1),(49,79,'RM-567-STAT1-B-1',0,2,3,2,1),(50,82,'RM-567-STAT1-B-1',0,NULL,NULL,NULL,NULL),(51,34,'RM-567-STAT1-B-2 ',0,2,4,2,2),(52,35,'RM-567-STAT1-B-2 ',0,1,2,1,1),(53,105,'RM-567-STAT1-C-1',0,20,40,20,20),(54,24,'RM-567-STAT2-B-1',0,1,1,0,1),(55,39,'RM-567-STAT2-B-2',0,1,2,1,1),(56,10,'RM-567-STAT2-C-4',0,1,2,1,1),(57,13,'RM-567-STAT2-D-2',0,3,4,3,1),(58,173,'RM-567-STAT3-E-1',0,0,0,0,0),(59,112,'RM-567-STAT3-E-2',0,2,3,2,1),(60,19,'RM-567-STAT3-E-4',0,1,1,0,1),(61,17,'RM-567-STAT3-E-4',0,1,2,1,1),(62,110,'RM-567-STAT3-F1',0,2,3,2,1),(63,108,'RM-567-STAT3-F-1',0,3,4,3,1),(64,107,'RM-567-STAT3-F-1',0,2,3,2,1),(65,109,'RM-567-STAT3-F-1',0,2,3,2,1),(66,75,'RM-567-STAT3-F-2',0,4,7,4,3),(67,102,'RM-567',0,12,18,12,6),(68,14,'RM-567',0,NULL,NULL,NULL,NULL),(69,15,'RM-567',0,NULL,NULL,NULL,NULL),(70,16,'RM-567',0,NULL,NULL,NULL,NULL),(71,18,'RM-567',0,NULL,NULL,NULL,NULL),(72,20,'RM-567',0,NULL,NULL,NULL,NULL),(73,21,'RM-567',0,NULL,NULL,NULL,NULL),(74,55,'RM-567',0,NULL,NULL,NULL,NULL),(75,51,'RM-567',0,NULL,NULL,NULL,NULL),(76,27,'RM-567',0,NULL,NULL,NULL,NULL),(77,25,'RM-567',0,NULL,NULL,NULL,NULL),(78,26,'RM-567',0,1,2,1,1),(79,442,'RM-567',0,1,1,1,0),(80,87,'RM-567',0,NULL,NULL,NULL,NULL),(81,74,'RM-567',0,NULL,NULL,NULL,NULL),(82,151,'RM-567',0,NULL,NULL,NULL,NULL),(83,152,'RM-567',0,NULL,NULL,NULL,NULL),(84,47,'RM-567',0,NULL,NULL,NULL,NULL),(85,139,'RM-567',0,NULL,NULL,NULL,NULL),(86,28,'RM-567',0,NULL,NULL,NULL,NULL),(87,130,'RM-567',0,1,2,1,1),(88,146,'RM-567',0,NULL,NULL,NULL,NULL),(89,144,'RM-567',0,NULL,NULL,NULL,NULL),(90,973,'RM-567',0,3,6,3,3),(91,974,'RM-567',0,NULL,NULL,NULL,NULL),(92,97,'RM-567',0,NULL,NULL,NULL,NULL),(93,117,'RM-567',0,NULL,NULL,NULL,NULL),(94,121,'RM-567',0,NULL,NULL,NULL,NULL),(95,116,'RM-567',0,NULL,NULL,NULL,NULL),(96,22,'RM-567',0,NULL,NULL,NULL,NULL),(97,127,'RM-567',0,NULL,NULL,NULL,NULL),(98,120,'RM-567',0,NULL,NULL,NULL,NULL),(99,132,'RM-567',0,NULL,NULL,NULL,NULL),(100,131,'RM-567',0,NULL,NULL,NULL,NULL),(101,145,'RM-567',0,NULL,NULL,NULL,NULL),(102,119,'RM-567',0,NULL,NULL,NULL,NULL),(103,527,'RM-567',0,NULL,NULL,NULL,NULL),(104,148,'RM-567',0,NULL,NULL,NULL,NULL),(105,176,'RM-567',0,NULL,NULL,NULL,NULL),(106,147,'RM-567',0,NULL,NULL,NULL,NULL),(107,100,'RM-567',0,NULL,NULL,NULL,NULL),(108,101,'RM-567',0,NULL,NULL,NULL,NULL),(109,99,'RM-567',0,NULL,NULL,NULL,NULL),(110,142,'RM-567',0,NULL,NULL,NULL,NULL),(111,98,'RM-567',0,NULL,NULL,NULL,NULL),(112,150,'RM-567',0,NULL,NULL,NULL,NULL),(113,133,'RM-567',0,NULL,NULL,NULL,NULL),(114,706,'RM-567',0,NULL,NULL,NULL,NULL),(115,544,'RM-567',0,NULL,NULL,NULL,NULL),(116,115,'RM-567',0,1,1,0,1),(117,140,'RM-567',0,NULL,NULL,NULL,NULL),(118,37,'RM-567',0,NULL,NULL,NULL,NULL),(119,137,'RM-567',0,NULL,NULL,NULL,NULL),(120,125,'RM-567',0,NULL,NULL,NULL,NULL),(121,123,'RM-567',0,NULL,NULL,NULL,NULL),(122,134,'RM-567',0,NULL,NULL,NULL,NULL),(123,49,'RM-567',0,NULL,NULL,NULL,NULL),(124,138,'RM-567',0,NULL,NULL,NULL,NULL),(125,136,'RM-567',0,NULL,NULL,NULL,NULL),(126,135,'RM-567',0,NULL,NULL,NULL,NULL),(127,128,'RM-567',0,NULL,NULL,NULL,NULL),(128,40,'RM-567',0,1,2,1,1),(129,153,'RM-567',0,NULL,NULL,NULL,NULL),(130,141,'RM-567',0,NULL,NULL,NULL,NULL),(131,129,'RM-567',0,NULL,NULL,NULL,NULL),(132,143,'RM-567',0,NULL,NULL,NULL,NULL),(133,8,'RM-567',0,1,1,0,1),(134,118,'RM-567',0,NULL,NULL,NULL,NULL),(135,124,'RM-567',0,NULL,NULL,NULL,NULL),(136,492,'RM-567',0,NULL,NULL,NULL,NULL),(137,449,'RM-567',0,NULL,NULL,NULL,NULL),(138,480,'RM-567',0,NULL,NULL,NULL,NULL),(139,464,'RM-567',0,NULL,NULL,NULL,NULL),(140,552,'RM-567',0,NULL,NULL,NULL,NULL),(141,512,'RM-567',0,NULL,NULL,NULL,NULL),(142,479,'RM-567',0,NULL,NULL,NULL,NULL),(143,701,'RM-567',0,NULL,NULL,NULL,NULL),(144,707,'RM-567',0,NULL,NULL,NULL,NULL),(145,705,'RM-567',0,NULL,NULL,NULL,NULL),(146,513,'RM-567',0,NULL,NULL,NULL,NULL),(147,715,'RM-567',0,NULL,NULL,NULL,NULL),(148,478,'RM-567',0,NULL,NULL,NULL,NULL),(149,704,'RM-567',0,NULL,NULL,NULL,NULL),(150,840,'RM-567',0,1,2,1,1),(151,766,'RM-567',0,NULL,NULL,NULL,NULL),(152,443,'RM-567',0,NULL,NULL,NULL,NULL),(153,493,'RM-567',0,NULL,NULL,NULL,NULL),(154,496,'RM-567',0,NULL,NULL,NULL,NULL),(155,487,'RM-567',0,NULL,NULL,NULL,NULL),(156,542,'RM-567',0,NULL,NULL,NULL,NULL),(157,700,'RM-567',0,NULL,NULL,NULL,NULL),(158,534,'RM-567',0,NULL,NULL,NULL,NULL),(159,535,'RM-567',0,NULL,NULL,NULL,NULL),(160,538,'RM-567',0,NULL,NULL,NULL,NULL),(161,548,'RM-567',0,NULL,NULL,NULL,NULL),(162,547,'RM-567',0,NULL,NULL,NULL,NULL),(163,549,'RM-567',0,NULL,NULL,NULL,NULL),(164,541,'RM-567',0,NULL,NULL,NULL,NULL),(165,775,'RM-567',0,2,3,2,1),(166,83,'RM-567',0,NULL,NULL,NULL,NULL),(167,1,'RM-567-STAT2-F-1',0,5,10,5,5),(168,3,'RM-567-SONIC-A-5',0,7,13,7,6),(169,78,'RM-567-STAT1-A-2',0,4,7,4,3),(170,2,'RM-567-STAT1-G-2',0,4,8,4,4),(171,77,'RM-567-STAT2-A-2',0,59,84,35,24),(172,42,'RM-567-GLA-STA-B3',0,NULL,NULL,NULL,NULL),(173,41,'RM-567-GLA-STA-C2',5,NULL,NULL,NULL,NULL),(174,9,'RM-567-SONIC-A-2',0,2,3,2,1),(175,106,'RM-567-STAT1-E-2',0,3,5,3,2),(176,103,'RM-567-STAT2-A-4',0,4,8,4,4),(177,104,'RM-567-STAT2-A-4',0,NULL,NULL,NULL,NULL),(178,12,'RM-567-STAT2-C-3',0,2,3,2,1),(179,7,'RM-567-STAT2-E-2',0,1,1,0,1),(180,11,'RM-567-STAT3-E-2',0,1,2,1,1),(181,1,'RM-567-STAT2-F-2',0,5,10,5,5),(182,3,'RM-567-SONIC-B-3',0,7,13,7,6),(183,78,'RM-567-STAT1-A-3',0,4,7,4,3),(184,2,'RM-567-STAT1-G-3',0,4,8,4,4),(185,77,'RM-567-STAT2-B-1',0,59,84,35,24),(186,42,'RM-567-GLA-STA-B4',0,NULL,NULL,NULL,NULL),(187,41,'RM-567-GLA-STA-C3',1,NULL,NULL,NULL,NULL),(188,1,'RM-567-STAT2-F-3',0,5,10,5,5),(189,3,'RM-567-SONIC-B-4',0,7,13,7,6),(190,78,'RM-567-STAT1-D-1',0,4,7,4,3),(191,2,'RM-567-STAT1-G-4',0,4,8,4,4),(192,77,'RM-567-STAT2-C-1',0,59,84,35,24),(193,1,'RM-567-STAT2-F-4',0,5,10,5,5),(194,3,'RM-567-STAT3-C-1',0,7,13,7,6),(195,78,'RM-567-STAT2-D-1',0,4,7,4,3),(196,1,'RM-567-STAT3-B-2',0,5,10,5,5),(197,3,'RM-567-STAT3-D-1',0,7,13,7,6),(198,1,'RM-567-STAT3-B-3',0,5,10,5,5),(199,1,'RM-567-STAT3-B-F',0,5,10,5,5),(200,2,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(201,3,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(202,4,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(203,5,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(204,6,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(205,9,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(206,10,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(207,12,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(208,13,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(209,17,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(210,20,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(211,24,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(212,29,'RM-VTH',NULL,4,8,4,4),(213,30,'RM-VTH',NULL,12,24,12,12),(214,31,'RM-VTH',NULL,4,12,4,8),(215,32,'RM-VTH',NULL,12,24,12,12),(216,33,'RM-VTH',NULL,4,8,4,4),(217,36,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(218,39,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(219,78,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(220,86,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(221,87,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(222,88,'RM-VTH',NULL,NULL,NULL,1,NULL),(223,89,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(224,91,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(225,92,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(226,155,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(227,775,'RM-VTH',NULL,NULL,NULL,NULL,NULL),(228,1098,NULL,NULL,NULL,NULL,NULL,NULL),(229,88,NULL,NULL,NULL,NULL,1,NULL),(230,89,NULL,NULL,NULL,NULL,NULL,NULL),(231,90,NULL,NULL,NULL,NULL,NULL,NULL),(232,91,NULL,NULL,NULL,NULL,NULL,NULL),(233,1101,NULL,NULL,NULL,NULL,NULL,NULL),(234,1102,NULL,NULL,NULL,NULL,NULL,NULL),(235,1103,NULL,NULL,NULL,NULL,NULL,NULL),(236,1104,NULL,NULL,NULL,NULL,NULL,NULL),(237,1106,NULL,NULL,NULL,NULL,NULL,NULL),(238,1107,NULL,NULL,6,12,6,6),(239,1108,NULL,NULL,8,16,8,8),(240,1113,NULL,NULL,NULL,NULL,NULL,NULL),(241,1118,NULL,NULL,NULL,NULL,NULL,NULL),(242,1119,NULL,NULL,NULL,NULL,NULL,NULL),(243,1113,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `receiving_inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:11:16