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
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Room Number` varchar(5) NOT NULL,
  `Floor` int NOT NULL,
  `Hostel Name` varchar(10) NOT NULL,
  PRIMARY KEY (`Room Number`),
  UNIQUE KEY `Room Number_UNIQUE` (`Room Number`),
  KEY `Hostel Name_idx` (`Hostel Name`),
  CONSTRAINT `Hostel Name` FOREIGN KEY (`Hostel Name`) REFERENCES `hostels` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('A 102',1,'Aibaan'),('A 103',1,'Aibaan'),('A 104',1,'Aibaan'),('A 105',1,'Aibaan'),('A 201',2,'Aibaan'),('A 202',2,'Aibaan'),('A 203',2,'Aibaan'),('A 204',2,'Aibaan'),('A 205',2,'Aibaan'),('A 301',3,'Aibaan'),('A 302',3,'Aibaan'),('A 303',3,'Aibaan'),('A 304',3,'Aibaan'),('A 305',3,'Aibaan'),('A 401',4,'Aibaan'),('A 402',4,'Aibaan'),('A 403',4,'Aibaan'),('A 404',4,'Aibaan'),('A 405',4,'Aibaan'),('B 101',1,'Beauki'),('B 102',1,'Beauki'),('B 103',1,'Beauki'),('B 104',1,'Beauki'),('B 105',1,'Beauki'),('B 201',2,'Beauki'),('B 202',2,'Beauki'),('B 203',2,'Beauki'),('B 204',2,'Beauki'),('B 205',2,'Beauki'),('B 301',3,'Beauki'),('B 302',3,'Beauki'),('B 303',3,'Beauki'),('B 304',3,'Beauki'),('B 305',3,'Beauki'),('B 401',4,'Beauki'),('B 402',4,'Beauki'),('B 403',4,'Beauki'),('B 404',4,'Beauki'),('B 405',4,'Beauki'),('C 101',1,'Chimair'),('C 102',1,'Chimair'),('C 103',1,'Chimair'),('C 104',1,'Chimair'),('C 105',1,'Chimair'),('C 201',2,'Chimair'),('C 202',2,'Chimair'),('C 203',2,'Chimair'),('C 204',2,'Chimair'),('C 205',2,'Chimair'),('C 301',3,'Chimair'),('C 302',3,'Chimair'),('C 303',3,'Chimair'),('C 304',3,'Chimair'),('C 305',3,'Chimair'),('C 343',2,'Chimair'),('C 401',4,'Chimair'),('C 402',4,'Chimair'),('C 403',4,'Chimair'),('C 404',4,'Chimair'),('C 405',4,'Chimair'),('D 101',1,'Duven'),('D 102',1,'Duven'),('D 103',1,'Duven'),('D 104',1,'Duven'),('D 105',1,'Duven'),('D 201',2,'Duven'),('D 202',2,'Duven'),('D 203',2,'Duven'),('D 204',2,'Duven'),('D 205',2,'Duven'),('D 301',3,'Duven'),('D 302',3,'Duven'),('D 303',3,'Duven'),('D 304',3,'Duven'),('D 305',3,'Duven'),('D 401',4,'Duven'),('D 402',4,'Duven'),('D 403',4,'Duven'),('D 404',4,'Duven'),('D 405',4,'Duven'),('E 101',1,'Emiet'),('E 102',1,'Emiet'),('E 103',1,'Emiet'),('E 104',1,'Emiet'),('E 105',1,'Emiet'),('E 201',2,'Emiet'),('E 202',2,'Emiet'),('E 203',2,'Emiet'),('E 204',2,'Emiet'),('E 205',2,'Emiet'),('E 301',3,'Emiet'),('E 302',3,'Emiet'),('E 303',3,'Emiet'),('E 304',3,'Emiet'),('E 305',3,'Emiet'),('E 332',2,'Emiet'),('E 337',2,'Emiet'),('E 401',4,'Emiet'),('E 402',4,'Emiet'),('E 403',4,'Emiet'),('E 404',4,'Emiet'),('E 405',4,'Emiet'),('F 101',1,'Firpeal'),('F 102',1,'Firpeal'),('F 103',1,'Firpeal'),('F 104',1,'Firpeal'),('F 105',1,'Firpeal'),('F 201',2,'Firpeal'),('F 202',2,'Firpeal'),('F 203',2,'Firpeal'),('F 204',2,'Firpeal'),('F 205',2,'Firpeal'),('F 301',3,'Firpeal'),('F 302',3,'Firpeal'),('F 303',3,'Firpeal'),('F 304',3,'Firpeal'),('F 305',3,'Firpeal'),('F 401',4,'Firpeal'),('F 402',4,'Firpeal'),('F 403',4,'Firpeal'),('F 404',4,'Firpeal'),('F 405',4,'Firpeal'),('G 101',1,'Griwiksh'),('G 102',1,'Griwiksh'),('G 103',1,'Griwiksh'),('G 104',1,'Griwiksh'),('G 105',1,'Griwiksh'),('G 201',2,'Griwiksh'),('G 202',2,'Griwiksh'),('G 203',2,'Griwiksh'),('G 204',2,'Griwiksh'),('G 205',2,'Griwiksh'),('G 301',3,'Griwiksh'),('G 302',3,'Griwiksh'),('G 303',3,'Griwiksh'),('G 304',3,'Griwiksh'),('G 305',3,'Griwiksh'),('G 401',4,'Griwiksh'),('G 402',4,'Griwiksh'),('G 403',4,'Griwiksh'),('G 404',4,'Griwiksh'),('G 405',4,'Griwiksh'),('H 101',1,'Hiqom'),('H 102',1,'Hiqom'),('H 103',1,'Hiqom'),('H 104',1,'Hiqom'),('H 105',1,'Hiqom'),('H 201',2,'Hiqom'),('H 202',2,'Hiqom'),('H 203',2,'Hiqom'),('H 204',2,'Hiqom'),('H 205',2,'Hiqom'),('H 301',3,'Hiqom'),('H 302',3,'Hiqom'),('H 303',3,'Hiqom'),('H 304',3,'Hiqom'),('H 305',3,'Hiqom'),('H 401',4,'Hiqom'),('H 402',4,'Hiqom'),('H 403',4,'Hiqom'),('H 404',4,'Hiqom'),('H 405',4,'Hiqom'),('I 101',1,'Ijokha'),('I 102',1,'Ijokha'),('I 103',1,'Ijokha'),('I 104',1,'Ijokha'),('I 105',1,'Ijokha'),('I 201',2,'Ijokha'),('I 202',2,'Ijokha'),('I 203',2,'Ijokha'),('I 204',2,'Ijokha'),('I 205',2,'Ijokha'),('I 301',3,'Ijokha'),('I 302',3,'Ijokha'),('I 303',3,'Ijokha'),('I 304',3,'Ijokha'),('I 305',3,'Ijokha'),('I 401',4,'Ijokha'),('I 402',4,'Ijokha'),('I 403',4,'Ijokha'),('I 404',4,'Ijokha'),('I 405',4,'Ijokha'),('J 101',1,'Jurqia'),('J 102',1,'Jurqia'),('J 103',1,'Jurqia'),('J 104',1,'Jurqia'),('J 105',1,'Jurqia'),('J 201',2,'Jurqia'),('J 202',2,'Jurqia'),('J 203',2,'Jurqia'),('J 204',2,'Jurqia'),('J 205',2,'Jurqia'),('J 301',3,'Jurqia'),('J 302',3,'Jurqia'),('J 303',3,'Jurqia'),('J 304',3,'Jurqia'),('J 305',3,'Jurqia'),('J 401',4,'Jurqia'),('J 402',4,'Jurqia'),('J 403',4,'Jurqia'),('J 404',4,'Jurqia'),('J 405',4,'Jurqia'),('K 101',1,'Kyzeel'),('K 102',1,'Kyzeel'),('K 103',1,'Kyzeel'),('K 104',1,'Kyzeel'),('K 105',1,'Kyzeel'),('K 201',2,'Kyzeel'),('K 202',2,'Kyzeel'),('K 203',2,'Kyzeel'),('K 204',2,'Kyzeel'),('K 205',2,'Kyzeel'),('K 301',3,'Kyzeel'),('K 302',3,'Kyzeel'),('K 303',3,'Kyzeel'),('K 304',3,'Kyzeel'),('K 305',3,'Kyzeel'),('K 401',4,'Kyzeel'),('K 402',4,'Kyzeel'),('K 403',4,'Kyzeel'),('K 404',4,'Kyzeel'),('K 405',4,'Kyzeel'),('L 101',1,'Lekhaag'),('L 102',1,'Lekhaag'),('L 103',1,'Lekhaag'),('L 104',1,'Lekhaag'),('L 105',1,'Lekhaag'),('L 201',2,'Lekhaag'),('L 202',2,'Lekhaag'),('L 203',2,'Lekhaag'),('L 204',2,'Lekhaag'),('L 205',2,'Lekhaag'),('L 301',3,'Lekhaag'),('L 302',3,'Lekhaag'),('L 303',3,'Lekhaag'),('L 304',3,'Lekhaag'),('L 305',3,'Lekhaag'),('L 401',4,'Lekhaag'),('L 402',4,'Lekhaag'),('L 403',4,'Lekhaag'),('L 404',4,'Lekhaag'),('L 405',4,'Lekhaag');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 17:51:50
