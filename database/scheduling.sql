-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 05:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `cys`
--

CREATE TABLE `cys` (
  `cys_id` int(11) NOT NULL,
  `cys` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cys`
--

INSERT INTO `cys` (`cys_id`, `cys`) VALUES
(4, 'BSIT 3-1'),
(5, 'BSCS 3-1');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_code`, `dept_name`) VALUES
(7, 'COECS', 'College of Engineering and Computer Studies');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`) VALUES
(67, 'Program Chair'),
(66, 'Dean'),
(68, 'Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(30) NOT NULL,
  `member_first` varchar(30) NOT NULL,
  `member_rank` varchar(50) NOT NULL,
  `member_salut` varchar(30) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_rank`, `member_salut`, `dept_code`, `designation_id`, `program_code`, `username`, `password`, `status`) VALUES
(27, 'Admin', 'Admin', 'Assistant Professor I', 'Mrs', 'CIT', 5, '', 'Admin 1', 'admin', 'admin'),
(180, 'Prospero', 'Mirafe', 'Program Chair', 'Mrs', 'COECS', 67, '', 'mirafecoecs', 'prospero', 'admin'),
(179, 'Baricanosa', ' Rey-An', '', 'Mr', 'COECS', 67, '', 'rey-ancoecs', 'baricanosa', 'admin'),
(181, 'Morallo', 'Isaac', '', 'Mr', 'COECS', 66, '', 'isaaccoecs', 'morallo', 'admin'),
(182, 'Balinado', 'Favis', '', 'Mr', 'COECS', 66, '', 'faviscoecs', 'balinado', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_id` int(11) NOT NULL,
  `prog_code` varchar(10) NOT NULL,
  `prog_title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_id`, `prog_code`, `prog_title`) VALUES
(15, 'BSCS', 'Bachelor of Computer Science'),
(14, 'BSIT', 'Bachelor of Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `rank` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank`) VALUES
(1, 'Instructor I'),
(4, 'Instructor II'),
(6, 'Assistant Professor I'),
(5, 'Instructor III'),
(7, 'Assistant Professor II'),
(8, 'Assistant Professor III'),
(9, 'Assistant Professor IV'),
(10, 'Associate Professor I'),
(11, 'Associate Professor II'),
(12, 'Associate Professor III'),
(13, 'Associate Professor IV'),
(14, 'Professor I'),
(15, 'Professor II'),
(16, 'Professor III'),
(17, 'Professor IV'),
(18, 'College Professor '),
(19, 'University Professor ');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room`) VALUES
(1, '101'),
(2, '102'),
(3, '103');

-- --------------------------------------------------------

--
-- Table structure for table `salut`
--

CREATE TABLE `salut` (
  `salut_id` int(11) NOT NULL,
  `salut` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salut`
--

INSERT INTO `salut` (`salut_id`, `salut`) VALUES
(1, 'Ms'),
(2, 'Mrs'),
(3, 'Mr'),
(5, 'Dr'),
(6, 'Prof'),
(7, 'Engr');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `encoded_by` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `encoded_by`) VALUES
(96, 67, 'w', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(97, 67, 's', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(88, 65, 'th', 181, 'IT18', 'BSCS', '', '', 13, '27'),
(82, 64, 't', 179, 'ITPEL3L', 'BSCS', '', '', 13, '27'),
(86, 66, 'f', 181, 'IT18', 'BSCS', '', '', 13, '27'),
(80, 63, 'f', 27, 'IT20', 'BSCS', '', '', 13, '27'),
(87, 66, 't', 181, 'IT18', 'BSCS', '', '', 13, '27'),
(85, 65, 'm', 181, 'IT18', 'BSCS', '', '', 13, '27'),
(83, 63, 'w', 179, 'IT17', 'BSCS', '', '', 13, '27'),
(84, 62, 't', 179, 'IT17', 'BSCS', '', '', 13, '27'),
(98, 68, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(99, 70, 'w', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(100, 69, 't', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(101, 71, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(102, 74, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(103, 77, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(104, 80, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(105, 83, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(106, 86, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(107, 89, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(108, 93, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(109, 96, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(110, 99, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(111, 102, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(112, 105, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(113, 108, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(114, 111, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(115, 113, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(116, 115, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(117, 120, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(118, 146, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(119, 125, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(120, 128, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(121, 131, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(122, 134, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(123, 137, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(124, 140, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(125, 143, 'm', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(126, 68, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(127, 71, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(128, 74, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(129, 77, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(130, 80, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(131, 83, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(132, 86, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(133, 89, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(134, 93, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(135, 96, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(136, 99, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(137, 102, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(138, 105, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(139, 108, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(140, 111, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(141, 113, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(142, 115, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(143, 120, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(144, 146, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(145, 125, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(146, 128, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(147, 131, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(148, 134, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(149, 137, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(150, 140, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27'),
(151, 143, 'th', 179, 'ADET', 'BSCS 3-1', '', '', 13, '27');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `term` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `term`, `sem`, `sy`, `status`) VALUES
(13, 'Midterm', '1st', '2021-2022', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `sign_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `seq` int(2) NOT NULL,
  `set_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signatories`
--

INSERT INTO `signatories` (`sign_id`, `member_id`, `seq`, `set_by`) VALUES
(1, 27, 4, 27),
(2, 177, 0, 27),
(3, 182, 2, 27),
(7, 27, 1, 27),
(11, 180, 1, 27);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL,
  `course_hours` int(11) NOT NULL,
  `course_units` int(11) NOT NULL,
  `program` varchar(20) NOT NULL,
  `syear` varchar(29) NOT NULL,
  `sem` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `member_id`, `course_hours`, `course_units`, `program`, `syear`, `sem`) VALUES
(15, 'IT17', 'Application Development and Emerging Technologies', 27, 4, 3, 'bsit', '', ''),
(17, 'ITCL', 'Introduction to Computing Lab', 27, 4, 1, 'bscs and bsit', '1st', 'first '),
(18, 'CPI', 'Intermediate Programming ', 27, 3, 2, 'bscs', '1st', 'second'),
(19, 'ITC', 'Introduction to Computing', 27, 3, 2, 'bscs and bsit', '1st', 'first'),
(20, 'CPF', 'Fundamentals of Programming', 27, 3, 2, 'bscs and bsit', '1st', 'first '),
(21, 'CPFL', 'Fundamentals of Programming Lab ', 27, 4, 1, 'bscs and bsit', '1st', 'first '),
(22, 'GEJPL', 'Life and Works of Jose P. Laurel', 27, 4, 3, 'bscs and bsit', '1st', 'first '),
(23, 'GEMTH', 'Mathematics in the Modern World', 27, 4, 3, 'bscs and bsit', '1st', 'first '),
(24, 'GEPE1', 'Physical Fitness', 27, 3, 2, 'bscs and bsit', '1st', 'first '),
(25, 'GEBNG1', 'Being Skills 1 ', 27, 2, 1, 'bscs and bsit', '1st', 'first '),
(26, 'CPIL', 'Intermediate Programming Lab', 27, 4, 1, 'bscs and bsit', '1st', 'second'),
(27, 'GEJPR', 'Life and Works of Jose P. Rizal', 27, 4, 3, 'bscs and bsit', '1st', 'second'),
(28, 'GECOM', 'Purposive Communication', 27, 4, 3, 'bscs and bsit', '1st', 'second'),
(29, 'GEPE4', 'Team Sports', 27, 3, 2, 'bscs and bsit', '1st', 'second'),
(30, 'GECOW', 'The Contemporary World', 27, 4, 3, 'bscs and bsit', '1st', 'second'),
(31, 'GEBNG2', 'Being Skills 2', 27, 2, 1, 'bscs and bsit', '1st', 'second'),
(32, 'CNC1', 'Networks and Communications 1', 27, 3, 2, 'bscs and bsit', '1st', 'third'),
(33, 'CNC1L', 'Networks and Communications 1 Lab', 27, 4, 1, 'bscs and bsit', '1st', 'third'),
(34, 'DS1 ', 'Discrete Structures 1 ', 27, 4, 1, 'bscs and bsit', '1st', 'third'),
(35, 'CSMTH1', 'Differential Calculus', 27, 4, 1, 'bscs', '1st', 'third'),
(36, 'NSTP1', 'National Service Training Program 1', 27, 4, 1, 'bscs and bsit', '1st', 'third'),
(37, 'GEPE2', 'Rhythmic Activities ', 27, 3, 2, 'bscs and bsit', '1st', 'third'),
(38, 'GEPLH', 'Readings in Philippine History', 27, 4, 1, 'bscs and bsit', '1st', 'third'),
(39, 'GEBNG3', 'Being Skills 3 ', 27, 2, 1, 'bscs and bsit', '1st', 'third'),
(40, 'DSA', 'Data Structure and Algorithm', 27, 4, 1, 'bsit', '2nd', 'first '),
(41, 'DS2 ', 'Discrete Structures 2', 27, 4, 1, 'bscs', '2nd', 'first '),
(42, 'CNC2', 'Networks and Communications 2', 27, 3, 2, 'bscs and bsit', '2nd', 'first'),
(43, 'CNC2L ', 'Networks and Communications 2 Lab', 27, 4, 1, 'bscs and bsit', '2nd', 'first '),
(44, 'IM1', 'Information Management ', 27, 3, 2, 'bsit', '2nd', 'first '),
(45, 'IM1L', 'Information Management Lab', 27, 4, 1, 'bsit', '2nd', 'first '),
(46, 'GEPE3', 'Individual/Dual Sports', 27, 3, 2, 'bscs and bsit', '2nd', 'first '),
(47, 'NSTP 2', 'National Service Training Program 2', 27, 4, 1, 'bscs and bsit', '2nd', 'first '),
(48, 'GEART', ' Art Appreciation', 27, 4, 1, 'bscs and bsit', '2nd', 'first '),
(49, 'CSMTH2', 'Integral Calculus', 27, 4, 1, 'bscs', '2nd', 'first '),
(50, 'GECWP ', 'Communication in the Workplace', 27, 4, 1, 'bscs and bsit', '2nd', 'second'),
(51, 'CNC3', 'Networks and Communications 3', 27, 3, 2, 'bscs and bsit', '2nd', 'second'),
(52, 'CNC3L', 'Networks and Communications 3 Lab', 27, 4, 1, 'bscs and bsit', '2nd', 'second'),
(53, 'WDD ', 'Web Design and Development ', 27, 3, 2, 'bsit', '2nd', 'second'),
(54, 'WDDL', 'Web Design and Development Lab', 27, 4, 1, 'bsit', '2nd', 'second'),
(55, 'ITEL1', 'General Physics ', 27, 4, 3, 'bsit', '2nd', 'second'),
(56, 'ITEL1L', 'General Physics Lab', 27, 4, 1, 'bsit', '2nd', 'second'),
(57, 'ITPEL1 ', 'IT Professional Elective 1 ', 27, 3, 2, 'bsit', '2nd', 'second'),
(58, 'ITPEL1L ', 'IT Professional Elective 1 L ', 27, 4, 1, 'bsit', '2nd', 'second'),
(59, 'DSAL ', 'Data Structures and Algorithms Lab', 27, 4, 1, 'bscs', '2nd', 'second'),
(60, 'CSEL1', 'Calculus-Based Physics ', 27, 4, 3, 'bscs', '2nd', 'second'),
(61, 'CSEL1L', ' Calculus-Based Physics Lab', 27, 4, 1, 'bscs', '2nd', 'second'),
(62, 'IM1 (CS)', 'Information Management (CS)', 27, 3, 2, 'bscs', '2nd', 'second'),
(63, 'IM1L (CS)', 'Information Management Lab (CS)', 27, 4, 1, 'bscs', '2nd', 'second'),
(64, 'DSA (cs)', 'Data Structures and Algorithms (cs)', 27, 3, 2, 'bscs', '2nd', 'second'),
(65, 'COP', 'Object-Oriented Programming ', 27, 3, 2, 'bscs and bsit', '2nd', 'third'),
(66, 'COPL', 'Object-Oriented Programming Lab', 27, 4, 1, 'bscs and bsit', '2nd', 'third'),
(67, 'HCI', 'Human Computer Interaction', 27, 3, 2, 'bsit', '2nd', 'third'),
(68, 'HCIL', 'Human Computer Interaction Lab', 27, 4, 1, 'bsit', '2nd', 'third'),
(69, 'ITPEL2', 'IT Professional Elective 2', 27, 3, 2, 'bsit', '2nd', 'third'),
(70, 'ITPEL2L', 'IT Professional Elective 2 Lab', 27, 4, 1, 'bsit', '2nd', 'third'),
(71, 'SIA', 'Systems Integration and Architecture ', 27, 3, 2, 'bsit', '2nd', 'third'),
(72, 'SIAL', 'Systems Integration and Architecture Lab', 27, 4, 1, 'bsit', '2nd', 'third'),
(73, 'GESOC ', 'Understanding the Self', 27, 4, 3, 'bscs and bsit', '2nd', 'third'),
(74, 'CSOS', 'Operating Systems (Design & Implementation) ', 27, 3, 2, 'bscs', '2nd', 'third'),
(75, 'CSOSL', 'Operating Systems (Design & Implementation) Lab', 27, 4, 1, 'bscs', '2nd', 'third'),
(76, 'ATFL', 'Automata Theory and Formal Languages', 27, 4, 3, 'bscs', '2nd', 'third'),
(77, 'CSMTH3', 'Math for Game Development', 27, 4, 3, 'bscs', '2nd', 'third'),
(78, 'ADET', 'Application Development and Emerging  Technologies', 27, 3, 2, 'bsit', '3rd', 'first '),
(79, 'ADETL', 'Application Development and Emerging  Technologies Lab', 27, 4, 1, 'bsit', '3rd', 'first '),
(80, 'ITPEL3', 'IT Professional Elective 3', 27, 3, 2, 'bsit', '3rd', 'first '),
(81, 'ITPEL3L', ' IT Professional Elective 3 Lab', 27, 4, 1, 'bsit', '3rd', 'first '),
(82, 'ITEL2', 'Probability and Statistics', 27, 4, 3, 'bsit', '3rd', 'first '),
(83, 'GELIT02', 'World Literature', 27, 4, 3, 'bscs and bsit', '3rd', 'first '),
(84, 'GESTS', 'Science, Technology and Society ', 27, 4, 3, 'bscs and bsit', '3rd', 'first '),
(85, 'CSPEL1', 'CS Professional Elective 1 ', 27, 3, 2, 'bscs', '3rd', 'first'),
(86, 'CSPEL1L', 'CS Professional Elective 1 Lab ', 27, 4, 1, 'bscs', '3rd', 'first '),
(87, 'CSEL2*', 'Introduction to Game Design', 27, 3, 2, 'bscs', '3rd', 'first '),
(88, 'CSEL2L*', 'Introduction to Game Design Lab', 27, 4, 1, 'bscs', '3rd', 'first'),
(89, 'CAO', 'Computer Architecture and Organization', 27, 3, 2, 'bscs', '3rd', 'first'),
(90, 'CAOL', 'Computer Architecture and Organization Lab ', 27, 4, 1, 'bscs', '3rd', 'first '),
(91, 'IPT', 'Integrative Programming and Technologies', 27, 3, 2, 'bsit', '3rd', 'second'),
(92, 'IPTL', 'Integrative Programming and Technologies Lab', 27, 4, 1, 'bsit', '3rd', 'second'),
(93, 'IAS1 ', 'Information Assurance and Security 1 ', 27, 4, 3, 'bsit', '3rd', 'second'),
(94, 'SAM', 'Systems Administration and Maintenance ', 27, 4, 3, 'bsit', '3rd', 'second'),
(95, 'CPT', 'Computer Platform Technologies', 27, 4, 3, 'bsit', '3rd', 'second'),
(96, 'GEETC', 'Ethics', 27, 4, 3, 'bscs and bsit', '3rd', 'second'),
(97, 'ADET (cs)', 'Application Development and Emerging Technology (cs)', 27, 3, 2, 'bscs', '3rd', 'second'),
(98, 'ADETL (cs)', ' Application Development and Emerging Technology Lab (cs)', 27, 4, 1, 'bscs', '3rd', 'second'),
(99, 'CSAC ', 'Algorithms and Complexities ', 27, 3, 2, 'bscs', '3rd', 'second'),
(100, 'CSACL', ' Algorithms and Complexities Lab', 27, 4, 1, 'bscs', '3rd', 'second'),
(101, 'CSPEL2', 'CS Professional Elective 2 ', 27, 3, 2, 'bscs', '3rd', 'second'),
(102, 'CSPEL2L', 'CS Professional Elective 2 Lab ', 27, 4, 1, 'bscs', '3rd', 'second'),
(103, 'SE1', 'Software Engineering 1 ', 27, 4, 3, 'bscs', '3rd', 'second'),
(104, 'ITPEL4', 'IT Professional Elective 4 ', 27, 3, 2, 'bsit', '3rd', 'third'),
(105, 'ITPEL4L', ' IT Professional Elective 4 Lab', 27, 4, 1, 'bsit', '3rd', 'third'),
(106, 'SE1 (it)', 'Software Engineering 1 (it)', 27, 4, 3, 'bsit', '3rd', 'third'),
(107, 'IAS2', 'Information Assurance and Security 2 ', 27, 3, 2, 'bsit', '3rd', 'third'),
(108, 'IAS2L', 'Information Assurance and Security 2 Lab', 27, 4, 1, 'bsit', '3rd', 'third'),
(109, 'ITQM', 'Quantitative Methods', 27, 4, 3, 'bsit', '3rd', 'third'),
(110, 'CSPP1 ', 'Social Issues and Professional Practices', 27, 4, 3, 'bscs and bsit', '3rd', 'third'),
(111, 'HCI (cs)', 'Human Computer Interaction (cs)', 27, 3, 2, 'bscs', '3rd', 'third'),
(112, 'CSPL', 'Programming Languages ', 27, 4, 3, 'bscs', '3rd', 'third'),
(113, 'SE2', 'Software Engineering 2 ', 27, 3, 2, 'bscs', '3rd', 'third'),
(114, 'SE2L', 'Software Engineering 2 Lab', 27, 4, 1, 'bscs', '3rd', 'third'),
(115, 'CSPEL3', 'CS Professional Elective 3 ', 27, 3, 2, 'bscs', '3rd', 'third'),
(116, 'CSPEL3L', 'CS Professional Elective 3 Lab ', 27, 4, 1, 'bscs', '3rd', 'third'),
(117, 'CSPEL4', 'CS Professional Elective 4', 27, 3, 2, 'bscs', '3rd', 'third'),
(118, 'CSPEL4L', 'CS Professional Elective 4 Lab ', 27, 4, 1, 'bscs', '3rd', 'third'),
(119, 'IAS1 (cs)', 'Information Assurance and Security (cs)', 27, 3, 2, 'bscs', '3rd', 'third'),
(120, 'CAP1', 'Capstone Project 1', 27, 4, 3, 'bsit', '4th', 'first '),
(121, 'PRINT', 'Pre-Internship', 27, 4, 3, 'bsit', '4th', 'first '),
(122, 'CSTW1 ', 'CS Thesis Writing 1', 27, 4, 3, 'bscs', '4th', 'first '),
(123, 'PRINT (cs)', 'Pre-Internship (cs)', 27, 4, 3, 'bscs', '4th', 'first '),
(124, 'CAP2', 'Capstone Project 2', 27, 4, 3, 'bsit', '4th', 'second'),
(125, 'INT01* ', 'Internship 1 (225 hours) ', 27, 225, 2, 'bsit', '4th', 'second'),
(126, 'CSTW2', 'CS Thesis Writing 2', 27, 4, 3, 'bscs', '4th', 'second'),
(127, 'INT01 ', 'Internship 1 (225 hrs) *', 27, 225, 2, 'bscs', '4th', 'second'),
(128, 'INT02*', 'Internship 2 (450 hours) *', 27, 450, 6, 'bsit', '4th', 'third'),
(129, 'ITCERT', 'IT Certification Exam Review Lab', 27, 4, 1, 'bsit', '4th', 'third'),
(130, 'INT02', 'Internship 2 (450 hrs) ', 27, 450, 6, 'bscs', '4th', 'third');

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `sy_id` int(11) NOT NULL,
  `sy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy`
--

INSERT INTO `sy` (`sy_id`, `sy`) VALUES
(7, '2021-2022');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `days` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time_start`, `time_end`, `days`) VALUES
(90, '11:00:00', '11:30:00', 'tf'),
(89, '11:00:00', '11:30:00', 'mth'),
(88, '10:30:00', '11:00:00', 'ws'),
(87, '10:30:00', '11:00:00', 'tf'),
(86, '10:30:00', '11:00:00', 'mth'),
(85, '10:00:00', '10:30:00', 'ws'),
(84, '10:00:00', '10:30:00', 'tf'),
(83, '10:00:00', '10:30:00', 'mth'),
(82, '09:30:00', '10:00:00', 'ws'),
(81, '09:30:00', '10:00:00', 'tf'),
(80, '09:30:00', '10:00:00', 'mth'),
(79, '09:00:00', '09:30:00', 'ws'),
(78, '09:00:00', '09:30:00', 'tf'),
(77, '09:00:00', '09:30:00', 'mth'),
(76, '08:30:00', '09:00:00', 'ws'),
(75, '08:30:00', '09:00:00', 'tf'),
(74, '08:30:00', '09:00:00', 'mth'),
(73, '08:00:00', '08:30:00', 'ws'),
(72, '08:00:00', '08:30:00', 'tf'),
(71, '08:00:00', '08:30:00', 'mth'),
(65, '07:00:00', '19:30:00', 'mth'),
(66, '07:00:00', '07:30:00', 'tf'),
(67, '07:00:00', '07:30:00', 'ws'),
(68, '07:30:00', '08:00:00', 'mth'),
(69, '07:30:00', '08:00:00', 'tf'),
(70, '07:30:00', '08:00:00', 'ws'),
(91, '11:00:00', '11:30:00', 'ws'),
(93, '11:30:00', '12:00:00', 'mth'),
(94, '11:30:00', '12:00:00', 'tf'),
(95, '11:30:00', '12:00:00', 'ws'),
(96, '12:00:00', '12:30:00', 'mth'),
(97, '12:00:00', '12:30:00', 'tf'),
(98, '12:00:00', '12:30:00', 'ws'),
(99, '12:30:00', '13:00:00', 'mth'),
(100, '12:30:00', '13:00:00', 'tf'),
(101, '12:30:00', '13:00:00', 'ws'),
(102, '13:00:00', '13:30:00', 'mth'),
(103, '13:00:00', '13:30:00', 'tf'),
(104, '13:00:00', '13:30:00', 'ws'),
(105, '13:30:00', '14:00:00', 'mth'),
(106, '13:30:00', '14:00:00', 'tf'),
(107, '13:30:00', '14:00:00', 'ws'),
(108, '14:00:00', '14:30:00', 'mth'),
(109, '14:00:00', '14:30:00', 'tf'),
(110, '14:00:00', '14:30:00', 'ws'),
(111, '14:30:00', '15:00:00', 'mth'),
(112, '15:00:00', '15:30:00', 'tf'),
(113, '15:00:00', '15:30:00', 'mth'),
(114, '15:00:00', '15:30:00', 'ws'),
(115, '15:30:00', '16:00:00', 'mth'),
(116, '15:30:00', '16:00:00', 'tf'),
(117, '15:30:00', '16:00:00', 'ws'),
(118, '16:00:00', '16:30:00', 'tf'),
(119, '16:00:00', '16:30:00', 'ws'),
(120, '16:30:00', '17:00:00', 'mth'),
(121, '16:30:00', '17:00:00', 'tf'),
(122, '16:30:00', '17:00:00', 'ws'),
(123, '17:00:00', '17:30:00', 'tf'),
(124, '17:00:00', '17:30:00', 'ws'),
(125, '17:30:00', '18:00:00', 'mth'),
(126, '17:30:00', '18:00:00', 'tf'),
(127, '17:30:00', '18:00:00', 'ws'),
(128, '18:00:00', '18:30:00', 'mth'),
(129, '18:00:00', '18:30:00', 'tf'),
(130, '18:00:00', '18:30:00', 'ws'),
(131, '18:30:00', '19:00:00', 'mth'),
(132, '18:30:00', '19:00:00', 'tf'),
(133, '18:30:00', '19:00:00', 'ws'),
(134, '19:00:00', '19:30:00', 'mth'),
(135, '19:00:00', '19:30:00', 'tf'),
(136, '19:00:00', '19:30:00', 'ws'),
(137, '19:30:00', '20:00:00', 'mth'),
(138, '19:30:00', '20:00:00', 'tf'),
(139, '19:30:00', '20:00:00', 'ws'),
(140, '20:00:00', '20:30:00', 'mth'),
(141, '20:00:00', '20:30:00', 'tf'),
(142, '20:00:00', '20:30:00', 'ws'),
(143, '20:30:00', '21:00:00', 'mth'),
(144, '20:30:00', '21:00:00', 'tf'),
(145, '20:30:00', '21:00:00', 'ws'),
(146, '17:00:00', '17:30:00', 'mth');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `program` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `program`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'active', 'all');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cys`
--
ALTER TABLE `cys`
  ADD PRIMARY KEY (`cys_id`),
  ADD UNIQUE KEY `cys` (`cys`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `salut`
--
ALTER TABLE `salut`
  ADD PRIMARY KEY (`salut_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`sign_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `sy`
--
ALTER TABLE `sy`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cys`
--
ALTER TABLE `cys`
  MODIFY `cys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salut`
--
ALTER TABLE `salut`
  MODIFY `salut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `sign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `sy`
--
ALTER TABLE `sy`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
