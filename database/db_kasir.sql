-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2026 at 12:50 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_category` int DEFAULT NULL,
  `product_supplier` int DEFAULT NULL,
  `product_price_s` double NOT NULL,
  `product_price_b` double NOT NULL,
  `product_stock` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_image`, `product_category`, `product_supplier`, `product_price_s`, `product_price_b`, `product_stock`) VALUES
(13, 'BRG001', 'liquid vanilla', '', 1, NULL, 79000, 39000, 56),
(14, 'BRG002', 'liquid kopi', '', 1, NULL, 90000, 70000, 34),
(15, 'BRG003', 'liquid anggur', '', 1, NULL, 90000, 20000, 6),
(19, 'BRG004', 'device 3', NULL, 2, NULL, 129000, 120000, 16);

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE `produk_kategori` (
  `id` int NOT NULL,
  `nama` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`id`, `nama`) VALUES
(1, 'liquid'),
(2, 'device'),
(3, 'Mod');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int NOT NULL,
  `nama` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`) VALUES
(3, 'Mutia Store');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `id_akun` int DEFAULT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_akun`, `total_harga`, `tanggal_transaksi`) VALUES
(29, 8, '79000.00', '2026-01-11 22:28:35'),
(54, 21, '345000.00', '2026-01-11 22:29:16'),
(56, 14, '169000.00', '2026-01-19 19:30:04'),
(57, 21, '169000.00', '2026-01-19 19:38:35'),
(58, 21, '169000.00', '2026-01-19 19:42:48'),
(59, 21, '259000.00', '2026-01-19 19:56:03'),
(60, 26, '439000.00', '2026-01-19 23:22:17'),
(61, 9, '338000.00', '2026-01-22 09:11:44'),
(62, 26, '248000.00', '2026-01-23 05:30:35'),
(63, 26, '270000.00', '2026-01-24 01:15:34'),
(64, 41, '360237.00', '2026-01-25 03:47:22'),
(65, 26, '450000.00', '2026-01-25 09:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int NOT NULL,
  `id_transaksi` int DEFAULT NULL,
  `id_produk` int DEFAULT NULL,
  `jumlah_produk` int NOT NULL,
  `harga_satuan` int NOT NULL,
  `total_harga_produk` decimal(10,2) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_kasir` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `jumlah_produk`, `harga_satuan`, `total_harga_produk`, `tanggal_transaksi`, `id_kasir`) VALUES
(29, 29, 13, 1, 79000, '79000.00', '2026-01-14 05:42:35', 8),
(71, 58, 15, 1, 90000, '90000.00', '2026-01-20 02:42:48', 21),
(72, 58, 13, 1, 79000, '79000.00', '2026-01-20 02:42:48', 21),
(73, 59, 13, 1, 79000, '79000.00', '2026-01-20 02:56:03', 21),
(74, 59, 15, 1, 90000, '90000.00', '2026-01-20 02:56:03', 21),
(75, 59, 14, 1, 90000, '90000.00', '2026-01-20 02:56:03', 21),
(76, 60, 14, 3, 90000, '270000.00', '2026-01-20 06:22:17', 26),
(77, 60, 15, 1, 90000, '90000.00', '2026-01-20 06:22:17', 26),
(78, 60, 13, 1, 79000, '79000.00', '2026-01-20 06:22:17', 26),
(79, 61, 13, 2, 79000, '158000.00', '2026-01-22 16:11:44', 9),
(80, 61, 15, 2, 90000, '180000.00', '2026-01-22 16:11:44', 9),
(81, 62, 13, 2, 79000, '158000.00', '2026-01-23 12:30:35', 26),
(82, 62, 14, 1, 90000, '90000.00', '2026-01-23 12:30:35', 26),
(83, 63, 14, 1, 90000, '90000.00', '2026-01-24 08:15:34', 26),
(84, 63, 15, 2, 90000, '180000.00', '2026-01-24 08:15:34', 26),
(85, 64, 13, 3, 79, '237.00', '2026-01-25 10:47:22', 41),
(86, 64, 14, 3, 90000, '270000.00', '2026-01-25 10:47:22', 41),
(87, 64, 15, 1, 90000, '90000.00', '2026-01-25 10:47:22', 41),
(88, 65, 15, 4, 90000, '360000.00', '2026-01-25 16:24:36', 26),
(89, 65, 14, 1, 90000, '90000.00', '2026-01-25 16:24:36', 26);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` enum('admin','kasir','owner') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `level`) VALUES
(8, 'Vaena', 'admin', '123', 'admin'),
(9, 'vina', 'vina', '123', 'kasir'),
(14, 'irfan', 'irfan', '123', 'kasir'),
(15, 'zainul', 'zainul_kasir', '123', 'kasir'),
(16, 'kirin', 'karin12345', '123', 'owner'),
(19, 'mifta', 'mifta123', '123', 'admin'),
(21, 'vmr', 'vmr', '123', 'kasir'),
(23, 'iko', 'iko', '123', 'owner'),
(26, 'vaena', 'vaena_kasir', '123', 'kasir'),
(27, 'vaena', 'vaena_owner', '123', 'owner'),
(28, 'vaena', 'vaena_admin', '123', 'admin'),
(29, 'vaena_owner', 'vaena_owner', '123', 'owner'),
(30, 'uji coba', 'uji_owner', '123', 'owner'),
(31, 'Riri', 'riri', '123', 'owner'),
(32, 'Rere', 'rere', '123', 'owner'),
(33, 'ririn', 'ririn', '0987', 'kasir'),
(34, 'Riris', 'riris_admin', '123', 'admin'),
(35, 'miftakhur', 'mifta_admin', '123', 'admin'),
(36, 'miftakhur', 'miftakhur_admin', '123', 'admin'),
(37, 'vivi', 'vivi_admin', '123', 'admin'),
(38, 'veve veve', 'veve_admin', '123', 'kasir'),
(39, 'winda', 'winda', '123', 'kasir'),
(41, 'wiwi', 'wiwi', '123', 'kasir'),
(43, 'Vaena', 'vena_admin', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category` (`product_category`),
  ADD KEY `product_supplier` (`product_supplier`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_kasir` (`id_kasir`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category`) REFERENCES `produk_kategori` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_supplier`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaksi_detail_ibfk_3` FOREIGN KEY (`id_kasir`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
