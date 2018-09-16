-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2018 at 11:21 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mimovrste_scraper`
--

-- --------------------------------------------------------

--
-- Table structure for table `hdd`
--

CREATE TABLE `hdd` (
  `ID` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `size` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `priceTB` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hdd`
--

INSERT INTO `hdd` (`ID`, `name`, `size`, `price`, `date`, `priceTB`) VALUES
(324, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-14', 40.60),
(325, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-14', 31.85),
(326, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-14', 24.47),
(327, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-14', 27.75),
(328, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-14', 33.22),
(329, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-14', 30.37),
(330, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-14', 31.85),
(331, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-14', 32.91),
(332, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-14', 38.11),
(369, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-15', 40.60),
(370, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-15', 31.85),
(371, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-15', 24.47),
(372, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-15', 27.75),
(373, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-15', 33.22),
(374, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-15', 30.37),
(375, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-15', 31.85),
(376, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-15', 32.91),
(377, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-15', 38.11),
(378, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-16', 40.60),
(379, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-16', 31.85),
(380, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-16', 24.47),
(381, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-16', 27.75),
(382, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-16', 33.22),
(383, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-16', 30.37),
(384, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-16', 31.85),
(385, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-16', 32.91),
(386, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-16', 38.11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hdd`
--
ALTER TABLE `hdd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
