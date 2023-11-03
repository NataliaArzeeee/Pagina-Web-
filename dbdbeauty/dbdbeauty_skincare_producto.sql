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
  `descripcion` varchar(255) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `codigo` int NOT NULL,
  `stock` int NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `producto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skincare_producto`
--

LOCK TABLES `skincare_producto` WRITE;
/*!40000 ALTER TABLE `skincare_producto` DISABLE KEYS */;
INSERT INTO `skincare_producto` VALUES (1,'Mascarillas Karite',8.00,1,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/revox-mascarilla-facial-3-minutos-ultra-hidratante-ritual-japones-1-67478_thumb_315x352.jpg','Macarilla de Arroz'),(2,'Mascarillas Karite',8.00,2,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ziaja-mascarilla-facial-de-miel-de-manuka-antiacne-para-pieles-grasas-1-47527_thumb_315x352.jpg','Macarilla de Miel'),(3,'Mascarillas Karite',8.00,3,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ziaja-mascarilla-y-exfoliante-facial-con-acido-hialuronico-1-79226_thumb_315x352.jpg','Macarilla Acido Hialuronico'),(4,'Mascarillas Karite',8.00,4,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ziaja-mascarilla-nocturna-cremosa-y-gruesa-para-rostro-y-cuello-1-34047_thumb_315x352.jpg','Mascarilla Vitamina E'),(5,'Mascarillas Karite',8.00,5,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/jigott-mascarilla-facial-con-extracto-de-colageno-real-1-67999_thumb_315x352.jpg','Macarilla Colageno'),(6,'Mascarillas Karite',8.00,6,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/beauty-formulas-brightening-vitamin-c-mascarilla-hidratante-iluminador-1-74671_thumb_315x352.jpg','Macarilla Vitamina C'),(7,'Mascarillas Karite',8.00,7,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/jigott-mascarilla-facial-con-extracto-de-baba-de-caracol-1-68000_thumb_315x352.jpg','Macarilla Baba de caracol'),(8,'Mascarillas Karite',8.00,8,100,'Skincare','https://cdn.grupoelcorteingles.es/SGFM/dctm/MEDIA03/202102/15/00113514805954____7__516x640.jpg','Macarilla 4K Oro'),(9,'Mascarillas Karite',8.00,9,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ziaja-mascarilla-facial-con-leche-de-cabra-1-9729_thumb_315x352.jpg','Mascarilla de Leche'),(10,'Mascarillas Liquida Peel off',8.00,10,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/revuele-gel-limpieza-3-en-1-con-carbon-activo-no-problem-1-33753_thumb_315x352.jpg','Mascarilla Carbon'),(11,'Mascarillas Liquida Peel off',8.00,11,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/jigott-mascarilla-facial-con-extracto-de-aloe-1-68004_thumb_315x352.jpg','Mascarilla Aloe Vera'),(12,'Mascarillas Liquida Peel off',8.00,12,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/nivea-mascarilla-antiarrugas-q10-plus-1-60230_thumb_315x352.jpg','Mascarilla Anti-Arrugas'),(13,'Mascarillas de tela chovemoar',8.00,13,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/essence-hello-good-stuff-mascarilla-facial-peel-off-iluminador-fresh-glow-1-75631_thumb_315x352.jpg','Mascarilla Mora'),(14,'Mascarillas de tela chovemoar',8.00,14,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/montagne-jeunesse-7th-heaven-mascarilla-facial-superfood-blueberry-1-50719_thumb_315x352.jpg','Mascarilla Frambuesa'),(15,'Mascarillas de tela chovemoar',8.00,15,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/garnier-mascarilla-de-tejido-para-ojos-anti-fatiga-1-39162_thumb_315x352.jpg','Mascarilla Naranja'),(16,'Mascarillas Hidratantes',5.00,16,100,'Skincare','https://th.bing.com/th/id/OIP.tkGTuHTz97eJ_Hw53M1zyQHaHa?pid=ImgDet&rs=1','Mascarilla Hidrantante'),(17,'Skin Care',30.00,17,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/missha-mascarilla-airy-fit-sheet-mask-arroz-1-47998_thumb_315x352.jpg','Tonico facial de arroz'),(18,'Skin Care',15.00,18,100,'Skincare','https://i.pinimg.com/originals/e0/3a/1d/e03a1d5c4176ad8fc59c7537243dca32.jpg','Primers'),(19,'Skin Care',30.00,19,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/natura-siberica-serum-facial-revitalizante-royal-caviar-accion-profunda-anti-age-1-18380_thumb_315x352.jpg','Serum de Caviar'),(20,'Skin Care',30.00,20,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/revox-just-solucion-hidratante-aminoacidos-de-colageno-ha-1-55319_thumb_315x352.jpg','Serum de Colageno'),(21,'Skin Care',15.00,21,100,'Skincare','https://www.farma-amparo.es/1795-large_default/jabon-natural-arroz-100g-premium-sys.jpg','Jabon de arroz'),(22,'Accesorio',15.00,22,100,'Skincare','https://th.bing.com/th/id/OIP.gGNFQsJQxFrE2A4VB3Sc3wHaHa?pid=ImgDet&rs=1','Vinchas'),(23,'Hidrantante de labios',7.00,23,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/idc-institute-balsamo-labial-aloe-vera-1-34682_thumb_315x352.jpg','Balsamo de aloe vera'),(24,'Maquillaje',20.00,24,100,'Skincare','https://http2.mlstatic.com/base-maybelline-fit-me-efeito-matte-24h-pronta-entrega-D_NQ_NP_871911-MLB20670055961_042016-F.jpg','Base Fit Me Mc'),(25,'Herramienta de Maquillaje',15.00,105,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/ecotools-new-natural-set-de-brochas-blush-highlight-duo-2-79800_thumb_315x352.jpg','Brochas'),(26,'Herramienta de Maquillaje',10.00,25,100,'Skincare','https://m.media-amazon.com/images/I/412qevJ7ADL._AC_SX569_.jpg','Brochas 2 en 1'),(27,'Skin Care',5.00,26,100,'Skincare','https://media.glamour.mx/photos/61907b102d97bd4c522a87a3/master/w_320%2Cc_limit/210735.jpg','Parches ojeras'),(28,'Skin Care',5.00,27,100,'Skincare','https://i.pinimg.com/originals/36/9e/21/369e21c579573aaa525836bc65b55554.jpg','Parches labios'),(29,'Skin Care',15.00,28,100,'Skincare','https://th.bing.com/th/id/R.8c374e848ef334317562c70016f6ea00?rik=cV7pt%2bDM%2fB%2b15w&pid=ImgRaw&r=0','Pulpito Limpiador'),(30,'Maquillaje',15.00,29,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/jovo-jabon-para-cejas-styling-soap-1-77294_thumb_315x352.jpg','Jabon Cejas'),(31,'Maquillaje',15.00,30,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/maybelline-gel-de-cejas-tattoo-brow-257-medium-brown-1-75021_thumb_315x352.jpg','Gel de cejas'),(32,'Herramienta de Maquillaje',20.00,31,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/isoclean-limpiador-de-brochas-275ml-1-78485_thumb_315x352.jpg','Limpiador de Brochas'),(33,'Herramienta de Maquillaje',12.00,32,100,'Skincare','https://www.maquillalia.com/images/productos/thumbnails/loreal-paris-perfilador-de-labios-lip-liner-couture-colour-riche-124-s-il-vous-plait-1-65597_thumb_315x352.jpg','Perfiladores'),(34,'Maquillaje',12.00,33,100,'Skincare','https://th.bing.com/th/id/OIP.U5lT5nTbP6ukv_tSNCSN5wHaHa?pid=ImgDet&rs=1','Labiales Nude'),(51,'3 mascarillas 1 mascarilla peel off 1 parche de ojeras 1 parche de labios 1 mascarilla comprimida 1 gel de cejas y pestaÃ±as 1 set de 3 perfiladores 1 mascarilla 3 pasos nariz 1 cepillo de cejas',55.00,34,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 1 classic'),(52,'3 mascarillas 2 parche de labios 2 parche de ojeras 1 serum a eleccion 1 set de 3 perfiladores1 balsamo labial1 rimel de cejas y pestaÃ±as 1 vincha skincare 1 mascarilla en gel 1 mascarilla comprimida 1 cepillo de cejas',100.00,35,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 2 classic'),(53,'2 mascarillas 1 mascarilla peel off 2 parches de ojeras 1 parche de labios 1 mascarilla comprimida 1 mascarilla 3 pasos nariz 2 mascarillas en gel 2 exfoliantes faciales 1 gel de cejas y pestaÃ±as 1 brocha 2 en 1 1 cepillo de cejas',75.00,36,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 3 classic'),(54,'2 mascarillas 1 parche de ojeras 1 parche de labios 1 vincha skincare 1 jabÃ³n de arroz 1 set de 3 perfiladores 1 serum',120.00,37,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 4 classic'),(55,'3 mascarillas 1 balsamo labial 1 parche de labios 2 parches de ojeras 2 mascarillas en gel  1 vincha skincare 1 mascarilla comprimida 1 cepillo de cejas',50.00,38,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 5 classic'),(56,'5 mascarillas 2 parches de labios 1 parche de ojeras 1 vincha skincare 1 mascarilla en gel 1 cepillo de cejas',55.00,39,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 6 classic'),(57,'4 mascarillas 2 mascarillas exfoliantes 2 parches de ojeras 2 parches de labios4 mascarillas comprimidas 2 mascarillas nocturnas1 mascarilla en gel 1 cepillo de cejas',75.00,40,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 7 classic'),(58,'3 mascarillas 1 parche de labios 1 parche de ojeras 1 serum a eleccion  1 set de 3 perfiladores 1 brocha a eleccion  1 vincha skincare 1 mascarillas en gel  1 mascarilla comprimida 1 cepillo de cejas',80.00,41,20,'Kit','https://th.bing.com/th/id/OIP.ycS-QNjiwXn7yeeQTd9bOwHaHa?pid=ImgDet&rs=1','KIT 8 classic');
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

-- Dump completed on 2023-10-30  8:54:12
