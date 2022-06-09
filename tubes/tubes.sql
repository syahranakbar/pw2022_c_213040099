-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 02:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `name`) VALUES
(1, 'admin', '12345678', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_film` varchar(50) NOT NULL,
  `sutradara` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `durasi` int(11) NOT NULL,
  `tanggal_rilis` date NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id_film`, `id_kategori`, `nama_film`, `sutradara`, `sinopsis`, `durasi`, `tanggal_rilis`, `images`) VALUES
(32, 1, 'diilan', 'yogi', 'Milea (Vanesha Prescilla) bertemu dengan Dilan (Iqbaal Ramadhan) di sebuah SMA di Bandung. Itu adalah tahun 1990, saat Milea pindah dari Jakarta ke Bandung. Perkenalan yang tidak biasa kemudian membawa Milea mulai mengenal keunikan Dilan lebih jauh. Dilan yang pintar, baik hati dan romantis... semua dengan caranya sendiri. Cara Dilan mendekati Milea tidak sama dengan teman-teman lelakinya yang lain, bahkan Beni, pacar Milea di Jakarta. Bahkan cara berbicara Dilan yang terdengar kaku, lambat laun justru membuat Milea kerap merindukannya jika sehari saja ia tak mendengar suara itu. Perjalanan hubungan mereka tak selalu mulus. Beni, gank motor, tawuran, Anhar, Kang Adi, semua mewarnai perjalanan itu. Dan Dilan... dengan caranya sendiri...selalu bisa membuat Milea percaya ia bisa tiba di tujuan dengan selamat. Tujuan dari perjalanan ini. Perjalanan mereka berdua. Katanya, dunia SMA adalah dunia paling indah. Dunia Milea dan Dilan satu tingkat lebih indah daripada itu.', 1, '2022-06-03', 'images/poster_film_dilan.jpeg'),
(33, 1, 'sebuah cicipan', 'yogi', '', 2, '2022-06-03', 'images/canva-poster-film-indie-modern-biru-cokelat-gp-FBtf-cog.jpg'),
(34, 6, 'dreadout', 'yogi', 'film ini bergenre horor\r\nutiwi saya dik\r\nmengerikan sekalii\r\nhihih\r\nihihih\r\n.\r\n.\r\n..\r\n.', 1, '2022-06-03', 'images/indonesi.jpg'),
(35, 6, 'Whenchester', 'mas utiwi x ketiban matahari', 'contoh sinopsis dfshsdhfshgsfjgjsjfbjbf\r\nfsdjfsnd', 2, '2022-06-03', 'images/Rekomendasi film halloween Winchester.jpg'),
(37, 5, 'temen kondangan', 'user', 'sdasfsfsdfsdfsf', 1, '2022-06-04', 'images/Film-Komedi-Indonesia-Terbaru-Temen-Kondangan.jpg'),
(39, 7, 'Agent Ali', 'ali', 'Film ini menceritakan tentang seorang anak berusia 12 tahun yang secara tidak sengaja direkrut sebagai agen mata-mata di sebuah lembaga rahasia bernama Meta Advance Tactical Agency (MATA). Ali dan MATA bertugas untuk melindungi Kota Cyberaya yang futuristik dari ancaman luar. ', 2, '2022-06-04', 'images/film-anak-2020-1-cf4a133b960933c19d2f86f7968f877c_600xauto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_film`
--

CREATE TABLE `kategori_film` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_film`
--

INSERT INTO `kategori_film` (`id_kategori`, `kategori`) VALUES
(1, 'Romance'),
(5, 'comedy'),
(6, 'Horor'),
(7, 'Animasi'),
(8, 'Action'),
(9, 'Drama'),
(10, 'Fantasy'),
(12, 'Mystery');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username_user` varchar(30) NOT NULL,
  `password_user` varchar(15) NOT NULL,
  `name_user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username_user`, `password_user`, `name_user`) VALUES
(1, 'user', 'user123', 'example user'),
(2, 'user2', 'user', 'Example User 2'),
(3, 'user3', 'USER', 'Example User 3'),
(9, 'user3', '12345678', 'Example user3'),
(10, 'user4', '12345678', 'Example user4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `kategori_film`
--
ALTER TABLE `kategori_film`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `kategori_film`
--
ALTER TABLE `kategori_film`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
