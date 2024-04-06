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
-- Table structure for table `takes_care_relation`
--

DROP TABLE IF EXISTS `takes_care_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `takes_care_relation` (
  `Hostel Name` varchar(10) NOT NULL,
  `Staff ID` int NOT NULL,
  `Shift` enum('day','night') DEFAULT NULL,
  KEY `Hostel Name_idx` (`Hostel Name`),
  KEY `Staff ID_idx` (`Staff ID`),
  CONSTRAINT `Hostel_` FOREIGN KEY (`Hostel Name`) REFERENCES `hostels` (`Name`),
  CONSTRAINT `Staff_ID` FOREIGN KEY (`Staff ID`) REFERENCES `caretaker` (`Staff ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes_care_relation`
--

LOCK TABLES `takes_care_relation` WRITE;
/*!40000 ALTER TABLE `takes_care_relation` DISABLE KEYS */;
INSERT INTO `takes_care_relation` VALUES ('Aibaan',151,'day'),('Beauki',152,'night'),('Chimair',153,'day'),('Duven',154,'night'),('Emiet',155,'night'),('Firpeal',156,'night'),('Griwiksh',157,'day'),('Hiqom',158,'night'),('Ijokha',159,'day'),('Jurqia',160,'night'),('Kyzeel',161,'day'),('Lekhaag',162,'night'),('Emiet',163,'day'),('Kyzeel',164,'night');
/*!40000 ALTER TABLE `takes_care_relation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 17:51:50
