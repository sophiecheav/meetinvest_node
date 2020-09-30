CREATE DATABASE  IF NOT EXISTS `meetinvestdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `meetinvestdb`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: meetinvestdb
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `entrepreneurs`
--

DROP TABLE IF EXISTS `entrepreneurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrepreneurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `address` longtext,
  `cp` int DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `mail` mediumtext,
  `corporate_name` mediumtext,
  `siret` int DEFAULT NULL,
  `share_capital` int DEFAULT NULL,
  `sales` int DEFAULT NULL,
  `financial_needs` int DEFAULT NULL,
  `other_needs` mediumtext,
  `project_title` mediumtext,
  `category` varchar(200) DEFAULT NULL,
  `description` longtext,
  `web` mediumtext,
  `video_link` mediumtext,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepreneurs`
--

LOCK TABLES `entrepreneurs` WRITE;
/*!40000 ALTER TABLE `entrepreneurs` DISABLE KEYS */;
INSERT INTO `entrepreneurs` VALUES (1,'sara','ubio','hk=bnkl,m;hjklmù',5678,'FHJMBZ','KLNJZB',87652,'FCGVHBJNK','GHJKL',4567890,567890,67890,45789,'non','XFCGVHJKL','Écologie','FGHJK?L','GHJKLMmlkk','FGHJKL','hklk'),(2,'sara','ubio','hk=bnkl,m;hjklmù',5678,'FHBZ','KLNJZB',87652,'FCGVHBJNK','GHJKL',4567890,567890,67890,45789,'non','XFCGVHJKL','Écologie','FGHJK?L','GHJKLMmlkk','FGHJKL','hklk'),(3,'sarah','rubio','hk=bnkl,m;hjklmù',5678,'FHBZ','KLNJZB',87652,'FCGVHBJNK','GHJKL',4567890,567890,67890,45789,'non','XFCGVHJKL','Écologie','FGHJK?L','GHJKLMmlkk','FGHJKL','hklk'),(4,'rubio','sarah','parentie',24190,'Chantérac','france',875378,'shlm','fghjkl',34567890,4567890,4567890,56789,'non','GHJK','Social','DFGHJKL?','FCGVHBJNK?L','DFGHJKL',''),(5,'sarah','rubio','hk=bnkl,m;hjklmù',5678,'FHBZ','KLNJZB',87652,'FCGVHBJNK','GHJKL',4567890,567890,67890,45789,'non','XFCGVHJKL','Écologie','FGHJK?L','GHJKLMmlkk','FGHJKL','hklk');
/*!40000 ALTER TABLE `entrepreneurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investisseurs`
--

DROP TABLE IF EXISTS `investisseurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investisseurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `address` longtext,
  `cp` int NOT NULL,
  `city` longtext,
  `country` varchar(100) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `mail` text,
  `risk` text,
  `amount_to_invest` int DEFAULT NULL,
  `profitability` int DEFAULT NULL,
  `categories` varchar(500) DEFAULT NULL,
  `why_invest` text,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investisseurs`
--

LOCK TABLES `investisseurs` WRITE;
/*!40000 ALTER TABLE `investisseurs` DISABLE KEYS */;
INSERT INTO `investisseurs` VALUES (1,'sarah','rubio','tutu',1,'fra','franc',689,'Hjkl','gjhbk',5678,5678,'Bn','jhk','ty'),(2,'rubio','sarahk','parentie',24190,'chanterac','france',7865,'sub@live.fr','risk0',56,67,'education','aider au developpement de projet','tutu'),(3,'he','sraah','hekje',56,'canta','france',7,'shsks@kl','risk1',4,6,'ecologie','aider au developpement de projet','tut');
/*!40000 ALTER TABLE `investisseurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projets`
--

DROP TABLE IF EXISTS `projets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projets` (
  `id` int NOT NULL,
  `title` text,
  `category` varchar(45) DEFAULT NULL,
  `description` text,
  `financial_needs` int DEFAULT NULL,
  `other_needs` varchar(45) DEFAULT NULL,
  `video_link` text,
  `web` text,
  `entrepreneur` text,
  `entrepreneur_description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projets`
--

LOCK TABLES `projets` WRITE;
/*!40000 ALTER TABLE `projets` DISABLE KEYS */;
INSERT INTO `projets` VALUES (1,'Ethically','Écologie','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',30000,'Air pur','http://monlien.com','http://monlien.com','Sarah Papou','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),(2,'Soyons-sport','Emploi','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',20000,'Méditation','http://monlien.com','http://monlien.com','Adrien Richard','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),(3,'BaladeSonore','Tech','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',50000,'Sons','http://monlien.com','http://monlien.com','Sophie Cheav','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).');
/*!40000 ALTER TABLE `projets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-07  0:53:58
