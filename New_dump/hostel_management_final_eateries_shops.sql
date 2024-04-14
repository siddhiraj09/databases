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
-- Table structure for table `eateries_shops`
--

DROP TABLE IF EXISTS `eateries_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eateries_shops` (
  `Room Number` varchar(5) NOT NULL,
  `Name of Shop` varchar(45) DEFAULT NULL,
  `Owner's Name` varchar(45) DEFAULT NULL,
  `Opening Time` varchar(7) DEFAULT NULL,
  `Closing Time` varchar(7) DEFAULT NULL,
  `Holidays` varchar(45) DEFAULT NULL,
  `Owner's Contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`),
  UNIQUE KEY `Name of Shop_UNIQUE` (`Name of Shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eateries_shops`
--

LOCK TABLES `eateries_shops` WRITE;
/*!40000 ALTER TABLE `eateries_shops` DISABLE KEYS */;
INSERT INTO `eateries_shops` VALUES ('C 101','Atul Bakery','Michalel Johnson','12:30','4:30','None','8103124817'),('C 102',NULL,NULL,NULL,NULL,NULL,NULL),('D 101','Amul','Emily Brown','10:00','22:00','Wednesday','+91 4445556666'),('D 102','Krupa General Store','William Wilson','07:00','19:00','Thursday','+91 7778889999'),('E 101','Tea Post','John Doe','08:00','20:00','Sunday','+91 1234567890'),('E 102','Mahaveer','Jane Smith','09:00','21:00','Tuesday','+91 9876543210'),('F 101','JK Grocery Store','Emma Davis','08:30','20:30','Friday','+91 1112223344'),('H 101','Dawat','Matthew Miller','10:30','22:30','Saturday','+91 5556667777'),('H 102','VS Fastfood','Olivia Taylor','09:30','21:30','Sunday','+91 9998887777'),('H 103','Go Insta Cafe','Daniel Martinez','08:00','20:00','Monday','+91 1113334444'),('I 101',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `eateries_shops` ENABLE KEYS */;
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
