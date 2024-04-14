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
-- Table structure for table `derived_table`
--

DROP TABLE IF EXISTS `derived_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `derived_table` (
  `hostel` varchar(1) DEFAULT NULL,
  `number of students` decimal(33,0) DEFAULT NULL,
  `total_capacity_diff_sum` decimal(55,0) DEFAULT NULL,
  `image_data` longblob,
  `caption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derived_table`
--

LOCK TABLES `derived_table` WRITE;
/*!40000 ALTER TABLE `derived_table` DISABLE KEYS */;
INSERT INTO `derived_table` VALUES ('A',9,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\A.jpeg.jpg','Photo of Aaibaan'),('B',9,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\B.jpg','Photo of Beauki'),('C',9,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\C.jpeg.jpg','Photo of Chimair'),('D',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\D.jpeg.jpg','Photo of Duven'),('E',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\E.png','Photo of Emiet'),('F',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\F.jpg','Photo of Firpeal'),('G',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\G.jpeg.jpg','Photo of Griwiksh'),('H',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\H.png','Photo of Hiqom'),('I',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\I.png','Photo of Ijokha'),('J',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\J.png','Photo of Jurqia'),('K',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\K.png','Photo of Kyzeel'),('L',7,90,_binary 'C:\\Program Files\\MySQL\\MySQL Server 8.0\\Uploads\\L.png','Photo of Lekhaag');
/*!40000 ALTER TABLE `derived_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  0:39:53
