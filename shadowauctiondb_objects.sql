-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shadowauctiondb
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objects` (
  `idObject` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectName` varchar(50) DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  `special` varchar(45) DEFAULT NULL,
  `tipe` varchar(30) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idAuction` int(11) NOT NULL,
  `Initial_price` decimal(10,2) NOT NULL,
  `Current_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idObject`),
  KEY `fk_user_object` (`idUser`),
  CONSTRAINT `fk_user_object` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,'Cuadro abstracto','Pintura al óleo de estilo abstracto','usado','arte',1,1,50.00,0.00),(2,'El gran Gatsby','Novela clásica de F. Scott Fitzgerald','nuevo','libros',2,2,100.00,0.00),(3,'Figura de Darth Vader','Réplica de colección de Star Wars','usado','coleccionables',3,3,80.00,0.00),(4,'Rolex Submariner','Reloj de lujo sumergible','nuevo','relojes',4,4,200.00,0.00),(5,'Vajilla floral','Conjunto de vajilla con diseño floral vintage','usado','hogar',5,5,150.00,0.00),(6,'Busto de David','Escultura de bronce del David de Miguel Ángel','nuevo','arte',6,6,180.00,0.00),(7,'Canon AE-1','Cámara fotográfica de película clásica','usado','electrónica',7,7,120.00,0.00),(8,'Escultura de mármol','Escultura clásica hecha de mármol','nuevo','arte',7,1,80.00,0.00),(9,'Pintura al óleo','Pintura al óleo de un paisaje natural','usado','arte',8,1,100.00,0.00),(10,'Silla de época','Silla antigua restaurada','usado','hogar',1,2,150.00,0.00),(11,'Lámpara de cristal','Lámpara de cristal de estilo vintage','usado','hogar',2,2,120.00,0.00),(12,'Reloj de pared','Reloj de pared de madera tallada a mano','usado','hogar',3,3,200.00,0.00),(13,'Cuadro abstracto','Pintura abstracta en lienzo','nuevo','arte',4,3,180.00,0.00),(14,'Mesa de comedor','Mesa de comedor de madera maciza','usado','hogar',5,4,250.00,0.00),(15,'Figura de porcelana','Figura de porcelana china de colección','usado','coleccionables',6,4,300.00,0.00);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06 23:10:29
