-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 05:43 PM
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
  `priceTB` float(8,2) NOT NULL,
  `href` varchar(1000) NOT NULL,
  `store` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hdd`
--

INSERT INTO `hdd` (`ID`, `name`, `size`, `price`, `date`, `priceTB`, `href`, `store`) VALUES
(324, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-14', 40.60, '', 'Mimovrste'),
(325, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-14', 31.85, '', 'Mimovrste'),
(326, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-14', 24.47, '', 'Mimovrste'),
(327, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-14', 27.75, '', 'Mimovrste'),
(328, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-14', 33.22, '', 'Mimovrste'),
(329, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-14', 30.37, '', 'Mimovrste'),
(330, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-14', 31.85, '', 'Mimovrste'),
(331, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-14', 32.91, '', 'Mimovrste'),
(332, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-14', 38.11, '', 'Mimovrste'),
(369, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-15', 40.60, '', 'Mimovrste'),
(370, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-15', 31.85, '', 'Mimovrste'),
(371, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-15', 24.47, '', 'Mimovrste'),
(372, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-15', 27.75, '', 'Mimovrste'),
(373, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-15', 33.22, '', 'Mimovrste'),
(374, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-15', 30.37, '', 'Mimovrste'),
(375, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-15', 31.85, '', 'Mimovrste'),
(376, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-15', 32.91, '', 'Mimovrste'),
(377, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-15', 38.11, '', 'Mimovrste'),
(378, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-16', 40.60, '', 'Mimovrste'),
(379, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-16', 31.85, '', 'Mimovrste'),
(380, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-16', 24.47, '', 'Mimovrste'),
(381, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-16', 27.75, '', 'Mimovrste'),
(382, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-16', 33.22, '', 'Mimovrste'),
(383, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-16', 30.37, '', 'Mimovrste'),
(384, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-16', 31.85, '', 'Mimovrste'),
(385, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-16', 32.91, '', 'Mimovrste'),
(386, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-16', 38.11, '', 'Mimovrste'),
(387, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-17', 40.60, '', 'Mimovrste'),
(388, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-17', 31.85, '', 'Mimovrste'),
(389, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-17', 24.47, '', 'Mimovrste'),
(390, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-17', 27.75, '', 'Mimovrste'),
(391, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-17', 33.22, '', 'Mimovrste'),
(392, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-17', 30.37, '', 'Mimovrste'),
(393, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-17', 31.85, '', 'Mimovrste'),
(394, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-17', 32.91, '', 'Mimovrste'),
(395, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-17', 38.11, '', 'Mimovrste');

-- --------------------------------------------------------

--
-- Table structure for table `ssd`
--

CREATE TABLE `ssd` (
  `ID` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `size` varchar(500) NOT NULL,
  `price` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `priceGB` float(8,2) NOT NULL,
  `href` varchar(1000) NOT NULL,
  `store` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssd`
--

INSERT INTO `ssd` (`ID`, `name`, `size`, `price`, `date`, `priceGB`, `href`, `store`) VALUES
(1, 'Kingston SSD disk A400 120GB 6,35cm (2,5\") SATA3.0 (SA400S37/120G)', '120', '26.50', '2018-09-16', 0.22, '', 'Mimovrste'),
(2, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '38.50', '2018-09-16', 0.30, '', 'Mimovrste'),
(3, 'Apacer SSD disk AS350 Panther 240 GB, 6.35 cm (2,5\"), SATA3, TLC', '240', '45.70', '2018-09-16', 0.19, '', 'Mimovrste'),
(4, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-16', 0.27, '', 'Mimovrste'),
(5, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '50.90', '2018-09-16', 0.20, '', 'Mimovrste'),
(6, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-16', 0.17, '', 'Mimovrste'),
(7, 'Crucial disk SSD MX500 500GB 2.5 SATA3 3D TLC, 7mm', '500', '100.20', '2018-09-16', 0.20, '', 'Mimovrste'),
(8, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '108.70', '2018-09-16', 0.21, '', 'Mimovrste'),
(9, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-16', 0.21, '', 'Mimovrste'),
(10, 'WD SSD disk SATA 3 1 TB BLUE 3D NAND 6,35(2,5\") (WDS100T2B0A)', '1000', '212.60', '2018-09-16', 0.21, '', 'Mimovrste'),
(11, 'WD SSD disk SATA 3 2 TB BLUE 3D NAND 6,35 (2,5\") (WDS200T2B0A)', '2000', '450.10', '2018-09-16', 0.23, '', 'Mimovrste'),
(12, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-16', 0.27, '', 'Mimovrste'),
(13, 'Kingston SSD disk A400 120GB 6,35cm (2,5\") SATA3.0 (SA400S37/120G)', '120', '26.50', '2018-09-17', 0.22, '', 'Mimovrste'),
(14, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '38.50', '2018-09-17', 0.30, '', 'Mimovrste'),
(15, 'Apacer SSD disk AS350 Panther 240 GB, 6.35 cm (2,5\"), SATA3, TLC', '240', '45.70', '2018-09-17', 0.19, '', 'Mimovrste'),
(16, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-17', 0.27, '', 'Mimovrste'),
(17, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '50.90', '2018-09-17', 0.20, '', 'Mimovrste'),
(18, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-17', 0.17, '', 'Mimovrste'),
(19, 'Crucial disk SSD MX500 500GB 2.5 SATA3 3D TLC, 7mm', '500', '100.20', '2018-09-17', 0.20, '', 'Mimovrste'),
(20, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '108.70', '2018-09-17', 0.21, '', 'Mimovrste'),
(21, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-17', 0.21, '', 'Mimovrste'),
(22, 'WD SSD disk SATA 3 1 TB BLUE 3D NAND 6,35(2,5\") (WDS100T2B0A)', '1000', '212.60', '2018-09-17', 0.21, '', 'Mimovrste'),
(23, 'WD SSD disk SATA 3 2 TB BLUE 3D NAND 6,35 (2,5\") (WDS200T2B0A)', '2000', '450.10', '2018-09-17', 0.23, '', 'Mimovrste'),
(24, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-17', 0.27, '', 'Mimovrste');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ssd`
--
ALTER TABLE `ssd`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hdd`
--
ALTER TABLE `hdd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT for table `ssd`
--
ALTER TABLE `ssd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
