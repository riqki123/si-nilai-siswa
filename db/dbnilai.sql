-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 06:39 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbnilai`
--
CREATE DATABASE IF NOT EXISTS `dbnilai` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbnilai`;

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE IF NOT EXISTS `arsip` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ruang_arsip` varchar(25) NOT NULL,
  `no_rak` int(5) NOT NULL,
  `no_laci` int(5) NOT NULL,
  `no_boks` int(5) NOT NULL,
  `para_pihak` varchar(100) NOT NULL,
  `no_perkara` varchar(50) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pemberi` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_perkara` (`no_perkara`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `arsip`
--

INSERT INTO `arsip` (`id`, `ruang_arsip`, `no_rak`, `no_laci`, `no_boks`, `para_pihak`, `no_perkara`, `tgl_masuk`, `penerima`, `pemberi`, `status`, `keterangan`) VALUES
(6, 'Arsip Pidana', 2, 10, 10, 'Jhonny', '01/PID.B/2018/PN.KIS', '2018-12-01', 'Marno', 'Putri', 'Ada', 'Pidana Pencurian'),
(7, 'Arsip Pidana', 2, 11, 10, 'Tuti, Wanda', '02/PID.B/2018/PN.KIS', '2018-12-03', 'Marno', 'Putri', 'Dipinjam', 'Pidana Perjudian'),
(8, 'Arsip Pidana', 1, 3, 9, 'Budi', '03/PID.B/2018/PN.KIS', '2018-12-04', 'Marno', 'Putri', 'Ada', 'Pidana Perjudian'),
(9, 'Arsip Perdata', 1, 3, 5, 'Miswar, Susi, Lastri', '01/PDT.G/2018/PN.KIS', '2018-12-03', 'Ipul', 'Setiawan', 'Dipinjam', 'Perdata Gugatan'),
(10, 'Arsip Perdata', 2, 3, 1, 'Mastur', '02/PDT.G/2018/PN.KIS', '2018-12-12', 'Ipul', 'Setiawan', 'Ada', 'Perdata Gugatan');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `no_perkara` varchar(50) NOT NULL,
  `peminjam` varchar(50) NOT NULL,
  `tgl_pinjam` varchar(25) NOT NULL,
  `tgl_kembali` varchar(25) NOT NULL,
  `lama_pinjam` int(5) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`no_perkara`, `peminjam`, `tgl_pinjam`, `tgl_kembali`, `lama_pinjam`, `keterangan`, `id`) VALUES
('01/PID.B/2018/PN.KIS', 'A. Nasution', '2018-12-14', '2018-12-16', 2, '-', 4),
('01/PDT.G/2018/PN.KIS', 'J. Siahaan', '2018-12-10', 'Belum Kembali', 0, '-', 5),
('02/PID.B/2018/PN.KIS', 'Bejo', '2018-12-11', 'Belum Kembali', 0, 'Input ke CTS', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laporan`
--

CREATE TABLE IF NOT EXISTS `tbl_laporan` (
  `no.` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no.`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_laporan`
--

INSERT INTO `tbl_laporan` (`no.`, `nama`, `nilai`, `semester`) VALUES
(1, 'Lidiaaa', '90', 'Genap'),
(2, 'Lisa', '95', 'Genap'),
(3, 'Windi', '97', 'Genap'),
(4, 'Bayu', '90', 'Genap'),
(5, 'Eka', '92', 'Genap'),
(6, 'Sonia', '90', 'Genap'),
(7, 'Yuli', '90', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE IF NOT EXISTS `tbl_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(24) NOT NULL,
  `tugas1` int(3) NOT NULL,
  `tugas2` int(3) NOT NULL,
  `tugas3` int(3) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id`, `nama`, `mapel`, `tugas1`, `tugas2`, `tugas3`, `semester`, `tahun`) VALUES
(1, 'Wakandaa', 'Matematika', 89, 89, 78, 'Genap', '2019/2020'),
(2, 'Sri', 'Biologi', 87, 88, 80, 'Genap', '2019/2020'),
(3, 'Lisa', 'Ips', 90, 95, 85, 'Genap', '2020/2021'),
(4, 'Windi', 'IPA', 95, 90, 90, 'Genap', '2020/2021'),
(5, 'Eka', 'Matematika', 90, 85, 80, 'Genap', '2020/2021'),
(6, 'Bayu', 'Geografi', 90, 95, 85, 'Genap', '2020/2021'),
(7, 'Sonia', 'IPS', 90, 90, 90, 'Genap', '2020/2021'),
(8, 'Yuli', 'Biologi', 90, 90, 90, 'Genap', '2020/2021'),
(9, 'Lidia', 'IPA', 95, 80, 75, 'Genap', '2020/2021'),
(10, 'Ihsan', 'Matematika', 90, 75, 85, 'Genap', '2020/2021'),
(11, 'lidiaaa', 'Bahasa Inggris', 90, 90, 90, 'Genap', '2020/2021');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE IF NOT EXISTS `tbl_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(25) NOT NULL,
  `ortu` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jkl` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nama`, `nisn`, `tanggal`, `tempat`, `ortu`, `alamat`, `kelas`, `jkl`) VALUES
(1, 'Liaa', '1223456', '0000-00-00', 'Aek kuasan', 'wagiyem', 'Aek kuasan', '11', 'p'),
(2, 'Lisa', '1233355', '2021-01-13', 'Aek kuasan', 'Syahrul', 'Aek Loba', '11', 'p'),
(3, 'Windi', '2637840', '2021-01-13', 'Aek Loba', 'Juminten', 'Aek kuasan', '11', 'p'),
(4, 'Yuli', '8738264', '2021-01-11', 'Aek Loba', 'Juminem', 'Aek kuasan', '11', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '25d55ad283aa400af464c76d713c07ad', 'devk@gmail.com', 'Developer Kampoeng', 1, 'Staff Kepaniteraan Hukum'),
('admin1', 'admin1', 'admin@gmail.com', 'admin1', 2, 'saya');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
