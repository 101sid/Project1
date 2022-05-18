-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 05:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `user_email`, `user_password`, `user_name`) VALUES
(1, 'sid@admin.com', 'qwerty', 'SIDHANT SAHU'),
(2, 'sahil@admin.com', 'qwerty', 'SAHIL KUMAR');

-- --------------------------------------------------------

--
-- Table structure for table `candidates_tbl`
--

CREATE TABLE `candidates_tbl` (
  `candidates_id` int(11) NOT NULL,
  `candidates_name` varchar(100) NOT NULL,
  `candidate_img` varchar(100) NOT NULL,
  `total_votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidates_tbl`
--

INSERT INTO `candidates_tbl` (`candidates_id`, `candidates_name`, `candidate_img`, `total_votes`) VALUES
(1, 'Sid', 'Azim.jpg', 0),
(2, 'Sahil', 'Azim.jpg', 0),
(3, 'Krishna', 'Azim.jpg', 0),
(4, 'Amit', 'Azim.jpg', 0),
(5, 'Ayush', 'Azim.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `result_tbl`
--

CREATE TABLE `result_tbl` (
  `id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `candidates_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `survey_tbl`
--

CREATE TABLE `survey_tbl` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `option_a` varchar(100) NOT NULL,
  `option_b` varchar(100) NOT NULL,
  `option_c` varchar(100) NOT NULL,
  `option_d` varchar(100) NOT NULL,
  `option_e` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_db`
--

CREATE TABLE `user_db` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_uid` varchar(10) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates_tbl`
--
ALTER TABLE `candidates_tbl`
  ADD PRIMARY KEY (`candidates_id`);

--
-- Indexes for table `result_tbl`
--
ALTER TABLE `result_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_tbl`
--
ALTER TABLE `survey_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_db`
--
ALTER TABLE `user_db`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates_tbl`
--
ALTER TABLE `candidates_tbl`
  MODIFY `candidates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `result_tbl`
--
ALTER TABLE `result_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `survey_tbl`
--
ALTER TABLE `survey_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_db`
--
ALTER TABLE `user_db`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
