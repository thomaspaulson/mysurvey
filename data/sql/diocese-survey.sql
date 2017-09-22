-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2016 at 11:41 AM
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
-- Table structure for table `family`
--

CREATE TABLE IF NOT EXISTS `family` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Family') DEFAULT 'Family',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `HouseNo` varchar(255) DEFAULT NULL,
  `ParishID` int(11) NOT NULL DEFAULT '0',
  `IsPanchayat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `IsMunicipality` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `IsCorporation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `BlockNo` int(11) NOT NULL DEFAULT '0',
  `UnitNo` int(11) NOT NULL DEFAULT '0',
  `FamilyNo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParishID` (`ParishID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Address`, `Pincode`, `HouseNo`, `ParishID`, `IsPanchayat`, `IsMunicipality`, `IsCorporation`, `BlockNo`, `UnitNo`, `FamilyNo`) VALUES
(1, 'Family', '2016-01-06 08:04:17', '2016-01-05 15:22:04', 'Mulleparambil House', 'Edakochi', '682010', NULL, 10, 0, 0, 1, 3, 21, 27),
(2, 'Family', '2016-01-06 08:18:44', '2016-01-06 08:05:43', 'Mulleparambil House', 'Near Edakochi Bus Stand, Edakochi, Kochi,', '682010', NULL, 10, 0, 0, 1, 0, 0, 0),
(3, 'Family', '2016-01-06 08:12:37', '2016-01-06 08:12:37', 'Mulleparambil House', 'Edackochi, Kochi', '682010', NULL, 10, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `familymember`
--

CREATE TABLE IF NOT EXISTS `familymember` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('FamilyMember') DEFAULT 'FamilyMember',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` varchar(2) DEFAULT NULL,
  `MartialStatus` varchar(2) DEFAULT NULL,
  `FamilyID` int(11) NOT NULL DEFAULT '0',
  `HoldsPassport` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HoldsBankAccount` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HoldsDrivingLicence` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `BloodGroup` enum('O +','O -','A +','A -','B +','B -','AB +','AB -','NA') DEFAULT 'O +',
  `Relation` enum('Guardian','Father','Mother','Son','Daughter','Wife','Husband','Brother','Sister','Inlaw','Grandfather','Grandmother','Grandson','Granddaughter') DEFAULT 'Guardian',
  PRIMARY KEY (`ID`),
  KEY `FamilyID` (`FamilyID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `familymember`
--

INSERT INTO `familymember` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `DateOfBirth`, `Gender`, `MartialStatus`, `FamilyID`, `HoldsPassport`, `HoldsBankAccount`, `HoldsDrivingLicence`, `BloodGroup`, `Relation`) VALUES
(1, 'FamilyMember', '2016-01-06 09:16:39', '2016-01-06 07:19:01', 'Thomas Paulson', '1982-03-29', 'm', 'm', 1, 1, 1, 1, 'O +', 'Son'),
(2, 'FamilyMember', '2016-01-06 09:08:06', '2016-01-06 09:08:06', 'Preethy P P', '1988-06-30', 'f', 'm', 1, 0, 0, 0, 'O +', 'Inlaw');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2016-01-04 22:01:34', '2016-01-04 22:01:34', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(2, 'Image', '2016-01-04 22:01:34', '2016-01-04 22:01:34', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2016-01-04 17:31:33', '2016-01-04 17:31:33', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2016-01-04 17:31:33', '2016-01-04 17:31:33', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE IF NOT EXISTS `group_members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

CREATE TABLE IF NOT EXISTS `group_roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE IF NOT EXISTS `loginattempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2016-01-13 11:37:28', '2016-01-04 17:31:33', 'Default Admin', NULL, 'admin', 'b7c0cdf79918a13c07f5564934265ec45e9abe6f', '2016-01-16 11:37:28', '$2y$10$253a4c79d399ae9e821e9umDc.wRV8FNQt86eZmOjDcpAn/vSpWma', NULL, 4, '2016-01-13 16:08:23', NULL, NULL, 'blowfish', '10$253a4c79d399ae9e821e93', NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

CREATE TABLE IF NOT EXISTS `memberpassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `memberpassword`
--

INSERT INTO `memberpassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2016-01-04 17:31:34', '2016-01-04 17:31:34', '$2y$10$253a4c79d399ae9e821e9umDc.wRV8FNQt86eZmOjDcpAn/vSpWma', '10$253a4c79d399ae9e821e93', 'blowfish', 1);

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
(6, 'Parish', '2015-10-30 04:24:00', '2015-10-21 07:56:15', 'ST. PETER & PAUL', 'Amaravathy', 'Amaravathy, Cochin- 682 001', '(0484) 2218724'),
(8, 'Parish', '2015-10-30 07:16:11', '2015-10-21 11:55:22', 'HOLY FAMILY CHURCH', 'Nazareth', 'Nazareth, Cochin-682 002', '(0484) 2220180'),
(9, 'Parish', '2015-10-30 07:16:54', '2015-10-21 11:56:56', 'ST. JOSEPHS BETHLEHEM CHURCH', 'Chullickal', 'Chullickal, Cochin-682 005', '(0484) 2226793'),
(10, 'Parish', '2015-12-22 09:05:22', '2015-10-24 09:21:56', 'ST. LAWRENCE CHURCH', 'Edakochi', 'Edakochi, Kerala, 682010', ''),
(11, 'Parish', '2015-10-30 07:17:42', '2015-10-30 07:17:42', 'STELLA MARIS CHURCH ', 'Willingdon Island', 'Willingdon Island, Cochin 682003', '(0484) 2666184'),
(12, 'Parish', '0000-00-00 00:00:00', '2015-12-21 18:30:00', 'ST ANTONYS CHURCH', 'Kannamaly', 'Kannamaly, Cochin- 682 008', '(0484) 2247452'),
(13, 'Parish', '2015-12-21 18:30:00', '2015-12-21 18:30:00', 'ST THOMAS THE APOSTLE CHURCH', 'San Thome', 'San Thome, Thoppumpady, Cochin-682 005', '(0484) 2232244'),
(14, 'Parish', '2015-12-22 09:11:33', '2015-12-22 09:11:33', 'ST. LOUIS CHURCH ', 'Mundamvely', 'Mundamvely, Cochin-682 507', '(0484) 2231545'),
(15, 'Parish', '2015-12-22 09:12:19', '2015-12-22 09:12:19', 'ST FRANCIS ASSISI CHURCH', 'Kattiparambu', 'Kattiparambu, Kannamaly P.O, Cochin - 682 008', '(0484) 2247340'),
(16, 'Parish', '2015-12-22 09:13:17', '2015-12-22 09:13:17', 'ST JOSEPH CHURCH', 'Cheriyakadavu', 'Cheriyakadavu, Kannamaly PO,  Cochin-682 008', '(0484)2247436'),
(17, 'Parish', '2015-12-22 09:13:48', '2015-12-22 09:13:48', 'ST SEBASTIANS CHURCH', 'Chellanam', 'Chellanam, Cochin 682 008', '(0484) 2249870'),
(19, 'Parish', '2015-12-22 09:15:37', '2015-12-22 09:15:37', 'ST SEBASTIANS CHURCH', 'Palluruthy', 'Palluruthy, Cochin-682 005', '(0484) 2231338'),
(20, 'Parish', '2015-12-22 09:19:47', '2015-12-22 09:19:47', 'ST JOSEPHS CHURCH', 'Chirakkal', 'Chirakkal, Palluruthy, Cochin-682 006', '(0484) 2231354'),
(21, 'Parish', '2015-12-22 09:20:56', '2015-12-22 09:20:19', 'ST. LAWRENCE CHURCH', 'Nambiampuram', 'Nambiampuram, Palluruthy, Cochin-682 006', '(0484)2232188'),
(22, 'Parish', '2015-12-22 09:21:45', '2015-12-22 09:21:45', 'ST. THOMAS MORE CHURCH ', 'Palluruthy', 'Palluruthy, Cochin-682 006', ' (0484) 223 3622'),
(23, 'Parish', '2015-12-22 09:22:33', '2015-12-22 09:22:33', 'SANTA CRUZ CHURCH ', ' Perumpadappu', ' Perumpadappu, Cochin- 682 006', '(0484) 2231430 '),
(24, 'Parish', '2015-12-22 09:23:12', '2015-12-22 09:23:12', 'ST MARYS CHURCH', 'North Edacochin', 'North Edacochin, Cochin- 682 006', '(0484) 2327149'),
(25, 'Parish', '2015-12-22 09:24:21', '2015-12-22 09:24:21', 'ST JOSEPH CHURCH', 'MADURAKAMPANY ', 'Madurakampany, Palluruthy, Cochin-682 006', ''),
(26, 'Parish', '2015-12-22 09:25:16', '2015-12-22 09:25:16', 'SACRED HEART CHURCH ', 'Kumbalanghy', 'Kumbalanghy, Cochin-682007', '(0484) 2240191'),
(27, 'Parish', '2015-12-22 09:49:44', '2015-12-22 09:49:44', 'ST JOSEPH''S CHURCH ', 'North Kumbalanghy', ' North Kumbalanghy,Cochin - 682 007', '(0484) 2240112'),
(28, 'Parish', '2015-12-22 09:50:32', '2015-12-22 09:50:32', 'ST GEORGE CHURCH ', 'Pazhangad', 'Pazhangad, Kumbalanghy,  Cochin- 682 007', '(0484) 2240083'),
(29, 'Parish', '2015-12-22 09:51:15', '2015-12-22 09:51:15', 'ST PETERS CHURCH', 'Kumbalanghy', 'Kumbalanghy, Cochin- 682 007', '(0484) 2240040'),
(30, 'Parish', '2015-12-22 09:51:53', '2015-12-22 09:51:53', 'MARTIN DE PORES CHURCH', ' Kallanchery', ' Kallanchery, Kumbalanghy, Cochin- 682 007', '(0484) 2240448'),
(31, 'Parish', '2015-12-22 09:52:30', '2015-12-22 09:52:30', 'IMMACULATE CONCEPTION CHURCH', ' Ezhupunna North', ' Ezhupunna North, Alappuzha- 688 548', '(0478)2 872607'),
(32, 'Parish', '2015-12-22 09:53:15', '2015-12-22 09:53:15', 'ST. SEBASTIANS CHURCH', 'Neendakara', 'Neendakara, EzhupunnaNorth,  Alappuzha- 688 548', '(0478) 2873646'),
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
(46, 'Parish', '2015-12-23 02:18:50', '2015-12-23 02:18:50', 'ST. FRANCIS XAVIER''S CHURCH', '  Vayalar East', 'Vayalar East, Cherthala, Alapuzha- 688 536', '(0478) 2813477'),
(47, 'Parish', '2015-12-23 02:19:36', '2015-12-23 02:19:36', 'OUR LADY OF ASSUMPTION CHURCH ', 'Poomkavu,', 'Poomkavu, Mararikulam South , Alapuzha- 688 521', '(0478) 2258430 ');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2016-01-04 17:31:33', '2016-01-04 17:31:33', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2016-01-04 17:31:33', '2016-01-04 17:31:33', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2016-01-04 17:31:33', '2016-01-04 17:31:33', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2016-01-04 17:31:33', '2016-01-04 17:31:33', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2016-01-04 17:31:33', '2016-01-04 17:31:33', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

CREATE TABLE IF NOT EXISTS `permissionrole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

CREATE TABLE IF NOT EXISTS `permissionrolecode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
