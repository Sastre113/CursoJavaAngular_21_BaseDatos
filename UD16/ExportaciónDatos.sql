-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: actividades
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
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenes` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `LUGAR` varchar(100) NOT NULL,
  `CAPACIDAD` int NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES (1,'Valencia',3),(2,'Barcelona',4),(3,'Bilbao',7),(4,'Los Angeles',2),(5,'San Francisco',8),(6,'Black Mesa',10),(7,'Aperture Science',15),(8,'Wasterlands',5),(9,'Screw',7),(10,'Nostromos',6),(11,'UNSC',3),(12,'PELICAN',5),(13,'MJOLNIR',4),(14,'ANDURIL',10),(15,'FROSTMOURE',12),(16,'Barcelona',3);
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `PRECIO` decimal(10,0) NOT NULL,
  `FABRICANTE` int NOT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `FABRICANTE` (`FABRICANTE`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`FABRICANTE`) REFERENCES `fabricantes` (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Hard drive',206,5),(2,'Memory',108,6),(3,'ZIP drive',125,4),(4,'Floppy disk',5,6),(5,'Monitor',206,1),(6,'DVD drive',152,2),(7,'CD drive',81,2),(8,'Impresora Laser',233,3),(9,'Toner cartridge',59,3),(10,'DVD burner',152,2),(11,'RTX 2060',328,7),(12,'RTX 2070',530,7),(13,'RX 480',260,8),(14,'VOX URANO',59,15),(15,'ROG POWER',152,10),(16,'K68',125,13),(17,'KRAKEN',72,16),(18,'SWIFT 6',401,14),(19,'DISIPADOR',41,12),(20,'RTX 3080',800,7),(21,'Altavoces',63,2);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cajas` (
  `NUMREFERENCIA` char(5) NOT NULL,
  `CONTENIDO` varchar(100) NOT NULL,
  `VALOR` decimal(10,0) NOT NULL,
  `ALMACEN` int NOT NULL,
  PRIMARY KEY (`NUMREFERENCIA`),
  KEY `ALMACEN` (`ALMACEN`),
  CONSTRAINT `cajas_ibfk_1` FOREIGN KEY (`ALMACEN`) REFERENCES `almacenes` (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
INSERT INTO `cajas` VALUES ('0MN7','Rocks',180,3),('35YET','Piedras',150,5),('4H8P','Rocks',250,1),('4RT3','Scissors',190,4),('7G3H','Rocks',200,1),('9J6F','Papers',175,2),('AEQXZ','Tijeras',113,6),('H5RT','Papel',200,2),('HXAMM','Papel',150,9),('LL08','Rocks',140,4),('LVB3F','Piedras',300,7),('P0H6','Scissors',125,1),('P2T6','Scissors',150,2),('V2P32','Tijeras',200,2),('XYK3S','Piedras',100,3);
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `CODIGO` int NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `PRESUPUESTO` decimal(10,0) NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Black Mesa',68400),(2,'Aperture Science',135000),(3,'Wasterlands',22500),(4,'Screw',45000),(5,'Nostromos',225000),(6,'UNSC',450000),(7,'PELICAN',10800),(8,'MJOLNIR',45000),(9,'ANDURIL',67500),(10,'FROSTMOURE',45000),(11,'Calidad',36000),(14,'IT',58500),(37,'Accounting',13500),(59,'Human Resources',216000),(77,'Research',49500);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `DNI` varchar(8) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `APELLIDOS` varchar(255) NOT NULL,
  `DEPARTAMENTO` int NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `DEPARTAMENTO` (`DEPARTAMENTO`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`DEPARTAMENTO`) REFERENCES `departamentos` (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricantes` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES (1,'Sony'),(2,'Creative Labs'),(3,'Hewlett-Packard'),(4,'Iomega'),(5,'Fujitsu'),(6,'Winchester'),(7,'NVIDIA'),(8,'AMD'),(9,'INTEL'),(10,'ASUS'),(11,'MSI'),(12,'GIGABYTE'),(13,'CORSAIR'),(14,'ACER'),(15,'NOX'),(16,'RAZER');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `CALIFICACIONEDAD` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Citizen Kane',16),(2,'Singin\' in the Rain',7),(3,'The Wizard of Oz',7),(4,'The Quiet Man',13),(5,'North by Northwest',13),(6,'The Last Tango in Paris',18),(7,'Some Like it Hot',13),(8,'A Night at the Opera',7),(9,'Citizen King',7),(10,'La comunidad del anillo',7),(11,'La dos torres',7),(12,'El retorno del rey',7),(13,'Mad Max',16),(14,'La torre oscura',16),(15,'La cabaña del bosque',16),(16,'12 Angry Men',16),(17,'Metropolis',7),(18,'Watchmen',13),(19,'Wall-e',7),(20,'Uno, Dos, Tres',7);
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  `PELICULA` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  KEY `PELICULA` (`PELICULA`),
  CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`PELICULA`) REFERENCES `peliculas` (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,'Odeon',5),(2,'Imperial',1),(3,'Majestic',NULL),(4,'Royale',6),(6,'Nickelodeon',NULL),(10,'Jameos del Agua',13),(11,'Nerja',14),(12,'La mora',15),(13,'Maravillas',16),(15,'Enebralejos',18);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 22:18:45
