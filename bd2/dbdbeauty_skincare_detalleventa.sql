CREATE DATABASE  IF NOT EXISTS `dbdbeauty` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbdbeauty`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbdbeauty
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `skincare_detalleventa`
--

DROP TABLE IF EXISTS `skincare_detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skincare_detalleventa` (
  `codigoDetalle` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `codVenta_id` int NOT NULL,
  `idProducto_id` bigint NOT NULL,
  PRIMARY KEY (`codigoDetalle`),
  KEY `skincare_detallevent_codVenta_id_179a07b8_fk_skincare_` (`codVenta_id`),
  KEY `skincare_detallevent_idProducto_id_f6fa3b16_fk_skincare_` (`idProducto_id`),
  CONSTRAINT `skincare_detallevent_codVenta_id_179a07b8_fk_skincare_` FOREIGN KEY (`codVenta_id`) REFERENCES `skincare_venta` (`codigoVenta`),
  CONSTRAINT `skincare_detallevent_idProducto_id_f6fa3b16_fk_skincare_` FOREIGN KEY (`idProducto_id`) REFERENCES `skincare_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skincare_detalleventa`
--

LOCK TABLES `skincare_detalleventa` WRITE;
/*!40000 ALTER TABLE `skincare_detalleventa` DISABLE KEYS */;
INSERT INTO `skincare_detalleventa` VALUES (1,'2023-11-02',1,2),(2,'2023-11-02',1,3),(3,'2023-11-02',1,5),(4,'2023-11-02',2,1),(5,'2023-11-02',2,8),(6,'2023-11-02',2,21),(7,'2023-11-02',2,1),(8,'2023-11-02',2,3),(9,'2023-11-02',3,3),(10,'2023-11-02',3,2),(11,'2023-11-02',3,1),(12,'2023-11-02',4,1),(13,'2023-11-02',4,5),(14,'2023-11-02',4,21),(15,'2023-11-02',4,15),(16,'2023-11-02',4,4),(17,'2023-11-02',5,2),(18,'2023-11-02',6,2),(19,'2023-11-02',6,3),(20,'2023-11-02',6,8),(21,'2023-11-02',6,21),(22,'2023-11-02',6,20),(23,'2023-11-02',6,4),(24,'2023-11-02',7,2),(25,'2023-11-02',7,5),(26,'2023-11-02',7,11),(27,'2023-11-02',7,22),(28,'2023-11-02',8,2),(29,'2023-11-02',8,5),(30,'2023-11-02',8,11),(31,'2023-11-02',8,22);
/*!40000 ALTER TABLE `skincare_detalleventa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 20:23:53
