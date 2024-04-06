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
-- Table structure for table `furniture_utils`
--

DROP TABLE IF EXISTS `furniture_utils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture_utils` (
  `Room Number` varchar(5) NOT NULL,
  `Number of Chairs` int NOT NULL,
  `Number of Tables` int NOT NULL,
  `Number of Beds` int NOT NULL,
  `Number of Matress` int NOT NULL,
  `Number of Curtains` int NOT NULL,
  `Company of Extra Cupboard` set('Jalaram','Godrej') DEFAULT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture_utils`
--

LOCK TABLES `furniture_utils` WRITE;
/*!40000 ALTER TABLE `furniture_utils` DISABLE KEYS */;
INSERT INTO `furniture_utils` VALUES ('A 203',2,1,1,2,2,'Godrej'),('A 204',1,1,1,2,1,'Jalaram'),('A 205',3,1,1,2,1,'Jalaram'),('A 303',1,1,1,2,1,'Godrej'),('A 304',2,1,1,2,1,'Jalaram'),('A 305',3,1,1,2,1,'Jalaram'),('A 403',2,1,1,2,1,'Godrej'),('A 404',1,1,1,2,1,'Jalaram'),('A 405',3,1,1,2,1,'Jalaram'),('B 203',2,1,1,2,1,'Godrej'),('B 204',1,1,1,2,1,'Jalaram'),('B 205',3,1,1,2,1,'Jalaram'),('B 303',1,1,1,2,1,'Godrej'),('B 304',2,1,1,2,1,'Jalaram'),('B 305',3,1,1,2,1,'Jalaram'),('B 403',2,1,1,2,1,'Godrej'),('B 404',1,1,1,2,1,'Jalaram'),('B 405',3,1,1,2,1,'Jalaram'),('C 203',2,1,1,2,1,'Godrej'),('C 204',1,1,1,2,1,'Jalaram'),('C 205',3,1,1,2,1,'Jalaram'),('C 303',1,1,1,2,1,'Godrej'),('C 304',2,1,1,2,1,'Jalaram'),('C 305',3,1,1,2,1,'Jalaram'),('C 403',2,1,1,2,1,'Godrej'),('C 404',1,1,1,2,1,'Jalaram'),('C 405',3,1,1,2,1,'Jalaram'),('D 203',3,1,1,2,1,'Godrej'),('D 204',2,1,1,2,1,'Jalaram'),('D 205',1,1,1,2,1,'Jalaram'),('D 303',3,1,1,2,1,'Godrej'),('D 304',2,1,1,2,1,'Jalaram'),('D 305',1,1,1,2,1,'Jalaram'),('D 403',3,1,1,2,1,'Godrej'),('D 404',2,1,1,2,1,'Jalaram'),('D 405',1,1,1,2,1,'Jalaram'),('E 203',3,1,1,2,1,'Godrej'),('E 204',2,1,1,2,1,'Jalaram'),('E 205',1,1,1,2,1,'Jalaram'),('E 303',3,1,1,2,1,'Godrej'),('E 304',2,1,1,2,1,'Jalaram'),('E 305',1,1,1,2,1,'Jalaram'),('E 403',3,1,1,2,1,'Godrej'),('E 404',2,1,1,2,1,'Jalaram'),('E 405',1,1,1,2,1,'Jalaram'),('F 203',3,1,1,2,1,'Godrej'),('F 204',2,1,1,2,1,'Jalaram'),('F 205',1,1,1,2,1,'Jalaram'),('F 303',3,1,1,2,1,'Godrej'),('F 304',2,1,1,2,1,'Jalaram'),('F 305',1,1,1,2,1,'Jalaram'),('F 403',3,1,1,2,1,'Godrej'),('F 404',2,1,1,2,1,'Jalaram'),('F 405',1,1,1,2,1,'Jalaram'),('G 203',3,1,1,2,1,'Godrej'),('G 204',2,1,1,2,1,'Jalaram'),('G 205',1,1,1,2,1,'Jalaram'),('G 303',3,1,1,2,1,'Godrej'),('G 304',2,1,1,2,1,'Jalaram'),('G 305',1,1,1,2,1,'Jalaram'),('G 403',3,1,1,2,1,'Godrej'),('G 404',2,1,1,2,1,'Jalaram'),('G 405',1,1,1,2,1,'Jalaram'),('H 203',3,1,1,2,1,'Godrej'),('H 204',2,1,1,2,1,'Jalaram'),('H 205',1,1,1,2,1,'Jalaram'),('H 303',3,1,1,2,1,'Godrej'),('H 304',2,1,1,2,1,'Jalaram'),('H 305',1,1,1,2,1,'Jalaram'),('H 403',3,1,1,2,1,'Godrej'),('H 404',2,1,1,2,1,'Jalaram'),('H 405',1,1,1,2,1,'Jalaram'),('I 203',3,1,1,2,1,'Godrej'),('I 204',2,1,1,2,1,'Jalaram'),('I 205',1,1,1,2,1,'Jalaram'),('I 303',3,1,1,2,1,'Godrej'),('I 304',2,1,1,2,1,'Jalaram'),('I 305',1,1,1,2,1,'Jalaram'),('I 403',3,1,1,2,1,'Godrej'),('I 404',2,1,1,2,1,'Jalaram'),('I 405',1,1,1,2,1,'Jalaram'),('J 203',3,1,1,2,1,'Godrej'),('J 204',2,1,1,2,1,'Jalaram'),('J 205',1,1,1,2,1,'Jalaram'),('J 303',3,1,1,2,1,'Godrej'),('J 304',2,1,1,2,1,'Jalaram'),('J 305',1,1,1,2,1,'Jalaram'),('J 403',3,1,1,2,1,'Godrej'),('J 404',2,1,1,2,1,'Jalaram'),('J 405',1,1,1,2,1,'Jalaram'),('K 203',3,1,1,2,1,'Godrej'),('K 204',2,1,1,2,1,'Jalaram'),('K 205',1,1,1,2,1,'Jalaram'),('K 303',3,1,1,2,1,'Godrej'),('K 304',2,1,1,2,1,'Jalaram'),('K 305',1,1,1,2,1,'Jalaram'),('K 403',3,1,1,2,1,'Godrej'),('K 404',2,1,1,2,1,'Jalaram'),('K 405',1,1,1,2,1,'Jalaram'),('L 203',3,1,1,2,1,'Godrej'),('L 204',2,1,1,2,1,'Jalaram'),('L 205',1,1,1,2,1,'Jalaram'),('L 303',3,1,1,2,1,'Godrej'),('L 304',2,1,1,2,1,'Jalaram'),('L 305',1,1,1,2,1,'Jalaram'),('L 403',3,1,1,2,1,'Godrej'),('L 404',2,1,1,2,1,'Jalaram'),('L 405',1,1,1,2,1,'Jalaram');
/*!40000 ALTER TABLE `furniture_utils` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 17:51:52
