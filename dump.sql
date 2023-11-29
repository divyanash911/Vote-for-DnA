-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: COMPANY
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `Political_Party`
--

DROP TABLE IF EXISTS `Political_Party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Political_Party` (
  `Party_ID` int NOT NULL,
  `Party_Name` char(30) NOT NULL,
  `Party_President` char(30) DEFAULT NULL,
  `Party_Headquarters` char(30) DEFAULT NULL,
  `Symbol` char(30) DEFAULT NULL,
  `Total_Members` int DEFAULT NULL,
  `Seats_Contested` int DEFAULT NULL,
  PRIMARY KEY (`Party_ID`),
  UNIQUE KEY `Party_ID` (`Party_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Political_Party`
--

LOCK TABLES `Political_Party` WRITE;
/*!40000 ALTER TABLE `Political_Party` DISABLE KEYS */;
/*!40000 ALTER TABLE `Political_Party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citizen` (
  `Citizen_ID` int NOT NULL,
  `Aadhar_No` int NOT NULL,
  `Name` char(30) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Street_Address` char(100) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Nationality` char(20) DEFAULT NULL,
  `Annual_Income` int DEFAULT NULL,
  `Educational_Background` char(20) DEFAULT NULL,
  `State` char(20) DEFAULT NULL,
  `City` char(20) DEFAULT NULL,
  `PinCode` int DEFAULT NULL,
  `Contact_Number` int DEFAULT NULL,
  `Email_Address` char(30) DEFAULT NULL,
  PRIMARY KEY (`Citizen_ID`),
  UNIQUE KEY `Aadhar_No` (`Aadhar_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen`
--

LOCK TABLES `citizen` WRITE;
/*!40000 ALTER TABLE `citizen` DISABLE KEYS */;
/*!40000 ALTER TABLE `citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter` (
  `Aadhar_No` int NOT NULL,
  `Voter_ID` int NOT NULL,
  `DOB` date DEFAULT NULL,
  `Street_Address` char(100) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Nationality` char(20) DEFAULT NULL,
  `Annual_Income` int DEFAULT NULL,
  `Educational_Background` char(30) DEFAULT NULL,
  `State` char(20) DEFAULT NULL,
  `City` char(20) DEFAULT NULL,
  `PinCode` int DEFAULT NULL,
  `Name` char(30) DEFAULT NULL,
  `Voting_constituency` char(30) DEFAULT NULL,
  PRIMARY KEY (`Voter_ID`),
  UNIQUE KEY `Aadhar_No` (`Aadhar_No`),
  UNIQUE KEY `Voter_ID` (`Voter_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30  2:15:06
