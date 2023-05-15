-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 09, 2023 at 03:34 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucky_bank_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE IF NOT EXISTS `customer_details` (
  `Customer_Name` varchar(500) NOT NULL,
  `Account_Type` varchar(500) NOT NULL,
  `Account_No` int(100) NOT NULL,
  `Pin_No` int(4) NOT NULL,
  `ID_Type` varchar(500) NOT NULL,
  `ID_No` int(100) NOT NULL,
  `Phone_No` int(11) NOT NULL,
  `Balance` int(11) NOT NULL,
  PRIMARY KEY (`Account_No`,`Pin_No`,`ID_No`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`Customer_Name`, `Account_Type`, `Account_No`, `Pin_No`, `ID_Type`, `ID_No`, `Phone_No`, `Balance`) VALUES
('Yohan Chamudhitha', 'Savings Account', 1675964, 1645, 'National Identity Card', 2145625414, 711234567, 53978),
('Hasanthi', 'Savings Account', 4551648, 888, 'National Identity Card', 1956245822, 784565115, 20500),
('www', 'Savings Account', 44, 44, 'Driving License', 5412514, 451154, 102);

-- --------------------------------------------------------

--
-- Table structure for table `customer_login_details`
--

DROP TABLE IF EXISTS `customer_login_details`;
CREATE TABLE IF NOT EXISTS `customer_login_details` (
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Pin_No` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_login_details`
--

INSERT INTO `customer_login_details` (`User_Name`, `Password`, `Pin_No`) VALUES
('Hasnthi', '333', '888'),
('www', '75', '44'),
('Chamu', '555', '1645');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
CREATE TABLE IF NOT EXISTS `temp` (
  `User_Name` varchar(50) NOT NULL,
  `Password` int(50) NOT NULL,
  `Pin_No` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`User_Name`, `Password`, `Pin_No`) VALUES
('Chamu', 555, 1645);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
