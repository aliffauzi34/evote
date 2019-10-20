-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Okt 2019 pada 11.39
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` tinyint(1) NOT NULL,
  `username` varchar(35) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `username`, `fullname`, `password`) VALUES
(1, 'admin', 'Administrator', '$2y$10$5ok3rcIOv/yNIlPIGo49a.cXRAiA5ZsnxbpijFoyy5EuuYyVrZetu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kandidat`
--

CREATE TABLE `t_kandidat` (
  `id_kandidat` smallint(4) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(255) NOT NULL,
  `suara` smallint(4) NOT NULL DEFAULT 0,
  `periode` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kandidat`
--

INSERT INTO `t_kandidat` (`id_kandidat`, `nama_calon`, `foto`, `visi`, `misi`, `suara`, `periode`) VALUES
(9, 'Kandidat 1', '0.17692300 1571381327.png', 'Maju', 'Maju', 3, '2019/2020'),
(10, 'Kandidat 2', '0.05067500 1571381344.png', 'Terus ', 'Terus', 2, '2019/2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id_kelas` varchar(4) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kelas`
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
('K17', 'XII - AV 2'),
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
-- Struktur dari tabel `t_pemilih`
--

CREATE TABLE `t_pemilih` (
  `id` int(11) NOT NULL,
  `nis` varchar(25) NOT NULL,
  `periode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `id_kelas` varchar(3) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `pemilih` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `fullname`, `id_kelas`, `jk`, `pemilih`) VALUES
('1', 'a', 'K02', 'L', 'Y'),
('10', 'j', 'K01', 'P', 'Y'),
('11', 'k', 'K01', 'P', 'Y'),
('12', 'l', 'K01', 'P', 'Y'),
('13', 'm', 'K01', 'P', 'Y'),
('14', 'n', 'K01', 'P', 'Y'),
('15', 'o', 'K01', 'P', 'Y'),
('16', 'p', 'K01', 'P', 'Y'),
('17', 'q', 'K01', 'P', 'Y'),
('18', 'r', 'K01', 'P', 'Y'),
('19', 's', 'K01', 'P', 'Y'),
('2', 'b', 'K02', 'L', 'Y'),
('20', 't', 'K01', 'P', 'Y'),
('21', 'u', 'K01', 'P', 'Y'),
('22', 'v', 'K01', 'P', 'Y'),
('23', 'w', 'K01', 'P', 'Y'),
('24', 'x', 'K01', 'P', 'Y'),
('25', 'y', 'K01', 'P', 'Y'),
('26', 'z', 'K01', 'P', 'Y'),
('27', 'sfgsg', 'K01', 'P', 'Y'),
('28', 'fgdfgdfg', 'K01', 'P', 'Y'),
('29', 'dfgdfg', 'K01', 'P', 'Y'),
('3', 'c', 'K02', 'L', 'Y'),
('30', 'dfgdfg', 'K01', 'P', 'Y'),
('31', 'dfgadf', 'K01', 'P', 'Y'),
('32', 'qjwyj', 'K01', 'P', 'Y'),
('33', 'uiwetiu', 'K01', 'P', 'Y'),
('34', 'ssdf', 'K01', 'P', 'Y'),
('35', 'fsdf', 'K01', 'P', 'Y'),
('36', 'ass', 'K01', 'P', 'Y'),
('37', 'sf', 'K01', 'P', 'Y'),
('38', 'qwe', 'K01', 'P', 'Y'),
('39', 'eq', 'K01', 'P', 'Y'),
('4', 'd', 'K01', 'L', 'Y'),
('40', 'sdf', 'K01', 'P', 'Y'),
('5', 'e', 'K02', 'P', 'Y'),
('6', 'f', 'K02', 'P', 'Y'),
('7', 'g', 'K02', 'P', 'Y'),
('8', 'h', 'K01', 'P', 'Y'),
('9', 'i', 'K01', 'P', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `t_kandidat`
--
ALTER TABLE `t_kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indeks untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `t_pemilih`
--
ALTER TABLE `t_pemilih`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_kandidat`
--
ALTER TABLE `t_kandidat`
  MODIFY `id_kandidat` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `t_pemilih`
--
ALTER TABLE `t_pemilih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
