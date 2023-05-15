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
-- Database: `slt_payments`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

DROP TABLE IF EXISTS `bill_payments`;
CREATE TABLE IF NOT EXISTS `bill_payments` (
  `Bill_No` int(100) NOT NULL,
  `Customer_acc_no` int(100) NOT NULL,
  `Payment_Type` varchar(100) NOT NULL,
  `Timestamp` timestamp NOT NULL,
  `Amount` int(100) NOT NULL,
  `Balance` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_payments`
--

INSERT INTO `bill_payments` (`Bill_No`, `Customer_acc_no`, `Payment_Type`, `Timestamp`, `Amount`, `Balance`) VALUES
(1, 10002201, 'Offline', '2023-03-08 05:24:58', 450, 80000),
(1, 10002202, 'Offline', '2023-03-14 10:24:58', 360, 8500),
(1, 10002203, 'Offline', '2023-04-12 07:26:37', 700, 9540),
(1, 10002204, 'Offline', '2023-01-10 05:26:37', 970, 6400),
(2, 10002201, 'Online', '2023-05-05 13:32:11', 100, 79900),
(3, 10002201, 'Online', '2023-05-07 06:03:53', 1000, 78900),
(2, 10002203, 'Online', '2023-05-07 06:14:40', 1000, 8540);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
