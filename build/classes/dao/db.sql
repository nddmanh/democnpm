-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: chess
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `giaidau`
--

DROP TABLE IF EXISTS `giaidau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giaidau` (
  `idgiaidau` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(45) NOT NULL,
  `lantochuc` int NOT NULL,
  `nam` varchar(45) NOT NULL,
  `diadiem` varchar(45) NOT NULL,
  `mota` varchar(45) NOT NULL,
  PRIMARY KEY (`idgiaidau`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giaidau`
--

LOCK TABLES `giaidau` WRITE;
/*!40000 ALTER TABLE `giaidau` DISABLE KEYS */;
INSERT INTO `giaidau` VALUES (1,'a',1,'2000','vn','none'),(2,'b',2,'2020','vn','none');
/*!40000 ALTER TABLE `giaidau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ketquavong`
--

DROP TABLE IF EXISTS `ketquavong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ketquavong` (
  `idketquavong` int NOT NULL AUTO_INCREMENT,
  `idkythu` int NOT NULL,
  `vongdau` int NOT NULL,
  `tongdiem` int NOT NULL,
  `tongdiemdoithu` int NOT NULL,
  `elo` int NOT NULL,
  PRIMARY KEY (`idketquavong`),
  KEY `kythu_idx` (`idkythu`),
  CONSTRAINT `cothu` FOREIGN KEY (`idkythu`) REFERENCES `kythu` (`idkythu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketquavong`
--

LOCK TABLES `ketquavong` WRITE;
/*!40000 ALTER TABLE `ketquavong` DISABLE KEYS */;
INSERT INTO `ketquavong` VALUES (1,1,1,4,3,1600),(2,1,2,5,4,1800),(3,1,3,6,4,1900),(4,2,1,3,4,1100),(5,2,2,4,6,1200),(6,2,3,4,5,1150),(7,3,1,1,2,600),(8,3,2,1,4,800),(9,3,3,1,5,700),(10,1,4,6,5,1850),(11,2,4,5,4,1300),(12,3,4,2,6,900);
/*!40000 ALTER TABLE `ketquavong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kythu`
--

DROP TABLE IF EXISTS `kythu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kythu` (
  `idkythu` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `elo` int NOT NULL,
  `tongdiem` int NOT NULL,
  `tongdiemdoithu` int NOT NULL,
  `quoctich` varchar(45) NOT NULL,
  PRIMARY KEY (`idkythu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kythu`
--

LOCK TABLES `kythu` WRITE;
/*!40000 ALTER TABLE `kythu` DISABLE KEYS */;
INSERT INTO `kythu` VALUES (1,'nguyen duc manh','manh@gmail.com','manh','1234','1-1-2000',2200,7,6,'VN'),(2,'vu manh duong','duong@gmail.com','duong','1234','1-1-2021',2100,3,7,'VN'),(3,'do ngoc quang','quang','quang','12345','1-1-2021',2250,5,2,'VN');
/*!40000 ALTER TABLE `kythu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trandau`
--

DROP TABLE IF EXISTS `trandau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trandau` (
  `idtrandau` int NOT NULL AUTO_INCREMENT,
  `idkythu` int NOT NULL,
  `iddoithu` int NOT NULL,
  `ketqua` varchar(45) NOT NULL,
  `muctangelo` varchar(45) NOT NULL,
  `idvongdau` int NOT NULL,
  PRIMARY KEY (`idtrandau`),
  KEY `fkvongdau_idx` (`idvongdau`),
  KEY `fkkt_idx` (`iddoithu`),
  CONSTRAINT `fkkt` FOREIGN KEY (`iddoithu`) REFERENCES `kythu` (`idkythu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkvongdau` FOREIGN KEY (`idvongdau`) REFERENCES `vongdau` (`idvongdau`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trandau`
--

LOCK TABLES `trandau` WRITE;
/*!40000 ALTER TABLE `trandau` DISABLE KEYS */;
INSERT INTO `trandau` VALUES (1,1,2,'win','+30',1),(2,2,1,'lose','-20',1),(3,1,3,'win','+40',1),(4,3,1,'lose','-30',1),(5,2,3,'draw','+10',1),(6,3,2,'draw','-5',1),(7,1,2,'lose','-50',2),(8,2,1,'win','+40',2),(9,1,3,'draw','+10',2),(10,3,1,'draw','-15',2),(11,2,3,'draw','+20',2),(12,3,2,'draw','-10',2),(13,1,2,'win','+20',3),(14,2,1,'lose','-10',3),(15,1,3,'lose','-200',3),(16,3,1,'win','+100',3),(17,2,3,'win','+50',3),(18,3,2,'lose','-30',3),(19,1,2,'lose','-50',4),(20,2,1,'win','+70',4),(21,1,3,'lose','-60',4),(22,3,1,'win','+45',4),(23,2,3,'draw','+20',4),(24,3,2,'draw','0',4);
/*!40000 ALTER TABLE `trandau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vongdau`
--

DROP TABLE IF EXISTS `vongdau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vongdau` (
  `idvongdau` int NOT NULL AUTO_INCREMENT,
  `vongdau` int NOT NULL,
  `idgiai` int NOT NULL,
  PRIMARY KEY (`idvongdau`),
  KEY `idgiai_idx` (`idgiai`),
  CONSTRAINT `` FOREIGN KEY (`idgiai`) REFERENCES `giaidau` (`idgiaidau`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vongdau`
--

LOCK TABLES `vongdau` WRITE;
/*!40000 ALTER TABLE `vongdau` DISABLE KEYS */;
INSERT INTO `vongdau` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1);
/*!40000 ALTER TABLE `vongdau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-05 22:16:00
