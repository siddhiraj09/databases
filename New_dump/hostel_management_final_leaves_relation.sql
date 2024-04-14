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
-- Table structure for table `leaves_relation`
--

DROP TABLE IF EXISTS `leaves_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaves_relation` (
  `Roll_Number` int NOT NULL,
  `Room Number` varchar(5) NOT NULL,
  `Departure Date` date NOT NULL,
  `Expected Arrival Date` date NOT NULL,
  `Lock Status of Room` enum('Locked','Not Locked') NOT NULL,
  `Lock Status of Cupboard` enum('Locked','Not Locked') NOT NULL,
  PRIMARY KEY (`Roll_Number`),
  UNIQUE KEY `Roll Number_UNIQUE` (`Roll_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves_relation`
--

LOCK TABLES `leaves_relation` WRITE;
/*!40000 ALTER TABLE `leaves_relation` DISABLE KEYS */;
INSERT INTO `leaves_relation` VALUES (23110001,'C 325','2024-02-10','2024-02-14','Locked','Not Locked'),(23110008,'L 405','2024-02-11','2024-02-16','Not Locked','Locked'),(23110010,'L 405','2024-02-13','2024-02-19','Locked','Not Locked'),(23110015,'A 303','2024-02-12','2024-02-17','Locked','Locked'),(23110018,'A 203','2024-02-14','2024-02-20','Locked','Not Locked');
/*!40000 ALTER TABLE `leaves_relation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  0:39:58
