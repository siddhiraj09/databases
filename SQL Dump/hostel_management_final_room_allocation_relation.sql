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
-- Table structure for table `room_allocation_relation`
--

DROP TABLE IF EXISTS `room_allocation_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_allocation_relation` (
  `Student Roll Number` int NOT NULL,
  `Room Number` varchar(5) NOT NULL,
  PRIMARY KEY (`Student Roll Number`),
  UNIQUE KEY `Student Roll Number_UNIQUE` (`Student Roll Number`),
  KEY `Room Number_idx` (`Room Number`),
  CONSTRAINT `Room Number` FOREIGN KEY (`Room Number`) REFERENCES `rooms` (`Room Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_allocation_relation`
--

LOCK TABLES `room_allocation_relation` WRITE;
/*!40000 ALTER TABLE `room_allocation_relation` DISABLE KEYS */;
INSERT INTO `room_allocation_relation` VALUES (23110018,'A 303'),(23110057,'A 304'),(23110030,'A 403'),(23110007,'B 203'),(23110049,'B 204'),(23110019,'B 303'),(23110059,'B 304'),(23110036,'B 403'),(23110012,'C 203'),(23110056,'C 204'),(23110025,'C 303'),(23110039,'C 403'),(23110015,'I 203'),(23110027,'I 303'),(23110040,'I 403');
/*!40000 ALTER TABLE `room_allocation_relation` ENABLE KEYS */;
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
