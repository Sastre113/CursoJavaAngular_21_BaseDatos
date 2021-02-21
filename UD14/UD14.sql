-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: Directores
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
-- Table structure for table `Despachos`
--

DROP TABLE IF EXISTS `Despachos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Despachos` (
  `numero` int NOT NULL,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`numero`),
  UNIQUE KEY `numero` (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Despachos`
--

LOCK TABLES `Despachos` WRITE;
/*!40000 ALTER TABLE `Despachos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Despachos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Directores`
--

DROP TABLE IF EXISTS `Directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Directores` (
  `dni` varchar(8) NOT NULL,
  `NomApels` varchar(255) DEFAULT NULL,
  `FK_numero_Despachos` int DEFAULT NULL,
  `FK_dnijefe_Directores` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `FK_dnijefe_Directores` (`FK_dnijefe_Directores`),
  KEY `FK_numero_Despachos` (`FK_numero_Despachos`),
  CONSTRAINT `FK_dnijefe_Directores` FOREIGN KEY (`FK_dnijefe_Directores`) REFERENCES `Directores` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_numero_Despachos` FOREIGN KEY (`FK_numero_Despachos`) REFERENCES `Despachos` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Directores`
--

LOCK TABLES `Directores` WRITE;
/*!40000 ALTER TABLE `Directores` DISABLE KEYS */;
/*!40000 ALTER TABLE `Directores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:31
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: GrandesAlmacenes
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
-- Table structure for table `Cajeros`
--

DROP TABLE IF EXISTS `Cajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cajeros` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nomapels` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cajeros`
--

LOCK TABLES `Cajeros` WRITE;
/*!40000 ALTER TABLE `Cajeros` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maquinas_registradoras`
--

DROP TABLE IF EXISTS `Maquinas_registradoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Maquinas_registradoras` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `piso` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maquinas_registradoras`
--

LOCK TABLES `Maquinas_registradoras` WRITE;
/*!40000 ALTER TABLE `Maquinas_registradoras` DISABLE KEYS */;
/*!40000 ALTER TABLE `Maquinas_registradoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venta`
--

DROP TABLE IF EXISTS `Venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Venta` (
  `FK_codigo_Productos` int NOT NULL,
  `FK_codigo_Cajeros` int NOT NULL,
  `FK_codigo_Maquinas_registradoras` int NOT NULL,
  PRIMARY KEY (`FK_codigo_Productos`,`FK_codigo_Cajeros`,`FK_codigo_Maquinas_registradoras`),
  UNIQUE KEY `FK_codigo_Productos` (`FK_codigo_Productos`),
  UNIQUE KEY `FK_codigo_Cajeros` (`FK_codigo_Cajeros`),
  UNIQUE KEY `FK_codigo_Maquinas_registradoras` (`FK_codigo_Maquinas_registradoras`),
  CONSTRAINT `FK_codigo_Cajeros` FOREIGN KEY (`FK_codigo_Cajeros`) REFERENCES `Cajeros` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_codigo_Maquinas_registradoras` FOREIGN KEY (`FK_codigo_Maquinas_registradoras`) REFERENCES `Maquinas_registradoras` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_codigo_Productos` FOREIGN KEY (`FK_codigo_Productos`) REFERENCES `Productos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venta`
--

LOCK TABLES `Venta` WRITE;
/*!40000 ALTER TABLE `Venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `Venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:31
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: Tienda_Informatica
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
-- Table structure for table `Articulos`
--

DROP TABLE IF EXISTS `Articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Articulos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `FK_codigo_Fabricante` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FK_codigo_Fabricante` (`FK_codigo_Fabricante`),
  CONSTRAINT `FK_codigo_Fabricante` FOREIGN KEY (`FK_codigo_Fabricante`) REFERENCES `Fabricantes` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Articulos`
--

LOCK TABLES `Articulos` WRITE;
/*!40000 ALTER TABLE `Articulos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fabricantes`
--

DROP TABLE IF EXISTS `Fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fabricantes` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fabricantes`
--

LOCK TABLES `Fabricantes` WRITE;
/*!40000 ALTER TABLE `Fabricantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fabricantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:31
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: Biblio
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
-- Table structure for table `Autor`
--

DROP TABLE IF EXISTS `Autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Autor` (
  `claveautor` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`claveautor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autor`
--

LOCK TABLES `Autor` WRITE;
/*!40000 ALTER TABLE `Autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Editorial`
--

DROP TABLE IF EXISTS `Editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Editorial` (
  `claveeditorial` smallint NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`claveeditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Editorial`
--

LOCK TABLES `Editorial` WRITE;
/*!40000 ALTER TABLE `Editorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `Editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ejemplar`
--

DROP TABLE IF EXISTS `Ejemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ejemplar` (
  `claveejemplar` int NOT NULL,
  `clavelibro` int NOT NULL,
  `numeroorden` smallint NOT NULL,
  `edicion` smallint DEFAULT NULL,
  `ubicacion` varchar(15) DEFAULT NULL,
  `categoria` char(1) DEFAULT NULL,
  PRIMARY KEY (`claveejemplar`),
  KEY `clavelibro` (`clavelibro`),
  CONSTRAINT `Ejemplar_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `Libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ejemplar`
--

LOCK TABLES `Ejemplar` WRITE;
/*!40000 ALTER TABLE `Ejemplar` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ejemplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Escrito_por`
--

DROP TABLE IF EXISTS `Escrito_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Escrito_por` (
  `clavelibro` int NOT NULL,
  `claveautor` int NOT NULL,
  KEY `clavelibro` (`clavelibro`),
  KEY `claveautor` (`claveautor`),
  CONSTRAINT `Escrito_por_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `Libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Escrito_por_ibfk_2` FOREIGN KEY (`claveautor`) REFERENCES `Autor` (`claveautor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Escrito_por`
--

LOCK TABLES `Escrito_por` WRITE;
/*!40000 ALTER TABLE `Escrito_por` DISABLE KEYS */;
/*!40000 ALTER TABLE `Escrito_por` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Libro`
--

DROP TABLE IF EXISTS `Libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Libro` (
  `clavelibro` int NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `idioma` varchar(15) DEFAULT NULL,
  `formato` varchar(60) DEFAULT NULL,
  `claveeditorial` smallint DEFAULT NULL,
  PRIMARY KEY (`clavelibro`),
  KEY `claveeditorial` (`claveeditorial`),
  CONSTRAINT `Libro_ibfk_1` FOREIGN KEY (`claveeditorial`) REFERENCES `Editorial` (`claveeditorial`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Libro`
--

LOCK TABLES `Libro` WRITE;
/*!40000 ALTER TABLE `Libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `Libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prestamo`
--

DROP TABLE IF EXISTS `Prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prestamo` (
  `clavesocio` int DEFAULT NULL,
  `claveejemplar` int DEFAULT NULL,
  `numeroorden` smallint DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `notas` blob,
  KEY `clavesocio` (`clavesocio`),
  KEY `claveejemplar` (`claveejemplar`),
  CONSTRAINT `Prestamo_ibfk_1` FOREIGN KEY (`clavesocio`) REFERENCES `Socio` (`clavesocio`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Prestamo_ibfk_2` FOREIGN KEY (`claveejemplar`) REFERENCES `Ejemplar` (`claveejemplar`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prestamo`
--

LOCK TABLES `Prestamo` WRITE;
/*!40000 ALTER TABLE `Prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Socio`
--

DROP TABLE IF EXISTS `Socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Socio` (
  `clavesocio` int NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `categoria` char(1) DEFAULT NULL,
  PRIMARY KEY (`clavesocio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Socio`
--

LOCK TABLES `Socio` WRITE;
/*!40000 ALTER TABLE `Socio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tema`
--

DROP TABLE IF EXISTS `Tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tema` (
  `clavetema` smallint NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`clavetema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tema`
--

LOCK TABLES `Tema` WRITE;
/*!40000 ALTER TABLE `Tema` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trata_sobre`
--

DROP TABLE IF EXISTS `Trata_sobre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trata_sobre` (
  `clavelibro` int NOT NULL,
  `clavetema` smallint NOT NULL,
  KEY `clavelibro` (`clavelibro`),
  KEY `clavetema` (`clavetema`),
  CONSTRAINT `Trata_sobre_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `Libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Trata_sobre_ibfk_2` FOREIGN KEY (`clavetema`) REFERENCES `Tema` (`clavetema`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trata_sobre`
--

LOCK TABLES `Trata_sobre` WRITE;
/*!40000 ALTER TABLE `Trata_sobre` DISABLE KEYS */;
/*!40000 ALTER TABLE `Trata_sobre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:31
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: LaAcademia
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
-- Table structure for table `Alumno`
--

DROP TABLE IF EXISTS `Alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alumno` (
  `dni` char(8) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido1` varchar(15) DEFAULT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `FK_cod_curso_Curso` int DEFAULT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `apellido1` (`apellido1`),
  UNIQUE KEY `apellido2` (`apellido2`),
  KEY `FK_cod_curso_Curso` (`FK_cod_curso_Curso`),
  CONSTRAINT `FK_cod_curso_Curso` FOREIGN KEY (`FK_cod_curso_Curso`) REFERENCES `Curso` (`cod_curso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alumno`
--

LOCK TABLES `Alumno` WRITE;
/*!40000 ALTER TABLE `Alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Curso`
--

DROP TABLE IF EXISTS `Curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Curso` (
  `cod_curso` int NOT NULL,
  `nombre_curso` varchar(100) DEFAULT NULL,
  `maximo_alumno` int DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `num_horas` int DEFAULT NULL,
  `FK_dni_Profesor` char(8) DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  UNIQUE KEY `cod_curso` (`cod_curso`),
  UNIQUE KEY `FK_dni_Profesor` (`FK_dni_Profesor`),
  CONSTRAINT `FK_dni_Profesor` FOREIGN KEY (`FK_dni_Profesor`) REFERENCES `Profesor` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Curso`
--

LOCK TABLES `Curso` WRITE;
/*!40000 ALTER TABLE `Curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `Curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesor`
--

DROP TABLE IF EXISTS `Profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Profesor` (
  `dni` char(8) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido1` varchar(15) DEFAULT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `gana` int NOT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `apellido1` (`apellido1`),
  UNIQUE KEY `apellido2` (`apellido2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesor`
--

LOCK TABLES `Profesor` WRITE;
/*!40000 ALTER TABLE `Profesor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:31
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: Almacenes
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
-- Table structure for table `Almacenes`
--

DROP TABLE IF EXISTS `Almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Almacenes` (
  `codigo` int NOT NULL,
  `Lugar` varchar(100) DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Almacenes`
--

LOCK TABLES `Almacenes` WRITE;
/*!40000 ALTER TABLE `Almacenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cajas`
--

DROP TABLE IF EXISTS `Cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cajas` (
  `numreferencia` char(5) NOT NULL,
  `contenido` int DEFAULT NULL,
  `valor` int DEFAULT NULL,
  `FK_codigo_Almacenes` int DEFAULT NULL,
  PRIMARY KEY (`numreferencia`),
  KEY `FK_codigo_Almacenes` (`FK_codigo_Almacenes`),
  CONSTRAINT `FK_codigo_Almacenes` FOREIGN KEY (`FK_codigo_Almacenes`) REFERENCES `Almacenes` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cajas`
--

LOCK TABLES `Cajas` WRITE;
/*!40000 ALTER TABLE `Cajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cajas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:31
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: Empleados
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
-- Table structure for table `Departamentos`
--

DROP TABLE IF EXISTS `Departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departamentos` (
  `codigo` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `presupuesto` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departamentos`
--

LOCK TABLES `Departamentos` WRITE;
/*!40000 ALTER TABLE `Departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `FK_codigo_Departamentos` int DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `FK_codigo_Departamentos` (`FK_codigo_Departamentos`),
  CONSTRAINT `FK_codigo_Departamentos` FOREIGN KEY (`FK_codigo_Departamentos`) REFERENCES `Departamentos` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:32
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: Meteo
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
-- Table structure for table `Estación`
--

DROP TABLE IF EXISTS `Estación`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estación` (
  `identificador` mediumint unsigned NOT NULL,
  `latitud` varchar(14) NOT NULL,
  `longitud` varchar(15) DEFAULT NULL,
  `altitud` mediumint NOT NULL,
  PRIMARY KEY (`identificador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estación`
--

LOCK TABLES `Estación` WRITE;
/*!40000 ALTER TABLE `Estación` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estación` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:32
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: PiezasProveedores
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
-- Table structure for table `Piezas`
--

DROP TABLE IF EXISTS `Piezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Piezas` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piezas`
--

LOCK TABLES `Piezas` WRITE;
/*!40000 ALTER TABLE `Piezas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Piezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `id` char(4) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suministra`
--

DROP TABLE IF EXISTS `Suministra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suministra` (
  `precio` int DEFAULT NULL,
  `FK_codigo_Piezas` int NOT NULL,
  `FK_id_Proveedores` char(4) NOT NULL,
  PRIMARY KEY (`FK_codigo_Piezas`,`FK_id_Proveedores`),
  UNIQUE KEY `precio` (`precio`),
  UNIQUE KEY `FK_codigo_Piezas` (`FK_codigo_Piezas`),
  KEY `FK_id_Proveedores` (`FK_id_Proveedores`),
  CONSTRAINT `FK_codigo_Piezas` FOREIGN KEY (`FK_codigo_Piezas`) REFERENCES `Piezas` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_id_Proveedores` FOREIGN KEY (`FK_id_Proveedores`) REFERENCES `Proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suministra`
--

LOCK TABLES `Suministra` WRITE;
/*!40000 ALTER TABLE `Suministra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Suministra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:32
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: PeliculasSalas
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
-- Table structure for table `Peliculas`
--

DROP TABLE IF EXISTS `Peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Peliculas` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `calificacionEdad` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Peliculas`
--

LOCK TABLES `Peliculas` WRITE;
/*!40000 ALTER TABLE `Peliculas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salas`
--

DROP TABLE IF EXISTS `Salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Salas` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `FK_codigo_Peliculas` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `FK_codigo_Peliculas` (`FK_codigo_Peliculas`),
  CONSTRAINT `FK_codigo_Peliculas` FOREIGN KEY (`FK_codigo_Peliculas`) REFERENCES `Peliculas` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salas`
--

LOCK TABLES `Salas` WRITE;
/*!40000 ALTER TABLE `Salas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Salas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:32
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: LosCientificos
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
-- Table structure for table `Asignado_A`
--

DROP TABLE IF EXISTS `Asignado_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asignado_A` (
  `FK_dni_Cientificos` varchar(8) NOT NULL,
  `FK_id_Proyecto` char(4) NOT NULL,
  PRIMARY KEY (`FK_dni_Cientificos`,`FK_id_Proyecto`),
  UNIQUE KEY `FK_dni_Cientificos` (`FK_dni_Cientificos`),
  UNIQUE KEY `FK_id_Proyecto` (`FK_id_Proyecto`),
  CONSTRAINT `FK_dni_Cientificos` FOREIGN KEY (`FK_dni_Cientificos`) REFERENCES `Cientificos` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_id_Proyecto` FOREIGN KEY (`FK_id_Proyecto`) REFERENCES `Proyecto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignado_A`
--

LOCK TABLES `Asignado_A` WRITE;
/*!40000 ALTER TABLE `Asignado_A` DISABLE KEYS */;
/*!40000 ALTER TABLE `Asignado_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cientificos`
--

DROP TABLE IF EXISTS `Cientificos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cientificos` (
  `dni` varchar(8) NOT NULL,
  `nomapels` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cientificos`
--

LOCK TABLES `Cientificos` WRITE;
/*!40000 ALTER TABLE `Cientificos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cientificos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proyecto`
--

DROP TABLE IF EXISTS `Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proyecto` (
  `id` char(4) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `horas` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proyecto`
--

LOCK TABLES `Proyecto` WRITE;
/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:32
-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.1.50    Database: LosInvestigadores
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
-- Table structure for table `Equipos`
--

DROP TABLE IF EXISTS `Equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipos` (
  `numserie` char(4) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `FK_codigo_Equipos_Facultad` int DEFAULT NULL,
  PRIMARY KEY (`numserie`),
  KEY `FK_codigo_Equipos_Facultad` (`FK_codigo_Equipos_Facultad`),
  CONSTRAINT `FK_codigo_Equipos_Facultad` FOREIGN KEY (`FK_codigo_Equipos_Facultad`) REFERENCES `Facultad` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipos`
--

LOCK TABLES `Equipos` WRITE;
/*!40000 ALTER TABLE `Equipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facultad`
--

DROP TABLE IF EXISTS `Facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Facultad` (
  `codigo` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facultad`
--

LOCK TABLES `Facultad` WRITE;
/*!40000 ALTER TABLE `Facultad` DISABLE KEYS */;
/*!40000 ALTER TABLE `Facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Investigadores`
--

DROP TABLE IF EXISTS `Investigadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Investigadores` (
  `dni` varchar(8) NOT NULL,
  `nomapels` varchar(255) DEFAULT NULL,
  `FK_codigo_Investigadores_Facultad` int DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `FK_codigo_Investigadores_Facultad` (`FK_codigo_Investigadores_Facultad`),
  CONSTRAINT `FK_codigo_Investigadores_Facultad` FOREIGN KEY (`FK_codigo_Investigadores_Facultad`) REFERENCES `Facultad` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Investigadores`
--

LOCK TABLES `Investigadores` WRITE;
/*!40000 ALTER TABLE `Investigadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `Investigadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-19 10:53:32
