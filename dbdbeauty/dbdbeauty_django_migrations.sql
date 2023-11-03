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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-10-27 12:06:45.275812'),(2,'auth','0001_initial','2023-10-27 12:06:45.662545'),(3,'admin','0001_initial','2023-10-27 12:06:45.765889'),(4,'admin','0002_logentry_remove_auto_add','2023-10-27 12:06:45.765889'),(5,'admin','0003_logentry_add_action_flag_choices','2023-10-27 12:06:45.765889'),(6,'contenttypes','0002_remove_content_type_name','2023-10-27 12:06:45.828939'),(7,'auth','0002_alter_permission_name_max_length','2023-10-27 12:06:45.862911'),(8,'auth','0003_alter_user_email_max_length','2023-10-27 12:06:45.876419'),(9,'auth','0004_alter_user_username_opts','2023-10-27 12:06:45.892151'),(10,'auth','0005_alter_user_last_login_null','2023-10-27 12:06:45.923648'),(11,'auth','0006_require_contenttypes_0002','2023-10-27 12:06:45.939388'),(12,'auth','0007_alter_validators_add_error_messages','2023-10-27 12:06:45.939388'),(13,'auth','0008_alter_user_username_max_length','2023-10-27 12:06:45.986837'),(14,'auth','0009_alter_user_last_name_max_length','2023-10-27 12:06:46.034178'),(15,'auth','0010_alter_group_name_max_length','2023-10-27 12:06:46.049914'),(16,'auth','0011_update_proxy_permissions','2023-10-27 12:06:46.049914'),(17,'auth','0012_alter_user_first_name_max_length','2023-10-27 12:06:46.097374'),(18,'sessions','0001_initial','2023-10-27 12:06:46.128785'),(19,'skincare','0001_initial','2023-10-27 12:06:46.144600'),(20,'skincare','0002_rename_precio_producto_precio_unitario_and_more','2023-10-27 12:06:46.239497'),(21,'skincare','0003_producto_categoria_producto_imagen_producto_producto_and_more','2023-10-27 12:06:46.287017'),(22,'skincare','0004_tumodelodeusuario','2023-10-27 12:06:46.302732'),(23,'skincare','0005_rename_tumodelodeusuario_db_usuario','2023-10-27 12:06:46.318462'),(24,'skincare','0006_usuario_delete_db_usuario','2023-10-27 12:06:46.523534'),(25,'skincare','0007_venta','2023-10-30 03:12:02.389120');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
