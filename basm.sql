-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2025 at 10:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basm`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `client_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_expected` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `canceled` tinyint(1) NOT NULL DEFAULT '0',
  `cancellation_reason` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `date_created`, `client_id`, `employee_id`, `start_time`, `end_time_expected`, `canceled`, `cancellation_reason`) VALUES
(12, '2024-02-04 00:04:00', 13, 3, '2024-02-12 09:30:00', '2024-02-12 10:00:00', 0, NULL),
(15, '2025-01-27 04:33:00', 16, 2, '2025-02-03 01:30:00', '2025-02-03 01:50:00', 0, NULL),
(16, '2025-01-27 04:34:00', 16, 3, '2025-02-03 01:15:00', '2025-02-03 01:30:00', 1, 'reschedule because could not make it on time'),
(17, '2025-01-29 07:23:00', 16, 1, '2025-01-30 01:00:00', '2025-01-30 01:20:00', 0, NULL),
(18, '2025-01-29 08:35:00', 18, 1, '2025-01-31 01:15:00', '2025-01-31 01:50:00', 0, NULL),
(19, '2025-01-29 08:37:00', 19, 2, '2025-02-01 01:15:00', '2025-02-01 01:40:00', 0, NULL),
(20, '2025-01-29 19:34:00', 20, 2, '2025-02-03 02:00:00', '2025-02-03 02:30:00', 0, NULL),
(21, '2025-01-29 19:35:00', 21, 3, '2025-02-03 01:45:00', '2025-02-03 02:20:00', 0, NULL),
(22, '2025-01-29 19:36:00', 22, 1, '2025-02-04 07:15:00', '2025-02-04 07:50:00', 0, NULL),
(23, '2025-01-29 19:37:00', 23, 2, '2025-02-01 01:45:00', '2025-02-01 02:20:00', 0, NULL),
(24, '2025-01-29 19:38:00', 24, 3, '2025-02-03 03:00:00', '2025-02-03 03:55:00', 0, NULL),
(25, '2025-01-29 19:39:00', 25, 3, '2025-02-03 02:00:00', '2025-02-03 02:20:00', 0, NULL),
(26, '2025-01-29 19:40:00', 26, 2, '2025-02-01 02:30:00', '2025-02-01 03:05:00', 0, NULL),
(27, '2025-01-29 19:42:00', 27, 1, '2025-01-31 02:00:00', '2025-01-31 02:50:00', 0, NULL),
(28, '2025-01-29 19:43:00', 28, 1, '2025-01-31 03:00:00', '2025-01-31 04:00:00', 0, NULL),
(29, '2025-01-29 19:45:00', 29, 2, '2025-02-01 03:15:00', '2025-02-01 04:05:00', 0, NULL),
(30, '2025-01-29 19:46:00', 30, 2, '2025-02-01 04:15:00', '2025-02-01 04:55:00', 0, NULL),
(31, '2025-01-29 19:48:00', 31, 3, '2025-02-03 02:30:00', '2025-02-03 03:00:00', 0, NULL),
(32, '2025-01-29 19:49:00', 32, 2, '2025-02-01 05:00:00', '2025-02-01 05:55:00', 0, NULL),
(33, '2025-01-30 06:03:00', 33, 1, '2025-02-03 01:15:00', '2025-02-03 01:25:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `barber_admin`
--

CREATE TABLE `barber_admin` (
  `admin_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `barber_admin`
--

INSERT INTO `barber_admin` (`admin_id`, `username`, `email`, `full_name`, `password`) VALUES
(1, 'admin', 'admin.admin@gmail.com', 'Admin Admin', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `client_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `first_name`, `last_name`, `phone_number`, `client_email`) VALUES
(1, 'Dennis', 'S Embry', '0117796791', 'dennis_embry@gmail.com'),
(2, 'Bonnie', 'A Rivera', '0143275825', 'bonnie_rivera@yahoo.fr'),
(13, 'Driss', 'Jabiri', '0789342481', 'driss.jabiri@gmail.com'),
(16, 'Mael', 'Suzuran', '0192500531', 'maelsuzuran@ymail.com'),
(17, 'Syahiran', 'Khalidy', '0190099521', 'shairankhalidy@gmail.com'),
(18, 'Syed', 'Hewa', '0124560077', 'syed.hewa@yahoo.com'),
(19, 'Hael', 'Imran', '0144563211', 'haelimran@ymail.com'),
(20, 'Airiel', 'Gaus', '0191233211', 'airiel.gaus@ymail.com'),
(21, 'Aziz', 'Harun', '0120005577', 'azizharun@gmail.com'),
(22, 'Hafiz', 'Suip', '0144469843', 'hafizsuip@ymail.com'),
(23, 'Johan', 'Asry', '0135640001', 'johanasry@yahoo.com'),
(24, 'Jihoon', 'Lee', '0173211145', 'leejihoon@ymail.com'),
(25, 'Lan', 'Todak', '0118880012', 'lantodak@yahoo.com'),
(26, 'Chenghe', 'Lau', '0187530006', 'lauchenghe@gmail.com'),
(27, 'Hamid', 'Braim', '0130651111', 'hamidbraim@email.com'),
(28, 'Hud', 'Hakeem', '0128762233', 'hudhakeem@yahoo.om'),
(29, 'Yeon', 'Lee', '0194561212', 'leeyeon@ymail.com'),
(30, 'Saweesh', 'Eng', '0110009911', 'saweesheng00@yahoo.com'),
(31, 'Rakesh', 'R', '0129870002', 'rakesh@ymail.com'),
(32, 'Ashwin', 'Rael', '0129643352', 'ashwinrael@yahoo.com'),
(33, 'ali', 'abu', '0192500531', 'ali@ymail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `phone_number`, `email`) VALUES
(1, 'Raju', 'Kamil', '0134569876', 'rajukamil@gmail.com'),
(2, 'Khail', 'Faris', '0113428745', 'khailfaris@yahoo.com'),
(3, 'Lee', 'Soojia', '0190005224', 'leesoojia@ymail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employees_schedule`
--

CREATE TABLE `employees_schedule` (
  `id` int NOT NULL,
  `employee_id` int NOT NULL,
  `day_id` tinyint(1) NOT NULL,
  `from_hour` time NOT NULL,
  `to_hour` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `employees_schedule`
--

INSERT INTO `employees_schedule` (`id`, `employee_id`, `day_id`, `from_hour`, `to_hour`) VALUES
(29, 3, 1, '09:00:00', '18:00:00'),
(30, 3, 7, '09:00:00', '17:00:00'),
(38, 2, 1, '09:00:00', '17:00:00'),
(39, 2, 6, '09:00:00', '18:00:00'),
(40, 2, 7, '09:00:00', '18:00:00'),
(41, 1, 1, '09:00:00', '18:00:00'),
(42, 1, 2, '15:00:00', '22:00:00'),
(43, 1, 3, '09:00:00', '18:00:00'),
(44, 1, 4, '00:00:00', '20:00:00'),
(45, 1, 5, '09:00:00', '14:00:00'),
(46, 1, 7, '09:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_description` varchar(255) NOT NULL,
  `service_price` decimal(6,2) NOT NULL,
  `service_duration` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_description`, `service_price`, `service_duration`, `category_id`) VALUES
(1, 'Hair Cut', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 21.00, 20, 4),
(2, 'Hair Styling', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 9.00, 15, 4),
(3, 'Hair Triming', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 10.00, 10, 4),
(4, 'Clean Shaving', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 20.00, 20, 2),
(5, 'Beard Triming', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 20.00, 15, 2),
(6, 'Smooth Shave', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 15.00, 20, 2),
(7, 'White Facial', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 16.00, 15, 3),
(8, 'Face Cleaning', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 20.00, 20, 3),
(9, 'Bright Tuning', 'Barber is a person whose occupation is mainly to cut dress groom style and shave men', 14.00, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `services_booked`
--

CREATE TABLE `services_booked` (
  `appointment_id` int NOT NULL,
  `service_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `services_booked`
--

INSERT INTO `services_booked` (`appointment_id`, `service_id`) VALUES
(12, 1),
(17, 1),
(22, 1),
(24, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(32, 1),
(18, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(29, 2),
(31, 2),
(32, 2),
(12, 3),
(19, 3),
(20, 3),
(33, 3),
(21, 4),
(25, 4),
(28, 4),
(15, 5),
(22, 5),
(29, 5),
(20, 6),
(30, 6),
(32, 6),
(19, 7),
(21, 7),
(27, 7),
(31, 7),
(15, 8),
(18, 8),
(23, 8),
(24, 8),
(26, 8),
(28, 9);

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`category_id`, `category_name`) VALUES
(2, 'Shaving'),
(3, 'Face Masking'),
(4, 'Uncategorized');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `FK_client_appointment` (`client_id`),
  ADD KEY `FK_employee_appointment` (`employee_id`);

--
-- Indexes for table `barber_admin`
--
ALTER TABLE `barber_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_email` (`client_email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employees_schedule`
--
ALTER TABLE `employees_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_emp` (`employee_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `FK_service_category` (`category_id`);

--
-- Indexes for table `services_booked`
--
ALTER TABLE `services_booked`
  ADD PRIMARY KEY (`appointment_id`,`service_id`),
  ADD KEY `FK_SB_service` (`service_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `barber_admin`
--
ALTER TABLE `barber_admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees_schedule`
--
ALTER TABLE `employees_schedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `FK_client_appointment` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_employee_appointment` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `employees_schedule`
--
ALTER TABLE `employees_schedule`
  ADD CONSTRAINT `FK_emp` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `FK_service_category` FOREIGN KEY (`category_id`) REFERENCES `service_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `services_booked`
--
ALTER TABLE `services_booked`
  ADD CONSTRAINT `FK_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`),
  ADD CONSTRAINT `FK_SB_appointment` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`appointment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_SB_service` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
