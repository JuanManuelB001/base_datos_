-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clase
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(100) NOT NULL,
  `tipo_de_materia` tinyint(1) NOT NULL,
  `hora` datetime NOT NULL,
  `tema` varchar(40) NOT NULL,
  `fecha` time NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matemáticas',1,'2025-09-01 08:00:00','Álgebra','08:00:00',NULL),(2,'Física',0,'2025-09-01 10:00:00','Mecánica','10:00:00',NULL),(3,'Química',1,'2025-09-02 09:00:00','Orgánica','09:00:00',NULL),(4,'Biología',0,'2025-09-02 11:00:00','Genética','11:00:00',NULL),(5,'Historia',1,'2025-09-03 08:00:00','Edad Media','08:00:00',NULL),(6,'Geografía',0,'2025-09-03 10:00:00','Climas','10:00:00',NULL),(7,'Literatura',1,'2025-09-04 09:00:00','Romanticismo','09:00:00',NULL),(8,'Arte',0,'2025-09-04 11:00:00','Impresionismo','11:00:00',NULL),(9,'Informática',1,'2025-09-05 08:00:00','Programación','08:00:00',NULL),(10,'Educación Física',0,'2025-09-05 10:00:00','Entrenamiento','10:00:00',NULL),(11,'Filosofía',1,'2025-09-06 09:00:00','Ética','09:00:00',NULL),(12,'Economía',0,'2025-09-06 11:00:00','Microeconomía','11:00:00',NULL),(13,'Psicología',1,'2025-09-07 08:00:00','Desarrollo','08:00:00',NULL),(14,'Sociología',0,'2025-09-07 10:00:00','Cultura','10:00:00',NULL),(15,'Derecho',1,'2025-09-08 09:00:00','Derechos Humanos','09:00:00',NULL);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21 21:19:42
