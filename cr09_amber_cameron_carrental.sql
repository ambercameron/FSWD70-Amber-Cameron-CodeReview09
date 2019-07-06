-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 04:13 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_amber_cameron_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` smallint(6) NOT NULL,
  `customer_id` smallint(6) DEFAULT NULL,
  `pickup_location` smallint(6) DEFAULT NULL,
  `dropoff_location` smallint(6) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `dropoff_date` date DEFAULT NULL,
  `car_id` smallint(6) DEFAULT NULL,
  `gps_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `pickup_location`, `dropoff_location`, `pickup_date`, `dropoff_date`, `car_id`, `gps_id`) VALUES
(1, 1, 1, 1, '2019-07-08', '2019-07-09', 1, 1),
(2, 2, 2, 1, '2019-07-08', '2019-07-10', 5, 2),
(3, 3, 3, 3, '2019-07-08', '2019-07-11', 3, 1),
(4, 4, 1, 2, '2019-07-08', '2019-07-12', 10, 1),
(5, 5, 2, 2, '2019-07-08', '2019-07-13', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `car_manufacturer`
--

CREATE TABLE `car_manufacturer` (
  `man_id` smallint(6) NOT NULL,
  `man_name` tinytext DEFAULT NULL,
  `man_country` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_manufacturer`
--

INSERT INTO `car_manufacturer` (`man_id`, `man_name`, `man_country`) VALUES
(1, 'Ford', 'America'),
(2, 'Mazda', 'Japan'),
(3, 'Hyundai', 'South Korea');

-- --------------------------------------------------------

--
-- Table structure for table `car_model`
--

CREATE TABLE `car_model` (
  `model_id` smallint(6) NOT NULL,
  `model_man` smallint(6) NOT NULL,
  `model_name` tinytext DEFAULT NULL,
  `model_size` float(3,2) DEFAULT NULL,
  `model_capacity` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_model`
--

INSERT INTO `car_model` (`model_id`, `model_man`, `model_name`, `model_size`, `model_capacity`) VALUES
(1, 1, 'Fiesta', 1.25, 5),
(2, 1, 'Mondeo', 2.40, 5),
(3, 2, '6', 1.80, 5),
(4, 2, 'MX5', 1.60, 2),
(5, 3, 'Getz', 1.20, 5),
(6, 3, 'i10', 1.00, 4);

-- --------------------------------------------------------

--
-- Table structure for table `car_unit`
--

CREATE TABLE `car_unit` (
  `unit_id` smallint(6) NOT NULL,
  `unit_model` smallint(6) NOT NULL,
  `unit_reg` tinytext DEFAULT NULL,
  `unit_color` tinytext DEFAULT NULL,
  `fuel_id` smallint(6) DEFAULT NULL,
  `location_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_unit`
--

INSERT INTO `car_unit` (`unit_id`, `unit_model`, `unit_reg`, `unit_color`, `fuel_id`, `location_id`) VALUES
(1, 1, 'X342 PSL', 'midnight', 1, 1),
(2, 1, 'X342 QSL', 'midnight', 1, 2),
(3, 1, 'X342 RSL', 'midnight', 1, 3),
(4, 2, 'SX04 PQR', 'azure', 2, 1),
(5, 2, 'SX04 PQT', 'azure', 2, 2),
(6, 3, 'SX04 PQP', 'azure', 3, 3),
(7, 4, 'R055 CTY', 'sky', 1, 1),
(8, 4, 'R055 MAN', 'sky', 1, 2),
(9, 4, 'R055 CAM', 'sky', 1, 3),
(10, 5, 'AMB3R AY3', 'magenta', 2, 1),
(11, 6, 'AMB3R Y3S', 'snow', 3, 2),
(12, 5, 'AMB3R YA5', 'magenta', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` smallint(6) NOT NULL,
  `customer_name` tinytext DEFAULT NULL,
  `customer_licence` char(10) DEFAULT NULL,
  `customer_DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_licence`, `customer_DOB`) VALUES
(1, 'Emma Bunton', 'JX762414A', '1982-04-28'),
(2, 'Melanie Chisolm', 'PP982351B', '1980-07-12'),
(3, 'Melanie Brown', 'XY12360SS', '1982-01-22'),
(4, 'Geri Haliwell', 'DI9811640A', '1983-11-12'),
(5, 'Victoria Beckham', 'GP297901R', '1985-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `staff_id` smallint(6) NOT NULL,
  `name` tinytext DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `salary` int(5) DEFAULT NULL,
  `location` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`staff_id`, `name`, `start_date`, `phone`, `salary`, `location`) VALUES
(1, 'Mike Wheeler', '2018-03-06', '07654889223', 25000, 1),
(2, 'Dustin Henderson', '2017-10-10', '07654889224', 32000, 1),
(3, 'Lucas Sinclair', '2018-10-31', '07654889225', 23000, 2),
(4, 'Steve Harrington', '2015-11-18', '07654889226', 35000, 2),
(5, 'Jim Hopper', '2010-10-31', '07654889227', 56000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_level`
--

CREATE TABLE `fuel_level` (
  `fuel_id` smallint(6) NOT NULL,
  `fuel_level` float(3,2) DEFAULT NULL,
  `fuel_date` date DEFAULT NULL,
  `car_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fuel_level`
--

INSERT INTO `fuel_level` (`fuel_id`, `fuel_level`, `fuel_date`, `car_id`) VALUES
(1, 1.00, '2019-06-07', 1),
(2, 1.00, '2019-06-07', 2),
(3, 1.00, '2019-06-07', 3),
(4, 1.00, '2019-06-07', 4),
(5, 1.00, '2019-06-07', 5),
(6, 1.00, '2019-06-07', 6),
(7, 1.00, '2019-06-07', 7),
(8, 1.00, '2019-06-07', 8),
(9, 1.00, '2019-06-07', 9),
(10, 1.00, '2019-06-07', 10),
(11, 1.00, '2019-06-07', 11),
(12, 1.00, '2019-06-07', 12);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_type`
--

CREATE TABLE `fuel_type` (
  `fuel_id` smallint(6) NOT NULL,
  `fuel_type` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fuel_type`
--

INSERT INTO `fuel_type` (`fuel_id`, `fuel_type`) VALUES
(1, 'petrol'),
(2, 'diesel'),
(3, 'hybrid');

-- --------------------------------------------------------

--
-- Table structure for table `gps_item`
--

CREATE TABLE `gps_item` (
  `GPS_item_id` smallint(6) NOT NULL,
  `GPS_model` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gps_item`
--

INSERT INTO `gps_item` (`GPS_item_id`, `GPS_model`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gps_model`
--

CREATE TABLE `gps_model` (
  `GPS_model_id` smallint(6) NOT NULL,
  `GPS_name` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gps_model`
--

INSERT INTO `gps_model` (`GPS_model_id`, `GPS_name`) VALUES
(1, 'TOMTOM GO BASIC'),
(2, 'TOMTO GO PREMIUM');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` smallint(6) NOT NULL,
  `booking_id` smallint(6) DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `booking_id`, `price`) VALUES
(1, 1, 152.89),
(2, 2, 300.50),
(3, 3, 500.75),
(4, 4, 600.77),
(5, 5, 650.71);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `office_id` smallint(6) NOT NULL,
  `address` tinytext DEFAULT NULL,
  `city` tinytext DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`office_id`, `address`, `city`, `phone`) VALUES
(1, '123 High Street', 'Carville', '01312210888'),
(2, '55 Long Road', 'Autoburgh', '01862892228'),
(3, 'Arrivals hall, City Airport', 'New Vienna', '01218958876');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`,`pickup_location`,`dropoff_location`,`car_id`,`gps_id`),
  ADD KEY `gps_id` (`gps_id`),
  ADD KEY `pickup_location` (`pickup_location`),
  ADD KEY `dropoff_location` (`dropoff_location`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `car_manufacturer`
--
ALTER TABLE `car_manufacturer`
  ADD PRIMARY KEY (`man_id`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
  ADD PRIMARY KEY (`model_id`),
  ADD KEY `model_man` (`model_man`);

--
-- Indexes for table `car_unit`
--
ALTER TABLE `car_unit`
  ADD PRIMARY KEY (`unit_id`),
  ADD KEY `unit_model` (`unit_model`,`fuel_id`,`location_id`),
  ADD KEY `fuel_id` (`fuel_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `fuel_level`
--
ALTER TABLE `fuel_level`
  ADD PRIMARY KEY (`fuel_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `fuel_type`
--
ALTER TABLE `fuel_type`
  ADD PRIMARY KEY (`fuel_id`);

--
-- Indexes for table `gps_item`
--
ALTER TABLE `gps_item`
  ADD PRIMARY KEY (`GPS_item_id`),
  ADD KEY `GPS_model` (`GPS_model`);

--
-- Indexes for table `gps_model`
--
ALTER TABLE `gps_model`
  ADD PRIMARY KEY (`GPS_model_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`office_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`gps_id`) REFERENCES `gps_item` (`GPS_item_id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`pickup_location`) REFERENCES `office` (`office_id`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`dropoff_location`) REFERENCES `office` (`office_id`),
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`car_id`) REFERENCES `car_unit` (`unit_id`);

--
-- Constraints for table `car_model`
--
ALTER TABLE `car_model`
  ADD CONSTRAINT `car_model_ibfk_2` FOREIGN KEY (`model_man`) REFERENCES `car_manufacturer` (`man_id`);

--
-- Constraints for table `car_unit`
--
ALTER TABLE `car_unit`
  ADD CONSTRAINT `car_unit_ibfk_1` FOREIGN KEY (`fuel_id`) REFERENCES `fuel_type` (`fuel_id`),
  ADD CONSTRAINT `car_unit_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `office` (`office_id`),
  ADD CONSTRAINT `car_unit_ibfk_3` FOREIGN KEY (`unit_model`) REFERENCES `car_model` (`model_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`location`) REFERENCES `office` (`office_id`);

--
-- Constraints for table `fuel_level`
--
ALTER TABLE `fuel_level`
  ADD CONSTRAINT `fuel_level_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car_unit` (`unit_id`);

--
-- Constraints for table `gps_item`
--
ALTER TABLE `gps_item`
  ADD CONSTRAINT `gps_item_ibfk_1` FOREIGN KEY (`GPS_model`) REFERENCES `gps_model` (`GPS_model_id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
