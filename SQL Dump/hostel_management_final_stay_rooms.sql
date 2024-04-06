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
-- Table structure for table `stay_rooms`
--

DROP TABLE IF EXISTS `stay_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stay_rooms` (
  `Room Number` varchar(5) NOT NULL,
  `Availability Status` int NOT NULL,
  `Capacity` int NOT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay_rooms`
--

LOCK TABLES `stay_rooms` WRITE;
/*!40000 ALTER TABLE `stay_rooms` DISABLE KEYS */;
INSERT INTO `stay_rooms` VALUES ('A 304',1,2),('A 305',2,3),('A 403',1,2),('A 405',2,3),('B 203',1,2),('B 205',2,3),('B 304',0,2),('B 305',2,3),('B 403',1,2),('B 405',2,3),('C 203',1,2),('C 205',2,3),('C 304',0,2),('C 305',2,3),('C 403',1,2),('C 405',2,3),('D 203',1,3),('D 204',2,2),('D 303',3,3),('D 304',0,2),('D 403',2,3),('D 404',2,2),('E 203',1,3),('E 204',2,2),('E 303',2,3),('E 304',1,2),('E 403',3,3),('E 404',2,2),('F 203',1,3),('F 204',2,2),('F 303',2,3),('F 304',1,2),('F 403',3,3),('F 404',2,2),('G 203',1,3),('G 204',2,2),('G 303',2,3),('G 304',1,2),('G 403',3,3),('G 404',2,2),('H 203',1,3),('H 204',2,2),('H 303',2,3),('H 304',1,2),('H 403',3,3),('H 404',2,2),('I 203',1,3),('I 204',2,2),('I 303',2,3),('I 304',1,2),('I 403',3,3),('I 404',2,2),('J 203',1,3),('J 204',2,2),('J 303',2,3),('J 304',1,2),('J 403',3,3),('J 404',2,2),('K 203',1,3),('K 204',2,2),('K 303',2,3),('K 304',1,2),('K 403',3,3),('K 404',2,2),('L 203',1,3),('L 204',2,2),('L 303',2,3),('L 304',1,2),('L 403',3,3),('L 404',2,2);
/*!40000 ALTER TABLE `stay_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 17:51:53
