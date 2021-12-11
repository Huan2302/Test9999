-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Test9999
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `BENH`
--

DROP TABLE IF EXISTS `BENH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BENH` (
  `MaBenh` int NOT NULL AUTO_INCREMENT,
  `TenBenh` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaBenh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BENH`
--

LOCK TABLES `BENH` WRITE;
/*!40000 ALTER TABLE `BENH` DISABLE KEYS */;
/*!40000 ALTER TABLE `BENH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KHACHHANG`
--

DROP TABLE IF EXISTS `KHACHHANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KHACHHANG` (
  `MaKH` int NOT NULL AUTO_INCREMENT,
  `HoTenKH` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDienThoai` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiKH` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` int DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KHACHHANG`
--

LOCK TABLES `KHACHHANG` WRITE;
/*!40000 ALTER TABLE `KHACHHANG` DISABLE KEYS */;
INSERT INTO `KHACHHANG` VALUES (1,'Võ Văn a','123123','da nang',NULL,1);
/*!40000 ALTER TABLE `KHACHHANG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LICHSUTIEMPHONG`
--

DROP TABLE IF EXISTS `LICHSUTIEMPHONG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LICHSUTIEMPHONG` (
  `MaKH` int DEFAULT NULL,
  `MaVacxin` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STTMui` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTimPhong` date DEFAULT NULL,
  `NgayHenTiepTheo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LICHSUTIEMPHONG`
--

LOCK TABLES `LICHSUTIEMPHONG` WRITE;
/*!40000 ALTER TABLE `LICHSUTIEMPHONG` DISABLE KEYS */;
/*!40000 ALTER TABLE `LICHSUTIEMPHONG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PHONGBENH`
--

DROP TABLE IF EXISTS `PHONGBENH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PHONGBENH` (
  `MaVacxin` int DEFAULT NULL,
  `MaBenh` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PHONGBENH`
--

LOCK TABLES `PHONGBENH` WRITE;
/*!40000 ALTER TABLE `PHONGBENH` DISABLE KEYS */;
/*!40000 ALTER TABLE `PHONGBENH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VACXIN`
--

DROP TABLE IF EXISTS `VACXIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VACXIN` (
  `MaVacxin` int NOT NULL AUTO_INCREMENT,
  `TenVacxin` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMui` int DEFAULT NULL,
  `MoTa` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaVacxin` float DEFAULT NULL,
  `TenHangSX` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaVacxin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VACXIN`
--

LOCK TABLES `VACXIN` WRITE;
/*!40000 ALTER TABLE `VACXIN` DISABLE KEYS */;
INSERT INTO `VACXIN` VALUES (1,'Vacxin A',1,'rất tốt',20000,'AAA'),(2,'Vacxin B',2,'rất tuyệt vời',200030,'bbb'),(3,'abv',1,'abc',20000,'cccc'),(4,'Vacxin 4',4,'rất tiệt vời',22.2,'abb');
/*!40000 ALTER TABLE `VACXIN` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11 15:40:25
