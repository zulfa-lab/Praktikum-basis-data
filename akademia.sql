-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2025 pada 14.56
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NPM` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NPM`, `nama`, `jurusan`) VALUES
(1, 'Ahmad', 'Teknologi Informasi'),
(2, 'Andra', 'Teknologi Informasi'),
(3, 'Budi', 'Teknik Sipil'),
(4, 'Dewi', 'Manajemen'),
(5, 'Zulfa', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa_nilai`
--

CREATE TABLE `mahasiswa_nilai` (
  `NPM` char(1) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `mata_kuliah` varchar(100) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa_nilai`
--

INSERT INTO `mahasiswa_nilai` (`NPM`, `nama`, `jurusan`, `mata_kuliah`, `nilai`) VALUES
('1', 'Ahmad', 'Teknologi Informasi', 'Basis Data', 98),
('1', 'Ahmad', 'teknologi Informasi', 'Algoritma Pemrograman', 85),
('2', 'Andra', 'Teknologi Informasi', 'Basis Data', 90),
('2', 'Andra', 'Teknologi Informasi', 'Algoritma Pemrograman', 95),
('3', 'Budi', 'Teknik Sipil', 'Kalkulus', 100),
('4', 'Dewi', 'Manajemen', 'Manajemen Bisnis', 88),
('5', 'Zulfa', 'Teknologi Informasi', 'Basis Data', 80),
('5', 'Zulfa', 'Teknologi Informasi', 'Algoritma Pemrograman', 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `NPM` int(11) NOT NULL,
  `mata_kuliah` varchar(100) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `NPM`, `mata_kuliah`, `nilai`) VALUES
(1, 1, 'Basis Data', 98),
(2, 1, 'Algoritma', 85),
(3, 2, 'Basis Data', 90),
(4, 2, 'Algoritma', 95),
(5, 3, 'Kalkulus', 100),
(6, 4, 'Manajemen Bisnis', 88),
(7, 5, 'Basis Data', 80),
(8, 5, 'Algoritma', 70);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `NPM` (`NPM`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `NPM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
