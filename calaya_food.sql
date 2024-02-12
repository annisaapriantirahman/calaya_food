-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 01:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_buku_menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `extra_menu`
--

CREATE TABLE `extra_menu` (
  `idproduk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra_menu`
--

INSERT INTO `extra_menu` (`idproduk`, `nama`, `harga`) VALUES
(9, 'es', 1000),
(9, 'hangat', 0),
(8, 'tempe', 1500),
(7, 'sambel goreng', 0),
(7, 'tahu', 1000),
(6, 'sambal goreng', 0),
(6, 'sambal terasi', 0),
(6, 'tahu', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `hargaproduk` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `kategori` enum('Makanan','Minuman') NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `namaproduk`, `hargaproduk`, `deskripsi`, `foto`, `kategori`, `createdat`) VALUES
(6, 'Nasi paket ayam goreng', 10000, 'nasi + ayam', '1680998059.jpg', 'Makanan', '2023-04-08 21:34:45'),
(7, 'Nasi paket ayam bakar', 15000, 'nasi + ayam + lalapan', '1680998052.jpg', 'Makanan', '2023-04-08 21:35:20'),
(8, 'Nasi paket ayam geprek', 20000, 'nasi + ayam + lalapan + sambel', '1680998044.jpg', 'Makanan', '2023-04-08 21:35:50'),
(9, 'Teh Manis', 3000, 'teh manis', 'sorin-popa-F6zJEnVv6to-unsplash.jpg', 'Minuman', '2023-04-08 21:36:29'),
(14, 'nasi', 5000, 'nasi', '1680998036.jpg', 'Makanan', '2023-04-08 23:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `qrcode`
--

CREATE TABLE `qrcode` (
  `idqrcode` int(11) NOT NULL,
  `url` varchar(50) NOT NULL,
  `qrname` varchar(50) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qrcode`
--

INSERT INTO `qrcode` (`idqrcode`, `url`, `qrname`, `createdat`) VALUES
(3, 'http://localhost/ebukumenu', '1680986488.png', '2023-04-08 20:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `namalengkap`, `username`, `password`, `createdat`) VALUES
(1, 'Dzulfikar', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-08 21:15:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`idqrcode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `idqrcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
