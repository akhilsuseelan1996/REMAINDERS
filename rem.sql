-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2018 at 08:13 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `remainder`
--

-- --------------------------------------------------------

--
-- Table structure for table `rem`
--

DROP TABLE IF EXISTS `rem`;
CREATE TABLE IF NOT EXISTS `rem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `startdate` varchar(30) NOT NULL,
  `enddate` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rem`
--

INSERT INTO `rem` (`id`, `eventname`, `location`, `startdate`, `enddate`, `description`) VALUES
(1, 'Marriage', 'ktm', '2019-02-08', '2019-02-08', 'edapally -location'),
(2, 'DJ Night', 'Bangalore', '2018-12-25', '2018-12-25', 'DJ dgfhffhgfbf'),
(3, 'The Bean Palace', 'Delhi', '2019-01-01', '2019-01-02', 'Integer tincidunt. Cra'),
(4, 'Hugs with Mugs', 'kochi', '2018-12-12', '2018-12-12', 'Lorem ipsum dolor sit ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
