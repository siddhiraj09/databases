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
-- Table structure for table `net_id_credentials`
--

DROP TABLE IF EXISTS `net_id_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `net_id_credentials` (
  `Wi-Fi ID` varchar(10) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`Wi-Fi ID`),
  UNIQUE KEY `Wi-Fi ID_UNIQUE` (`Wi-Fi ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `net_id_credentials`
--

LOCK TABLES `net_id_credentials` WRITE;
/*!40000 ALTER TABLE `net_id_credentials` DISABLE KEYS */;
INSERT INTO `net_id_credentials` VALUES ('23110001','Xn8!TgY2'),('23110002','Yj@4kVn5'),('23110003','Ap9$JhF3'),('23110004','Zm7%LyP6'),('23110005','Qo6*WsR1'),('23110006','Hg5#FxM8'),('23110007','Df4^JnK9'),('23110008','Wp3&LuO2'),('23110009','Xb9!QwE4'),('23110010','Yc1@NvR5'),('23110011','Aj2$KlT8'),('23110012','Zp5%OmG7'),('23110013','Ql9!XkS3'),('23110014','Hp6&FnD4'),('23110015','Dm8^ApW9'),('23110016','Wb3*JoL1'),('23110017','Xn7!MpK6'),('23110018','Zj4@LyH2'),('23110019','Qp9$NsA5'),('23110020','Hm5%GfD3'),('23110021','Dk6^QwE1'),('23110022','Wv4!HnR7'),('23110023','Xl5@GmB8'),('23110024','Zw9$XpS3'),('23110025','Qb3%JkT6'),('23110026','Hn2!VmL4'),('23110027','Dx8@YcK9'),('23110028','Wp1$ZmF7'),('23110029','Yj5^AnG6'),('23110030','Aj9*WlR2'),('23110031','Zo7!XwQ8'),('23110032','Qn4&HmT3'),('23110033','Wp5!RfV6'),('23110034','Ym3^GpS1'),('23110035','Ao8$KjD2'),('23110036','Zv6#SpM5'),('23110037','Qk9&GfT1'),('23110038','Xc2$WbL4'),('23110039','Yl7^PnR8'),('23110040','Ap4*FgW3'),('23110041','Hn1!MbL2'),('23110042','Dx5@NpS7'),('23110043','Wb7#YmF8'),('23110044','Zp3$AnK9'),('23110045','Qj9%VcD4'),('23110046','Ao1*PwE5'),('23110047','Xm8!NfG6'),('23110048','Yn4@SkL2'),('23110049','Aj7#HvR9'),('23110050','Zd6%QbT1'),('23110051','Ql2*WmG3'),('23110052','Wn9!AfS7'),('23110053','Yp5@GwK8'),('23110054','Ax3$DvT6'),('23110055','Zk9%PmF2'),('23110056','Qr1!VcW4'),('23110057','Wb7@SnR5'),('23110058','Ym4^XwG9'),('23110059','Ak6*FpS2'),('23110060','Zv9#RtL3'),('P1','Xn8!TgY2'),('P10','Yc1@NvR5'),('P11','Aj2$KlT8'),('P12','Zp5%OmG7'),('P13','Ql9!XkS3'),('P14','Hp6&FnD4'),('P15','Dm8^ApW9'),('P16','Wb3*JoL1'),('P17','Xn7!MpK6'),('P18','Zj4@LyH2'),('P19','Qp9$NsA5'),('P2','Yj@4kVn5'),('P20','Hm5%GfD3'),('P21','Dk6^QwE1'),('P22','Wv4!HnR7'),('P23','Xl5@GmB8'),('P24','Zw9$XpS3'),('P25','Qb3%JkT6'),('P26','Hn2!VmL4'),('P27','Dx8@YcK9'),('P28','Wp1$ZmF7'),('P29','Yj5^AnG6'),('P3','Ap9$JhF3'),('P30','Aj9*WlR2'),('P31','Zo7!XwQ8'),('P32','Qn4&HmT3'),('P33','Wp5!RfV6'),('P34','Ym3^GpS1'),('P35','Ao8$KjD2'),('P36','Zv6#SpM5'),('P37','Qk9&GfT1'),('P38','Xc2$WbL4'),('P39','Yl7^PnR8'),('P4','Zm7%LyP6'),('P40','Ap4*FgW3'),('P41','Hn1!MbL2'),('P42','Dx5@NpS7'),('P43','Wb7#YmF8'),('P44','Zp3$AnK9'),('P45','Qj9%VcD4'),('P46','Ao1*PwE5'),('P47','Xm8!NfG6'),('P48','Yn4@SkL2'),('P49','Aj7#HvR9'),('P5','Qo6*WsR1'),('P50','Zd6%QbT1'),('P51','Ql2*WmG3'),('P52','Wn9!AfS7'),('P53','Yp5@GwK8'),('P54','Ax3$DvT6'),('P55','Zk9%PmF2'),('P56','Qr1!VcW4'),('P57','Wb7@SnR5'),('P58','Ym4^XwG9'),('P59','Ak6*FpS2'),('P6','Hg5#FxM8'),('P60','Zv9#RtL3'),('P7','Df4^JnK9'),('P8','Wp3&LuO2'),('P9','Xb9!QwE4');
/*!40000 ALTER TABLE `net_id_credentials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-15  0:39:57
