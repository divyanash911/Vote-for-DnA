-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: ELECTION
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `Candidate`
--

DROP TABLE IF EXISTS `Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Candidate` (
  `Candidate_ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Aadhar_No` int DEFAULT NULL,
  `Source_of_Funding` varchar(255) DEFAULT NULL,
  `Total_Donations` decimal(10,2) DEFAULT NULL,
  `Total_Funding_Received` decimal(10,2) DEFAULT NULL,
  `Total_Expenditure` decimal(10,2) DEFAULT NULL,
  `Party_ID` int DEFAULT NULL,
  `Constituency_ID` int DEFAULT NULL,
  PRIMARY KEY (`Candidate_ID`),
  KEY `Party_ID` (`Party_ID`),
  KEY `Aadhar_No` (`Aadhar_No`),
  KEY `Constituency_ID` (`Constituency_ID`),
  CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`Party_ID`) REFERENCES `Political_Party` (`Party_ID`),
  CONSTRAINT `candidate_ibfk_2` FOREIGN KEY (`Aadhar_No`) REFERENCES `Citizen` (`Aadhar_No`),
  CONSTRAINT `candidate_ibfk_3` FOREIGN KEY (`Constituency_ID`) REFERENCES `Constituency` (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate`
--

LOCK TABLES `Candidate` WRITE;
/*!40000 ALTER TABLE `Candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidate` ENABLE KEYS */;
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
-- Table structure for table `Constituency`
--

DROP TABLE IF EXISTS `Constituency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Constituency` (
  `C_ID` int NOT NULL,
  `C_Name` varchar(255) DEFAULT NULL,
  `State_Name` varchar(255) DEFAULT NULL,
  `Total_Residing_Citizens` int DEFAULT NULL,
  `Polling_Booths` int DEFAULT NULL,
  `EVM_Machines` int DEFAULT NULL,
  PRIMARY KEY (`C_ID`),
  KEY `State_Name` (`State_Name`),
  CONSTRAINT `constituency_ibfk_1` FOREIGN KEY (`State_Name`) REFERENCES `STATE` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Constituency`
--

LOCK TABLES `Constituency` WRITE;
/*!40000 ALTER TABLE `Constituency` DISABLE KEYS */;
/*!40000 ALTER TABLE `Constituency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criminal_record`
--

DROP TABLE IF EXISTS `criminal_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criminal_record` (
  `FIR_Number` int NOT NULL,
  `Nature_of_Offence` varchar(255) DEFAULT NULL,
  `Jurisdiction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FIR_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criminal_record`
--

LOCK TABLES `criminal_record` WRITE;
/*!40000 ALTER TABLE `criminal_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `criminal_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Number_of_Employees` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_responsibility`
--

DROP TABLE IF EXISTS `department_responsibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_responsibility` (
  `D_ID` int NOT NULL,
  `Responsibility` varchar(255) NOT NULL,
  PRIMARY KEY (`D_ID`,`Responsibility`),
  CONSTRAINT `department_responsibility_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `Department` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_responsibility`
--

LOCK TABLES `department_responsibility` WRITE;
/*!40000 ALTER TABLE `department_responsibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_responsibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Educational_Qualification`
--

DROP TABLE IF EXISTS `Educational_Qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Educational_Qualification` (
  `C_ID` int NOT NULL,
  `Qualification` varchar(255) NOT NULL,
  PRIMARY KEY (`C_ID`,`Qualification`),
  CONSTRAINT `educational_qualification_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `Candidate` (`Candidate_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Educational_Qualification`
--

LOCK TABLES `Educational_Qualification` WRITE;
/*!40000 ALTER TABLE `Educational_Qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `Educational_Qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `PinCode` varchar(10) DEFAULT NULL,
  `Residence` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Contact_Number` varchar(15) DEFAULT NULL,
  `Working_Department` varchar(255) DEFAULT NULL,
  `Super_ID` int DEFAULT NULL,
  `Street_Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Super_ID` (`Super_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Super_ID`) REFERENCES `Employee` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVM_Machine`
--

DROP TABLE IF EXISTS `EVM_Machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVM_Machine` (
  `Machine_ID` int NOT NULL,
  `No_of_Votes` int DEFAULT NULL,
  `Const_ID` int DEFAULT NULL,
  PRIMARY KEY (`Machine_ID`),
  KEY `Const_ID` (`Const_ID`),
  CONSTRAINT `evm_machine_ibfk_1` FOREIGN KEY (`Const_ID`) REFERENCES `Constituency` (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVM_Machine`
--

LOCK TABLES `EVM_Machine` WRITE;
/*!40000 ALTER TABLE `EVM_Machine` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVM_Machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FIR_Candidates`
--

DROP TABLE IF EXISTS `FIR_Candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FIR_Candidates` (
  `Candidate_ID` int NOT NULL,
  `FIR_Number` int NOT NULL,
  PRIMARY KEY (`Candidate_ID`,`FIR_Number`),
  KEY `FIR_Number` (`FIR_Number`),
  CONSTRAINT `fir_candidates_ibfk_1` FOREIGN KEY (`Candidate_ID`) REFERENCES `Candidate` (`Candidate_ID`),
  CONSTRAINT `fir_candidates_ibfk_2` FOREIGN KEY (`FIR_Number`) REFERENCES `criminal_record` (`FIR_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FIR_Candidates`
--

LOCK TABLES `FIR_Candidates` WRITE;
/*!40000 ALTER TABLE `FIR_Candidates` DISABLE KEYS */;
/*!40000 ALTER TABLE `FIR_Candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manifesto`
--

DROP TABLE IF EXISTS `manifesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manifesto` (
  `Party_ID` int NOT NULL,
  `Party_Name` varchar(255) DEFAULT NULL,
  `Publication_Date` date DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` text,
  `Face_of_Election` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Party_ID`),
  CONSTRAINT `manifesto_ibfk_1` FOREIGN KEY (`Party_ID`) REFERENCES `Political_Party` (`Party_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manifesto`
--

LOCK TABLES `manifesto` WRITE;
/*!40000 ALTER TABLE `manifesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `manifesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_of_Parliament`
--

DROP TABLE IF EXISTS `Member_of_Parliament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member_of_Parliament` (
  `Cnd_ID` int NOT NULL,
  `PP_ID` int NOT NULL,
  `CT_Id` int NOT NULL,
  PRIMARY KEY (`Cnd_ID`,`PP_ID`,`CT_Id`),
  KEY `PP_ID` (`PP_ID`),
  KEY `CT_Id` (`CT_Id`),
  CONSTRAINT `member_of_parliament_ibfk_1` FOREIGN KEY (`Cnd_ID`) REFERENCES `Candidate` (`Candidate_ID`),
  CONSTRAINT `member_of_parliament_ibfk_2` FOREIGN KEY (`PP_ID`) REFERENCES `Political_Party` (`Party_ID`),
  CONSTRAINT `member_of_parliament_ibfk_3` FOREIGN KEY (`CT_Id`) REFERENCES `Constituency` (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member_of_Parliament`
--

LOCK TABLES `Member_of_Parliament` WRITE;
/*!40000 ALTER TABLE `Member_of_Parliament` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member_of_Parliament` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `STATE`
--

DROP TABLE IF EXISTS `STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STATE` (
  `NAME` varchar(255) NOT NULL,
  `NUMBER_OF_CITIZENS` int DEFAULT NULL,
  `NUMBER_OF_CONSTITUENCIES` int DEFAULT NULL,
  `NUMBER_OF_REGIONAL_PARTIES` int DEFAULT NULL,
  `RESIDING_CITIZENS` int DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STATE`
--

LOCK TABLES `STATE` WRITE;
/*!40000 ALTER TABLE `STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tenure`
--

DROP TABLE IF EXISTS `Tenure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tenure` (
  `CandidateID` int NOT NULL,
  `Term_Start_Date` date DEFAULT NULL,
  PRIMARY KEY (`CandidateID`),
  CONSTRAINT `tenure_ibfk_1` FOREIGN KEY (`CandidateID`) REFERENCES `Candidate` (`Candidate_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tenure`
--

LOCK TABLES `Tenure` WRITE;
/*!40000 ALTER TABLE `Tenure` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tenure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vote_Count_Machine_Party`
--

DROP TABLE IF EXISTS `Vote_Count_Machine_Party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vote_Count_Machine_Party` (
  `Political_Party_ID` int NOT NULL,
  `Machine_ID` int NOT NULL,
  `Vote_Count` int DEFAULT NULL,
  PRIMARY KEY (`Political_Party_ID`,`Machine_ID`),
  KEY `Machine_ID` (`Machine_ID`),
  CONSTRAINT `vote_count_machine_party_ibfk_1` FOREIGN KEY (`Political_Party_ID`) REFERENCES `Political_Party` (`Party_ID`),
  CONSTRAINT `vote_count_machine_party_ibfk_2` FOREIGN KEY (`Machine_ID`) REFERENCES `EVM_Machine` (`Machine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vote_Count_Machine_Party`
--

LOCK TABLES `Vote_Count_Machine_Party` WRITE;
/*!40000 ALTER TABLE `Vote_Count_Machine_Party` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vote_Count_Machine_Party` ENABLE KEYS */;
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

--
-- Table structure for table `WORKS_FOR`
--

DROP TABLE IF EXISTS `WORKS_FOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WORKS_FOR` (
  `C_ID` int NOT NULL,
  `D_ID` int NOT NULL,
  `E_ID` int NOT NULL,
  PRIMARY KEY (`C_ID`,`D_ID`,`E_ID`),
  KEY `D_ID` (`D_ID`),
  KEY `E_ID` (`E_ID`),
  CONSTRAINT `works_for_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `CONSTITUENCY` (`C_ID`),
  CONSTRAINT `works_for_ibfk_2` FOREIGN KEY (`D_ID`) REFERENCES `DEPARTMENT` (`ID`),
  CONSTRAINT `works_for_ibfk_3` FOREIGN KEY (`E_ID`) REFERENCES `EMPLOYEE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WORKS_FOR`
--

LOCK TABLES `WORKS_FOR` WRITE;
/*!40000 ALTER TABLE `WORKS_FOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `WORKS_FOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02  3:16:45
