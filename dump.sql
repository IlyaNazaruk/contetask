-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: courses-symfony
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20200223163953','2020-02-23 16:40:02'),('20200227144639','2020-02-27 14:47:20'),('20200227153524','2020-02-27 15:35:29'),('20200227153744','2020-02-27 15:37:50'),('20200227171908','2020-02-27 17:19:14'),('20200227191530','2020-02-27 19:15:37'),('20200228154353','2020-02-28 15:44:00');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer` tinytext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:object)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ilya','Nazaruk','123123','Enadz','$2y$13$dfBz/iHcr2fm7MdAwuZRPOVyI3WI3SaYxYArfWRmivAUiftMttLUG',NULL),(2,'Maksim','Lush','37529123','Ujas','$2y$13$i.MydmsXVN0PYk1GU4zA3.y8.NqE8Wekl/YQzJvVgkdY5rhILUbjq',NULL),(3,'Vika','Golo','292278319','Ukkq','$2y$13$IfHe9G/E3esQgSiDdr3GW.lAHU4n0zPveHz0RO1yx026rcZEq1Spe',NULL),(4,'Roma','asd','987654321','Reqwe','$2y$13$vlBAJCNYOh3S3jbZT7QBH.jxgXLLOnr7Uf4ugr.If8VlJJzarIUfS',NULL),(5,'Raga','Inter','9379992','Iopa','$2y$13$5PHo3QporCelU.E4cpe33uQsh6mVDz9ULqbapuG0cLTnYJlQY8qSK',NULL),(6,'Mot','Utrer','6092726','Uiqwe','$2y$13$/uAx2iAzc7Yh8J16Gar4Ve.1spNXg8HU/.cMMmG5vuGynbm.D2CuW','App\\Entity\\User'),(7,'Sasha','Romo','541263','Hostiqwe','$2y$13$ZP.0AAIVMQnVCxdOfZmvae2tLH1pc.106fziiZFr6PylVmPbK.EHW','App\\Entity\\User'),(8,'Vika','Inter','12377123','Reqwe','$2y$13$EX9rfeCuMdne/2P3qQ9JE.rkmJSCPQPOm/.VxyI.LSaqAHDwrD92S','App\\Entity\\User'),(9,'Yue','Hao','51723','Uqweo','$2y$13$gW5gKYFt3aA9qPcRnO2N1etjPpD15DRkx4KlkJ8fc.35EjtzYwleW','Golo'),(10,'Kot','Inter','12431451','Oaspdp','$2y$13$TkEkKESgmvUdDmIgmX1IIePXc/x.nJvYZGy.IFswjKqgHhbmvwqJ2',NULL),(11,'Yuqh','asdlkj','6543','Psadjq','$2y$13$JzjMhTkUgDnyji7zrmpLk.AMEBVzaMmDqFLldtBd1lKeoSHRDET72',NULL),(12,'Lora','Brown','18238','Pqwke','$2y$13$i0vkRFQtRxEJT6fr/vCVEu5YrmVDZ5PxlKi34GsgvZ4o.liLv6RFa','Inter'),(13,'Raga','Inter','987654321','Iopa','$2y$13$K29kDwYiwjGa6hekOYahmeH6IGxOOHN35SeJmiaErm9BORFUcPepy',NULL),(14,'Ywqe','qwepo','91111','aslkdj','$2y$13$j63NhlXuSwxHAw/EKjuRpuyrhbGtV29bFzfuEFLBIDr5AlGBsZ3S6',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-28 20:21:08
