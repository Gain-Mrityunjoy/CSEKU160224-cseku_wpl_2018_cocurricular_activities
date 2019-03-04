-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 04, 2019 at 06:19 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
CREATE TABLE IF NOT EXISTS `mytable` (
  `serial` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) DEFAULT NULL,
  `actName` varchar(45) DEFAULT NULL,
  `Organizer` varchar(100) DEFAULT NULL,
  `venu` varchar(200) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`serial`, `category`, `actName`, `Organizer`, `venu`, `description`, `date`, `time`) VALUES
(3, 'Cricket', 'CSE vs ECE', 'CSE', 'Khaja field', '				CSE in khaja end & ECE in kotka end							', '2018-10-22', '3.30 PM'),
(4, 'Football', 'BGE vs PHY', 'PHY', 'Khaja field', '		BGE in khaja end & PHY in kotka end				', '2018-10-23', '10.30 AM'),
(5, 'Badminton', 'STAT vs AT', 'STAT', 'Khaja field', '		STAT in khaja end & AT in kotka end										', '2018-09-30', '3.30 PM'),
(6, 'Eassy competition', 'STAT vs ECE', 'ECE', 'AB-01', '		About Father of nation				', '2018-10-31', '9.00 AM'),
(7, 'Tennis', 'STAT vs ECE', 'CSE', 'VC field', '			Semifinal			', '2018-10-31', '10.30 AM'),
(8, 'Basketball', 'FMRT vs AT', 'FMRT', 'Khaba hall field', '	Friendly match											', '2018-10-22', '11.00 AM'),
(9, 'Badminton', 'CSE vs ECE', 'ECE', 'VC field', '		Friendly match				', '2018-11-01', '4.00 PM'),
(10, 'Cricket', 'FMRT vs AT', 'BAD', 'Khaja field', '			Quarter Final			', '2018-10-09', '10.30 AM'),
(11, 'Debate', 'STAT vs ECE', 'MATH', 'AB-01', '		1st round				', '2018-10-16', '10.50 AM'),
(12, 'Basketball', 'FMRT vs AT', 'AT', 'Khaba hall field', '	Practice match					', '2018-10-30', '11.00 AM'),
(13, 'Basketball', 'STAT vs AT', 'BAD', 'Khaba hall field', '			Practice match			', '2018-10-31', '9.00 AM'),
(14, 'Cricket', 'FMRT vs AT', 'AT', 'Khaja field', '		1st round', '2018-11-08', '2.00 PM'),
(15, 'Cricket', 'STAT vs AT', 'MATH', 'Khaja field', '		1st round				', '2018-11-01', '9.30 AM'),
(16, 'Recitation', 'Open for all', 'STAT', 'Liyakat Ali milanaytan', '		Anyone of the University can participate.There      is 3 different round.', '2018-11-20', '9.00 AM'),
(17, 'Eassy competition', 'Open for all', 'CSE', 'Liyakat Ali milanaytan', '		Anyone of the university can participate.				', '2018-11-21', '9.00 AM'),
(18, 'Cricket', 'STAT vs AT', 'CSE', 'Khaja field', '			2nd round			', '2018-11-18', '3.30 PM'),
(19, 'Cricket', 'CSE vs ECE', 'CSE', 'Khaja field', '		Grand Finale				', '2018-11-29', '11.30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

DROP TABLE IF EXISTS `reg_course`;
CREATE TABLE IF NOT EXISTS `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

DROP TABLE IF EXISTS `reg_course_resource`;
CREATE TABLE IF NOT EXISTS `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

DROP TABLE IF EXISTS `reg_course_sessional_type`;
CREATE TABLE IF NOT EXISTS `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

DROP TABLE IF EXISTS `reg_course_student_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', NULL, 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', NULL, NULL, NULL, NULL, 'pending'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', NULL, 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', NULL, NULL, NULL, NULL, 'pending'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

DROP TABLE IF EXISTS `reg_course_teacher`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

DROP TABLE IF EXISTS `reg_course_teacher_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

DROP TABLE IF EXISTS `reg_course_type`;
CREATE TABLE IF NOT EXISTS `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

DROP TABLE IF EXISTS `reg_registration_session`;
CREATE TABLE IF NOT EXISTS `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

DROP TABLE IF EXISTS `reg_term`;
CREATE TABLE IF NOT EXISTS `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

DROP TABLE IF EXISTS `reg_year`;
CREATE TABLE IF NOT EXISTS `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

DROP TABLE IF EXISTS `rms_course_marks_result`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

DROP TABLE IF EXISTS `rms_course_marks_result_publish`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

DROP TABLE IF EXISTS `rms_course_marks_tests`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '17,25,0'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '25,20,0'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

DROP TABLE IF EXISTS `rms_grade_setup`;
CREATE TABLE IF NOT EXISTS `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

DROP TABLE IF EXISTS `rms_marks_setup`;
CREATE TABLE IF NOT EXISTS `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(100) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `categoryName`) VALUES
(1, 'Cricket'),
(2, 'Football'),
(3, 'Badminton'),
(4, 'Debate'),
(5, 'Eassy competition'),
(8, 'Tennis'),
(7, 'Basketball'),
(9, 'Recitation'),
(10, 'Hockey'),
(11, 'Chess');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organizer`
--

DROP TABLE IF EXISTS `tbl_organizer`;
CREATE TABLE IF NOT EXISTS `tbl_organizer` (
  `org_id` int(100) NOT NULL AUTO_INCREMENT,
  `organizerName` varchar(100) NOT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_organizer`
--

INSERT INTO `tbl_organizer` (`org_id`, `organizerName`) VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'BAD'),
(4, 'MATH'),
(10, 'AT'),
(6, 'STAT'),
(7, 'PHY'),
(8, 'BGE'),
(9, 'FMRT'),
(11, 'CHEM'),
(12, 'HRM');

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

DROP TABLE IF EXISTS `ums_discipline`;
CREATE TABLE IF NOT EXISTS `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE IF NOT EXISTS `ums_permission` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=1357 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(1225, 'COURSE_C', 'COURSE_C', 'COURSE'),
(1226, 'COURSE_R', 'COURSE_R', 'COURSE'),
(1227, 'COURSE_U', 'COURSE_U', 'COURSE'),
(1228, 'COURSE_D', 'COURSE_D', 'COURSE'),
(1229, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(1230, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(1231, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(1232, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(1233, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(1234, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(1235, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(1236, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(1237, 'CLUB_C', 'CLUB_C', 'CLUB'),
(1238, 'CLUB_R', 'CLUB_R', 'CLUB'),
(1239, 'CLUB_U', 'CLUB_U', 'CLUB'),
(1240, 'CLUB_D', 'CLUB_D', 'CLUB'),
(1241, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(1242, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(1243, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(1244, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(1245, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(1246, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(1247, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(1248, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(1249, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(1250, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(1251, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(1252, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(1253, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(1254, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(1255, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(1256, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(1257, 'FILE_C', 'FILE_C', 'FILE'),
(1258, 'FILE_R', 'FILE_R', 'FILE'),
(1259, 'FILE_U', 'FILE_U', 'FILE'),
(1260, 'FILE_D', 'FILE_D', 'FILE'),
(1261, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(1262, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(1263, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(1264, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(1265, 'POSITION_C', 'POSITION_C', 'POSITION'),
(1266, 'POSITION_R', 'POSITION_R', 'POSITION'),
(1267, 'POSITION_U', 'POSITION_U', 'POSITION'),
(1268, 'POSITION_D', 'POSITION_D', 'POSITION'),
(1269, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(1270, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(1271, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(1272, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(1273, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(1274, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(1275, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(1276, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(1277, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(1278, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(1279, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(1280, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(1281, 'RESULT_C', 'RESULT_C', 'RESULT'),
(1282, 'RESULT_R', 'RESULT_R', 'RESULT'),
(1283, 'RESULT_U', 'RESULT_U', 'RESULT'),
(1284, 'RESULT_D', 'RESULT_D', 'RESULT'),
(1285, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(1286, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(1287, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(1288, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(1289, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(1290, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(1291, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(1292, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(1293, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(1294, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(1295, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(1296, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(1297, 'ROLE_C', 'ROLE_C', 'ROLE'),
(1298, 'ROLE_R', 'ROLE_R', 'ROLE'),
(1299, 'ROLE_U', 'ROLE_U', 'ROLE'),
(1300, 'ROLE_D', 'ROLE_D', 'ROLE'),
(1301, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(1302, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(1303, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(1304, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(1305, 'SESSION_C', 'SESSION_C', 'SESSION'),
(1306, 'SESSION_R', 'SESSION_R', 'SESSION'),
(1307, 'SESSION_U', 'SESSION_U', 'SESSION'),
(1308, 'SESSION_D', 'SESSION_D', 'SESSION'),
(1309, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(1310, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(1311, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(1312, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(1313, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(1314, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(1315, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(1316, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(1317, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(1318, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(1319, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(1320, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(1321, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(1322, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(1323, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(1324, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(1325, 'TERM_C', 'TERM_C', 'TERM'),
(1326, 'TERM_R', 'TERM_R', 'TERM'),
(1327, 'TERM_U', 'TERM_U', 'TERM'),
(1328, 'TERM_D', 'TERM_D', 'TERM'),
(1329, 'USER_C', 'USER_C', 'USER'),
(1330, 'USER_R', 'USER_R', 'USER'),
(1331, 'USER_U', 'USER_U', 'USER'),
(1332, 'USER_D', 'USER_D', 'USER'),
(1333, 'YEAR_C', 'YEAR_C', 'YEAR'),
(1334, 'YEAR_R', 'YEAR_R', 'YEAR'),
(1335, 'YEAR_U', 'YEAR_U', 'YEAR'),
(1336, 'YEAR_D', 'YEAR_D', 'YEAR'),
(1337, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(1338, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(1339, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(1340, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(1341, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(1342, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(1343, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(1344, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(1345, 'JOB_C', 'JOB_C', 'JOB'),
(1346, 'JOB_R', 'JOB_R', 'JOB'),
(1347, 'JOB_U', 'JOB_U', 'JOB'),
(1348, 'JOB_D', 'JOB_D', 'JOB'),
(1349, 'BOOK_C', 'BOOK_C', 'BOOK'),
(1350, 'BOOK_R', 'BOOK_R', 'BOOK'),
(1351, 'BOOK_U', 'BOOK_U', 'BOOK'),
(1352, 'BOOK_D', 'BOOK_D', 'BOOK'),
(1353, 'CCA_C', 'CCA_C', 'CCA'),
(1354, 'CCA_R', 'CCA_R', 'CCA'),
(1355, 'CCA_U', 'CCA_U', 'CCA'),
(1356, 'CCA_D', 'CCA_D', 'CCA');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

DROP TABLE IF EXISTS `ums_position`;
CREATE TABLE IF NOT EXISTS `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE IF NOT EXISTS `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

DROP TABLE IF EXISTS `ums_role_permission`;
CREATE TABLE IF NOT EXISTS `ums_role_permission` (
  `Row` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL,
  PRIMARY KEY (`Row`)
) ENGINE=InnoDB AUTO_INCREMENT=1923 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1453, 'teacher', 'COURSE_C'),
(1454, 'teacher', 'COURSE_D'),
(1455, 'teacher', 'COURSE_R'),
(1456, 'teacher', 'COURSE_U'),
(1457, 'teacher', 'DISCUSSION_C'),
(1458, 'teacher', 'DISCUSSION_D'),
(1459, 'teacher', 'DISCUSSION_R'),
(1460, 'teacher', 'DISCUSSION_U'),
(1461, 'teacher', 'DISCUSSION_CAT_C'),
(1462, 'teacher', 'DISCUSSION_CAT_D'),
(1463, 'teacher', 'DISCUSSION_CAT_R'),
(1464, 'teacher', 'DISCUSSION_CAT_U'),
(1465, 'teacher', 'DISCUSSION_COMMENT_C'),
(1466, 'teacher', 'DISCUSSION_COMMENT_D'),
(1467, 'teacher', 'DISCUSSION_COMMENT_R'),
(1468, 'teacher', 'DISCUSSION_COMMENT_U'),
(1469, 'teacher', 'FILE_C'),
(1470, 'teacher', 'FILE_D'),
(1471, 'teacher', 'FILE_R'),
(1472, 'teacher', 'FILE_U'),
(1473, 'teacher', 'PROJECT_C'),
(1474, 'teacher', 'PROJECT_D'),
(1475, 'teacher', 'PROJECT_R'),
(1476, 'teacher', 'PROJECT_U'),
(1477, 'teacher', 'QUESTION_C'),
(1478, 'teacher', 'QUESTION_D'),
(1479, 'teacher', 'QUESTION_R'),
(1480, 'teacher', 'QUESTION_U'),
(1481, 'teacher', 'REGISTRATION_C'),
(1482, 'teacher', 'REGISTRATION_D'),
(1483, 'teacher', 'REGISTRATION_R'),
(1484, 'teacher', 'REGISTRATION_U'),
(1485, 'teacher', 'RESULT_C'),
(1486, 'teacher', 'RESULT_D'),
(1487, 'teacher', 'RESULT_R'),
(1488, 'teacher', 'RESULT_U'),
(1739, '', 'CCA_C'),
(1740, '', 'CCA_R'),
(1741, '', 'CCA_U'),
(1742, '', 'CCA_D'),
(1743, 'administrator', 'ATTENDANCE_C'),
(1744, 'administrator', 'ATTENDANCE_R'),
(1745, 'administrator', 'ATTENDANCE_U'),
(1746, 'administrator', 'ATTENDANCE_D'),
(1747, 'administrator', 'CCA_C'),
(1748, 'administrator', 'CCA_R'),
(1749, 'administrator', 'CCA_U'),
(1750, 'administrator', 'CCA_D'),
(1751, 'administrator', 'CLUB_C'),
(1752, 'administrator', 'CLUB_R'),
(1753, 'administrator', 'CLUB_U'),
(1754, 'administrator', 'CLUB_D'),
(1755, 'administrator', 'COURSE_C'),
(1756, 'administrator', 'COURSE_R'),
(1757, 'administrator', 'COURSE_U'),
(1758, 'administrator', 'COURSE_D'),
(1759, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(1760, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(1761, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(1762, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(1763, 'administrator', 'COURSE_TYPE_C'),
(1764, 'administrator', 'COURSE_TYPE_R'),
(1765, 'administrator', 'COURSE_TYPE_U'),
(1766, 'administrator', 'COURSE_TYPE_D'),
(1767, 'administrator', 'DISCIPLINE_C'),
(1768, 'administrator', 'DISCIPLINE_R'),
(1769, 'administrator', 'DISCIPLINE_U'),
(1770, 'administrator', 'DISCIPLINE_D'),
(1771, 'administrator', 'DISCUSSION_C'),
(1772, 'administrator', 'DISCUSSION_R'),
(1773, 'administrator', 'DISCUSSION_U'),
(1774, 'administrator', 'DISCUSSION_D'),
(1775, 'administrator', 'DISCUSSION_CAT_C'),
(1776, 'administrator', 'DISCUSSION_CAT_R'),
(1777, 'administrator', 'DISCUSSION_CAT_U'),
(1778, 'administrator', 'DISCUSSION_CAT_D'),
(1779, 'administrator', 'DISCUSSION_COMMENT_C'),
(1780, 'administrator', 'DISCUSSION_COMMENT_R'),
(1781, 'administrator', 'DISCUSSION_COMMENT_U'),
(1782, 'administrator', 'DISCUSSION_COMMENT_D'),
(1783, 'administrator', 'FILE_C'),
(1784, 'administrator', 'FILE_R'),
(1785, 'administrator', 'FILE_U'),
(1786, 'administrator', 'FILE_D'),
(1787, 'administrator', 'GRADE_SETUP_C'),
(1788, 'administrator', 'GRADE_SETUP_R'),
(1789, 'administrator', 'GRADE_SETUP_U'),
(1790, 'administrator', 'GRADE_SETUP_D'),
(1791, 'administrator', 'MARKS_SETUP_C'),
(1792, 'administrator', 'MARKS_SETUP_R'),
(1793, 'administrator', 'MARKS_SETUP_U'),
(1794, 'administrator', 'MARKS_SETUP_D'),
(1795, 'administrator', 'PERMISSION_C'),
(1796, 'administrator', 'PERMISSION_R'),
(1797, 'administrator', 'PERMISSION_U'),
(1798, 'administrator', 'PERMISSION_D'),
(1799, 'administrator', 'POSITION_C'),
(1800, 'administrator', 'POSITION_R'),
(1801, 'administrator', 'POSITION_U'),
(1802, 'administrator', 'POSITION_D'),
(1803, 'administrator', 'PROJECT_C'),
(1804, 'administrator', 'PROJECT_R'),
(1805, 'administrator', 'PROJECT_U'),
(1806, 'administrator', 'PROJECT_D'),
(1807, 'administrator', 'QUESTION_C'),
(1808, 'administrator', 'QUESTION_R'),
(1809, 'administrator', 'QUESTION_U'),
(1810, 'administrator', 'QUESTION_D'),
(1811, 'administrator', 'REGISTRATION_C'),
(1812, 'administrator', 'REGISTRATION_R'),
(1813, 'administrator', 'REGISTRATION_U'),
(1814, 'administrator', 'REGISTRATION_D'),
(1815, 'administrator', 'RESULT_C'),
(1816, 'administrator', 'RESULT_R'),
(1817, 'administrator', 'RESULT_U'),
(1818, 'administrator', 'RESULT_D'),
(1819, 'administrator', 'ROLE_C'),
(1820, 'administrator', 'ROLE_R'),
(1821, 'administrator', 'ROLE_U'),
(1822, 'administrator', 'ROLE_D'),
(1823, 'administrator', 'SCHOOL_C'),
(1824, 'administrator', 'SCHOOL_R'),
(1825, 'administrator', 'SCHOOL_U'),
(1826, 'administrator', 'SCHOOL_D'),
(1827, 'administrator', 'SESSION_C'),
(1828, 'administrator', 'SESSION_R'),
(1829, 'administrator', 'SESSION_U'),
(1830, 'administrator', 'SESSION_D'),
(1831, 'administrator', 'SURVEY_C'),
(1832, 'administrator', 'SURVEY_R'),
(1833, 'administrator', 'SURVEY_U'),
(1834, 'administrator', 'SURVEY_D'),
(1835, 'administrator', 'SURVEY_QUESTION_C'),
(1836, 'administrator', 'SURVEY_QUESTION_R'),
(1837, 'administrator', 'SURVEY_QUESTION_U'),
(1838, 'administrator', 'SURVEY_QUESTION_D'),
(1839, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(1840, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(1841, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(1842, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(1843, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(1844, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(1845, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(1846, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(1847, 'administrator', 'TERM_C'),
(1848, 'administrator', 'TERM_R'),
(1849, 'administrator', 'TERM_U'),
(1850, 'administrator', 'TERM_D'),
(1851, 'administrator', 'USER_C'),
(1852, 'administrator', 'USER_R'),
(1853, 'administrator', 'USER_U'),
(1854, 'administrator', 'USER_D'),
(1855, 'administrator', 'VIDEO_C'),
(1856, 'administrator', 'VIDEO_R'),
(1857, 'administrator', 'VIDEO_U'),
(1858, 'administrator', 'VIDEO_D'),
(1859, 'administrator', 'VIDEO_COMMENT_C'),
(1860, 'administrator', 'VIDEO_COMMENT_R'),
(1861, 'administrator', 'VIDEO_COMMENT_U'),
(1862, 'administrator', 'VIDEO_COMMENT_D'),
(1863, 'administrator', 'YEAR_C'),
(1864, 'administrator', 'YEAR_R'),
(1865, 'administrator', 'YEAR_U'),
(1866, 'administrator', 'YEAR_D'),
(1895, 'student', 'CCA_R'),
(1896, 'student', 'CLUB_C'),
(1897, 'student', 'CLUB_R'),
(1898, 'student', 'CLUB_U'),
(1899, 'student', 'CLUB_D'),
(1900, 'student', 'DISCUSSION_C'),
(1901, 'student', 'DISCUSSION_R'),
(1902, 'student', 'DISCUSSION_U'),
(1903, 'student', 'DISCUSSION_D'),
(1904, 'student', 'DISCUSSION_COMMENT_C'),
(1905, 'student', 'DISCUSSION_COMMENT_R'),
(1906, 'student', 'DISCUSSION_COMMENT_U'),
(1907, 'student', 'DISCUSSION_COMMENT_D'),
(1908, 'student', 'PROJECT_C'),
(1909, 'student', 'PROJECT_R'),
(1910, 'student', 'PROJECT_U'),
(1911, 'student', 'PROJECT_D'),
(1912, 'student', 'QUESTION_C'),
(1913, 'student', 'QUESTION_R'),
(1914, 'student', 'QUESTION_U'),
(1915, 'student', 'QUESTION_D'),
(1916, 'student', 'REGISTRATION_R'),
(1917, 'student', 'RESULT_R'),
(1918, 'student', 'USER_R'),
(1919, 'student', 'VIDEO_C'),
(1920, 'student', 'VIDEO_R'),
(1921, 'student', 'VIDEO_U'),
(1922, 'student', 'VIDEO_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

DROP TABLE IF EXISTS `ums_school`;
CREATE TABLE IF NOT EXISTS `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE IF NOT EXISTS `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UniversityID` (`UniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `LastName`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$0RhEvNvghEBguw.tGOGHOuF8.tdBZKVPIxA9.OaWZ8v7Di7miDVC2', 'Aysha', 'Akther', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$VoB44xY6tRG8YaFk8L320eCR.AGT73RCiYaoOJLwU3ITKkgxliHV6', 'Kashif Nizam', 'Khan', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$ib9eyLWjPMvZn8iGFf3CEOqvkd/pUHO2pOqksMkJBdk2.4eKX0H1q', 'Kazi Masudul', 'Alam ', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$Ej0FnJB7WqL4j7fRI99AWuC8z5a7M4VUC/jGlgudSAneSKEy3uXCW', 'Zahidul', 'Islam', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

DROP TABLE IF EXISTS `ums_user_details`;
CREATE TABLE IF NOT EXISTS `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('aysha@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

DROP TABLE IF EXISTS `ums_user_discipline`;
CREATE TABLE IF NOT EXISTS `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

DROP TABLE IF EXISTS `ums_user_position`;
CREATE TABLE IF NOT EXISTS `ums_user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(43, 'mkazi078@uottawa.ca', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

DROP TABLE IF EXISTS `ums_user_role`;
CREATE TABLE IF NOT EXISTS `ums_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(112, 'mkazi078@uottawa.ca', 'administrator'),
(113, 'mkazi078@uottawa.ca', 'teacher'),
(115, 'kashif@gmail.com', 'student'),
(119, 'zahid@gmail.com', 'student'),
(120, 'aysha@gmail.com', 'administrator');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
