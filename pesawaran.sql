-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 06:14 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesawaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id_icd` varchar(50) NOT NULL,
  `diagnosa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id_icd`, `diagnosa`) VALUES
('A.10', 'Kencing Manis'),
('A.15', 'Kencing Aja'),
('A.5U', 'Kencing Bayar');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `spesialis` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `Nama`, `tanggal_lahir`, `spesialis`) VALUES
(1, 'Dr.Pikoy', '2019-03-06', 'Penyakit Kencing');

-- --------------------------------------------------------

--
-- Table structure for table `nota_obat`
--

CREATE TABLE `nota_obat` (
  `id_nota_obat` int(11) NOT NULL,
  `id_rm` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `jumlah_obat` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `jp` int(11) NOT NULL,
  `js` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id_poli` int(11) NOT NULL,
  `nama_poli` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id_poli`, `nama_poli`) VALUES
(1, 'Penyakit Dalam'),
(2, 'Bedah');

-- --------------------------------------------------------

--
-- Table structure for table `p_bpjs`
--

CREATE TABLE `p_bpjs` (
  `id_rm` varchar(8) NOT NULL,
  `no_asuransi` varchar(16) NOT NULL,
  `nama_asuransi` enum('Umum','BPJS PNS TNI-POLRI','BPJS Mandiri','BPJS PBI','Jasa Raharja','') NOT NULL,
  `status_pembayaran_asuransi` enum('umum','APBN','APBD','JKD','JAMKESDA') NOT NULL,
  `tanggal_masuk` datetime NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` enum('Islam','Kristen','Khatolik','Hindu','Buddha','Konghucu') NOT NULL,
  `status_pernikahan` enum('kawin','belum_kawin','janda','duda') NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `pendidikan` enum('tidak_sekolah','sd','smp','slta','d1','d3','d4','s1','s2','s3') NOT NULL,
  `gol_darah` enum('a','b','ab','o') NOT NULL,
  `kewarganegaraan` enum('wni','wna') NOT NULL,
  `bahasa` varchar(25) NOT NULL,
  `jalan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `jenis_identitas` enum('ktp','sim','passport') NOT NULL,
  `no_identitas` varchar(20) NOT NULL,
  `status_masuk` enum('T','F','','') NOT NULL,
  `id_poli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_bpjs`
--

INSERT INTO `p_bpjs` (`id_rm`, `no_asuransi`, `nama_asuransi`, `status_pembayaran_asuransi`, `tanggal_masuk`, `nama`, `tanggal_lahir`, `tempat_lahir`, `nama_ayah`, `nama_ibu`, `jenis_kelamin`, `agama`, `status_pernikahan`, `pekerjaan`, `pendidikan`, `gol_darah`, `kewarganegaraan`, `bahasa`, `jalan`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `no_tlp`, `jenis_identitas`, `no_identitas`, `status_masuk`, `id_poli`) VALUES
('J010101', '', 'Umum', 'umum', '2019-03-15 00:00:00', 'Erwan Saputra', '1998-08-19', 'Liwa', 'jono', 'susi', 'L', 'Islam', 'duda', 'Bohongin orang', 'tidak_sekolah', 'a', 'wni', 'Indonesia', 'kemiling', 'kemiling', 'kemiling', 'kemiling', 'Lampung', '081379189501', 'ktp', '18965392826373627', 'T', 1);

-- --------------------------------------------------------

--
-- Table structure for table `p_umum`
--

CREATE TABLE `p_umum` (
  `id_rm` int(8) NOT NULL,
  `tanggal_masuk` datetime NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` enum('Islam','Kristen','Khatolik','Hindu','Buddha','Konghucu') NOT NULL,
  `status_pernikahan` enum('kawin','belum_kawin','janda','duda') NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `pendidikan` enum('tidak_sekolah','sd','smp','slta','d1','d3','d4','s1','s2','s3') NOT NULL,
  `gol_darah` enum('a','b','ab','o') NOT NULL,
  `kewarganegaraan` enum('wni','wna') NOT NULL,
  `bahasa` varchar(25) NOT NULL,
  `jalan` varchar(50) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `jenis_identitas` enum('ktp','sim','passport') NOT NULL,
  `no_identitas` varchar(20) NOT NULL,
  `status_masuk` enum('T','F','','') NOT NULL,
  `id_poli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_umum`
--

INSERT INTO `p_umum` (`id_rm`, `tanggal_masuk`, `nama`, `tanggal_lahir`, `tempat_lahir`, `nama_ayah`, `nama_ibu`, `jenis_kelamin`, `agama`, `status_pernikahan`, `pekerjaan`, `pendidikan`, `gol_darah`, `kewarganegaraan`, `bahasa`, `jalan`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `no_tlp`, `jenis_identitas`, `no_identitas`, `status_masuk`, `id_poli`) VALUES
(1, '2019-03-15 00:00:00', 'Erwan Saputra', '1998-08-19', 'Liwa', 'jono', 'susi', 'L', 'Islam', 'duda', 'Bohongin orang', 'tidak_sekolah', 'a', 'wni', 'Indonesia', 'kemiling', 'kemiling', 'kemiling', 'kemiling', 'Lampung', '081379189501', 'ktp', '18965392826373627', 'T', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resume_rajal`
--

CREATE TABLE `resume_rajal` (
  `id` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `riwayat_penyakit` text NOT NULL,
  `id_icd` varchar(50) NOT NULL,
  `terapi` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_rm` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_apotik`
--

CREATE TABLE `user_apotik` (
  `id_user_apotik` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_poli`
--

CREATE TABLE `user_poli` (
  `id_user_poli` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id_icd`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `nota_obat`
--
ALTER TABLE `nota_obat`
  ADD PRIMARY KEY (`id_nota_obat`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `p_bpjs`
--
ALTER TABLE `p_bpjs`
  ADD PRIMARY KEY (`id_rm`);

--
-- Indexes for table `p_umum`
--
ALTER TABLE `p_umum`
  ADD PRIMARY KEY (`id_rm`);

--
-- Indexes for table `resume_rajal`
--
ALTER TABLE `resume_rajal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rm` (`id_rm`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_icd` (`id_icd`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_poli`
--
ALTER TABLE `user_poli`
  ADD PRIMARY KEY (`id_user_poli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nota_obat`
--
ALTER TABLE `nota_obat`
  MODIFY `id_nota_obat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id_poli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p_umum`
--
ALTER TABLE `p_umum`
  MODIFY `id_rm` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resume_rajal`
--
ALTER TABLE `resume_rajal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_poli`
--
ALTER TABLE `user_poli`
  MODIFY `id_user_poli` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resume_rajal`
--
ALTER TABLE `resume_rajal`
  ADD CONSTRAINT `resume_rajal_ibfk_1` FOREIGN KEY (`id_rm`) REFERENCES `p_bpjs` (`id_rm`),
  ADD CONSTRAINT `resume_rajal_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`),
  ADD CONSTRAINT `resume_rajal_ibfk_3` FOREIGN KEY (`id_icd`) REFERENCES `diagnosa` (`id_icd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
