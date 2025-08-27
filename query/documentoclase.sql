-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clases
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
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_estudiante` varchar(40) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Ana Pérez','ana.perez@example.com',NULL,NULL),(2,'Luis Gómez','luis.gomez@example.com',NULL,NULL),(3,'María López','maria.lopez@example.com',NULL,NULL),(4,'Carlos Sánchez','carlos.sanchez@example.com',NULL,NULL),(5,'Sofía Martínez','sofia.martinez@example.com',NULL,NULL),(6,'Jorge Díaz','jorge.diaz@example.com',NULL,NULL),(7,'Elena Torres','elena.torres@example.com',NULL,NULL),(8,'David Ruiz','david.ruiz@example.com',NULL,NULL),(9,'Laura Fernández','laura.fernandez@example.com',NULL,NULL),(10,'Miguel Jiménez','miguel.jimenez@example.com',NULL,NULL),(11,'Isabel Morales','isabel.morales@example.com',NULL,NULL),(12,'Pedro Castillo','pedro.castillo@example.com',NULL,NULL),(13,'Lucía Romero','lucia.romero@example.com',NULL,NULL),(14,'Andrés Vargas','andres.vargas@example.com',NULL,NULL),(15,'Marta Ortega','marta.ortega@example.com',NULL,NULL);
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `materias_estudiantes`
--

DROP TABLE IF EXISTS `materias_estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias_estudiantes` (
  `id_materia` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_materia`,`id_usuario`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `materias_estudiantes_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  CONSTRAINT `materias_estudiantes_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `estudiantes` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_estudiantes`
--

LOCK TABLES `materias_estudiantes` WRITE;
/*!40000 ALTER TABLE `materias_estudiantes` DISABLE KEYS */;
INSERT INTO `materias_estudiantes` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14),(8,15);
/*!40000 ALTER TABLE `materias_estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias_tutores`
--

DROP TABLE IF EXISTS `materias_tutores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias_tutores` (
  `id_materia` int NOT NULL,
  `id_tutor` int NOT NULL,
  PRIMARY KEY (`id_materia`,`id_tutor`),
  KEY `id_tutor` (`id_tutor`),
  CONSTRAINT `materias_tutores_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  CONSTRAINT `materias_tutores_ibfk_2` FOREIGN KEY (`id_tutor`) REFERENCES `tutores` (`id_tutor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias_tutores`
--

LOCK TABLES `materias_tutores` WRITE;
/*!40000 ALTER TABLE `materias_tutores` DISABLE KEYS */;
INSERT INTO `materias_tutores` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `materias_tutores` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tutores`
--

DROP TABLE IF EXISTS `tutores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutores` (
  `id_tutor` int NOT NULL AUTO_INCREMENT,
  `correo` varchar(100) NOT NULL,
  `tipo_de_tutor` tinyint(1) NOT NULL,
  `nombre_tutor` varchar(40) NOT NULL,
  PRIMARY KEY (`id_tutor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutores`
--

LOCK TABLES `tutores` WRITE;
/*!40000 ALTER TABLE `tutores` DISABLE KEYS */;
INSERT INTO `tutores` VALUES (1,'tutor1@example.com',1,'Tutor 1'),(2,'tutor2@example.com',0,'Tutor 2'),(3,'tutor3@example.com',1,'Tutor 3'),(4,'tutor4@example.com',0,'Tutor 4'),(5,'tutor5@example.com',1,'Tutor 5'),(6,'tutor6@example.com',0,'Tutor 6'),(7,'tutor7@example.com',1,'Tutor 7'),(8,'tutor8@example.com',0,'Tutor 8'),(9,'tutor9@example.com',1,'Tutor 9'),(10,'tutor10@example.com',0,'Tutor 10');
/*!40000 ALTER TABLE `tutores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 21:27:48
