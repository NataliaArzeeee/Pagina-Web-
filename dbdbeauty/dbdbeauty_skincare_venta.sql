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
-- Table structure for table `skincare_venta`
--

DROP TABLE IF EXISTS `skincare_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skincare_venta` (
  `codigoVenta` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `idProducto_id` bigint NOT NULL,
  PRIMARY KEY (`codigoVenta`),
  KEY `skincare_venta_idProducto_id_ab936eec_fk_skincare_producto_id` (`idProducto_id`),
  CONSTRAINT `skincare_venta_idProducto_id_ab936eec_fk_skincare_producto_id` FOREIGN KEY (`idProducto_id`) REFERENCES `skincare_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skincare_venta`
--

LOCK TABLES `skincare_venta` WRITE;
/*!40000 ALTER TABLE `skincare_venta` DISABLE KEYS */;
INSERT INTO `skincare_venta` VALUES (1,'2023-10-29',2),(2,'2023-10-29',1),(3,'2023-10-29',1),(4,'2023-10-29',2),(5,'2023-10-29',2),(6,'2023-10-29',5),(7,'2023-10-29',1),(8,'2023-10-29',1),(9,'2023-10-29',1),(10,'2023-10-29',2),(11,'2023-10-29',2),(12,'2023-10-29',2),(13,'2023-10-29',2),(14,'2023-10-29',1),(15,'2023-10-29',1),(16,'2023-10-29',1),(17,'2023-10-29',1),(18,'2023-10-29',5),(19,'2023-10-29',6),(20,'2023-10-29',2),(21,'2023-10-30',3),(22,'2023-10-30',2),(23,'2023-10-30',14);
/*!40000 ALTER TABLE `skincare_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-30  8:54:11
