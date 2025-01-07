-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 05:49 PM
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
(6, 'Kucing Gunung', 'Kucing yang mendatangi tenda kamping ketika camping di ungaran', '20250107210712.jpeg', '2025-01-07 22:01:11', 'admin');

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
(13, '20250107205712.jpeg', '2025-01-07 13:57:12'),
(14, '20250107210556.jpeg', '2025-01-07 14:05:56'),
(15, '20250107210601.jpeg', '2025-01-07 14:06:01'),
(16, '20250107210613.jpeg', '2025-01-07 14:06:13'),
(17, '20250107210623.jpeg', '2025-01-07 14:06:23'),
(18, '20250107210630.jpeg', '2025-01-07 14:06:30');

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
(12, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(13, 'Abyan', '$2y$10$HkfTAl68fTwWberk/vPOveLeBH9FiamvzY1KZDBES1np05SwbzORm', '20250107234048.jpg'),
(14, 'admin2', '$2y$10$cENFz4CX0IWinAPV1sYjfObAsrbCfSBPY10x9yLax.juPxNF9HVha', '20250107234102.jpeg'),
(15, 'admin4', '$2y$10$fR5HLz6CCHSJLSEOQ10i5.UmQsMBYVaN3jm7POfEGUE1bqYjXgk2a', '20250107234242.jpg'),
(16, 'admin6', '$2y$10$7Sg1L6M6K9ySOgBn4FTxkOsGAQeixr8X0uiX7jgI4mDS/C9bfZI3C', '20250107234312.jpeg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
