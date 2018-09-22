-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2018 at 11:05 PM
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
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `ID` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `threads` varchar(3) NOT NULL,
  `price` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `price_percore` float(8,2) NOT NULL,
  `href` varchar(1000) NOT NULL,
  `store` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`ID`, `name`, `threads`, `price`, `date`, `price_percore`, `href`, `store`, `brand`) VALUES
(1, 'AMD procesor A6-9500E APU 3,0/3,4GHz 65W R5 BOX', '2', '52.30', '2018-09-22', 26.15, 'https://www.mimovrste.com/procesorji/amd-procesor-a6-9500e-apu-3034ghz-65w-r5-box', 'Mimovrste', 'AMD'),
(2, 'AMD procesor A6-9500E APU 3,0/3,4GHz 65W R5 BOX', '2', '52.60', '2018-09-22', 26.30, 'https://www.mimovrste.com/procesorji/amd-procesor-a6-9500e-apu-3034ghz-65w-r5-box', 'Mimovrste', 'AMD'),
(3, 'AMD procesor A6 9500 s hladilnikom Bristol Ridge, AM4, 65W (AD9500AGABBOX)', '2', '54.70', '2018-09-22', 27.35, 'https://www.mimovrste.com/procesorji/amd-procesor-a6-9500e-apu-3034ghz-65w-r5-box', 'Mimovrste', 'AMD'),
(4, 'AMD procesor A8 9600 APU s hladilnikom Bristol Ridge, AM4, 65W (AD9600AGABBOX)', '4', '67.20', '2018-09-22', 16.80, 'https://www.mimovrste.com/procesorji/amd-procesor-a8-9600-apu-s-hladilnikom-bristol-ridge-am4-65w-ad9600agabbox-', 'Mimovrste', 'AMD'),
(5, 'AMD procesor A10-9700 APU 3,5/3,8GHz, 65W, R7, BOX', '4', '75.10', '2018-09-22', 18.77, 'https://www.mimovrste.com/procesorji/amd-procesor-a8-9600-apu-s-hladilnikom-bristol-ridge-am4-65w-ad9600agabbox-', 'Mimovrste', 'AMD'),
(6, 'AMD procesor Ryzen 3 2200G s hladilnikom Wraith Stealth 65W (YD2200C5FBBOX)', '4', '104.40', '2018-09-22', 26.10, 'https://www.mimovrste.com/procesorji/amd-procesor-a8-9600-apu-s-hladilnikom-bristol-ridge-am4-65w-ad9600agabbox-', 'Mimovrste', 'AMD'),
(7, 'AMD procesor Ryzen 3 1200 s hladilnikom Wraith Stealth 65W (YD1200BBAEBOX)', '4', '106.50', '2018-09-22', 26.62, 'https://www.mimovrste.com/procesorji/amd-procesor-a8-9600-apu-s-hladilnikom-bristol-ridge-am4-65w-ad9600agabbox-', 'Mimovrste', 'AMD'),
(8, 'AMD procesor Ryzen 3 1300X s hladilnikom Wraith Stealth 65W (YD130XBBAEBOX)', '4', '137.90', '2018-09-22', 34.48, 'https://www.mimovrste.com/procesorji/amd-procesor-a8-9600-apu-s-hladilnikom-bristol-ridge-am4-65w-ad9600agabbox-', 'Mimovrste', 'AMD'),
(9, 'AMD procesor Ryzen 5 1400 s hladilnikom Wraith Spire 65W (YD1400BBAEBOX)', '8', '154.60', '2018-09-22', 19.32, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-5-1400-s-hladilnikom-wraith-spire-65w-yd1400bbaebox', 'Mimovrste', 'AMD'),
(10, 'AMD procesor Ryzen 5 1500X z Wraith Spire 95W hladilnikom', '8', '160.50', '2018-09-22', 20.06, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-5-1400-s-hladilnikom-wraith-spire-65w-yd1400bbaebox', 'Mimovrste', 'AMD'),
(11, 'AMD procesor Ryzen 5 2400G s hladilnikom Wraith Stealth 65W (YD2400C5FBBOX)', '8', '174.90', '2018-09-22', 21.86, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-5-1400-s-hladilnikom-wraith-spire-65w-yd1400bbaebox', 'Mimovrste', 'AMD'),
(12, 'AMD procesor Ryzen 5 1600 (YD1600BBAEBOX)', '12', '165.30', '2018-09-22', 13.78, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-5-1600-yd1600bbaebox', 'Mimovrste', 'AMD'),
(13, 'AMD procesor Ryzen 5 2600 s hladilnikom Wraith Stealth (YD2600BBAFBOX)', '12', '192.80', '2018-09-22', 16.07, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-5-1600-yd1600bbaebox', 'Mimovrste', 'AMD'),
(14, 'AMD procesor Ryzen 5 2600X s hladilnikom Wraith Spire (YD260XBCAFBOX)', '12', '247', '2018-09-22', 20.58, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-5-1600-yd1600bbaebox', 'Mimovrste', 'AMD'),
(15, 'AMD procesor Ryzen 7 1700 s hladilnikom Wraith Spire 95W (YD1700BBAEBOX)', '16', '244.50', '2018-09-22', 15.28, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-7-1700-s-hladilnikom-wraith-spire-95w-yd1700bbaebox', 'Mimovrste', 'AMD'),
(16, 'AMD procesor Ryzen 7 1700X (YD170XBCAEWOF)', '16', '257', '2018-09-22', 16.06, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-7-1700-s-hladilnikom-wraith-spire-95w-yd1700bbaebox', 'Mimovrste', 'AMD'),
(17, 'AMD procesor Ryzen 7 1800X (YD180XBCAEWOF)', '16', '275.80', '2018-09-22', 17.24, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-7-1700-s-hladilnikom-wraith-spire-95w-yd1700bbaebox', 'Mimovrste', 'AMD'),
(18, 'AMD  procesor Ryzen Threadripper 1900X', '16', '329', '2018-09-22', 20.56, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-7-1700-s-hladilnikom-wraith-spire-95w-yd1700bbaebox', 'Mimovrste', 'AMD'),
(19, 'AMD procesor Ryzen 7 2700 s hladilnikom Wraith Spire LED (YD2700BBAFBOX)', '16', '338.60', '2018-09-22', 21.16, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-7-1700-s-hladilnikom-wraith-spire-95w-yd1700bbaebox', 'Mimovrste', 'AMD'),
(20, 'AMD procesor Ryzen 7 2700X s hladilnikom Wraith Prism LED (YD270XBGAFBOX)', '16', '347.30', '2018-09-22', 21.71, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-7-1700-s-hladilnikom-wraith-spire-95w-yd1700bbaebox', 'Mimovrste', 'AMD'),
(21, 'AMD procesor Ryzen Threadripper 1920X (YD192XA8AEWOF)', '24', '677.30', '2018-09-22', 28.22, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-threadripper-1920x-yd192xa8aewof', 'Mimovrste', 'AMD'),
(22, 'AMD procesor Ryzen Threadripper 1950X (YD195XA8AEWOF), brez hladilnika', '32', '852.20', '2018-09-22', 26.63, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-threadripper-1950x-yd195xa8aewof-brez-hladilnika', 'Mimovrste', 'AMD'),
(23, 'AMD procesor Ryzen Threadripper 2950X', '32', '1004.40', '2018-09-22', 31.39, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-threadripper-1950x-yd195xa8aewof-brez-hladilnika', 'Mimovrste', 'AMD'),
(24, 'AMD procesor Ryzen Threadripper 2990WX', '64', '2164.65', '2018-09-22', 33.82, 'https://www.mimovrste.com/procesorji/amd-procesor-ryzen-threadripper-2990wx', 'Mimovrste', 'AMD'),
(25, 'Intel Celeron G3900 BOX procesor, Skylake', '2', '37.10', '2018-09-22', 18.55, 'https://www.mimovrste.com/procesorji/intel-celeron-g3900-box-procesor-skylake', 'Mimovrste', 'Intel'),
(26, 'Intel Celeron G3930 BOX procesor, Kaby Lake', '2', '42.50', '2018-09-22', 21.25, 'https://www.mimovrste.com/procesorji/intel-celeron-g3900-box-procesor-skylake', 'Mimovrste', 'Intel'),
(27, 'Intel Celeron G4920 BOX procesor, Coffee Lake', '2', '58.50', '2018-09-22', 29.25, 'https://www.mimovrste.com/procesorji/intel-celeron-g3900-box-procesor-skylake', 'Mimovrste', 'Intel'),
(28, 'Intel Celeron G4900 BOX procesor, Coffee Lake', '2', '61.90', '2018-09-22', 30.95, 'https://www.mimovrste.com/procesorji/intel-celeron-g3900-box-procesor-skylake', 'Mimovrste', 'Intel'),
(29, 'Intel procesor Pentium G4400 Dual Core 3,3GHz 3MB LGA 1151 Box', '2', '61.90', '2018-09-22', 30.95, 'https://www.mimovrste.com/procesorji/intel-celeron-g3900-box-procesor-skylake', 'Mimovrste', 'Intel'),
(30, 'Intel Pentium procesor G4560 3,5GHz 3MB LGA1151 BOX (BX80677G4560)', '4', '57.10', '2018-09-22', 14.28, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(31, 'Intel Pentium procesor G5400 BOX, Coffee Lake', '4', '57.60', '2018-09-22', 14.40, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(32, 'Intel Pentium procesor G4600 BOX procesor, Kaby Lake', '4', '75.10', '2018-09-22', 18.77, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(33, 'Intel Pentium procesor G5500 BOX, Coffee Lake', '4', '91.90', '2018-09-22', 22.98, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(34, 'Intel Pentium procesor G5600 BOX, Coffee Lake', '4', '105.90', '2018-09-22', 26.48, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(35, 'Intel procesor i3-8100 BOX, Coffee Lake', '4', '139', '2018-09-22', 34.75, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(36, 'Intel procesor i3-7100 BOX, Kaby Lake', '4', '152.90', '2018-09-22', 38.23, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(37, 'Intel procesor i3-8300K BOX, Coffee Lake', '4', '162.50', '2018-09-22', 40.62, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(38, 'Intel procesor i3-8350K BOX, Coffee Lake', '4', '198', '2018-09-22', 49.50, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(39, 'Intel procesor i5-7400 BOX, Kaby Lake', '4', '250.80', '2018-09-22', 62.70, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(40, 'Intel procesor i5-7600 BOX, Kaby Lake', '4', '252.30', '2018-09-22', 63.08, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(41, 'Intel procesor i5-7500 BOX, Kaby Lake', '4', '263.30', '2018-09-22', 65.83, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(42, 'Intel procesor i5-7600K BOX, Kaby Lake', '4', '282.50', '2018-09-22', 70.62, 'https://www.mimovrste.com/procesorji/intel-pentium-procesor-g4560-3-5ghz-3mb-lga1151-box-bx80677g4560', 'Mimovrste', 'Intel'),
(43, 'Intel procesor Core i5-8500 BOX, Coffee Lake', '6', '263.30', '2018-09-22', 43.88, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i5-8500-box-coffee-lake', 'Mimovrste', 'Intel'),
(44, 'Intel procesor Core i5-8400 BOX, Coffee Lake', '6', '269', '2018-09-22', 44.83, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i5-8500-box-coffee-lake', 'Mimovrste', 'Intel'),
(45, 'Intel procesor Core i5+ 8400 BOX, Coffee Lake, priložen Intel Optane 16 GB', '6', '296.70', '2018-09-22', 49.45, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i5-8500-box-coffee-lake', 'Mimovrste', 'Intel'),
(46, 'Intel procesor Core i5+ 8500 BOX, Coffee Lake, priložen Intel Optane 16 GB', '6', '304.80', '2018-09-22', 50.80, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i5-8500-box-coffee-lake', 'Mimovrste', 'Intel'),
(47, 'Intel procesor Core i5-8600 BOX, Coffee Lake', '6', '307.20', '2018-09-22', 51.20, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i5-8500-box-coffee-lake', 'Mimovrste', 'Intel'),
(48, 'Intel procesor i5-8600K BOX, Coffee Lake', '6', '315', '2018-09-22', 52.50, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i5-8500-box-coffee-lake', 'Mimovrste', 'Intel'),
(49, 'Intel procesor i7-7700 BOX, Kaby Lake', '8', '355.20', '2018-09-22', 44.40, 'https://www.mimovrste.com/procesorji/intel-procesor-i7-7700-box-kaby-lake', 'Mimovrste', 'Intel'),
(50, 'Intel procesor i7-7700K BOX, Kaby Lake', '8', '401.30', '2018-09-22', 50.16, 'https://www.mimovrste.com/procesorji/intel-procesor-i7-7700-box-kaby-lake', 'Mimovrste', 'Intel'),
(51, 'Intel procesor Core i7+ 8700 BOX, Coffee Lake, priložen Intel Optane 16 GB', '12', '396', '2018-09-22', 33.00, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i7-8700-box-coffee-lake-prilozen-intel-optane-16-gb', 'Mimovrste', 'Intel'),
(52, 'Intel procesor i7-8700 BOX, Coffee Lake', '12', '399', '2018-09-22', 33.25, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i7-8700-box-coffee-lake-prilozen-intel-optane-16-gb', 'Mimovrste', 'Intel'),
(53, 'Intel procesor i7-8700K BOX, Coffee Lake', '12', '449', '2018-09-22', 37.42, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i7-8700-box-coffee-lake-prilozen-intel-optane-16-gb', 'Mimovrste', 'Intel'),
(54, 'Intel procesor Core i7 8086K BOX Anniversary limited edition, Coffee Lake', '12', '495.30', '2018-09-22', 41.27, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i7-8700-box-coffee-lake-prilozen-intel-optane-16-gb', 'Mimovrste', 'Intel'),
(55, 'Intel procesor Core i7 6800K BOX', '12', '501.60', '2018-09-22', 41.80, 'https://www.mimovrste.com/procesorji/intel-procesor-core-i7-8700-box-coffee-lake-prilozen-intel-optane-16-gb', 'Mimovrste', 'Intel');

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
(395, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-17', 38.11, '', 'Mimovrste'),
(421, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-18', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca200-2-tb-7200-rpm-64-mb-sata3', 'Mimovrste'),
(422, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-18', 24.47, 'https://www.mimovrste.com/trdi-diski-hdd/intenso-35-trdi-disk-3-tb-6513113', 'Mimovrste'),
(423, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-18', 27.75, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-barracuda-4-tb-35-sata3-6gbs-256mb-5400-obratov-st4000dm004', 'Mimovrste'),
(424, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-18', 33.22, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-5tb-889cm-7200rpm-128mb-sata3-bulk-hdwe150uzsva', 'Mimovrste'),
(425, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-18', 30.37, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-6tb-7200-rpm-128-mb-sata3-bulk-hdwe160uzsva', 'Mimovrste'),
(426, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-18', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-8tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(427, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-18', 32.91, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-10tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(428, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-18', 38.11, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-nas-ironwolf-pro-12-tb-sata-3-7200-256-mb', 'Mimovrste'),
(429, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-18', 40.60, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca100-1-tb-7200-rpm-32-mb-sata3', 'Mimovrste'),
(430, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-18', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca200-2-tb-7200-rpm-64-mb-sata3', 'Mimovrste'),
(431, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-18', 24.47, 'https://www.mimovrste.com/trdi-diski-hdd/intenso-35-trdi-disk-3-tb-6513113', 'Mimovrste'),
(432, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-18', 27.75, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-barracuda-4-tb-35-sata3-6gbs-256mb-5400-obratov-st4000dm004', 'Mimovrste'),
(433, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-18', 33.22, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-5tb-889cm-7200rpm-128mb-sata3-bulk-hdwe150uzsva', 'Mimovrste'),
(434, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-18', 30.37, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-6tb-7200-rpm-128-mb-sata3-bulk-hdwe160uzsva', 'Mimovrste'),
(435, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-18', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-8tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(436, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-18', 32.91, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-10tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(437, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-18', 38.11, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-nas-ironwolf-pro-12-tb-sata-3-7200-256-mb', 'Mimovrste'),
(438, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-18', 40.60, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca100-1-tb-7200-rpm-32-mb-sata3', 'Mimovrste'),
(439, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-18', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca200-2-tb-7200-rpm-64-mb-sata3', 'Mimovrste'),
(440, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-18', 24.47, 'https://www.mimovrste.com/trdi-diski-hdd/intenso-35-trdi-disk-3-tb-6513113', 'Mimovrste'),
(441, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-18', 27.75, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-barracuda-4-tb-35-sata3-6gbs-256mb-5400-obratov-st4000dm004', 'Mimovrste'),
(442, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-18', 33.22, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-5tb-889cm-7200rpm-128mb-sata3-bulk-hdwe150uzsva', 'Mimovrste'),
(443, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-18', 30.37, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-6tb-7200-rpm-128-mb-sata3-bulk-hdwe160uzsva', 'Mimovrste'),
(444, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-18', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-8tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(445, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-18', 32.91, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-10tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(446, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-18', 38.11, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-nas-ironwolf-pro-12-tb-sata-3-7200-256-mb', 'Mimovrste'),
(450, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '40.60', '2018-09-19', 40.60, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca100-1-tb-7200-rpm-32-mb-sata3', 'Mimovrste'),
(451, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.70', '2018-09-19', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca200-2-tb-7200-rpm-64-mb-sata3', 'Mimovrste'),
(452, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-19', 24.47, 'https://www.mimovrste.com/trdi-diski-hdd/intenso-35-trdi-disk-3-tb-6513113', 'Mimovrste'),
(453, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-19', 27.75, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-barracuda-4-tb-35-sata3-6gbs-256mb-5400-obratov-st4000dm004', 'Mimovrste'),
(454, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-19', 33.22, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-5tb-889cm-7200rpm-128mb-sata3-bulk-hdwe150uzsva', 'Mimovrste'),
(455, 'Toshiba trdi disk X300 6TB, 7200 rpm, 128 MB, SATA3, bulk (HDWE160UZSVA)', '6', '182.20', '2018-09-19', 30.37, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-6tb-7200-rpm-128-mb-sata3-bulk-hdwe160uzsva', 'Mimovrste'),
(456, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-19', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-8tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(457, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-19', 32.91, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-10tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(458, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-19', 38.11, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-nas-ironwolf-pro-12-tb-sata-3-7200-256-mb', 'Mimovrste'),
(459, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '42.30', '2018-09-20', 42.30, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca100-1-tb-7200-rpm-32-mb-sata3', 'Mimovrste'),
(460, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '65', '2018-09-20', 32.50, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca200-2-tb-7200-rpm-64-mb-sata3', 'Mimovrste'),
(461, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-20', 24.47, 'https://www.mimovrste.com/trdi-diski-hdd/intenso-35-trdi-disk-3-tb-6513113', 'Mimovrste'),
(462, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '111', '2018-09-20', 27.75, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-barracuda-4-tb-35-sata3-6gbs-256mb-5400-obratov-st4000dm004', 'Mimovrste'),
(463, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-20', 33.22, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-5tb-889cm-7200rpm-128mb-sata3-bulk-hdwe150uzsva', 'Mimovrste'),
(464, 'HGST trdi disk NAS 6TB, 7200 obratov SATA 3, 6Gb/s, 128MB', '6', '191.90', '2018-09-20', 31.98, 'https://www.mimovrste.com/trdi-diski-hdd/webhiddenbrand-hgst-trdi-disk-nas-6tb-7200-obratov-sata-3-6gbs-128mb', 'Mimovrste'),
(465, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-20', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-8tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(466, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-20', 32.91, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-10tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(467, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-20', 38.11, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-nas-ironwolf-pro-12-tb-sata-3-7200-256-mb', 'Mimovrste'),
(468, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '42.30', '2018-09-21', 42.30, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca100-1-tb-7200-rpm-32-mb-sata3', 'Mimovrste'),
(469, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '65', '2018-09-21', 32.50, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca200-2-tb-7200-rpm-64-mb-sata3', 'Mimovrste'),
(470, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-21', 24.47, 'https://www.mimovrste.com/trdi-diski-hdd/intenso-35-trdi-disk-3-tb-6513113', 'Mimovrste'),
(471, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '113.50', '2018-09-21', 28.38, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-barracuda-4-tb-35-sata3-6gbs-256mb-5400-obratov-st4000dm004', 'Mimovrste'),
(472, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-21', 33.22, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-5tb-889cm-7200rpm-128mb-sata3-bulk-hdwe150uzsva', 'Mimovrste'),
(473, 'HGST trdi disk NAS 6TB, 7200 obratov SATA 3, 6Gb/s, 128MB', '6', '191.90', '2018-09-21', 31.98, 'https://www.mimovrste.com/trdi-diski-hdd/webhiddenbrand-hgst-trdi-disk-nas-6tb-7200-obratov-sata-3-6gbs-128mb', 'Mimovrste'),
(474, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-21', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-8tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(475, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-21', 32.91, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-10tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(476, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-21', 38.11, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-nas-ironwolf-pro-12-tb-sata-3-7200-256-mb', 'Mimovrste'),
(477, 'Toshiba trdi disk DT01ACA100 1 TB, 7200 rpm, 32 MB, SATA3', '1', '42.30', '2018-09-22', 42.30, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca100-1-tb-7200-rpm-32-mb-sata3', 'Mimovrste'),
(478, 'Toshiba trdi disk Toshiba DT01ACA200 2 TB, 7200 rpm, 64 MB, SATA3', '2', '63.40', '2018-09-22', 31.70, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-toshiba-dt01aca200-2-tb-7200-rpm-64-mb-sata3', 'Mimovrste'),
(479, 'Intenso 3,5 trdi disk 3 TB (6513113)', '3', '73.40', '2018-09-22', 24.47, 'https://www.mimovrste.com/trdi-diski-hdd/intenso-35-trdi-disk-3-tb-6513113', 'Mimovrste'),
(480, 'Seagate trdi disk BarraCuda 4 TB, 3,5 SATA3, 6GB/s, 256MB, 5400 obratov (ST4000DM004)', '4', '113.50', '2018-09-22', 28.38, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-barracuda-4-tb-35-sata3-6gbs-256mb-5400-obratov-st4000dm004', 'Mimovrste'),
(481, 'Toshiba trdi disk X300 5TB 8,89cm, 7200rpm, 128MB, SATA3, bulk (HDWE150UZSVA)', '5', '166.10', '2018-09-22', 33.22, 'https://www.mimovrste.com/trdi-diski-hdd/toshiba-trdi-disk-x300-5tb-889cm-7200rpm-128mb-sata3-bulk-hdwe150uzsva', 'Mimovrste'),
(482, 'HGST trdi disk NAS 6TB, 7200 obratov SATA 3, 6Gb/s, 128MB', '6', '191.90', '2018-09-22', 31.98, 'https://www.mimovrste.com/trdi-diski-hdd/webhiddenbrand-hgst-trdi-disk-nas-6tb-7200-obratov-sata-3-6gbs-128mb', 'Mimovrste'),
(483, 'Seagate trdi disk SkyHawk, 8TB 7200 256MB SATA 6Gb/s', '8', '254.80', '2018-09-22', 31.85, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-8tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(484, 'Seagate trdi disk SkyHawk 10TB 7200 256MB SATA 6Gb/s', '10', '329.10', '2018-09-22', 32.91, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-skyhawk-10tb-7200-256mb-sata-6gbs', 'Mimovrste'),
(485, 'Seagate trdi disk NAS IronWolf Pro 12 TB, SATA 3, 7200, 256 MB', '12', '457.30', '2018-09-22', 38.11, 'https://www.mimovrste.com/trdi-diski-hdd/seagate-trdi-disk-nas-ironwolf-pro-12-tb-sata-3-7200-256-mb', 'Mimovrste');

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
(24, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-17', 0.27, '', 'Mimovrste'),
(50, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '38.50', '2018-09-18', 0.30, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-kingfast-f9-ssd-128gb-635-cm-25-sata-3-mlc-f9-sata3-128gb', 'Mimovrste'),
(51, 'Kingston SSD disk A400 240GB 6,35cm (2,5\") SATA3.0 (SA400S37/240G)', '240', '43.90', '2018-09-18', 0.18, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-240gb-635cm-25-sata30-sa400s37240g', 'Mimovrste'),
(52, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-18', 0.27, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-sk-hynix-disk-ssd-sl308-250-gb-25-sata3-tlc-7mm', 'Mimovrste'),
(53, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '50.90', '2018-09-18', 0.20, 'https://www.mimovrste.com/ssd-diski/intenso-trdi-disk-25-ssd-disk-top-256-gb-sata-iii-3812440', 'Mimovrste'),
(54, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-18', 0.17, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-25-480gb-sata-iii-high', 'Mimovrste'),
(55, 'Crucial disk SSD MX500 500GB 2.5 SATA3 3D TLC, 7mm', '500', '100.20', '2018-09-18', 0.20, 'https://www.mimovrste.com/ssd-diski/crucial-disk-ssd-mx500-500gb-25-sata3-3d-tlc-7mm', 'Mimovrste'),
(56, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '108.70', '2018-09-18', 0.21, 'https://www.mimovrste.com/ssd-diski/gigabyte-ssd-disk-ud-pro-512-gb-635-cm-25-sata3', 'Mimovrste'),
(57, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-18', 0.21, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-high-960-gb-635-cm-25-sata-3-3813460', 'Mimovrste'),
(58, 'WD SSD disk SATA 3 1 TB BLUE 3D NAND 6,35(2,5\") (WDS100T2B0A)', '1000', '212.60', '2018-09-18', 0.21, 'https://www.mimovrste.com/ssd-diski/wd-sd-disk-blue-sata3-1tb-635-25-wds100t2b0a', 'Mimovrste'),
(59, 'WD SSD disk SATA 3 2 TB BLUE 3D NAND 6,35 (2,5\") (WDS200T2B0A)', '2000', '450.10', '2018-09-18', 0.23, 'https://www.mimovrste.com/ssd-diski/wd-ssd-disk-blue-sata3-2tb-635-25-wds200t2b0a', 'Mimovrste'),
(60, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-18', 0.27, 'https://www.mimovrste.com/ssd-diski/samsung-ssd-disk-860-evo-4-tb-635-cm-25-sata-iii', 'Mimovrste'),
(61, 'Kingston SSD disk A400 120GB 6,35cm (2,5\") SATA3.0 (SA400S37/120G)', '120', '26.50', '2018-09-18', 0.22, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-120gb-635cm-25-sata30-sa400s37120g', 'Mimovrste'),
(62, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '38.50', '2018-09-18', 0.30, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-kingfast-f9-ssd-128gb-635-cm-25-sata-3-mlc-f9-sata3-128gb', 'Mimovrste'),
(63, 'Kingston SSD disk A400 240GB 6,35cm (2,5\") SATA3.0 (SA400S37/240G)', '240', '43.90', '2018-09-18', 0.18, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-240gb-635cm-25-sata30-sa400s37240g', 'Mimovrste'),
(64, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-18', 0.27, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-sk-hynix-disk-ssd-sl308-250-gb-25-sata3-tlc-7mm', 'Mimovrste'),
(65, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '50.90', '2018-09-18', 0.20, 'https://www.mimovrste.com/ssd-diski/intenso-trdi-disk-25-ssd-disk-top-256-gb-sata-iii-3812440', 'Mimovrste'),
(66, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-18', 0.17, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-25-480gb-sata-iii-high', 'Mimovrste'),
(67, 'Crucial disk SSD MX500 500GB 2.5 SATA3 3D TLC, 7mm', '500', '100.20', '2018-09-18', 0.20, 'https://www.mimovrste.com/ssd-diski/crucial-disk-ssd-mx500-500gb-25-sata3-3d-tlc-7mm', 'Mimovrste'),
(68, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '108.70', '2018-09-18', 0.21, 'https://www.mimovrste.com/ssd-diski/gigabyte-ssd-disk-ud-pro-512-gb-635-cm-25-sata3', 'Mimovrste'),
(69, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-18', 0.21, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-high-960-gb-635-cm-25-sata-3-3813460', 'Mimovrste'),
(70, 'WD SSD disk SATA 3 1 TB BLUE 3D NAND 6,35(2,5\") (WDS100T2B0A)', '1000', '212.60', '2018-09-18', 0.21, 'https://www.mimovrste.com/ssd-diski/wd-sd-disk-blue-sata3-1tb-635-25-wds100t2b0a', 'Mimovrste'),
(71, 'WD SSD disk SATA 3 2 TB BLUE 3D NAND 6,35 (2,5\") (WDS200T2B0A)', '2000', '450.10', '2018-09-18', 0.23, 'https://www.mimovrste.com/ssd-diski/wd-ssd-disk-blue-sata3-2tb-635-25-wds200t2b0a', 'Mimovrste'),
(72, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-18', 0.27, 'https://www.mimovrste.com/ssd-diski/samsung-ssd-disk-860-evo-4-tb-635-cm-25-sata-iii', 'Mimovrste'),
(73, 'Kingston SSD disk A400 120GB 6,35cm (2,5\") SATA3.0 (SA400S37/120G)', '120', '26.50', '2018-09-19', 0.22, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-120gb-635cm-25-sata30-sa400s37120g', 'Mimovrste'),
(74, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '38.50', '2018-09-19', 0.30, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-kingfast-f9-ssd-128gb-635-cm-25-sata-3-mlc-f9-sata3-128gb', 'Mimovrste'),
(75, 'Kingston SSD disk A400 240GB 6,35cm (2,5\") SATA3.0 (SA400S37/240G)', '240', '43.90', '2018-09-19', 0.18, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-240gb-635cm-25-sata30-sa400s37240g', 'Mimovrste'),
(76, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-19', 0.27, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-sk-hynix-disk-ssd-sl308-250-gb-25-sata3-tlc-7mm', 'Mimovrste'),
(77, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '50.90', '2018-09-19', 0.20, 'https://www.mimovrste.com/ssd-diski/intenso-trdi-disk-25-ssd-disk-top-256-gb-sata-iii-3812440', 'Mimovrste'),
(78, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-19', 0.17, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-25-480gb-sata-iii-high', 'Mimovrste'),
(79, 'Crucial disk SSD MX500 500GB 2.5 SATA3 3D TLC, 7mm', '500', '100.20', '2018-09-19', 0.20, 'https://www.mimovrste.com/ssd-diski/crucial-disk-ssd-mx500-500gb-25-sata3-3d-tlc-7mm', 'Mimovrste'),
(80, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '108.70', '2018-09-19', 0.21, 'https://www.mimovrste.com/ssd-diski/gigabyte-ssd-disk-ud-pro-512-gb-635-cm-25-sata3', 'Mimovrste'),
(81, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-19', 0.21, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-high-960-gb-635-cm-25-sata-3-3813460', 'Mimovrste'),
(82, 'WD SSD disk SATA 3 1 TB BLUE 3D NAND 6,35(2,5\") (WDS100T2B0A)', '1000', '212.60', '2018-09-19', 0.21, 'https://www.mimovrste.com/ssd-diski/wd-sd-disk-blue-sata3-1tb-635-25-wds100t2b0a', 'Mimovrste'),
(83, 'WD SSD disk SATA 3 2 TB BLUE 3D NAND 6,35 (2,5\") (WDS200T2B0A)', '2000', '450.10', '2018-09-19', 0.23, 'https://www.mimovrste.com/ssd-diski/wd-ssd-disk-blue-sata3-2tb-635-25-wds200t2b0a', 'Mimovrste'),
(84, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-19', 0.27, 'https://www.mimovrste.com/ssd-diski/samsung-ssd-disk-860-evo-4-tb-635-cm-25-sata-iii', 'Mimovrste'),
(85, 'Kingston SSD disk A400 120GB 6,35cm (2,5\") SATA3.0 (SA400S37/120G)', '120', '26.50', '2018-09-20', 0.22, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-120gb-635cm-25-sata30-sa400s37120g', 'Mimovrste'),
(86, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '37.20', '2018-09-20', 0.29, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-kingfast-f9-ssd-128gb-635-cm-25-sata-3-mlc-f9-sata3-128gb', 'Mimovrste'),
(87, 'Apacer SSD disk AS350 Panther 240 GB, 6.35 cm (2,5\"), SATA3, TLC', '240', '43.70', '2018-09-20', 0.18, 'https://www.mimovrste.com/ssd-diski/apacer-ssd-disk-as350-panther-240-gb-635-cm-25-sata3-tlc', 'Mimovrste'),
(88, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-20', 0.27, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-sk-hynix-disk-ssd-sl308-250-gb-25-sata3-tlc-7mm', 'Mimovrste'),
(89, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '50.90', '2018-09-20', 0.20, 'https://www.mimovrste.com/ssd-diski/intenso-trdi-disk-25-ssd-disk-top-256-gb-sata-iii-3812440', 'Mimovrste'),
(90, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-20', 0.17, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-25-480gb-sata-iii-high', 'Mimovrste'),
(91, 'Crucial disk SSD MX500 500GB 2.5 SATA3 3D TLC, 7mm', '500', '97', '2018-09-20', 0.19, 'https://www.mimovrste.com/ssd-diski/crucial-disk-ssd-mx500-500gb-25-sata3-3d-tlc-7mm', 'Mimovrste'),
(92, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '106', '2018-09-20', 0.21, 'https://www.mimovrste.com/ssd-diski/gigabyte-ssd-disk-ud-pro-512-gb-635-cm-25-sata3', 'Mimovrste'),
(93, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-20', 0.21, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-high-960-gb-635-cm-25-sata-3-3813460', 'Mimovrste'),
(94, 'Crucial disk SSD 1TB 2.5 SATA3 3D TLC, MX300, 7mm', '1000', '206', '2018-09-20', 0.21, 'https://www.mimovrste.com/ssd-diski/crucial-disk-ssd-1tb-25-sata3-3d-tlc-mx300-7mm', 'Mimovrste'),
(95, 'Crucial disk SSD MX500 2TB 2.5 SATA3 3D TLC, 7mm', '2000', '432.50', '2018-09-20', 0.22, 'https://www.mimovrste.com/ssd-diski/crucial-disk-ssd-mx500-2tb-25-sata3-3d-tlc-7mm', 'Mimovrste'),
(96, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-20', 0.27, 'https://www.mimovrste.com/ssd-diski/samsung-ssd-disk-860-evo-4-tb-635-cm-25-sata-iii', 'Mimovrste'),
(97, 'Kingston SSD disk A400 120GB 6,35cm (2,5\") SATA3.0 (SA400S37/120G)', '120', '25.90', '2018-09-21', 0.22, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-120gb-635cm-25-sata30-sa400s37120g', 'Mimovrste'),
(98, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '37.20', '2018-09-21', 0.29, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-kingfast-f9-ssd-128gb-635-cm-25-sata-3-mlc-f9-sata3-128gb', 'Mimovrste'),
(99, 'Apacer SSD disk AS350 Panther 240 GB, 6.35 cm (2,5\"), SATA3, TLC', '240', '43.70', '2018-09-21', 0.18, 'https://www.mimovrste.com/ssd-diski/apacer-ssd-disk-as350-panther-240-gb-635-cm-25-sata3-tlc', 'Mimovrste'),
(100, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-21', 0.27, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-sk-hynix-disk-ssd-sl308-250-gb-25-sata3-tlc-7mm', 'Mimovrste'),
(101, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '49', '2018-09-21', 0.19, 'https://www.mimovrste.com/ssd-diski/intenso-trdi-disk-25-ssd-disk-top-256-gb-sata-iii-3812440', 'Mimovrste'),
(102, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-21', 0.17, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-25-480gb-sata-iii-high', 'Mimovrste'),
(103, 'SanDisk SSD disk Ultra 3D 500 GB, SATA3, 3D TLC, 7 mm', '500', '97', '2018-09-21', 0.19, 'https://www.mimovrste.com/ssd-diski/sandisk-ssd-disk-ultra-3d-500-gb-sata3-3d-tlc-7-mm', 'Mimovrste'),
(104, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '106', '2018-09-21', 0.21, 'https://www.mimovrste.com/ssd-diski/gigabyte-ssd-disk-ud-pro-512-gb-635-cm-25-sata3', 'Mimovrste'),
(105, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-21', 0.21, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-high-960-gb-635-cm-25-sata-3-3813460', 'Mimovrste'),
(106, 'SanDisk SSD disk Ultra 1 TB, 6.35 cm (2,5\"), SATA 3, 3D', '1000', '205.30', '2018-09-21', 0.21, 'https://www.mimovrste.com/ssd-diski/sandisk-ssd-disk-ultra-1-tb-635-cm-25-sata-3-3d', 'Mimovrste'),
(107, 'WD SSD disk SATA 3 2 TB BLUE 3D NAND 6,35 (2,5\") (WDS200T2B0A)', '2000', '450.10', '2018-09-21', 0.23, 'https://www.mimovrste.com/ssd-diski/wd-ssd-disk-blue-sata3-2tb-635-25-wds200t2b0a', 'Mimovrste'),
(108, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-21', 0.27, 'https://www.mimovrste.com/ssd-diski/samsung-ssd-disk-860-evo-4-tb-635-cm-25-sata-iii', 'Mimovrste'),
(109, 'Kingston SSD disk A400 120GB 6,35cm (2,5\") SATA3.0 (SA400S37/120G)', '120', '26.20', '2018-09-22', 0.22, 'https://www.mimovrste.com/ssd-diski/kingston-ssd-disk-a400-120gb-635cm-25-sata30-sa400s37120g', 'Mimovrste'),
(110, 'Kingfast F9 SSD 128GB 6,35 cm (2.5\") SATA 3 MLC (F9-SATA3-128GB)', '128', '37.20', '2018-09-22', 0.29, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-kingfast-f9-ssd-128gb-635-cm-25-sata-3-mlc-f9-sata3-128gb', 'Mimovrste'),
(111, 'Apacer SSD disk AS350 Panther 240 GB, 6.35 cm (2,5\"), SATA3, TLC', '240', '43.70', '2018-09-22', 0.18, 'https://www.mimovrste.com/ssd-diski/apacer-ssd-disk-as350-panther-240-gb-635-cm-25-sata3-tlc', 'Mimovrste'),
(112, 'SK Hynix disk SSD SL308, 250 GB, 2.5, SATA3, TLC 7mm', '250', '67', '2018-09-22', 0.27, 'https://www.mimovrste.com/ssd-diski/webhiddenbrand-sk-hynix-disk-ssd-sl308-250-gb-25-sata3-tlc-7mm', 'Mimovrste'),
(113, 'Intenso trdi disk 2,5 SSD disk TOP 256 GB, SATA III (3812440)', '256', '49', '2018-09-22', 0.19, 'https://www.mimovrste.com/ssd-diski/intenso-trdi-disk-25-ssd-disk-top-256-gb-sata-iii-3812440', 'Mimovrste'),
(114, 'Intenso SSD disk 2,5 480GB, SATA III HIGH', '480', '81.90', '2018-09-22', 0.17, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-25-480gb-sata-iii-high', 'Mimovrste'),
(115, 'SanDisk SSD disk Ultra 3D 500 GB, SATA3, 3D TLC, 7 mm', '500', '97', '2018-09-22', 0.19, 'https://www.mimovrste.com/ssd-diski/sandisk-ssd-disk-ultra-3d-500-gb-sata3-3d-tlc-7-mm', 'Mimovrste'),
(116, 'Gigabyte SSD disk UD PRO 512 GB, 6,35 cm (2,5\"), SATA3', '512', '106', '2018-09-22', 0.21, 'https://www.mimovrste.com/ssd-diski/gigabyte-ssd-disk-ud-pro-512-gb-635-cm-25-sata3', 'Mimovrste'),
(117, 'Intenso SSD disk High 960 GB, 6.35 cm (2,5\"), SATA 3 (3813460)', '960', '201.20', '2018-09-22', 0.21, 'https://www.mimovrste.com/ssd-diski/intenso-ssd-disk-high-960-gb-635-cm-25-sata-3-3813460', 'Mimovrste'),
(118, 'SanDisk SSD disk Ultra 1 TB, 6.35 cm (2,5\"), SATA 3, 3D', '1000', '205.30', '2018-09-22', 0.21, 'https://www.mimovrste.com/ssd-diski/sandisk-ssd-disk-ultra-1-tb-635-cm-25-sata-3-3d', 'Mimovrste'),
(119, 'WD SSD disk SATA 3 2 TB BLUE 3D NAND 6,35 (2,5\") (WDS200T2B0A)', '2000', '450.10', '2018-09-22', 0.23, 'https://www.mimovrste.com/ssd-diski/wd-ssd-disk-blue-sata3-2tb-635-25-wds200t2b0a', 'Mimovrste'),
(120, 'Samsung SSD disk 860 EVO 4 TB, 6,35 cm (2,5\"), SATA III', '4000', '1073.53', '2018-09-22', 0.27, 'https://www.mimovrste.com/ssd-diski/samsung-ssd-disk-860-evo-4-tb-635-cm-25-sata-iii', 'Mimovrste');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT for table `cpu`
--
ALTER TABLE `cpu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `hdd`
--
ALTER TABLE `hdd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `ssd`
--
ALTER TABLE `ssd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
