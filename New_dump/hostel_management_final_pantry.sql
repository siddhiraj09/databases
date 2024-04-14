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
-- Table structure for table `pantry`
--

DROP TABLE IF EXISTS `pantry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pantry` (
  `Room Number` varchar(5) NOT NULL,
  `Induction Status` enum('present','absent') NOT NULL,
  `Refrigerator Status` enum('present','absent') NOT NULL,
  `Microwave Status` enum('present','absent') NOT NULL,
  `Water Cooler Status` enum('present','absent') NOT NULL,
  `Number of Dustbins` int NOT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantry`
--

LOCK TABLES `pantry` WRITE;
/*!40000 ALTER TABLE `pantry` DISABLE KEYS */;
INSERT INTO `pantry` VALUES ('A 202','present','present','absent','absent',1),('A 302','absent','absent','present','absent',2),('A 402','present','absent','present','present',0),('B 202','absent','absent','present','present',1),('B 302','present','present','absent','absent',2),('B 402','present','absent','absent','present',0),('C 202','present','absent','present','absent',1),('C 302','absent','present','present','absent',2),('C 402','present','absent','absent','present',0),('D 202','absent','present','present','absent',1),('D 302','present','absent','absent','present',2),('D 402','absent','absent','present','present',0),('E 202','present','absent','absent','present',1),('E 302','absent','absent','present','absent',2),('E 402','present','present','absent','absent',0),('F 202','absent','absent','absent','present',1),('F 302','present','absent','present','absent',2),('F 402','absent','present','absent','present',0),('G 202','present','present','absent','absent',1),('G 302','absent','absent','present','absent',2),('G 402','present','absent','absent','present',0),('H 202','present','absent','absent','present',1),('H 302','absent','absent','present','absent',2),('H 402','present','absent','present','absent',0),('I 202','absent','present','absent','present',1),('I 302','present','absent','absent','absent',2),('I 402','absent','absent','present','absent',0),('J 202','present','absent','present','absent',1),('J 302','absent','absent','absent','present',2),('J 402','present','absent','present','absent',0),('K 202','absent','present','absent','present',1),('K 302','present','absent','absent','absent',2),('K 402','absent','present','absent','present',0),('L 202','present','absent','present','absent',1),('L 302','absent','absent','absent','present',2),('L 402','present','absent','absent','absent',0);
/*!40000 ALTER TABLE `pantry` ENABLE KEYS */;
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
