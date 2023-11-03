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
-- Table structure for table `skincare_producto`
--

DROP TABLE IF EXISTS `skincare_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skincare_producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) NOT NULL,
  `codigo` int NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `stock` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skincare_producto`
--

LOCK TABLES `skincare_producto` WRITE;
/*!40000 ALTER TABLE `skincare_producto` DISABLE KEYS */;
INSERT INTO `skincare_producto` VALUES (1,'Macarilla de Arroz',1,'Mascarillas Karite',96,8.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/revox-mascarilla-facial-3-minutos-ultra-hidratante-ritual-japones-1-67478_thumb_315x352.jpg'),(2,'Macarilla de Miel',2,'Mascarillas Karite',94,8.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ziaja-mascarilla-facial-de-miel-de-manuka-antiacne-para-pieles-grasas-1-47527_thumb_315x352.jpg'),(3,'Macarilla Acido Hialuronico',3,'Mascarillas Karite',96,8.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ziaja-mascarilla-y-exfoliante-facial-con-acido-hialuronico-1-79226_thumb_315x352.jpg'),(4,'Mascarilla Vitamina E',4,'Mascarillas Karite',98,8.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ziaja-mascarilla-nocturna-cremosa-y-gruesa-para-rostro-y-cuello-1-34047_thumb_315x352.jpg'),(5,'Macarilla Colageno',5,'Mascarillas Karite',96,8.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/jigott-mascarilla-facial-con-extracto-de-colageno-real-1-67999_thumb_315x352.jpg'),(6,'Macarilla Vitamina C',6,'Mascarillas Karite',100,8.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/beauty-formulas-brightening-vitamin-c-mascarilla-hidratante-iluminador-1-74671_thumb_315x352.jpg'),(7,'Macarilla Baba de caracol',7,'Mascarillas Karite',100,8.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/jigott-mascarilla-facial-con-extracto-de-baba-de-caracol-1-68000_thumb_315x352.jpg'),(8,'Macarilla 4K Oro',8,'Mascarillas Karite',98,8.00,'Skincare','https://cdn.grupoelcorteingles.es/SGFM/dctm/MEDIA03/202102/15/00113514805954____7__516x640.jpg'),(9,'Parches ojeras',26,'Skin Care',100,5.00,'Skincare','https://media.glamour.mx/photos/61907b102d97bd4c522a87a3/master/w_320%2Cc_limit/210735.jpg'),(10,'Parches labios',27,'Skin Care',100,5.00,'Skincare','https://i.pinimg.com/originals/36/9e/21/369e21c579573aaa525836bc65b55554.jpg'),(11,'Pulpito Limpiador',28,'Skin Care',98,15.00,'Skincare','https://th.bing.com/th/id/R.8c374e848ef334317562c70016f6ea00?rik=cV7pt%2bDM%2fB%2b15w&pid=ImgRaw&r=0'),(12,'Jabon Cejas',29,'Maquillaje',100,15.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/jovo-jabon-para-cejas-styling-soap-1-77294_thumb_315x352.jpg'),(13,'Gel de cejas',30,'Maquillaje',100,15.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/maybelline-gel-de-cejas-tattoo-brow-257-medium-brown-1-75021_thumb_315x352.jpg'),(14,'Limpiador de Brochas',31,'Herramienta de Maquillaje',100,20.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/isoclean-limpiador-de-brochas-275ml-1-78485_thumb_315x352.jpg'),(15,'Perfiladores',32,'Herramienta de Maquillaje',99,12.00,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/loreal-paris-perfilador-de-labios-lip-liner-couture-colour-riche-124-s-il-vous-plait-1-65597_thumb_315x352.jpg'),(16,'Labiales Nude',33,'Maquillaje',100,12.00,'Skincare','https://th.bing.com/th/id/OIP.U5lT5nTbP6ukv_tSNCSN5wHaHa?pid=ImgDet&rs=1'),(17,'KIT 1 classic',34,'Kit',20,55.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1'),(18,'KIT 2 classic',35,'Kit',20,100.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1'),(19,'KIT 3 classic',36,'Kit',20,75.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1'),(20,'KIT 4 classic',37,'Kit',19,120.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1'),(21,'KIT 5 classic',38,'3 mascarillas a elecciÃ³n 1 balsamo labial 1 parche de labios 2 parches de ojeras 2 mascarillas en gel  1 vincha skincare 1 mascarilla comprimida 1 cepillo de cejas',17,50.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1'),(22,'KIT 6 classic',39,'5 mascarillas a elecciÃ³n 2 parches de labios 1 parche de ojeras 1 vincha skincare 1 mascarilla en gel 1 cepillo de cejas',18,55.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1'),(23,'KIT 7 classic',40,'4 mascarillas a elecciÃ³n 2 mascarillas exfoliantes 2 parches de ojeras 2 parches de labios4 mascarillas comprimidas 2 mascarillas nocturnas1 mascarilla en gel 1 cepillo de cejas',20,75.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1'),(24,'KIT 8 classic',41,'3 mascarillas a elecciÃ³n 1 parche de labios 1 parche de ojeras 1 serum a eleccion  1 set de 3 perfiladores 1 brocha a eleccion  1 vincha skincare 1 mascarillas en gel  1 mascarilla comprimida 1 cepillo de cejas',20,80.00,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1');
/*!40000 ALTER TABLE `skincare_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 20:23:54
