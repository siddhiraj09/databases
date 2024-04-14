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
-- Table structure for table `washrooms`
--

DROP TABLE IF EXISTS `washrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `washrooms` (
  `Room Number` varchar(5) NOT NULL,
  `Number of Commodes` int NOT NULL,
  `Number of Bathing Cabinets` int NOT NULL,
  `Number of WashBasins` int NOT NULL,
  `Number of Handwash` int NOT NULL,
  `Number of Dustbins` int NOT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `washrooms`
--

LOCK TABLES `washrooms` WRITE;
/*!40000 ALTER TABLE `washrooms` DISABLE KEYS */;
INSERT INTO `washrooms` VALUES ('A 201',2,1,2,1,1),('A 301',3,2,3,2,2),('A 401',4,3,4,3,3),('B 201',2,1,2,1,1),('B 301',3,2,3,2,2),('B 401',4,3,4,3,3),('C 201',2,1,2,1,1),('C 301',3,2,3,2,2),('C 401',4,3,4,3,3),('D 201',2,1,2,1,1),('D 301',3,2,3,2,2),('D 401',4,3,4,3,3),('E 201',2,1,2,1,1),('E 301',3,2,3,2,2),('E 401',4,3,4,3,3),('F 201',2,1,2,1,1),('F 301',3,2,3,2,2),('F 401',4,3,4,3,3),('G 201',2,1,2,1,1),('G 301',3,2,3,2,2),('G 401',4,3,4,3,3),('H 201',2,1,2,1,1),('H 301',3,2,3,2,2),('H 401',4,3,4,3,3),('I 201',2,1,2,1,1),('I 301',3,2,3,2,2),('I 401',4,3,4,3,3),('J 201',2,1,2,1,1),('J 301',3,2,3,2,2),('J 401',4,3,4,3,3),('K 201',2,1,2,1,1),('K 301',3,2,3,2,2),('K 401',4,3,4,3,3),('L 201',2,1,2,1,1),('L 301',3,2,3,2,2),('L 401',4,3,4,3,3);
/*!40000 ALTER TABLE `washrooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  0:39:57
