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
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `id_materia` int NOT NULL,
  `se_resolvio_la_duda` tinyint(1) NOT NULL,
  `id_estudiante` int NOT NULL,
  `id_profesor` int NOT NULL,
  `asistencia` tinyint(1) NOT NULL,
  `fecha` datetime NOT NULL,
  `id_solicitud` int NOT NULL,
  `inscripcion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comentarios` text,
  PRIMARY KEY (`id_reporte`),
  KEY `id_materia` (`id_materia`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_profesor` (`id_profesor`),
  KEY `id_solicitud` (`id_solicitud`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_usuario`),
  CONSTRAINT `reporte_ibfk_3` FOREIGN KEY (`id_profesor`) REFERENCES `tutores` (`id_tutor`),
  CONSTRAINT `reporte_ibfk_4` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitudes` (`id_solicitud`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (1,1,1,1,1,1,'2025-09-01 08:30:00',1,'2025-08-22 02:19:22',NULL),(2,2,0,2,2,1,'2025-09-01 10:30:00',2,'2025-08-22 02:19:22',NULL),(3,3,1,3,3,0,'2025-09-02 09:30:00',3,'2025-08-22 02:19:22',NULL),(4,4,1,4,4,1,'2025-09-02 11:30:00',4,'2025-08-22 02:19:22',NULL),(5,5,0,5,5,1,'2025-09-03 08:30:00',5,'2025-08-22 02:19:22',NULL);
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
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
