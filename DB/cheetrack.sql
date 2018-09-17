-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2018 at 05:01 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cheetrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `backedupcheetadata`
--

CREATE TABLE IF NOT EXISTS `backedupcheetadata` (
  `backupProcessID` int(11) NOT NULL,
  `CheetahTrackingID` int(11) NOT NULL,
  `cheetaName` int(11) NOT NULL,
  `conservationstatus` int(11) NOT NULL,
  `species` int(11) NOT NULL,
  `origin_and_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cheetah`
--

CREATE TABLE IF NOT EXISTS `cheetah` (
  `cheetah_id` int(11) NOT NULL AUTO_INCREMENT,
  `dna_signature` varchar(30) NOT NULL,
  `color_coat` varchar(30) NOT NULL,
  `phy_xtics` varchar(30) NOT NULL,
  `deformations` varchar(30) DEFAULT NULL,
  `birthmarks` varchar(30) DEFAULT NULL,
  `brief_history` varchar(30) NOT NULL,
  `game_center` int(11) NOT NULL,
  `origin` varchar(20) NOT NULL,
  PRIMARY KEY (`cheetah_id`),
  KEY `game_center` (`game_center`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cheetahlocationtracking`
--

CREATE TABLE IF NOT EXISTS `cheetahlocationtracking` (
  `cheetahTrackingID` int(11) NOT NULL,
  `cheetahName` int(11) NOT NULL,
  `GamePark` int(11) NOT NULL,
  `MapLocation` int(11) NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cheetahsinillegaltrade`
--

CREATE TABLE IF NOT EXISTS `cheetahsinillegaltrade` (
  `confiscatedLive` int(200) NOT NULL,
  `confiscatedProducts` int(200) NOT NULL,
  `inMiddleEast` int(200) NOT NULL,
  `inEastAfrica` int(200) NOT NULL,
  `inSouthernAfrica` int(200) NOT NULL,
  `inSouthernAsia` int(200) NOT NULL,
  `inAmericas` int(200) NOT NULL,
  `inEurope` int(200) NOT NULL,
  `inAsia` int(200) NOT NULL,
  `inOceania` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cheetahstats`
--

CREATE TABLE IF NOT EXISTS `cheetahstats` (
  `totalCheetahs` int(11) NOT NULL,
  `recovered` int(11) NOT NULL,
  `traficked` int(11) NOT NULL,
  `gameparks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detectedbyfeatures`
--

CREATE TABLE IF NOT EXISTS `detectedbyfeatures` (
  `processID` int(10) NOT NULL,
  `cheetahTrackingID` varchar(10) NOT NULL,
  `cheetahName` varchar(10) NOT NULL,
  `ConservationStatus` varchar(100) NOT NULL,
  `origin_and_history` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gamecentres`
--

CREATE TABLE IF NOT EXISTS `gamecentres` (
  `center_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `license` int(11) NOT NULL,
  `phy_area` double NOT NULL,
  `exec_director` varchar(30) NOT NULL,
  PRIMARY KEY (`center_id`),
  KEY `license` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `imageID` int(10) NOT NULL,
  `processingData` tinyint(100) NOT NULL,
  `imagetype` varchar(100) NOT NULL,
  `imageName` varchar(100) NOT NULL,
  `size` int(10) NOT NULL,
  `file` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `importedcheetahdata`
--

CREATE TABLE IF NOT EXISTS `importedcheetahdata` (
  `datasets` int(10) NOT NULL,
  `images` blob NOT NULL,
  `videos` blob NOT NULL,
  `PDFs` blob NOT NULL,
  `XLS` blob NOT NULL,
  `DOCX` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incaptivity`
--

CREATE TABLE IF NOT EXISTS `incaptivity` (
  `cheetahID` int(11) NOT NULL,
  `cheetah_Name` int(11) NOT NULL,
  `belongsTo` int(11) NOT NULL,
  `Owner_Agency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE IF NOT EXISTS `license` (
  `license_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(2) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `issue_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `processedcheetahdata`
--

CREATE TABLE IF NOT EXISTS `processedcheetahdata` (
  `ProcessID` int(20) NOT NULL,
  `ProcessingDate` int(20) NOT NULL,
  `Cheetah_name` int(20) NOT NULL,
  `Game_Center` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sight_report`
--

CREATE TABLE IF NOT EXISTS `sight_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(30) NOT NULL,
  `image` blob,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `clearence_level` int(11) NOT NULL,
  `game_center` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `game_center` (`game_center`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `FullName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `FullName`) VALUES
(1, 'cheetrack', 'cheetrack', 'Cheetrack Administra'),
(2, 'shafiq', 'shafiq', 'Lutaaya Shafiq'),
(1, 'cheetrack', 'cheetrack', 'Cheetrack Administra'),
(2, 'shafiq', 'shafiq', 'Lutaaya Shafiq');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cheetah`
--
ALTER TABLE `cheetah`
  ADD CONSTRAINT `cheetah_ibfk_2` FOREIGN KEY (`game_center`) REFERENCES `gamecentres` (`center_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gamecentres`
--
ALTER TABLE `gamecentres`
  ADD CONSTRAINT `gamecentres_ibfk_1` FOREIGN KEY (`license`) REFERENCES `license` (`license_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`game_center`) REFERENCES `gamecentres` (`center_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
