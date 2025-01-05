-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 11:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `victoria clinic db`
--

-- --------------------------------------------------------

--
-- Table structure for table `geographical_location`
--

CREATE TABLE `geographical_location` (
  `Location_ID` int(11) NOT NULL,
  `Village` int(11) NOT NULL,
  `Parish` varchar(100) NOT NULL,
  `Sub_County` varchar(100) NOT NULL,
  `County` varchar(100) NOT NULL,
  `Region` int(11) NOT NULL,
  `Population` int(11) NOT NULL,
  `Coordinates` varchar(100) NOT NULL,
  `Malaria_Risk_Level` varchar(50) NOT NULL,
  `Helath_Facilities_Count` int(11) NOT NULL,
  `1TN_Coverage` decimal(10,0) NOT NULL,
  `Reported_Cases` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `health_facility`
--

CREATE TABLE `health_facility` (
  `Facility_ID` int(11) NOT NULL,
  `Facility_Name` varchar(100) NOT NULL,
  `Location_ID` int(11) NOT NULL,
  `Facility_Type` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Contact_Details` varchar(10) NOT NULL,
  `Date_Added` date NOT NULL,
  `Facility_Head` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient data`
--

CREATE TABLE `patient data` (
  `PateintID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `NOK` varchar(100) NOT NULL,
  `Location` int(11) NOT NULL,
  `Date_added` date NOT NULL,
  `Update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `Resource_ID` int(11) NOT NULL,
  `Facility_ID` int(11) NOT NULL,
  `Resource_Type` varchar(50) NOT NULL,
  `Quality` int(11) NOT NULL,
  `Last_Update_Date` date NOT NULL,
  `Description` text NOT NULL,
  `Date_Added` date NOT NULL,
  `Update_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `Treatment_ID` int(11) NOT NULL,
  `Treatment_Name` varchar(50) NOT NULL,
  `Treatment_Description` text NOT NULL,
  `Dosage` varchar(50) NOT NULL,
  `Side_Effects` text NOT NULL,
  `Date_Added` date NOT NULL,
  `Update_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `geographical_location`
--
ALTER TABLE `geographical_location`
  ADD PRIMARY KEY (`Location_ID`);

--
-- Indexes for table `health_facility`
--
ALTER TABLE `health_facility`
  ADD PRIMARY KEY (`Facility_ID`);

--
-- Indexes for table `patient data`
--
ALTER TABLE `patient data`
  ADD UNIQUE KEY `PateintID` (`PateintID`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`Resource_ID`),
  ADD UNIQUE KEY `Facility_ID` (`Facility_ID`),
  ADD UNIQUE KEY `Facility_ID_2` (`Facility_ID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`Treatment_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
