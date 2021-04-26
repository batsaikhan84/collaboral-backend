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
-- Table structure for table `chemicals`
--

DROP TABLE IF EXISTS `chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chemicals` (
  `pk_chemical` int(11) NOT NULL AUTO_INCREMENT,
  `cas` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `container_size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `health_hr` int(11) DEFAULT NULL,
  `fire_hr` int(11) DEFAULT NULL,
  `special_hr` int(11) DEFAULT NULL,
  `special_notes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pk_inventory` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_chemical`),
  KEY `chemicals_fk` (`pk_inventory`),
  CONSTRAINT `chemicals_fk` FOREIGN KEY (`pk_inventory`) REFERENCES `master_list` (`pk_inventory`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chemicals`
--

LOCK TABLES `chemicals` WRITE;
/*!40000 ALTER TABLE `chemicals` DISABLE KEYS */;
INSERT INTO `chemicals` VALUES (1,'7732-18-5    64-18-6','Liquid','4L ',2,0,0,'',440),(2,'0000057556 0068603429      0068412544    0061490816    0009004824      0007732185','Liquid','5L',0,1,0,'',441),(3,'0000057556 0068603429      0068412544    0061490816    0009004824      0007732185','Liquid','1L',0,1,0,'',442),(4,'71-23-8','Liquid','100mL',2,3,0,'',443),(5,'71-23-8','Liquid','4L ',2,3,0,'',444),(6,'67-63-0','Liquid','4L',1,3,0,'',445),(7,'540-84-1','Liquid','4L',2,3,0,'',446),(8,'10043-35-3','Liquid','4L',NULL,NULL,NULL,'',447),(9,'64-19-7','Liquid','500mL',3,2,0,'',448),(10,'64-19-7','Liquid','500mL',3,2,0,'',449),(11,'67-64-1','Liquid','4L',2,3,0,'',450),(12,'67-64-1','Liquid','4L',2,3,0,'',451),(13,'75-05-8','Liquid','4L',2,3,0,'',452),(14,'75-05-8','Liquid','4L',2,3,0,'',453),(15,'64-18-6      75-05-8','Liquid','4L',2,3,0,'',454),(16,'132259-10-0','Gas','304cf',0,0,0,'',455),(17,'132259-10-0','Gas','304cf',0,0,0,'',456),(18,'68081-81-2     7758-29-4     7722-88-5','Solid','15g pkts',1,0,0,'',457),(19,'12522-88-2','Solid','100g',NULL,NULL,NULL,'',458),(20,'7664-41-7','Gas','142cf',3,1,0,'',459),(21,'631-61-8','Solid','500g',1,1,1,'',460),(22,'631-61-8     7732-18-5','Liquid','4L ',1,0,0,'',461),(23,'1336-21-6\n7732-18-5     766-41-7 ','Liquid','500mL',3,1,0,'',462),(24,'7664-41-7    7732-18-5      1336-21-6','Liquid','500mL',3,0,0,'',463),(25,'1336-21-6','Liquid','500mL',3,1,0,'',464),(26,'7440-37-1','Gas','304cf',0,0,0,'SASA',465),(27,'9001-45-0','Liquid','25mL',2,0,0,'',466),(28,'7687-52-9','Liquid','3 L',3,0,0,'',467),(29,'7732-18-5        34722-90-2     ','Liquid','500mL',1,0,0,'',468),(30,'25561-30-2','Liquid','10g',3,3,0,'',469),(31,'67-66-3','Liquid','500mL',2,0,0,'',470),(32,'60-27-5','Solid','25 g',0,1,0,'',471),(33,'122-39-4','Solid','5 gram',2,1,0,'',472),(34,'7778-18-9    7646-79-9','Solid','5lb',2,0,0,'',473),(35,'64-17-5     106-97-8     74-98-6','Aerosol','1.03 lb',1,3,0,'',474),(36,'64-17-5','Liquid','500mL',2,3,1,'',475),(37,'189-08-1','Liquid','5 g',2,3,0,'',476),(38,'141-78-6','Liquid','4L',2,3,0,'',477),(39,'141-78-6','Liquid','4L',2,3,0,'',478),(41,'64-17-5','Liquid','100mL',2,3,1,'',479),(42,'64-17-5\n141-78-6\n7732-18-5\n67-56-1','Liquid','1L',3,3,0,'',480),(43,'64-17-5\n141-78-6\n7732-18-5\n67-56-1\n108-10-1','Liquid','1L',3,3,0,'',481),(44,'6381-92-6','Solid','100 gram',2,1,0,'',482),(45,'','Liquid','6.2L',0,1,0,'',483),(46,'16359-54-9','Solid','25 mg',2,1,1,'',484),(47,'64-18-6','Liquid','10mL',3,2,1,'',485),(48,'64-18-6','Liquid','50mL',NULL,NULL,NULL,'',486),(49,'64-18-6','Liquid','50mL',3,2,0,'',487),(50,'7440-59-7','Gas','304cf',0,0,0,'SASA',488),(51,'110-54-3         96-37-7      96-14-0      107-83-5','Liquid','4L',1,3,0,'',489),(52,'110-54-3','Liquid','4L',1,3,0,'',490),(53,'920-66-1','Liquid','10g',3,0,0,'',491),(54,'7647-01-0\n7732-18-5','Liquid','500mL',3,0,0,'',492),(55,'5470-11-1\n7732-18-5','Liquid','100mL',1,0,0,'',493),(56,'1333-74-0','Gas','304cf',1,4,0,'',494),(57,'9001-45-0','Liquid','50mL',2,0,0,'',495),(58,'540-84-1','Liquid','4L',3,3,0,'',496),(59,'540-84-1','Liquid','4L',3,3,0,'',497),(60,'67-63-0','Liquid','4L',2,3,0,'',498),(61,'67-63-0','Liquid','4L',1,3,0,'',499),(62,'67-56-1','Liquid','4L',2,3,0,'',500),(63,'67-63-0','Liquid','500mL',2,3,0,'',501),(64,'22071-15-4','Solid','1 g',2,0,0,'',502),(65,'1310-73-2     7732-18-5     9003-01-4     526-95-4','Liquid','1Gal',2,0,0,'',503),(66,'95713-52-3','Solid','50 mg',2,0,0,'',504),(67,'73980-71-9','Liquid','10g',3,2,0,'',505),(68,'74-82-8','Gas','304cf',2,4,0,'',506),(69,'67-56-1','Liquid','19L',1,3,0,'',507),(70,'67-56-1','Liquid','4L',1,3,0,'',508),(71,'67-56-1','Liquid','20L',1,3,0,'',509),(72,'67-56-1','Liquid','4L',1,3,0,'',510),(73,'67-56-1','Liquid','4L',1,3,0,'',511),(74,'593-56-6','Solid','25g',3,1,1,'',512),(75,'75-09-2','Liquid','4L',2,1,0,'',513),(76,'75-09-2','Liquid','4L',2,1,0,'',514),(77,'75-09-2','Liquid','4L',2,1,0,'',515),(78,'1344-28-1       215-691-6','Solid','1 Kg',1,0,0,'',516),(79,'','Liquid','1L',NULL,NULL,NULL,'',517),(80,'8042-47-5','Liquid','1 L',NULL,NULL,NULL,'',518),(81,'77377-52-7','Liquid','25g',2,2,0,'',519),(82,'','Liquid','946 mL',NULL,NULL,NULL,'',520),(83,'109-69-3','Liquid','4L',3,3,0,'',521),(84,'773-18-5     7664-38-2    9003-11-6','Liquid','1L',2,0,0,'',522),(85,'7727-37-9','Gas','304cf',0,0,0,'SASA',523),(86,'497-19-8     6834-92-0     7758-29-4     51580-86-0    ','Solid','10lb',2,0,0,'',524),(87,'144-62-7   5329-14-6','Liquid','16 oz',2,0,0,'',525),(88,'356-42-3','Liquid','10g',3,0,0,'',526),(89,'7664-38-2','Liquid','100mL',3,0,0,'',527),(90,'7732-18-5\n7778-77-0\n7758-11-4','Liquid','100mL',NULL,NULL,NULL,'',528),(91,'36791-04-5','Solid','10 mg',1,1,0,'',529),(92,'69-72-7','Solid','100 g',2,0,0,'',530),(93,'64742-56-9        64742-89-8        124-38-9    ','Aerosol','340 g',NULL,NULL,NULL,'',531),(94,'','Solid','100 g',NULL,NULL,NULL,'',532),(95,'7732-18-5 ','Liquid','8oz',0,0,0,'',533),(96,'6131-90-4','Solid','500g',1,0,1,'',534),(97,'144-55-8','Solid','500g',0,0,1,'',535),(98,'144-55-8','Solid','6.8 kg',0,0,0,'',536),(99,'497-19-8    147732-60-3     9002-92-0','Solid','3lb',NULL,NULL,NULL,'',537),(100,'497-19-8','Solid','500g',2,0,1,'',538),(101,'151-21-3','Solid','500 gram',3,1,1,'',539),(102,'151-21-3','Solid','100 gram',3,1,1,'',540),(103,'1310-73-2','Liquid','1L',3,0,0,'',541),(104,'1310-73-2\n7732-18-5','Liquid','1L',3,0,1,'',542),(105,'1310-73-2\n7732-18-5','Liquid','1L',3,0,0,'',543),(106,'1310-73-2\n7732-18-5','Liquid','1L',3,0,1,'',544),(107,'7681-52-9','Liquid','4L',3,0,0,'',545),(108,'7681-52-9','Liquid','3.57L',3,0,0,'',546),(109,'7790-28-5','Solid','100g',3,3,3,'',547),(110,'7558-79-4','Solid','500g',1,0,1,'',548),(111,'10049-21-5\n7558-80-7','Solid','500g',1,0,1,'',549),(112,'','Solid','34 g',2,0,0,'',550),(113,'','Liquid','1 Gallon',NULL,NULL,NULL,'',551),(114,'110-15-6','Solid','250g',3,1,0,'',552),(115,'18162-48-6','Solid','25g',3,3,3,'',553),(116,'1634-04-4','Liquid','1L',2,3,0,'',554),(117,'109-99-9','Liquid','100 mL',2,3,1,'',555),(118,'407-25-0','Liquid','25g',3,0,2,'',556),(119,'9/7/7719','Liquid','5mL',3,0,0,'',557),(120,'67-56-1','Liquid','10g',3,3,0,'',558),(121,'68603-42-9        3380-34-5','Liquid','800mL',NULL,NULL,NULL,'',559),(122,'77-86-1','Liquid','1L',1,1,1,'',560),(123,'7732-18-5   77-86-1   610769-35-2','Liquid','4 L',2,0,0,'',561),(124,'','Liquid','1 Gal',0,0,0,'',562),(125,'','Liquid','1 L',0,1,0,'',563),(126,'232-455-8          8042-47-5      01-2119487078-27-XXXX          ','Liquid','1 L',NULL,NULL,NULL,'',564),(127,'68037-01-4','Liquid','1 L',0,1,0,'',565),(128,'68037-01-4','Liquid','1 gal',0,1,0,'',566),(129,'','Liquid','1 L',NULL,NULL,NULL,'',567),(130,'','Liquid','1 L',0,1,0,'',568),(131,'64742-54-7','Liquid','1L',NULL,NULL,NULL,'',569),(132,'7732-18-5','Liquid','4L ',0,0,0,'',570),(133,'169-47-8 7732-18-5','Liquid','100 mL',NULL,NULL,NULL,'',571),(134,'64742-47-8       64742-56-9        64742-65-0      64742-53-6        64742-54-7       64742-71-8        64742-47-8       124-38-9','Aerosol','453 g',1,4,0,'',572),(135,'','Liquid','5.08L',1,1,0,'',573),(136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,69),(137,NULL,NULL,NULL,NULL,NULL,NULL,NULL,70),(138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,71),(139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74),(140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,94),(141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,95),(142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,96),(143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,105),(144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,700),(145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,701),(146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,703),(147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,704),(148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,705),(149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,706),(150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,707),(151,NULL,NULL,NULL,NULL,NULL,NULL,NULL,715),(152,NULL,NULL,NULL,NULL,NULL,NULL,NULL,720),(153,NULL,NULL,NULL,NULL,NULL,NULL,NULL,721),(154,NULL,NULL,NULL,NULL,NULL,NULL,NULL,734),(155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,744),(156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,757),(157,NULL,NULL,NULL,NULL,NULL,NULL,NULL,758),(158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,759),(159,NULL,NULL,NULL,NULL,NULL,NULL,NULL,760),(160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,761),(161,NULL,NULL,NULL,NULL,NULL,NULL,NULL,762),(162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,984),(163,NULL,NULL,NULL,NULL,NULL,NULL,NULL,990),(164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000),(165,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1040),(166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1041),(167,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1054),(168,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1056),(169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1057),(170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1058),(171,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1059),(200,'testCas','testState','testL',0,0,0,'testNotes',1089);
/*!40000 ALTER TABLE `chemicals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:11:13
