-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql313.epizy.com
-- Generation Time: Apr 20, 2021 at 01:06 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_28358753_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `qno` int(11) DEFAULT NULL,
  `aroll` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ans` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`qno`, `aroll`, `ans`) VALUES
(3, 'ced19i009@iiitdm.ac.in', 'Frontend: HTML,CSS and Backend: PHP'),
(1, 'ced19i009@iiitdm.ac.in', 'GOOD'),
(2, 'ced19i027@iiitdm.ac.in', 'Fine :)'),
(2, 'ced19i027@iiitdm.ac.in', '5'),
(2, 'ced19i027@iiitdm.ac.in', '1'),
(1, 'msm19b032@iiitdm.ac.in', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cse_table`
--

CREATE TABLE `cse_table` (
  `Day` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `_9AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_10AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_11AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_12PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_1PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_2PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_3PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_4PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_5PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cse_table`
--

INSERT INTO `cse_table` (`Day`, `_9AM`, `_10AM`, `_11AM`, `_12PM`, `_1PM`, `_2PM`, `_3PM`, `_4PM`, `_5PM`) VALUES
('MONDAY', 'DBMS', 'CO', 'PT', 'DAA', 'L', '', 'DAA LAB', 'DAA LAB', 'DAA LAB'),
('TUESDAY', '', 'PT', 'DAA', 'CO', 'U', '', '', 'DIS', 'DIS'),
('WEDNESDAY', '', '', '', '', 'N', '', 'DBMS LAB', 'DBMS LAB', 'DBMS LAB'),
('THURSDAY', 'DAA', 'DBMS', 'SD', 'SD', 'C', '', 'CO LAB', 'CO LAB', 'CO LAB'),
('FRIDAY', '', 'DBMS', 'CO', '', 'H', 'PT', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ece_table`
--

CREATE TABLE `ece_table` (
  `Day` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_9AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_10AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_11AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_12PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_1PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_2PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_3PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_4PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_5PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ece_table`
--

INSERT INTO `ece_table` (`Day`, `_9AM`, `_10AM`, `_11AM`, `_12PM`, `_1PM`, `_2PM`, `_3PM`, `_4PM`, `_5PM`) VALUES
('MONDAY', 'CS', '', 'PT', 'PE', 'L', '', 'DSA LAB', 'DSA LAB', 'DSA LAB'),
('TUESDAY', 'DSP', 'PT', 'PE', '', 'U', 'SD', 'SD', '', ''),
('WEDNESDAY', 'DSP', '', '', '', 'N', '', 'ED LAB', 'ED LAB ', 'ED LAB'),
('THURSDAY', 'PE', '', 'DIS', 'DIS', 'C', 'CS', 'DSP LAB', 'DSP LAB', 'DSP LAB'),
('FRIDAY', 'DSP', 'CS', '', '', 'H', 'PT', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `internships`
--

CREATE TABLE `internships` (
  `intership_id` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `branch` char(3) DEFAULT NULL,
  `company_name` varchar(100) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Pre-requisites` varchar(100) NOT NULL,
  `link` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internships`
--

INSERT INTO `internships` (`intership_id`, `name`, `branch`, `company_name`, `Location`, `Pre-requisites`, `link`) VALUES
('CSE001', 'Software Developer Intern', 'CSE', 'AJ SOFTWARE PVT LMT', 'bangalore', 'Python, AI, cgpa > 8.8', 'iinfo.html'),
('MEC001', 'Boston Turbomachinery Engineering Internship', 'MEC', 'SOFTINWAY TURBOMACHINERY SOLUTIONS , BANGLORE', 'bangalore', 'Basic idea of turbomachinery, cgpa > 8.5', 'iinfo.html'),
('ECE001', 'Robotics Electronics Engineering Internship', 'ECE', 'SVR INFOTECH', 'pune', 'Proteus, KiCAD for design and simulation of PCBs & electronics circuits', 'iinfo.html'),
('CSE002', 'Summer Internship for BE (CS/IT)', 'CSE', 'ENDEAVOR IT SOLUTION', 'indore', 'Any B.E/B.Tech pursuing students (any semester) can apply.', 'iinfo.html'),
('CSE003', 'Backend Intern', 'CSE', 'SEIMENS', 'hyderabad', 'cgpa > 8', 'iinfo.html'),
('ECE002', 'Embedded Systems Internship', 'ECE', 'RAPTEE ENERGY', 'delhi', 'Basic knowledge of Python,Experience with Raspberry Pi, Arduinos', 'iinfo.html'),
('ECE003', 'Electronic Circuit Design Internship', 'ECE', ' MECHANICAL CHEF', 'Online', 'N/A', 'iinfo.html'),
('MEC002', 'Hardware Design (CAD And Mechanical) Internship', 'MEC', 'E2EM TECHNOLOGIES PRIVATE LIMITED', 'noida', 'N/A', 'iinfo.html'),
('MEC003', 'Internship Program for Mechanical Engineers - 2016 - 2017 - 2018 - 2019', 'MEC', 'TATA MOTORS', 'vishakapatnam', 'cgpa > 9.3', 'iinfo.html');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `branch` text NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `branch`, `name`) VALUES
('ced19i027@iiitdm.ac.in', 'ced19i027', 'ced', 'N.Sree Dhyuti'),
('coe19b014@iiitdm.ac.in', 'anju', 'coe', 'Vamsi Priya Nulu'),
('ced19i009@iiitdm.ac.in', 'ced19i009', 'ced', 'Sisira Medasani'),
('coe19b013@iiitdm.ac.in', 'coe19b013', 'coe', 'Baruni Karthika'),
('edm19b049@iiitdm.ac.in', 'edm19b049', 'edm', 'Abhinay V'),
('msm19b030@iiitdm.ac.in', 'pran', 'msm', 'C Pranaya Reddy'),
('msm19b032@iiitdm.ac.in', 'msm19b032', 'msm', 'Hariharanandhan B'),
('msm19b002@iiitdm.ac.in', 'msm19b002', 'msm', 'Raju'),
('msm19b003@iiitdm.ac.in', 'msm19b003', 'msm', 'Ravi'),
('msm19b004@iiitdm.ac.in', 'msm19b004', 'msm', 'Rajesh'),
('msm19b009@iiitdm.ac.in', 'msm19b009', 'msm', 'Rahul'),
('ced19i099@iiitdm.ac.in', 'ced19i099', 'ced', ''),
('msm19b001@iiitdm.ac.in', '1234', 'msm', 'abc'),
('msm19b099@iiitdm.ac.in', 'msm19b099', 'msm', 'pran'),
('ced19i066@iiitdm.ac.in', 'ced19i066', 'ced', 'something'),
('ced19i011@iiitdm.ac.in', 'ced19i011', 'ced', 'trial name'),
('rsreeram', 'welcome#$123', 'ced', 'Ravella Sreeram'),
('mfd19i017@iiitdm.ac.in', 'mfd19i017', 'mfd', 'arjun '),
('ced19i025@iiitdm.ac.in', 'ced19i025', 'ced', 'Vishal');

-- --------------------------------------------------------

--
-- Table structure for table `lost`
--

CREATE TABLE `lost` (
  `username` varchar(50) NOT NULL,
  `item` varchar(100) NOT NULL,
  `des` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lost`
--

INSERT INTO `lost` (`username`, `item`, `des`) VALUES
('coe19b014@iiitdm.ac.in', 'Phone', 'S10e'),
('ced19i027@iiitdm.ac.in', 'DBMS Textbook', 'yellow colour binding');

-- --------------------------------------------------------

--
-- Table structure for table `mec_table`
--

CREATE TABLE `mec_table` (
  `Day` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_9AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_10AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_11AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_12PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_1PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_2PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_3PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_4PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_5PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mec_table`
--

INSERT INTO `mec_table` (`Day`, `_9AM`, `_10AM`, `_11AM`, `_12PM`, `_1PM`, `_2PM`, `_3PM`, `_4PM`, `_5PM`) VALUES
('MONDAY', '', 'KDM', 'NM', 'QIPD', 'L', '', '', '', ''),
('TUESDAY', 'KDM', 'NM', 'QIPD', '', 'U', 'DIS(for MFD,MPD) & SOD(for MDM)', 'DIS(for MFD,MPD) & SOD(for MDM)', '', ''),
('WEDNESDAY', '', '', '', '', 'N', 'FMHT', 'FMHT LAB', 'FMHT LAB', 'FMHT LAB'),
('THURSDAY', 'QIPD', 'FMHT', 'SOD(fOr MFD,MPD) \r\nDIS(for MDM)', 'SOD(fOr MFD,MPD) \r\nDIS(for MDM)', 'C', '', 'QIPV LAB', 'QIPV LAB', 'QIPV LAB'),
('FRIDAY', '', '', 'KDM', 'FMHT', 'H', 'NM', 'MDP LAB', 'MDP LAB', 'MDP LAB');

-- --------------------------------------------------------

--
-- Table structure for table `msm_table`
--

CREATE TABLE `msm_table` (
  `Day` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_9AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_10AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_11AM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_12PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_1PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_2PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_3PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_4PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_5PM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `msm_table`
--

INSERT INTO `msm_table` (`Day`, `_9AM`, `_10AM`, `_11AM`, `_12PM`, `_1PM`, `_2PM`, `_3PM`, `_4PM`, `_5PM`) VALUES
('MONDAY', 'DBMS', 'MP', 'NM', 'SC', 'L', 'OSCM', 'SCP LAB', 'SCP LAB', 'SCP LAB'),
('TUESDAY', 'MP', 'NM', 'SC', 'OSCM', 'U', '', 'MP LAB', 'MP LAB', 'MP LAB'),
('WEDNESDAY', '', '', '', '', 'N', '', '', '', ''),
('THURSDAY', 'SC', 'DBMS', 'OSCM', '', 'C', '', 'M2M LAB', 'M2M LAB', 'M2M LAB'),
('FRIDAY ', '', 'DBMS', 'MP', '', 'H', 'NM', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `qna`
--

CREATE TABLE `qna` (
  `qno` int(11) NOT NULL,
  `qroll` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qna`
--

INSERT INTO `qna` (`qno`, `qroll`, `question`) VALUES
(1, 'coe19b014@iiitdm.ac.in', 'How is this?'),
(2, 'coe19b014@iiitdm.ac.in', 'how are you?'),
(3, 'ced19i027@iiitdm.ac.in', 'What all langs were used to program this portal?'),
(4, 'ced19i009@iiitdm.ac.in', 'What all langs were used to program this portal');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `username` varchar(100) NOT NULL,
  `assignment` varchar(200) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`username`, `assignment`, `dt`) VALUES
('coe19b013@iiitdm.ac.in', 'co-lab6', '2021-03-27 17:58:00'),
('coe19b014@iiitdm.ac.in', 'efef', '2021-03-25 23:52:00'),
('coe19b014@iiitdm.ac.in', 'dhyu', '2021-03-14 21:05:00'),
('coe19b013@iiitdm.ac.in', 'dbms-lab2', '2021-04-15 12:21:00'),
('ced19i009@iiitdm.ac.in', 'dbms project2', '2021-04-10 16:29:00'),
('ced19i027@iiitdm.ac.in', 'CO Theory Assignment', '2021-04-25 23:59:00'),
('ced19i027@iiitdm.ac.in', 'DBMS Phase 2', '2021-04-20 14:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD KEY `qno` (`qno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `qna`
--
ALTER TABLE `qna`
  ADD PRIMARY KEY (`qno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qna`
--
ALTER TABLE `qna`
  MODIFY `qno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
