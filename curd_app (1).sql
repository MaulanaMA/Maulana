-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 02:03 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curd_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`id`, `first_name`, `last_name`, `Gender`, `City`, `Address`) VALUES
(1, 'Maulana', 'Ahmad', 'Laki-Laki', 'Balikpapan', 'Penegak'),
(3, 'Bagus', 'Muhammad', 'Laki-Laki', 'Balikpapan', 'Jln.Penegak'),
(4, 'ahmad', 'bagus', 'Laki-Laki', 'Surabaya', 'jl.soekarno'),
(5, 'najwa', 'sabita', 'Perempuan', 'Jakarta', 'jl.abcd'),
(6, 'dila', 'angraini', 'Perempuan', 'Magetan', 'jln.abcd'),
(7, 'Pustal', 'Ahmad', 'Laki-Laki', 'Malang', 'jln.patimura');

-- --------------------------------------------------------

--
-- Table structure for table `kos`
--

CREATE TABLE `kos` (
  `id` int(11) NOT NULL,
  `nama_kos` varchar(127) NOT NULL,
  `alamat` varchar(127) NOT NULL,
  `harga` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kos`
--

INSERT INTO `kos` (`id`, `nama_kos`, `alamat`, `harga`) VALUES
(1, 'kos berkah', 'jl.gendangan', 'Rp 800.000'),
(2, 'kos banyu', 'jl.paguyuban', 'Rp 600.000'),
(3, 'Kos Gaul', 'jl.penegak', 'Rp 700.000'),
(5, 'kos l', 'jl.abcd', 'Rp 650.000'),
(6, 'kos amin', 'jl.ahmad', 'Rp 600.000'),
(7, 'kos paguyuban', 'jl.hata', 'Rp 800.000'),
(8, 'kos perempuan', 'jln.mealti', 'Rp 650.000'),
(9, 'KOS Suka', 'jln.suka-suka', 'Rp 500.000');

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `id` int(11) NOT NULL,
  `firts_name` varchar(127) NOT NULL,
  `last_name` varchar(127) NOT NULL,
  `gender` varchar(127) NOT NULL,
  `no_hp` varchar(127) NOT NULL,
  `nama_kos` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`id`, `firts_name`, `last_name`, `gender`, `no_hp`, `nama_kos`) VALUES
(1, 'ahmad', 'bima', 'Laki-Laki', '123456789', 'kos berkah'),
(2, 'nazaw', 'ines', 'Perempuan', '0812345678', 'kos berkah'),
(3, 'Aditya', 'Warman', 'Laki-Laki', '084978678901', 'Kos Gaul'),
(4, 'sasa', 'putri', 'Perempuan', '082154678912', 'kos amin'),
(5, 'fajar', 'farhan', 'Laki-Laki', '08567314567', 'Kos berkah');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`) VALUES
(7, 'maulana', 'maulana@gmail.com', '12345678'),
(8, 'Adit', 'Aditya123@gmail.com', '1234abcd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kos`
--
ALTER TABLE `kos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
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
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kos`
--
ALTER TABLE `kos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
