-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 02:50 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporanpenjualan`
--

CREATE TABLE `laporanpenjualan` (
  `Id_penjualan` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporanpenjualan`
--

INSERT INTO `laporanpenjualan` (`Id_penjualan`, `id_pemesanan`, `tanggal_penjualan`) VALUES
(1, 53, '2011-12-17'),
(2, 55, '2011-12-17'),
(3, 56, '2011-12-17'),
(4, 58, '2012-12-17'),
(5, 59, '2012-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` int(10) NOT NULL,
  `id_produk` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `total` int(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `nama_produk` varchar(250) NOT NULL,
  `banyak_pemesanan` varchar(100) NOT NULL,
  `status` enum('Belum Lunas','Lunas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `id_produk`, `nama`, `email`, `alamat`, `kota`, `no_telpon`, `total`, `tanggal`, `nama_produk`, `banyak_pemesanan`, `status`) VALUES
(55, '1,2,', 'Rosita Unc', 'MuhtarGemblung@Gmail.com', 'jl bwabwabwa', 'Jember', '085234423456', 350000, '11-12-17', 'Nutrisional Protein Shake Mix,F1 Shake Mix dan Fiber,', '1,1,', 'Lunas'),
(56, '1,2,', 'Andi Tani', 'yanuarpamungkas68@gmail.com', 'Jl Ikan Lele Gg 3 No 7A RT1/RW5 Banyuwangi', 'Jember', '0881122223346', 350000, '11-12-17', 'Nutrisional Protein Shake Mix,F1 Shake Mix dan Fiber,', '1,1,', 'Lunas'),
(58, '1,', 'Yanuar Dwi Pamungkas', 'yanuarpamungkas68@gmail.com', 'Jl Ikan Lele Gg 3 No 7A RT1/RW5 Banyuwangi', 'Jember', '085389904785', 200000, '12-12-17', 'Nutrisional Protein Shake Mix,', '1,', 'Lunas'),
(59, '1,3,', 'Yanuar Dwi Pamungkas', 'MuhtarGemblung@Gmail.com', 'Jl Ikan Lele Gg 3 No 7A RT1/RW5 Banyuwangi', 'Jember', '0881122223346', 1209000, '12-12-17', 'Nutrisional Protein Shake Mix,3 F1 Shake Mix dan Fiber,', '2,1,', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(6) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `harga_produk` int(6) NOT NULL,
  `Stock` int(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `IndexMin` float NOT NULL,
  `IndexMax` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `harga_produk`, `Stock`, `keterangan`, `gambar`, `IndexMin`, `IndexMax`) VALUES
(1, 'Nutrisional Protein Shake Mix', 200000, 11, 'nope', 'nope', 1, 1),
(2, 'F1 Shake Mix dan Fiber', 150000, 7, 'nope', 'nope', 1.001, 10),
(3, '3 F1 Shake Mix dan Fiber', 809000, 4, 'nope', 'nope', 10.001, 20),
(4, 'F1 Shake Mix, Fiber, Lipo Bond, dan NRG', 1500000, 7, 'nope', 'nope', 20.001, 30),
(5, '3 F1 Shake Mix, Fiber, Lipo Bond, dan NRG', 1650000, 5, 'nope', 'nope', 30.001, 35),
(6, 'F1 Shake Mix, Fiber, Lipo Bond, NRG, Herbal Concentrate, Cell U Loss, Herbal Aloe', 1700000, 6, 'nope', 'nope', 35.001, 40),
(7, '3 F1 Shake Mix, Fiber, Lipo Bond, NRG, Herbal Concentrate, Cell U Loss, dan 2 Herbal Aloe', 2100000, 4, 'nope', 'nope', 40.001, 45),
(8, 'F1 Shake Mix, Fiber, Lipo Bond, NRG, Herbal Concentrate, Cell U Loss, Herbal Aloe, dan PPP/F-3', 1200000, 5, 'nope', 'nope', 45.001, 50),
(9, '3 Shake Mix, Fiber, Lipo Bond, NRG, Herbal Concentrate, Cell U Loss, Herbal Aloe, dan PPP/F-3', 1300000, 5, 'nope', 'nope', 50.001, 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Iduser` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporanpenjualan`
--
ALTER TABLE `laporanpenjualan`
  ADD PRIMARY KEY (`Id_penjualan`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporanpenjualan`
--
ALTER TABLE `laporanpenjualan`
  MODIFY `Id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `id_pemesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Iduser` int(5) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
