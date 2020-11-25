-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 11:51 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voteosis`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` tinyint(1) NOT NULL,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `username`, `fullname`, `password`) VALUES
(1, 'osis.kanebsa', 'Administrator', '$2y$10$7cn0v7KHLVvfg4UKNSbVs.nM47YX8oAIbF.G.zTsVv3bqAgHI3DEe');

-- --------------------------------------------------------

--
-- Table structure for table `t_kandidat`
--

CREATE TABLE `t_kandidat` (
  `id_kandidat` smallint(4) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(1000) NOT NULL,
  `suara` int(4) NOT NULL,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id_kelas` varchar(4) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kelas`
--

INSERT INTO `t_kelas` (`id_kelas`, `nama_kelas`) VALUES
('K01', 'X - MM 1'),
('K02', 'X - MM 2'),
('K03', ' XI - MM 1'),
('K04', 'XI - MM 2'),
('K05', 'XII - MM 1'),
('K06', 'XII - MM 2'),
('K07', 'X - LIS 1'),
('K08', 'X - LIS 2'),
('K09', 'XI - LIS 1'),
('K10', 'XI - LIS 2'),
('K11', 'XII - LIS 1'),
('K12', 'XII - LIS 2'),
('K13', 'X - AV 1'),
('K14', 'X - AV 2'),
('K15', 'XI - AV 1'),
('K16', 'XI - AV 2'),
('K17', 'XII - AV 1'),
('K18', 'XII - AV 2'),
('K19', 'X - LAS 1'),
('K20', 'X - LAS 2'),
('K21', 'XI - LAS 1'),
('K22', 'XI - LAS 2'),
('K23', 'XII - LAS 1'),
('K24', 'XII - LAS 2'),
('K25', 'X - BKP 1'),
('K26', 'X - BKP 2'),
('K27', 'XI - BKP 1'),
('K28', 'XI - BKP 2'),
('K29', 'XII - BKP 1'),
('K30', 'XII - BKP 2'),
('K31', 'X - TBSM 1'),
('K32', 'X - TBSM 2'),
('K33', 'X - TBSM 3'),
('K34', 'XI - TBSM 1'),
('K35', 'XI - TBSM 2'),
('K36', 'XI - TBSM 3'),
('K37', 'XII - TBSM 1'),
('K38', 'XII - TBSM 2'),
('K39', 'XII - TBSM 3'),
('K40', 'X - TKR 1'),
('K41', 'X - TKR 2'),
('K42', 'X - TKR 3'),
('K43', 'X - TKR 4'),
('K44', 'XI - TKR 1'),
('K45', 'XI - TKR 2'),
('K46', 'XI - TKR 3'),
('K47', 'XI - TKR 4'),
('K48', 'XII - TKR 1'),
('K49', 'XII - TKR 2'),
('K50', 'XII - TKR 3'),
('K51', 'XII - TKR 4'),
('K52', 'X - DPIB 1'),
('K53', 'X - DPIB 2'),
('K54', 'XI - DPIB 1'),
('K55', 'XI - DPIB 2'),
('K56', 'XII - DPIB 1'),
('K57', 'XII - DPIB 2');

-- --------------------------------------------------------

--
-- Table structure for table `t_pemilih`
--

CREATE TABLE `t_pemilih` (
  `id` int(11) NOT NULL,
  `nis` varchar(25) NOT NULL,
  `periode` varchar(25) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(15) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `id_kelas` varchar(3) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pemilih` enum('Y','N') NOT NULL DEFAULT 'Y',
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `t_kandidat`
--
ALTER TABLE `t_kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indexes for table `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `t_pemilih`
--
ALTER TABLE `t_pemilih`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_kandidat`
--
ALTER TABLE `t_kandidat`
  MODIFY `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_pemilih`
--
ALTER TABLE `t_pemilih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
