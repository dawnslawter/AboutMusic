-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2014 at 08:46 AM
-- Server version: 5.5.27-log
-- PHP Version: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aboutmusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE IF NOT EXISTS `child` (
  `MemberID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `First_Name` int(11) NOT NULL,
  `Last_Name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Link Kids to Parent';

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `Course_ID` int(20) NOT NULL,
  `Course_Name` int(20) NOT NULL,
  `Course_Type` int(20) NOT NULL,
  `Course_Description` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Course Table';

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(99) NOT NULL,
  `Role` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Checking of Role and Login';

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserName`, `Password`, `Role`) VALUES
('admin01', 'Ø]"š8®''ß±¨ÑÚt', 'admin'),
('member01', 'nvO‚—-©jüSŽ', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `member_data`
--

CREATE TABLE IF NOT EXISTS `member_data` (
  `UserName` varchar(20) NOT NULL,
  `Firstname` text NOT NULL,
  `Lastname` text NOT NULL,
  `MobileNo` int(10) NOT NULL,
  `TelNo` int(10) NOT NULL,
  `Email` varchar(99) NOT NULL,
  `Address1` varchar(99) NOT NULL,
  `Address2` varchar(99) NOT NULL,
  `Address3` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Member Particulars';

--
-- Dumping data for table `member_data`
--

INSERT INTO `member_data` (`UserName`, `Firstname`, `Lastname`, `MobileNo`, `TelNo`, `Email`, `Address1`, `Address2`, `Address3`) VALUES
('member01', 'Jun Wei', 'Soh', 12345678, 87654321, 'junwei@gmail.com', 'CCK Ave 7', 'Blk 489 #99-08', 'S(680489)');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE IF NOT EXISTS `price` (
  `course_id` varchar(20) NOT NULL,
  `weekday_price` int(11) NOT NULL,
  `weekend_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Price to Course';

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `payment_done` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Student to Course';

-- --------------------------------------------------------

--
-- Table structure for table `staff_data`
--

CREATE TABLE IF NOT EXISTS `staff_data` (
  `staff_id` varchar(20) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `mobile_no` int(10) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Staff particulars';

--
-- Dumping data for table `staff_data`
--

INSERT INTO `staff_data` (`staff_id`, `first_name`, `last_name`, `mobile_no`, `email`) VALUES
('admin01', 'Jeryl', 'Teo', 96968095, 'ffantasyviiclouds@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE IF NOT EXISTS `teaching` (
  `staff_id` varchar(20) NOT NULL,
  `course_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='teaching';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
