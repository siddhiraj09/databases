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
-- Table structure for table `store_common_rooms`
--

DROP TABLE IF EXISTS `store_common_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_common_rooms` (
  `Room Number` varchar(5) NOT NULL,
  `Number of Commodity` int NOT NULL,
  `Type of Commodity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_common_rooms`
--

LOCK TABLES `store_common_rooms` WRITE;
/*!40000 ALTER TABLE `store_common_rooms` DISABLE KEYS */;
INSERT INTO `store_common_rooms` VALUES ('A 105',13,'5 chairs'),('B 105',5,'5 Rotating Fans'),('C 105',8,'8 Standees'),('D 105',10,'5 Speakers + 3 Projectors + 2 Screens'),('E 105',20,'20 Standees'),('F 105',6,'4 Basket Balls + 2 TT Sets'),('G 105',0,''),('H 105',4,'1 Washing Machine + 1 Table + 2 Chairs'),('I 105',10,'3 Tables + 2 Sofa + Washing Machine + 4 Chairs'),('J 105',6,'1 Washing Machine + 2 Bean Bags + 1 Table + 2 Chairs'),('K 105',6,'1 Washing Machine + 2 Bean Bags + 1 Table + 2 Chairs'),('L 105',0,'');
/*!40000 ALTER TABLE `store_common_rooms` ENABLE KEYS */;
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
