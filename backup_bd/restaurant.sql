-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `ID_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Correo_electronico` varchar(100) DEFAULT NULL,
  `Comentario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_comentario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'Yonathan','Diaz','yd@123gmail.com','El sitio es genial'),(2,'Lucas','Perez','lp@123hotmail.com','Comida sobrevalorada'),(3,'Emily','Watson','EmilyW@gmail.com','dolor de estomago'),(4,'Homer','Simpson','Hsimpsom@gmail.com','MMMMMMM Rosquillas ahhhhhg');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platillo`
--

DROP TABLE IF EXISTS `platillo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platillo` (
  `platillo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `plato` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `precio` int(50) DEFAULT NULL,
  PRIMARY KEY (`platillo_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platillo`
--

LOCK TABLES `platillo` WRITE;
/*!40000 ALTER TABLE `platillo` DISABLE KEYS */;
INSERT INTO `platillo` VALUES (1,'pescado al horno','pescado finamente seleccionado de la atlantida',35),(2,'Pollo frito','lo mejor del pollo a tu mesa',40),(3,'torta de jamos','Desde la vecindad del chavo a tu paladar',25),(4,'ensalada Cesar','finas lechugas y aderezo de la casa para cautivar tu paladar',45);
/*!40000 ALTER TABLE `platillo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoracion`
--

DROP TABLE IF EXISTS `valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valoracion` (
  `ID_valoracion` int(11) NOT NULL AUTO_INCREMENT,
  `platillo_ID` int(11) DEFAULT NULL,
  `puntos` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_valoracion`),
  KEY `platillo_ID` (`platillo_ID`),
  CONSTRAINT `valoracion_ibfk_1` FOREIGN KEY (`ID_valoracion`) REFERENCES `comentarios` (`ID_comentario`),
  CONSTRAINT `valoracion_ibfk_2` FOREIGN KEY (`platillo_ID`) REFERENCES `platillo` (`platillo_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoracion`
--

LOCK TABLES `valoracion` WRITE;
/*!40000 ALTER TABLE `valoracion` DISABLE KEYS */;
INSERT INTO `valoracion` VALUES (1,1,'9'),(2,2,'8'),(3,3,'5'),(4,4,'10');
/*!40000 ALTER TABLE `valoracion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-30 20:24:16
