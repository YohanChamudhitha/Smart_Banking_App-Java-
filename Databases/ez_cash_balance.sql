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
-- Database: `ez_cash_balance`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
CREATE TABLE IF NOT EXISTS `customer_details` (
  `Customer_Name` varchar(100) NOT NULL,
  `Customer_acc_no` int(50) NOT NULL,
  `Acc_balance` int(100) NOT NULL,
  PRIMARY KEY (`Customer_acc_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`Customer_Name`, `Customer_acc_no`, `Acc_balance`) VALUES
('Yohan Chamudhitha', 10002201, 1000),
('Ridma Rangani', 10002202, 1000),
('Hasanthi Upeka', 10002203, 1000),
('Thisara Dilshan', 10002204, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `ez_cash_balance`
--

DROP TABLE IF EXISTS `ez_cash_balance`;
CREATE TABLE IF NOT EXISTS `ez_cash_balance` (
  `Account_no` int(50) NOT NULL,
  `Customer_name` varchar(100) NOT NULL,
  `Phone_No` int(100) NOT NULL,
  `Last_Transaction_Timestamp` timestamp NOT NULL,
  `Balance` int(250) NOT NULL,
  PRIMARY KEY (`Account_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ez_cash_balance`
--

INSERT INTO `ez_cash_balance` (`Account_no`, `Customer_name`, `Phone_No`, `Last_Transaction_Timestamp`, `Balance`) VALUES
(20002201, 'Yohan Chamudhitha', 711234567, '2023-01-03 22:56:08', 80000),
(20002202, 'Ridma Rangani', 715421365, '2023-05-07 09:10:24', 5400),
(20002203, 'Hasanthi Upeka', 784565115, '2023-05-07 09:12:24', 5500),
(20002204, 'Thisara Dilshan', 784565118, '2023-05-01 08:58:38', 4800);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
