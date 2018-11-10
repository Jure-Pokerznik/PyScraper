-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 02:12 PM
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
-- Database: `mindfactory_scraper`
--

-- --------------------------------------------------------

--
-- Table structure for table `hdd`
--

CREATE TABLE `hdd` (
  `ID` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `size` int(5) NOT NULL,
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
(1, '1000GB Toshiba P300 High-Performance HDWD110UZSVA 64MB 3.5\" (8.9cm) SATA 6Gb/s', 1, '35.85', '2018-11-07', 35.85, 'https://www.mindfactory.de/product_info.php/1000GB-Toshiba-P300-High-Performance-HDWD110UZSVA-64MB-3-5Zoll--8-9cm--_1196773.html', 'Mindfactory'),
(2, '2000GB Toshiba DT01ACA200 DT01ACA200 64MB 3.5\" (8.9cm) SATA 6Gb/s', 2, '55.00', '2018-11-07', 27.50, 'https://www.mindfactory.de/product_info.php/2000GB-Toshiba-DT01ACA200-DT01ACA200-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_815044.html', 'Mindfactory'),
(3, '3000GB Toshiba DT01ACA Serie DT01ACA300 64MB 3.5\" (8.9cm) SATA 6Gb/s', 3, '68.84', '2018-11-07', 22.95, 'https://www.mindfactory.de/product_info.php/3000GB-Toshiba-DT01ACA-Serie-DT01ACA300-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_816053.html', 'Mindfactory'),
(4, '4000GB WD Blue WD40EZRZ 64MB 3.5\" (8.9cm) SATA 6Gb/s', 4, '99.44', '2018-11-07', 24.86, 'https://www.mindfactory.de/product_info.php/4000GB-WD-Blue-WD40EZRZ-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_1013978.html', 'Mindfactory'),
(5, '5000GB Intenso 6513133 64MB 3.5\" (8.9cm) SATA 6Gb/s', 5, '140.44', '2018-11-07', 28.09, 'https://www.mindfactory.de/product_info.php/5000GB-Intenso-6513133-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_1029340.html', 'Mindfactory'),
(6, '6000GB LaCie Porsche Design STEW6000400 3.5\" (8.9cm) USB 3.0 grau/schwarz', 6, '140.45', '2018-11-07', 23.41, 'https://www.mindfactory.de/product_info.php/6000GB-LaCie-Porsche-Design-STEW6000400-3-5Zoll--8-9cm--USB-3-0-grau-sc_1177066.html', 'Mindfactory'),
(7, '8000GB Seagate Barracuda Compute ST8000DM004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 8, '193.44', '2018-11-07', 24.18, 'https://www.mindfactory.de/product_info.php/8000GB-Seagate-Barracuda-Compute-ST8000DM004-256MB-3-5Zoll--8-9cm--SATA_1200799.html', 'Mindfactory'),
(8, '10000GB Seagate Skyhawk Surveillance ST10000VX0004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 10, '284.85', '2018-11-07', 28.49, 'https://www.mindfactory.de/product_info.php/10000GB-Seagate-Skyhawk-Surveillance-ST10000VX0004-256MB-3-5Zoll--8-9cm_1114925.html', 'Mindfactory'),
(9, '12000GB Hitachi Ultrastar HE12 0F30144 256MB 3.5\" (8.9cm) SATA 6Gb/s', 12, '381.98', '2018-11-07', 31.83, 'https://www.mindfactory.de/product_info.php/12000GB-Hitachi-Ultrastar-HE12-0F30144-256MB-3-5Zoll--8-9cm--SATA-6Gb-s_1197019.html', 'Mindfactory'),
(10, '14000GB Toshiba Enterprise Capacity MG07ACA14TE 256MB 3.5\" (8.9cm) SATA 6Gb/s', 14, '598.24', '2018-11-07', 42.73, 'https://www.mindfactory.de/product_info.php/14000GB-Toshiba-Enterprise-Capacity-MG07ACA14TE-256MB-3-5Zoll--8-9cm--S_1236484.html', 'Mindfactory'),
(11, '1000GB Toshiba P300 High-Performance HDWD110UZSVA 64MB 3.5\" (8.9cm) SATA 6Gb/s', 1, '35.85', '2018-11-08', 35.85, 'https://www.mindfactory.de/product_info.php/1000GB-Toshiba-P300-High-Performance-HDWD110UZSVA-64MB-3-5Zoll--8-9cm--_1196773.html', 'Mindfactory'),
(12, '2000GB Toshiba DT01ACA200 DT01ACA200 64MB 3.5\" (8.9cm) SATA 6Gb/s', 2, '55.00', '2018-11-08', 27.50, 'https://www.mindfactory.de/product_info.php/2000GB-Toshiba-DT01ACA200-DT01ACA200-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_815044.html', 'Mindfactory'),
(13, '3000GB Toshiba DT01ACA Serie DT01ACA300 64MB 3.5\" (8.9cm) SATA 6Gb/s', 3, '68.84', '2018-11-08', 22.95, 'https://www.mindfactory.de/product_info.php/3000GB-Toshiba-DT01ACA-Serie-DT01ACA300-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_816053.html', 'Mindfactory'),
(14, '4000GB WD Blue WD40EZRZ 64MB 3.5\" (8.9cm) SATA 6Gb/s', 4, '99.72', '2018-11-08', 24.93, 'https://www.mindfactory.de/product_info.php/4000GB-WD-Blue-WD40EZRZ-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_1013978.html', 'Mindfactory'),
(15, '5000GB Intenso 6513133 64MB 3.5\" (8.9cm) SATA 6Gb/s', 5, '140.43', '2018-11-08', 28.09, 'https://www.mindfactory.de/product_info.php/5000GB-Intenso-6513133-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_1029340.html', 'Mindfactory'),
(16, '6000GB LaCie Porsche Design STEW6000400 3.5\" (8.9cm) USB 3.0 grau/schwarz', 6, '140.39', '2018-11-08', 23.40, 'https://www.mindfactory.de/product_info.php/6000GB-LaCie-Porsche-Design-STEW6000400-3-5Zoll--8-9cm--USB-3-0-grau-sc_1177066.html', 'Mindfactory'),
(17, '8000GB Seagate Barracuda Compute ST8000DM004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 8, '193.44', '2018-11-08', 24.18, 'https://www.mindfactory.de/product_info.php/8000GB-Seagate-Barracuda-Compute-ST8000DM004-256MB-3-5Zoll--8-9cm--SATA_1200799.html', 'Mindfactory'),
(18, '10000GB Seagate Exos X10 ST10000NM0016 256MB 3.5\" (8.9cm) SATA 6Gb/s', 10, '277.01', '2018-11-08', 27.70, 'https://www.mindfactory.de/product_info.php/10000GB-Seagate-Exos-X10-ST10000NM0016-256MB-3-5Zoll--8-9cm--SATA-6Gb-s_1093297.html', 'Mindfactory'),
(19, '12000GB Hitachi Ultrastar HE12 0F30144 256MB 3.5\" (8.9cm) SATA 6Gb/s', 12, '381.98', '2018-11-08', 31.83, 'https://www.mindfactory.de/product_info.php/12000GB-Hitachi-Ultrastar-HE12-0F30144-256MB-3-5Zoll--8-9cm--SATA-6Gb-s_1197019.html', 'Mindfactory'),
(20, '14000GB Toshiba Enterprise Capacity MG07ACA14TE 256MB 3.5\" (8.9cm) SATA 6Gb/s', 14, '598.24', '2018-11-08', 42.73, 'https://www.mindfactory.de/product_info.php/14000GB-Toshiba-Enterprise-Capacity-MG07ACA14TE-256MB-3-5Zoll--8-9cm--S_1236484.html', 'Mindfactory'),
(21, '1000GB Toshiba P300 High-Performance HDWD110UZSVA 64MB 3.5\" (8.9cm) SATA 6Gb/s', 1, '36.85', '2018-11-09', 36.85, 'https://www.mindfactory.de/product_info.php/1000GB-Toshiba-P300-High-Performance-HDWD110UZSVA-64MB-3-5Zoll--8-9cm--_1196773.html', 'Mindfactory'),
(22, '2000GB Toshiba DT01ACA200 DT01ACA200 64MB 3.5\" (8.9cm) SATA 6Gb/s', 2, '55.00', '2018-11-09', 27.50, 'https://www.mindfactory.de/product_info.php/2000GB-Toshiba-DT01ACA200-DT01ACA200-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_815044.html', 'Mindfactory'),
(23, '3000GB Toshiba DT01ACA Serie DT01ACA300 64MB 3.5\" (8.9cm) SATA 6Gb/s', 3, '68.84', '2018-11-09', 22.95, 'https://www.mindfactory.de/product_info.php/3000GB-Toshiba-DT01ACA-Serie-DT01ACA300-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_816053.html', 'Mindfactory'),
(24, '4000GB Seagate Barracuda Compute ST4000DM004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 4, '94.84', '2018-11-09', 23.71, 'https://www.mindfactory.de/product_info.php/4000GB-Seagate-Barracuda-Compute-ST4000DM004-256MB-3-5Zoll--8-9cm--SATA_1174716.html', 'Mindfactory'),
(25, '5000GB Seagate Desktop HDD ST5000DM000 128MB 3.5\" (8.9cm) SATA 6Gb/s', 5, '124.90', '2018-11-09', 24.98, 'https://www.mindfactory.de/product_info.php/5000GB-Seagate-Desktop-HDD-ST5000DM000-128MB-3-5Zoll--8-9cm--SATA-6Gb-s_965094.html', 'Mindfactory'),
(26, '6000GB Seagate Barracuda ST6000DM003 256MB 3.5\" (8.9cm) SATA 6Gb/s', 6, '158.20', '2018-11-09', 26.37, 'https://www.mindfactory.de/product_info.php/6000GB-Seagate-Barracuda-ST6000DM003-256MB-3-5Zoll--8-9cm--SATA-6Gb-s_1222828.html', 'Mindfactory'),
(27, '8000GB Seagate Barracuda Compute ST8000DM004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 8, '193.44', '2018-11-09', 24.18, 'https://www.mindfactory.de/product_info.php/8000GB-Seagate-Barracuda-Compute-ST8000DM004-256MB-3-5Zoll--8-9cm--SATA_1200799.html', 'Mindfactory'),
(28, '10000GB Seagate Exos X10 ST10000NM0016 256MB 3.5\" (8.9cm) SATA 6Gb/s', 10, '277.01', '2018-11-09', 27.70, 'https://www.mindfactory.de/product_info.php/10000GB-Seagate-Exos-X10-ST10000NM0016-256MB-3-5Zoll--8-9cm--SATA-6Gb-s_1093297.html', 'Mindfactory'),
(29, '12000GB Hitachi Ultrastar HE12 0F30144 256MB 3.5\" (8.9cm) SATA 6Gb/s', 12, '384.93', '2018-11-09', 32.08, 'https://www.mindfactory.de/product_info.php/12000GB-Hitachi-Ultrastar-HE12-0F30144-256MB-3-5Zoll--8-9cm--SATA-6Gb-s_1197019.html', 'Mindfactory'),
(30, '14000GB Toshiba Enterprise Capacity MG07ACA14TE 256MB 3.5\" (8.9cm) SATA 6Gb/s', 14, '598.24', '2018-11-09', 42.73, 'https://www.mindfactory.de/product_info.php/14000GB-Toshiba-Enterprise-Capacity-MG07ACA14TE-256MB-3-5Zoll--8-9cm--S_1236484.html', 'Mindfactory'),
(31, '1000GB Toshiba DT01ACA Serie DT01ACA100 32MB 3.5\" (8.9cm) SATA 6Gb/s', 1, '36.85', '2018-11-10', 36.85, 'https://www.mindfactory.de/product_info.php/1000GB-Toshiba-DT01ACA-Serie-DT01ACA100-32MB-3-5Zoll--8-9cm--SATA-6Gb-s_808828.html', 'Mindfactory'),
(32, '2000GB Toshiba DT01ACA200 DT01ACA200 64MB 3.5\" (8.9cm) SATA 6Gb/s', 2, '55.84', '2018-11-10', 27.92, 'https://www.mindfactory.de/product_info.php/2000GB-Toshiba-DT01ACA200-DT01ACA200-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_815044.html', 'Mindfactory'),
(33, '3000GB Toshiba DT01ACA Serie DT01ACA300 64MB 3.5\" (8.9cm) SATA 6Gb/s', 3, '68.85', '2018-11-10', 22.95, 'https://www.mindfactory.de/product_info.php/3000GB-Toshiba-DT01ACA-Serie-DT01ACA300-64MB-3-5Zoll--8-9cm--SATA-6Gb-s_816053.html', 'Mindfactory'),
(34, '4000GB Seagate Barracuda Compute ST4000DM004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 4, '94.84', '2018-11-10', 23.71, 'https://www.mindfactory.de/product_info.php/4000GB-Seagate-Barracuda-Compute-ST4000DM004-256MB-3-5Zoll--8-9cm--SATA_1174716.html', 'Mindfactory'),
(35, '5000GB Seagate Desktop HDD ST5000DM000 128MB 3.5\" (8.9cm) SATA 6Gb/s', 5, '124.90', '2018-11-10', 24.98, 'https://www.mindfactory.de/product_info.php/5000GB-Seagate-Desktop-HDD-ST5000DM000-128MB-3-5Zoll--8-9cm--SATA-6Gb-s_965094.html', 'Mindfactory'),
(36, '6000GB LaCie Porsche Design STEW6000400 3.5\" (8.9cm) USB 3.0 grau/schwarz', 6, '166.65', '2018-11-10', 27.78, 'https://www.mindfactory.de/product_info.php/6000GB-LaCie-Porsche-Design-STEW6000400-3-5Zoll--8-9cm--USB-3-0-grau-sc_1177066.html', 'Mindfactory'),
(37, '8000GB Seagate Barracuda Compute ST8000DM004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 8, '199.64', '2018-11-10', 24.95, 'https://www.mindfactory.de/product_info.php/8000GB-Seagate-Barracuda-Compute-ST8000DM004-256MB-3-5Zoll--8-9cm--SATA_1200799.html', 'Mindfactory'),
(38, '10000GB Seagate Skyhawk Surveillance ST10000VX0004 256MB 3.5\" (8.9cm) SATA 6Gb/s', 10, '284.85', '2018-11-10', 28.49, 'https://www.mindfactory.de/product_info.php/10000GB-Seagate-Skyhawk-Surveillance-ST10000VX0004-256MB-3-5Zoll--8-9cm_1114925.html', 'Mindfactory'),
(39, '12000GB Hitachi Ultrastar HE12 0F30144 256MB 3.5\" (8.9cm) SATA 6Gb/s', 12, '392.15', '2018-11-10', 32.68, 'https://www.mindfactory.de/product_info.php/12000GB-Hitachi-Ultrastar-HE12-0F30144-256MB-3-5Zoll--8-9cm--SATA-6Gb-s_1197019.html', 'Mindfactory'),
(40, '14000GB Toshiba Enterprise Capacity MG07ACA14TE 256MB 3.5\" (8.9cm) SATA 6Gb/s', 14, '598.24', '2018-11-10', 42.73, 'https://www.mindfactory.de/product_info.php/14000GB-Toshiba-Enterprise-Capacity-MG07ACA14TE-256MB-3-5Zoll--8-9cm--S_1236484.html', 'Mindfactory');

-- --------------------------------------------------------

--
-- Table structure for table `ssd`
--

CREATE TABLE `ssd` (
  `ID` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `size` int(8) NOT NULL,
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
(1, '120GB Patriot Burst 2.5\" (6.4cm) SATA 6Gb/s (PBU120GS25SSDR)', 120, '20.90', '2018-11-07', 0.17, 'https://www.mindfactory.de/product_info.php/120GB-Patriot-Burst-2-5Zoll--6-4cm--SATA-6Gb-s--PBU120GS25SSDR-_1198122.html', 'Mindfactory'),
(2, '128GB Intenso Top III 2.5\" (6.4cm) SATA 6Gb/s MLC (3812430)', 128, '23.94', '2018-11-07', 0.19, 'https://www.mindfactory.de/product_info.php/128GB-Intenso-Top-III-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812430-_813113.html', 'Mindfactory'),
(3, '240GB Patriot Burst 2.5\" (6.4cm) SATA 6Gb/s (PBU240GS25SSDR)', 240, '33.90', '2018-11-07', 0.14, 'https://www.mindfactory.de/product_info.php/240GB-Patriot-Burst-2-5Zoll--6-4cm--SATA-6Gb-s--PBU240GS25SSDR-_1196536.html', 'Mindfactory'),
(4, '250GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT250MX500SSD1)', 250, '41.90', '2018-11-07', 0.17, 'https://www.mindfactory.de/product_info.php/250GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT250MX500S_1222726.html', 'Mindfactory'),
(5, '256GB Intenso 3812440 2.5\" (6.4cm) SATA 6Gb/s MLC (3812440)', 256, '35.90', '2018-11-07', 0.14, 'https://www.mindfactory.de/product_info.php/256GB-Intenso-3812440-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812440-_813115.html', 'Mindfactory'),
(6, '480GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/480G)', 480, '61.90', '2018-11-07', 0.13, 'https://www.mindfactory.de/product_info.php/480GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-480G-_1171434.html', 'Mindfactory'),
(7, '500GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT500MX500SSD1)', 500, '75.49', '2018-11-07', 0.15, 'https://www.mindfactory.de/product_info.php/500GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT500MX500S_1222727.html', 'Mindfactory'),
(8, '512GB Intenso Top Performance 2.5\" (6.4cm) SATA 6Gb/s MLC (3812450)', 512, '65.42', '2018-11-07', 0.13, 'https://www.mindfactory.de/product_info.php/512GB-Intenso-Top-Performance-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812450-_950619.html', 'Mindfactory'),
(9, '960GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/960G)', 960, '129.84', '2018-11-07', 0.14, 'https://www.mindfactory.de/product_info.php/960GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-960G-_1233751.html', 'Mindfactory'),
(10, '1000GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT1000MX500SSD1)', 1000, '139.49', '2018-11-07', 0.14, 'https://www.mindfactory.de/product_info.php/1000GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT1000MX50_1219929.html', 'Mindfactory'),
(11, '2000GB SanDisk Ultra 3D 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (SDSSDH3-2T00-G25)', 2000, '309.00', '2018-11-07', 0.15, 'https://www.mindfactory.de/product_info.php/2000GB-SanDisk-Ultra-3D-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--SDSSDH3_1198673.html', 'Mindfactory'),
(12, '4000GB Samsung 850 Evo 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC Toggle (MZ-75E4T0B/EU)', 4000, '1179.84', '2018-11-07', 0.29, 'https://www.mindfactory.de/product_info.php/4000GB-Samsung-850-Evo-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC-Toggle--M_1110030.html', 'Mindfactory'),
(13, '120GB Patriot Burst 2.5\" (6.4cm) SATA 6Gb/s (PBU120GS25SSDR)', 120, '20.90', '2018-11-08', 0.17, 'https://www.mindfactory.de/product_info.php/120GB-Patriot-Burst-2-5Zoll--6-4cm--SATA-6Gb-s--PBU120GS25SSDR-_1198122.html', 'Mindfactory'),
(14, '128GB Intenso Top III 2.5\" (6.4cm) SATA 6Gb/s MLC (3812430)', 128, '23.94', '2018-11-08', 0.19, 'https://www.mindfactory.de/product_info.php/128GB-Intenso-Top-III-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812430-_813113.html', 'Mindfactory'),
(15, '240GB Patriot Burst 2.5\" (6.4cm) SATA 6Gb/s (PBU240GS25SSDR)', 240, '33.90', '2018-11-08', 0.14, 'https://www.mindfactory.de/product_info.php/240GB-Patriot-Burst-2-5Zoll--6-4cm--SATA-6Gb-s--PBU240GS25SSDR-_1196536.html', 'Mindfactory'),
(16, '250GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT250MX500SSD1)', 250, '41.90', '2018-11-08', 0.17, 'https://www.mindfactory.de/product_info.php/250GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT250MX500S_1222726.html', 'Mindfactory'),
(17, '256GB Intenso 3812440 2.5\" (6.4cm) SATA 6Gb/s MLC (3812440)', 256, '35.90', '2018-11-08', 0.14, 'https://www.mindfactory.de/product_info.php/256GB-Intenso-3812440-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812440-_813115.html', 'Mindfactory'),
(18, '480GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/480G)', 480, '61.90', '2018-11-08', 0.13, 'https://www.mindfactory.de/product_info.php/480GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-480G-_1171434.html', 'Mindfactory'),
(19, '500GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT500MX500SSD1)', 500, '69.90', '2018-11-08', 0.14, 'https://www.mindfactory.de/product_info.php/500GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT500MX500S_1222727.html', 'Mindfactory'),
(20, '512GB Intenso Top Performance 2.5\" (6.4cm) SATA 6Gb/s MLC (3812450)', 512, '65.42', '2018-11-08', 0.13, 'https://www.mindfactory.de/product_info.php/512GB-Intenso-Top-Performance-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812450-_950619.html', 'Mindfactory'),
(21, '960GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/960G)', 960, '129.84', '2018-11-08', 0.14, 'https://www.mindfactory.de/product_info.php/960GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-960G-_1233751.html', 'Mindfactory'),
(22, '1000GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT1000MX500SSD1)', 1000, '138.90', '2018-11-08', 0.14, 'https://www.mindfactory.de/product_info.php/1000GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT1000MX50_1219929.html', 'Mindfactory'),
(23, '2000GB SanDisk Ultra 3D 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (SDSSDH3-2T00-G25)', 2000, '309.00', '2018-11-08', 0.15, 'https://www.mindfactory.de/product_info.php/2000GB-SanDisk-Ultra-3D-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--SDSSDH3_1198673.html', 'Mindfactory'),
(24, '4000GB Samsung 850 Evo 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC Toggle (MZ-75E4T0B/EU)', 4000, '1179.84', '2018-11-08', 0.29, 'https://www.mindfactory.de/product_info.php/4000GB-Samsung-850-Evo-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC-Toggle--M_1110030.html', 'Mindfactory'),
(25, '120GB Patriot Burst 2.5\" (6.4cm) SATA 6Gb/s (PBU120GS25SSDR)', 120, '20.90', '2018-11-09', 0.17, 'https://www.mindfactory.de/product_info.php/120GB-Patriot-Burst-2-5Zoll--6-4cm--SATA-6Gb-s--PBU120GS25SSDR-_1198122.html', 'Mindfactory'),
(26, '128GB Intenso Top III 2.5\" (6.4cm) SATA 6Gb/s MLC (3812430)', 128, '23.94', '2018-11-09', 0.19, 'https://www.mindfactory.de/product_info.php/128GB-Intenso-Top-III-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812430-_813113.html', 'Mindfactory'),
(27, '240GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/240G)', 240, '33.90', '2018-11-09', 0.14, 'https://www.mindfactory.de/product_info.php/240GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-240G-_1171433.html', 'Mindfactory'),
(28, '250GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT250MX500SSD1)', 250, '41.90', '2018-11-09', 0.17, 'https://www.mindfactory.de/product_info.php/250GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT250MX500S_1222726.html', 'Mindfactory'),
(29, '256GB Intenso 3812440 2.5\" (6.4cm) SATA 6Gb/s MLC (3812440)', 256, '35.90', '2018-11-09', 0.14, 'https://www.mindfactory.de/product_info.php/256GB-Intenso-3812440-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812440-_813115.html', 'Mindfactory'),
(30, '480GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/480G)', 480, '61.90', '2018-11-09', 0.13, 'https://www.mindfactory.de/product_info.php/480GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-480G-_1171434.html', 'Mindfactory'),
(31, '500GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT500MX500SSD1)', 500, '69.90', '2018-11-09', 0.14, 'https://www.mindfactory.de/product_info.php/500GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT500MX500S_1222727.html', 'Mindfactory'),
(32, '512GB Intenso Top Performance 2.5\" (6.4cm) SATA 6Gb/s MLC (3812450)', 512, '65.42', '2018-11-09', 0.13, 'https://www.mindfactory.de/product_info.php/512GB-Intenso-Top-Performance-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812450-_950619.html', 'Mindfactory'),
(33, '960GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/960G)', 960, '122.93', '2018-11-09', 0.13, 'https://www.mindfactory.de/product_info.php/960GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-960G-_1233751.html', 'Mindfactory'),
(34, '1000GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT1000MX500SSD1)', 1000, '138.90', '2018-11-09', 0.14, 'https://www.mindfactory.de/product_info.php/1000GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT1000MX50_1219929.html', 'Mindfactory'),
(35, '2000GB SanDisk Ultra 3D 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (SDSSDH3-2T00-G25)', 2000, '309.00', '2018-11-09', 0.15, 'https://www.mindfactory.de/product_info.php/2000GB-SanDisk-Ultra-3D-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--SDSSDH3_1198673.html', 'Mindfactory'),
(36, '4000GB Samsung 850 Evo 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC Toggle (MZ-75E4T0B/EU)', 4000, '1179.84', '2018-11-09', 0.29, 'https://www.mindfactory.de/product_info.php/4000GB-Samsung-850-Evo-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC-Toggle--M_1110030.html', 'Mindfactory'),
(37, '120GB Patriot Burst 2.5\" (6.4cm) SATA 6Gb/s (PBU120GS25SSDR)', 120, '20.90', '2018-11-10', 0.17, 'https://www.mindfactory.de/product_info.php/120GB-Patriot-Burst-2-5Zoll--6-4cm--SATA-6Gb-s--PBU120GS25SSDR-_1198122.html', 'Mindfactory'),
(38, '128GB Intenso Top III 2.5\" (6.4cm) SATA 6Gb/s MLC (3812430)', 128, '23.94', '2018-11-10', 0.19, 'https://www.mindfactory.de/product_info.php/128GB-Intenso-Top-III-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812430-_813113.html', 'Mindfactory'),
(39, '240GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/240G)', 240, '33.90', '2018-11-10', 0.14, 'https://www.mindfactory.de/product_info.php/240GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-240G-_1171433.html', 'Mindfactory'),
(40, '250GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT250MX500SSD1)', 250, '41.90', '2018-11-10', 0.17, 'https://www.mindfactory.de/product_info.php/250GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT250MX500S_1222726.html', 'Mindfactory'),
(41, '256GB Intenso 3812440 2.5\" (6.4cm) SATA 6Gb/s MLC (3812440)', 256, '35.90', '2018-11-10', 0.14, 'https://www.mindfactory.de/product_info.php/256GB-Intenso-3812440-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812440-_813115.html', 'Mindfactory'),
(42, '480GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/480G)', 480, '61.90', '2018-11-10', 0.13, 'https://www.mindfactory.de/product_info.php/480GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-480G-_1171434.html', 'Mindfactory'),
(43, '500GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT500MX500SSD1)', 500, '69.90', '2018-11-10', 0.14, 'https://www.mindfactory.de/product_info.php/500GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT500MX500S_1222727.html', 'Mindfactory'),
(44, '512GB Intenso Top Performance 2.5\" (6.4cm) SATA 6Gb/s MLC (3812450)', 512, '65.90', '2018-11-10', 0.13, 'https://www.mindfactory.de/product_info.php/512GB-Intenso-Top-Performance-2-5Zoll--6-4cm--SATA-6Gb-s-MLC--3812450-_950619.html', 'Mindfactory'),
(45, '960GB Kingston A400 2.5\" (6.4cm) SATA 6Gb/s TLC NAND (SA400S37/960G)', 960, '122.93', '2018-11-10', 0.13, 'https://www.mindfactory.de/product_info.php/960GB-Kingston-A400-2-5Zoll--6-4cm--SATA-6Gb-s-TLC-NAND--SA400S37-960G-_1233751.html', 'Mindfactory'),
(46, '1000GB Crucial MX500 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (CT1000MX500SSD1)', 1000, '138.90', '2018-11-10', 0.14, 'https://www.mindfactory.de/product_info.php/1000GB-Crucial-MX500-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--CT1000MX50_1219929.html', 'Mindfactory'),
(47, '2000GB SanDisk Ultra 3D 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC (SDSSDH3-2T00-G25)', 2000, '309.00', '2018-11-10', 0.15, 'https://www.mindfactory.de/product_info.php/2000GB-SanDisk-Ultra-3D-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC--SDSSDH3_1198673.html', 'Mindfactory'),
(48, '4000GB Samsung 850 Evo 2.5\" (6.4cm) SATA 6Gb/s 3D-NAND TLC Toggle (MZ-75E4T0B/EU)', 4000, '1179.84', '2018-11-10', 0.29, 'https://www.mindfactory.de/product_info.php/4000GB-Samsung-850-Evo-2-5Zoll--6-4cm--SATA-6Gb-s-3D-NAND-TLC-Toggle--M_1110030.html', 'Mindfactory');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ssd`
--
ALTER TABLE `ssd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
