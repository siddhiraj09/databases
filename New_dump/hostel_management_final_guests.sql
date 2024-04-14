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
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `Guest ID` int NOT NULL,
  `First Name` varchar(45) NOT NULL,
  `Middle Name` varchar(45) DEFAULT NULL,
  `Last Name` varchar(45) DEFAULT NULL,
  `Contact Number` varchar(45) NOT NULL,
  `Email ID` varchar(45) NOT NULL,
  `Date of Birth` date NOT NULL,
  `Date of Arrival` date NOT NULL,
  `Date of Departure` date NOT NULL,
  `Accomodation Charges` int NOT NULL,
  `Gender` enum('Female','Male') NOT NULL,
  `Country` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Street/Society` varchar(45) NOT NULL,
  `Purpose of Visit` varchar(45) NOT NULL,
  PRIMARY KEY (`Guest ID`),
  UNIQUE KEY `Guest ID_UNIQUE` (`Guest ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1001,'Anahita','Darshit','Borah','+911267835006','dhruvvarma@example.com','1986-01-05','2023-10-13','2023-10-27',5202,'Female','India','Rajasthan','Bhavnagar','H.No. 68\nBali Circle','Speakers'),(1002,'Lagan','Aaina','Randhawa','04103909852','hdayal@example.net','1984-10-10','2023-10-24','2023-10-27',250,'Female','India','Madhya Pradesh','Guna','941\nBrahmbhatt Nagar','Events'),(1003,'Eshani','Anvi','Kalla','06016922016','arhaanrau@example.com','1985-01-07','2023-10-19','2023-10-26',1037,'Female','India','Kerala','Dindigul','88/058, Amble Circle','Events'),(1004,'Shalv','Hiran','Gera','+919861491819','aradhyabadal@example.net','1988-02-10','2023-10-27','2023-10-27',4224,'Male','India','Nagaland','Belgaum','39, Ghosh Chowk','Events'),(1005,'Krish','Madhav','Kaul','02480154501','dhingrazaina@example.org','1981-01-30','2023-10-29','2023-10-30',8966,'Male','India','Gujarat','Sultan Pur Majra','88, Bhat Marg','Speakers');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  0:39:55
