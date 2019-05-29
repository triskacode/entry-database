-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2019 pada 09.20
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `triskacode`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `triska_user`
--

CREATE TABLE `triska_user` (
  `id` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `jenis_kelamin` varchar(64) NOT NULL,
  `alamat` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `triska_user`
--

INSERT INTO `triska_user` (`id`, `nis`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(1, 136030, 'Triska Mahfud K', 'Laki - Laki', 'Ds. Tunge'),
(2, 136002, 'Nanang Dwi J', 'Laki - Laki', 'Ds. Baye'),
(3, 136016, 'Ryantori M', 'Laki - Laki', 'Ds. Nambaan'),
(4, 136014, 'Riszqi Nur Y', 'Laki - Laki', 'Ds. Puncu(pomone)');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `triska_user`
--
ALTER TABLE `triska_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `triska_user`
--
ALTER TABLE `triska_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
