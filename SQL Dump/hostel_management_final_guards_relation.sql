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
-- Table structure for table `guards_relation`
--

DROP TABLE IF EXISTS `guards_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guards_relation` (
  `Staff ID` int NOT NULL,
  `Hostel Name` varchar(10) NOT NULL,
  `Shift` enum('day','night') NOT NULL,
  KEY `Guards_idx` (`Staff ID`),
  KEY `Hostel_idx` (`Hostel Name`),
  CONSTRAINT `Guards` FOREIGN KEY (`Staff ID`) REFERENCES `guards` (`Staff ID`),
  CONSTRAINT `Hostel` FOREIGN KEY (`Hostel Name`) REFERENCES `hostels` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guards_relation`
--

LOCK TABLES `guards_relation` WRITE;
/*!40000 ALTER TABLE `guards_relation` DISABLE KEYS */;
INSERT INTO `guards_relation` VALUES (101,'Aibaan','day'),(102,'Aibaan','night'),(103,'Beauki','day'),(104,'Beauki','night'),(105,'Chimair','day'),(106,'Chimair','night'),(107,'Duven','day'),(108,'Duven','night'),(109,'Emiet','day'),(110,'Emiet','night'),(101,'Firpeal','day'),(102,'Firpeal','night'),(103,'Griwiksh','day'),(104,'Griwiksh','night'),(105,'Hiqom','day'),(106,'Hiqom','night'),(107,'Ijokha','day'),(108,'Ijokha','night'),(109,'Jurqia','day'),(110,'Jurqia','night'),(101,'Kyzeel','day'),(102,'Kyzeel','night'),(103,'Lekhaag','day'),(104,'Lekhaag','night');
/*!40000 ALTER TABLE `guards_relation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 17:51:51
