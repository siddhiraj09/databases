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
-- Table structure for table `cleans_relation`
--

DROP TABLE IF EXISTS `cleans_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cleans_relation` (
  `Staff ID` int NOT NULL,
  `Room Number` varchar(5) NOT NULL,
  `Day` varchar(45) NOT NULL,
  `Time` varchar(7) NOT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`),
  KEY `Staff ID_idx` (`Staff ID`),
  CONSTRAINT `Staff ID` FOREIGN KEY (`Staff ID`) REFERENCES `housekeeper` (`Staff ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleans_relation`
--

LOCK TABLES `cleans_relation` WRITE;
/*!40000 ALTER TABLE `cleans_relation` DISABLE KEYS */;
INSERT INTO `cleans_relation` VALUES (122,'A 202','Friday','13:00'),(121,'A 205','Monday','16:00'),(121,'A 401','Monday','09:00'),(123,'B 203','Saturday','14:00'),(122,'B 402','Tuesday','10:30'),(124,'C 204','Sunday','15:00'),(123,'C 403','Wednesday','11:45'),(124,'D 404','Thursday','13:15'),(125,'E 405','Friday','14:30'),(126,'F 301','Saturday','15:45'),(127,'G 302','Sunday','16:30'),(128,'H 303','Monday','09:30'),(129,'J 304','Tuesday','10:45'),(130,'K 305','Wednesday','11:00'),(121,'L 201','Thursday','12:00');
/*!40000 ALTER TABLE `cleans_relation` ENABLE KEYS */;
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
