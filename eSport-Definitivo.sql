-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: crud_avanzado
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipo` (
  `CodEquipo` int(4) NOT NULL AUTO_INCREMENT,
  `NomEquipo` char(50) NOT NULL,
  `Comunidad` char(20) DEFAULT NULL,
  `eSport` char(60) DEFAULT NULL,
  `AnoCreacion` int(4) DEFAULT NULL,
  PRIMARY KEY (`CodEquipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (1,'MadLions','Madrid','League of Legends',2016),(2,'Asus Rog Army','Cataluña','League of Legends',2009),(3,'Giant','Andalucía','League of Legends',2008),(4,'Movistar Riders','Madrid','League of Legends',2015),(5,'G2Vodafone','Galicia','League of Legends',2012);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jugador` (
  `CodJug` int(4) NOT NULL AUTO_INCREMENT,
  `NomJug` char(50) NOT NULL,
  `Rol` char(20) DEFAULT NULL,
  `Telefono` int(9) DEFAULT NULL,
  `CodEquipo` int(4) DEFAULT NULL,
  `AnoNac` int(4) DEFAULT NULL,
  PRIMARY KEY (`CodJug`),
  KEY `CodEquipo` (`CodEquipo`),
  CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`CodEquipo`) REFERENCES `equipo` (`CodEquipo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Werlyb','TopLaner',123456789,1,1997),(2,'Selfmademan','Jungla',123456789,1,1996),(3,'Nemesis','MidLaner',123456789,1,1998),(4,'CrownShot','ADC',123456789,1,1996),(5,'Xyrah','TopLaner',156158423,4,1997),(6,'Falco','Support',123456789,1,1994),(7,'Cyncroft','Jungla',123456789,4,1996),(8,'Hatrixx','MidLaner',123456789,4,1997),(9,'Jesklaa','ADC',123456789,4,1999),(10,'Klaj','Support',123456789,4,1997),(11,'Lamabear','Jungla',123456789,2,1998),(12,'Kektz','TopLaner',123456789,2,1998),(13,'Pretty','MidLaner',123456789,2,1997),(14,'Sedrion','Jungla',123456789,2,1993),(15,'Antrhax','Support',123456789,2,1998),(16,'Agresivoo','TopLaner',123456789,5,1997),(17,'Hero','Jungla',123456789,5,1997),(18,'Roison','MidLaner',123456789,5,1997),(19,'Nixerino','ADC',123456789,5,1996),(20,'Homi','Support',123456789,5,2000),(21,'Yoppa','TopLaner',123456789,3,1998),(22,'Mystiques','Support',123456789,3,1999),(23,'Razork','Jungla',123456789,3,1999),(24,'Kashtelan','MidLaner',123456789,3,1996),(25,'Deadly','ADC',156158423,3,2000);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-21 14:21:03
