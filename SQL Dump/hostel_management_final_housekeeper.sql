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
-- Table structure for table `housekeeper`
--

DROP TABLE IF EXISTS `housekeeper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housekeeper` (
  `Staff ID` int NOT NULL,
  `First Name` varchar(45) NOT NULL,
  `Middle Name` varchar(45) DEFAULT NULL,
  `Last Name` varchar(45) DEFAULT NULL,
  `Contact Number` varchar(45) NOT NULL,
  `Email ID` varchar(45) NOT NULL,
  `Date of Birth` date NOT NULL,
  `Date of Joining` date NOT NULL,
  `Gender` enum('Female','Male') NOT NULL,
  `Country` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Street/Society` varchar(45) NOT NULL,
  PRIMARY KEY (`Staff ID`),
  UNIQUE KEY `Staff ID_UNIQUE` (`Staff ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housekeeper`
--

LOCK TABLES `housekeeper` WRITE;
/*!40000 ALTER TABLE `housekeeper` DISABLE KEYS */;
INSERT INTO `housekeeper` VALUES (121,'Harshi','rjjgren','Chandrafari','08103124817','harshichandraferi@gmail.com','3333-03-12','1111-12-12','Female','India','Madhya Pradesh','Indore','F-103 Sakar Residency , Vijay Nagar'),(122,'Nirvi','Aniruddh','Kamdar','05935621357','rchadha@example.com','1980-05-28','2016-02-23','Female','India','Kerala','Chandigarh','108\nSagar Marg'),(123,'Aaina','Bhavin','Sandal','09244818502','batrashayak@example.com','1980-09-25','2017-03-14','Female','India','Kerala','Bhilwara','60, Agate Zila'),(124,'Farhan','Damini','Sood','01189403127','ivankaul@example.com','1981-09-30','2015-12-30','Male','India','Andhra Pradesh','Pune','H.No. 416, Dave Ganj'),(125,'Jhanvi','Tushar','Chander','00969345857','vwable@example.net','1980-08-24','2017-03-22','Female','India','Tripura','Gaya','50, Khalsa Path'),(126,'Samiha','Ela','Tank','+913695820767','agour@example.org','1985-07-21','2015-06-22','Male','India','Chhattisgarh','Kadapa','43/16\nMagar Nagar'),(127,'Kiaan','Mannat','Divan','07841015666','raunakkibe@example.com','1986-01-05','2016-05-16','Male','India','Rajasthan','Shivpuri','66, Sen'),(128,'Keya','Neelofar','Som','+915067741353','narora@example.com','1983-04-16','2016-06-13','Male','India','Assam','Belgaum','208, Sandal Marg'),(129,'Hazel','Armaan','Buch','02117444609','shalv71@example.org','1980-02-05','2016-07-11','Female','India','Rajasthan','Motihari','16, Bail Nagar'),(130,'Aarav','Arhaan','Ratta','+912927192082','baradrhea@example.org','1982-03-07','2016-03-28','Male','India','Meghalaya','Jodhpur','78, Madan Street');
/*!40000 ALTER TABLE `housekeeper` ENABLE KEYS */;
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
