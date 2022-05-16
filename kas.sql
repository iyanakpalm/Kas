-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Mei 2022 pada 06.30
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perbulan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'administrator'),
(2, 'bendahara'),
(3, 'anggota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`) VALUES
(3, 'Muhammad Fauzan', 'fauzan', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(8, 'Muhammad Nurryan Akbar', 'ryan', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(9, 'sumarli', 'marli', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(10, 'Rai Malik Al musayyid', 'rai', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(11, 'Yudha Ardiansyach', 'yudha', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(12, 'Ahmad Rizki', 'rizki', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(13, 'Muhammad Ihsan', 'ihsan', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(14, 'Rija Nur Hijriyya', 'rija', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(15, 'Putri Meriyana', 'putri', '$2y$10$NXuzRfWA.mAQ9LluJlERbuBN/h/RXBk5x60g6pHvjNhZn2y4LaWfW', 1),
(16, 'Nur Habibah', 'habibah', '$2y$10$qSo9lZ0OJqYqHWuHExGvRuYIsHYCKguS43BR76KwV5YD7CXFICzG2', 2),
(17, 'Siti Alia Azhar', 'yaya', '$2y$10$qSo9lZ0OJqYqHWuHExGvRuYIsHYCKguS43BR76KwV5YD7CXFICzG2', 2),
(18, 'Aef Saepul Bahri', 'bahri', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(19, 'Ahmad Lutfiansyah', 'lutfi', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(20, 'Ajay Jaelani', 'ajay', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(21, 'Alfatir Rizal Januar', 'fatir', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(22, 'Ayoga Putra Pratama', 'ayoga', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(23, 'Bintang Adhiyaksa Maulana', 'bintang', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(24, 'Daffa Rifqi Abyansyah', 'daffa', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(25, 'Daras Febriansyah', 'daras', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(26, 'Davian Ahmad Faisal', 'davian', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(27, 'Dendi Dejan Saputra', 'dendi', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(28, 'Febrian Akbar Azahari', 'akbar', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(29, 'Firmansyah', 'firman', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(30, 'Muhamad Ilham Rizki', 'ilham', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(31, 'Muhammad Irsyad Iskandar', 'irysad', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(32, 'Najmatul Laila Nurfajrin', 'najma', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(33, 'Naomi Nova Meylica Butar Butar', 'naomi', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(34, 'Naufal Ramadhani', 'naufal', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(35, 'Nikko Bagus Prabowo', 'nikko', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(36, 'Nurapriani Sisti Arum', 'nurapriani', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(37, 'Raditya Pratama Yoviandika', 'radit', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(38, 'Rages Putra Dayana', 'rages', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(39, 'Rifqi Arul Fauzi', 'arul', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(40, 'Rifky Dwi Alfiansyah', 'rifky', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(41, 'Rissa Ilmia Agustin', 'rissa', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(42, 'Ryan syah', 'battu', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(43, 'Vito Jian Kurniawan', 'vito', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(44, 'Wildan Amin Wiharja', 'wildan', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(45, 'Yoga Tri Haryanto', 'yogatri', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3),
(46, 'Alif Akbar Badarudien', 'alif', '$2y$10$dcGrjENxX8Tb4vK5xbAM/.VBsPLhuUYkt6Zx.wdzWw2JQh1Uy97ni', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indexes for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD CONSTRAINT `uang_kas_ibfk_1` FOREIGN KEY (`id_bulan_pembayaran`) REFERENCES `bulan_pembayaran` (`id_bulan_pembayaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uang_kas_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
