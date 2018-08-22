-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2018 at 09:53 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave`
--

-- --------------------------------------------------------

--
-- Table structure for table `leave_history`
--

CREATE TABLE `leave_history` (
  `id` int(10) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `start` varchar(50) NOT NULL,
  `end` varchar(50) NOT NULL,
  `des` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_history`
--

INSERT INTO `leave_history` (`id`, `uid`, `type`, `start`, `end`, `des`, `date`, `status`) VALUES
(39, 'meenali@gmail.com', 'casual', '2018-08-12', '2018-08-20', 'I am going for a trip', '2018/08/12 02:51:04', 'Unapproved'),
(40, 'meenali@gmail.com', 'restricted', '2018-08-31', '2018-09-05', 'Some Urgent works', '2018/08/12 02:56:36', 'Unapproved'),
(41, 'meenali@gmail.com', 'medical', '2018-08-18', '2018-08-31', 'Not feeling well', '2018/08/12 02:59:10', 'Unapproved'),
(42, 'alokrkmv12@gmail.com', 'casual', '2018-08-12', '2018-08-14', 'Just chilling', '2018/08/12 03:02:47', 'Unapproved'),
(43, 'alokrkmv12@gmail.com', 'restricted', '2018-08-15', '2018-08-24', 'Because I am devil', '2018/08/12 03:06:06', 'Unapproved'),
(44, 'alokrkmv12@gmail.com', 'medical', '2018-08-22', '2018-08-30', 'I am Devil and I never get ill just chilling!!!!!', '2018/08/12 03:06:55', 'Unapproved'),
(45, 'anchal@gmail.com', 'casual', '2018-08-09', '2018-08-20', 'Because I am Dobo', '2018/08/12 03:11:44', 'Unapproved'),
(46, 'anchal@gmail.com', 'restricted', '2018-08-17', '2018-08-29', 'Because I am Dobo', '2018/08/12 03:12:15', 'Unapproved'),
(47, 'anchal@gmail.com', 'medical', '2018-08-20', '2018-08-28', 'Because I am Dobo', '2018/08/12 03:12:45', 'Unapproved'),
(48, 'anchal@gmail.com', 'medical', '2018-08-08', '2018-08-17', '', '2018/08/12 13:05:47', 'Unapproved'),
(49, 'meenali@gmail.com', 'restricted', '2018-08-01', '2018-08-24', '', '2018/08/12 13:06:59', 'Unapproved');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uid` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uid`, `eid`, `fname`, `lname`, `gender`, `dob`, `contact`, `email`, `dep`) VALUES
('alokrkmv12@gmail.com', '012', 'Alok', 'Kumar', 'Male', '1996-08-28', '8130448475', 'alokrkmv12@gmail.com', 'Back End'),
('anchal@gmail.com', '017', 'Anchal', 'Garg', 'Female', '1997-04-17', '9999943867', 'Anchalgarg417@gmail.com', 'Data Analytics'),
('meenali@gmail.com', '0111', 'Meenali', 'Mittal', 'Female', '1996-05-17', '8826374845', 'mittalmeenali@gmail.com', 'Human Resource');

-- --------------------------------------------------------

--
-- Table structure for table `x`
--

CREATE TABLE `x` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `x`
--

INSERT INTO `x` (`id`, `username`, `password`) VALUES
(1, 'alokrkmv12@gmail.com', 'alok5591'),
(2, 'anchal@gmail.com', 'dobo123'),
(3, 'meenali@gmail.com', 'meenu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave_history`
--
ALTER TABLE `leave_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `x`
--
ALTER TABLE `x`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_history`
--
ALTER TABLE `leave_history`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `x`
--
ALTER TABLE `x`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
