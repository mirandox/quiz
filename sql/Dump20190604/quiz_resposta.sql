-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: quiz
-- ------------------------------------------------------
-- Server version	5.7.26

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

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resposta` (
  `cd_resposta` bigint(19) NOT NULL AUTO_INCREMENT,
  `ds_resposta` varchar(255) NOT NULL,
  `in_tipo_resposta` varchar(255) NOT NULL,
  `nr_pergunta` bigint(19) NOT NULL,
  PRIMARY KEY (`cd_resposta`),
  KEY `fk_resposta_idx` (`nr_pergunta`),
  CONSTRAINT `fk_resposta_pergunta` FOREIGN KEY (`nr_pergunta`) REFERENCES `pergunta` (`cd_pergunta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (1,'A - Tem entre 2 a 4 litros. São retirados 450 mililitros','FALSO',1),(2,'B - Tem entre 4 a 6 litros. São retirados 450 mililitros','VERDADEIRO',1),(3,'C -  Tem 10 litros. São retirados 2 litros','FALSO',1),(4,'D - Tem 7 litros. São retirados 1,5 litros','FALSO',1),(5,'E - Tem 0,5 litros. São retirados 0,5 litros','FALSO',1),(6,'A - Platão','FALSO',2),(7,'B - Galileu Galilei','FALSO',2),(8,'C -  Descartes','VERDADEIRO',2),(9,'D - Sócrates','FALSO',2),(10,'E - Francis Bacon','FALSO',2),(11,'A - França','FALSO',3),(12,'B - Inglaterra','FALSO',3),(13,'C -  Brasil','VERDADEIRO',3),(14,'D - Austrália','FALSO',3),(15,'E - Itália','FALSO',3),(16,'A - Vaticano e Rússia','VERDADEIRO',4),(17,'B - Nauru e China','FALSO',4),(18,'C -  Mônaco e Canadá','FALSO',4),(19,'D - Malta e Estados Unidos','FALSO',4),(20,'E - São Marino e Índia','FALSO',4),(21,'A - Jânio Quadros','FALSO',5),(22,'B - Jacinto Anjos','FALSO',5),(23,'C -  Getúlio Vargas','FALSO',5),(24,'D - João Figueiredo','FALSO',5),(25,'E - João Goulart','VERDADEIRO',5),(26,'A - Asterístico, beneficiente, meteorologia, entertido','FALSO',6),(27,'B - Asterisco, beneficente, meteorologia, entretido','VERDADEIRO',6),(28,'C -  Asterisco, beneficente, metereologia, entretido','FALSO',6),(29,'D - Asterístico, beneficiente, metereologia, entretido','FALSO',6),(30,'E - Asterisco, beneficiente, metereologia, entretido','FALSO',6),(31,'A - O Senhor dos Anéis','FALSO',7),(32,'B - Dom Quixote','VERDADEIRO',7),(33,'C -  O Pequeno Príncipe','FALSO',7),(34,'D - Ela, a Feiticeira','FALSO',7),(35,'E - Um Conto de Duas Cidades','FALSO',7),(36,'A - Duas','FALSO',8),(37,'B - Centenas','FALSO',8),(38,'C -  Trilhares','VERDADEIRO',8),(39,'D - Vinte','FALSO',8),(40,'E - Milhares','FALSO',8),(41,'A - 113','FALSO',9),(42,'B - 109','FALSO',9),(43,'C -  108','FALSO',9),(44,'D - 118','VERDADEIRO',9),(45,'E - 92','FALSO',9),(46,'A - Japão e Serra Leoa','VERDADEIRO',10),(47,'B - Austrália e Afeganistão','FALSO',10),(48,'C -  Itália e Chade','FALSO',10),(49,'D - Brasil e Congo','FALSO',10),(50,'E - Estados Unidos e Angola','FALSO',10);
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04 21:45:02
