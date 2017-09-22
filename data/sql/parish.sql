-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2016 at 12:23 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diocese-survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `parish`
--

CREATE TABLE IF NOT EXISTS `parish` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Parish') DEFAULT 'Parish',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Landline` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `parish`
--

INSERT INTO `parish` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Location`, `Address`, `Landline`) VALUES
(3, 'Parish', '2015-12-22 09:04:26', '2015-09-24 05:21:48', 'SANTA CRUZ BASILICA', 'Fort Cochin', 'Fort Cochin, Cochin - 682 001', '(0484) 2215799'),
(4, 'Parish', '2015-12-22 09:04:43', '2015-09-24 05:23:04', 'OUR LADY OF HOPE CHURCH', 'Vyppen', 'Vypeen, Cochin-682 510', '(0484) 2502366'),
(5, 'Parish', '2015-12-22 09:04:56', '2015-09-24 05:25:25', 'OUR LADY OF LIFE CHURCH', 'Mattanchery', 'Mattanchery, Cochin', '(0484) 2224828'),
(6, 'Parish', '2016-01-06 16:15:32', '2015-10-21 07:56:15', 'ST PETER & PAUL', 'Amaravathy', 'Amaravathy, Cochin- 682 001', '(0484) 2218724'),
(8, 'Parish', '2015-10-30 07:16:11', '2015-10-21 11:55:22', 'HOLY FAMILY CHURCH', 'Nazareth', 'Nazareth, Cochin-682 002', '(0484) 2220180'),
(9, 'Parish', '2016-01-06 16:15:55', '2015-10-21 11:56:56', 'ST JOSEPHS BETHLEHEM CHURCH', 'Chullickal', 'Chullickal, Cochin-682 005', '(0484) 2226793'),
(10, 'Parish', '2016-01-06 16:15:44', '2015-10-24 09:21:56', 'ST LAWRENCE CHURCH', 'Edakochi', 'Edakochi, Kerala, 682010', ''),
(11, 'Parish', '2015-10-30 07:17:42', '2015-10-30 07:17:42', 'STELLA MARIS CHURCH ', 'Willingdon Island', 'Willingdon Island, Cochin 682003', '(0484) 2666184'),
(12, 'Parish', '0000-00-00 00:00:00', '2015-12-21 18:30:00', 'ST ANTONYS CHURCH', 'Kannamaly', 'Kannamaly, Cochin- 682 008', '(0484) 2247452'),
(13, 'Parish', '2015-12-21 18:30:00', '2015-12-21 18:30:00', 'ST THOMAS THE APOSTLE CHURCH', 'San Thome', 'San Thome, Thoppumpady, Cochin-682 005', '(0484) 2232244'),
(14, 'Parish', '2016-01-06 16:16:05', '2015-12-22 09:11:33', 'ST LOUIS CHURCH ', 'Mundamvely', 'Mundamvely, Cochin-682 507', '(0484) 2231545'),
(15, 'Parish', '2015-12-22 09:12:19', '2015-12-22 09:12:19', 'ST FRANCIS ASSISI CHURCH', 'Kattiparambu', 'Kattiparambu, Kannamaly P.O, Cochin - 682 008', '(0484) 2247340'),
(16, 'Parish', '2015-12-22 09:13:17', '2015-12-22 09:13:17', 'ST JOSEPH CHURCH', 'Cheriyakadavu', 'Cheriyakadavu, Kannamaly PO,  Cochin-682 008', '(0484)2247436'),
(17, 'Parish', '2015-12-22 09:13:48', '2015-12-22 09:13:48', 'ST SEBASTIANS CHURCH', 'Chellanam', 'Chellanam, Cochin 682 008', '(0484) 2249870'),
(19, 'Parish', '2015-12-22 09:15:37', '2015-12-22 09:15:37', 'ST SEBASTIANS CHURCH', 'Palluruthy', 'Palluruthy, Cochin-682 005', '(0484) 2231338'),
(20, 'Parish', '2015-12-22 09:19:47', '2015-12-22 09:19:47', 'ST JOSEPHS CHURCH', 'Chirakkal', 'Chirakkal, Palluruthy, Cochin-682 006', '(0484) 2231354'),
(21, 'Parish', '2016-01-06 16:16:40', '2015-12-22 09:20:19', 'ST LAWRENCE CHURCH', 'Nambiampuram', 'Nambiampuram, Palluruthy, Cochin-682 006', '(0484)2232188'),
(22, 'Parish', '2016-01-06 16:16:29', '2015-12-22 09:21:45', 'ST THOMAS MORE CHURCH ', 'Palluruthy', 'Palluruthy, Cochin-682 006', ' (0484) 223 3622'),
(23, 'Parish', '2015-12-22 09:22:33', '2015-12-22 09:22:33', 'SANTA CRUZ CHURCH ', ' Perumpadappu', ' Perumpadappu, Cochin- 682 006', '(0484) 2231430 '),
(24, 'Parish', '2015-12-22 09:23:12', '2015-12-22 09:23:12', 'ST MARYS CHURCH', 'North Edacochin', 'North Edacochin, Cochin- 682 006', '(0484) 2327149'),
(25, 'Parish', '2015-12-22 09:24:21', '2015-12-22 09:24:21', 'ST JOSEPH CHURCH', 'MADURAKAMPANY ', 'Madurakampany, Palluruthy, Cochin-682 006', ''),
(26, 'Parish', '2015-12-22 09:25:16', '2015-12-22 09:25:16', 'SACRED HEART CHURCH ', 'Kumbalanghy', 'Kumbalanghy, Cochin-682007', '(0484) 2240191'),
(27, 'Parish', '2015-12-22 09:49:44', '2015-12-22 09:49:44', 'ST JOSEPH''S CHURCH ', 'North Kumbalanghy', ' North Kumbalanghy,Cochin - 682 007', '(0484) 2240112'),
(28, 'Parish', '2015-12-22 09:50:32', '2015-12-22 09:50:32', 'ST GEORGE CHURCH ', 'Pazhangad', 'Pazhangad, Kumbalanghy,  Cochin- 682 007', '(0484) 2240083'),
(29, 'Parish', '2015-12-22 09:51:15', '2015-12-22 09:51:15', 'ST PETERS CHURCH', 'Kumbalanghy', 'Kumbalanghy, Cochin- 682 007', '(0484) 2240040'),
(30, 'Parish', '2015-12-22 09:51:53', '2015-12-22 09:51:53', 'MARTIN DE PORES CHURCH', ' Kallanchery', ' Kallanchery, Kumbalanghy, Cochin- 682 007', '(0484) 2240448'),
(31, 'Parish', '2015-12-22 09:52:30', '2015-12-22 09:52:30', 'IMMACULATE CONCEPTION CHURCH', ' Ezhupunna North', ' Ezhupunna North, Alappuzha- 688 548', '(0478)2 872607'),
(32, 'Parish', '2016-01-06 16:16:18', '2015-12-22 09:53:15', 'ST SEBASTIANS CHURCH', 'Neendakara', 'Neendakara, EzhupunnaNorth,  Alappuzha- 688 548', '(0478) 2873646'),
(33, 'Parish', '2015-12-22 09:54:53', '2015-12-22 09:54:53', 'SAN JOSE ETTUMKAL ', 'Kumbalanghy', 'Kumbalanghy, Cochin-682 007', ''),
(34, 'Parish', '2015-12-22 09:55:26', '2015-12-22 09:55:26', 'HOLY MARYS CHURCH', 'AZHEEKKAKAM', 'AZHEEKKAKAM, Kumbalanghy, Cochin-682 007', ''),
(35, 'Parish', '2015-12-22 09:56:26', '2015-12-22 09:56:26', 'ST AUGUSTINE CHURCH ', 'Aroor', 'Aroor , Alappuzha- 688 534', '(0478) 2872223'),
(36, 'Parish', '2015-12-22 10:15:16', '2015-12-22 10:15:16', 'ST JOSEPH CHURCH', ' Kumbalam', ' Kumbalam, Cochin-682 506', '(0478) 2700165 '),
(37, 'Parish', '2015-12-22 10:16:19', '2015-12-22 10:16:19', 'ST ANTONYS CHURCH ', ' Arookutty', ' Arookutty, Paduapuram, Alappuzha', '(0478) 2873122  '),
(38, 'Parish', '2015-12-22 10:17:31', '2015-12-22 10:17:31', 'ST FRANCIS XAVIER CHURCH ', 'Eramallore', 'Eramallore, Cherthala- 688 533', '(0478) 2872229'),
(39, 'Parish', '2015-12-22 10:18:52', '2015-12-22 10:18:52', 'ST JOSEPH CHURCH ', 'Vallethode', 'Vallethode, Cherthala', '(0484) 2563117'),
(40, 'Parish', '2015-12-22 10:20:01', '2015-12-22 10:20:01', 'OUR LADY OF FATIMA CHURCH,', ' Kodamthuruth', ' Kodamthuruth, Kuthiathode P.O., Cherthala', '(0478) 2562017'),
(41, 'Parish', '2015-12-22 10:22:40', '2015-12-22 10:22:40', 'OUR LADY OF RANSOM CHURCH', 'Chandiroor P.O', 'Chandiroor P.O, Cherthala- 688 533', '(0478) - 2874217'),
(42, 'Parish', '2015-12-22 10:24:54', '2015-12-22 10:24:54', 'ST SEBASTIANS CHURCH', ' Karunyapuram', 'KARUNYAPURAM, Vallethode (Kailasam), Cherthala 688 550', ''),
(43, 'Parish', '2015-12-23 02:16:33', '2015-12-23 02:16:33', 'LITTLE FLOWER CHURCH', 'PERUMBALAM', 'PERUMBALAM , Cherthala- 688 533, Alappuzha', ''),
(44, 'Parish', '2015-12-23 02:17:09', '2015-12-23 02:17:09', 'OUR LADY OF PURIFICATION CHURCH', 'Thankey', 'Thankey, Vayalar West, Cherthala, Alappuzha- 688 529', '(0478) 2812065'),
(45, 'Parish', '2015-12-23 02:18:07', '2015-12-23 02:18:07', 'ST GEORGES CHURCH', 'Arthumkal', 'Arthumkal, Alapuzha- 688 530', '(0478) 2572403'),
(46, 'Parish', '2016-01-06 16:17:01', '2015-12-23 02:18:50', 'ST FRANCIS XAVIER''S CHURCH', 'Vayalar East', 'Vayalar East, Cherthala, Alapuzha- 688 536', '(0478) 2813477'),
(47, 'Parish', '2015-12-23 02:19:36', '2015-12-23 02:19:36', 'OUR LADY OF ASSUMPTION CHURCH ', 'Poomkavu,', 'Poomkavu, Mararikulam South , Alapuzha- 688 521', '(0478) 2258430 ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
