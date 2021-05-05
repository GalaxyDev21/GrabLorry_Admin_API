-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2018 at 04:41 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lorry`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon`
--

CREATE TABLE `addon` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT '0.0000',
  `size` varchar(50) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `stockcount` int(11) DEFAULT '0',
  `status` varchar(5) DEFAULT 'A',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon`
--

INSERT INTO `addon` (`recid`, `companyname`, `productname`, `details`, `price`, `size`, `weight`, `stockcount`, `status`, `created`) VALUES
(1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', 24, 'A', NULL),
(2, 'cn2', 'pn2', 'detail 222', '150.0000', '10 X 30', '10.0000', 493, 'A', NULL),
(3, '2', '2', '2', '2.0000', '2', '2.0000', 2, 'D', NULL),
(4, '3', '3', '3', '3.0000', '3', '3.0000', 3, 'D', NULL),
(5, 'sasdf', 'asdfa', 'sdf', '0.0000', 'asdfasdfasdf', '0.0000', 1000, 'A', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addonbooked`
--

CREATE TABLE `addonbooked` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `lorryrequestid` bigint(20) UNSIGNED DEFAULT '0',
  `addonid` bigint(20) UNSIGNED DEFAULT '0',
  `companyname` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT '0.0000',
  `size` varchar(50) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT '0.0000',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addonbooked`
--

INSERT INTO `addonbooked` (`recid`, `lorryrequestid`, `addonid`, `companyname`, `productname`, `details`, `price`, `size`, `weight`, `created`) VALUES
(1, 1, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:12:01'),
(2, 2, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:12:16'),
(3, 3, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:12:41'),
(4, 4, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:13:49'),
(5, 5, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:14:55'),
(6, 6, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:14:55'),
(7, 7, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:14:56'),
(8, 8, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:14:59'),
(9, 9, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:15:02'),
(10, 0, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:27:14'),
(11, 0, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:27:15'),
(12, 0, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:27:17'),
(13, 10, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:27:43'),
(14, 11, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:27:44'),
(15, 12, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:27:45'),
(16, 13, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:27:45'),
(17, 14, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:38:37'),
(18, 15, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:38:38'),
(19, 16, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:38:40'),
(20, 17, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:38:43'),
(21, 18, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:21'),
(22, 19, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:22'),
(23, 20, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:26'),
(24, 21, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:26'),
(25, 22, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:29'),
(26, 23, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:30'),
(27, 24, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:31'),
(28, 25, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:35'),
(29, 26, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:38'),
(30, 27, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:42'),
(31, 28, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:51'),
(32, 29, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:53'),
(33, 30, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:53'),
(34, 31, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:54'),
(35, 32, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:54'),
(36, 33, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:57'),
(37, 34, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:47:59'),
(38, 35, 2, 'cn2', 'pn2', 'detail 222', '150.0000', '10 X 30', '10.0000', '2018-05-18 00:48:02'),
(39, 36, 2, 'cn2', 'pn2', 'detail 222', '150.0000', '10 X 30', '10.0000', '2018-05-18 00:48:04'),
(40, 37, 1, 'cn1', 'pn1', 'details111', '50.0000', '50 X 45', '50.0000', '2018-05-18 00:48:07'),
(41, 38, 2, 'cn2', 'pn2', 'detail 222', '150.0000', '10 X 30', '10.0000', '2018-05-24 01:04:53'),
(42, 39, 2, 'cn2', 'pn2', 'detail 222', '150.0000', '10 X 30', '10.0000', '2018-05-24 01:05:15'),
(43, 40, 2, 'cn2', 'pn2', 'detail 222', '150.0000', '10 X 30', '10.0000', '2018-05-24 01:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `apikeys`
--

CREATE TABLE `apikeys` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `apikey` varchar(50) NOT NULL,
  `created` datetime DEFAULT NULL,
  `status` varchar(5) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apikeys`
--

INSERT INTO `apikeys` (`recid`, `userid`, `apikey`, `created`, `status`) VALUES
(1, 1, 'W2xaEJRDEnFd12mEpyLp6q4e', '2018-05-06 16:21:27', 'I'),
(2, 1, 'mazJnLRZRoFo2YzWg8j62qVO', '2018-05-06 22:18:49', 'I'),
(3, 1, 'lNoL6kQygnFJ5kvqlDvP5E9n', '2018-05-06 22:18:51', 'I'),
(4, 1, 'PpgWmdly1WFJLxnzx84eYKLj', '2018-05-06 22:18:53', 'I'),
(5, 1, 'dgVlbj0Zb4Fv2zE3oDOGREK5', '2018-05-06 22:19:05', 'I'),
(6, 1, 'W2xaEJRDEnFd17z6jyLp6q4e', '2018-05-07 22:07:41', 'I'),
(7, 1, 'v1qag9bD6nFG2kzanDYNdJMP', '2018-05-07 22:07:44', 'I'),
(8, 1, 'dgVlbj0Zb4Fv2rPmWDOGREK5', '2018-05-08 00:54:53', 'I'),
(9, 1, 'PpgWmdly1WFJLq32084eYKLj', '2018-05-08 00:57:06', 'I'),
(10, 1, '61zJ4GdZwdF63Xm5B8PvoN9X', '2018-05-08 00:57:09', 'I'),
(11, 1, 'PogJa6MDlXFb3BEKrDO9qYXA', '2018-05-08 09:08:57', 'I'),
(12, 1, 'qL1XbmdDnnFq3E5dkDRwGzrA', '2018-05-09 00:21:06', 'I'),
(13, 1, 'B4nVqzXyMoF3kQ6E38wK0kGN', '2018-05-09 00:22:01', 'I'),
(14, 1, 'MYwxl29yX2FPKBrnG8p0AvKm', '2018-05-10 01:18:23', 'I'),
(15, 1, 'EmMb9Ox8BdF9Gk9zOyga10Bw', '2018-06-02 00:22:05', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `lorryrequest`
--

CREATE TABLE `lorryrequest` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `siteuserid` bigint(20) NOT NULL DEFAULT '0',
  `requestnumber` varchar(20) DEFAULT NULL,
  `aggregateid` bigint(20) UNSIGNED DEFAULT '0',
  `typeid` bigint(20) UNSIGNED DEFAULT '0',
  `trip` int(11) DEFAULT '0',
  `quantity` int(11) DEFAULT '0',
  `ordertotal` decimal(12,4) DEFAULT '0.0000',
  `address` varchar(1024) DEFAULT NULL,
  `notes` varchar(1024) DEFAULT NULL,
  `nearbysuppliers` varchar(128) DEFAULT '0',
  `status` varchar(10) DEFAULT 'RECV',
  `datex` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lorryrequest`
--

INSERT INTO `lorryrequest` (`recid`, `siteuserid`, `requestnumber`, `aggregateid`, `typeid`, `trip`, `quantity`, `ordertotal`, `address`, `notes`, `nearbysuppliers`, `status`, `datex`, `created`) VALUES
(40, 1, 'LA-zk84wZJ3', 2, 1, 2, 1, '150.0000', 'jamnagar', 'testestest', '1,20,23,18', 'RECV', '2018-05-27 12:57:00', '2018-05-24 01:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `lorryrequestsuppliermap`
--

CREATE TABLE `lorryrequestsuppliermap` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `lorryrequestid` bigint(20) UNSIGNED DEFAULT NULL,
  `supplierid` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(20) DEFAULT 'ASSIGN',
  `assigndate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lorryrequestsuppliermap`
--

INSERT INTO `lorryrequestsuppliermap` (`recid`, `lorryrequestid`, `supplierid`, `status`, `assigndate`) VALUES
(1, 30, 11, 'ASSIGN', '2018-05-18 23:34:20'),
(2, 10, 2, 'ASSIGN', '2018-05-18 23:38:33'),
(3, 11, 2, 'ASSIGN', '2018-05-19 00:23:49'),
(4, 12, 3, 'ASSIGN', '2018-05-19 00:49:11'),
(5, 13, 25, 'ASSIGN', '2018-05-20 08:22:53'),
(6, 13, 25, 'ASSIGN', '2018-05-20 08:25:36'),
(7, 13, 25, 'ASSIGN', '2018-05-20 08:25:48'),
(8, 13, 25, 'ASSIGN', '2018-05-20 08:26:49'),
(9, 13, 25, 'ASSIGN', '2018-05-20 08:27:03'),
(10, 13, 25, 'ASSIGN', '2018-05-20 08:27:17'),
(11, 13, 25, 'ASSIGN', '2018-05-20 08:28:29'),
(12, 13, 25, 'ASSIGN', '2018-05-20 08:29:34'),
(13, 13, 25, 'ASSIGN', '2018-05-20 08:30:33'),
(14, 13, 25, 'ASSIGN', '2018-05-20 08:30:47'),
(15, 13, 25, 'ASSIGN', '2018-05-20 08:32:43'),
(16, 13, 25, 'ASSIGN', '2018-05-20 08:32:51'),
(17, 13, 25, 'ASSIGN', '2018-05-20 08:32:58'),
(18, 13, 25, 'ASSIGN', '2018-05-20 08:33:12'),
(19, 13, 25, 'ASSIGN', '2018-05-20 08:33:49'),
(20, 13, 25, 'ASSIGN', '2018-05-20 08:34:10'),
(21, 13, 25, 'ASSIGN', '2018-05-20 08:34:36'),
(22, 13, 25, 'ASSIGN', '2018-05-20 08:57:30'),
(23, 13, 25, 'ASSIGN', '2018-05-20 09:01:52'),
(24, 13, 25, 'ASSIGN', '2018-05-20 09:02:16'),
(25, 13, 25, 'ASSIGN', '2018-05-20 09:02:31'),
(26, 13, 25, 'ASSIGN', '2018-05-20 09:03:29'),
(27, 13, 25, 'ASSIGN', '2018-05-20 09:04:12'),
(28, 13, 25, 'ASSIGN', '2018-05-20 09:07:09'),
(29, 13, 25, 'ASSIGN', '2018-05-20 09:07:31'),
(30, 13, 25, 'ASSIGN', '2018-05-20 09:09:45'),
(31, 13, 25, 'ASSIGN', '2018-05-20 09:09:54'),
(32, 13, 25, 'ASSIGN', '2018-05-20 09:10:03'),
(33, 13, 25, 'ASSIGN', '2018-05-20 09:23:16'),
(34, 13, 25, 'ASSIGN', '2018-05-20 09:34:36'),
(35, 13, 25, 'ASSIGN', '2018-05-20 09:36:25'),
(36, 13, 25, 'ASSIGN', '2018-05-20 09:49:02'),
(37, 13, 25, 'ASSIGN', '2018-05-20 09:55:04'),
(38, 13, 25, 'ASSIGN', '2018-05-20 09:55:34'),
(39, 13, 25, 'ASSIGN', '2018-05-20 10:03:28'),
(40, 13, 25, 'ASSIGN', '2018-05-20 10:04:05'),
(41, 13, 25, 'ASSIGN', '2018-05-20 10:04:48'),
(42, 13, 25, 'ASSIGN', '2018-05-20 10:06:23'),
(43, 13, 25, 'ASSIGN', '2018-05-20 10:06:47'),
(44, 13, 25, 'ASSIGN', '2018-05-20 10:11:18'),
(45, 13, 25, 'ASSIGN', '2018-05-20 10:11:34'),
(46, 13, 25, 'ASSIGN', '2018-05-20 10:12:09'),
(47, 13, 25, 'ASSIGN', '2018-05-20 10:12:26'),
(48, 13, 25, 'ASSIGN', '2018-05-20 10:19:49'),
(49, 13, 25, 'ASSIGN', '2018-05-20 10:23:15'),
(50, 13, 25, 'ASSIGN', '2018-05-20 10:25:59'),
(51, 13, 25, 'ASSIGN', '2018-05-20 10:26:08'),
(52, 13, 25, 'ASSIGN', '2018-05-20 10:27:12'),
(53, 13, 25, 'ASSIGN', '2018-05-20 10:32:18'),
(54, 13, 25, 'ASSIGN', '2018-05-20 10:36:23'),
(55, 13, 25, 'ASSIGN', '2018-05-20 10:36:26'),
(56, 13, 25, 'ASSIGN', '2018-05-20 11:40:24'),
(57, 13, 25, 'ASSIGN', '2018-05-20 11:44:42'),
(58, 13, 25, 'ASSIGN', '2018-05-20 11:44:52'),
(59, 13, 25, 'ASSIGN', '2018-05-20 11:45:07'),
(60, 13, 25, 'ASSIGN', '2018-05-20 11:45:14'),
(61, 13, 25, 'ASSIGN', '2018-05-20 12:10:00'),
(62, 13, 25, 'ASSIGN', '2018-05-20 12:10:33'),
(63, 13, 25, 'ASSIGN', '2018-05-20 12:13:10'),
(64, 13, 25, 'ASSIGN', '2018-05-20 12:14:36'),
(65, 13, 25, 'ASSIGN', '2018-05-20 12:15:59'),
(66, 14, 2, 'ASSIGN', '2018-05-20 12:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `name` text,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`recid`, `name`, `value`) VALUES
(1, 'Order Total', '50');

-- --------------------------------------------------------

--
-- Table structure for table `siteuser`
--

CREATE TABLE `siteuser` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT '',
  `radius` int(10) DEFAULT '20',
  `latitude` varchar(20) DEFAULT '0',
  `longitude` varchar(20) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `status` varchar(5) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siteuser`
--

INSERT INTO `siteuser` (`recid`, `name`, `email`, `password`, `mobile`, `radius`, `latitude`, `longitude`, `created`, `status`) VALUES
(1, 'Milind Pasi', 'milpas999@gmail.com', '96e79218965eb72c92a549dd5a330112', '1234567890', 122, '23.1146032', '72.5737087', '2018-05-06 16:21:27', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `bussinessname` varchar(512) DEFAULT NULL,
  `postcode` varchar(15) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `suit` varchar(512) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `webaddress` varchar(512) DEFAULT NULL,
  `hours` varchar(20) DEFAULT NULL,
  `website` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`recid`, `bussinessname`, `postcode`, `longitude`, `latitude`, `suit`, `phone`, `webaddress`, `hours`, `website`, `email`, `status`, `created`) VALUES
(1, '2 Cousins', 'OX4 6NQ', '	72.5737087', '	23.1146032', 'The Old Station Yard', '01865 779778', 'www.2cousins.co.uk', '', '', 'office@2cousins.co.uk', 1, NULL),
(2, '5a\'s Tool & Plant Hire', 'OX18 3QQ', '-1.5595735528149', '51.751816964359', '', '01993 851111', 'www.5as.co.uk', '', '', 'ray@5as.co.uk', 1, NULL),
(3, 'A & R Plant Hire N W Ltd', 'BB7 1QD', '-2.3779718412639', '53.87687348731', '', '01200 429329', 'www.arplanthire.co.uk', '', '', 'info@arplanthire.co.uk', 1, NULL),
(4, 'A & V Squires Plant Co Ltd', 'NG25 0TX', '-0.94054784901585', '53.076953425739', '', '01636 812227', 'www.avsquires.co.uk', '', '', 'info@avsquires.co.uk', 1, NULL),
(5, 'Ab 2000 Ltd', 'G72 7NA', '-4.1603635337798', '55.823303488208', '', '0141 646 1212', 'www.ab2000.co.uk', '', '', 'einfo@ab2000.co.uk', 1, NULL),
(6, 'A C D Plant Ltd', 'CV6 1FG', '-1.5406927580275', '52.418013611461', '', '024 7659 4348', 'www.acdplant-online.co.uk', '', '', '', 1, NULL),
(7, 'Andrew Clark', 'ML10 6RR', '-4.0939219164393', '55.704158809993', '', '01357 300300', '', '', '', 'bankfield1@hotmail.co.uk', 1, NULL),
(8, 'Button Plant & Construction', 'DN37 0EY', '-0.091009734194138', '53.514254071616', '', '01472 821073', 'www.buttonplantandconstruction.com', '', '', 'info@buttonplantandconstruction.com', 1, NULL),
(9, 'A J Loach Plant Hire Ltd', 'B63 2TB', '-2.083154884849', '52.460481906868', '', '01384 569677', 'www.ajloachplanthire.co.uk', '', '', 'ajloach@googlemail.com', 1, NULL),
(10, 'A Manley Plant Hire & Haulage Ltd', 'S73 0HU', '-1.3944946174618', '53.520231765542', '', '01226 752484', '', '', '', 'ampcon@sky.com', 1, NULL),
(11, 'A P Wakeham Hire Ltd', 'TQ10 9HA', '-3.8376301502867', '50.406207168002', '', '01364 73143', 'www.wakehamhire.co.uk', '', '', 'office@wakehamhire.co.uk', 1, NULL),
(12, 'A S P Plant', 'CO7 7NR', '0.98412320422674', '51.925998482188', '', '01206 230514', 'www.aspplanthire.co.uk', '', '', '', 1, NULL),
(13, 'A T I Tank Hire', 'NR31 0DN', '1.719282828478', '52.596392975947', '', '01493 441747', 'www.atitanks.co.uk', '', '', 'info@atitanks.co.uk', 1, NULL),
(14, 'A1 Rentals Ltd', 'DY5 1UT', '-2.1018973482587', '52.48892048869', '', '01384 486200', 'www.a1rentalsltd.co.uk', '', '', 'info@a1rentalsltd.co.uk', 1, NULL),
(15, 'Able Grab Hire', 'GU15 4ES', '-0.729612456654', '51.346276278487', '', '01276 20442', 'www.ablegrabhire.co.uk', '', '', 'ablegrabhire@btinternet.com', 1, NULL),
(16, 'Ace Hire & Sales', 'IM1 5AT', '', '', '', '01624 629372', '', '', '', 'ace.depot@acehireandsales.com', 1, NULL),
(17, 'Ace Line Plant Ltd', 'WS15 1RD', '-1.9296288248845', '52.742247786495', '', '01889 574044', 'www.acelineplant.co.uk', '', '', 'a-l-p@hotmail.co.uk', 1, NULL),
(18, 'Acland Plant Hire Ltd', 'TR4 8HP', '-5.1704298796081', '50.275225322823', '', '01872 560180', 'www.aclandplant.co.uk', '', '', 'gerald@aclandplant.co.uk', 1, NULL),
(19, 'Acorn Plant & Tool Hire Ltd', 'TN12 0QY', '0.54863910204483', '51.170487733505', '', '01580 891234', 'www.acornhire.com', '', '', '', 1, NULL),
(20, 'Adam Phillips Plant Hire & Contractors Ltd', 'TR3 7HR', '-5.142102979221', '50.185901489629', '', '01872 865694', 'www.adamphillipsplanthire.co.uk', '', '', 'info@adamphillipsplanthire.co.uk', 1, NULL),
(21, 'Addis Construction', 'BD21 5LH', '-1.9103928121432', '53.861284211075', '', '01535 601375', 'www.addis-construction.co.uk', '', '', 'info@addis-construction.co.uk', 1, NULL),
(22, 'Akro Multihire', 'EH54 5EX', '-3.4965686772362', '55.904961580807', '', '01506 441991', 'www.akromultihire.co.uk', '', '', 'richard@akromultihire.co.uk', 1, NULL),
(23, 'Alan Tuer Ltd', 'CA6 4EA', '-2.9430051638876', '54.949630742201', '', '01228 674717', 'www.alantuertrailers.co.uk', '', '', 'alantuer@btconnect.com', 1, NULL),
(24, 'Aldridge Piling Equipment Hire Company Ltd', 'WS11 9TJ', '-1.9712406297429', '52.667992960051', '', '01543 277680', 'www.miniape.com', '', '', 'info@miniape.com', 1, NULL),
(25, 'Alide Hire Services', 'BS2 9DQ', '-2.5796257674646', '51.460016682955', '', '0117 955 1813', 'www.alideplant.co.uk', '', '', 'hire@alidehire.co.uk', 1, NULL),
(26, 'Joe Allan & Sons Plant Hire', 'G63 0AA', '-4.4352103226484', '56.069204834424', '', '07885 735353', '', '', '', 'allan-d@btconnect.com', 1, NULL),
(27, 'Allen Plant & Tool Hire', 'TS18 3BL', '-1.3120910266109', '54.54861954518', '', '01642 604999', 'www.allenplanthire.co.uk', '', '', 'enquiries@allenplanthire.co.uk', 1, NULL),
(28, 'Allied Plant', 'WF10 5NW', '-1.3823469437933', '53.71647586307', '', '01977 668744', 'www.alliedplant.co.uk', '', '', 'info@alliedplant.co.uk', 1, NULL),
(29, 'A H C Tools Ltd', 'FK10 2TR', '-3.8256643067321', '56.134319776972', '', '01259 218103', 'www.ahctools.co.uk', '', '', 'hire@ahctools.co.uk', 1, NULL),
(30, 'Allsop Plant & Haulage', 'DE7 6DW', '-1.3870336977758', '53.001731208403', '', '01332 880340', 'www.allsop-plant.co.uk', '', '', 'allsop.plantandhaulage@w3z.co.uk', 1, NULL),
(31, 'Altis Industries Ltd', 'GU35 0PP', '-0.84502287764613', '51.118707698159', '', '01420 472692', 'www.altis.co.uk', '', '', 'info@altis.co.uk', 1, NULL),
(32, 'A V Plant Ltd', 'LD3 9NA', '-3.539232910747', '51.997178293911', '', '01874 636422', '', '', '', 'andrew.planthire@gmail.com', 1, NULL),
(33, 'Andy Hire Sales & Service Ltd', 'YO16 6XS', '-0.20400222722883', '54.102366525496', '', '01262 400333', 'www.andyhire.co.uk', '', '', 'andyhirebrid@yahoo.co.uk', 1, NULL),
(34, 'Andy Nourish Plant Hire', 'LE15 9EH', '-0.69710427395453', '52.590270323109', '', '01572 823202', '', '', '', '', 1, NULL),
(35, 'Anglo Plant Hire Ltd', 'WA8 0PJ', '-2.7473537745555', '53.358000040247', '', '0151 420 1159', 'www.angloplanthire.co.uk', '', '', 'sales@angloplanthire.co.uk', 1, NULL),
(36, 'Anvil Hire Ltd', 'DE15 9UA', '-1.6328707600875', '52.778378161562', '', '01283 740765', 'www.anvil-hire.co.uk', '', '', 'anvil-group@anvil-hire.co.uk', 1, NULL),
(37, 'Aria Developments Ltd', 'LL18 2PH', '-3.4774621672311', '53.315991126204', '', '01745 343905', 'www.ariadevelopments.com', '', '', '', 1, NULL),
(38, 'Arrow Plant & Tool Hire Ltd', 'HR6 0QF', '-2.7327375113926', '52.219160673021', '', '01568 615161', 'www.arrowplant.com', '', '', 'info@arrowplant.co.uk', 1, NULL),
(39, 'Ashby & Sons', 'KT4 8QB', '-0.22582624379691', '51.379727963404', '', '020 8337 7871', 'www.ashbydiggers.co.uk', '', '', 'ashbydiggers@outlook.com', 1, NULL),
(40, 'Ashley Plant Hire & Reclamation Ltd', 'WA15 0QF', '-2.3226782259488', '53.347481528477', '', '0161 941 6666', 'www.ashley-plant.co.uk', '', '', 'info@ashleyreclamation.co.uk', 1, NULL),
(41, 'Atherstone Crane Hire', 'B77 1LR', '-1.6857959786937', '52.594619257294', '', '01827 288271', '', '', '', 'mail@atherstone-crane.co.uk', 1, NULL),
(42, 'Autotrak', 'OX5 1FQ', '-1.3058940027804', '51.828060782188', '', '01865 373322', 'www.portableroadways.com', '', '', 'info@portableroadways.com', 1, NULL),
(43, 'Aylesbury Little Diggers', 'HP22 4QT', '-0.7656620241274', '51.855111010138', '', '01296 681250', '', '', '', 'sales@littlediggers.com', 1, NULL),
(44, 'Powercraft', 'KA8 8DP', '-4.6297468176332', '55.469229072256', '', '01292 278963', 'www.bigtools.co.uk', '', '', 'sales@bigtools.co.uk', 1, NULL),
(45, 'International Process Plants Europe Ltd', 'TS23 1PS', '-1.2687356383397', '54.587036511051', '', '01642 367910', 'www.ippe.com', '', '', 'sales@ippe.com', 1, NULL),
(46, 'B & T Plant Hire Ltd', 'SM4 4AX', '-0.22888682481967', '51.384945012499', '', '020 8335 3477', 'www.bandtplanthire.co.uk', '', '', 'sales@bandtplanthire.co.uk', 1, NULL),
(47, 'B K Widger & Son Plant Hire', 'TQ9 7JH', '-3.7363606306892', '50.361956931622', '', '01548 821205', '', '', '', '', 1, NULL),
(48, 'B W Machine Tools', 'LE18 2BJ', '-1.1247271651103', '52.591505532477', '', '0116 288 6070', 'www.bwmachinetools.co.uk', '', '', 'info@bwmachinetools.co.uk', 1, NULL),
(49, 'Banbury Plant & Skip Hire', 'OX15 5JY', '-1.4816044757585', '51.999883594991', '', '01608 730215', 'www.banburyplanthire.co.uk', '', '', '', 1, NULL),
(50, 'Beacon Plant Hire Fintray Ltd', 'AB21 0TA', '-2.2744968659511', '57.228990264201', '', '01224 791216', 'www.beaconplanthire.co.uk', '', '', 'info@beaconplanthire.co.uk', 1, NULL),
(51, 'F T H Hire Group', 'GU2 8XW', '-0.58508594251892', '51.245667616457', '', '01483 424323', 'www.fthhiregroup.co.uk', '', '', 'sales@fthhiregroup.co.uk', 1, NULL),
(52, 'Bents Plant Hire Ltd', 'RM10 8PN', '0.15713345713748', '51.548996957832', '', '020 8525 8686', 'www.bentsplant.co.uk', '', '', 'sales@bentsplant.co.uk', 1, NULL),
(53, 'Richmond Plant Hire Ltd', 'NG17 7LD', '-1.2429091129408', '53.109833346386', '', '01623 722277', 'www.richmondplant.com', '', '', 'info@richmondplant.co.uk', 1, NULL),
(54, 'Total Hire & Sales', 'DE5 3AX', '-1.3969773508016', '53.051672437787', '', '01773 740233', 'www.totalhireandsales.co.uk', '', '', 'paulwebster@totalhireandsales.co.uk', 1, NULL),
(55, 'Brace Turner Ltd', 'CM21 0LX', '0.13212720227601', '51.833872266993', '', '01279 726220', 'www.braceturner.co.uk', '', '', 'chrisbrace@bracecontractor.com', 1, NULL),
(56, 'William Bradshaw Plant Hire Contractors', 'GL20 8SL', '-2.1282070782301', '52.004550359669', '', '01684 275908', 'www.williambradshaw.co.uk', '', '', 'bradshawandrew@btconnect.com', 1, NULL),
(57, 'William Bradshaw Ltd', 'CH65 2HQ', '-2.9048658206474', '53.294184540791', '', '0151 355 9300', 'www.williambradshaw.co.uk', '', '', '', 1, NULL),
(58, 'Brian Dent Ltd', 'BB7 1PW', '-2.3941495738118', '53.861667828758', '', '01200 423061', 'www.briandentltd.co.uk', '', '', 'bdent@globalnet.co.uk', 1, NULL),
(59, 'Bridge Plant Hire', 'BT41 3SA', '-6.4617993581662', '54.75517966152', '', '028 7965 9108', '', '', '', 'bridgeplanthire@yahoo.com', 1, NULL),
(60, 'Bright Acres Tool Hire', 'IP6 8RW', '1.0651377648986', '52.145908179011', '', '01449 612632', 'www.brightacreshire.co.uk', '', '', 'info@brightacres.co.uk', 1, NULL),
(61, 'Broxbourne Plant Ltd', 'TN38 9BY', '0.5521190792627', '50.86680822985', '', '01424 428243', 'www.broxbourneplant.co.uk', '', '', 'info@broxbourneplant.co.uk', 1, NULL),
(62, 'Buckland Plant Hire', 'SG9 0PY', '-0.026543574787741', '51.985830284858', '', '01763 274000', 'www.buckland-plant.co.uk', '', '', 'buckland.plant@gmail.com', 1, NULL),
(63, 'Buckley Plant Hire', 'BD23 5EN', '-2.0100353322673', '54.072105721786', '', '07710 510367', '', '', '', 'david.r.buckley@hotmail.co.uk', 1, NULL),
(64, 'J D Building Services Hire & Sales Ltd', 'CM20 2SN', '0.12855759891184', '51.792949410377', '', '01279 453111', '', '', '', 'sales@jdbshs.co.uk', 1, NULL),
(65, 'Bullimores', 'PE19 8TR', '-0.29393728692293', '52.211289239757', '', '01480 217120', 'www.bullimores.net', '', '', 'stneots@bullimores.net', 1, NULL),
(66, 'R Burkinshaw & Sons', 'S66 2SQ', '-1.2628319310896', '53.424949808183', '', '01709 543266', '', '', '', 'postmaster@rburkinshaw.plus.com', 1, NULL),
(67, 'Burnley Hire Centre', 'BB11 5AL', '-2.2656534757084', '53.7873762343', '', '01282 435940', 'www.burnleyhire.co.uk', '', '', 'hiredesk@burnleyhire.co.uk', 1, NULL),
(68, 'Bury Plant Hire', 'BL8 1SW', '-2.3195574878648', '53.600461854723', '', '0161 797 9686', 'www.buryplanthire.co.uk', '', '', 'info@buryplanthire.co.uk', 1, NULL),
(69, 'Byard Plant Hire', 'DE55 5NP', '-1.3391967470786', '53.157060269834', '', '01773 874394', '', '', '', '', 1, NULL),
(70, 'C C Morgan & Son', 'NP44 7AS', '-3.0664160073747', '51.616787634976', '', '01633 612349', 'www.ccmorganandson.com', '', '', 'info@ccmorganandson.com', 1, NULL),
(71, 'C D P Plant Ltd', 'S41 9RL', '-1.454630273034', '53.267067248121', '', '01246 269450', 'www.cdpplant.co.uk', '', '', 'chris@cdpplant.co.uk', 1, NULL),
(72, 'C G Wheawall', 'ST10 4SY', '-1.9420317287669', '52.917701083104', '', '01889 502281', '', '', '', 'cwheawall@btconnect.com', 1, NULL),
(73, 'C H Crawfords', 'DN15 6AL', '-0.64985815470358', '53.596265760071', '', '01724 844325', '', '', '', '', 1, NULL),
(74, 'C P Hire', 'BT52 2BT', '-6.6607095378771', '55.138043320266', '', '028 7034 4313', 'www.cphire.com', '', '', 'hire@cphire.com', 1, NULL),
(75, 'C R J Services', 'WA16 9LU', '-2.3788545672795', '53.238642102015', '', '01565 723886', 'www.crjservices.co.uk', '', '', '', 1, NULL),
(76, 'C T Roberts', 'LL24 0NY', '-3.7369297213173', '53.019022836516', '', '01690 770263', '', '', '', 'ctrplant@aol.com', 1, NULL),
(77, 'Campbell Plant Hire Ltd', 'IV1 1TR', '-4.2247960058', '57.491109250832', '', '01463 237478', 'www.campbellplanthire.co.uk', '', '', 'campbell-plant@btconnect.com', 1, NULL),
(78, 'Cams Hire Ltd', 'GY2 4LG', '', '', '', '01481 241371', 'www.camshire.com', '', '', 'camshire.gsy@gmail.com', 1, NULL),
(79, 'Caradon Tool & Plant Hire Ltd', 'PL14 4DA', '-4.4716125121453', '50.448643876555', '', '01579 343796', 'www.planthirecornwall.co.uk', '', '', 'caradontph@btconnect.com', 1, NULL),
(80, 'Castle Hire', 'DH2 2RG', '-1.6038982283572', '54.863021973359', '', '0191 389 2503', '', '', '', 'davidson.h1@sky.com', 1, NULL),
(81, 'Central Tool Hire', 'AL1 1XB', '-0.3176675491204', '51.735008754917', '', '01727 846999', 'www.central-tool-hire.co.uk', '', '', 'info@central-tool-hire.co.uk', 1, NULL),
(82, 'Channel Plant Hire', 'BS10 7TD', '-2.635081024515', '51.523983380982', '', '0117 950 7217', 'channelplanthire.co.uk', '', '', 'channelplanthire@btconnect.com', 1, NULL),
(83, 'Cheddar Hire Centre', 'BS27 3AP', '-2.7822600800656', '51.276206285625', '', '01934 743543', 'www.cheddarhirecentre.co.uk', '', '', 'andy.thomas60@yahoo.co.uk', 1, NULL),
(84, 'Cherry Digger Hire', 'MK45 2AX', '-0.45750987983364', '52.026126052925', '', '01525 404504', '', '', '', 'cherrydiggerhire@gmail.com', 1, NULL),
(85, 'Chertsey Plant Hire Ltd', 'RH3 7BZ', '-0.26680272207685', '51.247762751519', '', '01737 844622', 'www.chertseyplanthire.co.uk', '', '', 'sales@chertseyplanthire.co.uk', 1, NULL),
(86, 'Chippindale Plant Ltd', 'LS12 5PX', '-1.6105606374308', '53.788611417761', '', '0113 263 2344', 'www.chippindale-plant.co.uk', '', '', 'office@chippindale-plant.co.uk', 1, NULL),
(87, 'Cholwill Plant & Equipment Hire', 'EX22 6HL', '-4.3565367594034', '50.819789053774', '', '01409 254016', 'www.cholwillplant.co.uk', '', '', 'info@cholwillplant.co.uk', 1, NULL),
(88, 'Chilcott Plant Hire', 'TR2 4DG', '-4.9277719294599', '50.278169101575', '', '01872 530767', '', '', '', 'chilcottplant@hotmail.com', 1, NULL),
(89, 'D & S Kitching', 'HG1 4PT', '-1.5006310082249', '53.999887445194', '', '01423 881091', 'www.dskplant.co.uk', '', '', 'mail@dskplant.co.uk', 1, NULL),
(90, 'Chunnel Group', 'CT15 7ER', '1.2492677066392', '51.161422589312', '', '01304 825526', 'www.chunnelgroup.co.uk', '', '', 'info@chunnelgroup.co.uk', 1, NULL),
(91, 'Cinnamond', 'WD3 3RT', '-0.42920479788074', '51.652370148165', '', '01923 235225', 'www.cinnamond.co.uk', '', '', 'enquiries@cinnamond.co.uk', 1, NULL),
(92, 'Clarance Construction Ltd', 'PO21 4RS', '-0.73544470027743', '50.775165377078', '', '01243 263920', '', '', '', 'lcallen42@hotmail.co.uk', 1, NULL),
(93, 'Clee Hill Plant', 'SY8 3QF', '-2.5953901515557', '52.375484715739', '', '01584 890000', 'www.cleehill.co.uk', '', '', 'ludlow@cleehill.co.uk', 1, NULL),
(94, 'Clee Hill', 'DL5 6BH', '-1.5663504674352', '54.602703591427', '', '01325 312421', 'www.cleehill.co.uk', '', '', 'darlington@cleehill.co.uk', 1, NULL),
(95, 'Clewley Sweepers Ltd', 'SK10 5SQ', '-2.1055134435054', '53.310298591693', '', '01625 573680', 'www.clewleyservices.com', '', '', 'info@clewleyservices.com', 1, NULL),
(96, 'Y H C Hire Solutions', 'BA9 9RQ', '-2.419650145548', '51.052142830047', '', '01963 33999', 'www.yhchiresolutions.com', '', '', '', 1, NULL),
(97, 'Clive Hurt Plant Hire Ltd', 'PR26 6TJ', '-2.6992695967473', '53.710238114835', '', '01772 432475', 'www.clivehurtplanthire.co.uk', '', '', '', 1, NULL),
(98, 'Cobra Concrete Pumps', 'SN7 8NY', '-1.5213259735209', '51.636921299053', '', '01367 710096', 'www.cobraconcretepumps.co.uk', '', '', 'sales@cobraconcretepumps.co.uk', 1, NULL),
(99, 'Cole Contractors Cardiff', 'CF11 8AT', '-3.202575563672', '51.467969502259', '', '029 2038 7406', 'www.colecontractors.co.uk', '', '', 'info@colecontractors.co.uk', 1, NULL),
(100, 'Coles Construction & Plant Hire', 'EX16 9PS', '-3.5170294559', '50.958669255547', '', '01398 351375', '', '', '', '', 1, NULL),
(101, 'Colin Dempster & Sons', 'DG2 8JP', '-3.7630380637577', '54.981154574401', '', '01387 760208', '', '', '', 'colin.dempster@btconnect.com', 1, NULL),
(102, 'H F Colton Plant Hire', 'DH2 1UR', '-1.5850239715867', '54.872879989859', '', '0191 410 6873', 'www.coltonplanthire.co.uk', '', '', 'enquiries@coltonplanthire.co.uk', 1, NULL),
(103, 'Contractors Plant & Tool Hire', 'RG26 3AB', '-1.1316653098517', '51.338589449025', '', '0118 981 4123', 'www.contractorshire.co.uk', '', '', '', 1, NULL),
(104, 'R J Cook Ltd', 'PO30 3JL', '-1.3536108428557', '50.645561806611', '', '01983 520050', 'www.rjcookltd.co.uk', '', '', '', 1, NULL),
(105, 'C R H Plant', 'S26 4TL', '-1.3265872803054', '53.359618503589', '', '0114 288 0045', 'www.crhplant.co.uk', '', '', 'evesham@crhplant.co.uk', 1, NULL),
(106, 'C R H Plant', 'WN4 0BW', '-2.6481488557526', '53.51074925165', '', '01942 719700', 'www.crhplant.co.uk', '', '', 'wigan@crhplant.co.uk', 1, NULL),
(107, 'Cougar Plant Hire', 'LE9 9FH', '-1.2897927452445', '52.648177008938', '', '01455 824488', 'www.cougarplant.co.uk', '', '', 'info@cougarplant.co.uk', 1, NULL),
(108, 'County Hire Ltd', 'RG26 3PY', '-1.1268166370171', '51.359558545835', '', '0118 981 9619', 'www.countyhire.co.uk', '', '', 'rentals@countyhire.co.uk', 1, NULL),
(109, 'C R H Plant', 'CO9 2SU', '0.65705235301178', '51.939848239806', '', '01787 472338', 'www.crhplant.co.uk', '', '', 'essex@crhplant.co.uk', 1, NULL),
(110, 'Crosby Plant & Tool Hire', 'DN15 7JT', '-0.65488607185015', '53.59258296822', '', '01724 845727', '', '', '', '', 1, NULL),
(111, 'Cutler Plant Hire', 'BH21 8NE', '-1.9396815235306', '50.879464576822', '', '01202 826502', '', '', '', '', 1, NULL),
(112, 'D & H Plant Ltd', 'EX15 1BS', '-3.3796149017392', '50.861730383853', '', '01884 32627', 'www.dhplantltd.co.uk', '', '', 'dhplant@outlook.com', 1, NULL),
(113, 'D & S Tool Hire', 'HP10 0NR', '-0.6832861088855', '51.603539305278', '', '01494 672002', 'www.d-stoolhire.co.uk', '', '', 'sales@d-stoolhire.co.uk', 1, NULL),
(114, 'J M C Hire', 'PO30 3DA', '-1.2613975490921', '50.664366646879', '', '01983 526032', 'www.jmchire.com', '', '', 'hire@jmchire.com', 1, NULL),
(115, 'D G Walton Land Drainage & Plant Hire', 'NE20 0AT', '-1.7821001628993', '55.104509229412', '', '01670 775233', '', '', '', 'd.g.walton@castlefarmogle.co.uk', 1, NULL),
(116, 'D H Turner Ltd', 'YO25 8ES', '-0.27208381221444', '53.921805850068', '', '01964 543457', 'www.dhturnerltd.co.uk', '', '', 'info@dhturnerltd.co.uk', 1, NULL),
(117, 'D J Curtis & Son Ltd', 'PL8 1JU', '-3.9689327376165', '50.317498001204', '', '01752 830232', '', '', '', '', 1, NULL),
(118, 'D J Dennis', 'BH21 5JG', '-2.0339930123284', '50.920624337162', '', '01725 552262', '', '', '', 'sandradennis@rocketmail.com', 1, NULL),
(119, 'D J McKee & Sons Ltd', 'BT40 3HQ', '-5.8074662966896', '54.826059912742', '', '028 2826 0955', 'www.djmckeeandsons.com', '', '', 'info@djmckee.net', 1, NULL),
(120, 'Orange Plant', 'NE13 7BA', '-1.6441892100813', '55.04664657957', '', '0191 236 7795', 'www.orangeplant.co.uk', '', '', 'enquiries@orangeplant.co.uk', 1, NULL),
(121, 'D R Plant Sales & Export Ltd', 'RH6 9EB', '-0.14970568026119', '51.162812400769', '', '01293 771289', 'www.drplant.co.uk', '', '', 'drplant@drplant.co.uk', 1, NULL),
(122, 'Ambion Contractors', 'CV13 0AD', '-1.407224977596', '52.602309006221', '', '01455 291010', 'www.ambioncontractors.co.uk', '', '', 'mail@ambioncontractors.co.uk', 1, NULL),
(123, 'Dale Hire Centre Ltd', 'CM9 4XB', '0.68740350512915', '51.740731284587', '', '01621 855257', 'www.dalehire.com', '', '', 'info@dalehire.com', 1, NULL),
(124, 'David Hopkinson Ltd', 'WF8 3HE', '-1.2834732128771', '53.637187529529', '', '01977 621383', 'www.hopkinsonplant.com', '', '', 'reception@hopplant.co.uk', 1, NULL),
(125, 'Davis Agriplant Ltd Within Lower Lapdown Workshops', 'GL9 1JE', '-2.3362278634058', '51.502939802999', '', '01454 219054', '', '', '', 'martindavis54@hotmail.co.uk', 1, NULL),
(126, 'Demenex Plant Hire Ltd', 'IG11 0JH', '0.09931890258275', '51.52353525304', '', '020 8981 7711', 'www.demenexplant.co.uk', '', '', 'info@demenexplant.co.uk', 1, NULL),
(127, 'Dial-a-digger', 'SO41 8LS', '-1.5728785782755', '50.776300775338', '', '0800 085 3853', 'www.dialadigger.co.uk', '', '', '', 1, NULL),
(128, 'Didcot Plant Ltd', 'OX11 7HJ', '-1.2548629928935', '51.61728931359', '', '01235 814000', 'www.didcotplant.co.uk', '', '', 'info@didcotplant.co.uk', 1, NULL),
(129, 'D P H', 'BL9 6QS', '-2.292334936983', '53.614643060984', '', '0161 764 2580', 'www.dphplant.co.uk', '', '', 'hire@dphplant.co.uk', 1, NULL),
(130, 'Difuria Training & Plant Ltd', 'DN10 4NS', '-0.83182479263749', '53.399102304053', '', '01427 848712', 'www.difuria.co.uk', '', '', 'june@difuria.co.uk', 1, NULL),
(131, 'Digby Plant Ltd', 'NP16 6PN', '-2.7647582313836', '51.676613477586', '', '01291 650479', 'www.digbyplantltd.com', '', '', 'dan@digbyplantltd.com', 1, NULL),
(132, 'Chest & Measurement Hire', 'L34 1BD', '-2.8262207594473', '53.423143576133', '', '01704 896966', '', '', '', 'sales@instrument-hire.co.uk', 1, NULL),
(133, 'Discovery Tool & Plant Hire', 'HR6 0QF', '-2.7327375113926', '52.219160673021', '', '01568 613188', 'www.discoverytoolandplanthire.co.uk', '', '', '', 1, NULL),
(134, 'Dove Valley Plant Hire', 'DE6 3BL', '-1.5888795305638', '52.978724770779', '', '01335 361058', 'www.dovevalleyplanthire.com', '', '', '', 1, NULL),
(135, 'Dudley Plant Hire Ltd', 'MK17 8SB', '-0.65050610862315', '52.016464594676', '', '01908 583373', 'dudleyplanthire.co.uk/', '', '', 'dudleyplant@gmail.com', 1, NULL),
(136, 'G Elson Plant Hire', 'LE12 5TY', '-1.1225978815289', '52.793960555511', '', '01509 881008', 'www.gelsonplant.com', '', '', 'hire@gelsonplant.com', 1, NULL),
(137, 'Eastern Contractors & Plant Hire', 'IP8 3QG', '1.0334482445106', '52.034316676503', '', '01473 652590', 'www.easterncontractors.co.uk', '', '', 'sales@easterncontractors.co.uk', 1, NULL),
(138, 'Easy Hire Plant & Tool Hire', 'SK4 1DN', '-2.1712825391994', '53.412081376685', '', '0161 477 9315', 'www.easyhirestockport.com', '', '', 'enquiries@easyhirestockport.com', 1, NULL),
(139, 'Edmo Lift', 'CB9 7BN', '0.45141914019243', '52.045749578026', '', '01440 730640', 'www.edmolift.co.uk', '', '', 'lifts@edmolift.co.uk', 1, NULL),
(140, 'Edwards Plant & Tool Hire', 'EN3 6EJ', '-0.026881794638238', '51.666306570326', '', '020 8804 3737', 'www.edwardsplant.co.uk', '', '', 'sales@edwardsplant.com', 1, NULL),
(141, 'Elcocks', 'YO25 6PN', '-0.43475272748222', '53.999595837675', '', '01377 256666', 'www.elcocks.co.uk', '', '', '', 1, NULL),
(142, 'Electro-cal Ltd', 'LA7 7RH', '-2.7778763823495', '54.226902316811', '', '015395 64202', 'www.electro-cal.com', '', '', 'sales@electro-cal.com', 1, NULL),
(143, 'Ellon Plant & Machinery Hire', 'AB41 6AL', '-2.0446923219761', '57.315194096983', '', '01358 720991', 'www.ellonplanthire.co.uk', '', '', 'info@ellonplant.co.uk', 1, NULL),
(144, 'Ermin Plant Hire Ltd', 'GL7 1YS', '-1.9578281159244', '51.703866464417', '', '01285 640700', 'www.ermin.co.uk', '', '', 'cirencester@ermin.co.uk', 1, NULL),
(145, 'Ermin Plant', 'WR3 8TJ', '-2.1998627940118', '52.219297357332', '', '01905 726433', 'www.ermin.co.uk', '', '', 'worcester@ermin.co.uk', 1, NULL),
(146, 'Eros Hire Tools', 'HP12 4JN', '-0.78091180331775', '51.635390468802', '', '01494 445555', 'www.eroshire.co.uk', '', '', 'sales@eroshire.co.uk', 1, NULL),
(147, 'Eveready Hire', 'KT22 7DG', '-0.32880729351895', '51.305318176487', '', '01372 383337', 'www.evereadyhire.com', '', '', 'leatherhead@evereadyhire.com', 1, NULL),
(148, 'Express Hire Dorset Ltd', 'BH16 6HS', '-2.1006198647624', '50.738065033975', '', '01202 673403', 'www.express-hire.co.uk', '', '', 'sales@express-hire.co.uk', 1, NULL),
(149, 'Eynesbury Plant Hire Co Ltd', 'PE19 6XJ', '-0.24793323705073', '52.202378947521', '', '01480 215555', 'www.eynesburyplanthire.co.uk', '', '', 'info@eynesburygroup.co.uk', 1, NULL),
(150, 'F N R Plant Hire Ltd', 'BN8 5RU', '0.052366969872592', '50.907904580638', '', '01273 813330', 'www.fnrplanthire.com', '', '', 'fnr@btconnect.com', 1, NULL),
(151, 'Fairfax Plant Hire', 'YO8 6QG', '-0.98091807332253', '53.772833394668', '', '01757 638794', 'www.fairfaxplanthire.co.uk', '', '', '', 1, NULL),
(152, 'Farmec Hire Centre Ltd', 'BS26 2JE', '-2.8493318996941', '51.280432738089', '', '01934 732172', 'www.farmechirecentre.com', '', '', 'geoff.farmechire@virgin.net', 1, NULL),
(153, 'Fastsource Ltd', 'WF1 5PH', '-1.4818837579443', '53.67705784242', '', '01924 200005', 'www.fastsource.co.uk', '', '', '', 1, NULL),
(154, 'Faversham Hire', 'ME13 7DZ', '0.89508141636935', '51.322026097653', '', '01795 537481', 'www.favershamhire.co.uk', '', '', 'info@favershamhire.co.uk', 1, NULL),
(155, 'Fenton Plant Hire', 'SO32 2JF', '-1.2000151615779', '50.913168315187', '', '01329 830011', '', '', '', '', 1, NULL),
(156, 'Filtermech', 'WF2 6QW', '-1.4974369754886', '53.623086562741', '', '01924 252252', 'www.filtermech.com', '', '', 'sales@filtermech.com', 1, NULL),
(157, 'P Flannery Plant Hire Oval Ltd', 'HA9 0RZ', '-0.27109822177215', '51.558185029719', '', '020 8900 9290', 'www.flanneryplant.co.uk', '', '', 'info@flanneryplant.co.uk', 1, NULL),
(158, 'Focus Plant', 'SE19 1PW', '-0.08346762049823', '51.425003072947', '', '020 8766 6364', 'www.focusplant.co.uk', '', '', 'focusplant@btconnect.com', 1, NULL),
(159, 'Formby Tool Hire', 'L37 8DL', '-3.0417283427156', '53.554034798842', '', '01704 831475', 'www.formbytoolhire.co.uk', '', '', 'sales@formbytoolhire.co.uk', 1, NULL),
(160, 'Forth & Tay Marine Ltd', 'KY15 4SX', '-2.988454303767', '56.324001098665', '', '01334 655412', '', '', '', 'bobsmith.ftm@virgin.net', 1, NULL),
(161, 'Chas Foster Plant Hire', 'EH41 4NU', '-2.7923513996159', '55.951103591039', '', '01620 824823', '', '', '', 'cfosterplant@hotmail.co.uk', 1, NULL),
(162, 'Hire Freeman', 'TF7 4PA', '-2.4282475951916', '52.64303109826', '', '01952 586666', 'www.hirefreeman.co.uk', '', '', 'john.freeman1@btconnect.com', 1, NULL),
(163, 'French Contractors LLP', 'CV23 0QW', '-1.2627929070444', '52.440989217293', '', '01788 832919', 'www.frenchplant.co.uk', '', '', 'junefrench@btconnect.com', 1, NULL),
(164, 'Advanced Tool Hire Ltd', 'DY5 1TQ', '-2.1068107703845', '52.486686644953', '', '01384 262444', '', '', '', 'advancedtool.martin@btconnect.com', 1, NULL),
(165, 'G A Carlyon Haulage & Plant Hire', 'TR4 8DR', '-5.2077064049414', '50.284519912205', '', '01209 890221', 'www.gacarlyon.com', '', '', 'info@gacarlyon.com', 1, NULL),
(166, 'Mason Woodchippers Ltd', 'DL10 6NF', '-1.6652478832049', '54.465068477105', '', '01429 836266', 'www.masonwoodchippers.com', '', '', 'john@masonwoodchippers.com', 1, NULL),
(167, 'Magna Plant Hire', 'S80 2DN', '-1.1090787456876', '53.308106707819', '', '01909 482962', 'www.magnaplanthire.co.uk', '', '', 'gbwtoolhire@hotmail.co.uk', 1, NULL),
(168, 'G F Grigg', 'SY16 2AS', '-3.3126817349115', '52.517014291623', '', '01686 610787', 'www.gfgrigg.co.uk', '', '', 'enquiries@gfgrigg.co.uk', 1, NULL),
(169, 'G Mayer Plant Hire Ltd', 'SY13 3LT', '-2.6949689335256', '52.917794838386', '', '01948 880418', 'www.gmayerplanthire.co.uk', '', '', 'amanda@gmayerplanthire.co.uk', 1, NULL),
(170, 'G Moore Haulage Ltd', 'MK43 9NT', '-0.49462335977578', '52.087207923571', '', '01234 851731', '', '', '', 'gmoorehaulage@btconnect.com', 1, NULL),
(171, 'G S Hughes Ltd', 'LN6 9DY', '-0.6682863300329', '53.18549187565', '', '01522 869666', '', '', '', 'office@gshughes.co.uk', 1, NULL),
(172, 'G Stephens Plant Hire', 'CF5 6JH', '-3.2975990801873', '51.514281197473', '', '029 2089 0790', '', '', '', '', 1, NULL),
(173, 'Galloway Plant Hire', 'DG8 0HA', '-4.607962776917', '54.915570452271', '', '01671 830351', '', '', '', '', 1, NULL),
(174, 'GB Digger Hire', 'NR10 5NU', '1.2478282234337', '52.728125176363', '', '01603 754286', 'www.gbdiggerhire.co.uk', '', '', '', 1, NULL),
(175, 'Geach Plant & Machinery Hire', 'EX6 8AT', '-3.4997113953946', '50.683433292729', '', '01392 824374', '', '', '', 'geachplanthire@yahoo.co.uk', 1, NULL),
(176, 'Gemini Hire & Sales Ltd', 'SE1 0UE', '-0.10192920309869', '51.504645405485', '', '020 7928 2888', 'www.geminihireandsales.com', '', '', '', 1, NULL),
(177, 'Geoff Huntley Plant', 'NE12 5US', '-1.5844053996171', '55.042000072834', '', '0191 216 0044', '', '', '', 'hire@huntleyplant.co.uk', 1, NULL),
(178, 'George Rose', 'TN22 4LA', '0.13286394461603', '50.990011799922', '', '01825 732655', 'www.georgerose.co.uk', '', '', 'sales@georgerose.co.uk', 1, NULL),
(179, 'Gibbons Plant Hire', 'IP6 9SZ', '1.1422096804294', '52.169987214521', '', '01449 760236', 'www.gibbonsplanthire.co.uk', '', '', 'mike@gibbonsplanthire.co.uk', 1, NULL),
(180, 'Gray Plant Hire Ltd', 'ME13 0JX', '0.87696846629458', '51.23993240283', '', '01233 740800', '', '', '', 'grayplanthire@yahoo.co.uk', 1, NULL),
(181, 'H & S Contractors Ltd', 'ME3 9ND', '0.59838516291285', '51.429079314481', '', '01634 253545', 'www.hscontractors.co.uk', '', '', '', 1, NULL),
(182, 'H E Services Ltd', 'ME2 4DZ', '0.51133131268842', '51.398681988656', '', '0871 227 0707', 'www.heservices.co.uk', '', '', 'enquiries@heservices.co.uk', 1, NULL),
(183, 'H W Kinnaird', 'IV12 5JZ', '-3.7879660344687', '57.571972198474', '', '01667 454036', '', '', '', '', 1, NULL),
(184, 'Hailsham Plant', 'BN27 4BW', '0.21365530496917', '50.885611231952', '', '01323 844813', 'www.hailshamplant.co.uk', '', '', 'patmoorek9@rocketmail.com', 1, NULL),
(185, 'Harlech Plant Services', 'LL46 2UE', '-4.1076546046495', '52.862421795072', '', '01766 780877', '', '', '', 'harlechplantservices@btconnect.com', 1, NULL),
(186, 'Harlow Hire Ltd', 'WA10 6SH', '-2.7548943053606', '53.460649252006', '', '01744 750251', 'www.harlowhire.co.uk', '', '', 'enquiries@harlowhire.co.uk', 1, NULL),
(187, 'Shorts Group', 'GU8 5AD', '-0.63876780085287', '51.163213891631', '', '01483 418887', 'www.harrisonhire.co.uk', '', '', 'planthire@shorts-group.co.uk', 1, NULL),
(188, 'Hather Plant Hire Ltd', 'S60 1DR', '-1.3762475515372', '53.417245390238', '', '01709 528585', 'www.hatherplanthire.com', '', '', 'enquiries@hatherplanthire.com', 1, NULL),
(189, 'Hawk', 'SY13 2BS', '-2.6527484771422', '52.885321625274', '', '01948 842120', 'www.hawk-group.co.uk', '', '', 'hire@hawk-group.co.uk', 1, NULL),
(190, 'Healey Tool Hire', 'CO2 8JN', '0.92561952074336', '51.874387742909', '', '01206 793400', 'www.healeytoolhire.com', '', '', 'colchester@healeytoolhire.com', 1, NULL),
(191, 'Higgins Plant Hire Ltd', 'B11 2HX', '-1.8526111696166', '52.453856754869', '', '01564 826664', '', '', '', '', 1, NULL),
(192, 'Highway Plant', 'TR15 1SS', '-5.2197468733955', '50.24388474637', '', '01209 214197', 'www.planthirecornwall.net', '', '', 'highwayplant@btinternet.com', 1, NULL),
(193, 'Hire Direct Ltd', 'SL5 9ED', '-0.67647723189496', '51.405351112697', '', '01344 623414', 'www.hiredirectltd.co.uk', '', '', '', 1, NULL),
(194, 'Hire Equip Ltd', 'M17 1SX', '-2.3403225301802', '53.474818742566', '', '0161 877 0443', 'www.hireequip.co.uk', '', '', 'hireequiptrafford@hotmail.co.uk', 1, NULL),
(195, 'Hire Shop', 'JE2 7WF', '', '', '', '01534 877775', 'www.beis.com', '', '', '', 1, NULL),
(196, 'Hire Shop Birmingham Ltd', 'B8 2TE', '-1.8303277677316', '52.489481166253', '', '0121 327 6017', 'tool-hire-shop-birmingham.com', '', '', 'hireshop@talk21.com', 1, NULL),
(197, 'Hiremasters', 'E16 2EL', '0.054475209582739', '51.500552600301', '', '020 7473 2712', 'www.hiremasters.co.uk', '', '', 'hire@hiremasters.co.uk', 1, NULL),
(198, 'Hirepoint', 'M33 3NE', '-2.3202613334474', '53.417752108558', '', '0161 962 7978', 'www.hirepointltd.co.uk', '', '', 'hirepoint@hotmail.co.uk', 1, NULL),
(199, 'Hirestore', 'BT19 7QT', '-5.6716940883015', '54.642294654675', '', '028 9127 1919', 'www.hirestore.com', '', '', 'hire@hirestore.com', 1, NULL),
(200, 'Hoist & Access Services', 'G20 0TS', '-4.3075362857294', '55.896961092472', '', '0141 945 0101', 'www.hoistandaccess.com', '', '', 'info@hoistandaccess.com', 1, NULL),
(201, 'Hoist Hire Services Ltd', 'TQ11 0NR', '-3.7794251980312', '50.48247227921', '', '01364 644101', 'www.hoisthire.co.uk', '', '', 'info@hoisthire.co.uk', 1, NULL),
(202, 'Holgate Construction Ltd', 'WF4 4DR', '-1.6469510565171', '53.630146310478', '', '01924 840444', '', '', '', 'sales@jayrange.com', 1, NULL),
(203, 'Honeybun Plant Hire Ltd', 'BH20 7EE', '-2.1653282461259', '50.750958594799', '', '01929 459415', '', '', '', 'honeybunplanthire@btconnect.com', 1, NULL),
(204, 'Hubbway Plant & Tool Hire', 'NE23 8AD', '-1.6152910846543', '55.08988082486', '', '01670 590777', 'www.hubbwayhire.co.uk', '', '', '', 1, NULL),
(205, 'Humberside Plant Hire Ltd', 'HU16 4JN', '-0.39871657176423', '53.794192706586', '', '01482 877772', 'www.hullplanthire.co.uk', '', '', 'humbersideplant@yahoo.co.uk', 1, NULL),
(206, 'Hutton Hire', 'TR8 4LA', '-5.0276538880673', '50.404370948621', '', '01637 851801', 'www.huttonhire.co.uk', '', '', '', 1, NULL),
(207, 'I G S Plant Hire Ltd', 'HX2 9NT', '-1.880300596673', '53.776564733902', '', '01422 240099', 'www.igsplanthire.co.uk', '', '', 'igsplant@btconnect.com', 1, NULL),
(208, 'J & J Plant Ltd', 'TS6 7AA', '-1.1553277617388', '54.577940293337', '', '01642 452333', 'www.jjplanthire.co.uk', '', '', 'info@jjplant.co.uk', 1, NULL),
(209, 'Proctor Plant Sales', 'YO25 4UU', '-0.33186039228737', '54.086921846588', '', '01262 420210', 'www.proctorplantsales.com', '', '', 'proctorplant@gmail.com', 1, NULL),
(210, 'J B Plant & Tool Hire Ltd', 'BT70 1RB', '-6.7919375177086', '54.514864467255', '', '028 8772 2429', '', '', '', 'dungannon@jbplant.co.uk', 1, NULL),
(211, 'J C Balls & Sons', 'DE56 2HX', '-1.4784413059962', '53.060776891543', '', '01773 856677', 'www.jcballs.co.uk', '', '', 'enquiries@jcballs.co.uk', 1, NULL),
(212, 'Devine Plant Hire', 'GU35 9AF', '-0.85165907514841', '51.097685760739', '', '01428 751555', 'www.jdevine.co.uk', '', '', 'tim.brackley@jdevine.co.uk', 1, NULL),
(213, 'J M B Hire Centres', 'NN17 5XY', '-0.67357807457366', '52.500104326348', '', '01536 200262', 'www.jmbhire.co.uk', '', '', 'sales@jmbhire.co.uk', 1, NULL),
(214, 'Johnny Rutherford Contractors Hutton Ltd', 'TD15 1TS', '-2.1487469303434', '55.777996527458', '', '01289 386372', 'www.jrplanthire.co.uk', '', '', 'jrcon@hotmail.co.uk', 1, NULL),
(215, 'J S & R Rattray & Son', 'AB38 7RX', '-3.3607965559688', '57.468047802911', '', '01340 810454', '', '', '', 'ritarattray@hotmail.co.uk', 1, NULL),
(216, 'J W Crowther & Son Ltd', 'LS27 7HW', '-1.6365385712418', '53.750826290112', '', '0113 253 2191', 'www.jwcrowther.co.uk', '', '', 'sales@jwcrowther.co.uk', 1, NULL),
(217, 'J W Munnings Ltd', 'NR31 0LS', '1.7163633944919', '52.591573608823', '', '01493 603328', 'www.jwmunnings.co.uk', '', '', 'admin@jwmunnings.co.uk', 1, NULL),
(218, 'J White & Co T D E Ltd', 'S61 2NF', '-1.3908649269311', '53.427244319506', '', '01709 740099', 'www.jwhite-tde.co.uk', '', '', '', 1, NULL),
(219, 'Jackson & Gocher Hire Centre', 'GU7 3LP', '-0.60838295414134', '51.19720778118', '', '01483 861988', '', '', '', 'hire@jghire.co.uk', 1, NULL),
(220, 'Hogg Blasting & Finishing Equipment Ltd', 'NE37 1PR', '-1.5482167295026', '54.907714841435', '', '0191 415 3030', 'www.sfeg.co.uk', '', '', 'info@hoggblasting.com', 1, NULL),
(221, 'Jamieson Plant Hire', 'KA19 7DX', '-4.6895504399362', '55.351493505385', '', '01655 883251', 'www.jamiesonplantandcontracting.co.uk', '', '', 'admin@jamiesonplanthire.co.uk', 1, NULL),
(222, 'James C E Urquhart', 'EH45 8JR', '-3.1970835486903', '55.653482969898', '', '01721 721447', '', '', '', 'glensax1@live.co.uk', 1, NULL),
(223, 'Jet Plant Hire Ltd', 'WR11 1GS', '-1.9335411098279', '52.07323600685', '', '01386 765999', 'www.jetplant.co.uk', '', '', 'office@jetplant.co.uk', 1, NULL),
(224, 'John F Hunt Hire', 'NW10 7PG', '-0.2718833794106', '51.528710783072', '', '020 8965 8965', 'www.johnfhunt.co.uk', '', '', '', 1, NULL),
(225, 'John M Paterson Ltd', 'KA19 8HX', '-4.786897060021', '55.328428680852', '', '01655 760666', 'www.jmpaterson.co.uk', '', '', 'john-paterson@hotmail.co.uk', 1, NULL),
(226, 'John Reeve Plant Hire Ltd', 'CT13 0ET', '1.2898706762343', '51.242205006151', '', '01304 611288', 'www.johnreeveplanthire.co.uk', '', '', 'johnreeveplanthire@hotmail.com', 1, NULL),
(227, 'John Shelton & Sons', 'BH24 3DD', '-1.7448545131251', '50.834400932124', '', '01425 473194', '', '', '', '', 1, NULL),
(228, 'Joinpoint', 'LE1 4RF', '-1.1392866429717', '52.639502043551', '', '0116 253 9133', '', '', '', 'joinpoint@btconnect.com', 1, NULL),
(229, 'J D Ord', 'SR5 2ET', '-1.4118991450565', '54.92074617427', '', '0191 548 4732', '', '', '', 'j_ord@btconnect.com', 1, NULL),
(230, 'Jovic Plant', 'CM2 7RP', '0.53705693868911', '51.710818219089', '', '01245 224211', 'www.jovicplant.co.uk', '', '', 'info@jovicplant.co.uk', 1, NULL),
(231, 'Jovic Plant Ltd', 'SS13 1DF', '0.51120166905908', '51.585019264324', '', '01268 727272', 'www.jovicplant.co.uk', '', '', 'info@jovicplant.co.uk', 1, NULL),
(232, 'J P I Road Planing Ltd', 'HD3 3TB', '-1.8399881604977', '53.667267625226', '', '01422 376111', '', '', '', 'jpiroadplaning@btconnect.com', 1, NULL),
(233, 'K C Hire', 'BT35 8NR', '-6.3269742137782', '54.140912703709', '', '028 3026 3834', 'www.kchire.ie', '', '', 'kchire@hotmail.co.uk', 1, NULL),
(234, 'K C Hire & Sales Ltd', 'L3 8ET', '-2.9713420735281', '53.410338856857', '', '0151 207 0577', 'www.kchire.co.uk', '', '', 'kchire@btconnect.com', 1, NULL),
(235, 'K J N', 'OX27 0GD', '-1.0812723843539', '51.907558243708', '', '01869 278389', 'www.kjn.co.uk', '', '', 'info@kjn.co.uk', 1, NULL),
(236, 'K Libby Plant Hire', 'PL13 2FH', '-4.5629862339146', '50.385906025908', '', '01503 220614', '', '', '', 'klibby.planthire@gmail.com', 1, NULL),
(237, 'K P H Plant Hire', 'WF17 9NF', '-1.6504762530384', '53.739713519769', '', '01924 470411', 'www.kphplanthire.co.uk', '', '', 'kphplanthire@btconnect.com', 1, NULL),
(238, 'Keith Plant Hire', 'AB55 6RP', '-3.0147414496965', '57.562889724004', '', '01542 887820', '', '', '', 'keithplanthire@btconnect.com', 1, NULL),
(239, 'Kelly Plant Hire', 'NE15 6XP', '-1.6891250113454', '54.969335577563', '', '0191 275 3339', 'www.kellyplanthireltd.co.uk', '', '', 'kelly.plant@zen.co.uk', 1, NULL),
(240, 'Kelsey Plant Hire', 'RH12 4AQ', '-0.31173852092353', '51.074561478135', '', '01403 249125', 'www.kelseyplanthire.co.uk', '', '', 'info@kelseyplanthire.co.uk', 1, NULL),
(241, 'Ken Pink Plant Hire Ltd', 'GL51 0TF', '-2.15812566335', '51.900382827232', '', '01452 712230', 'www.kenpink.co.uk', '', '', 'enquiries@kenpink.co.uk', 1, NULL),
(242, 'K P T Solutions Ltd', 'SE7 7TE', '0.031792261961935', '51.491712302823', '', '020 8293 3135', 'www.kentplant.com', '', '', 'info@kptsolutions.co.uk', 1, NULL),
(243, 'K Coghlan Plant & Transport', 'PO30 4JX', '-1.3959144755591', '50.695159472994', '', '01983 531837', 'www.kevincoghlan.co.uk', '', '', 'accounts@kevincoghlan.co.uk', 1, NULL),
(244, 'Kevin Guy Plant Hire', 'BB8 7EW', '-2.1219154497612', '53.875240718801', '', '01282 861166', 'www.tower-crane-hire.com', '', '', 'kevinguyplanthire@googlemail.com', 1, NULL),
(245, 'Keyline', 'SO31 1BX', '-1.2669641200091', '50.875479378246', '', '01489 581944', 'www.keyline.co.uk', '', '', '', 1, NULL),
(246, 'Keyway', 'GL2 5FW', '-2.2605818980484', '51.843827498016', '', '01452 300567', 'www.keyway.co.uk', '', '', 'info@keyway.co.uk', 1, NULL),
(247, 'Kingsbridge Hire Centre', 'TQ7 1ES', '-3.7819488701689', '50.283234459987', '', '01548 853679', 'www.kingsbridgehire.com', '', '', 'info@kingsbridgehire.com', 1, NULL),
(248, 'K J M Road Sweepers', 'IP28 8DY', '0.44537570037841', '52.3946901423', '', '01353 675433', '', '', '', 'trevor.kjm@btconnect.com', 1, NULL),
(249, 'Total Tools', 'CW5 6LU', '-2.5137281854731', '53.065367842708', '', '01270 627421', 'www.total-tools.co.uk', '', '', 'sales@total-tools.co.uk', 1, NULL),
(250, 'Lavender Tool Hire', 'SW11 5QL', '-0.1554250714703', '51.465176578416', '', '020 7207 4147', 'www.lavendertoolhiredirect.co.uk', '', '', 'lavendertoolhire@hotmail.co.uk', 1, NULL),
(251, 'Laverick Plant Hire', 'DL10 6QN', '-1.6142435363349', '54.435537850106', '', '01325 378229', '', '', '', 'john.laverick@laverickplanthire.co.uk', 1, NULL),
(252, 'Law Plant & Tools', 'DY10 1HY', '-2.2502328336714', '52.37290777461', '', '01562 865550', 'www.lawplant.co.uk', '', '', '', 1, NULL),
(253, 'Les Finzi Plant Hire', 'TF6 6PZ', '-2.5478634992096', '52.784378006425', '', '01952 541225', 'www.jcb2hire.co.uk', '', '', 'finzi@btconnect.com', 1, NULL),
(254, 'Lindley Crane & Plant Hire Ltd', 'YO8 9NX', '-1.1277782657182', '53.7729490402', '', '01757 704244', 'www.lindleycraneandplanthire.co.uk', '', '', 'lindleyplant@yahoo.com', 1, NULL),
(255, 'Lineal Construction Co', 'TF10 7BX', '-2.361955057195', '52.763461955822', '', '01952 820220', '', '', '', 'norma.lawrence@btconnect.com', 1, NULL),
(256, 'Litchard Tool Hire', 'CF31 1NW', '-3.5770067234531', '51.51493947643', '', '01656 645166', 'www.litchardtoolhire.wales', '', '', 'info@litchardtoolhire.wales', 1, NULL),
(257, 'L O C Plant Hire & Haulage', 'CB7 5NR', '0.40224388927578', '52.310671023172', '', '01638 720653', '', '', '', '', 1, NULL),
(258, 'Local Tool Hire', 'NW2 2DX', '-0.20731994086441', '51.560402153016', '', '020 8450 2484', 'www.localtoolhire.co.uk', '', '', 'info@localtoolhire.co.uk', 1, NULL),
(259, 'Lock Bros Plant Hire Ltd', 'DA8 2AD', '0.1934011947334', '51.477118385527', '', '01322 350679', 'www.lockbros.com', '', '', 'info@lockbros.com', 1, NULL),
(260, 'Lomond Plant', 'FK2 7PD', '-3.7822548707247', '56.013729782289', '', '01324 612222', 'www.lomondplant.co.uk', '', '', 'plant@lomondplant.co.uk', 1, NULL),
(261, 'London Plant Hire', 'N12 0DY', '-0.17554596443444', '51.608480133667', '', '020 8446 4231', 'www.londonplanthire.co.uk', '', '', 'finchley@londonplanthire.co.uk', 1, NULL),
(262, 'Carrier Rental Systems', 'IV6 7UA', '-4.4534436370126', '57.506762718334', '', '01463 870454', 'www.sldpumpspower.co.uk', '', '', '', 1, NULL),
(263, 'Lord', 'DH1 2XH', '-1.5418495845669', '54.780136813461', '', '0191 386 1412', 'www.lordhire.co.uk', '', '', 'lord@lordhire.co.uk', 1, NULL),
(264, 'Low Cost Plant Hire', 'BN16 1EP', '-0.47640456917115', '50.815272329385', '', '01903 775605', '', '', '', 'lowcostplanthire@hotmail.com', 1, NULL),
(265, 'M & J Hire Centres Ltd', 'PE2 7WH', '-0.26310242019692', '52.558958828189', '', '01733 371234', 'www.mjhire.co.uk', '', '', 'peterborough@mjhire.co.uk', 1, NULL),
(266, 'M & S Hire Ltd', 'ME10 3HB', '0.75124355203611', '51.343924289868', '', '01795 429731', 'www.mandshire.com', '', '', '', 1, NULL),
(267, 'M B Plant', 'AB43 9SX', '-2.0261543696157', '57.693227722091', '', '01346 517022', 'www.mbplant.co.uk', '', '', 'enquiries@mbplant.co.uk', 1, NULL),
(268, 'M B Plant', 'IV18 0SB', '-4.169837892166', '57.694851774647', '', '01349 853760', 'www.mbplant.co.uk', '', '', 'enquiries@mbplant.co.uk', 1, NULL),
(269, 'M J Bragg & Son', 'EX17 5JL', '-3.7437052710217', '50.790000951398', '', '01363 84121', '', '', '', 'traceybragg@btinternet.com', 1, NULL),
(270, 'M J Hickey Plant Hire & Contractors Ltd', 'NE61 5SD', '-1.5893483623572', '55.216516864562', '', '01670 860523', 'www.mjhickey.co.uk', '', '', 'admin@mjhickey.co.uk', 1, NULL),
(271, 'M J Wilkinson', 'FY6 9DJ', '-2.9480263587942', '53.885804607398', '', '01253 701688', '', '', '', 'mike.wilkinson@btconnect.com', 1, NULL),
(272, 'M L Plant Hire Ltd', 'LN9 6JW', '-0.10632415689393', '53.197904734071', '', '01507 524040', 'www.mlplant-toolhire.co.uk', '', '', 'mlplanthire@aol.com', 1, NULL),
(273, 'Morgan\'s Plant Hire Ltd', 'HP18 9QQ', '-1.0639215043146', '51.803690072815', '', '01844 237874', 'www.morgansplanthire.com', '', '', 'hire@morgansplanthire.com', 1, NULL),
(274, 'M P Hire Ltd', 'SY4 5NU', '-2.7752098508881', '52.879704086153', '', '01939 233244', 'www.mp-hire.com', '', '', 'info@mp-hire.com', 1, NULL),
(275, 'Bryan Contractors', 'PH1 4JW', '-3.4692541660054', '56.559917782799', '', '01738 710241', 'www.bryancontractors.co.uk', '', '', 'bryancontractors@hotmail.co.uk', 1, NULL),
(276, 'M T K Breaker Hire & Sales Ltd', 'M19 3JL', '-2.1732209367622', '53.444787823654', '', '0161 225 9740', 'www.mtk-breakers.co.uk', '', '', 'info@mtk-breakers.co.uk', 1, NULL),
(277, 'M T Kaill Plant Hire Ltd', 'SK1 3BU', '-2.151421104445', '53.406921827592', '', '0161 480 9137', 'www.kaillplant.co.uk', '', '', 'info@kaillplant.co.uk', 1, NULL),
(278, 'Macaskill Plant & Machinery Hire', 'IV47 8SX', '-6.3068331011084', '57.302256312906', '', '01478 640213', '', '', '', 'applealiday@icloud.com', 1, NULL),
(279, 'Maerdy Plant Hire', 'SA9 2WJ', '-3.8230635116564', '51.807622647792', '', '01639 831336', '', '', '', 'maerdyplant@btinternet.com', 1, NULL),
(280, 'Magnito Tool Hire', 'LU3 1AZ', '-0.43192671740549', '51.895221831232', '', '01582 417070', 'www.magnitotoolhire.co.uk', '', '', 'sales@magnitotoolhire.co.uk', 1, NULL),
(281, 'Mann Plant Hire & Lamanva Training Centre', 'TR10 9BJ', '-5.1319447266834', '50.143292424519', '', '01326 374808', 'www.planttrainingincornwall.co.uk', '', '', 'lamanvatrainingcentre@yahoo.co.uk', 1, NULL),
(282, 'Map Plant', 'RM17 6FF', '0.33727244996235', '51.481919230926', '', '01375 379913', 'www.mapplant.co.uk', '', '', '', 1, NULL),
(283, 'Mark Farwell Plant Hire & Contracting', 'DT11 8SY', '-2.1798745178543', '50.884494088188', '', '01258 450800', 'www.markfarwellplanthire.co.uk', '', '', 'mfarwell@btconnect.com', 1, NULL),
(284, 'Marshall Plant', 'FK12 5NZ', '-3.8258686230908', '56.154580632223', '', '01259 762490', 'www.marshallconstruction.co.uk', '', '', 'mail@marshallconstruction.co.uk', 1, NULL),
(285, 'Maxhire', 'NE13 7BA', '-1.6441892100813', '55.04664657957', '', '0191 236 7474', 'www.maxhire.co.uk', '', '', 'graham.newcastle@maxhire.co.uk', 1, NULL),
(286, 'Mayday Plant & Tool Hire', 'CR7 8LH', '-0.097895594666603', '51.399698888427', '', '020 8771 7333', 'www.maydayplanthire.co.uk', '', '', 'hire@maydayplanthire.co.uk', 1, NULL),
(287, 'McFen Plant', 'E16 4TL', '-0.00089253460508954', '51.520385264192', '', '0844 800 0760', 'www.mcfenplant.co.uk', '', '', 'mcfenplant@gmail.com', 1, NULL),
(288, 'McIntosh & Robertson', 'PH1 4HJ', '-3.4705237473924', '56.534762629895', '', '01738 710255', '', '', '', 'mcintosh.robertson@outlook.com', 1, NULL),
(289, 'Megaplant', 'HU9 1PA', '-0.30791531098126', '53.748440264111', '', '01482 323800', 'www.megaplanthire.co.uk', '', '', 'info@megaplanthire.co.uk', 1, NULL),
(290, 'Metcalfe Plant Hire Ltd', 'CA11 9BL', '-2.7617723537965', '54.666364218865', '', '01768 868686', 'www.metcalfe-plant-hire.co.uk', '', '', 'enquiries@metcalfe-plant-hire.co.uk', 1, NULL),
(291, 'G V Services Michael Clancy', 'WS11 7XU', '-2.0148564921928', '52.692285530571', '', '01543 504616', '', '', '', 'mclancy@btconnect.com', 1, NULL),
(292, 'Mid West Plant Ltd', 'LD3 8HD', '-3.5368992802227', '51.954130456478', '', '01874 638181', '', '', '', '', 1, NULL),
(293, 'Midland Excavator Hire Ltd', 'DE6 1BJ', '-1.7233620592492', '53.009461203359', '', '01335 344725', 'www.midlandexcavatorhire.co.uk', '', '', 'midlandexcavatorhire@btconnect.com', 1, NULL),
(294, 'Mill Hill Plant Ltd', 'AL4 0PB', '-0.25673686865095', '51.734732024407', '', '01727 823537', '', '', '', 'millhillplant@gmail.com', 1, NULL),
(295, 'Miller Plant Ltd', 'AB51 7NB', '-2.5044242162523', '57.145228661075', '', '01330 830033', 'www.millerplant.com', '', '', 'office@millerplant.com', 1, NULL),
(296, 'Mini Digger Hire', 'ST9 9LA', '-2.0923293226995', '53.043051593773', '', '07702 733559', '', '', '', 'shaun@bettaneyhorseboxes.co.uk', 1, NULL),
(297, 'Mini Muckshift', 'LL17 0LG', '-3.4808223177038', '53.253462847497', '', '01745 583668', 'www.minimuckshift.com', '', '', 'info@minimuckshift.co.uk', 1, NULL),
(298, 'Molesey Hire', 'KT8 2HT', '-0.36021778446285', '51.400884908734', '', '020 8979 5317', 'www.moleseyhire.com', '', '', 'trmdlimited@aol.co.uk', 1, NULL),
(299, 'N A L Plant Ltd', 'S44 6XF', '-1.2738708207134', '53.235181501912', '', '01246 241145', '', '', '', 'nal.plant@btconnect.com', 1, NULL),
(300, 'National Floor Preparation Centres Ltd', 'WS12 0QU', '-1.9886751675695', '52.724873266496', '', '01543 877952', 'www.nfpc-hire.co.uk', '', '', 'info@nfpc-hire.co.uk', 1, NULL),
(301, 'Ned Brooks', 'LA9 7NW', '-2.7324671911024', '54.316630224175', '', '01539 722855', '', '', '', 'edanbrook@talktalk.net', 1, NULL),
(302, 'Neil O\'Connor Ltd', 'TR20 8NB', '-5.5068864303789', '50.170970096252', '', '01736 740675', '', '', '', '', 1, NULL),
(303, 'Newfield Tool Hire', 'TF2 7DP', '-2.4530411931672', '52.713948751921', '', '01952 677538', 'www.newfieldtoolhiretelford.co.uk', '', '', '', 1, NULL),
(304, 'Monaghan Contracts Ltd', 'BT93 0AL', '-7.6595028653493', '54.535833845958', '', '028 6863 1427', '', '', '', 'info@monaghancontracts.com', 1, NULL),
(305, 'North London Plant Hire', 'E8 2EZ', '-0.072716386240163', '51.550849335285', '', '020 7254 3328', 'www.nlph.co.uk', '', '', 'sales@nlph.co.uk', 1, NULL),
(306, 'O\'Connell Plant & Groundworks Ltd', 'E16 1FB', '0.010687968722487', '51.50709393796', '', '020 7474 0109', 'www.oconnellgroup.co.uk', '', '', 'hire@oconnellgroup.co.uk', 1, NULL),
(307, 'Oaks Plant Hire', 'TN13 2DN', '0.16901527374112', '51.288582908238', '', '01732 459921', 'www.oaksplanthire.co.uk', '', '', 'equipment@oaksplanthire.co.uk', 1, NULL),
(308, 'Oakwood Demolition', 'N18 3BH', '-0.046302816622932', '51.616876131866', '', '020 8803 2222', 'www.oakwood.tv', '', '', 'mail@oakwood.tv', 1, NULL),
(309, 'Online Tool Hire', 'W3 9BD', '-0.28519101674008', '51.501434473586', '', '020 8896 1222', 'www.oltools.co.uk', '', '', 'sales@oltools.co.uk', 1, NULL),
(310, 'Orbital Equipment Ltd', 'EN9 2AG', '0.016259826784502', '51.693117617917', '', '01992 787777', 'www.orbitalequipment.co.uk', '', '', 'info@orbitalequipment.co.uk', 1, NULL),
(311, 'P & L Barton Ltd', 'LA6 1BE', '-2.6729986663845', '54.131375592761', '', '015242 21762', 'www.plbartonplanthire.co.uk', '', '', '', 1, NULL),
(312, 'P N S Landscape', 'OL12 7TB', '-2.2113320915947', '53.633509070801', '', '01706 345534', 'www.pnslandscapes.co.uk', '', '', 'info@pnslandscapes.co.uk', 1, NULL);
INSERT INTO `suppliers` (`recid`, `bussinessname`, `postcode`, `longitude`, `latitude`, `suit`, `phone`, `webaddress`, `hours`, `website`, `email`, `status`, `created`) VALUES
(313, 'O\'Malley Plant Hire', 'CA11 8SR', '-2.7013762874266', '54.671357167835', '', '01768 864354', 'www.omalley-groundworks.co.uk', '', '', 'mail@omalley-groundworks.co.uk', 1, NULL),
(314, 'P P H Contractors', 'LL53 6TU', '-4.3951265079979', '52.914478156187', '', '01758 701400', '', '', '', 'wil@pphc.co.uk', 1, NULL),
(315, 'P R Beynon Contracts Ltd', 'SA4 3TP', '-4.1487681290856', '51.626584524568', '', '01792 850000', '', '', '', 'richard@prbeynon.co.uk', 1, NULL),
(316, 'P R S Hire Services Ltd', 'LN6 3QY', '-0.59532206581473', '53.198956386309', '', '01522 500488', 'www.prshireservicesltd.co.uk', '', '', 'info@prshireservicesltd.co.uk', 1, NULL),
(317, 'Stevens Equipment Rental', 'CA7 4PE', '-3.3602761754542', '54.864802507758', '', '016973 31937', 'www.serental.co.uk', '', '', '', 1, NULL),
(318, 'Parker Tool Hire Ltd', 'NG4 1GD', '-1.1078430173545', '52.966253899443', '', '0115 987 2179', 'www.parkertoolhire.co.uk', '', '', 'info@parkertoolhire.co.uk', 1, NULL),
(319, 'Patton Hire', 'BT37 9SY', '-5.9149516294421', '54.652631291824', '', '028 9086 8782', 'www.pattonhire.co.uk', '', '', 'enquiries@pattonhire.co.uk', 1, NULL),
(320, 'Paul Rouget Plant Hire', 'GY2 4RD', '', '', '', '01481 242440', '', '', '', 'paul.rouget@cwgsy.net', 1, NULL),
(321, 'Peacock Plant Hire', 'YO61 2RF', '-1.3117134889824', '54.129896866769', '', '01423 360636', '', '', '', '', 1, NULL),
(322, 'Pioneer Pump', 'CF11 8RR', '-3.201232551705', '51.455754200535', '', '01278 410999', 'www.performancepump.co.uk', '', '', '', 1, NULL),
(323, 'Peris Jones Plant Hire', 'SA14 7NH', '-4.0912713395871', '51.817158232913', '', '01269 842283', 'www.perisjones.com', '', '', 'accounts@perisjones.com', 1, NULL),
(324, 'Peter Banks Plant Ltd', 'SP6 2HW', '-1.7609276195562', '50.915375968266', '', '01425 654675', '', '', '', '', 1, NULL),
(325, 'Peter Hull Plant Hire Ltd', 'CO15 4LU', '1.1722301588573', '51.815996353707', '', '01255 474012', '', '', '', 'peter.hull@btconnect.com', 1, NULL),
(326, 'Peter Lucas Power Tools', 'LL31 9BA', '-3.8008711449075', '53.282976174972', '', '01492 583469', 'www.peterlucaspowertools.co.uk', '', '', 'lucas.toolhire@btconnect.com', 1, NULL),
(327, 'Philip Hall Plant Ltd', 'PE7 3DE', '-0.22329060122744', '52.535836580342', '', '01733 240221', 'www.phplant.com', '', '', 'info@phplant.com', 1, NULL),
(328, 'Plant & Consumables Services Ltd', 'DE74 2UB', '-1.3403584598167', '52.855187414421', '', '01332 813300', 'www.pacs.co.uk', '', '', 'enquiries@pacs.co.uk', 1, NULL),
(329, 'Plant & Fixings', 'IV1 1UF', '-4.2073100407788', '57.485054911536', '', '01463 713737', 'www.plantandfixings.co.uk', '', '', 'sales@plantandfixings.co.uk', 1, NULL),
(330, 'Plantool', 'NN11 4SD', '-1.1539513907167', '52.246697120862', '', '01327 878711', 'www.hirecentres.com', '', '', 'daventryhire@hirecentres.com', 1, NULL),
(331, 'Pontefract Graders Ltd', 'WF8 2JJ', '-1.2985948953968', '53.696609188135', '', '01977 796103', '', '', '', 'pontefractgraders@gmail.com', 1, NULL),
(332, 'Thames Valley Hire Services Ltd', 'UB9 4DQ', '-0.48625585402173', '51.551779398082', '', '01895 236537', 'www.hireservices.tv', '', '', 'info@hireservices.tv', 1, NULL),
(333, 'Eagle Plant', 'TA20 1BB', '-2.9515585640285', '50.882435458485', '', '01460 61111', 'www.eagleplant.co.uk', '', '', 'chard.branch@eagleplant.co.uk', 1, NULL),
(334, 'Powerquip Ltd', 'PL14 3DP', '-4.464459730041', '50.456297206242', '', '01579 345307', 'www.powerquip.co.uk', '', '', 'powerquip@btconnect.com', 1, NULL),
(335, 'P P O Hire Centre', 'BT35 6AU', '-6.3432845943855', '54.179683915346', '', '028 3026 7316', '', '', '', 'ppohire@fsmail.net', 1, NULL),
(336, 'Camberwell Plant Hire Ltd', 'SE24 9HE', '-0.092829836373778', '51.44992161133', '', '020 7326 0000', 'www.premierplanthire.co.uk', '', '', 'operations@premierplanthire.co.uk', 1, NULL),
(337, 'Work Strings International Ltd', 'AB21 0BF', '-2.1938238305902', '57.214157144009', '', '01224 724900', 'www.workstrings.com', '', '', 'sales.uk@workstrings.com', 1, NULL),
(338, 'Premier Tool Hire Ltd', 'B25 8HA', '-1.8310505730639', '52.46222459912', '', '0121 771 4777', 'www.premiertoolhire.co.uk', '', '', 'info@premiertoolhire.co.uk', 1, NULL),
(339, 'Price Hire Services', 'KT12 2SQ', '-0.41353163621016', '51.391133715054', '', '01932 220031', 'www.pricehireservices.co.uk', '', '', '', 1, NULL),
(340, 'Pro Hire Ltd', 'BT48 0LY', '-7.3325767179061', '55.017915494627', '', '028 7137 1830', 'www.pro-hire.co.uk', '', '', 'procharlie@btinternet.com', 1, NULL),
(341, 'Pro Mech', 'PO17 6AB', '-1.1635333246345', '50.862913792019', '', '01329 828082', 'www.promechhire.co.uk', '', '', 'info@promechhire.co.uk', 1, NULL),
(342, 'Projector Lifting Service Ltd', 'MK46 5EA', '-0.70575075861282', '52.164260045709', '', '01234 240177', 'www.projectorlifting.co.uk', '', '', 'sales@projectorlifting.co.uk', 1, NULL),
(343, 'Proplant UK Ltd', 'B50 4JH', '-1.8518319706989', '52.171985384476', '', '01789 778800', '', '', '', 'pro.plant@btconnect.com', 1, NULL),
(344, 'Prouts Plant Hire', 'SN12 6SP', '-2.1310966551381', '51.35651609312', '', '01225 705443', '', '', '', 's.prout2007@btinternet.com', 1, NULL),
(345, 'Pure Hire Ltd', 'E4 8NS', '-0.027127302952383', '51.61370475822', '', '020 8524 5115', 'www.forkliftlondon.com', '', '', 'info@purehire.co.uk', 1, NULL),
(346, 'R & E Thompson', 'AB39 3QQ', '-2.2762541631577', '57.045282672302', '', '01569 730646', '', '', '', '', 1, NULL),
(347, 'R & L Miller', 'KA24 4HB', '-4.6552374189145', '55.686072227929', '', '01294 850252', '', '', '', 'parts@rlmiller.co.uk', 1, NULL),
(348, 'R A N Hire & Sales Ltd', 'CF62 7XX', '-3.2799384522772', '51.401382517663', '', '01446 737301', 'www.ranhire.co.uk', '', '', 'sales@ranhire.co.uk', 1, NULL),
(349, 'R A Reece & Son', 'GL11 4JR', '-2.3565769572951', '51.678759749494', '', '01453 543839', '', '', '', 'rex.reece@btconnect.com', 1, NULL),
(350, 'C D R', 'BT26 6EF', '-6.161325859547', '54.453064240623', '', '028 9269 9295', 'www.cdrni.com', '', '', 'info@cdrni.com', 1, NULL),
(351, 'R E Hill & Son Ltd', 'BS41 8JP', '-2.6491674552054', '51.40967643377', '', '01275 392271', '', '', '', 'rehillandson@btconnect.com', 1, NULL),
(352, 'R G L Plant Moffat Ltd', 'DG10 9QN', '-3.4300968849626', '55.322120850422', '', '01683 220122', 'www.rglplant.co.uk', '', '', 'office@rglengineering.co.uk', 1, NULL),
(353, 'R G M Construction Ltd', 'BT42 3HJ', '-6.1976192028143', '54.838293889075', '', '028 2589 8141', '', '', '', 'rgmplanthire@yahoo.co.uk', 1, NULL),
(354, 'R J Cook Ltd', 'PO30 4HA', '-1.4539226696759', '50.649878955666', '', '01983 741000', 'www.rjcookltd.com', '', '', 'johncook11@hotmail.co.uk', 1, NULL),
(355, 'Maccoll Appin Ltd', 'PA38 4BL', '-5.3784567518079', '56.571713796576', '', '01631 730201', '', '', '', 'maccollandson@btconnect.com', 1, NULL),
(356, 'Savage Plant Hire', 'B8 2BG', '-1.8290670538733', '52.495583527679', '', '0121 328 1100', 'www.savageplanthire.co.uk', '', '', 'enquiries@savageplanthire.co.uk', 1, NULL),
(357, 'R Smith Contractors', 'NG17 9HH', '-1.2533366051129', '53.077025570106', '', '01623 753161', '', '', '', 'r.smith01@btconnect.com', 1, NULL),
(358, 'R Thornton & Co Ltd', 'NE61 5SD', '-1.5893483623572', '55.216516864562', '', '01670 860335', 'www.rthornton.co.uk', '', '', 'contracts@thornton.uk.com', 1, NULL),
(359, 'R W Wilmshurst & Co Ltd', 'TN17 1JJ', '0.46192888653626', '51.123734334303', '', '01580 211434', 'www.rwwilmshurst.com', '', '', 'info@rwwilmshurst.com', 1, NULL),
(360, 'Rapid Hire', 'RG41 2XZ', '-0.8456204896791', '51.412354537338', '', '0118 977 6217', 'www.hewden.co.uk', '', '', '', 1, NULL),
(361, 'Rapid Hire Swindon Ltd', 'SN4 8EP', '', '', '', '01793 854821', 'www.rapidhire-swindon.co.uk', '', '', 'rapidhire@live.co.uk', 1, NULL),
(362, 'Plant & Tool Hire', 'WD17 1RA', '-0.39941611375669', '51.665374988143', '', '01923 230303', 'www.plantandtoolservicesltd.com', '', '', 'vince.pts@googlemail.com', 1, NULL),
(363, 'J A Rattigan & Son Ltd', 'NW10 1DG', '-0.24189165869064', '51.550916829975', '', '020 8459 4400', 'www.rattiganplant.com', '', '', '', 1, NULL),
(364, 'R P Hire', 'SA31 3RB', '-4.3357493045105', '51.847823943425', '', '01267 237733', 'www.rp-hire.co.uk', '', '', 'rphire2@gmail.com', 1, NULL),
(365, 'Red Bull Equipment Ltd', 'EX18 7JW', '-3.885967310097', '50.911752735873', '', '01579 344307', 'www.redbullequipment.com', '', '', 'info@redbullequipment.com', 1, NULL),
(366, 'Rentool Ltd', 'BH17 0RR', '-1.9750742341324', '50.744850337444', '', '01202 666342', 'www.rentool.co.uk', '', '', 'poole@rentool.co.uk', 1, NULL),
(367, 'Rhoburt Ltd', 'SK9 4JW', '-2.2402732330111', '53.347828733409', '', '01625 526579', 'www.rhoburt.co.uk', '', '', 'sales@rhoburt.co.uk', 1, NULL),
(368, 'Richard Murray Plant Hire', 'PA11 3SU', '-4.5596395221087', '55.85983422461', '', '01505 615733', 'www.richardmurrayplanthire.co.uk', '', '', 'richardmurray.planthire@gmail.com', 1, NULL),
(369, 'Robert Body Haulage Ltd', 'ME18 6DB', '0.42012514140924', '51.215236715508', '', '01622 813556', 'www.robertbodyhaulage.co.uk', '', '', 'plant@robertbodyhaulage.co.uk', 1, NULL),
(370, 'Robert Lee Plant Ltd', 'ST18 0PJ', '-2.0044110390111', '52.83170495622', '', '01889 271727', 'www.robertleeplant.co.uk', '', '', 'sales@robertleeplant.co.uk', 1, NULL),
(371, 'Robert McCarroll Ltd', 'G64 1QR', '-4.22547928929', '55.90338818271', '', '0141 772 1365', 'www.robertmccarroll.com', '', '', 'info@robertmccarroll.com', 1, NULL),
(372, 'Rocket Rentals', 'GL2 7DW', '-2.3737026772992', '51.721091021268', '', '01453 519551', 'www.rocketrentals.co.uk', '', '', 'sales@rocketrentals.co.uk', 1, NULL),
(373, 'Rowlands Plant Services Ltd', 'PO3 5QS', '-1.0537659297528', '50.824315086367', '', '023 9266 1143', 'www.rowlands-plant.co.uk', '', '', 'info@rowlandsplant.co.uk', 1, NULL),
(374, 'Rye Hire', 'TN31 7DR', '0.72921411116264', '50.950908786397', '', '01797 223033', 'www.ryehire.co.uk', '', '', 'info@ryehire.com', 1, NULL),
(375, 'S & J Plant Hire', 'S40 4QT', '-1.4599118928859', '53.242938137696', '', '01246 205485', '', '', '', '', 1, NULL),
(376, 'S J M Plant Hire & Ground Works Ltd', 'S36 6GW', '-1.6389135339231', '53.522882435656', '', '01226 766681', 'www.sjmplanthire.co.uk', '', '', '', 1, NULL),
(377, 'S E L Clarke', 'EX39 3HN', '-4.2338879404222', '51.01005567922', '', '01237 476375', 'www.selclarke.com', '', '', 'marilynjclarke@hotmail.co.uk', 1, NULL),
(378, 'S I E Industrial', 'NE38 7LW', '-1.5018261170116', '54.895581621104', '', '0191 416 5127', 'www.sieindustrial.co.uk', '', '', 'info@sie-industrial.co.uk', 1, NULL),
(379, 'S W Plant Ltd', 'DG9 8ED', '-5.0228701438054', '54.904458677922', '', '01776 705323', '', '', '', 'swplantltd@gmail.com', 1, NULL),
(380, 'Scanlan\'s Plant Hire Ltd', 'SY13 1RT', '-2.6695371550825', '52.966942209753', '', '01948 665149', 'www.scanlandgroups.co.uk', '', '', 'scanlansplant@gmail.com', 1, NULL),
(381, 'Scanlans Plant Hire Ltd', 'CW5 6PZ', '-2.4762694907319', '53.067914799197', '', '01270 567599', 'www.scanlanshire.co.uk', '', '', '', 1, NULL),
(382, 'Scot Hoist', 'G32 8LT', '-4.169767640366', '55.842523517287', '', '0141 778 3777', 'www.scothoist.co.uk', '', '', '', 1, NULL),
(383, 'E C Plant', 'ML1 5SY', '-3.9361519018507', '55.829913839106', '', '01698 732200', 'www.scotiaplant.co.uk', '', '', 'lori@scotiaplant.co.uk', 1, NULL),
(384, 'Scott Plant Hire Ltd', 'LS28 9DR', '-1.651854461417', '53.791273005252', '', '0113 257 1421', 'www.scottplanthire.com', '', '', 'info@scottplanthire.co.uk', 1, NULL),
(385, 'William G Search Ltd', 'LS12 6EP', '-1.5776183985427', '53.786073160942', '', '0113 263 9081', 'www.wgsearch.co.uk', '', '', 'info@wgsearch.co.uk', 1, NULL),
(386, 'Search', 'S9 3LQ', '-1.4395507348681', '53.384849383586', '', '0114 244 6521', 'www.wgsearch.co.uk', '', '', 'info@wgsearch.co.uk', 1, NULL),
(387, 'S H C Hire Centres', 'HG4 1QY', '-1.518350698116', '54.128644942103', '', '01765 603011', 'www.shc.co.uk', '', '', 'ripon@shc.co.uk', 1, NULL),
(388, 'Shebdon Plant Hire', 'ST20 0PX', '-2.354807146968', '52.826607979727', '', '01785 280251', '', '', '', 'shebdonplanthire@btconnect.com', 1, NULL),
(389, 'Shropshire Roadsweepers', 'TF3 3AZ', '-2.4244127408985', '52.671281707632', '', '01952 290160', '', '', '', 'apgarvey@gpl-hire.co.uk', 1, NULL),
(390, 'Simpson Oils Ltd', 'KW1 5HA', '-3.0835965949632', '58.439215499549', '', '01955 604444', 'www.hughsimpson.co.uk', '', '', 'enquiries@hughsimpson.co.uk', 1, NULL),
(391, 'Sinbad Tools', 'NG9 8PJ', '-1.2627398198482', '52.938845865385', '', '0115 922 3527', 'www.sinbadtools.co.uk', '', '', '', 1, NULL),
(392, 'Site Equipment Ltd', 'BS11 9HS', '-2.696966740353', '51.508373286491', '', '0117 982 8236', 'www.siteequipment.co.uk', '', '', 'info@siteequipment.co.uk', 1, NULL),
(393, 'R & B Whalley Plant Hire Ltd', 'WA11 8LY', '-2.7717435396619', '53.492766011573', '', '01744 883548', 'www.sitelift.co.uk', '', '', 'office@whalleyplant.com', 1, NULL),
(394, 'S H C Hire Centres', 'BD23 2DE', '-2.0265265041185', '53.956926744443', '', '01756 700205', 'www.shc.co.uk', '', '', 'hires@shc.co.uk', 1, NULL),
(395, 'Solway Plant Hire Ltd', 'DG5 4AZ', '-3.8275051204408', '54.928253437768', '', '01556 611083', 'www.solway-plant-hire.co.uk', '', '', 'jason@solway-plant-hire.co.uk', 1, NULL),
(396, 'South Lincs Plant Hire Ltd', 'PE11 3YR', '-0.14486898064876', '52.805250657008', '', '01775 766131', 'www.slph.biz', '', '', 'brett@slph.biz', 1, NULL),
(397, 'Southern Hoist Services', 'SO32 2JF', '-1.2000151615779', '50.913168315187', '', '01329 833223', 'www.southernhoists.co.uk', '', '', '', 1, NULL),
(398, 'Southern Plant & Tool Hire', 'RG9 1DS', '-0.89792488707662', '51.532180210508', '', '01491 576063', 'www.southernplant.co.uk', '', '', 'info@southernplant.co.uk', 1, NULL),
(399, 'Red Hire', 'BR6 8BS', '0.082690649214784', '51.374748043312', '', '01689 827317', 'www.red-hire.com', '', '', 'info@red-hire.com', 1, NULL),
(400, 'S R B E', 'HP19 8BQ', '-0.82037519851519', '51.82060593669', '', '01296 431000', 'www.srbe.co.uk', '', '', '', 1, NULL),
(401, 'Hire Or Buy Group Ltd', 'PE19 6EH', '-0.26825948676694', '52.246035436811', '', '01480 214932', 'www.hireorbuy.co.uk', '', '', 'enquiries@hireorbuy.co.uk', 1, NULL),
(402, 'Stable Hire Ltd', 'PE9 2EX', '-0.46205737905572', '52.655258041705', '', '01780 762222', 'www.stablehire.com', '', '', 'stamford@stablehire.com', 1, NULL),
(403, 'Stable Hire', 'NN10 6BP', '-0.61846026311996', '52.296507468011', '', '01933 317613', 'www.stablehire.com', '', '', 'johnwarner@stablehire.com', 1, NULL),
(404, 'Stennetts', 'GU6 8QZ', '-0.51072710952528', '51.163515187074', '', '01483 275038', 'www.stennetts.com', '', '', 'info@stennetts.com', 1, NULL),
(405, 'Stevenage Hire Services', 'SG1 3ET', '-0.21304302058953', '51.915165347451', '', '01438 314571', 'www.stevenagehire.co.uk', '', '', 'stevehire@fsmail.net', 1, NULL),
(406, 'Stokey Plant Hire Ltd', 'TF7 4FP', '-2.423282315232', '52.652254461683', '', '01952 684800', '', '', '', '', 1, NULL),
(407, 'Stoneledge', 'HU16 4LL', '-0.40718170317239', '53.783545606521', '', '01482 842171', 'www.stoneledge.co.uk', '', '', 'admin@stoneledge.co.uk', 1, NULL),
(408, 'Superdrott Plant Hire', 'PR3 1NP', '-2.7757483768933', '53.901764058262', '', '01995 605118', 'www.superdrottplanthire.co.uk', '', '', 'bill@superdrottplanthire.co.uk', 1, NULL),
(409, 'Swindon Tow Bar Centre', 'SN2 8DP', '-1.7662898506365', '51.574886794843', '', '01793 527427', 'www.fastplant.co.uk', '', '', 'fastplantswindon@gmail.com', 1, NULL),
(410, 'T & T', 'TN6 2JR', '0.18351226229769', '51.045645312525', '', '01892 663392', 'www.ttplanthire.co.uk', '', '', '', 1, NULL),
(411, 'T C R UK Ltd', 'TW6 2UA', '-0.43178422377782', '51.473524219381', '', '020 8564 0110', 'www.tcr-group.com', '', '', '', 1, NULL),
(412, 'Hewitson Ltd', 'TS16 0QH', '-1.397287420741', '54.520342440719', '', '01642 786969', 'www.hewitsongroup.co.uk', '', '', 'p.blewitt@hewitsonlimited.co.uk', 1, NULL),
(413, 'Total Plant Hire Ltd', 'M17 1LP', '-2.3278088097612', '53.465874225543', '', '0161 877 1367', 'www.tphalligan.com', '', '', 'info@tphalligan.com', 1, NULL),
(414, 'Tony Lock Ltd', 'TA10 0BH', '-2.8722331458378', '50.979554329517', '', '01460 281303', '', '', '', 'tonylock1@btinternet.com', 1, NULL),
(415, 'T W Frizell Haulage & Plant Ltd', 'CW2 5AD', '-2.4385008167692', '53.077103050542', '', '01270 256118', 'www.frizells.co.uk', '', '', 'info@frizells.co.uk', 1, NULL),
(416, 'Terratruck Distribution Services', 'NG15 7SF', '-1.1969799719776', '53.033995335845', '', '0115 963 5521', 'www.toolsdirectonline.com', '', '', 'nottingham@terratruck.co.uk', 1, NULL),
(417, 'Terrco Engineering Services', 'WA1 1PJ', '-2.6046774889533', '53.383716030015', '', '01925 445801', '', '', '', 'swilliams238@btinternet.com', 1, NULL),
(418, 'T E S Ltd', 'DN40 2LG', '-0.20836133134216', '53.621195039066', '', '01469 577677', 'www.teshire.com', '', '', 'enquiries@teshire.com', 1, NULL),
(419, 'Teward Bros Ltd', 'DL2 3JT', '-1.8161895048715', '54.575993762801', '', '01833 662929', 'www.tewardbros.co.uk', '', '', 'jeffrey@tewardbros.co.uk', 1, NULL),
(420, 'Thompson Plant & Machinery', 'CA6 5TR', '-2.9307221385145', '54.994406785147', '', '01228 791110', 'www.thompsonplant.co.uk', '', '', 'info@thompsonplant.co.uk', 1, NULL),
(421, 'Thorn Plant Hire Ltd', 'HP4 3GY', '-0.60143753647821', '51.767511176788', '', '01442 877047', '', '', '', 'info@thornplanthire.co.uk', 1, NULL),
(422, 'Thurrock Tool Hire', 'RM20 4BH', '0.28733722823593', '51.477607301227', '', '01708 866500', 'www.thurrocktoolhire.co.uk', '', '', 'info@thurrocktoolhire.co.uk', 1, NULL),
(423, 'Tony Draper Plant Hire Ltd', 'EX34 0JS', '-4.0183575031917', '51.196047576407', '', '01271 882646', '', '', '', '', 1, NULL),
(424, 'Douglas Bowie Landscaping & Plant Hire', 'G64 4DD', '-4.2122104579071', '55.94175141649', '', '01360 620584', 'www.douglasbowie.co.uk', '', '', 'robert@douglasbowie.co.uk', 1, NULL),
(425, 'Total Hire & Sales', 'NG17 2NW', '-1.2917469956386', '53.12781559548', '', '01623 510066', 'www.totalhireandsales.co.uk', '', '', '', 1, NULL),
(426, 'Ultra Quick Hire', 'SL6 1EX', '-0.72742535696865', '51.519394632427', '', '01628 638242', 'www.justhireit.co.uk', '', '', 'uqh81@yahoo.co.uk', 1, NULL),
(427, 'Unit Plant Services', 'L24 9HZ', '-2.8574852344476', '53.349538075112', '', '0151 486 3971', 'www.formworkhire.co.uk', '', '', 'sales@unitplantservices.co.uk', 1, NULL),
(428, 'V J Edwards & Son', 'SN10 2LU', '-2.0160941280112', '51.360014233622', '', '01249 730208', '', '', '', 'vjedwardsandson@btconnect.com', 1, NULL),
(429, 'Smiths Digger & Driver Hire', 'RM7 0YU', '0.18167526730416', '51.557275112585', '', '07535 882104', '', '', '', 'mssmith106@live.co.uk', 1, NULL),
(430, 'W H H & S G Whitley Plant Hire', 'LL13 0BT', '-2.9078756276392', '53.005471833419', '', '01978 780475', '', '', '', 'whhandsgwhitleyplanthire@btconnect.com', 1, NULL),
(431, 'W J Jordan', 'ST10 2HA', '-1.967340697343', '53.021814766491', '', '01538 750019', '', '', '', 'wjjordan@btconnect.com', 1, NULL),
(432, 'W R Plant', 'PO21 5PD', '-0.69488560636654', '50.79029452281', '', '01243 866364', '', '', '', 'wayne4wrplant@gmail.com', 1, NULL),
(433, 'W Robinson Plant Hire Ltd', 'PR5 8AE', '-2.6484646509553', '53.719736847983', '', '01772 330603', '', '', '', 'robinsonplanthire@hotmail.co.uk', 1, NULL),
(434, 'Walkers of Ashbourne Ltd', 'DE6 1LQ', '-1.6768263204607', '53.008319114612', '', '01335 342861', 'www.walkersofashbourne.co.uk', '', '', 'accounts@walkersofashbourne.co.uk', 1, NULL),
(435, 'Walsh Brothers', 'WF13 1PD', '-1.6223291347829', '53.694966106397', '', '01924 438433', '', '', '', 'info@walshbrothers.biz', 1, NULL),
(436, 'Watson Plant Hire', 'SY13 2BP', '-2.6564837342594', '52.881723215474', '', '01948 840076', 'www.watsonplanthire.co.uk', '', '', 'info@watsonplanthire.co.uk', 1, NULL),
(437, 'Websters', 'BD23 6LB', '-2.0350066882258', '54.037462944364', '', '01756 730287', 'www.eddiebwebster.co.uk', '', '', 'office@eddiebwebster.co.uk', 1, NULL),
(438, 'West Coast Tool & Plant Hire', 'PA30 8EU', '-5.4460014589961', '56.023209122133', '', '01546 606838', 'www.westcoastplanthire.co.uk', '', '', 'wctph@btconnect.com', 1, NULL),
(439, 'West Dereham Plant Hire Ltd', 'PE33 9RT', '0.45645909695938', '52.589983829202', '', '01366 500006', 'www.westderehamplant.com', '', '', 'nick.drew@westderehamplant.co.uk', 1, NULL),
(440, 'West Yorkshire Plant Hire Ltd', 'HX5 0PA', '-1.8391762106518', '53.677809643495', '', '01422 327549', '', '', '', 'edwards.excavations@gmail.com', 1, NULL),
(441, 'Westmoreland Plant Hire Ltd', 'DN1 3RE', '-1.1378683805397', '53.513281620481', '', '01302 366437', 'www.westmorelandgroup.co.uk', '', '', 'info@westmoreland.co.uk', 1, NULL),
(442, 'Whitnell', 'CO4 5PB', '0.9470981752618', '51.947248634397', '', '01206 272834', 'www.whitnell.co.uk', '', '', '', 1, NULL),
(443, 'William Paterson & Son', 'IV20 1XS', '-3.9039769894253', '57.760862282542', '', '01862 832177', '', '', '', 'will.pat@tiscali.co.uk', 1, NULL),
(444, 'Williams Plant Hire Ltd', 'SY21 7BE', '-3.1342568096503', '52.659331713219', '', '01938 552337', 'www.williamsplanthire.co.uk', '', '', 'williamsplanthire@hotmail.com', 1, NULL),
(445, 'Chippindale Hire & Sales', 'SK6 2SR', '-2.1234087569511', '53.43155569274', '', '0161 406 0666', 'www.chippindale-plant.co.uk', '', '', 'enquiries@chippindaleplant.com', 1, NULL),
(446, 'Winnersh Plant Hire Ltd', 'RG41 5HA', '-0.88991010141309', '51.434255160554', '', '0118 979 2828', 'www.winnershplant.co.uk', '', '', 'info@winnershplant.co.uk', 1, NULL),
(447, 'Winsford Tool Hire', 'CW7 2AY', '-2.524889609382', '53.192775194511', '', '01606 552549', 'www.winsfordtoolhire.co.uk', '', '', 'winsfordtoolhire@outlook.com', 1, NULL),
(448, 'Wizard', 'LS27 0DE', '-1.6036038309283', '53.73757233168', '', '0113 252 4428', 'www.wizardpowertools.co.uk', '', '', 'wizardpower@tiscali.co.uk', 1, NULL),
(449, 'Wooldridge Group', 'GU19 5HP', '-0.681954640501', '51.370343416857', '', '01276 470300', 'www.wooldridgegroup.co.uk', '', '', 'query@wooldridgegroup.co.uk', 1, NULL),
(450, 'W H C Hire Services Ltd', 'GL20 8TB', '', '', '', '01684 377977', 'www.whchireservices.com', '', '', 'hire@whchireservices.com', 1, NULL),
(451, 'Wrexham Tool Hire Ltd', 'LL11 2UB', '-2.997949956558', '53.072045241943', '', '01978 314222', 'www.wrexhamtoolhire.co.uk', '', '', 'wrexhamtool@gmail.com', 1, NULL),
(452, 'C J Leonard & Sons', 'TS14 6PX', '-1.0084293398424', '54.53339953658', '', '01287 637043', 'www.cjleonard.co.uk', '', '', '', 1, NULL),
(453, 'Acorn Transport & Plant Hire', 'MK44 2QW', '-0.37741763697455', '52.193000619574', '', '01480 811480', 'www.acorntransport.net', '', '', 'jason@acorntransport.net', 1, NULL),
(454, 'Clive Hurt Plant Hire Ltd', 'M4 5HE', '', '', '', '0161 832 2125', 'www.clivehurtplanthire.co.uk', '', '', 'sales@hurtplant.co.uk', 1, NULL),
(455, 'Combined Soil Stabilisation Ltd', 'BL6 4SB', '-2.5297154652382', '53.579483159807', '', '01204 675104', 'www.combinedssl.co.uk', '', '', 'sales@combinedssl.co.uk', 1, NULL),
(456, 'Complete Hire Services', 'HU7 0YG', '-0.34137754334053', '53.778689078961', '', '01482 878889', 'www.completehireservices.co.uk', '', '', 'info@completehireservices.co.uk', 1, NULL),
(457, 'D C V Engineering Ltd', 'NN8 4BB', '-0.67675900620791', '52.315408460408', '', '01933 411946', 'www.dcvengineeringltd.co.uk', '', '', 'admin@dcvengineeringltd.co.uk', 1, NULL),
(458, 'D R Plant Hire Ratho Ltd', 'EH28 8RN', '-3.3869409923913', '55.920909987155', '', '0131 333 2622', '', '', '', 'info@drplanthire.co.uk', 1, NULL),
(459, 'G G H Hire', 'EN3 7BY', '-0.021158765084698', '51.658926380847', '', '020 8804 4343', 'www.gghhire.com', '', '', 'info@gghhire.com', 1, NULL),
(460, 'Hampshire Plant & Access', 'SO23 0LF', '-1.2989190458675', '51.067313109952', '', '01962 851155', 'www.hampshireplantandaccess.co.uk', '', '', 'hpahire@btconnect.com', 1, NULL),
(461, 'Hire Equip North West Ltd', 'WA4 6QQ', '-2.5852183072981', '53.380073704226', '', '01925 231999', 'www.hireequip.co.uk', '', '', '', 1, NULL),
(462, 'Scott\'s', 'WS8 7EU', '-1.9500324256044', '52.644873439878', '', '01543 370200', 'www.scottsplanthire.co.uk', '', '', 'enquiries@scottsplanthire.co.uk', 1, NULL),
(463, 'Shore & Pour', 'OX39 4WU', '-0.97876557080269', '51.748143009523', '', '01844 353790', 'www.shoreandpour.co.uk', '', '', 'sales@shoreandpour.co.uk', 1, NULL),
(464, 'Stable Hire Ltd', 'LU3 3BP', '-0.4736133389949', '51.91566837491', '', '01582 566471', 'www.stablehire.com', '', '', 'brian@stablehire.com', 1, NULL),
(465, 'M J Hickey Plant Hire & Contracts Ltd', 'NE61 5SD', '-1.5893483623572', '55.216516864562', '', '01670 862760', 'www.mjhickey.co.uk', '', '', 'accounts@mjhickey.co.uk', 1, NULL),
(466, 'Swift Loos', 'M28 7DP', '-2.3964198655367', '53.519021885292', '', '0161 703 8793', 'www.swiftloos.com', '', '', 'sales@swiftloos.com', 1, NULL),
(467, 'Targetplant', 'CO4 9QS', '0.92969913399267', '51.92079232001', '', '01206 844400', 'www.targetplant.co.uk', '', '', 'sales@targetplant.co.uk', 1, NULL),
(468, 'Target Plant', 'IP3 0DD', '1.1674047587622', '52.041977151697', '', '01473 233333', 'www.targetplant.co.uk', '', '', 'info@targetplant.co.uk', 1, NULL),
(469, 'Willsweep Ltd', 'EH19 3JQ', '-3.0711798026443', '55.86031826449', '', '01875 825560', '', '', '', 'info@weesweep.com', 1, NULL),
(470, 'E M C O Services Ltd', 'AB21 7AP', '-2.1549356007439', '57.206836164274', '', '01224 773030', 'www.emcoservices.co.uk', '', '', 'info@emcoservices.co.uk', 1, NULL),
(471, 'Davidson Plant Hire Ltd', 'AB53 8JB', '-2.3670057463727', '57.50735463558', '', '01888 544353', '', '', '', '', 1, NULL),
(472, 'A R Plant Hire Ltd', 'BH23 8AR', '-1.7450032652492', '50.783575360403', '', '01425 673388', '', '', '', 'mail@ar-planthire.co.uk', 1, NULL),
(473, 'Rabbit & Dowling Plant Hire', 'BN15 8TU', '-0.33371087206636', '50.823240969925', '', '01903 851957', 'www.rabbitgroup.co.uk', '', '', 'info@rabbitgroup.co.uk', 1, NULL),
(474, 'G T Lifting Solutions Ltd', 'RH13 0AS', '-0.41095235665214', '51.065709588047', '', '0845 603 7180', 'www.gtlift.co.uk', '', '', 'sales@gtlift.co.uk', 1, NULL),
(475, 'Highway Plant', 'BT17 0PN', '-6.0053274078957', '54.552506977262', '', '028 9030 1133', 'www.highwayplant.com', '', '', 'info@highwayplant.com', 1, NULL),
(476, 'Cannings Plant Hire', 'BT49 0BN', '-6.946935789132', '55.054598165505', '', '028 7772 2560', '', '', '', 'geoffcanning@hotmail.com', 1, NULL),
(477, 'J B Plant Hire Ltd', 'BT79 0HF', '-7.2463642179068', '54.552714238023', '', '028 8075 8298', '', '', '', 'sales@jbplant.co.uk', 1, NULL),
(478, 'George Tinney Plant Hire Ltd', 'CF31 2JJ', '-3.5481160315256', '51.506601978305', '', '01656 659561', '', '', '', '', 1, NULL),
(479, 'J G Plant Hire Ltd', 'CF31 2XE', '-3.559351765852', '51.51620065467', '', '01656 653200', 'www.jgplant.com', '', '', 'reception@jgplant.com', 1, NULL),
(480, 'A H Plant Hire', 'CH7 6NY', '-3.085864957034', '53.193594355279', '', '01244 549711', 'www.ahplanthire.co.uk', '', '', 'info@ahplanthire.co.uk', 1, NULL),
(481, 'Ground Improvements Ltd', 'DL17 0LT', '-1.5742927699453', '54.65750623974', '', '01388 720379', 'www.stewartgroundimp.co.uk', '', '', 'sales@stewartgroundimp.co.uk', 1, NULL),
(482, 'Higgy Ltd', 'DN5 0LP', '-1.1640504513725', '53.588989831462', '', '01302 723517', '', '', '', '', 1, NULL),
(483, 'G M Plant Hire & Haulage Ltd', 'EX22 7JJ', '-4.3855488241392', '50.853574476232', '', '01409 241425', '', '', '', 'glynnmartyn@msn.com', 1, NULL),
(484, 'Chris Moore Transport Company Ltd', 'GU34 4JF', '-0.91806951272484', '51.16977250974', '', '01420 23555', 'www.dumptruckhire.com', '', '', 'chris@dumptruckhire.com', 1, NULL),
(485, 'Proteus Equipment', 'IP33 2RS', '0.73440374959626', '52.233695927581', '', '01284 753954', 'www.proteusequipment.com', '', '', 'info@proteusequipment.com', 1, NULL),
(486, 'Central Construction Services Ltd', 'LE67 3FW', '-1.3682933794361', '52.729205843381', '', '01530 275555', 'www.central.uk.net', '', '', 'sales@central.uk.net', 1, NULL),
(487, 'L & D Plant Hire Ltd', 'LL14 2AH', '-3.0439628820142', '53.002763740487', '', '01978 846359', '', '', '', 'lezolman@googlemail.com', 1, NULL),
(488, 'G & J Steele Plant Hire Ltd', 'ME20 7DG', '0.49898967327211', '51.307535334523', '', '01622 710363', '', '', '', 'info@gjsteeleplanthire.co.uk', 1, NULL),
(489, 'Mpave', 'ME3 7EJ', '0.45331422324299', '51.417394715624', '', '07734 681163', 'www.mpaveconstructionandplanthire.com', '', '', 'mpave@talktalk.net', 1, NULL),
(490, 'Aceplant', 'MK19 6LA', '-0.86212528882316', '52.065254372401', '', '01908 562191', 'www.aceplant.co.uk', '', '', 'info@aceplant.co.uk', 1, NULL),
(491, 'Drumbow Plant', 'ML6 7RX', '-3.8598061195215', '55.897251606793', '', '01236 840101', '', '', '', '', 1, NULL),
(492, 'Marron Civil Engineering Ltd', 'UB6 7JB', '-0.3135200636651', '51.535305677755', '', '020 8601 7100', 'www.marronce.co.uk', '', '', '', 1, NULL),
(493, 'T W Plant Sales Ltd', 'SY11 3DA', '-3.0107032290993', '52.928806012239', '', '01691 778444', 'www.twplantsales.co.uk', '', '', 'twplantsales@btinternet.com', 1, NULL),
(494, 'R J Matthews', 'LD7 1TW', '-3.068326089695', '52.359065546593', '', '01547 528107', '', '', '', 'rjmskyborry@googlemail.com', 1, NULL),
(495, 'Trevor Potts Plant Hire Ltd', 'S66 8HN', '-1.2401511785588', '53.429284079786', '', '01709 700200', 'www.trevorpotts.co.uk', '', '', 'contact@trevorpotts.co.uk', 1, NULL),
(496, 'Bill Stewart Plant Hire', 'EH47 7AB', '-3.614497264583', '55.865379356995', '', '01501 762514', '', '', '', 'billstewartplanthire@hotmail.co.uk', 1, NULL),
(497, 'Bob Gay Plant Hire', 'CF38 1BD', '-3.3228367533297', '51.548699219486', '', '01443 202371', '', '', '', 'bobgayplanthire@yahoo.co.uk', 1, NULL),
(498, 'McLeod Plant Hire', 'AB21 0EY', '-2.2043928916923', '57.218263551914', '', '01224 723718', '', '', '', 'mcleodplant@yahoo.co.uk', 1, NULL),
(499, 'Bison Plant Hire Ltd', 'GL7 5UH', '-1.9311966421099', '51.668977126826', '', '01285 862222', 'www.bisonplanthire.com', '', '', 'brian@bisonplanthire.com', 1, NULL),
(500, 'O\'Connor Construction Co Ltd', 'GL52 3NQ', '-2.0426983986138', '51.916368179731', '', '01242 241100', 'www.oconnorplant.co.uk', '', '', 'info@oconnorplant.co.uk', 1, NULL),
(501, '7 2 7 Toolhire', 'CM6 1JA', '0.37251040543004', '51.860903673634', '', '01371 700727', 'www.727toolhire.com', '', '', 'sales@727toolhire.com', 1, NULL),
(502, 'Bryan D Banham', 'NR13 3AZ', '1.5614319370682', '52.640115109929', '', '07789 335055', '', '', '', 'bdbanham@btconnect.com', 1, NULL),
(503, 'Eagle Plant Hire', 'G31 1PD', '-4.2108125029733', '55.857897952244', '', '0141 554 2296', 'www.eagleplanthire.com', '', '', '', 1, NULL),
(504, 'Hire-it', 'DY10 1HS', '-2.251114870558', '52.378210085654', '', '01562 744994', 'www.thetoolhireshop.com', '', '', '', 1, NULL),
(505, 'Already Hire', 'SL1 4QU', '-0.61768915858604', '51.519213884788', '', '01753 512333', 'www.alreadyhire.co.uk', '', '', '', 1, NULL),
(506, 'Williams Plant Hire Ltd', 'SY16 3AW', '-3.2670514216149', '52.532777478679', '', '01686 630244', 'www.williams-planthire.com', '', '', 'williamsplanthire@hotmail.com', 1, NULL),
(507, 'T Lishman & Sons Ltd', 'LA6 3DU', '-2.4779184809904', '54.138958978578', '', '015242 41082', 'www.tlishman.com', '', '', 'plant@tlishman.com', 1, NULL),
(508, 'H Frank Hicks Plant Hire', 'CB11 4UX', '0.13225919047164', '52.002682395092', '', '01763 838533', 'www.hicksplanthire.co.uk', '', '', 'david@hicksplanthire.co.uk', 1, NULL),
(509, 'Specialist Plant Associates Ltd', 'NN29 7JQ', '-0.6103631506296', '52.236119184098', '', '01234 781882', 'www.specialistplant.co.uk', '', '', 'info@specialistplant.co.uk', 1, NULL),
(510, 'Newmarket Plant Hire Ltd', 'CB8 0AL', '0.39382517030907', '52.255782605313', '', '01638 663336', 'www.newmarketplant.co.uk', '', '', 'enquiries@newmarketplant.co.uk', 1, NULL),
(511, 'Greenplant', 'OX33 1JH', '-1.1178826263989', '51.742238148099', '', '01865 876000', 'www.greenplant.ltd.uk', '', '', 'mail@greenplant.ltd.uk', 1, NULL),
(512, 'Frank Key Hire', 'NG2 7DB', '-1.1330380975192', '52.914750484268', '', '0115 923 5111', 'www.frank-keyhire.co.uk', '', '', 'info@frank-key.co.uk', 1, NULL),
(513, 'Heathfield Hire', 'TN21 8DB', '0.25104092976205', '50.969158630052', '', '01435 864144', 'www.heathfieldhire.co.uk', '', '', 'simon@heathfieldhire.co.uk', 1, NULL),
(514, 'Brightlights', 'SS11 7QX', '0.59580897923692', '51.644431566891', '', '0845 600 7117', 'www.aplant.com', '', '', 'brightlights@aplant.com', 1, NULL),
(515, 'Rentool', 'SO53 4BU', '-1.3927303700439', '50.977483346766', '', '023 8025 3768', 'www.rentool.co.uk', '', '', '', 1, NULL),
(516, 'Hire Plus Ltd', 'CM9 4LD', '0.67725143193811', '51.735144415835', '', '01621 850252', 'www.hire-tools.com', '', '', 'info@hire-tools.com', 1, NULL),
(517, 'Harborough Tool Hire', 'LE16 7PH', '-0.91265021015793', '52.480120751956', '', '01858 431003', 'www.harboroughtoolhire.co.uk', '', '', 'harbtoolhire@hotmail.co.uk', 1, NULL),
(518, 'B J Dring Plant Hire', 'S42 6QG', '-1.4300044384188', '53.201009271782', '', '01246 297291', '', '', '', 'jenny.bjdringplant@talktalk.net', 1, NULL),
(519, 'Hire Or Buy Group Ltd', 'PE29 6EB', '-0.19204823903335', '52.341369996325', '', '01480 435751', 'www.hireorbuy.co.uk', '', '', 'huntingdon.hiredesk@hireorbuy.co.uk', 1, NULL),
(520, 'E & I Jones Plant Co Ltd', 'LL21 0PF', '-3.4900270151145', '52.971372802602', '', '01490 460666', '', '', '', 'iforjones@btconnect.com', 1, NULL),
(521, 'Dewatering Services Ltd', 'RG14 5TU', '-1.2922442480645', '51.398575004545', '', '01635 33313', 'www.dewatering.co.uk', '', '', 'info@dewatering.co.uk', 1, NULL),
(522, 'Eric Carnaby & Son', 'DN40 3DA', '-0.25737668044331', '53.627555231427', '', '01469 540329', '', '', '', 'eric.carnaby@btconnect.com', 1, NULL),
(523, 'Henson Plant Hire', 'WR11 7PA', '-1.9169780278773', '52.090918956321', '', '01386 422411', 'www.hensonplant.co.uk', '', '', 'office@hensonplant.co.uk', 1, NULL),
(524, 'Mainline Plant Ltd', 'N17 0UR', '-0.050978381401064', '51.602484964761', '', '020 8885 5888', '', '', '', 'mainlineplantltd@btconnect.com', 1, NULL),
(525, 'Donald Munro Plant Training Centre', 'IV24 3BP', '-4.4493315850328', '57.888889331884', '', '01863 766271', 'www.donaldmunro.co.uk', '', '', 'traininghire@ymail.com', 1, NULL),
(526, 'D M D Plant Ltd', 'RH10 3HZ', '-0.10217221976133', '51.151115153567', '', '0845 521 2335', 'www.dmdplant.co.uk', '', '', 'info@dmdplant.co.uk', 1, NULL),
(527, 'Carney Plant Hire', 'KA13 6NX', '-4.711387282459', '55.65572944788', '', '01294 551880', 'www.carneycontracts.co.uk', '', '', '', 1, NULL),
(528, 'A C Nurden', 'SN16 9JL', '-2.0894951973775', '51.592654225915', '', '01666 826118', 'www.nurden.ac', '', '', 'acnurden@compuserve.com', 1, NULL),
(529, 'M A C Plant & Tool Hire', 'DL10 4SU', '-1.7458129149604', '54.412483943364', '', '01748 826247', '', '', '', 'macplanthire@btconnect.com', 1, NULL),
(530, 'Wekanhire', 'DN1 3QZ', '-1.1380182501042', '53.513327644479', '', '01302 326868', 'www.wekanhire.org', '', '', 'hiredesk@wekanhire.org', 1, NULL),
(531, 'J Ffrench Ltd', 'SL0 9HF', '-0.51570572006515', '51.510648148122', '', '01753 630505', 'www.jffrenchltd.co.uk', '', '', 'sales@jffrenchltd.co.uk', 1, NULL),
(532, 'C R H Plant', 'PL4 0RW', '-4.1187529938637', '50.363082259893', '', '01752 604425', 'www.crhplant.co.uk', '', '', 'devon@crhplant.co.uk', 1, NULL),
(533, 'Hirebase', 'CW5 6RG', '-2.517524407465', '53.077046284646', '', '01270 626786', 'www.hirebase.co.uk', '', '', '', 1, NULL),
(534, 'H F S Agri Hire', 'BT35 0QA', '-6.5589902338573', '54.121128264489', '', '028 3086 8228', 'www.hfsagrihire.co.uk', '', '', 'hfsagrihire@yahoo.co.uk', 1, NULL),
(535, 'G T R Contracts Ltd', 'DG2 8PZ', '-3.7135803131375', '55.056008475913', '', '01387 252972', 'www.gtrcontracts.co.uk', '', '', 'admin@gtrcontracts.co.uk', 1, NULL),
(536, 'Crushers 4 Hire', 'EX16 8RH', '-3.504830547605', '50.852511674532', '', '07966 968345', 'www.crushers4hire.co.uk', '', '', 'timway@crushers4hire.co.uk', 1, NULL),
(537, 'Drumclog Plant Ltd', 'ML10 6QW', '-4.1877527722488', '55.663237954667', '', '01357 440286', 'www.drumclogplant.com', '', '', 'info@drumclogplant.com', 1, NULL),
(538, 'Hirebase Within Bailey Buildbase', 'CV1 2HQ', '-1.4973790053661', '52.406105312662', '', '024 7655 0373', 'www.hirebase.co.uk', '', '', '', 1, NULL),
(539, 'C P B Plant & Transport Ltd', 'NG15 7LL', '-1.2184236098837', '53.024124013821', '', '0115 964 2965', 'www.cpberry.com', '', '', 'cpbadmin@btconnect.com', 1, NULL),
(540, 'Brown Plant Hire', 'KA2 0WW', '-4.4931491934739', '55.59920315471', '', '01563 549001', 'www.brownplanthire.com', '', '', 'info@brownplanthire.com', 1, NULL),
(541, 'Rahilly Plant Ltd', 'AL4 0SA', '-0.26493103831117', '51.746147326522', '', '0800 999 3530', '', '', '', 'rahillyplant@hotmail.co.uk', 1, NULL),
(542, 'G T Lifting', 'BN6 9LD', '-0.15905628357444', '50.963222990649', '', '01444 253721', 'www.gtlift.co.uk', '', '', 'sales@gtlift.co.uk', 1, NULL),
(543, 'Aire Concrete', 'BD18 2JL', '-1.7746166026257', '53.832623457458', '', '07974 973278', 'www.aireconcrete.com', '', '', 'roydale-ltd@btconnect.com', 1, NULL),
(544, 'A Smeaton Plant Hire', 'DD8 2NE', '-2.7963594249797', '56.590755468237', '', '07831 817286', 'www.smeatonplanthire.co.uk', '', '', 'a.smeaton@btconnect.com', 1, NULL),
(545, 'Hire It Plant & Tool Hire Ltd', 'FK2 9PB', '-3.7561928416168', '55.998314865657', '', '01324 623234', 'www.hireitplantandtool.com', '', '', 'info@hireitplantandtool.com', 1, NULL),
(546, 'T J C', 'LU7 0DF', '-0.72813173727094', '51.934240002272', '', '01525 270741', 'www.tjcplant.co.uk', '', '', 'info@tjcplant.co.uk', 1, NULL),
(547, 'T V E Hire & Sales', 'OX12 9TF', '-1.4635730959928', '51.597505298584', '', '01235 772948', 'www.tvehireandsales.co.uk', '', '', 'enquiries@tvehireandsales.co.uk', 1, NULL),
(548, 'Harrow Grab Hire', 'HA3 5QY', '-0.33842079346457', '51.59429029317', '', '020 8950 8061', 'www.grabhirelondon.com', '', '', 'terryharrowgrab@yahoo.co.uk', 1, NULL),
(549, 'Gareth Rees Plant', 'SA3 3HH', '-4.0482265341338', '51.57600919976', '', '07970 521552', '', '', '', 'grplant@yahoo.co.uk', 1, NULL),
(550, 'L R H Hire', 'HA2 8JD', '-0.35719827255496', '51.561220616668', '', '020 8864 7350', 'www.lrhhire.com', '', '', 'enquiries@lrhhire.com', 1, NULL),
(551, 'Alyson Hire', 'NG32 3RT', '-0.54474027006837', '52.980615530985', '', '01400 230056', '', '', '', 'info@alysonhire.co.uk', 1, NULL),
(552, 'Alan Whiteford Plant Hire', 'AB51 5JU', '-2.4619377174894', '57.252614057931', '', '01467 642151', 'www.whitefordplant.com', '', '', 'alan.whiteford@whitefordplant.com', 1, NULL),
(553, 'McCarroll Plant Hire', 'BT44 9BH', '-6.3462201436074', '55.027418734393', '', '028 2763 8217', 'www.mccarrollplanthire.com', '', '', 'info@mccarrollplanthire.com', 1, NULL),
(554, 'C B Plant Hire', 'EX16 7JW', '-3.3196732790876', '50.943476420766', '', '01823 672804', '', '', '', 'sales@cbplanthire.co.uk', 1, NULL),
(555, 'E & C Plant Hire', 'NP7 9RQ', '-3.0685279655908', '51.815246632482', '', '01495 791393', '', '', '', 'office@eiran.co.uk', 1, NULL),
(556, 'Ryan Jones Group', 'CF38 1SN', '-3.3053031908472', '51.549848750932', '', '01443 203276', 'www.ryanjonesgroup.com', '', '', '', 1, NULL),
(557, 'John F Jossaume Plant Hire', 'CB11 3AA', '0.24949560149037', '52.021471189224', '', '01799 523439', 'www.jossaume.com', '', '', '', 1, NULL),
(558, 'M Friel Plant Hire', 'G67 2TF', '-3.9873959622307', '55.932634002185', '', '01236 720503', '', '', '', 'mfriel@btconnect.com', 1, NULL),
(559, 'Mulholland Plant Services Ltd', 'EH55 8UU', '', '', '', '01506 870297', 'www.mulhollandplant.co.uk', '', '', 'enquiries@mulhollandplant.co.uk', 1, NULL),
(560, 'Liver Plant & Tool Hire', 'L6 5AT', '-2.9517211915034', '53.422982421142', '', '0151 263 3444', 'www.liverplant.co.uk', '', '', 'accounts@liverplant.co.uk', 1, NULL),
(561, 'Woods', 'SK17 7HS', '-1.8840400844137', '53.281489169649', '', '01298 22122', 'www.bwph.co.uk', '', '', 'info@bwph.co.uk', 1, NULL),
(562, 'O\'Neills Tool & Plant Hire', 'W7 2QD', '-0.34050413986955', '51.501016275434', '', '020 3118 2000', 'www.toolhirewestlondon.co.uk', '', '', 'enquiries@oneilltoolandplanthire.com', 1, NULL),
(563, 'John Horton Plant Hire', 'WS11 9UH', '-1.9717891901152', '52.665745673494', '', '01543 270056', '', '', '', 'johnhortonplanthire@hotmail.co.uk', 1, NULL),
(564, 'S P B Plant & Tool Hire Ltd', 'DN17 2AZ', '-0.67690479661343', '53.5532499195', '', '01724 280098', 'www.spbhire.co.uk', '', '', 'info@spbhire.co.uk', 1, NULL),
(565, 'Bussell Plant', 'TA21 9QL', '-3.2664755208107', '50.95378672254', '', '01823 663859', 'www.bussellplant.co.uk', '', '', 'bussellplant@btconnect.com', 1, NULL),
(566, 'D Jones Plant Hire & Sales Ltd', 'LL16 5TA', '-3.4142906545175', '53.193240429412', '', '01745 815554', 'www.djonesplant.co.uk', '', '', '', 1, NULL),
(567, 'Hire It Northolt', 'UB5 5HR', '-0.36879828279445', '51.546680205333', '', '020 8841 2039', 'www.hire-itnortholt.co.uk', '', '', 'julian@hire-itnortholt.co.uk', 1, NULL),
(568, 'Eveready Hire', 'WD18 8UA', '-0.42738357652539', '51.644010177289', '', '01923 818881', 'www.evereadyhire.com', '', '', 'watford@evereadyhire.com', 1, NULL),
(569, 'R M Group Services', 'WV2 4ER', '-2.132741385156', '52.57857294769', '', '01902 425151', 'www.rmgroupservices.co.uk', '', '', 'sales_support@rmgroupservices.co.uk', 1, NULL),
(570, 'A P Webb Plant Hire Ltd', 'ST16 3DQ', '-2.1176203370206', '52.822108915793', '', '01785 241335', 'www.apwebbplanthire.co.uk', '', '', 'info@apwebbplanthire.co.uk', 1, NULL),
(571, 'R & M Plant & Construction Ltd', 'TN25 6HH', '1.0257295160264', '51.109281923048', '', '01303 813066', '', '', '', 'mabirch1@live.co.uk', 1, NULL),
(572, 'Drotlor Plant Ltd', 'B79 7UL', '-1.7163674714693', '52.642926530108', '', '01827 61764', '', '', '', 'brendon@drotlor-plant.co.uk', 1, NULL),
(573, 'J Taberner Plant Hire Ltd', 'DE13 9PA', '-1.7121401991044', '52.820793610863', '', '01283 564017', '', '', '', 'max.taberner@btconnect.com', 1, NULL),
(574, 'Mechplant', 'DH6 5PF', '-1.5330097147477', '54.737686308095', '', '0191 377 8222', 'www.mechplantnortheast.co.uk', '', '', '', 1, NULL),
(575, 'W R Chapman & Son', 'PE33 9QA', '0.55293497349951', '52.592843065115', '', '01366 328220', '', '', '', 'wrchapman.planthire@virgin.net', 1, NULL),
(576, 'A & S Plant Services Ltd', 'LS27 8TT', '-1.5848890791806', '53.749076679616', '', '0113 204 9959', 'www.aandsplantservices.co.uk', '', '', 'jayne@aandsplantservices.co.uk', 1, NULL),
(577, 'R T S Piling Within Edford Garage', 'BA3 5HH', '-2.4760000186281', '51.233710814854', '', '01761 239213', 'www.rtspiling.co.uk', '', '', 'rtspiling@btconnect.com', 1, NULL),
(578, 'Alan Whiteford Plant Hire', 'AB51 0AD', '-2.3174507517203', '57.345226152202', '', '01651 873984', '', '', '', 'alan.whiteford@btconnect.com', 1, NULL),
(579, 'Enterprise Plant Services', 'HX7 5HB', '-1.9889754871717', '53.723711395008', '', '01422 885619', '', '', '', 'jfielden@epshirecentres.co.uk', 1, NULL),
(580, 'Garic', 'BL9 8GD', '-2.2685082101135', '53.571168592489', '', '0161 766 8808', 'www.garic.co.uk', '', '', 'sales@garic.co.uk', 1, NULL),
(581, 'Ambrose Plant Hire', 'PR5 6QJ', '-2.6574554898344', '53.737511522194', '', '01772 436449', 'www.ambrosehire.com', '', '', 'info@ambrosehire.co.uk', 1, NULL),
(582, 'C McMullan', 'BT45 8ER', '-6.539072575076', '54.771713179214', '', '028 7946 8522', '', '', '', 'clmmcmullan@btconnect.com', 1, NULL),
(583, 'Loanends Plant Hire Contractors', 'BT29 4YW', '-6.1066939234415', '54.669275743062', '', '028 9443 3766', '', '', '', 'loanends@btconnect.com', 1, NULL),
(584, 'Bushbury Plant & Tool Hire', 'WV10 9HE', '-2.1210468768703', '52.618841726077', '', '01902 784804', 'www.bushburytoolandplanthire.co.uk', '', '', 'bushbury-tool@btconnect.com', 1, NULL),
(585, 'Martello Plant Hire', 'BN24 5NH', '0.32242351203315', '50.811815130422', '', '01323 761887', 'www.martelloplanthire.co.uk', '', '', 'info@martelloplanthire.co.uk', 1, NULL),
(586, 'Lantern Services Ltd', 'EN6 3NE', '-0.22436187164845', '51.690932115903', '', '01707 654465', 'www.lanternservices.co.uk', '', '', 'info@lanternservices.co.uk', 1, NULL),
(587, 'Leada Acrow', 'L30 6UF', '-2.9555074448693', '53.483078530449', '', '0151 525 7335', 'www.leadaacrow.com', '', '', 'paulburns@aplant.com', 1, NULL),
(588, 'Beacon Plant Hire Southern', 'RH9 8LJ', '-0.068787627203567', '51.21915848893', '', '01342 892382', 'www.beaconplanthiresouthern.co.uk', '', '', 'ray@beaconplanthiresouthern.co.uk', 1, NULL),
(589, 'Go Plant', 'SO50 4NU', '-1.3619437224004', '50.974747441758', '', '023 8061 2727', 'www.go-plant.co.uk', '', '', 'southampton@gpl-hire.co.uk', 1, NULL),
(590, 'Reynolds & Read Ltd', 'PO30 3BQ', '-1.2815670129706', '50.67318883272', '', '01983 523565', 'www.reynoldsread.com', '', '', 'wendy@reynoldsandread.co.uk', 1, NULL),
(591, 'Steve White Plant Hire', 'TQ9 6BB', '-3.680161999594', '50.483246323345', '', '07785 971490', '', '', '', 'stevewhiteplant@googlemail.com', 1, NULL),
(592, 'Event Group', 'GY3 5PB', '', '', '', '01481 243334', 'www.eventgroup.gg', '', '', 'admin@eventgroup.gg', 1, NULL),
(593, 'Howells', 'SA33 6NR', '-4.4530689688279', '51.927296325924', '', '01994 484400', '', '', '', '', 1, NULL),
(594, 'Border Bobcat', 'NP11 5AR', '-3.1350604112203', '51.643145951878', '', '01495 237888', 'www.borderbobcat.com', '', '', 'sales@borderbobcat.com', 1, NULL),
(595, 'Venco', 'HU8 7AN', '-0.33067853878286', '53.751519185897', '', '01482 585101', 'www.vencoplantservices.co.uk', '', '', 'info@vencoplantservices.co.uk', 1, NULL),
(596, 'Advanced Grinding Solutions', 'CV1 3BY', '-1.5199692045759', '52.409102993076', '', '024 7622 6611', 'www.advancedgrindingsolutions.co.uk', '', '', 'chrisboraston@aol.com', 1, NULL),
(597, 'John Miles Plant Hire Ltd', 'BA4 6SF', '-2.5870611950136', '51.097515894065', '', '01963 240300', 'www.johnmilesplanthire.com', '', '', 'miles-planthire@btconnect.com', 1, NULL),
(598, 'Westholme Plant Ltd', 'NG34 8GJ', '-0.39548588438611', '53.008478971094', '', '01529 306094', 'www.westholmeplant.co.uk', '', '', 'enquiries@westholmegroup.co.uk', 1, NULL),
(599, 'South Cornelly Services', 'CF33 4RE', '-3.7009297261164', '51.507389578811', '', '01656 742869', '', '', '', 'mike.standen@btconnect.com', 1, NULL),
(600, 'Apollo Plant Hire Ltd', 'RM18 8RA', '0.39982748405385', '51.474000218148', '', '01375 840606', 'www.apolloplanthire.co.uk', '', '', 'info@apolloplanthire.co.uk', 1, NULL),
(601, 'All Plant', 'ST10 3ES', '-1.9083077314261', '53.034809185075', '', '01538 308769', '', '', '', 'selina.hall@ymail.com', 1, NULL),
(602, 'B & W Plant Hire & Sales Ltd', 'BB2 3EY', '-2.473514807667', '53.735988664865', '', '01254 54294', 'www.bandwplanthire.com', '', '', '', 1, NULL),
(603, 'Nether Water Ltd', 'SK17 8RR', '-1.7454666085823', '53.307709904266', '', '01298 871036', '', '', '', 'netherwater@hotmail.com', 1, NULL),
(604, 'P S D', 'PR4 0BD', '-2.7554526664096', '53.819490606827', '', '01772 690076', 'www.solidsseparation.com', '', '', 'enquiries@psdmud.co.uk', 1, NULL),
(605, 'G A P Motor Parts Ltd', 'SG5 2QP', '-0.29359495202008', '51.955834699109', '', '01462 436010', '', '', '', 'murphygap@gmail.com', 1, NULL),
(606, 'A J K Plant Hire Ltd', 'WA4 4PN', '-2.5540461243041', '53.319170844202', '', '01606 891327', 'www.ajkplanthire.co.uk', '', '', '', 1, NULL),
(607, 'Fast Hire & Sales', 'SK6 2SR', '-2.1234087569511', '53.43155569274', '', '0161 494 1888', 'www.fasthireuk.com', '', '', 'sales@fasthiresales.com', 1, NULL),
(608, 'First National Plant Rental Ltd', 'CV9 2EX', '-1.5909621057246', '52.599283179123', '', '01827 892885', '', '', '', 'enquiries@fnpr.co.uk', 1, NULL),
(609, 'P E T Hire', 'CW1 2AH', '-2.4343573648075', '53.098476354682', '', '01270 582222', 'www.pet-hire.co.uk', '', '', 'hire@pet-hire.com', 1, NULL),
(610, 'A Gregory Building Contractors Ltd', 'DL1 2PB', '-1.5470678893539', '54.535222349732', '', '01325 354121', '', '', '', 'gregory.t@btconnect.com', 1, NULL),
(611, 'R Goodwin Plant Hire', 'DY11 6XZ', '-2.2624203674997', '52.389576013273', '', '01562 68681', '', '', '', '', 1, NULL),
(612, 'Arvill Plant & Tool Hire', 'ML6 6BH', '-3.9713377277063', '55.869876647254', '', '01236 760070', 'www.arvill.co.uk', '', '', 'arvill@arvill.co.uk', 1, NULL),
(613, 'Moorehire', 'EN8 9DF', '-0.034771747902651', '51.70518712244', '', '01992 307730', 'www.moorehire.com', '', '', 'info@moorehire.com', 1, NULL),
(614, 'J Owen & Sons', 'LL40 2UR', '-3.9843961554718', '52.76113303883', '', '01341 430243', '', '', '', '', 1, NULL),
(615, 'Haigh', 'CM6 2NN', '0.31179303399899', '51.935789275671', '', '01371 830294', 'www.rbhaigh.com', '', '', 'info@rbhaigh.com', 1, NULL),
(616, 'Tardis Environmental', 'WV12 5RZ', '-2.040272405669', '52.609547425445', '', '01922 402410', 'www.tardishire.co.uk', '', '', 'info@tardishire.co.uk', 1, NULL),
(617, 'Gordon McLeod Plant Hire', 'KA15 2AF', '-4.6368982641134', '55.75205732003', '', '01505 503333', '', '', '', 'info@mcleodplanthire.co.uk', 1, NULL),
(618, 'W H Bond', 'PL12 5BW', '-4.3631247988859', '50.402463009257', '', '01503 240304', 'www.whbond.co.uk', '', '', 'enquiries@whbond.co.uk', 1, NULL),
(619, 'Orkney Tool Hire', 'KW15 1RE', '-2.974307079453', '58.987561361585', '', '01856 870000', 'www.driveorkney.com', '', '', 'info@driveorkney.com', 1, NULL),
(620, 'Norfolk Plant Hire', 'NR14 7AL', '1.4275265835689', '52.603865683144', '', '01508 538929', 'www.norfolkplanthire.co.uk', '', '', 'info@jbroomltd.co.uk', 1, NULL),
(621, 'K D M Hire', 'BT36 4GX', '-5.9801387582969', '54.670501966366', '', '028 9084 7100', 'www.kdmhire.com', '', '', 'info@kdmhire.com', 1, NULL),
(622, 'K H Hire Ltd', 'PR26 7QS', '-2.7220725586393', '53.698822516066', '', '01772 452112', 'www.khhireltd.co.uk', '', '', 'khhireltd@btconnect.com', 1, NULL),
(623, 'D I Evans Cyf', 'SA38 9QE', '-4.4990632006838', '52.09042797673', '', '01239 810878', 'www.dievanscyf.co.uk', '', '', 'info@dievanscyf.co.uk', 1, NULL),
(624, 'W T Hire Strabane Ltd', 'BT82 9PX', '-7.4740997474162', '54.804090477669', '', '028 7188 0705', 'www.wt-hire.co.uk', '', '', 'hire@wt-hire.co.uk', 1, NULL),
(625, 'Campbell Plant Hire Lochaber Ltd', 'PH33 7NA', '-5.1534558646731', '56.845053184029', '', '01397 772333', 'www.campbellplant.co.uk', '', '', 'info@campbellplant.co.uk', 1, NULL);
INSERT INTO `suppliers` (`recid`, `bussinessname`, `postcode`, `longitude`, `latitude`, `suit`, `phone`, `webaddress`, `hours`, `website`, `email`, `status`, `created`) VALUES
(626, '3 Counties Timber & Building Supplies Ltd', 'HP21 7TE', '-0.80654295131481', '51.809820521952', '', '01296 331555', 'www.3ctbs.com', '', '', '', 1, NULL),
(627, 'M T M Plant & Sales Ltd', 'CO10 2XG', '0.75429056697348', '52.04254484582', '', '01787 312007', 'www.mtmplant.co.uk', '', '', 'sales@mtmplant.co.uk', 1, NULL),
(628, 'Boultons Contractors & Plant Hire Ltd', 'DE13 8PG', '-1.7973902148276', '52.785721930996', '', '01283 575242', 'www.boultonscontractors.co.uk', '', '', 'shane.boultonscontractors@btconnect.com', 1, NULL),
(629, 'Chic Kippen & Son Plant Hire Contractor Ltd', 'PH1 4QQ', '-3.4465255496729', '56.490469472747', '', '01738 827249', 'www.chickippen.com', '', '', 'chic@chickippen.com', 1, NULL),
(630, 'Plant Hire', 'PR3 2NE', '-2.6422714777107', '53.852165553348', '', '01772 865523', 'www.planthire.co.uk', '', '', 'robert@kellettplanthireltd.co.uk', 1, NULL),
(631, 'Treste Hire & Sales Ltd', 'S41 9QJ', '-1.4524831650899', '53.27317883055', '', '01246 260037', 'www.treste.co.uk', '', '', 'sales@treste.co.uk', 1, NULL),
(632, 'U Mole', 'WN4 0DA', '-2.6534088554676', '53.508617292422', '', '0800 028 8242', 'www.umole.co.uk', '', '', 'info@umole.co.uk', 1, NULL),
(633, 'Westley S E Ltd', 'CT6 7LG', '1.1205108815389', '51.33159490322', '', '01227 740455', 'www.westleyhire.co.uk', '', '', 'westleyseltd@yahoo.co.uk', 1, NULL),
(634, 'Cresswell Plant Hire Ltd', 'GU8 4XU', '-0.59954522765872', '51.120917354475', '', '01428 684868', 'www.cresswellplanthire.co.uk', '', '', 'paul@cresswellplanthire.co.uk', 1, NULL),
(635, 'Pontoonworks', 'DT9 4HP', '-2.5179146567356', '50.951844097726', '', '01935 814950', 'www.pontoonworks.co.uk', '', '', 'office@pontoonworks.co.uk', 1, NULL),
(636, 'Greenshields J C B Ltd', 'TN15 7RJ', '0.32764840598975', '51.306022605924', '', '01732 783660', '', '', '', '', 1, NULL),
(637, 'C E S Hire', 'HP15 6LJ', '-0.73254219836983', '51.665675012583', '', '01494 715472', 'www.ces-hire.com', '', '', '', 1, NULL),
(638, 'Able Mini Digger & Driver Hire', 'B92 8EU', '-1.785744773462', '52.450742923552', '', '07791 161112', '', '', '', 'turner0121@hotmail.com', 1, NULL),
(639, 'Titan Plant Hire', 'WV14 7DP', '-2.0607910288789', '52.561146578889', '', '01902 491265', 'www.titanplant.co.uk', '', '', '', 1, NULL),
(640, 'Versatile Plant Ltd', 'L37 1NR', '-3.0795086532106', '53.561636833898', '', '01704 871686', '', '', '', 'versat@btconnect.com', 1, NULL),
(641, 'G & G Plant Hire', 'ST10 2EJ', '-2.0196792019917', '53.014994836363', '', '01538 753983', 'planthirestaffs.co.uk/', '', '', 'gandgplanthire@btconnect.com', 1, NULL),
(642, 'John Fox Plant Ltd', 'CH5 3PZ', '-2.9918926695866', '53.177927506841', '', '01244 539870', 'www.foxhammerhire.co.uk', '', '', 'info@foxhammerhire.co.uk', 1, NULL),
(643, 'Luck Trading Ltd', 'HR2 6BQ', '-2.6849088279759', '52.037791789474', '', '01432 279522', 'www.lucktrading.co.uk', '', '', 'info@lucktrading.co.uk', 1, NULL),
(644, 'Bauer Equipment UK Ltd', 'S63 7FD', '-1.3600067417527', '53.511827637772', '', '01709 874555', 'www.bauer-equipment.co.uk', '', '', 'info@bauer-equipment.co.uk', 1, NULL),
(645, 'John Luffman Group Ltd', 'EX16 7JX', '-3.3092956806613', '50.934834248619', '', '01823 674151', 'www.johnluffmantrading.co.uk', '', '', 'enquiries@johnluffmantrading.co.uk', 1, NULL),
(646, 'Leiston Plant Hire Ltd', 'IP16 4LL', '1.5871365265491', '52.207680785638', '', '01728 830924', 'www.leistonplanthire.co.uk', '', '', 'office@njbcontractors.co.uk', 1, NULL),
(647, 'S R B E', 'NN13 5LX', '-1.2015712177511', '51.997212622582', '', '01869 810311', 'www.srbe.co.uk', '', '', '', 1, NULL),
(648, 'Astra Site Services', 'EH48 2FH', '-3.6198674917815', '55.885356980089', '', '01506 650000', 'www.astrasiteservices.co.uk', '', '', 'kim@astrasiteservices.co.uk', 1, NULL),
(649, 'Speedcrete', 'PA3 3AJ', '-4.4857892154835', '55.849574509264', '', '0141 849 0077', 'www.speedcrete.co.uk', '', '', 'sales@speedcrete.co.uk', 1, NULL),
(650, 'Ermin Plant', 'GL51 9JZ', '-2.0920375245558', '51.913283030876', '', '01242 523183', 'www.ermin.co.uk', '', '', 'cheltenham@ermin.co.uk', 1, NULL),
(651, 'Hessle Fork Trucks Ltd', 'WF10 4PT', '-1.3368584343378', '53.712628478467', '', '01977 550557', 'www.hessle.co.uk', '', '', 'info@hessle.co.uk', 1, NULL),
(652, 'Hird', 'HU3 2BT', '-0.35065244133261', '53.736442267031', '', '01482 227333', 'www.hird.co.uk', '', '', 'info@hird.co.uk', 1, NULL),
(653, 'M H M', 'SA12 7DJ', '-3.8059128349055', '51.601849538195', '', '01639 777009', 'www.mhmplant.com', '', '', 'sales@mhmplant.com', 1, NULL),
(654, 'Cosham Plant Hire', 'PO9 1LX', '-0.99005516320034', '50.849599292189', '', '023 9247 6400', 'www.coshamplant.co.uk', '', '', 'info@coshamplant.co.uk', 1, NULL),
(655, 'I B S Equipment Ltd', 'L33 7SE', '-2.8630275941853', '53.480986696328', '', '0151 547 4155', 'www.ibsequipment.co.uk', '', '', 'ian.macfie@ibsequipment.co.uk', 1, NULL),
(656, 'Bullimores', 'PE10 9HT', '-0.36416053600168', '52.769484817232', '', '01778 423309', 'www.bullimores.net', '', '', 'bourne@bullimores.net', 1, NULL),
(657, 'N H Jones Plant Hire Ltd', 'HR2 6JW', '-2.6948071309484', '52.033993661204', '', '01432 354077', 'www.nhjones.co.uk', '', '', 'info@nhjones.co.uk', 1, NULL),
(658, 'Trinity Plant & Building', 'EX8 2NA', '-3.3929187004918', '50.624989232215', '', '01395 272030', '', '', '', 'trinityplant@hotmail.co.uk', 1, NULL),
(659, 'F McParland & Co Ltd', 'BT34 1SW', '-6.3548087472857', '54.232385684529', '', '028 3082 1260', '', '', '', 'fmcpdem@aol.com', 1, NULL),
(660, 'N & L Warden Contractors Ltd', 'DD10 0DR', '-2.4508040396179', '56.783626878742', '', '01674 850398', '', '', '', 'nl.warden15@btconnect.com', 1, NULL),
(661, 'D M K Plant Hire', 'M20 4PQ', '-2.2276451200405', '53.433200171056', '', '0161 445 5656', 'www.dmkproperties.co.uk', '', '', 'info@dmkproperties.co.uk', 1, NULL),
(662, 'Plant Hire UK Ltd', 'WA11 9UY', '-2.6675509236759', '53.474939782741', '', '0845 076 6677', 'www.planthireuk.co.uk', '', '', 'hire@planthireuk.co.uk', 1, NULL),
(663, 'C V Hire Centre Ltd', 'CV6 5AS', '-1.5058383132309', '52.429164710597', '', '07912 254694', '', '', '', 'cvhirecentres@gmail.com', 1, NULL),
(664, 'P Ball & Sons Plant Hire', 'PR8 4EX', '-3.0023763568804', '53.62554343041', '', '01704 567779', 'www.peterballandsons.co.uk/', '', '', 'ballysplanthire@dsl.pipex.com', 1, NULL),
(665, 'Allhire Midlands', 'CV47 7SL', '-1.3086717489162', '52.199335501627', '', '01926 815687', 'www.allhiremidlands.co.uk', '', '', 'allhire@hotmail.co.uk', 1, NULL),
(666, 'John F Hunt', 'RM20 4DB', '0.29395144945292', '51.477397111931', '', '01375 392333', 'www.johnfhunt.co.uk', '', '', 'hire@johnfhunt.co.uk', 1, NULL),
(667, 'A W O Plant Ltd', 'SA15 4PG', '-4.1558242935869', '51.697650143926', '', '01554 749100', '', '', '', 'awoplant.owen@gmail.com', 1, NULL),
(668, 'M J B Excavations & Plant Hire Ltd', 'HX4 8LR', '-1.8567408703043', '53.694522890507', '', '01422 374166', '', '', '', 'mjberrett@tiscali.co.uk', 1, NULL),
(669, 'M W Sweepers Ltd', 'ME3 9LB', '0.56568243982313', '51.413143936784', '', '01634 256254', 'www.mw-sweepers.com', '', '', 'enquiries@mw-sweepers.com', 1, NULL),
(670, 'Hawkes Civil Engineering', 'NN15 5JJ', '-0.66588365295', '52.377987812125', '', '01536 721914', 'www.hawkesplant.co.uk', '', '', '', 1, NULL),
(671, 'South West Hire & Sales', 'PL1 3PE', '-4.1592628265661', '50.368659962713', '', '01752 600095', 'www.southwesthireandsales.co.uk', '', '', 'plymouth@southwesthireandsales.co.uk', 1, NULL),
(672, 'Airfield Plant Hire', 'EX19 8DW', '-3.9730619396392', '50.871200200372', '', '01837 682904', '', '', '', 'aphltd@hotmail.co.uk', 1, NULL),
(673, 'H S Hire & Sales', 'TQ14 9AE', '-3.5150678943564', '50.547001976939', '', '01626 778000', 'www.hshire.co.uk', '', '', '', 1, NULL),
(674, 'Ward Plant Group', 'ML11 8NB', '-3.5659847698742', '55.695753058185', '', '01555 840497', 'www.wardplant.com', '', '', 'enquiries@wardplant.com', 1, NULL),
(675, 'M B Plant Hire', 'AB42 1UD', '-1.7810091102814', '57.510635858019', '', '01779 475397', 'www.mbplant.co.uk', '', '', 'enquiries@mbplant.co.uk', 1, NULL),
(676, 'D & D Hire Services', 'GU17 9EP', '-0.76743400085839', '51.318939475256', '', '01276 32244', 'www.ddhire.co.uk', '', '', '', 1, NULL),
(677, 'Total Rail Solutions', 'RG21 6XR', '-1.1086488471853', '51.26990651794', '', '01962 711642', 'www.totalrailsolutions.co.uk', '', '', 'info@totalrailsolutions.co.uk', 1, NULL),
(678, 'Anthire Ltd', 'LS10 1SL', '-1.5149338914669', '53.771670804933', '', '0113 272 1662', 'www.anthire.co.uk', '', '', 'enquiries@anthire.co.uk', 1, NULL),
(679, 'Double M Plant Hire', 'ST21 6JL', '-2.246754170669', '52.87453470072', '', '01785 850550', 'www.double-m.co.uk', '', '', 'enquiries@double-m.co.uk', 1, NULL),
(680, 'Rob Jones Tractor Hire', 'SY10 8ED', '-2.9589855793533', '52.782333620286', '', '01691 682491', 'www.robjonestractorhire.co.uk', '', '', 'info@robjonestractorhire.co.uk', 1, NULL),
(681, 'N Bartlett Ltd', 'BS24 8BJ', '-2.9128158882446', '51.335192883773', '', '07720 428581', '', '', '', 'nbartlettltd@gmail.com', 1, NULL),
(682, 'D B M Hire Ltd', 'RG9 4EN', '-0.91309905469089', '51.502792695703', '', '0118 940 1740', 'www.dbm-hire.co.uk', '', '', 'info@dbm-hire.co.uk', 1, NULL),
(683, 'Acorn Plant Hire', 'BB3 2UT', '-2.4542263596703', '53.682062385865', '', '01254 775696', 'www.acornplanthire.co.uk', '', '', 'info@acornplanthire.co.uk', 1, NULL),
(684, 'S P H Norfolk Ltd', 'NR19 2DR', '0.93952731183951', '52.685095824428', '', '01328 702210', '', '', '', 'sphnorfolk@googlemail.com', 1, NULL),
(685, 'T X M Plant', 'CF3 2EU', '-3.0981355389269', '51.509664339594', '', '01633 869044', 'www.txmplant.co.uk', '', '', 'info@txmplant.co.uk', 1, NULL),
(686, 'Fresh Group', 'RG2 9AE', '-0.93179396439092', '51.412398257092', '', '0845 373 1832', 'www.freshgroup.net', '', '', '', 1, NULL),
(687, 'Express Plant Hire Ltd', 'E1W 3HS', '-0.044226459889049', '51.510873334688', '', '020 7790 9762', 'www.expressplanthireltd.co.uk', '', '', 'simon@expressplanthireltd.co.uk', 1, NULL),
(688, 'Martin Jewitt Plant Hire', 'DH8 9JN', '-1.8874842969405', '54.908978564302', '', '07774 112753', '', '', '', 'martinjewitt41@msn.com', 1, NULL),
(689, 'Deeleys Fencing', 'WS13 8BY', '-1.8888343828779', '52.696055015259', '', '01543 682361', 'www.deeleys.net', '', '', 'enquiries@deeleys.net', 1, NULL),
(690, 'Andrew Rhodes Plant Services', 'YO43 4AF', '-0.76197452074445', '53.839463157138', '', '01430 861392', 'www.rhodesplant.co.uk', '', '', 'andrew@rhodesplant.co.uk', 1, NULL),
(691, 'Kanga Loaders', 'LE7 3XA', '-1.0597669327448', '52.713865175227', '', '0845 260 4800', 'www.kangaloader.co.uk', '', '', 'info@kangaloader.co.uk', 1, NULL),
(692, 'Dunmow Plant Hire & Repairs Ltd', 'CM6 1NL', '0.33060326568929', '51.83775821623', '', '01371 874444', '', '', '', 'ajcfoster@live.co.uk', 1, NULL),
(693, 'Toga Plant Hire Ltd', 'NW10 7XF', '-0.27284616426074', '51.533365008705', '', '020 8525 8980', 'www.toga.co.uk', '', '', 'hiredesk@toga.co.uk', 1, NULL),
(694, 'W Doherty & Sons Ltd', 'WA12 8DN', '-2.6432173886619', '53.447972532678', '', '01925 227472', '', '', '', 'info@dohertyplant.com', 1, NULL),
(695, 'J M Barnfather Ltd', 'DL6 3HR', '-1.2548713353542', '54.423143380327', '', '01642 706000', '', '', '', 'accounts@jmbarnfather.co.uk', 1, NULL),
(696, 'Leedale', 'DE5 3GH', '-1.4207103264482', '53.048500290913', '', '01773 512220', 'www.leedale.com', '', '', 'contact@leedale.com', 1, NULL),
(697, 'Stoneledge South Bank Ltd', 'DN20 0NU', '-0.42849799597972', '53.613006788608', '', '01652 680026', 'www.stoneledgeltd.co.uk', '', '', 'stoneledgeltd@hotmail.com', 1, NULL),
(698, 'Lowther Hire Services', 'NE11 0QY', '-1.613053481247', '54.938447165178', '', '0191 487 9998', 'www.lowther-industries.co.uk', '', '', 'jl@lowther-industries.co.uk', 1, NULL),
(699, 'Toucan Hire Services Ltd', 'NR3 2DU', '1.278761569956', '52.643462279067', '', '01603 483366', 'www.toucanhire.co.uk', '', '', 'info@toucanhire.co.uk', 1, NULL),
(700, 'K D Plant Hire Ltd', 'TQ7 2BW', '-3.7483942910426', '50.271566104834', '', '01548 531995', '', '', '', 'info@kdplanthire.co.uk', 1, NULL),
(701, 'T C L Tool Hire & Sales Coventry', 'CV3 2SY', '-1.4445344055259', '52.393174737951', '', '024 7641 5879', 'www.tcltools.co.uk', '', '', 'info@tcltools.co.uk', 1, NULL),
(702, 'Andrews Plant Hire & Haulage', 'BH20 7PJ', '-2.2075578858066', '50.706620147686', '', '01929 405577', 'www.andrewsplant.co.uk', '', '', 'info@andrewsplant.co.uk', 1, NULL),
(703, 'Y H C Hire Solutions', 'BS23 3XP', '-2.960175356046', '51.340820860219', '', '01934 418591', 'www.yhchiresolutions.com', '', '', 'weston@yhchiresolutions.com', 1, NULL),
(704, 'G A P Hire Solutions', 'NN5 5JP', '-0.91023816114931', '52.231635471003', '', '01604 587999', 'www.gap-group.co.uk', '', '', 'northampton.hiredesk@gap-group.co.uk', 1, NULL),
(705, 'Thompsons Plant Hire Ltd', 'CA15 8PD', '-3.513270723463', '54.693658197762', '', '01900 818010', 'www.thompsonsplanthire.co.uk', '', '', 'tphsales@btconnect.com', 1, NULL),
(706, 'South West Excavation', 'PL14 3NA', '-4.3730018172063', '50.477015616874', '', '01579 389012', 'www.swexcavations.org', '', '', '', 1, NULL),
(707, 'Witney Plant Hire Ltd', 'OX28 4BP', '-1.4831632095741', '51.778074693405', '', '01993 708020', 'www.witneyplanthire.com', '', '', 'enquiries@witneyplanthire.com', 1, NULL),
(708, 'M & J Plant & Transport Ltd', 'NP24 6BE', '-3.2382913881804', '51.721561984008', '', '01443 875210', 'mjplantandtransportltd.co.uk', '', '', '', 1, NULL),
(709, 'Fitzwise', 'S41 9RD', '-1.4417093019228', '53.265668117589', '', '01246 455112', 'www.fitzwise.co.uk', '', '', 'accounts@suon.net', 1, NULL),
(710, 'James Plant Hire Scotland Ltd', 'PA3 3DR', '-4.4904918762622', '55.849659132198', '', '01505 322223', 'www.jamesplanthire.co.uk', '', '', 'info@jamesplanthire.co.uk', 1, NULL),
(711, 'Noel Fitzpatrick Ltd', 'NP19 4PT', '-2.9643366328441', '51.572874376841', '', '01633 290077', 'www.noelfitzpatrick.ltd.uk', '', '', 'mailbox@noelfitzpatrick.ltd.uk', 1, NULL),
(712, 'Map Hire Ltd', 'EH48 2HT', '-3.6519006974734', '55.88441904719', '', '0844 561 6780', 'www.map-ltd.com', '', '', 'info@map-ltd.com', 1, NULL),
(713, 'A M Dagg Plant Hire Ltd', 'EH34 5EP', '-2.8699675238362', '55.891691195226', '', '01875 340369', '', '', '', 'amdagg@btconnect.com', 1, NULL),
(714, 'S G B Hire Channel Islands Ltd', 'JE2 7QN', '', '', '', '01534 636363', 'www.beis.com/uk', '', '', '', 1, NULL),
(715, 'Affordable Access Hire Ltd', 'SO51 0EZ', '-1.5004814257394', '50.996535900807', '', '01794 521177', 'www.affordableaccesshire.co.uk', '', '', 'info@affordableaccesshire.co.uk', 1, NULL),
(716, 'W G Tanker', 'RM18 7EH', '0.35011990492369', '51.462866581538', '', '01375 850375', 'www.wgtanker.com', '', '', 'tilbury@wgtanker.com', 1, NULL),
(717, 'Winner Plant Hire', 'BN11 2RU', '-0.34689534051684', '50.820181973686', '', '01903 230700', 'www.winneravant.co.uk', '', '', 'info@winnerevents.com', 1, NULL),
(718, 'U K D Diggers Ltd', 'DE65 5FE', '-1.6372471806437', '52.879640052925', '', '01283 731420', 'www.ukddiggers.co.uk', '', '', '', 1, NULL),
(719, 'R & T Tool & Plant Hire', 'CF71 7PF', '-3.4977565676248', '51.44027313297', '', '01446 771999', 'www.randt.co.uk', '', '', '', 1, NULL),
(720, 'G C E Hire Fleet', 'PE7 2EX', '-0.11465557158593', '52.547786299676', '', '01733 202969', 'www.gcehirefleet.com', '', '', 'sales@gcehirefleet.com', 1, NULL),
(721, 'Powerscreen Midlands Ltd', 'IP33 9EL', '', '', '', '0845 603 8291', 'www.powerscreenmidlands.co.uk', '', '', '', 1, NULL),
(722, 'Clee Hill', 'DA4 9HQ', '0.23734295775743', '51.408884835402', '', '01322 866866', 'www.cleehill.co.uk', '', '', 'dartford@cleehill.co.uk', 1, NULL),
(723, 'Palmaris Plant Hire', 'AB12 4YB', '-2.1568690367313', '57.069581936084', '', '01224 782601', 'www.palmaris-services.com', '', '', 'kmcdonald@palmaris.co.uk', 1, NULL),
(724, 'E One Haulage', 'RM9 6RJ', '0.13505052580448', '51.522809238342', '', '020 8592 9595', '', '', '', 'info@eonehaulage.co.uk', 1, NULL),
(725, 'A Wainwright Ltd', 'SK12 1TF', '-2.0865766902001', '53.34165734657', '', '07812 378779', '', '', '', 'aw.ltd1@gmail.com', 1, NULL),
(726, 'Wessex Plant Hire', 'BS37 7LQ', '-2.4355213008289', '51.55269564466', '', '01454 228088', 'www.wessexplant.com', '', '', 'enquiries@wessexplant.com', 1, NULL),
(727, 'UK Screed & Grout Pumps', 'BB4 4RX', '-2.3240081973665', '53.694197070248', '', '01706 221979', 'www.ukscreedandgroutpumps.co.uk', '', '', 'admin@uksgp.co.uk', 1, NULL),
(728, 'Astra Site Services', 'M28 3LY', '-2.3891062360812', '53.529014082457', '', '0161 703 9703', 'www.astrasiteservices.co.uk', '', '', '', 1, NULL),
(729, 'P R Russell', 'GL15 4NR', '-2.5154276027995', '51.756789229211', '', '07813 203319', '', '', '', '', 1, NULL),
(730, 'Linden Plant Hire', 'SP4 6QX', '-1.7877730962576', '51.099229177811', '', '01722 340269', 'www.lindenhire.co.uk', '', '', 'enquiries@lindenhire.co.uk', 1, NULL),
(731, 'Geo Rope Ltd', 'PH49 4JQ', '-5.1352822748245', '56.6737864556', '', '01855 811224', 'georope.com', '', '', 'kam@geo-rope.com', 1, NULL),
(732, 'Explore Manufacturing', 'S80 3FD', '-1.1705705269319', '53.304010647167', '', '01777 353000', 'www.laingorourke.com', '', '', 'sales@laingorourke.com', 1, NULL),
(733, 'Thomas Plant Hire Ltd', 'CH8 8SB', '-3.3217601452391', '53.279945803258', '', '01352 721216', '', '', '', 'sarah@thomasplanthireltd.com', 1, NULL),
(734, 'Bridgend Hire Ltd', 'G78 1TG', '-4.3980481115485', '55.801128441111', '', '0141 881 8104', 'www.bridgendhire.co.uk', '', '', 'info@leggatplant.co.uk', 1, NULL),
(735, 'Chepstow Contract Rentals', 'NP26 5PX', '-2.7348708290055', '51.588526436048', '', '01291 430929', 'www.contractrentals.co.uk', '', '', 'sales@contractrentals.co.uk', 1, NULL),
(736, 'Shane Smith Plant Hire', 'FY4 5LH', '-3.0004620993231', '53.785410992376', '', '01253 693981', 'www.shanesmithgrabhire.co.uk', '', '', 'grabhire.blackpool@yahoo.co.uk', 1, NULL),
(737, 'T & M Plant Hire Ltd', 'RH6 9EB', '-0.14970568026119', '51.162812400769', '', '01293 774500', 'www.bowser-hire.com', '', '', 'terry@tmplant.co.uk', 1, NULL),
(738, 'M C A Hire Services', 'S9 5DD', '-1.4175878106341', '53.395674543218', '', '0114 244 9044', 'www.mcahire.co.uk', '', '', '468.sheffield@wolseley.co.uk', 1, NULL),
(739, 'Pownall Plant Ltd', 'WA15 0RD', '-2.3023415054146', '53.349907801132', '', '07771 752809', 'www.mini-digger-hire.co.uk', '', '', 'james_pownall@hotmail.co.uk', 1, NULL),
(740, 'B & M Plant Hire Sussex Ltd', 'PO20 1JY', '-0.75699181735547', '50.811962454687', '', '01243 785697', '', '', '', 'jan.bmplant@gmail.com', 1, NULL),
(741, 'Ecogreen Plant Hire Ltd', 'CW8 4JX', '-2.5398451637369', '53.272781691183', '', '01606 75525', 'www.ecogreenplanthire.co.uk', '', '', '', 1, NULL),
(742, 'Rentequip UK', 'LS10 2RU', '-1.5224298181326', '53.774280473211', '', '0113 277 9775', 'www.rentequipuk.net', '', '', 'info@rentequipuk.net', 1, NULL),
(743, 'Henry Plant', 'LS9 6NW', '-1.4893509589331', '53.801863404236', '', '0113 240 3171', 'www.henryplant.co.uk', '', '', 'admin@henryplant.co.uk', 1, NULL),
(744, 'Hercules Hire Ltd', 'DA2 6EP', '0.25134352461518', '51.438329900813', '', '01322 294228', 'www.hercules-hire.com', '', '', 'planthire@hercules-hire.com', 1, NULL),
(745, 'Plantoll Hire Centres', 'NN15 6NL', '-0.72395746457967', '52.378503206179', '', '01536 411212', 'www.hirecentres.com', '', '', 'ketteringhire@hirecentres.com', 1, NULL),
(746, 'J M Armitage', 'WF17 8AN', '-1.6641197622701', '53.718936072542', '', '01924 476104', 'www.jmarmitage.co.uk', '', '', 'sales@jmarmitage.co.uk', 1, NULL),
(747, 'Camfaud Concrete Pumps Ltd', 'CM16 6LU', '0.12660834130528', '51.723436632292', '', '01992 560898', 'www.camfaud.co.uk', '', '', 'sales@camfaud.co.uk', 1, NULL),
(748, 'Ashtead-plant', 'L30 6TA', '-2.9648176482351', '53.483614963632', '', '0151 523 2343', 'www.aplant.com', '', '', 'liverpool@aplant.com', 1, NULL),
(749, 'Wells Plant Hire', 'LN11 7BW', '0.12172253545299', '53.418867329436', '', '01507 358323', 'www.wellsplanthireuk.co.uk', '', '', 'enquiries@wellsplanthireuk.co.uk', 1, NULL),
(750, 'A J Grab Hire', 'SG8 6EY', '0.033279662315173', '52.094973444053', '', '07931 142198', 'www.ajgrabhire.co.uk', '', '', 'jason@ajgrabhire.co.uk', 1, NULL),
(751, 'Boxer Power & Equipment Ltd', 'GL8 8LD', '-2.1669204068447', '51.645896948342', '', '01666 500123', 'www.boxeruk.com', '', '', 'sales@boxeruk.com', 1, NULL),
(752, 'Eurograde Plant Ltd', 'GU14 7JF', '-0.7585028353635', '51.285106303098', '', '01252 302201', '', '', '', '', 1, NULL),
(753, 'K & B Crushers', 'OX12 9GN', '-1.4445626388889', '51.60552714689', '', '01235 769984', 'www.kandbcrushers.co.uk', '', '', 'info@kandbcrushers.co.uk', 1, NULL),
(754, 'F G S Plant', 'ME20 7PW', '0.45674083227162', '51.312791592189', '', '01622 713930', 'www.fgsplant.co.uk', '', '', 'info@fgsplant.co.uk', 1, NULL),
(755, 'J B Tool & Plant Hire', 'LE10 3DE', '-1.4101096316663', '52.534799920808', '', '01455 616066', 'www.jbtoolhire.co.uk', '', '', 'hinckley@jbtoolhire.co.uk', 1, NULL),
(756, 'Sweeper Hire Ltd', 'PR6 7DJ', '-2.6358235197784', '53.685397525143', '', '01257 272376', '', '', '', 'sweeperhire82@gmail.com', 1, NULL),
(757, 'D Morgan Plc', 'CH66 2LS', '-2.9374332139689', '53.272745746253', '', '0151 339 8113', 'www.dmorgan.co.uk', '', '', 'enquiries@dmorgan.co.uk', 1, NULL),
(758, 'Ontick Plant Hire', 'TD8 6NP', '-2.5452262020522', '55.474591214155', '', '01835 864871', '', '', '', 'ontick2@hotmail.co.uk', 1, NULL),
(759, 'J & J Miller Plant Hire', 'TA3 5AJ', '-2.9912773063149', '51.049717336787', '', '01823 490334', '', '', '', 'jandjmillerplanthire@btconnect.com', 1, NULL),
(760, 'Davidson & Murison Ltd', 'AB39 3QL', '-2.239740864343', '57.026196716934', '', '01569 731444', 'www.davidson-murison.com', '', '', 'davidsonandmurison@btconnect.com', 1, NULL),
(761, 'L A Lockhart Plant Hire Ltd', 'OX18 2PF', '-1.5849212053686', '51.737936957821', '', '01993 842719', 'www.lalockhart.com', '', '', 'sara.lockhart@lalockhart.com', 1, NULL),
(762, 'Yarwood\'s', 'ML6 8PA', '-3.8937466108842', '55.885779426054', '', '01236 843838', 'www.yarwoods.com', '', '', '', 1, NULL),
(763, 'Newburn Power Rental', 'WF9 3NR', '-1.3071072317396', '53.591332861657', '', '0845 077 6693', 'www.newburnpowerrental.com', '', '', 'info@npr-uk.com', 1, NULL),
(764, 'Underground Systems Ltd', 'SG19 1RS', '-0.28746504325168', '52.13901238557', '', '01767 691414', 'www.undergroundsystems.com', '', '', '', 1, NULL),
(765, 'J D Plant Ltd', 'ML6 7RB', '-3.8780356347399', '55.891214424553', '', '01236 843479', '', '', '', 'jdplantltd@live.co.uk', 1, NULL),
(766, 'A Thomas & Sons', 'SY20 8NL', '-3.8068930892131', '52.591804859375', '', '01654 703283', '', '', '', 'thomas.penegoes@btinternet.com', 1, NULL),
(767, 'Luce Bay Plant Hire Ltd', 'DG9 8QA', '-4.8792467874232', '54.871395374987', '', '01581 400248', 'www.lucebaygroup.co.uk', '', '', '', 1, NULL),
(768, 'Rumsby & Son Plant Hire', 'NR10 3AQ', '1.2608098130257', '52.678376374765', '', '01603 425031', '', '', '', 'r.rumsby2015@gmail.com', 1, NULL),
(769, 'P J Plant Hire', 'CM2 8LP', '0.46610551619892', '51.679351966399', '', '01277 829936', 'www.pjgroup.net', '', '', 'rob@pjgroup.net', 1, NULL),
(770, 'Ridgway Rentals Ltd', 'SY11 3PZ', '-3.0059715980048', '52.930050781136', '', '01691 770171', 'www.ridgwayrentals.com', '', '', 'sales@ridgwayrentals.com', 1, NULL),
(771, 'Las Plant', 'IV1 1ST', '-4.2267175131317', '57.487589008241', '', '01463 711412', 'www.lasplant.co.uk', '', '', 'enquiries@lasplant.co.uk', 1, NULL),
(772, 'Mark Allen Plant Hire', 'PL26 8NQ', '-4.8641474133051', '50.420721306068', '', '07831 385746', '', '', '', 'markallenplanthire@yahoo.co.uk', 1, NULL),
(773, 'Aberclean Plant & Sweeper Hire', 'AB32 7BU', '-2.3364520891223', '57.19369816877', '', '01224 790900', 'www.aberclean.com', '', '', 'info@aberclean.com', 1, NULL),
(774, 'Orion', 'DA8 2LF', '0.21167457074997', '51.480651025573', '', '01322 348843', 'www.orionaccess.co.uk', '', '', 'orionaccess@email.com', 1, NULL),
(775, 'Cranston Plant Hire Ltd', 'CA11 0JD', '-2.8028186154208', '54.724819572838', '', '01768 894358', '', '', '', '', 1, NULL),
(776, 'Thrums Haulage Ltd', 'DD8 4PD', '-3.0127384181035', '56.682160442235', '', '01575 575684', '', '', '', '', 1, NULL),
(777, 'Abba Plant Hire', 'LN6 3JZ', '-0.59243396481306', '53.200747195165', '', '01522 688884', 'www.abbaplanthire.co.uk', '', '', 'hire@abbaplanthire.co.uk', 1, NULL),
(778, 'One Stop Hire', 'BL3 6BS', '-2.4287579395825', '53.571483488668', '', '01204 366555', 'www.onestophire.com', '', '', '', 1, NULL),
(779, 'Wye Bobcat Services', 'HR4 7LS', '-2.9299097577584', '52.101233729232', '', '01981 500353', '', '', '', 'chrisridge0@gmail.com', 1, NULL),
(780, 'R J Stanier Plant Hire Ltd', 'ST15 0QQ', '-2.2333002242419', '52.908991105671', '', '01782 796225', '', '', '', 'rj@stanier.myzen.co.uk', 1, NULL),
(781, 'Motorway Plant Services', 'TF9 3DT', '-2.49459610719', '52.901070912329', '', '07974 737244', '', '', '', 'otsjohn@yahoo.co.uk', 1, NULL),
(782, 'Andrew Dinnicombe Construction', 'EX34 0NL', '-4.0065300327746', '51.194947074822', '', '01271 882284', '', '', '', '', 1, NULL),
(783, 'M G F', 'HP23 4QR', '-0.67898933958536', '51.837823111721', '', '01296 663250', 'www.mgf.ltd.uk', '', '', 'enquiries@mgf.ltd.uk', 1, NULL),
(784, 'D W Jones Plant Hire', 'LL52 0PA', '-4.2749426667199', '52.956474589012', '', '01766 530659', '', '', '', 'dafyddtf@yahoo.co.uk', 1, NULL),
(785, 'Scat Plant Ltd', 'WF3 1NW', '-1.5563547015469', '53.727016491353', '', '0113 238 1501', 'www.scatplant.com', '', '', 'info@scatplant.com', 1, NULL),
(786, 'M C B Brothers Ltd', 'NG23 7RN', '-0.76980347785726', '53.126713305728', '', '01636 892324', '', '', '', '', 1, NULL),
(787, 'T S Kelso', 'KA5 5LY', '-4.4972785779653', '55.517774025902', '', '01292 541702', '', '', '', 'stewart@skelso1.orangehome.co.uk', 1, NULL),
(788, 'A M S Bobcat', 'DN16 1AP', '-0.62607135356909', '53.579113580676', '', '01724 289009', 'www.amsbobcat.com', '', '', 'sales@amsbobcat.com', 1, NULL),
(789, 'Proplant Services Ltd', 'HU17 0LF', '-0.4003285166124', '53.840390635572', '', '01482 866707', '', '', '', 'proplantpaul@gmail.com', 1, NULL),
(790, 'Cwmbran Plant Services Ltd', 'NP44 5BD', '-3.0381919023653', '51.655326830949', '', '01633 489060', '', '', '', 'waynebevan1@btconnect.com', 1, NULL),
(791, 'Andy Gilbert Plant Hire', 'PL26 8DE', '-4.8652299877223', '50.399240937391', '', '01726 822583', '', '', '', '', 1, NULL),
(792, 'Manley Contracts', 'BT5 7TU', '-5.8446502707243', '54.576122153522', '', '028 9040 3518', '', '', '', 'manleycontracts@yahoo.co.uk', 1, NULL),
(793, 'A S R', 'NG6 8TQ', '-1.1777632439384', '53.022726230934', '', '0115 975 3285', 'www.access-platforms.com', '', '', 'info@asrweb.co.uk', 1, NULL),
(794, 'Sandhurst', 'ME2 4DZ', '0.51133131268842', '51.398681988656', '', '01634 739999', 'www.sandhurst.co.uk', '', '', 'enquiries@sandhurst.co.uk', 1, NULL),
(795, 'A1 Plant Hire', 'L31 4DN', '-2.9502757776207', '53.531488737447', '', '0151 520 2525', '', '', '', 'a1contractors@btinternet.com', 1, NULL),
(796, 'Cupit Plant Hire Ltd', 'NG23 6SZ', '-0.85027336337381', '53.204871492548', '', '07970 851198', 'www.cupitplanthireltd.co.uk', '', '', 'cupitplanthire@hotmail.co.uk', 1, NULL),
(797, 'C W Pugh & Sons', 'SA18 2JU', '-3.9712366478382', '51.794224832542', '', '01269 594241', '', '', '', 'cwpughandsons@hotmail.co.uk', 1, NULL),
(798, 'Y H C', 'TA6 4DB', '-3.0007884087353', '51.13415567818', '', '01278 456456', 'www.yhchireservices.com', '', '', 'jbowen@yhchiresolutions.com', 1, NULL),
(799, 'Markham Sheffield Ltd', 'S81 9LB', '-1.1249209643901', '53.364917288726', '', '01909 730861', 'www.markham-sheffield.co.uk', '', '', 'sales@markham-sheffield.co.uk', 1, NULL),
(800, 'Small Heath Plant Hire', 'B8 1BY', '-1.856327163707', '52.483186646884', '', '0121 328 1376', 'www.small-heathplant.co.uk', '', '', 'smallheathplant@hotmail.co.uk', 1, NULL),
(801, 'M C A Hire Services Plc', 'G32 8RF', '-4.1660978890545', '55.830248650987', '', '0141 646 1151', 'www.mcahire.co.uk', '', '', 'alan.scherr@wolseley.co.uk', 1, NULL),
(802, 'Kilgannon Street Care Ltd', 'SE14 6NA', '-0.041812793689156', '51.483135709599', '', '020 8692 0256', 'www.kilgannonsc.co.uk', '', '', 'paul@kilgannonsc.co.uk', 1, NULL),
(803, 'P J Labour Services Ltd', 'HP18 0PZ', '-0.87687467410382', '51.841533484597', '', '01296 326857', '', '', '', 'clare@pjlabour.co.uk', 1, NULL),
(804, 'Eastley D & J Ltd', 'TQ9 7RJ', '-3.7041410910304', '50.307938966141', '', '01548 521315', '', '', '', 'admin.dje@btconnect.com', 1, NULL),
(805, 'Cotswold Roller Hire', 'CF33 6BJ', '-3.68748168938', '51.526395786914', '', '01656 741239', 'www.crhplant.co.uk', '', '', 'pyle@crhplant.co.uk', 1, NULL),
(806, 'M J Bedford', 'PE28 4NN', '-0.23192668367787', '52.327182970893', '', '01480 431194', 'www.bedfordhire.co.uk', '', '', 'mjbedfordltd@gmail.com', 1, NULL),
(807, 'Rothie Moon Farm', 'PH25 3DD', '-3.6664945573273', '57.266615897841', '', '01479 821348', '', '', '', 'johna.kirk@btconnect.com', 1, NULL),
(808, 'Dockerill Group', 'CB22 3HZ', '0.16250853155646', '52.123237102161', '', '01223 835634', 'www.dockerillgroup.com', '', '', 'info@dockerillgroup.com', 1, NULL),
(809, 'Maxwell Plant Hire', 'UB10 9AP', '-0.42022983556322', '51.546619694823', '', '01895 270777', 'www.maxwellplanthire.com', '', '', 'info@maxwellplanthire.com', 1, NULL),
(810, 'Volker Brooks', 'LA3 3BY', '', '', '', '01524 599400', 'www.volkerbrooks.co.uk', '', '', 'info@volkerbrooks.co.uk', 1, NULL),
(811, 'March Hire Centre', 'PE15 0AX', '0.074016922864894', '52.562226379392', '', '01354 656246', '', '', '', 'don@marchhire.co.uk', 1, NULL),
(812, 'Lancashire Crushers', 'PR3 3BU', '-2.6038583113106', '53.825868266638', '', '01772 668933', 'www.lancashirecrushers.co.uk', '', '', 'admin@lancashirecrushers.co.uk', 1, NULL),
(813, 'T J Hire Ltd', 'BR6 7RD', '0.12133568105598', '51.370547259074', '', '01689 823838', 'www.tjhire.com', '', '', 'plant@tjhire.com', 1, NULL),
(814, 'Phoenix Hire & Sales Ltd', 'NP44 7HB', '-3.0238844135548', '51.640103850237', '', '01633 482007', 'www.phoenix-hire-sales.co.uk', '', '', 'mail@phoenix-hire-sales.co.uk', 1, NULL),
(815, 'Broughton Plant Hire & Sales', 'RM3 8UJ', '0.21820509657412', '51.597021970403', '', '01708 383770', 'www.broughtonplanthire.co.uk', '', '', 'mbl@mbroughtonltd.co.uk', 1, NULL),
(816, 'Harvey Plant Hire', 'LL11 2SS', '-2.9927094387266', '53.062245646999', '', '01244 579321', 'www.harveyplanthire.co.uk', '', '', 'contact@harveyplanthire.co.uk', 1, NULL),
(817, 'Penfold Verrall', 'RH13 8NY', '-0.35082667342125', '50.953894085314', '', '01403 710836', 'www.penfoldverrall.co.uk', '', '', 'info@penfoldverrall.co.uk', 1, NULL),
(818, 'Wemo-tec', 'TS23 1PY', '-1.2618418115706', '54.590895032936', '', '01325 285973', 'www.wemo-tec.co.uk', '', '', 'info@wemo-tec.co.uk', 1, NULL),
(819, 'L R D Plant Hire', 'ST10 4PF', '-2.0282589169675', '52.915581348914', '', '01889 589035', '', '', '', '', 1, NULL),
(820, 'London Tool Hire', 'E16 4TG', '0.0001085474622528', '51.523164913304', '', '020 7511 6388', 'www.londontoolandlifthire.com', '', '', 'info@londontoolandlifthire.com', 1, NULL),
(821, 'Mooney Plant Hire', 'GY1 1FE', '', '', '', '07781 104511', '', '', '', 'mooney@cwgsy.net', 1, NULL),
(822, 'Hampshire Plant & Access Ltd', 'SO40 4PB', '-1.4459437343752', '50.893803559241', '', '023 8066 7666', 'www.hampshireplantandaccess.co.uk', '', '', '', 1, NULL),
(823, 'K J Services', 'NP22 5PT', '-3.2849244894999', '51.754294274982', '', '01685 841449', 'www.kjservices.co.uk', '', '', 'sales@kjservices.co.uk', 1, NULL),
(824, 'Clee Hill Plant', 'NN18 8AA', '-0.66569841695371', '52.485442024628', '', '01536 200252', 'www.cleehill.co.uk', '', '', '', 1, NULL),
(825, 'Anchorage Hire Centre Ltd', 'DL7 8DX', '-1.4395141031933', '54.343687545688', '', '01609 777011', 'www.anchoragehire.co.uk', '', '', 'anchoragehire@btconnect.com', 1, NULL),
(826, 'Central Screen & Crushing Services', 'LE67 8PJ', '-1.4063499747664', '52.770665025833', '', '01530 225820', 'www.centralcrushers.co.uk', '', '', 'sales@centralcrushers.co.uk', 1, NULL),
(827, 'Redash', 'GU12 4XB', '-0.73578063156903', '51.250404692587', '', '01252 785010', 'www.redash.co.uk', '', '', 'info@redash.co.uk', 1, NULL),
(828, 'Burdens M C A', 'BL3 6QS', '', '', '', '01204 389351', 'www.mcahire.co.uk', '', '', '467.bolton@wolseley.co.uk', 1, NULL),
(829, 'Hills Tool & Plant Hire', 'L9 7BN', '-2.94596766618', '53.455280134968', '', '0151 525 1900', 'www.hillstoolandplanthire.co.uk', '', '', 'accountshillstoolhire@virginmedia.com', 1, NULL),
(830, 'J M Plant Hire', 'NE43 7LP', '-1.8890428018576', '54.949193551153', '', '07836 640499', '', '', '', 'jmplanthireandgroundworks@yahoo.co.uk', 1, NULL),
(831, 'Phoenix Hire & Sales Ltd', 'CF31 3AP', '-3.5727273302503', '51.501580562625', '', '01656 654938', 'www.phoenix-hire-sales.co.uk', '', '', 'mail@phoenix-hire-sales.co.uk', 1, NULL),
(832, 'E S S Safeforce', 'B71 4LQ', '-1.9652453704885', '52.506966173386', '', '0121 525 7085', 'www.ess-safeforce.com', '', '', 'info@ess-safeforce.com', 1, NULL),
(833, 'Hire 365', 'BS24 9BA', '-2.9589032654372', '51.328710073728', '', '0333 323 2365', 'www.hire365.co.uk', '', '', 'info@hire365.co.uk', 1, NULL),
(834, 'Corn Plant Hire Ltd', 'LU4 9TG', '-0.4616954335557', '51.896801663974', '', '01582 598324', 'www.cornplanthire.com', '', '', 'cornplant@hotmail.com', 1, NULL),
(835, 'C M Plant Hire', 'DA4 0JW', '0.2012551262653', '51.381456035931', '', '01322 387099', 'www.cmplant.com', '', '', 'caroline@cmplant.com', 1, NULL),
(836, 'Ruberslaw Plant Hire', 'TD9 8PT', '-2.7532451918353', '55.458194264403', '', '01450 376789', '', '', '', 'clampandpringle@btinternet.com', 1, NULL),
(837, 'Amber Plant Pembroke Ltd', 'SA71 5ES', '-4.9332093436806', '51.658928236385', '', '01646 685317', '', '', '', '', 1, NULL),
(838, 'Anglian Plant Ltd', 'NR13 6ST', '1.3904530477866', '52.677091581748', '', '01692 536997', 'www.anglianplant.com', '', '', 'hire@anglianplant.com', 1, NULL),
(839, 'Hireline', 'EH22 1SH', '-3.1097246086891', '55.926145671215', '', '0131 669 7660', 'www.hireline.info', '', '', 'accounts@hireline.info', 1, NULL),
(840, 'J W Clark Ltd', 'NN9 5TY', '-0.61867388648891', '52.329227745733', '', '01933 651224', 'www.clarkgrabhire.co.uk', '', '', '', 1, NULL),
(841, 'F Kelleher Plant Hire', 'BR3 5NT', '-0.015792119038255', '51.406664542009', '', '020 8325 3322', 'www.fkelleher.co.uk', '', '', 'enquiries@fkelleher.co.uk', 1, NULL),
(842, 'Clements Plant & Tool Hire', 'CV4 9AP', '-1.5695587969858', '52.39806521151', '', '024 7647 4849', 'www.clementsplant.co.uk', '', '', 'sales@clementsplant.co.uk', 1, NULL),
(843, 'A M S', 'DN16 1AP', '-0.62607135356909', '53.579113580676', '', '01724 292327', 'www.amsbobcat.com', '', '', 'info@amsbobcat.com', 1, NULL),
(844, 'A M D Contract Services Ltd', 'DG2 0EF', '-3.6392369579714', '55.086474789866', '', '01387 720819', 'www.amdcontractservices.co.uk', '', '', 'mail@amdcontractservices.co.uk', 1, NULL),
(845, 'Per Hire', 'RG10 0TA', '-0.86082114422852', '51.44063014499', '', '0118 932 0874', 'www.perhire.co.uk', '', '', 'sales@perhire.co.uk', 1, NULL),
(846, 'Y H C Hire Solutions', 'BA6 9QA', '-2.7289991039543', '51.14559859886', '', '01458 833777', 'www.yhchiresolutions.com', '', '', 'blair@yhchiresolutions.com', 1, NULL),
(847, 'Jeff Townsend Agricultural & Plant Hire', 'SO40 4UQ', '-1.4577244972155', '50.871071871092', '', '023 8084 6027', '', '', '', 'jefftownsend@btconnect.com', 1, NULL),
(848, 'Speedfast', 'CF83 3HF', '-3.2190272613046', '51.582769811203', '', '01495 228200', '', '', '', '', 1, NULL),
(849, 'C Plant Services', 'EX14 3BG', '-3.2598866076669', '50.779971606911', '', '01404 850357', 'www.cplantservices.com', '', '', 'phil@cplantservices.com', 1, NULL),
(850, 'Chepstow Plant', 'TS6 6UG', '-1.1685301738781', '54.598935650731', '', '01642 462433', 'www.chepstowplant.com', '', '', '', 1, NULL),
(851, 'Baird Plant Hire', 'CV47 8NT', '-1.3370709691295', '52.248532625937', '', '01926 811836', '', '', '', '', 1, NULL),
(852, 'A J B Plant Hire Ltd', 'SN2 7SN', '-1.7661807620909', '51.596169099633', '', '07810 557937', '', '', '', 'buckashley007@gmail.com', 1, NULL),
(853, 'Location One Ltd', 'IG11 0DR', '0.099196637059779', '51.521190324297', '', '020 8099 4291', 'www.locationone.co.uk', '', '', '', 1, NULL),
(854, 'G W T Plant Hire Ltd', 'AB39 3TB', '-2.2926932820502', '56.993870168796', '', '01569 760457', 'www.gwtplanthire.co.uk', '', '', 'graham.taylor62@btinternet.com', 1, NULL),
(855, 'C T H Hire Centres Ltd', 'GU9 9DD', '-0.78557523913118', '51.238351676946', '', '01252 333122', 'www.cthhire.co.uk', '', '', 'karen@chertseytoolhire.co.uk', 1, NULL),
(856, 'Rapid Climate Control', 'KT9 1ST', '-0.28668626627322', '51.368080219139', '', '020 8974 0800', 'www.rapidclimatecontrol.com', '', '', 'epsom@rapidclimatecontrol.com', 1, NULL),
(857, 'Matthew Williams Digger Hire Ltd', 'NR28 9LP', '1.4119819113139', '52.811272397482', '', '01692 406463', 'www.matthewwilliamsdiggerhire.co.uk', '', '', 'mwdiggerhire@btconnect.com', 1, NULL),
(858, 'Hamilton Plant Hire', 'S9 3HH', '-1.4302991540577', '53.388625801219', '', '0114 244 1453', 'www.hamilton-plant.co.uk', '', '', 'info@hamilton-plant.co.uk', 1, NULL),
(859, 'Readypower Engineering Ltd', 'RG41 2WY', '-0.84067467486009', '51.406074258842', '', '0118 977 4901', 'www.readypower.co.uk', '', '', 'info@readypower.co.uk', 1, NULL),
(860, 'B & W Plant Hire Ltd', 'BD21 3LN', '-1.9053054736109', '53.872020794582', '', '01535 663337', 'www.bandwplanthire.com', '', '', '', 1, NULL),
(861, 'Don Valley Plant Ltd', 'S4 8EH', '-1.4444207655401', '53.403424792313', '', '0114 242 0909', '', '', '', 'info@dvphire.com', 1, NULL),
(862, 'Barhill Plant Ltd', 'PO3 5LS', '-1.0680957870664', '50.834790045761', '', '07973 113937', '', '', '', 'admin@barhillplant.co.uk', 1, NULL),
(863, 'Service Engines', 'NE12 6RU', '-1.5764581722922', '55.028421513644', '', '0191 268 1000', 'www.serviceengines.co.uk', '', '', 'admin@serviceengines.co.uk', 1, NULL),
(864, 'R E Plant Services Ltd', 'ST7 3QT', '-2.2860445213056', '53.109936798646', '', '01270 873300', '', '', '', '', 1, NULL),
(865, 'S & K Plant & Groundworks', 'CM9 4SX', '0.67629971449983', '51.755554074372', '', '01621 853143', 'www.skgroundworks.com', '', '', 'info@skgroundworks.com', 1, NULL),
(866, 'B & A Mini Digger Hire Ltd', 'DL16 7HY', '-1.5820706707356', '54.678993620446', '', '01388 417678', 'www.bamini-diggerhireltd.co.uk', '', '', 'microdiggerhire@gmail.com', 1, NULL),
(867, 'Robert Little & Son', 'DG10 9AL', '-3.4408225878196', '55.336256659113', '', '01683 221344', '', '', '', 'callumlittle@tiscali.co.uk', 1, NULL),
(868, 'Sandhurst Rent', 'NE13 7BA', '-1.6441892100813', '55.04664657957', '', '0191 236 8255', 'www.sandhurst-rent.com', '', '', 'northeast@sandhurst.co.uk', 1, NULL),
(869, 'Pecks Hire & Sales Ltd', 'IG11 7PR', '0.085657114324032', '51.534039754598', '', '020 8594 2224', 'peckshire.co.uk/', '', '', '', 1, NULL),
(870, 'L P M Plant Hire & Sales', 'NG22 9QW', '-1.0123157519716', '53.200985132906', '', '01623 860473', 'www.lpmltd.net', '', '', 'will@lpmltd.net', 1, NULL),
(871, 'Stuart Group Ltd', 'DN40 1AH', '-0.19838266088459', '53.620110310181', '', '01469 551230', 'www.stuartgroup.ltd.uk', '', '', 'enquiries@stuartgroup.info', 1, NULL),
(872, 'Eddie Pollit Grab Hire Ltd', 'EX39 3NR', '-4.2187973713928', '51.026019217965', '', '07973 219882', '', '', '', 'grabeddie@live.co.uk', 1, NULL),
(873, 'P Flannery Plant Hire Ltd', 'M44 5BA', '-2.421626142066', '53.435908774042', '', '01925 814394', 'www.flanneryplanthire.com', '', '', '', 1, NULL),
(874, 'Vacuum & Crane Ltd', 'DY13 9JY', '-2.2595174653595', '52.350628107036', '', '01299 824333', 'www.vacuumandcrane.co.uk', '', '', 'info@vacuumandcrane.co.uk', 1, NULL),
(875, 'Wilson Contracts', 'BT27 4AE', '-6.0397969402321', '54.514480054308', '', '07918 725990', 'www.wilsoncontractslisburn.co.uk', '', '', 'awilson404@gmail.com', 1, NULL),
(876, 'Power Tool Services', 'PL4 9JH', '-4.1122799629588', '50.373417635223', '', '07989 105309', '', '', '', 'iankerley@live.co.uk', 1, NULL),
(877, 'Courtyard', 'BT40 3AA', '-5.8218147348747', '54.849472615761', '', '028 2826 0553', 'www.courtyardlarne.co.uk', '', '', '', 1, NULL),
(878, 'I G Hackley', 'HR4 9QW', '-2.7392718941778', '52.076609116996', '', '01432 273438', 'www.ighackley.co.uk', '', '', 'ighackley@hotmail.com', 1, NULL),
(879, 'Garth Plant Hire Ltd', 'CF72 9UW', '-3.3974996904662', '51.525569374562', '', '01443 449752', 'www.garthplanthire.co.uk', '', '', 'garthplanthire@yahoo.co.uk', 1, NULL),
(880, 'Bray Sweepers', 'OX5 1HD', '-1.2863493044988', '51.810519009485', '', '07957 872062', '', '', '', '', 1, NULL),
(881, 'Pinder Plant Ltd', 'WF2 9RH', '-1.5091956007223', '53.679482836464', '', '01924 362482', 'www.pinderplanthire.com', '', '', 'admin@pinderplanthire.co.uk', 1, NULL),
(882, 'J & A Currie Ltd', 'ML8 5HN', '-3.832221555691', '55.755110351234', '', '07803 582087', '', '', '', '76johncurrie@gmail.com', 1, NULL),
(883, 'Cribarth Plant Hire Ltd', 'LD2 3LN', '-3.537527214757', '52.15169026212', '', '01591 620666', '', '', '', 'cribarth@btconnect.com', 1, NULL),
(884, 'Complete Plant Hire Ltd', 'AL7 4ST', '-0.20532979604328', '51.78942126565', '', '01707 329655', 'www.completeplant.co.uk', '', '', 'sales@completeplant.co.uk', 1, NULL),
(885, 'Player Plant Hire Ltd', 'DE6 3AZ', '-1.6732459393131', '52.985090206289', '', '07970 205752', 'www.playerplanthire.co.uk', '', '', '', 1, NULL),
(886, 'Tom Prichard Contracting', 'CF72 8LF', '-3.3811022814833', '51.553899532516', '', '01443 226170', 'www.tomprichardcontracting.co.uk', '', '', '', 1, NULL),
(887, 'Sinclair Plant Hire', 'EH21 8BZ', '-3.0189380862748', '55.93666119308', '', '07767 267748', 'www.sinclairplanthire.co.uk', '', '', 'info@sinclairplanthire.co.uk', 1, NULL),
(888, 'Hirst Plant Hire', 'HD7 5TR', '-1.8553493323896', '53.614301712633', '', '07930 450670', 'www.hirstplanthire.co.uk', '', '', 'ian_hirst@hotmail.co.uk', 1, NULL),
(889, 'Micro Mini Plant Hire', 'PL17 7QQ', '-4.3061653023056', '50.502833556965', '', '01579 384383', 'www.microminiplanthire.co.uk', '', '', 'mmphire@yahoo.com', 1, NULL),
(890, 'T U C Plant', 'DH9 9PT', '-1.7177184525347', '54.890101190899', '', '01207 283733', '', '', '', 'asktucltd@hotmail.co.uk', 1, NULL),
(891, 'Beacon Plant', 'LD3 8UH', '-3.633747154504', '51.949742035584', '', '01874 636900', 'www.beaconplant.co.uk', '', '', 'info@beaconplant.co.uk', 1, NULL),
(892, 'Greenways Plant', 'BS31 2ED', '-2.4784498962029', '51.392325531977', '', '0117 986 5041', 'www.greenwaysplant.co.uk', '', '', 'info@greenwaysplant.co.uk', 1, NULL),
(893, 'Perry Mini Digger Hire Ltd', 'SN25 5AZ', '-1.7747094588334', '51.596842138842', '', '01793 728888', 'www.perryminidiggerhireswindon.co.uk', '', '', 'perryminidiggerhire@hotmail.co.uk', 1, NULL),
(894, 'Devery & O\'Halloran Ltd', 'WA2 8JT', '-2.6004828772538', '53.411476339284', '', '07707 390974', '', '', '', '', 1, NULL),
(895, 'Higgs', 'B77 5DQ', '-1.6768890724844', '52.607360830043', '', '01827 288699', 'www.higgsplanthire.co.uk', '', '', 'higgsplant@btconnect.com', 1, NULL),
(896, 'B & W', 'CW9 5ND', '-2.4952148082031', '53.263312390078', '', '01606 43916', 'www.bandwplanthire.com', '', '', '', 1, NULL),
(897, 'Wesubsea UK Ltd', 'AB51 5PD', '-2.4439068691578', '57.238944067864', '', '01467 625277', 'www.wesubsea.com', '', '', 'uk@wesubsea.com', 1, NULL),
(898, 'Andy McGreal Plant Hire & Gritting Services', 'CH46 2RH', '-3.0910170045297', '53.419705635166', '', '0151 639 3600', 'www.andymcgreal.co.uk', '', '', '', 1, NULL),
(899, 'Readyplant', 'PR26 9RF', '-2.7804505813673', '53.665451056498', '', '01772 600700', 'www.readyplant.co.uk', '', '', 'sales@readyplant.co.uk', 1, NULL),
(900, 'Mount Machinery', 'LS12 6BZ', '-1.5769236949054', '53.782709182091', '', '0113 244 0244', 'www.mountmachinery.com', '', '', 'sales@mountmachinery.com', 1, NULL),
(901, 'Abeko', 'DN36 5LW', '-0.024887296472868', '53.496413385738', '', '01472 210054', 'www.abeko.uk.com', '', '', '', 1, NULL),
(902, 'Ward Plane', 'BD21 3BB', '-1.9067695411684', '53.870197406639', '', '01535 444114', 'www.wardplane.co.uk', '', '', 'office@wardplane.co.uk', 1, NULL),
(903, 'Hi-gear', 'LE2 7SR', '-1.1341237296341', '52.617313070535', '', '0116 254 3999', 'www.higear.co.uk', '', '', 'sales@higear.co.uk', 1, NULL),
(904, 'Colmer Plant Hire', 'CM13 3HD', '0.32095180331365', '51.581365207063', '', '01277 811001', 'www.colmerplant.co.uk', '', '', '', 1, NULL),
(905, 'Mouse Valley Plant Hire', 'ML11 8NR', '-3.6949351087034', '55.701067968168', '', '01555 870984', 'www.mvp.lanarkweb.com', '', '', 'enquiries@mvplanthire.com', 1, NULL),
(906, 'B & T Plant Hire Ltd', 'DA11 9SR', '0.3154213186135', '51.450607046957', '', '01322 427000', 'www.bandtplanthire.co.uk', '', '', 'sales@bandtplanthire.co.uk', 1, NULL),
(907, 'The Morris Leslie Group', 'PH2 7TB', '-3.1860713201733', '56.411621430706', '', '01821 641179', 'www.morrisleslie.co.uk', '', '', 'info@morrisleslie.co.uk', 1, NULL),
(908, 'Jim Blundell Ltd', 'L40 7SR', '-2.8575977413729', '53.58598624385', '', '01704 894050', '', '', '', 'jbltd@btconnect.com', 1, NULL),
(909, 'Wilgate Plant & Services Ltd', 'ME13 0PW', '0.86434156870641', '51.276066481038', '', '01795 892046', 'www.wilgateplant.com', '', '', 'info@wilgateplant.com', 1, NULL),
(910, 'L Lynch Plant Hire', 'TA9 4AG', '-2.9649846620922', '51.216996347059', '', '01278 431011', 'www.l-lynch.com', '', '', '', 1, NULL),
(911, 'Keyway Nationwide Plant Rental', 'GL1 1UN', '-2.2481480142897', '51.860748368307', '', '01452 283963', 'www.keyway.co.uk', '', '', 'info@keyway.co.uk', 1, NULL),
(912, 'Triden Plant & Tool Hire', 'SL3 0DP', '-0.51213183381564', '51.476135946999', '', '01753 684060', 'www.triden.co.uk', '', '', 'sales@triden.co.uk', 1, NULL),
(913, 'Herron Contractors Ltd', 'BT25 2EN', '-6.0639013783481', '54.344906918419', '', '028 9753 2653', 'www.herroncontractors.com', '', '', 'info@herroncontractors.com', 1, NULL),
(914, 'A G Plant Hire UK Ltd', 'ST9 0DJ', '-2.0602193881203', '53.023565820175', '', '01782 551284', 'www.agplanthireltd.co.uk', '', '', 'sales@agplanthire.com', 1, NULL),
(915, 'Baker Plant Hire', 'NG34 8GJ', '-0.39548588438611', '53.008478971094', '', '01529 306232', 'www.abcfloorsltd.com', '', '', 'enquiries@bakercc.co.uk', 1, NULL),
(916, 'Billy Miller Contractor & Plant Hire', 'IV30 6NF', '-3.2903195821199', '57.64944451969', '', '01343 547973', 'www.billymiller.co.uk', '', '', '', 1, NULL),
(917, 'K R Plant Sales & Hire', 'BT92 6EB', '-7.2542970797659', '54.167602599991', '', '028 6773 8770', 'www.krplant.com', '', '', 'sales@krplant.com', 1, NULL),
(918, 'Powerflo Rentals Plc', 'AB12 3LH', '-2.0747434767623', '57.112237739275', '', '01224 380280', 'www.weatherford.com', '', '', '', 1, NULL),
(919, 'West Coast Tool & Plant Hire', 'PA34 4BW', '-5.4742341996247', '56.408682699134', '', '01631 566401', 'www.westcoastplanthire.co.uk', '', '', 'info@westcoastplanthire.co.uk', 1, NULL),
(920, 'Nationwide Services Group Ltd', 'PO12 1FR', '-1.1251732693829', '50.79730054491', '', '0845 073 1100', 'www.nationwideservices.co.uk', '', '', 'sales@nationwideservices.co.uk', 1, NULL),
(921, 'Greenpower Service Ltd', 'WS9 8BX', '-1.9318090129919', '52.606963638113', '', '01543 897655', '', '', '', 'greenpowerserviceltd@gmail.com', 1, NULL),
(922, 'Premier Hire Stoke Ltd', 'ST6 4HG', '-2.2029608535446', '53.053665203124', '', '01782 937296', '', '', '', 'hiredesk@premierhirestoke.co.uk', 1, NULL),
(923, 'Welfare Hire Nationwide Ltd', 'WF6 2UA', '-1.4153255146989', '53.717108689395', '', '0845 600 6670', 'www.welfarehirenationwide.co.uk', '', '', '', 1, NULL),
(924, 'East Kent Hire', 'CT10 2YF', '1.4134566162244', '51.356383313247', '', '01843 579111', 'www.eastkenthire.com', '', '', 'eastkenthire@gmail.com', 1, NULL),
(925, 'Sandhurst Equipment Rental', 'BS3 2HQ', '-2.6289628633582', '51.43873988393', '', '0117 963 2019', 'www.sandhurst-rent.com', '', '', 'southwest@sandhurst.co.uk', 1, NULL),
(926, 'London Tool Hire', 'NW2 7JW', '-0.23770341184218', '51.567849501065', '', '020 8452 5005', 'www.londontoolandlifthire.com', '', '', 'simon@londontoolandlifthire.com', 1, NULL),
(927, 'London Tool Hire Ltd', 'SW18 4NJ', '-0.19556345065414', '51.44947983161', '', '020 8870 0900', 'www.londontoolandlifthire.com', '', '', 'daren@londontoolandlifthire.com', 1, NULL),
(928, 'Feely Concrete & Plant Hire Ltd', 'KT4 7SQ', '-0.24760911311847', '51.38429131752', '', '020 7411 9018', '', '', '', 'feelygrabhire@gmail.com', 1, NULL),
(929, 'L A S Plant', 'IV32 7PL', '-3.0596731567584', '57.656644603776', '', '01343 820659', 'www.lasplant.co.uk', '', '', '', 1, NULL),
(930, 'Diamond Hire & Sales', 'GU14 7QU', '-0.76504760730965', '51.287558461097', '', '01252 524141', 'www.diamondhireandsales.co.uk', '', '', 'info@diamondhireandsales.co.uk', 1, NULL),
(931, 'S Snape', 'DG3 4DX', '-3.851241384575', '55.184627387825', '', '07855 255705', 'www.snapeplanthire.co.uk', '', '', 'snapeco@btinternet.com', 1, NULL),
(932, 'Simple Tool Hire', 'PO12 1FR', '-1.1251732693829', '50.79730054491', '', '0845 073 1098', 'www.simpletoolhire.co.uk', '', '', '', 1, NULL),
(933, 'Gregory\'s Plant Hire & Civil Engineering', 'IV4 7LT', '-4.7571819072167', '57.345012866758', '', '01456 415263', '', '', '', '', 1, NULL),
(934, 'B & W', 'SO31 1BX', '-1.2669641200091', '50.875479378246', '', '023 8069 6080', 'www.bandwplanthire.com', '', '', 'info@bandwplanthire.com', 1, NULL),
(935, 'R H T Plant', 'SA18 2AE', '-3.9353190231853', '51.800729593795', '', '07976 548673', '', '', '', 'rhtplant05@gmail.com', 1, NULL),
(936, 'R T K Grab Hire Ltd', 'BL8 2BD', '-2.3130585338931', '53.588039226094', '', '0844 800 1047', 'www.rtkgrabhire.com', '', '', 'enquiries@rtkgrabhire.com', 1, NULL),
(937, 'A P Pavers', 'ST14 8HU', '-1.8545387870813', '52.899971232725', '', '01895 60920', 'www.appavers.co.uk', '', '', 'enquiries@appavers.co.uk', 1, NULL),
(938, 'K E R Plant', 'NN6 9AA', '-0.89973816067923', '52.306880087451', '', '01604 780180', 'www.kerplant.co.uk', '', '', 'info@raybells.co.uk', 1, NULL),
(939, 'J C Tool Hire', 'DL1 1TN', '-1.5472585157086', '54.526370922356', '', '01325 467841', '', '', '', 'jctoolhiredarlington@gmail.com', 1, NULL);
INSERT INTO `suppliers` (`recid`, `bussinessname`, `postcode`, `longitude`, `latitude`, `suit`, `phone`, `webaddress`, `hours`, `website`, `email`, `status`, `created`) VALUES
(940, 'Storey Plant Hire & Groundworks Ltd', 'NR11 8TG', '1.3306362271123', '52.884274398863', '', '01263 833887', 'www.storeyplanthire.co.uk', '', '', 'storeyoffice@gmail.com', 1, NULL),
(941, 'Phil Green Plant Hire', 'TR2 5JF', '-5.000757292348', '50.190055819404', '', '01872 580079', '', '', '', '', 1, NULL),
(942, 'Cowell Export', 'TN8 5QL', '0.055827261163005', '51.178661250285', '', '01732 864211', '', '', '', '', 1, NULL),
(943, 'Philip Stacey Contracts Ltd', 'CM77 6DN', '0.48586051671745', '51.908355628119', '', '01371 850326', '', '', '', 'philip.stacey@btinternet.com', 1, NULL),
(944, 'L H Services & Farm Supplies', 'WR13 5PW', '-2.3887010707031', '52.109870638222', '', '01886 880415', '', '', '', 'localhireservices@gmail.com', 1, NULL),
(945, 'Jarvie Plant Group Ltd', 'G51 3RN', '-4.3213540772951', '55.853803466476', '', '01294 212121', 'www.jarvieplant.co.uk', '', '', 'glasgow@jarvieplant.co.uk', 1, NULL),
(946, 'Overload Plant & Construction Services', 'NN17 3HN', '-0.64107163864253', '52.497973306203', '', '01536 205575', '', '', '', '', 1, NULL),
(947, 'G P M', 'DA17 6AS', '0.16342655847695', '51.49890768084', '', '020 8319 7870', '', '', '', '', 1, NULL),
(948, 'A-pump Hire Ltd', 'SO45 1BX', '-1.34761673543', '50.818855004677', '', '023 8089 7180', '', '', '', 'a-pumphireltd@btconnect.com', 1, NULL),
(949, 'Devery & O\'Halloran Ltd', 'WA8 3YE', '-2.7027676918164', '53.376805824197', '', '07747 712213', '', '', '', 'devery.john@yahoo.co.uk', 1, NULL),
(950, 'Mitchells Mixer Hire', 'OL12 6EE', '-2.1718021533257', '53.637419303937', '', '07814 248256', '', '', '', 'pjmhaulage@yahoo.com', 1, NULL),
(951, 'Winner Group Ltd', 'BN11 2RU', '-0.34689534051684', '50.820181973686', '', '0800 022 4247', 'www.winnergroup.co.uk', '', '', 'lee@winnergroup.co.uk', 1, NULL),
(952, '1st Base Plant Hire Ltd', 'WN2 3JP', '-2.580603831469', '53.530205973415', '', '01942 821847', '01942 821847', '0', '', 'www.1stbaseplant.co.uk', 1, NULL),
(953, 'Mellor Plant UK', 'BB2 7ED', '-2.4997018966516', '53.76974059382', '', '07730 188270', 'www.mellorplantuk.co.uk', '', '', '', 1, NULL),
(954, 'G-max UK Ltd', 'B79 9JL', '-1.6825897488999', '52.721653455493', '', '01827 383508', '', '', '', 'julian.rawlins@gmaxuk.co.uk', 1, NULL),
(955, 'E-innovation UK Ltd', 'AB21 7GA', '-2.1861708257934', '57.196939433824', '', '01224 773044', 'www.einnovationuk.com', '', '', 'info@einnovationuk.com', 1, NULL),
(956, 'Peel Plant Ltd', 'M26 2PU', '-2.3106345726663', '53.564451182301', '', '0161 478 7672', '', '', '', 'sean.peelplant@gmail.com', 1, NULL),
(957, 'Aylesbury Plant Hire', 'HP22 5EZ', '-0.73900445055231', '51.818170109847', '', '01296 631188', 'www.aylesburyplanthire.com', '', '', 'hollie@aylesburyplanthire.com', 1, NULL),
(958, 'Mini Piling Plant Hire', 'OL8 2JP', '-2.1062830487622', '53.528674281966', '', '0161 622 1169', 'www.righire.co.uk', '', '', 'info@solarpiling.co.uk', 1, NULL),
(959, 'Gatwick Group', 'RH6 9EB', '-0.14970568026119', '51.162812400769', '', '01293 824777', 'www.gatwickgroup.com', '', '', '', 1, NULL),
(960, 'Harborough Hire Centre', 'LE16 7QE', '-0.90798213384818', '52.479538334499', '', '01858 410955', '', '', '', 'hire@harboroughhire.co.uk', 1, NULL),
(961, 'Cox Hire', 'DY2 9NW', '-2.0706955396052', '52.482803127339', '', '01384 395992', 'www.coxhire.co.uk', '', '', 'tooldesk@coxhire.co.uk', 1, NULL),
(962, 'North London Plant Hire Ltd', 'EN3 7NJ', '-0.029855662450368', '51.659423339273', '', '020 8805 8060', 'www.nlph.co.uk', '', '', 'sales@nlph.co.uk', 1, NULL),
(963, 'B & A Mini Digger Hire Ltd', 'DL16 7AL', '-1.620521101233', '54.68686663152', '', '07908 498895', 'www.b-aminidigger.co.uk', '', '', 'microdiggerhire@gmail.com', 1, NULL),
(964, 'Total Plant Solutions Ltd', 'CV23 0HL', '-1.296634926997', '52.407347143724', '', '01788 572033', 'www.totalplantsolutions.co.uk', '', '', '', 1, NULL),
(965, 'Paul Chapman & Sons Ltd', 'CV13 0LJ', '-1.3989442467626', '52.626935515429', '', '01455 293620', 'www.paulchapmanltd.co.uk', '', '', 'sales@paulchapmanltd.co.uk', 1, NULL),
(966, 'Clee Hill Plant Ltd', 'SP10 3TJ', '-1.5133596547988', '51.214640679094', '', '01264 367720', 'www.cleehill.co.uk', '', '', 'andover@cleehill.co.uk', 1, NULL),
(967, 'Falch Ltd', 'M24 2FL', '-2.1713246025306', '53.568156445888', '', '0161 643 5346', 'www.falch-manchester.co.uk', '', '', '', 1, NULL),
(968, 'Cross Plant Hire Ltd', 'BL0 0ED', '-2.3038708104563', '53.654926573215', '', '0161 401 0000', 'www.crossplanthire.com', '', '', 'info@crossplanthire.com', 1, NULL),
(969, 'M F L Garden & Plant Hire', 'BT46 5LT', '-6.7172099520068', '54.847518976428', '', '028 7964 5345', 'www.mflhire.co.uk', '', '', 'finbar@mflhire.co.uk', 1, NULL),
(970, 'Johnson Plant Hire Ltd', 'KT10 9AA', '-0.35614609895089', '51.376107612232', '', '01372 472100', '', '', '', '', 1, NULL),
(971, 'K T L Plant Services Ltd', 'M28 3BZ', '-2.4017534503883', '53.531192393091', '', '0161 702 9689', 'www.ktlplant.com', '', '', 'paul@ktlplant.com', 1, NULL),
(972, 'First Response Site Services Ltd', 'CM11 2PZ', '0.44260696232811', '51.606648229774', '', '01277 635290', 'www.1stresponsesiteservices.co.uk', '', '', 'marketing@1stresponsetoolhire.co.uk', 1, NULL),
(973, 'Eveready Hire', 'RH9 8LJ', '-0.068787627203567', '51.21915848893', '', '01342 892121', 'www.evereadyhire.com', '', '', '', 1, NULL),
(974, 'Phoenix Hire & Sales Ltd', 'CF10 4US', '-3.1433939047129', '51.467527512662', '', '029 2045 9279', 'www.phoenix-hire-sales.co.uk', '', '', 'mark.h@phoenix-hire-sales.co.uk', 1, NULL),
(975, 'Dragon Access', 'CF23 9AF', '-3.1385009833166', '51.498246452016', '', '0333 772 9645', 'www.dragon-access.co.uk', '', '', 'info@dragon-access.co.uk', 1, NULL),
(976, 'Ian Milne & Soncontractors Ltd', 'AB42 5DA', '-2.0001521504297', '57.487462231813', '', '01771 622241', '', '', '', 'ianmilneandson@hotmail.com', 1, NULL),
(977, 'Paul McGowan Grab Hire Ltd', 'B9 4BA', '-1.8792956710927', '52.478807212623', '', '0121 772 5967', 'www.paulmcgowan.co.uk', '', '', '', 1, NULL),
(978, 'C & D Rigging Equipment', 'SL0 0NH', '-0.53471347742828', '51.547466930156', '', '01753 785414', 'www.cdrigging.co.uk', '', '', 'enquiries@cdrigging.co.uk', 1, NULL),
(979, 'P W Plant Hire Ltd', 'LS21 1RP', '-1.6415110191681', '53.904166927929', '', '0113 284 2821', '', '', '', 'pwplanthire@aol.com', 1, NULL),
(980, 'M E P Hire', 'DH1 1TF', '-1.5367664787788', '54.788223409531', '', '0191 384 1384', 'www.hirestation.co.uk', '', '', 'lee.beckwith@vpplc.com', 1, NULL),
(981, 'Rob Deeba Grab Lorry & Plant Hire', 'NR5 0JS', '1.1869963431829', '52.652893232814', '', '01603 868119', '', '', '', 'info@robdeeba.co.uk', 1, NULL),
(982, 'Quick Reach', 'M30 0SF', '-2.3546684866814', '53.485994649569', '', '0845 602 2733', '', '', '', 'info@quick-reach.co.uk', 1, NULL),
(983, 'Go Plant', 'AL7 1HG', '-0.1914417355325', '51.802399759491', '', '01707 372944', 'www.go-plant.co.uk', '', '', 'london@gpl-hire.co.uk', 1, NULL),
(984, 'Extra Mech Services Ltd', 'PO9 2NF', '-0.96814222866105', '50.864785213227', '', '023 9247 1621', 'www.extramechservices.co.uk', '', '', '', 1, NULL),
(985, 'S W - Hire', 'SN15 2LP', '-2.1298219436411', '51.413479591936', '', '01249 730927', 'www.sw-hire.co.uk', '', '', 'info@sw-hire.co.uk', 1, NULL),
(986, 'Tutex', 'M17 1DB', '-2.3120007431672', '53.464936808275', '', '0161 667 6840', 'www.tutex.co.uk', '', '', 'info@tutex.co.uk', 1, NULL),
(987, 'Plant Line Co Ltd', 'CF14 6BT', '-3.2142638635428', '51.51993026327', '', '07815 111171', '', '', '', 'liamneal@neal-soils.co.uk', 1, NULL),
(988, 'Anglia Crane & Plant Hire', 'NN15 5JJ', '-0.66588365295', '52.377987812125', '', '01536 723323', 'www.angliacrane.com', '', '', 'info@angliacrane.com', 1, NULL),
(989, 'J Ryan & Sons Ltd', 'RH13 6NZ', '-0.23885693561754', '51.040913210719', '', '01403 891541', '', '', '', 'jryanplanthire@gmail.com', 1, NULL),
(990, 'Smiths Hire', 'FY4 2DP', '-3.0345484606752', '53.777256849368', '', '01253 696109', 'www.smithshire.com', '', '', '', 1, NULL),
(991, 'Larkin Eng Services Ltd', 'LA14 4EQ', '-3.2302850845656', '54.14387621849', '', '01229 822979', 'www.larkineng.com', '', '', 'sales@larkineng.com', 1, NULL),
(992, 'M A P Plant Hire Ltd', 'EH48 2HT', '-3.6519006974734', '55.88441904719', '', '01506 324173', 'www.map-ltd.com', '', '', 'info@map-ltd.com', 1, NULL),
(993, 'Howard Plant Hire', 'LS14 1NG', '-1.4630492198965', '53.82953060582', '', '0113 265 3787', '', '', '', 'reception@howardcivileng.co.uk', 1, NULL),
(994, 'Exe Valley Plant Hire', 'EX2 9NB', '-3.5513340298925', '50.711230486985', '', '01392 851930', 'exevalleyplanthire.co.uk', '', '', '', 1, NULL),
(995, 'Neptune Plant Hire', 'SO41 0HE', '-1.6030593988288', '50.75115601494', '', '07887 755701', '', '', '', '', 1, NULL),
(996, 'Peartree Plant', 'GU24 9LN', '-0.63681355431594', '51.33508983822', '', '07787 117718', '', '', '', '', 1, NULL),
(997, 'Map Developments Ltd', 'EH48 2HT', '-3.6519006974734', '55.88441904719', '', '01506 650888', 'www.map-ltd.com', '', '', 'info@map-ltd.com', 1, NULL),
(998, 'Matts Grab Hire Ltd', 'B10 0HR', '-1.8482157545702', '52.461124109147', '', '0121 777 1771', 'www.mattsgrabhire.co.uk', '', '', 'mattsgrabhire@gmail.com', 1, NULL),
(999, 'Hebridean Plant Hire Ltd', 'HS2 0EL', '-6.4167671690381', '58.213308502864', '', '01851 705959', 'www.hebplant.co.uk', '', '', 'hebplant@btinternet.com', 1, NULL),
(1000, 'D M Plant Hire', 'WV9 5AN', '-2.1345899918499', '52.666382701575', '', '01902 798482', '', '', '', 'dmplanthire@live.co.uk', 1, NULL),
(1001, 'Miles Hire Within Bracey\'s Building Supplies', 'CF72 8PG', '-3.3713504236644', '51.521247126835', '', '01443 230497', 'www.mileshire.co.uk', '', '', '', 1, NULL),
(1002, 'Hydraulic Attachment Services', 'WA7 4US', '-2.7471121764829', '53.337318197841', '', '01928 573590', 'www.has-ltd.co.uk', '', '', 'info@has-ltd.co.uk', 1, NULL),
(1003, 'C P Hire GB Ltd', 'SA1 8QQ', '-3.8806051966316', '51.620567529934', '', '01792 462000', 'www.cphire.co.uk', '', '', 'swansea@cphire.com', 1, NULL),
(1004, 'A H U S Plant Hire Ltd', 'YO7 4EG', '-1.4351619939036', '54.2200370618', '', '01845 587880', '', '', '', 'ahus@btconnect.com', 1, NULL),
(1005, '365 Plant Hire', 'WA16 6DX', '-2.3727123686538', '53.304216826622', '', '0161 926 9000', 'www.365planthire.co.uk', '', '', '', 1, NULL),
(1006, 'Groundforce Shorco', 'CM19 5AR', '0.067093783170389', '51.764587298746', '', '01279 410077', '', '', '', '', 1, NULL),
(1007, 'Pell Plant Hire Ltd', 'PE24 5PE', '0.27359663953691', '53.230962087795', '', '01754 874288', 'www.pellplant.co.uk', '', '', '', 1, NULL),
(1008, 'Hawk Plant Hire Ltd', 'CB24 3DS', '0.049818560140939', '52.294323348185', '', '01954 780812', 'www.hawk-group.co.uk', '', '', '', 1, NULL),
(1009, 'Byfield Services Ltd', 'BS2 0RA', '-2.5748116557476', '51.45376422577', '', '0117 941 4324', 'www.byfieldservices.co.uk', '', '', 'info@byfieldservices.co.uk', 1, NULL),
(1010, 'W J Doherty & Son', 'LU7 9HH', '-0.65083526133616', '51.902242213278', '', '01525 381107', 'dohertytippers.co.uk/', '', '', 'wjdoherty@hotmail.co.uk', 1, NULL),
(1011, 'Richard H Marshall Earthworks & Plant Hire', 'NG11 6QX', '-1.1381025170362', '52.861874486509', '', '07860 600263', 'www.rhmplanthire.co.uk', '', '', 'info@rhmplanthire.co.uk', 1, NULL),
(1012, 'G M P Plant Hire', 'CO7 7LT', '0.99469597461563', '51.931197958241', '', '01206 230123', 'www.gmpplanthire.co.uk', '', '', 'contact@gmpplanthire.co.uk', 1, NULL),
(1013, 'Carefree Plant Hire', 'GY3 5AA', '', '', '', '01481 240662', '', '', '', 'ktayler@cwgsy.net', 1, NULL),
(1014, 'J & P Truck & Plant Hire Ltd', 'CV23 8EH', '-1.3702273022708', '52.311008613576', '', '01926 634367', '', '', '', '', 1, NULL),
(1015, 'Star Platforms', 'TN15 7RD', '0.30896939486844', '51.299773432211', '', '01732 885012', 'www.starplatforms.co.uk', '', '', 'info@starplatforms.co.uk', 1, NULL),
(1016, 'Smith\'s Hire', 'FY3 9JW', '-3.0292450388238', '53.806712545304', '', '01253 600189', '', '', '', '', 1, NULL),
(1017, 'N T B Services Ltd', 'CV37 8AQ', '-1.7748274852786', '52.111834073825', '', '01789 722608', 'www.ntbservices.co.uk', '', '', '', 1, NULL),
(1018, 'W B Prentice Plant Hire', 'EH18 1AS', '-3.1075697561048', '55.898292253679', '', '0131 660 2790', '', '', '', '', 1, NULL),
(1019, 'Matt\'s Grab Hire Ltd', 'B10 0HR', '-1.8482157545702', '52.461124109147', '', '0121 772 6533', 'www.mattsgrabhire.co.uk', '', '', 'mattsgrabhire@gmail.com', 1, NULL),
(1020, 'R W Plant', 'EX38 8RB', '-4.2317754874712', '50.9125593732', '', '07929 304814', 'www.rwplant-devon.co.uk', '', '', 'enquiry@rwplant-devon.co.uk', 1, NULL),
(1021, 'N Clarke General Contractor', 'NR24 2SE', '1.0397441246548', '52.854663426385', '', '07860 198453', '', '', '', 'nev666clarke@aol.com', 1, NULL),
(1022, 'Harris Mini Diggers & Ground Services', 'CF83 3DB', '-3.197853991508', '51.569599060294', '', '029 2088 6737', '', '', '', '', 1, NULL),
(1023, 'L Hawkins Plant Hire', 'CF83 4BW', '-3.2850453241873', '51.617070646065', '', '029 2083 0898', '', '', '', 'l.hawkins.planthire@hotmail.co.uk', 1, NULL),
(1024, 'F P K Contracts Ltd', 'BT79 0WA', '-7.1442283592682', '54.62252855471', '', '028 8077 1010', '', '', '', '', 1, NULL),
(1025, 'Glencoe Plant Services', 'HP8 4AJ', '-0.5487165553255', '51.665255761534', '', '01494 763333', 'www.glencoeplant.co.uk', '', '', 'orders@glencoeplant.co.uk', 1, NULL),
(1026, 'B Edwards Haulage & Plant', 'SG8 5PZ', '-0.058159355811153', '52.081085533627', '', '07710 914973', '', '', '', '', 1, NULL),
(1027, 'F T C Plant Ltd', 'NR21 8NL', '0.86870467226065', '52.834345857509', '', '01328 863421', 'www.ftc.uk.com', '', '', 'ftchireandsales@gmail.com', 1, NULL),
(1028, 'S Kershaw Plant Hire & Groundworks Contractors', 'S73 8UF', '-1.4243508008392', '53.520765724879', '', '01226 956026', 'www.skershawplantandgroundworks.co.uk', '', '', 'info@skershawplantandgroundworks.co.uk', 1, NULL),
(1029, 'Wigan Tippers Ltd', 'WN5 8AA', '-2.679260883497', '53.537362400161', '', '01942 211169', 'www.wigantippers.com', '', '', 'tim@wigantippers.com', 1, NULL),
(1030, 'Swindon Plant & Tool Hire', 'SN2 7JQ', '-1.7677495720064', '51.582936957297', '', '01793 423009', '', '', '', 'info@spth.co.uk', 1, NULL),
(1031, 'Ian O\'Brien Plant Hire', 'HR9 6LY', '-2.6434216291021', '51.934433069721', '', '01989 730415', '', '', '', 'obrienjcb@aol.com', 1, NULL),
(1032, 'Rigden Plant Hire Groundwork Contractors', 'BN10 8AA', '0.0086101204411432', '50.810959646443', '', '01273 588517', '', '', '', '', 1, NULL),
(1033, 'A H D Plant Ltd', 'DE55 3EL', '-1.3465977753912', '53.100002132832', '', '07904 246229', 'www.ahdplanthire.co.uk', '', '', 'ahdplant@yahoo.co.uk', 1, NULL),
(1034, 'J A Caley', 'IM7 3EB', '', '', '', '07624 439957', '', '', '', 'johncaley59@yahoo.com', 1, NULL),
(1035, 'Letchworth Plant Hire Ltd', 'SG6 1EX', '-0.21938368542067', '51.984201669345', '', '01462 483331', '', '', '', 'info@micropilinggroup.com', 1, NULL),
(1036, 'G A Plant & Machinery Ltd', 'SN2 2PN', '-1.8113891929299', '51.573412398288', '', '01793 640200', 'www.gaplant.co.uk', '', '', 'info@gaplant.co.uk', 1, NULL),
(1037, 'Aim Hire UK', 'DA16 3AF', '0.11031129343304', '51.465684876352', '', '020 8854 4411', 'www.aimhireuk.co.uk', '', '', 'info@aimhireuk.co.uk', 1, NULL),
(1038, 'John Duncan Plant Hire', 'AB23 8YD', '-2.0563378250462', '57.277030490643', '', '01358 742127', 'jdplanthire.co.uk', '', '', 'admin@jdplanthire.co.uk', 1, NULL),
(1039, 'Herne Bay Plant Hire', 'CT6 5RN', '1.1247039437431', '51.37021390015', '', '01227 364212', 'www.hernebayplanthire.co.uk', '', '', 'hiredesk@hernebayplanthire.co.uk', 1, NULL),
(1040, 'Z M Plant', 'CM17 9NS', '0.1377326850842', '51.763413398244', '', '07794 871630', '', '', '', 'zmp@orange.net', 1, NULL),
(1041, 'Compass Plant Hire Ltd', 'ME2 4DP', '0.51951117932847', '51.390034404379', '', '01634 711111', '', '', '', 'info@compassplant.co.uk', 1, NULL),
(1042, 'C S M Leicester', 'LE19 4AE', '-1.2163131906611', '52.593792089942', '', '07986 642242', 'www.csmleicester.com', '', '', 'chris@csmleicester.com', 1, NULL),
(1043, 'Linde Fork Truck Rentals', 'B66 1BG', '-1.9731741889045', '52.502976707084', '', '0121 524 3300', 'www.bhflt.co.uk', '', '', '', 1, NULL),
(1044, 'Proshore', 'WF5 9AW', '-1.5656456444688', '53.68432075606', '', '01924 274182', 'www.proshore.co.uk', '', '', 'enquiries@proshore.co.uk', 1, NULL),
(1045, 'Farmec Hire', 'BS28 4QS', '-2.8249579514756', '51.238020738853', '', '01934 713548', 'www.farmechirecentre.com', '', '', 'geoff.farmechire@virgin.net', 1, NULL),
(1046, 'Harford Plant Services Ltd', 'NR10 3AD', '1.2854671162978', '52.706222366117', '', '01603 891004', 'www.harfordplantservices.co.uk', '', '', 'hire@harfordplantservices.co.uk', 1, NULL),
(1047, 'Wildmoor Truck & Plant Ltd', 'B61 0BX', '-2.0639424897567', '52.375411993164', '', '07977 244540', '', '', '', 'wildmoortruckandplant.ltd@gmail.com', 1, NULL),
(1048, 'Local Tool Hire', 'HA1 4JE', '-0.34956117663575', '51.581687588511', '', '020 3609 8065', 'www.localtoolhirelondon.co.uk', '', '', 'info@localtoolhire.co.uk', 1, NULL),
(1049, 'Tiger Hire', 'MK42 8HR', '-0.49383448319648', '52.11800202413', '', '01234 851300', 'www.tiger-hire.com', '', '', 'giles@tiger-hire.com', 1, NULL),
(1050, 'Elliott Group', 'WV11 2BE', '-2.0882747757152', '52.63544776938', '', '01902 866720', 'www.elliottuk.com', '', '', '', 1, NULL),
(1051, 'Hoist & Chute Hire', 'DA4 0AE', '0.20922997123735', '51.368598607047', '', '01322 866639', '', '', '', 'info@hoistchutehire.com', 1, NULL),
(1052, 'Hicks Plant', 'TF9 3JJ', '-2.5630887566981', '52.834729227109', '', '01630 685353', 'www.hicksplant.co.uk', '', '', '', 1, NULL),
(1053, 'P & R Services London Ltd', 'HA2 7AJ', '-0.35943126466011', '51.583354655594', '', '07950 896366', '', '', '', '', 1, NULL),
(1054, 'Pro-tech Pavers Ltd', 'WS10 8ST', '-2.0466542966159', '52.556433336584', '', '01384 456664', 'www.pro-techpavers.co.uk', '', '', 'admin@pro-techpavers.co.uk', 1, NULL),
(1055, 'A B 2000 Ltd', 'IV12 5QR', '-3.8456527186357', '57.584115772338', '', '01667 456702', '', '', '', 'keith.johnston@ab2000.co.uk', 1, NULL),
(1056, 'T M Plant Hire UK Ltd', 'WD18 7AH', '-0.41871875978952', '51.655025922444', '', '07939 041172', 'www.tmplanthireukltd.com', '', '', '', 1, NULL),
(1057, 'Fern\'s Plant & Hire Services', 'GL12 7AD', '-2.3542203220564', '51.636247211855', '', '01453 799597', '', '', '', '', 1, NULL),
(1058, 'Flannery Plant Hire Ltd', 'HA9 0RZ', '-0.27109822177215', '51.558185029719', '', '020 8900 9049', '', '', '', 'info@flanneryplant.co.uk', 1, NULL),
(1059, 'Utility Equipment', 'SY5 9PZ', '-2.9148335146224', '52.679838078365', '', '01743 821804', 'www.utility-equipment.com', '', '', 'ianm@ue-parts.com', 1, NULL),
(1060, 'David Lewis Plant Hire', 'SA42 0QW', '-4.8047176520563', '51.992454640779', '', '07976 988476', '', '', '', 'info@daijcb.com', 1, NULL),
(1061, 'Wright Demolition Equipment Ltd', 'S80 1RA', '-1.1184434122006', '53.309578559102', '', '01909 481992', 'www.wrightgroupuk.com', '', '', 'mark@wrightdemoequip.co.uk', 1, NULL),
(1062, 'D T Grab Hire', 'CO15 5NW', '1.1896981438036', '51.804433501279', '', '07884 183663', '', '', '', '', 1, NULL),
(1063, 'D I Y Diggers', 'RG21 3HP', '-1.0857602818968', '51.25093658288', '', '01256 328164', 'www.diydiggers.co.uk', '', '', 'info@diydiggers.co.uk', 1, NULL),
(1064, 'Apton Plant Ltd', 'AL4 0PD', '-0.25760248894915', '51.729169780326', '', '01727 824317', 'www.aptonplant.com', '', '', 'info@aptonplant.com', 1, NULL),
(1065, 'Crewe Plant Hire', 'CW2 6AW', '-2.4397696779009', '53.08882016911', '', '01270 416262', 'www.creweplanthire.co.uk', '', '', 'sales@creweplanthire.co.uk', 1, NULL),
(1066, 'J Plant Hire', 'PA31 8PY', '-5.4367697658141', '56.041070764899', '', '07901 620359', '', '', '', '', 1, NULL),
(1067, 'Alpha Earthworks Ltd', 'WF4 1AB', '-1.3882059953363', '53.65098135994', '', '01924 863555', 'www.alphaearthworks.co.uk', '', '', 'enquiries@alphaearthworks.co.uk', 1, NULL),
(1068, 'O B L Contracts Ltd', 'HX5 9JR', '-1.8243235108881', '53.678238195749', '', '01422 372146', 'www.oblcontracts.co.uk', '', '', 'oliverlannen@gmail.com', 1, NULL),
(1069, 'Booboo Plant Hire', 'MK17 8GU', '-0.65592521445925', '52.017012077925', '', '0845 475 7847', 'www.boobooplanthire.co.uk', '', '', 'boobooplanthire@gmail.com', 1, NULL),
(1070, 'Banbridge Hire & Sales', 'BT32 3QD', '-6.2921097737751', '54.351587433846', '', '028 4066 9199', 'www.bannhire.co.uk', '', '', '', 1, NULL),
(1071, 'Eve Trak Way', 'GU21 5DH', '-0.54457041454806', '51.326336428615', '', '01483 768485', 'www.evetrakway.co.uk', '', '', '', 1, NULL),
(1072, 'R S Plant & Tool Hire', 'NN1 4PW', '-0.87250961137116', '52.247617327616', '', '01604 631611', 'www.rsplantandtoolhire.co.uk', '', '', 'darren@rsplantandtoolhire.co.uk', 1, NULL),
(1073, 'Tendring Tool Hire', 'CO7 8LG', '1.0656430684697', '51.850628381338', '', '01206 251040', 'www.tendringtoolhire.co.uk', '', '', 'sales@tendringtoolhire.co.uk', 1, NULL),
(1074, 'S P H Plant Ltd', 'TF4 2PX', '-2.4924995009127', '52.660832919229', '', '01952 501155', '', '', '', 'simon@sphplant.co.uk', 1, NULL),
(1075, 'Swindon Grab Hire Ltd', 'SN4 8AL', '-1.8943417213567', '51.543017583702', '', '01793 320221', 'www.swindongrabhire.net', '', '', 'johnclifton10@yahoo.co.uk', 1, NULL),
(1076, 'J L W Solutions', 'KY12 8JU', '-3.5123733888391', '56.045801943845', '', '07779 266380', '', '', '', 'm2jlw@aol.com', 1, NULL),
(1077, 'Burton Manpower Solutions', 'BH31 6AD', '-1.8778663921519', '50.878903740565', '', '07810 872056', '', '', '', 'mark.burton31@btinternet.com', 1, NULL),
(1078, 'Land & Water Plant', 'B46 2HH', '-1.6824097804961', '52.542244304053', '', '01675 438991', 'www.land-water.co.uk', '', '', 'dave.walker@land-water.co.uk', 1, NULL),
(1079, 'Pier UK', 'WA12 8DN', '-2.6432173886619', '53.447972532678', '', '01925 228674', 'www.pier-uk.co.uk', '', '', 'info@pier-uk.co.uk', 1, NULL),
(1080, 'C J Holmes & Son Ltd', 'PE24 5JD', '0.23568608289114', '53.168510209482', '', '01754 811598', 'www.cjholmesandson.co.uk', '', '', 'enquiries@cjholmesandson.co.uk', 1, NULL),
(1081, 'Slater Plant Hire Ltd', 'BD23 3LJ', '-2.0526201358041', '53.971873675928', '', '01756 700250', '', '', '', 'sphltd@hotmail.co.uk', 1, NULL),
(1082, 'Road Rail Cranes Ltd', 'BS37 5YS', '-2.4395672976548', '51.53553385129', '', '01454 325292', 'www.roadrailcranes.com', '', '', 'bristol@roadrailcranes.com', 1, NULL),
(1083, 'Nixon Plant Hire', 'BD3 9RW', '-1.7332145466084', '53.791526489984', '', '01274 393669', 'www.nixonhire.com', '', '', 'bradford@nixonhire.com', 1, NULL),
(1084, 'Plant Hire Division Ltd', 'CH45 8LS', '-3.0754653447065', '53.423577131688', '', '0151 528 9998', '', '', '', 'orders@planthiredivision.com', 1, NULL),
(1085, 'Thurston Building Services Ltd', 'IP31 2PJ', '0.79690290565814', '52.269110794986', '', '01284 788122', 'www.tbs-hire.co.uk', '', '', 'info@tbs-hire.co.uk', 1, NULL),
(1086, 'Donnelly Equipment', 'SS8 0QY', '0.55392735514242', '51.519263413367', '', '0844 776 6600', 'www.donnellyequipment.com', '', '', 'helpdesk@donnellyequipment.com', 1, NULL),
(1087, 'Hawley Plant Hire', 'WF2 9EP', '-1.525090189914', '53.682324265392', '', '07778 556637', '', '', '', 'hawleyplanthire@hotmail.com', 1, NULL),
(1088, 'T M Plant Hire', 'SK5 6UB', '-2.1568221085419', '53.439812877236', '', '0161 442 1600', '', '', '', 'tmplanthireuk@aol.com', 1, NULL),
(1089, 'C A Blackwell Ltd', 'CO6 2JX', '0.69619408425458', '51.907355699366', '', '01787 222768', 'www.blackwellgroup.co.uk', '', '', 'preconstruction@cablackwell.co.uk', 1, NULL),
(1090, 'R.Hazzell Skip Hire', 'RG8 7TB', '-1.1028931475977', '51.506268046921', '', '0118 984 2684', '', '', '', '', 1, NULL),
(1091, 'Milnd', '321321', '72.5737087', '23.1146032', '123', '123', '123', '0', '', 'milpas999@gmail.com', 1, NULL),
(1092, 'milind local', '3824214', '72.583756', '23.114903', 'local suit', '123456789', 'milind.com', '0', '', 'sdfd@sdfsdf.sdf', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_dump`
--

CREATE TABLE `supplier_dump` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `data_dump` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_dump`
--

INSERT INTO `supplier_dump` (`recid`, `data_dump`, `created`) VALUES
(1, '{\"email\":\"milpas999@gmail.com\",\"name\":\"sdfsad gasg sadf\",\"password\":\"222222\",\"confPassword\":\"222222\",\"mobile\":\"1234567890\",\"radiusRange\":\"122\",\"longitude\":\"423423.3\",\"latitude\":\"4234234.23\"}', '2018-05-12 11:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `recid` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`recid`, `username`, `password`, `email`, `status`, `created`) VALUES
(1, 'milpas999', '4297f44b13955235245b2497399d7a93', 'milpas999@gmail.com', 1, '2018-05-12 18:18:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon`
--
ALTER TABLE `addon`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `addonbooked`
--
ALTER TABLE `addonbooked`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `apikeys`
--
ALTER TABLE `apikeys`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `lorryrequest`
--
ALTER TABLE `lorryrequest`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `lorryrequestsuppliermap`
--
ALTER TABLE `lorryrequestsuppliermap`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `siteuser`
--
ALTER TABLE `siteuser`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `supplier_dump`
--
ALTER TABLE `supplier_dump`
  ADD PRIMARY KEY (`recid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`recid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon`
--
ALTER TABLE `addon`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `addonbooked`
--
ALTER TABLE `addonbooked`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `apikeys`
--
ALTER TABLE `apikeys`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lorryrequest`
--
ALTER TABLE `lorryrequest`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `lorryrequestsuppliermap`
--
ALTER TABLE `lorryrequestsuppliermap`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siteuser`
--
ALTER TABLE `siteuser`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1093;

--
-- AUTO_INCREMENT for table `supplier_dump`
--
ALTER TABLE `supplier_dump`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `recid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
