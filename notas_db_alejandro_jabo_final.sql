-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: laravel-database
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



DROP DATABASE IF EXISTS notas_db_alejandro_jabo;
CREATE DATABASE notas_db_alejandro_jabo;
USE notas_db_alejandro_jabo;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(50) NOT NULL,
  `email_usuario` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--


INSERT INTO `usuarios` VALUES (1,'Alejandro','alejandro@digitalhouse.com'),
(2,'Perrito','perrito@digitalhouse.com'),
(3,'Sara','sara@digitalhouse.com'),
(4,'Apu','apu@digitalhouse.com'),
(5,'Carolina','carolina@digitalhouse.com'),
(6,'Christian','christian@digitalhouse.com'),
(7,'Pablo','pablo@digitalhouse.com'),
(8,'Diego','diego@digitalhouse.com'),
(9,'Silvina','silvina@digitalhouse.com'),
(10,'Gaston','gaston@digitalhouse.com');



--
-- Table structure for table `categorias`
--


DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo_categoria` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--


INSERT INTO `categorias` VALUES (1,'Escuela'),
(2,'Musica'),
(3,'Gaming'),
(4,'Programacion'),
(5,'Animales'),
(6,'Ropa'),
(7,'Comida'),
(8,'Mascotas'),
(9,'Tecnologia'),
(10,'Viajes');


--
-- Table structure for table `notas`
--


DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id_nota` int unsigned NOT NULL AUTO_INCREMENT,
  `titulo_nota` VARCHAR(100) NOT NULL,
  `descripcion_nota` TEXT NOT NULL,
  `fecha_creacion_nota` DATE NOT NULL,
  `fecha_modificacion_nota` DATE NOT NULL,
  `status_delete_nota` INT NOT NULL,
 `id_usuario` int unsigned NOT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `nota_usuario_id_foreign` (`id_usuario`),
  CONSTRAINT `nota_usuario_id_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--


INSERT INTO `notas` VALUES (1,'Hoy fui a la escuela','Fui en monopatin','2022-04-05','2022-04-06',0,1),
(2,'Hoy escuche un temita de callejero fino','La verdad que esta muy bueno','2022-04-07','2022-04-08',1,2),
(3,'Hoy jugue un lolsito','Y gane dos rankeds seguidas','2022-04-08','2022-04-09',1,3),
(4,'Hoy aprendi base de datos','Esta muy bueno','2022-04-10','2022-04-11',1,4),
(5,'Hoy vi un conejo','Y lo adopte como moscota lol','2022-04-12','2022-04-13',0,5),
(6,'Hoy me compre alta remera perro','Y la voy a usar para la jodita de este finde','2022-04-13','2022-04-14',1,6),
(7,'Hoy prepare unos fideos con queso','Y la verdad que me salieron muy bien','2022-04-14','2022-04-15',0,7),
(8,'Hoy adopte un perrito','Y lo llame Doge','2022-04-15','2022-04-16',0,8),
(9,'Hoy compre una notebook gamer','Y voy a usarla para programar y jugar','2022-04-16','2022-04-17',0,9),
(10,'Espero viajar pronto','Me gustaria viajar a Canada y Nueva Zelanda','2022-04-17','2022-04-18',1,10);


--
-- Table structure for table `tipos_modificaciones`
--


DROP TABLE IF EXISTS `tipos_modificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_modificaciones` (
  `id_tipo_modificacion` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre_modificacion` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_tipo_modificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_modificaciones`
--


INSERT INTO `tipos_modificaciones` VALUES (1,'Create'),
(2,'Update'),
(3,'Delete');

--
-- Table structure for table `registros`
--


DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registros` (
  `id_registro` int unsigned NOT NULL AUTO_INCREMENT,
  `id_usuario` int unsigned NOT NULL,
  `id_nota` int unsigned NOT NULL,
  `id_tipo_modificacion` int unsigned NOT NULL,
  `fecha_modificacion_registro` DATE NOT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `registro_usuario_id_foreign` (`id_usuario`),
  KEY `registro_nota_id_foreign` (`id_nota`),
  KEY `registro_tipo_modificacion_id_foreign` (`id_tipo_modificacion`),
  CONSTRAINT `registro_usuario_id_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `registro_nota_id_foreign` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_nota`),
  CONSTRAINT `registro_tipo_modificacion_id_foreign` FOREIGN KEY (`id_tipo_modificacion`) REFERENCES `tipos_modificaciones` (`id_tipo_modificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--


INSERT INTO `registros` VALUES (1,1,3,1,'2022-04-15'),
(2,2,4,2,'2022-04-05'),
(3,3,4,1,'2022-04-25'),
(4,4,5,2,'2022-04-01'),
(5,5,6,3,'2022-04-05'),
(6,6,7,1,'2022-04-09'),
(7,7,8,1,'2022-04-10'),
(8,8,9,2,'2022-04-13'),
(9,3,2,1,'2022-04-12'),
(10,5,8,3,'2022-04-29');

--
-- Table structure for table `notas_categorias`
--


DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_categorias` (
  `id_nota_categoria` int unsigned NOT NULL AUTO_INCREMENT,
  `id_nota` int unsigned NOT NULL,
  `id_categoria` int unsigned NOT NULL,
  PRIMARY KEY (`id_nota_categoria`),
  KEY `nota_categoria_nota_id_foreign` (`id_nota`),
  KEY `nota_categoria_categoria_id_foreign` (`id_categoria`),
  CONSTRAINT `nota_categoria_nota_id_foreign` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_nota`),
  CONSTRAINT `nota_categoria_categoria_id_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--


INSERT INTO `notas_categorias` VALUES (1,2,5),
(2,3,6),
(3,2,5),
(4,2,7),
(5,5,6),
(6,5,10),
(7,7,8),
(8,8,9),
(9,3,2),
(10,8,8);
