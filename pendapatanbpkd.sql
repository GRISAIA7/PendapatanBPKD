-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 04:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendapatanbpkd`
--

-- --------------------------------------------------------

--
-- Table structure for table `pkb`
--

CREATE TABLE `pkb` (
  `id` int(255) NOT NULL,
  `Status` enum('0','1') NOT NULL,
  `Nopol` varchar(7) NOT NULL,
  `KodeWilayah` varchar(4) NOT NULL,
  `NamaWp` varchar(100) NOT NULL,
  `AlamatWp` text NOT NULL,
  `JenisKendaraan` enum('Sepeda Motor Solo','Mobil Roda Empat Pribadi','Mobil Angkutan Umum','Truk Pengangkut') NOT NULL,
  `TipeKendaraan` varchar(8) NOT NULL,
  `MerkKendaraan` int(15) NOT NULL,
  `WarnaKendaraan` int(10) NOT NULL,
  `TahunBuatan` year(4) NOT NULL,
  `NomorRangka` varchar(17) NOT NULL,
  `NomorMesin` varchar(13) NOT NULL,
  `PkbPokok` double NOT NULL,
  `PkbTunggakan` double DEFAULT NULL,
  `PkbDenda` double NOT NULL,
  `SwdklljPokok` double NOT NULL,
  `SwdklljDenda` double NOT NULL,
  `Pnbp` double NOT NULL,
  `TotalTagihan` double NOT NULL,
  `Ntpd` enum('0','1') NOT NULL,
  `TglAwal` datetime NOT NULL,
  `TglAkhir` datetime NOT NULL,
  `TglNtpd` datetime NOT NULL,
  `KodeBayar` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pkb`
--
ALTER TABLE `pkb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pkb`
--
ALTER TABLE `pkb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
