-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2014 at 05:10 AM
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
-- Table structure for table `authassignment`
--

DROP TABLE IF EXISTS `authassignment`;
CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('admin', '17', NULL, 'N;'),
('member', '16', NULL, 'N;'),
('member', '20', NULL, 'N;'),
('member', '21', NULL, 'N;'),
('member', '22', NULL, 'N;'),
('member', '23', NULL, 'N;'),
('member', '24', NULL, 'N;'),
('member', '6', NULL, 'N;'),
('member', '7', NULL, 'N;'),
('staff', '25', NULL, 'N;'),
('staff', '26', NULL, 'N;'),
('superadmin', '5', NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitem`
--

DROP TABLE IF EXISTS `authitem`;
CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, 'admin user', NULL, 'N;'),
('manageCourse', 0, 'Course Management', NULL, 'N;'),
('ManageLesson', 0, 'Lesson Management', NULL, 'N;'),
('manageUser', 0, 'User Management', NULL, 'N;'),
('member', 2, 'standard member user', '', 'N;'),
('staff', 2, 'staff user', NULL, 'N;'),
('superadmin', 2, 'Main Admin user account', NULL, 'N;'),
('updateOwnPasswords', 1, 'update own password', 'return Yii::app()->user->id==$params["post"]->authID;', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitemchild`
--

DROP TABLE IF EXISTS `authitemchild`;
CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitemchild`
--

INSERT INTO `authitemchild` (`parent`, `child`) VALUES
('admin', 'manageCourse'),
('superadmin', 'manageCourse'),
('admin', 'ManageLesson'),
('superadmin', 'ManageLesson'),
('admin', 'manageUser'),
('superadmin', 'manageUser');

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
CREATE TABLE IF NOT EXISTS `child` (
  `PC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Member_ID` int(11) NOT NULL,
  `Child_ID` int(11) NOT NULL,
  `First_Name` text NOT NULL,
  `Last_Name` text NOT NULL,
  PRIMARY KEY (`PC_ID`),
  KEY `fk_child` (`Member_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`PC_ID`, `Member_ID`, `Child_ID`, `First_Name`, `Last_Name`) VALUES
(1, 6, 1, 'Ying Jie', 'Soh'),
(2, 6, 2, 'Crystal', 'Soh'),
(3, 7, 1, 'Alvis', 'Ang'),
(4, 7, 2, 'Darren', 'Ang'),
(5, 22, 1, 'Chee Seong', 'Tan'),
(6, 6, 3, 'Lina', 'Soh'),
(7, 24, 1, 'Rupert', 'Tan'),
(8, 24, 2, 'Justin', 'Tan');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `Course_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Course_Name` text NOT NULL,
  `Course_Type` int(11) NOT NULL,
  `Course_Description` text NOT NULL,
  PRIMARY KEY (`Course_ID`),
  KEY `fk_type` (`Course_Type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Course_Name`, `Course_Type`, `Course_Description`) VALUES
(1, 'Children Piano', 1, 'Learning to play a musical instrument requires complex co-ordination and helps to develop a multitude of intelligence. Research has shown that learning music early has a lasting impact on brain development.\r\nGive your child a quality music education; bring out the best through uncovering his/ her musical potential!'),
(2, 'Guitar', 2, 'The guitar is a lyrical and versatile instrument. You can play solo, or accompanying someone. You can write parts for different voices, and play them all at once. It is portable, so you can bring it along everywhere you go.\r\nYou make direct contact with the source of the sound - the strings. Few instruments give you that kind of intimacy as the guitar. And it is a great tool for composition!'),
(3, 'Classical Piano', 1, 'Learning piano helps to develop a multitude of intelligence. A versatile instrument, the piano is also the gateway to learn musicianship, arrangement, improvisation and composition.\r\nWhile technically demanding, learning to play the classical piano can be both fun and rewarding.'),
(4, 'Pop Piano', 1, 'Ever wanted to master the piano but don''t know how?\r\nDo you think it is too difficult to learn and don''t know where to start?\r\nAs challenging as it may seem, you will master the instrument in no time. Our dedicated teachers are committed to deliver results in your playing.\r\nLearn to play the piano the fun and pop way. Swing to the melodies of your heart. No matter what your level or skills, playing the piano is both achievable and enjoyable.'),
(5, 'Drums', 3, 'Ask anyone and they''ll agree that drumming is fun and cool. It energises you and relieves stress, leaving you upbeat for the rest of the week.\r\nFeel the rhythm under your fingertips as you drum away to your favourite songs!'),
(6, 'Junior Drums', 3, 'Drumming is cool and fun! Ever thought of being the drummer and form your own band?\r\nDrum away to your favourite songs while feel the rhythm under your fingertips.'),
(7, 'Ear Training', 4, 'If there is ONE common trait among all musicians, it must be a pair of trained ears!\r\nEar training is the cornerstone of every musician. Not acquiring the musician''s ears is like painting blindly.');

-- --------------------------------------------------------

--
-- Table structure for table `course_type`
--

DROP TABLE IF EXISTS `course_type`;
CREATE TABLE IF NOT EXISTS `course_type` (
  `Type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Course_Type` text NOT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `course_type`
--

INSERT INTO `course_type` (`Type_ID`, `Course_Type`) VALUES
(1, 'Piano'),
(2, 'Guitar'),
(3, 'Drums'),
(4, 'Ear Training/Music Theory'),
(5, 'Contemporary Christian'),
(6, 'Violin');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(99) NOT NULL,
  `role` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roleid` (`role`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Checking of Role and Login' AUTO_INCREMENT=27 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`) VALUES
(5, 'admin01', 'abQDw5cTnJoPU', 1),
(6, 'member01', 'abrBPGLQbAtJQ', 2),
(7, 'member02', 'abwkQLXT5/zZg', 2),
(22, 'member09', 'abW141.PWf/FE', 2),
(23, 'member10', 'abW141.PWf/FE', 2),
(24, 'member11', 'aboi45SI0s85Q', 2),
(25, 'staff01', 'abKNfOz/K2ng6', 3),
(26, 'staff02', 'ab4O8XznTfWNA', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE IF NOT EXISTS `newsletter` (
  `Img_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Img_Name` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Date_Uploaded` datetime NOT NULL,
  PRIMARY KEY (`Img_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`Img_ID`, `Img_Name`, `Image`, `Date_Uploaded`) VALUES
(5, 'trial', '4001-AY1213s2_EST_Schedule_24Jan13.pdf', '0000-00-00 00:00:00'),
(6, 'trial test 2', '5050-20200170.pdf', '0000-00-00 00:00:00'),
(8, 'Trial 3', '5137-AY1213s2_EST_Schedule_24Jan13.pdf', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE IF NOT EXISTS `price` (
  `course_id` varchar(20) NOT NULL,
  `weekday_price` int(11) NOT NULL,
  `weekend_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Price to Course';

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `description`) VALUES
(1, 'admin'),
(2, 'member'),
(3, 'staff'),
(4, 'special staff');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Student_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Member_ID` int(11) NOT NULL,
  `Child_ID` int(11) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Member_ID`, `Child_ID`) VALUES
(1, 23, 0),
(2, 6, 1),
(3, 6, 2),
(4, 6, 3),
(5, 22, 0),
(6, 22, 1),
(7, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

DROP TABLE IF EXISTS `studio`;
CREATE TABLE IF NOT EXISTS `studio` (
  `Studio_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Capacity` int(11) NOT NULL,
  `Studio_Name` varchar(99) NOT NULL,
  PRIMARY KEY (`Studio_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`Studio_ID`, `Capacity`, `Studio_Name`) VALUES
(1, 5, 'Studio 2'),
(2, 5, 'Studio 3'),
(3, 4, 'Studio 4');

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

DROP TABLE IF EXISTS `teaching`;
CREATE TABLE IF NOT EXISTS `teaching` (
  `T_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_ID` int(11) NOT NULL,
  `Course_Type` int(11) NOT NULL,
  PRIMARY KEY (`T_ID`),
  KEY `fk_staff` (`Staff_ID`),
  KEY `fk_coursetype` (`Course_Type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `teaching`
--

INSERT INTO `teaching` (`T_ID`, `Staff_ID`, `Course_Type`) VALUES
(1, 25, 1),
(2, 26, 1),
(3, 25, 4),
(4, 26, 3),
(5, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `Lesson_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_ID` int(11) NOT NULL,
  `Course_ID` int(11) NOT NULL,
  `Venue` int(11) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Date_Scheduled` date NOT NULL,
  `Time_Scheduled` time NOT NULL,
  PRIMARY KEY (`Lesson_ID`),
  KEY `fk_timetablestudio` (`Venue`),
  KEY `fk_timetablecourse` (`Course_ID`),
  KEY `fk_timetablelogin` (`Staff_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`Lesson_ID`, `Staff_ID`, `Course_ID`, `Venue`, `Duration`, `Date_Scheduled`, `Time_Scheduled`) VALUES
(1, 25, 1, 1, 1, '2014-07-24', '11:50:00'),
(2, 25, 1, 2, 2, '2014-07-21', '13:50:00'),
(3, 25, 1, 3, 1, '2014-07-26', '11:50:00'),
(4, 25, 1, 2, 1, '2014-07-22', '11:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
CREATE TABLE IF NOT EXISTS `user_data` (
  `User_ID` int(11) NOT NULL,
  `First_Name` text NOT NULL,
  `Last_Name` text NOT NULL,
  `MobileNo` int(10) NOT NULL,
  `TelNo` int(10) NOT NULL,
  `Email` varchar(99) NOT NULL,
  `Address1` varchar(99) NOT NULL,
  `Address2` varchar(99) NOT NULL,
  `Address3` varchar(99) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Member Particulars';

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`User_ID`, `First_Name`, `Last_Name`, `MobileNo`, `TelNo`, `Email`, `Address1`, `Address2`, `Address3`) VALUES
(5, 'Jeryl', 'Teo', 9696, 6877, 'ffantasy@hotmail.com', '', '', ''),
(6, 'Jun Wei', 'Soh', 12345, 123456, '234124@gmail.com', 'Blk 425', 'Ave5', '#06-1678'),
(7, 'Clement', 'Ang', 123897, 9821743, 'adjfoij@hotmail.com', 'blk345', 'Ave 4', '#09-234'),
(22, 'Wei Kian', 'Tan', 98989, 123123, 'weikian@hotmail.com', 'blk879', 'Ave 34', '#09'),
(23, 'Wally', 'Goh', 123, 123423, 'ffnt@hotmail.com', 'Choa Chu kang', 'ave 5', '#09-178'),
(24, 'Alvis', 'Lim', 96968, 23424, 'Falci@hotmail.com', 'blk97', 'Ave 56', '#091'),
(25, 'Hui Xian', 'Lim', 34578, 23457, 'les@gmail.com', 'Block 234', 'Ave 5', '#09-888'),
(26, 'Shan Qin', 'Sim', 1345345, 2147483647, 'fagag@hotmail.com', 'Blk12938', 'Ave203490', '#092-1238');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authassignment`
--
ALTER TABLE `authassignment`
  ADD CONSTRAINT `authassignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authitemchild`
--
ALTER TABLE `authitemchild`
  ADD CONSTRAINT `authitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `fk_child` FOREIGN KEY (`Member_ID`) REFERENCES `login` (`id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_type` FOREIGN KEY (`Course_Type`) REFERENCES `course_type` (`Type_ID`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_roleid` FOREIGN KEY (`role`) REFERENCES `roles` (`ID`);

--
-- Constraints for table `teaching`
--
ALTER TABLE `teaching`
  ADD CONSTRAINT `fk_coursetype` FOREIGN KEY (`Course_Type`) REFERENCES `course_type` (`Type_ID`),
  ADD CONSTRAINT `fk_staff` FOREIGN KEY (`Staff_ID`) REFERENCES `login` (`id`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `fk_timetablecourse` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `fk_timetablelogin` FOREIGN KEY (`Staff_ID`) REFERENCES `login` (`id`),
  ADD CONSTRAINT `fk_timetablestudio` FOREIGN KEY (`Venue`) REFERENCES `studio` (`Studio_ID`);

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `fk_logmember` FOREIGN KEY (`User_ID`) REFERENCES `login` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
