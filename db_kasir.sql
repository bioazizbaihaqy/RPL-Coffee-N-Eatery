-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2026 at 06:38 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `menu_id` int NOT NULL,
  `jumlah` int NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `kode_transaksi`, `menu_id`, `jumlah`, `subtotal`) VALUES
(1, 'TRX-20261013030919', 3, 1, 3000.00),
(2, 'TRX-20261013030937', 3, 2, 6000.00),
(3, 'TRX-20261014060928', 3, 1, 3000.00),
(4, 'TRX-20261014060928', 4, 1, 17000.00),
(5, 'TRX-20261014061853', 3, 1, 3000.00),
(6, 'TRX-20261014061902', 4, 1, 17000.00),
(7, 'TRX-20261014072558', 3, 2, 6000.00),
(8, 'TRX-20261014075639', 3, 1, 3000.00),
(9, 'TRX-20261014080116', 3, 1, 3000.00),
(10, 'TRX-20261015024724', 8, 1, 15000.00),
(11, 'TRX-20261015024724', 3, 1, 3000.00),
(12, 'TRX-20261015024737', 6, 1, 27000.00),
(13, 'TRX-20261015024737', 4, 1, 17000.00),
(14, 'TRX-20261015024737', 5, 1, 10000.00),
(15, 'TRX-20261015042413', 6, 1, 27000.00),
(16, 'TRX-20261015042413', 8, 1, 15000.00),
(17, 'TRX-20261028102751', 10, 1, 17000.00),
(18, 'TRX-20261028102751', 8, 1, 15000.00),
(19, 'TRX-20261109134204', 11, 1, 14000.00),
(20, 'TRX-20261109150816151', 10, 1, 17000.00),
(21, 'TRX-20261109150816151', 11, 2, 34000.00),
(22, 'TRX-20261110030343415', 11, 2, 28000.00),
(23, 'TRX-20261110030343415', 8, 1, 14000.00),
(24, 'TRX-20261110030343415', 3, 1, 14000.00);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int NOT NULL,
  `kategori` varchar(50) NOT NULL DEFAULT 'Makanan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama_menu`, `harga`, `stok`, `kategori`) VALUES
(3, 'Air Mineral', 3000.00, 5, 'Minuman'),
(4, 'Nasi Goreng', 17000.00, 7, 'Makanan'),
(5, 'Americano', 10000.00, 49, 'Minuman'),
(6, 'Bakmi Ayam Charitsu', 27000.00, 48, 'Makanan'),
(7, 'Nasi Ayam Blackpaper', 23000.00, 20, 'Makanan'),
(8, 'Bubur Ayam Bangladesh', 15000.00, 46, 'Makanan'),
(9, 'Lemon Ice', 8000.00, 40, 'Minuman'),
(13, 'Kue Nastar', 85000.00, 10, 'Makanan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL DEFAULT '',
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_harga` decimal(10,2) NOT NULL,
  `bayar` decimal(10,2) NOT NULL,
  `kembalian` decimal(10,2) NOT NULL,
  `metode_pembayaran` varchar(50) DEFAULT 'Tunai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `nama_pemesan`, `tanggal`, `total_harga`, `bayar`, `kembalian`, `metode_pembayaran`) VALUES
(1, 'TRX-20261013030919', '', '2026-10-13 03:09:19', 3000.00, 4000.00, 1000.00, 'Tunai'),
(2, 'TRX-20261013030937', '', '2026-10-13 03:09:37', 6000.00, 20000.00, 14000.00, 'Tunai'),
(3, 'TRX-20261014060928', '', '2026-10-14 06:09:28', 20000.00, 30000.00, 10000.00, 'Tunai'),
(4, 'TRX-20261014061853', '', '2026-10-14 06:18:53', 3000.00, 4000.00, 1000.00, 'Tunai'),
(5, 'TRX-20261014061902', '', '2026-10-14 06:19:02', 17000.00, 20000.00, 3000.00, 'Tunai'),
(6, 'TRX-20261014072558', '', '2026-10-14 07:25:58', 6000.00, 10000.00, 4000.00, 'Tunai'),
(7, 'TRX-20261014075639', '', '2026-10-14 07:56:39', 3000.00, 3000.00, 0.00, 'QRIS'),
(8, 'TRX-20261014080116', '', '2026-10-14 08:01:16', 3000.00, 3000.00, 0.00, 'QRIS'),
(9, 'TRX-20261015024724', '', '2026-10-15 02:47:24', 18000.00, 20000.00, 2000.00, 'Tunai'),
(10, 'TRX-20261015024737', '', '2026-10-15 02:47:37', 54000.00, 60000.00, 6000.00, 'Tunai'),
(11, 'TRX-20261015042413', '', '2026-10-15 04:24:13', 42000.00, 50000.00, 8000.00, 'Tunai'),
(12, 'TRX-20261028102751', '', '2026-10-28 10:27:51', 32000.00, 600000.00, 568000.00, 'Tunai'),
(13, 'TRX-20261109134204', '', '2026-11-09 13:42:04', 14000.00, 14000.00, 0.00, 'QRIS'),
(14, 'TRX-20261109150816151', '', '2026-11-09 15:08:16', 51000.00, 51000.00, 0.00, 'QRIS'),
(16, 'TRX-20261110030343415', 'Raditya', '2026-11-10 03:03:43', 56000.00, 100000.00, 44000.00, 'Tunai');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', '12345', 'Administrator Toko');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
