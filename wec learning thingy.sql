-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: learn
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `Name` varchar(50) NOT NULL,
  `Manufacturer` varchar(20) DEFAULT NULL,
  `Engine number` varchar(20) DEFAULT NULL,
  `Number of cylinders` varchar(8) DEFAULT NULL,
  `Engine configuration` varchar(15) DEFAULT NULL,
  `Regulation` varchar(20) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES ('296 GT3 Evo','Ferrari','F163CG','6','v','GT3','LMGT3'),('499P','Ferrari','F163CG','6','V','LMH','Hyper car'),('720S GT3 Evo','McLaren','M840T','8','V','GT3','LMGT3'),('911 GT3 R(992.2)','Porsche','M97/80','6','Flat','GT3','LMGT3'),('9X8','Peugeot','X6H','6','V','LMH','Hyper car'),('A424','Alpine','V634','6','V','LMDH','Hyper car'),('AMG GT3 Evo','Mercedes Benz','m159','8','V','GT3','LMGT3'),('Corvette C8 Z06 GT3.R','Chevrolet','LT6.R','8','V','GT3','LMGT3'),('GMR-001','Genesis','G8MR','8','V','LMDH','Hyper car'),('M hybrid V8','BMW','P63/3','8','V','LMDH','Hyper car'),('M4 GT3 Evo','BMW','P58','6','Inline','GT3','LMGT3'),('Mustang GT3 Evo','Ford','Coyote','8','V','GT3','LMGT3'),('RC F GT3 ','Lexus','2UR-GSE','8','V','GT3','LMGT3'),('TR010 Hybrid','Toyota','H8909','6','V','LMH','Hyper car'),('V-Series.R','Cadillac','LMC55R','8','V','LMDH','Hyper car'),('Valkyrie AMR-LMH','Aston Martin','RA','12','V','LMH','Hyper car'),('Vantage AMR GT3 Evo','Aston Martin','M177','8','V','GT3','LMGT3');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gt3drivers`
--

DROP TABLE IF EXISTS `gt3drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gt3drivers` (
  `Name` varchar(70) DEFAULT NULL,
  `Number` int DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  KEY `Number` (`Number`),
  CONSTRAINT `gt3drivers_ibfk_1` FOREIGN KEY (`Number`) REFERENCES `lmgt3entry` (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gt3drivers`
--

LOCK TABLES `gt3drivers` WRITE;
/*!40000 ALTER TABLE `gt3drivers` DISABLE KEYS */;
INSERT INTO `gt3drivers` VALUES ('Antares Au',10,'Hong Kong'),('Tom Fleming',10,'Great Britain'),('Marvin Kirchhöfer',10,'Hong Kong'),('Antares Au',10,'Hong Kong'),('Tom Fleming',10,'Great Britain'),('Marvin Kirchhöfer',10,'Germany'),('Finn Gehritz',58,'Germany'),('Benjamin Goethe',58,'Germany'),('Alexander West',58,'Sweden'),('François Hériau',21,'France'),('Simon Mann',21,'USA'),('Alessio Rovera',21,'Italy'),('Francesco Castellacci',54,'Italy'),('Thomas Flohr',54,'Switzerland'),('Davide Rigon',54,'Italy'),('Eduardo Barrichello',23,'Brazil'),('Johny Adam',23,'Great Britain'),('Gray Newell',23,'USA'),('Mattia Drudi',27,'Italy'),('Ian James',27,'Great Britain'),('Zacharie Robichon',27,'Canada'),('Augusto Farfus',32,'Brazil'),('Sean Gelal',32,'Indonesia'),('Darren Leung',32,'Great Britain'),('Dan Harper',69,'Great Britain'),('Anthony McIntosh',69,'USA'),('Parker Thompson',69,'Canada'),('Johny Edgar',33,'Great Britain'),('Nicky Catsburg',33,'Netherlands'),('Ben Keating',33,'USA'),('Blake McDonald',33,'USA'),('Peter Dempsey',34,'Ireland'),('Charlie Eastwood',34,'Ireland'),('Salih Yoluç',34,'Turkey'),('Rui Andrade',61,'Angola'),('Martin Berry',61,'Australia'),('Maxime Martin',61,'Belgium'),('Matteo Cressoni',79,'Italy'),('Lin Hodenius',79,'Netherlands'),('Johannes Zelger',79,'Italy'),('Steffano Gattuso',88,'Italy'),('Giammarco Levorato',88,'Italy'),('Logan Sargeant',88,'USA'),('Eric Powell',77,'USA'),('Sebastian Priaulx',77,'Great Britain'),('Ben Tuk',77,'Great Britain'),('Jack Hawksworth',78,'Great Britain'),('Esteban Masson',78,'France'),('Tom Van Rompuy',78,'Belgium'),('José María López',87,'Argentina'),('Clemens Schid',87,'Austria'),('Răzvan Umbrărescu',87,'Romania'),('Timur Boguslavskiy',91,'Neutral'),('James Cottingham',91,'Great Britain'),('Ayhancan Güven',91,'Turkey'),('Richard Lietz',92,'Austria'),('Richard Lietz',92,'Italy'),('Yasser Shahin',92,'Australia');
/*!40000 ALTER TABLE `gt3drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `hypercar`
--

DROP TABLE IF EXISTS `hypercar`;
/*!50001 DROP VIEW IF EXISTS `hypercar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hypercar` AS SELECT 
 1 AS `Number`,
 1 AS `Team`,
 1 AS `Model`,
 1 AS `Engine`,
 1 AS `Manufacturer`,
 1 AS `Regulation`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hypercardrivers`
--

DROP TABLE IF EXISTS `hypercardrivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hypercardrivers` (
  `Name` varchar(80) DEFAULT NULL,
  `Number` varchar(20) DEFAULT NULL,
  `Nationality` varchar(30) DEFAULT NULL,
  KEY `Number` (`Number`),
  CONSTRAINT `hypercardrivers_ibfk_1` FOREIGN KEY (`Number`) REFERENCES `hypercarentry` (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hypercardrivers`
--

LOCK TABLES `hypercardrivers` WRITE;
/*!40000 ALTER TABLE `hypercardrivers` DISABLE KEYS */;
INSERT INTO `hypercardrivers` VALUES ('Tom Gamble','007','Great Britain'),('Ross Gunn','007','Great Britain'),('Harry Tincknell','007','Great Britain'),('Roman De Angelis','009','Canada'),('Alex Riberas','009','Spain'),('Marco Sørensen','009','Denmark'),('Mike Conway','7','Great Britain'),('Kamui Kobayashi','7','Japan'),('Nyck de Vries','7','Netherlands'),('Sébastien Buemi','8','Switzerland'),('Brendon Hartley','8','New Zealand'),('Ryō Hirakawa','8','Japan'),('Alex Lynn','12','Great Britain'),('Will Stevens','12','Great Britain'),('Norman Nato','12','France'),('Jack Aitken','38','Great Britain'),('Earl Bamber','38','New Zealand'),('Sébastien Bourdais','38','France'),('Kevin Magnussen','12','Denmark'),('Raffaele Marciello','12','Switzerland'),('Dries Vanthoor','12','Belgium'),('Robin Frijns','20','Netherlands'),('René Rast','20','Germany'),('Sheldon van der Linde','20','South Africa'),('André Lotterer','17','Germany'),('Pipo Derani','17','Brazil'),('Mathys Jaubert','17','France'),('Paul-Loup Chatin','19','France'),('Mathieu Jaminet','19','France'),('Daniel Juncadella','19','Spain'),('Charles Milesi','35','France'),('Ferdinand Habsburg','35','Austria'),('António Félix da Costa','35','France'),('Jules Gounon','36','France'),('Victor Martins','36','France'),('Frédéric Makowiecki','36','France'),('Antonio Fuoco','50','Italy'),('Nicklas Nielsen','50','Denmark'),('Miguel Molina','50','Spain'),('Antonio Giovinazzi','51','Italy'),('Alessandro Pier Guidi','51','Italy'),('James Calado','51','Great Britain'),('Phil Hanson','83','Great Britain'),('Robert Kubica','83','Poland'),('Yifei Ye','83','China'),('Paul di Resta','93','Great Britain'),('Nick Cassidy','93','New Zealand'),('Stoffel Vandoorne','93','Belgium'),('Loïc Duval','94','France'),('Théo Pourchaire','94','France'),('Mathe Jakobsen','94','Denmark');
/*!40000 ALTER TABLE `hypercardrivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hypercarentry`
--

DROP TABLE IF EXISTS `hypercarentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hypercarentry` (
  `Number` varchar(10) NOT NULL,
  `Team` varchar(100) DEFAULT NULL,
  `Car` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Number`),
  KEY `Car` (`Car`),
  CONSTRAINT `hypercarentry_ibfk_1` FOREIGN KEY (`Car`) REFERENCES `cars` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hypercarentry`
--

LOCK TABLES `hypercarentry` WRITE;
/*!40000 ALTER TABLE `hypercarentry` DISABLE KEYS */;
INSERT INTO `hypercarentry` VALUES ('007','Aston Martin THOR team','Valkyrie AMR-LMH'),('009','Aston Martin THOR team','Valkyrie AMR-LMH'),('12','Cadillac Hertz team Jota','V-Series.R'),('15','BMW M team WRT','M hybrid V8'),('17','Genesis magma racing','GMR-001'),('19','Genesis magma racing','GMR-001'),('20','BMW M team WRT','M hybrid V8'),('35','Alpine endurance team','A424'),('36','Alpine endurance team','A424'),('38','Cadillac Hertz team Jota','V-Series.R'),('50','Ferrari AF corse','499P'),('51','Ferrari AF corse','499P'),('7','Toyota racing','TR010 Hybrid'),('8','Toyota racing','TR010 Hybrid'),('83','AF corse','499P'),('93','Pegueot Totalenergies','9X8'),('94','Pegueot Totalenergies','9X8');
/*!40000 ALTER TABLE `hypercarentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `hypercargrid`
--

DROP TABLE IF EXISTS `hypercargrid`;
/*!50001 DROP VIEW IF EXISTS `hypercargrid`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hypercargrid` AS SELECT 
 1 AS `Number`,
 1 AS `Team`,
 1 AS `Model`,
 1 AS `Manufacturer`,
 1 AS `Driver`,
 1 AS `Nationality`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lmgt3`
--

DROP TABLE IF EXISTS `lmgt3`;
/*!50001 DROP VIEW IF EXISTS `lmgt3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lmgt3` AS SELECT 
 1 AS `Number`,
 1 AS `Team`,
 1 AS `Model`,
 1 AS `Engine`,
 1 AS `Manufacturer`,
 1 AS `Regulation`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lmgt3entry`
--

DROP TABLE IF EXISTS `lmgt3entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lmgt3entry` (
  `Number` int NOT NULL,
  `Team` varchar(100) DEFAULT NULL,
  `Car` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Number`),
  KEY `Car` (`Car`),
  CONSTRAINT `lmgt3entry_ibfk_1` FOREIGN KEY (`Car`) REFERENCES `cars` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lmgt3entry`
--

LOCK TABLES `lmgt3entry` WRITE;
/*!40000 ALTER TABLE `lmgt3entry` DISABLE KEYS */;
INSERT INTO `lmgt3entry` VALUES (10,'Garage 59','720S GT3 Evo'),(21,'Vista AF corse','296 GT3 Evo'),(23,'Heart of racing team','Vantage AMR GT3 Evo'),(27,'Heart of racing team','Vantage AMR GT3 Evo'),(32,'Team WRT','M4 GT3 Evo'),(33,'TF Sport','Corvette C8 Z06 GT3.R'),(34,'Racing team Turkey by TF','Corvette C8 Z06 GT3.R'),(54,'Vista AF corse','296 GT3 Evo'),(58,'Garage 59','720S GT3 Evo'),(61,'Iron lynx','AMG GT3 Evo'),(69,'Team WRT','M4 GT3 Evo'),(77,'Proton competition','Mustang GT3 Evo'),(78,'Akkodis ASP Team','RC F GT3 '),(79,'Iron lynx','AMG GT3 Evo'),(87,'Akkodis ASP Team','RC F GT3 '),(88,'Proton competition','Mustang GT3 Evo'),(91,'Manthey DK Engineering','911 GT3 R(992.2)'),(92,'The bend Manthey','911 GT3 R(992.2)');
/*!40000 ALTER TABLE `lmgt3entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lmgt3grid`
--

DROP TABLE IF EXISTS `lmgt3grid`;
/*!50001 DROP VIEW IF EXISTS `lmgt3grid`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lmgt3grid` AS SELECT 
 1 AS `Number`,
 1 AS `Team`,
 1 AS `Model`,
 1 AS `Manufacturer`,
 1 AS `Drivers`,
 1 AS `Nationality`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wecgrid`
--

DROP TABLE IF EXISTS `wecgrid`;
/*!50001 DROP VIEW IF EXISTS `wecgrid`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wecgrid` AS SELECT 
 1 AS `Number`,
 1 AS `Team`,
 1 AS `Model`,
 1 AS `Manufacturer`,
 1 AS `Drivers`,
 1 AS `Nationality`,
 1 AS `Class`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `hypercar`
--

/*!50001 DROP VIEW IF EXISTS `hypercar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hypercar` AS select `h`.`Number` AS `Number`,`h`.`Team` AS `Team`,`c`.`Name` AS `Model`,concat(`c`.`Engine configuration`,`c`.`Number of cylinders`) AS `Engine`,`c`.`Manufacturer` AS `Manufacturer`,`c`.`Regulation` AS `Regulation` from (`hypercarentry` `h` join `cars` `c` on((`h`.`Car` = `c`.`Name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hypercargrid`
--

/*!50001 DROP VIEW IF EXISTS `hypercargrid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hypercargrid` AS select `q`.`Number` AS `Number`,`q`.`Team` AS `Team`,`q`.`Model` AS `Model`,`q`.`Manufacturer` AS `Manufacturer`,`h`.`Name` AS `Driver`,`h`.`Nationality` AS `Nationality` from (`hypercar` `q` join `hypercardrivers` `h` on((`q`.`Number` = `h`.`Number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lmgt3`
--

/*!50001 DROP VIEW IF EXISTS `lmgt3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lmgt3` AS select `g`.`Number` AS `Number`,`g`.`Team` AS `Team`,`c`.`Name` AS `Model`,concat(`c`.`Engine configuration`,`c`.`Number of cylinders`) AS `Engine`,`c`.`Manufacturer` AS `Manufacturer`,`c`.`Regulation` AS `Regulation` from (`lmgt3entry` `g` join `cars` `c` on((`g`.`Car` = `c`.`Name`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lmgt3grid`
--

/*!50001 DROP VIEW IF EXISTS `lmgt3grid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lmgt3grid` AS select `e`.`Number` AS `Number`,`e`.`Team` AS `Team`,`e`.`Model` AS `Model`,`e`.`Manufacturer` AS `Manufacturer`,`d`.`Name` AS `Drivers`,`d`.`Nationality` AS `Nationality` from (`lmgt3` `e` join `gt3drivers` `d` on((`e`.`Number` = `d`.`Number`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wecgrid`
--

/*!50001 DROP VIEW IF EXISTS `wecgrid`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wecgrid` AS select `hypercargrid`.`Number` AS `Number`,`hypercargrid`.`Team` AS `Team`,`hypercargrid`.`Model` AS `Model`,`hypercargrid`.`Manufacturer` AS `Manufacturer`,`hypercargrid`.`Driver` AS `Drivers`,`hypercargrid`.`Nationality` AS `Nationality`,'Hypercar' AS `Class` from `hypercargrid` union all select `lmgt3grid`.`Number` AS `Number`,`lmgt3grid`.`Team` AS `Team`,`lmgt3grid`.`Model` AS `Model`,`lmgt3grid`.`Manufacturer` AS `Manufacturer`,`lmgt3grid`.`Drivers` AS `Drivers`,`lmgt3grid`.`Nationality` AS `Nationality`,'LMGT3' AS `Class` from `lmgt3grid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-09 12:08:48
