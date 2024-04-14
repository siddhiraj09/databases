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
-- Table structure for table `guards`
--

DROP TABLE IF EXISTS `guards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guards` (
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
-- Dumping data for table `guards`
--

LOCK TABLES `guards` WRITE;
/*!40000 ALTER TABLE `guards` DISABLE KEYS */;
INSERT INTO `guards` VALUES (101,'Yuvaan','Lakshay','Bassi','09968302874','imagar@example.org','1985-11-13','2015-06-22','Male','India','Telangana','Kanpur','95, Barman Road'),(102,'Mannat','Aniruddh','Raja','5274197436','gsharma@example.com','1986-07-25','2016-01-31','Male','India','Himachal Pradesh','Varanasi','H.No. 99, Balay Chowk'),(103,'Samiha','Anay','Bhardwaj','09220163044','wbhardwaj@example.com','1982-11-26','2016-06-29','Female','India','Uttar Pradesh','Hosur','H.No. 88, Buch Nagar'),(104,'Pranay','Shalv','Biswas','01986149181','aradhyabadal@example.net','1987-02-19','2017-03-14','Male','India','Bihar','Belgaum','39, Ghosh Chowk'),(105,'Ira','Krish','Chokshi','05248015450','rameshabram@example.com','1981-01-30','2016-05-22','Male','India','Tamil Nadu','Panihati','16\nLata Circle'),(106,'Anahi','Samarth','Chahal','03640004155','badal38@example.org','1979-06-22','2017-01-28','Female','India','Arunachal Pradesh','Gurgaon','34/58\nWalia Chowk'),(107,'Umang','Jayan','Lad','+913760314122','wamble@example.com','1985-11-29','2016-07-08','Female','India','Mizoram','Panchkula','H.No. 66\nSarkar Chowk'),(108,'Taimur','Krish','Dash','+913422848023','twagle@example.org','1979-12-05','2016-11-18','Male','India','Chhattisgarh','Shahjahanpur','07/306\nHalder Street'),(109,'Eshani','Bhamini','Behl','+911801036746','nitara64@example.net','1980-06-16','2016-11-28','Male','India','Odisha','Bhagalpur','H.No. 817, Kar Ganj'),(110,'Riaan','Abram','Ram','+915554842073','egara@example.com','1984-09-20','2016-03-11','Female','India','Meghalaya','Bathinda','96/696\nDixit Circle');
/*!40000 ALTER TABLE `guards` ENABLE KEYS */;
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
