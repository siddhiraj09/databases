-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hostel_management_final
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `has_relation`
--

DROP TABLE IF EXISTS `has_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has_relation` (
  `Wi-Fi ID` varchar(10) NOT NULL,
  `Roll Number` int NOT NULL,
  KEY `Wi_Fi_idx` (`Wi-Fi ID`),
  KEY `Roll_Number_idx` (`Roll Number`),
  CONSTRAINT `Roll_Number` FOREIGN KEY (`Roll Number`) REFERENCES `students` (`Roll Number`),
  CONSTRAINT `Wi_Fi` FOREIGN KEY (`Wi-Fi ID`) REFERENCES `net_id_credentials` (`Wi-Fi ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_relation`
--

LOCK TABLES `has_relation` WRITE;
/*!40000 ALTER TABLE `has_relation` DISABLE KEYS */;
INSERT INTO `has_relation` VALUES ('P1',23110001),('P2',23110002),('P3',23110003),('P4',23110004),('P5',23110005),('P6',23110006),('P7',23110007),('P8',23110008),('P9',23110009),('P10',23110010),('P11',23110011),('P12',23110012),('P13',23110013),('P14',23110014),('P15',23110015),('P16',23110016),('P17',23110017),('P18',23110018),('P19',23110019),('P20',23110020),('P21',23110021),('P22',23110022),('P23',23110023),('P24',23110024),('P25',23110025),('P26',23110026),('P27',23110027),('P28',23110028),('P29',23110029),('P30',23110030),('P31',23110031),('P32',23110032),('P33',23110033),('P34',23110034),('P35',23110035),('P36',23110036),('P37',23110037),('P38',23110038),('P39',23110039),('P40',23110040),('P41',23110041),('P42',23110042),('P43',23110043),('P44',23110044),('P45',23110045),('P46',23110046),('P47',23110047),('P48',23110048),('P49',23110049),('P50',23110050),('P51',23110051),('P52',23110052),('P53',23110053),('P54',23110054),('P55',23110055),('P56',23110056),('P57',23110057),('P58',23110058),('P59',23110059),('P60',23110060);
/*!40000 ALTER TABLE `has_relation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  0:39:54
