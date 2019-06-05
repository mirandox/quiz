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
-- Table structure for table `jogador`
--

DROP TABLE IF EXISTS `jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogador` (
  `cd_jogador` bigint(19) NOT NULL AUTO_INCREMENT,
  `nm_jogador` varchar(100) NOT NULL,
  PRIMARY KEY (`cd_jogador`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogador`
--

LOCK TABLES `jogador` WRITE;
/*!40000 ALTER TABLE `jogador` DISABLE KEYS */;
INSERT INTO `jogador` VALUES (1,'Felipe'),(2,'Felipe'),(3,'Felipe'),(4,'Felipe'),(5,'Felipe'),(6,'Gabriel'),(7,'Infoprice'),(8,'Nubank'),(9,'Google'),(10,'Facebook'),(11,'Leonardo'),(12,'Oraculo'),(13,'Infoprice'),(14,''),(15,'Felipe'),(16,'Infoprice'),(17,'Infoprice'),(18,'Nubank'),(19,'Nubank'),(20,'Felipe'),(21,'Felipe'),(22,'Felipe'),(23,'Felipe'),(24,'Google'),(25,'Felipe'),(26,'Felipe'),(27,'Felipe'),(28,'Felipe'),(29,'Nubank'),(30,'Infoprice'),(31,'Felipe'),(32,'Infoprice'),(33,'Nubank'),(34,'Infoprice'),(35,'Infoprice'),(36,'Infoprice'),(37,'Infoprice'),(38,'Infoprice'),(39,'Felipe'),(40,'Felipe'),(41,'Felipe'),(42,'Felipe'),(43,'Marcelo'),(44,'Marcelo'),(45,'Marcelo'),(46,'Felipe'),(47,'Felipe'),(48,'Infoprice'),(49,'Felipe'),(50,'Nubank'),(51,'Facebook'),(52,'Nubank'),(53,'Facebook'),(54,'Nubank'),(55,'Facebook'),(56,'Facebook'),(57,'Nubank'),(58,'Nubank'),(59,'Nubank'),(60,'Nubank'),(61,'Nubank'),(62,'Nubank'),(63,'Nubank'),(64,'Nubank'),(65,'Nubank'),(66,'Nubank'),(67,'Felipe'),(68,'Felipe'),(69,'Facebook'),(70,'Felipe'),(71,'Infoprice'),(72,'Facebook'),(73,'Google'),(74,'Infoprice'),(75,'Nubank'),(76,'Felipe'),(77,'Infoprice'),(78,'Infoprice'),(79,'Nubank'),(80,'Nubank'),(81,'Infoprice'),(82,'Infoprice'),(83,'Felipe'),(84,'Felipe'),(85,'Felipe'),(86,'Felipe'),(87,'Infoprice'),(88,'Facebook'),(89,'Felipe'),(90,'Felipe'),(91,'Leonardo'),(92,'Felipe'),(93,'Felipe'),(94,'Felipe'),(95,'Felipe'),(96,'Infoprice'),(97,'Infoprice'),(98,'Felipe'),(99,'Gabriel'),(100,'Pacheco'),(101,'Pacheco_2'),(102,'Google'),(103,'Google'),(104,'Google'),(105,'Google'),(106,'Google'),(107,'Google'),(108,'Google'),(109,'Google'),(110,'Google'),(111,'Google'),(112,'Google'),(113,'Google'),(114,'Google'),(115,'Google'),(116,'Google'),(117,'Google'),(118,'Google'),(119,'Google'),(120,'Google'),(121,'Google'),(122,'Google'),(123,'Google'),(124,'Felipe'),(125,''),(126,'JoÃ£o'),(127,'JoÃ£o'),(128,'JoÃ£o'),(129,'JoÃ£o'),(130,'JoÃ£o'),(131,'JoÃ£o'),(132,'Rodolfo'),(133,'Lindo Lindo'),(134,'Felipe');
/*!40000 ALTER TABLE `jogador` ENABLE KEYS */;
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
