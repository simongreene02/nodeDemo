-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: demodata
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'MDIX5189'),(2,'JEOM9208'),(3,'FORS2035'),(4,'DXHX9404'),(5,'HNWJ5032'),(6,'NSLG8114'),(7,'DYPQ0806'),(8,'FCYZ6343'),(9,'WCZK2188'),(10,'ARXV4098');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_junction`
--

DROP TABLE IF EXISTS `sc_junction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_junction` (
  `student_id` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  PRIMARY KEY (`student_id`,`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_junction`
--

LOCK TABLES `sc_junction` WRITE;
/*!40000 ALTER TABLE `sc_junction` DISABLE KEYS */;
INSERT INTO `sc_junction` VALUES (1,2),(1,3),(1,4),(1,6),(2,1),(2,3),(2,4),(2,8),(2,9),(3,1),(3,3),(3,9),(3,10),(4,6),(4,7),(4,9),(5,1),(5,2),(5,3),(5,6),(5,7),(5,9),(6,1),(6,5),(6,6),(6,7),(6,8),(6,10),(7,2),(7,6),(7,9),(7,10),(8,3),(8,4),(8,8),(9,3),(9,4),(9,7),(9,8),(9,10),(10,1),(10,7),(10,8),(10,10),(11,2),(11,4),(11,5),(11,8),(11,9),(12,1),(12,2),(12,4),(12,5),(12,8),(12,9),(13,1),(13,2),(13,5),(14,3),(14,4),(14,5),(14,6),(14,7),(14,9),(15,1),(15,3),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(16,2),(16,5),(16,6),(17,1),(17,3),(17,8),(17,9),(17,10),(18,1),(18,2),(18,4),(18,5),(18,7),(18,8),(18,9),(18,10),(19,2),(19,3),(19,6),(19,7),(19,9),(20,4),(20,6),(20,9),(20,10),(21,1),(21,3),(21,4),(21,6),(21,8),(22,1),(22,6),(22,8),(23,4),(23,9),(24,1),(24,2),(24,3),(24,5),(24,6),(24,7),(24,9),(24,10),(25,2),(25,3),(25,7),(25,10),(26,2),(26,6),(26,7),(26,8),(26,10),(27,1),(27,5),(27,9),(27,10),(28,1),(28,2),(28,3),(28,4),(28,5),(28,9),(28,10),(29,1),(29,4),(29,5),(29,7),(29,8),(29,9),(30,3),(30,4),(30,6),(30,7),(30,8),(30,10),(31,5),(32,5),(32,6),(32,7),(32,9),(33,2),(33,5),(33,9),(34,1),(34,3),(34,5),(34,8),(34,9),(34,10),(35,1),(35,3),(35,8),(36,1),(36,2),(36,3),(36,5),(36,7),(36,9),(36,10),(37,2),(37,5),(37,8),(37,9),(37,10),(38,2),(38,3),(38,4),(38,5),(38,6),(38,9),(38,10),(39,2),(39,4),(39,6),(39,7),(39,9),(40,2),(40,3),(40,4),(40,5),(40,6),(40,8),(40,9),(40,10),(41,3),(41,6),(41,8),(41,9),(41,10),(42,1),(42,4),(42,7),(42,10),(43,1),(43,4),(43,7),(43,8),(43,9),(43,10),(44,5),(44,8),(44,9),(44,10),(45,1),(45,2),(45,4),(45,6),(45,7),(45,8),(45,10),(46,2),(46,4),(46,5),(46,6),(46,7),(46,9),(46,10),(47,6),(47,10),(48,3),(48,9),(48,10),(49,1),(49,2),(49,6),(50,2),(50,4),(50,5),(50,6),(50,7),(50,9),(51,2),(51,3),(51,4),(51,5),(51,6),(51,9),(52,1),(52,2),(52,3),(52,4),(52,6),(52,9),(52,10),(53,1),(53,2),(53,3),(53,4),(53,6),(53,9),(54,1),(54,2),(54,3),(54,4),(54,9),(54,10),(55,4),(55,6),(55,7),(56,2),(56,6),(56,10),(57,1),(57,2),(57,3),(57,6),(57,7),(57,8),(57,9),(57,10),(58,2),(58,4),(58,5),(58,6),(58,8),(58,9),(59,1),(59,3),(59,7),(59,9),(59,10),(60,1),(60,2),(60,5),(60,6),(60,7),(60,8),(60,10),(61,3),(61,4),(61,5),(61,6),(61,8),(61,9),(62,5),(62,8),(63,6),(63,7),(64,2),(64,3),(64,4),(64,6),(64,8),(64,9),(64,10),(65,1),(65,3),(65,6),(65,7),(66,2),(66,5),(66,9),(67,1),(67,2),(67,3),(67,6),(67,8),(67,10),(68,1),(68,3),(68,7),(68,10),(69,2),(69,4),(69,5),(69,6),(69,7),(69,8),(69,10),(70,2),(70,4),(70,5),(70,6),(70,7),(70,9),(70,10),(71,1),(71,4),(71,5),(71,6),(71,10),(72,2),(72,4),(72,8),(72,9),(73,1),(73,2),(73,6),(74,1),(74,2),(74,4),(74,5),(74,6),(74,8),(74,9),(75,1),(75,2),(75,3),(75,5),(75,9),(75,10),(76,3),(76,4),(76,7),(76,8),(76,10),(77,1),(77,2),(77,4),(77,6),(77,9),(78,2),(78,5),(78,6),(78,9),(78,10),(79,1),(79,2),(79,5),(79,6),(79,9),(79,10),(80,1),(80,2),(80,6),(80,8),(81,1),(81,9),(82,3),(82,5),(82,6),(82,9),(82,10),(83,3),(83,4),(83,5),(83,7),(84,2),(84,3),(84,5),(84,8),(84,9),(84,10),(85,1),(85,2),(85,3),(85,5),(85,6),(85,10),(86,2),(86,3),(86,4),(86,6),(86,8),(86,9),(87,1),(87,3),(87,5),(87,6),(87,8),(88,2),(88,3),(88,7),(88,8),(88,9),(89,6),(89,8),(89,9),(89,10),(90,1),(90,2),(90,3),(90,5),(90,6),(90,7),(90,9),(91,3),(91,4),(91,5),(91,7),(91,8),(91,10),(92,1),(92,3),(92,6),(92,8),(92,9),(93,3),(93,4),(93,6),(93,8),(94,3),(94,4),(94,7),(94,8),(94,9),(94,10),(95,2),(95,3),(95,6),(95,7),(95,8),(95,10),(96,2),(96,4),(96,5),(96,6),(96,7),(96,9),(96,10),(98,2),(98,4),(98,5),(98,6),(98,7),(98,8),(98,9),(98,10),(99,3),(99,4),(99,5),(99,7),(99,8),(99,9),(99,10),(100,1),(100,4),(100,8);
/*!40000 ALTER TABLE `sc_junction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Cuzago Paqejuc','Senior','Construction Engineering Management'),(2,'Ofyco Ibabij','Junior','Art History Emphasis'),(3,'Mykid Tecuvijel','Junior','Special Education'),(4,'Cipiro Bykinef','Senior','Architectural Design'),(5,'Nu Ysezipiko','Senior','Public Administration: Nonprofit Management'),(6,'Wido Mahixuhi','Senior','Photography Emphasis, Fine Arts'),(7,'Emyjic Oqukicyw','Senior','Early Childhood Education (Non-Licensure)'),(8,'Kyfisi Telufa','Freshman','Mathematics - Data Science'),(9,'Mi Bocaz','Freshman','Film and Television Emphasis, Theater, Film and Television'),(10,'Daqum Uyybew','Junior','Information Systems'),(11,'Yvuc Epepy','Senior','Political Science - Secondary Education'),(12,'Myj Buhyyebak','Freshman','Mathematics'),(13,'Esafigo Notyvay','Freshman','English - Film Studies'),(14,'Iky Izujuzoq','Sophomore','Sociology - Gender and Society'),(15,'Tyxov Ekomuti','Sophomore','Public Administration'),(16,'Xivevy Roruk','Junior','Economics'),(17,'Laky Pumu','Junior','Construction Management'),(18,'Ejahek Ayala','Senior','Business Administration: Entrepreneurship'),(19,'Ywemik Uhuram','Junior','Biology'),(20,'Yro Fucapo','Sophomore','Secondary Social Studies Education'),(21,'Iduqa Anozuxex','Sophomore','Spanish - Secondary Education'),(22,'Uwyfy Fotuj','Senior','Public Health - Bachelor of Arts'),(23,'Jetu Kaqifa','Sophomore','Construction Management'),(24,'Ijig Yryta','Sophomore','Music Business Audition Track Emphasis, Music'),(25,'Kul Eyeq','Sophomore','Human Resources Management'),(26,'Mevogug Agifi','Sophomore','Political Science'),(27,'Yne Yylypuk','Freshman','Ethnic Studies'),(28,'Yg Wutymyt','Freshman','Secondary Math Education'),(29,'Tisiv Wojym','Freshman','Psychology - Gardner Research Scholar - Bachelor of Arts'),(30,'Onowowu Efin','Senior','Ethnic Studies'),(31,'Ynazyt Fesihiqyd','Sophomore','Photography Emphasis, Fine Arts'),(32,'Xy Podup','Sophomore','Mathematics - Data Science'),(33,'Haxuzys Upobos','Sophomore','Performance Emphasis, Music'),(34,'Tehap Zimexi','Sophomore','Communication'),(35,'Un Jyhodudun','Junior','Business Administration: Accounting with Specialization in Information Systems'),(36,'Urokog Elyp','Senior','Early Childhood Education (Initial Licensure)'),(37,'Pym Ugahoba','Senior','Architectural Studies'),(38,'Leqofeh Xikofewuk','Senior','Business Administration: Entrepreneurship'),(39,'Ywag Sapyfyj','Sophomore','Public Administration'),(40,'Ykucoky Apewuha','Junior','Elementary Education'),(41,'Yha Ihud','Freshman','Psychology - Bachelor of Science'),(42,'Dew Akakowip','Senior','Business Administration: Financial Management with Specialization in Information Systems'),(43,'Sic Ocipit','Senior','Criminal Justice: Law Enforcement'),(44,'Ewy Ifawe','Senior','Computer Science - BA'),(45,'Yqohan Evew','Junior','Music Business Non-Audition Track Emphasis, Music'),(46,'In Acyzo','Sophomore','Civil Engineering'),(47,'Ce Anowik','Freshman','Construction Management'),(48,'Uvuzoz Utaja','Freshman','Human Development and Family Relations'),(49,'Yirimi Utob','Sophomore','Individually Structured Major - Integrated Health Sciences'),(50,'Mecixix Yyje','Senior','English - Creative Writing'),(51,'Ykaluje Kera','Junior','Geography'),(52,'Ow Werudyl','Freshman','Photography Emphasis, Fine Arts'),(53,'Vuhohu Avihox','Freshman','Digital Design Emphasis, Fine Arts'),(54,'Feqywe Isucixuh','Senior','Business Administration: Financial Management'),(55,'Ujomi Yyez','Freshman','Criminal Justice: Law Enforcement'),(56,'Xay Ququwa','Freshman','Psychology - Bachelor of Science'),(57,'Ed Duse','Freshman','Public Health - Bachelor of Science'),(58,'Amyka Cysujyt','Sophomore','Psychology - Gardner Research Scholar - Bachelor of Arts'),(59,'Qaty Yufy','Freshman','3D Graphics and Animation'),(60,'Ozupot Ibexuqa','Junior','Mathematics'),(61,'Peb Kowynuguf','Freshman','Songwriter Entrepreneur - Bachelor of Science'),(62,'Ci Akyrusofu','Freshman','Geography - Environment, Society, and Sustainability'),(63,'Syv Idapok','Sophomore','Sports Business'),(64,'Uko Rihys','Sophomore','Geography - Urban Studies and Planning'),(65,'Ap Ovozybuh','Freshman','English - Creative Writing'),(66,'Sy Ameb','Freshman','Business Administration: Management with Specialization in Information Systems'),(67,'Us Curoxer','Senior','Business Administration: Marketing with Specialization in Information Systems'),(68,'Jobex Vopuf','Junior','Mathematics - Applied Option'),(69,'Ob Huqijoro','Freshman','Architectural Studies'),(70,'Ahyy Boko','Freshman','Biology'),(71,'Mi Beva','Junior','English Writing, Rhetoric, and Technology'),(72,'Pusonil Umyfeny','Sophomore','Business Administration: Marketing with Specialization in Information Systems'),(73,'Hapihok Inax','Freshman','Architectural Studies'),(74,'Puzeyi Efoh','Junior','International Studies'),(75,'Qekany Qyhoge','Sophomore','Secondary Science Education'),(76,'Zanoh Omagudyxi','Freshman','Human Resources Management'),(77,'Ik Fenewom','Freshman','Criminal Justice'),(78,'Oyuluti Epul','Junior','Architectural Design'),(79,'Hulom Ujon','Junior','Public Administration'),(80,'Vejeqas Dyjev','Sophomore','Business Administration: Accounting'),(81,'Xanifah Ponu','Freshman','Art History Emphasis'),(82,'Unujolo Ipoxyxy','Sophomore','Business Administration: Entrepreneurship'),(83,'Jaroge Jonyba','Senior','Biochemistry'),(84,'Iyu Ixakyge','Freshman','Secondary Social Studies Education'),(85,'Kep Bynagix','Freshman','Risk Management and Insurance'),(86,'Da Ciwiv','Freshman','Geography - Environment, Society, and Sustainability'),(87,'Wuyono Xerolihu','Junior','History'),(88,'Lapowiw Domo','Freshman','Music Business Non-Audition Track Emphasis, Music'),(89,'Bahiva Lefob','Senior','Bioengineering'),(90,'Wykefu Huqivo','Sophomore','Political Science - Public Policy Option'),(91,'Cogen Awenudew','Freshman','English Writing, Rhetoric, and Technology'),(92,'Dolyzyp Vovejyhom','Freshman','Public Health - Bachelor of Science'),(93,'Xyji Enede','Freshman','Art Practices Emphasis, Transmedia Sculpture'),(94,'Soduvy Yudebila','Sophomore','Early Childhood Education (Non-Licensure)'),(95,'Uritig Qadilidaw','Senior','English - Film Studies'),(96,'Atoyewo Eduj','Senior','Spanish - Secondary Education'),(97,'Eqefypy Udegi','Sophomore','Computer Science - BS'),(98,'Tupur Kubyqi','Junior','Anthropology'),(99,'Niq Yzukewe','Sophomore','English - Film Studies'),(100,'Ytuyeji Obor','Junior','Individually Structured Major - Interdisciplinary Studies');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-05 16:32:50
