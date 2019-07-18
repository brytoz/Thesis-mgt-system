-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2019 at 01:47 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imt-group-4`
--

-- --------------------------------------------------------

--
-- Table structure for table `filemasters`
--

CREATE TABLE `filemasters` (
  `id` int(6) UNSIGNED NOT NULL,
  `Reg` varchar(11) NOT NULL,
  `stage1` varchar(2) NOT NULL,
  `stage2` varchar(2) NOT NULL,
  `stage3` varchar(2) NOT NULL,
  `stage4` varchar(2) NOT NULL,
  `stage5` varchar(2) NOT NULL,
  `file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filemasters`
--

INSERT INTO `filemasters` (`id`, `Reg`, `stage1`, `stage2`, `stage3`, `stage4`, `stage5`, `file`) VALUES
(4, '20151012756', '', '', '', '', '', 'brian.txt'),
(5, '20151010186', '', '', '', '', '', 'ann.txt');

-- --------------------------------------------------------

--
-- Table structure for table `filepgd`
--

CREATE TABLE `filepgd` (
  `id` int(6) UNSIGNED NOT NULL,
  `Reg` varchar(11) NOT NULL,
  `stage1` varchar(2) NOT NULL,
  `stage2` varchar(2) NOT NULL,
  `stage3` varchar(2) NOT NULL,
  `file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filephd`
--

CREATE TABLE `filephd` (
  `id` int(6) UNSIGNED NOT NULL,
  `Reg` varchar(11) NOT NULL,
  `stage1` varchar(2) NOT NULL,
  `stage2` varchar(2) NOT NULL,
  `stage3` varchar(2) NOT NULL,
  `stage4` varchar(2) NOT NULL,
  `stage5` varchar(2) NOT NULL,
  `stage6` varchar(2) NOT NULL,
  `stage7` varchar(2) NOT NULL,
  `file` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `id`
--

CREATE TABLE `id` (
  `id` int(11) NOT NULL,
  `serial` varchar(12) NOT NULL,
  `receipt` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id`
--

INSERT INTO `id` (`id`, `serial`, `receipt`) VALUES
(1, '1234567890', ''),
(2, '2345678901', ''),
(3, '3456789012', ''),
(4, '4567890123', ''),
(5, '5678901234', ''),
(6, '6789012345', ''),
(7, '7890123456', ''),
(8, '8901234567', ''),
(9, '9012345678', ''),
(10, '0123456789', '1');

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` int(6) UNSIGNED NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `Reg` varchar(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `serial` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `fullname`, `Reg`, `email`, `serial`, `password`, `reg_date`) VALUES
(1, 'EZEH HENRY CHISOM', '20151010186', 'casmir@yahoo.com', '0123456789', '5531fb96e6cc3dda9159d3b1ef38fb1d', '2019-05-17 21:52:30'),
(2, 'TERWASE ANAFA A.', '20151012756', '', '', '', '2019-05-17 18:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `pgd`
--

CREATE TABLE `pgd` (
  `id` int(6) UNSIGNED NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `Reg` varchar(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `serial` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pgd`
--

INSERT INTO `pgd` (`id`, `fullname`, `Reg`, `email`, `serial`, `password`, `reg_date`) VALUES
(1, 'ESSIEN MARIA PRECIOUS', '20162978066', '', '', '', '2019-05-01 16:19:05'),
(2, 'AZUNNAH CHUKWUDI TIMOTHY', '20151011006', '', '', '', '2019-05-17 18:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `phd`
--

CREATE TABLE `phd` (
  `id` int(6) UNSIGNED NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `Reg` varchar(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `serial` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phd`
--

INSERT INTO `phd` (`id`, `fullname`, `Reg`, `email`, `serial`, `password`, `reg_date`) VALUES
(1, 'IHEKWABA UDOCHUKWU OLISON', '20151010516', '', '', '', '2019-05-01 16:19:37'),
(2, 'GODWIN UGOCHUKWU KINGSLEY', '20151013026', '', '', '', '2019-05-17 18:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `id` int(11) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `school` varchar(3) NOT NULL,
  `code` varchar(11) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id`, `fullname`, `school`, `code`, `password`) VALUES
(2, 'ozoemena casmir', 'phd', '5678901234', '7f55db8dcfe9ef5fe96be176bd9f197c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filemasters`
--
ALTER TABLE `filemasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filepgd`
--
ALTER TABLE `filepgd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filephd`
--
ALTER TABLE `filephd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id`
--
ALTER TABLE `id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pgd`
--
ALTER TABLE `pgd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phd`
--
ALTER TABLE `phd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filemasters`
--
ALTER TABLE `filemasters`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `filepgd`
--
ALTER TABLE `filepgd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `filephd`
--
ALTER TABLE `filephd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `id`
--
ALTER TABLE `id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pgd`
--
ALTER TABLE `pgd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phd`
--
ALTER TABLE `phd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
