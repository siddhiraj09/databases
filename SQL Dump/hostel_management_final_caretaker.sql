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
-- Table structure for table `caretaker`
--

DROP TABLE IF EXISTS `caretaker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caretaker` (
  `Staff ID` int NOT NULL,
  `First Name` varchar(45) NOT NULL,
  `Middle Name` varchar(45) DEFAULT NULL,
  `Last Name` varchar(45) DEFAULT NULL,
  `Contact Number` varchar(45) NOT NULL,
  `Email ID` varchar(45) NOT NULL,
  `Date of Birth` date NOT NULL,
  `Date of Joining` varchar(45) NOT NULL,
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
-- Dumping data for table `caretaker`
--

LOCK TABLES `caretaker` WRITE;
/*!40000 ALTER TABLE `caretaker` DISABLE KEYS */;
INSERT INTO `caretaker` VALUES (151,'Prerak','Drishya','Chacko','2988875464','hsachdev@example.org','1980-03-13','2016-01-08','Male','India','Manipur','Surat','14/03, Ranganathan Street'),(152,'Taran','Manjari','Tak','00009243675','dhruv96@example.org','1988-02-07','2017-04-08','Male','India','Andhra Pradesh','Nagercoil','35, Sunder Street'),(153,'Manjari','Kiara','Krishnan','09300690281','vdubey@example.net','1983-08-01','2015-11-02','Male','India','Karnataka','Satna','79\nDeshmukh Path'),(154,'Emir','Drishya','Dayal','6976296219','tripathikabir@example.net','1983-03-02','2015-11-11','Female','India','Sikkim','Khandwa','H.No. 15\nTella Circle'),(155,'Abram','Urvi','Biswas','+916670521693','cheemazain@example.org','1978-03-18','2017-02-12','Male','India','Uttar Pradesh','Mira-Bhayandar','68\nSharaf Nagar'),(156,'Jhanvi','Gokul','Rout','+919219744436','venkateshmyra@example.org','1987-10-14','2015-10-27','Male','India','Rajasthan','Bhatpara','21/50, Toor Path'),(157,'Dhruv','Umang','Chawla','07577881157','zsoni@example.net','1981-10-03','2015-08-04','Female','India','Maharashtra','Muzaffarnagar','68/521, Brahmbhatt Street'),(158,'Farhan','Nitya','Bandi','4945769597','mehul80@example.net','1982-05-07','2016-12-30','Female','India','Karnataka','Kulti','15, Sinha Marg'),(159,'Dishani','Faiyaz','Bahri','5052547760','neysasagar@example.com','1984-02-15','2016-11-13','Female','India','Arunachal Pradesh','Hajipur','49, Chhabra Chowk'),(160,'Kismat','Oorja','Chadha','7595692866','tusharhalder@example.com','1985-11-25','2017-02-28','Male','India','Himachal Pradesh','Jorhat','39\nRatta Path'),(161,'Tara','Onkar','Maharaj','+918917732959','rheasuresh@example.org','1981-08-31','2015-10-26','Female','India','Jharkhand','Darbhanga','H.No. 65, Bains Nagar'),(162,'Ishaan','Ivana','Karnik','+914847656010','indranil49@example.net','1988-08-23','2017-02-08','Female','India','Nagaland','Ongole','111\nAnand Circle'),(163,'Divit','Jivika','Dalal','+910141962998','ranbirdivan@example.org','1988-08-20','2017-01-31','Male','India','Haryana','Bikaner','H.No. 74, Shah Street'),(164,'Nitara','Yuvraj ','Chand','+919058724194','aarushwarrior@example.org','1980-05-15','2015-10-18','Male','India','Sikkim','Gurgaon','780, Dutta Circle'),(165,'Samar','Nitya','Wadhwa','03431574589','madhav48@example.com','1985-06-28','2016-09-10','Male','India','Madhya Pradesh','Gudivada','27/26, Wason Road');
/*!40000 ALTER TABLE `caretaker` ENABLE KEYS */;
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
