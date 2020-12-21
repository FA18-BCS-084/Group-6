-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 04:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blooddrop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_name` varchar(255) NOT NULL,
  `blood_bank_name` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_name`, `blood_bank_name`, `password`) VALUES
('abcs', 'abc', '0'),
('abdullah', 'abdullah blood bank', 'abdullah123'),
('habib', 'habib blood bank', '0'),
('hanzla', 'habibullah blood bank', '123456'),
('hadi', 'hadi blood bank', '0'),
('hadir', 'hadir blood bank', '0'),
('hamid', 'hamid blood bank', '0'),
('hanzla', 'hanzla blood bank ', '0'),
('mukeet', 'mukeet blood bank', '0'),
('qasiar', 'qasiar blood bank', '0'),
('tabish', 'tabish blood band', '0'),
('admin', 'tariq blood bank', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `blood_bank_name` varchar(255) NOT NULL,
  `contact` bigint(255) NOT NULL,
  `Blood_bank_city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`blood_bank_name`, `contact`, `Blood_bank_city`) VALUES
('abc', 992102923, 'Peshawar'),
('abdullah blood bank', 992563761, 'Dera Ismail Khan'),
('amina', 321123123, 'Kohat'),
('habib blood bank', 3330912390, 'Peshawar'),
('habibullah blood bank', 3334049109, 'Peshawar'),
('hadi blood bank', 3334049125, 'Abbottabad'),
('hadir blood bank', 3334049122, 'Abbottabad'),
('hamid blood bank', 334980770, 'Nowshera'),
('hanzla blood bank ', 333234765, 'Abbottabad'),
('mukeet blood bank', 3334049123, 'Abbottabad'),
('qasiar blood bank', 3334049322, 'Peshawar'),
('tabish blood band', 9992123987, 'Peshawar'),
('tariq blood bank', 3334049009, 'Peshawar');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` bigint(100) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Blood_bank_city` varchar(255) NOT NULL,
  `blood_bank_name` varchar(255) NOT NULL,
  `blood_group` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `receiver`
--

CREATE TABLE `receiver` (
  `Receiver_ID` bigint(255) NOT NULL,
  `Receiver_Name` varchar(100) NOT NULL,
  `Receiver_city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Receiver_phone` int(100) NOT NULL,
  `Reciver_password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`blood_bank_name`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`blood_bank_name`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blood_bank_name` (`blood_bank_name`);

--
-- Indexes for table `receiver`
--
ALTER TABLE `receiver`
  ADD PRIMARY KEY (`Receiver_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receiver`
--
ALTER TABLE `receiver`
  MODIFY `Receiver_ID` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `blood_bank_name` FOREIGN KEY (`blood_bank_name`) REFERENCES `blood_bank` (`blood_bank_name`);

--
-- Constraints for table `donor`
--
ALTER TABLE `donor`
  ADD CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`blood_bank_name`) REFERENCES `blood_bank` (`blood_bank_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
