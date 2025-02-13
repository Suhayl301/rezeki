-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 04:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gerobok`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `login_id` int(100) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_type` varchar(50) NOT NULL,
  `book_quantity` int(2) NOT NULL,
  `book_date` date NOT NULL,
  `stock` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`login_id`, `book_name`, `book_type`, `book_quantity`, `book_date`, `stock`) VALUES
(90, 'cop', 'nasi', 2, '2025-02-12', 0),
(555, 'tira', 'bihun', 1, '2025-02-07', 0),
(666, 'na', 'bihun', 2, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donator`
--

CREATE TABLE `donator` (
  `login_id` int(11) NOT NULL,
  `donator_name` varchar(50) NOT NULL,
  `donator_quantity` int(100) NOT NULL,
  `donator_type` varchar(50) NOT NULL,
  `donator_time` datetime NOT NULL,
  `donator_phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donator`
--

INSERT INTO `donator` (`login_id`, `donator_name`, `donator_quantity`, `donator_type`, `donator_time`, `donator_phone`) VALUES
(202, 'ucop', 50, 'bihun', '2025-02-13 14:28:00', 1120931021),
(234, 'naa', 3, 'nasi', '2025-02-08 22:47:00', 123456789),
(444, 'qila', 30, 'nasi', '2025-02-07 11:33:00', 2147483647),
(888, 'Minghao', 100, 'bihun', '2025-02-08 10:07:00', 198789099),
(999, 'polis', 100, 'bihun', '2025-02-08 11:35:00', 2147483647),
(1234, 'ija', 50, 'nasi', '2025-02-08 11:28:00', 1234567),
(2012, 'cop', 50, 'nasi', '2025-02-12 19:30:00', 10212121);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(12) NOT NULL,
  `login_pass` varchar(100) NOT NULL,
  `login_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_pass`, `login_type`) VALUES
(202, 'yusof', ''),
(234, 'naa', ''),
(666, 'na', ''),
(888, 'the8', ''),
(1234, 'faezza', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `login_id` (`login_id`);

--
-- Indexes for table `donator`
--
ALTER TABLE `donator`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `login_id` (`login_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `login_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023636903;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023636903;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
