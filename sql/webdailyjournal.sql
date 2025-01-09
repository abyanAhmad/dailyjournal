-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 08:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdailyjournal`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Kafe dekat mushola', 'Disini tempat saya istirahat setelah selesai dari kelas matakuliah yang ada di gedung d udinus.', '20250107202424.jpeg', '2025-01-07 20:24:24', 'admin'),
(2, 'Matrikulasi', 'Ini adalah kenang-kenangan foto matrikulasi di hari terakhir setalah uas dilaksanakan.', '20250107202432.jpeg', '2025-01-07 20:24:32', 'admin'),
(3, 'Ospek', 'Foto bersama setelah melakukan tugas ospek menggambar pohon mind mapping di kelas.', '20250107202452.jpeg', '2025-01-07 20:24:52', 'admin'),
(4, 'Pantai Marina', 'Pantai Marina\r\nSaya mengunjungi Pantai Marina untuk melakukan pengecekan tempat wawancara mengenai umkm untuk tugas matakuliah.', '20250107202438.jpeg', '2025-01-07 20:24:38', 'admin'),
(5, 'Jalan-jalan setelah Ulangan akhir Semester', 'Acara sekolah untuk merayakan uas terakhir angakatan tertua di sekolah, kami bermain berbagai macam permainan bersama hingga sore hari.', '20250107202445.jpeg', '2025-01-07 20:24:45', 'admin'),
(6, 'Kucing Gunung', 'Kucing yang mendatangi tenda kamping ketika camping di ungaran', '20250107235833.jpeg', '2025-01-07 23:58:33', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `gambar`, `tanggal`) VALUES
(14, '20250107210556.jpeg', '2025-01-07 14:05:56'),
(19, '20250107235848.jpeg', '2025-01-07 16:58:48'),
(20, '20250108002727.jpeg', '2025-01-07 17:27:27'),
(21, '20250108004327.jpeg', '2025-01-07 17:43:27'),
(22, '20250108004753.jpeg', '2025-01-07 17:47:53'),
(24, '20250108011502.jpeg', '2025-01-07 18:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(12, 'admin', '$2y$10$IKenmW2OLq/6p7Eye2QYy.kiBpF3qBlPq6xARSm7HCDGoHAk6A3jG', '20250108005945.jpeg'),
(14, 'admin2', '$2y$10$cENFz4CX0IWinAPV1sYjfObAsrbCfSBPY10x9yLax.juPxNF9HVha', '20250108005456.jpeg'),
(15, 'admin4', '$2y$10$PlHO9p16AL8a7YU9tmiEdefszmjs/sU3qoIjH4naCRUDU4PoM2oqe', '20250107235916.jpeg'),
(16, 'admin6', '$2y$10$hpuXKgdV1la/Wb7AbvAFhe/Va/ZAro6npTdcBsHyEszY3zPgNE9rK', '20250107235910.jpg'),
(17, 'Abyan', '$2y$10$O4i5frGi94PIqGq2LHwtieNUY4Yjovw.R38ZBpJ4OyRRJoblcT5lq', '20250108005517.jpeg'),
(18, 'danny', '$2y$10$2g5MDrdBUpW6dVWj63j/seG6hEU2yDQlFocjkQj59yd2xJ3JjXvDC', '20250108010123.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
