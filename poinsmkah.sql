-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2023 pada 01.35
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poinsmkah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('123456789', 'Imelisa Putri Avrilla', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `benpel`
--

CREATE TABLE `benpel` (
  `c_benpel` varchar(10) NOT NULL,
  `c_katbenpel` varchar(10) NOT NULL,
  `benpel` text NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `benpel`
--

INSERT INTO `benpel` (`c_benpel`, `c_katbenpel`, `benpel`, `bobot`) VALUES
('5XafCJsV5', 'b4tFXbsU5', 'Berkelahi dengan sekolahan lain', 100),
('cn7rgthJl', 'FSyln8F5q', 'Berkata Kotor Dengan Guru', 50),
('jODakRHnk', 'jGC4JtGo0', 'Memasukkan Baju (Siswa Putri)', 2),
('kmIn6bv43', 'jGC4JtGo0', 'Bertato', 20),
('M8yHhFw6o', 'b4tFXbsU5', 'Terbukti melakukan kejahatan', 50),
('o6zIRf55a', 'wE2hDSZ0H', 'Meninggalkan Kelas Tanpa Izin', 5),
('qlW4RnkLE', 'jGC4JtGo0', 'Tidak Memasukkan Baju (Siswa Putra)', 20),
('rkCV0Qegy', 'jGC4JtGo0', 'Berambut Gondrong (Siswa Putra)/dicat/diwarna', 2),
('UtkxKRhBu', 'wE2hDSZ0H', 'Tidak Mengikuti Pelajaran Tanpa Izin', 10),
('y1Xs82Iud', 'wE2hDSZ0H', 'Tidak Mengikuti Upacara', 5),
('yYuI3otvA', 'FSyln8F5q', 'Mengejek Guru', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL,
  `pesan` text NOT NULL,
  `at` datetime NOT NULL,
  `w_g` varchar(1) NOT NULL,
  `sg` varchar(1) NOT NULL,
  `sw` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`c_chat`, `c_guru`, `c_orangtua`, `pesan`, `at`, `w_g`, `sg`, `sw`) VALUES
(9, 'G2sSiWyoD', 'supyLA8lg', 'contoh', '2017-12-13 09:07:33', 'g', 'y', 'n'),
(10, '5917222858', 'supyLA8lg', 'pak', '2023-01-30 18:33:47', 'g', 'y', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `c_guru` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`c_guru`, `nama`, `username`, `password`, `foto`) VALUES
('3283720534', 'bu supriati', 'bupri', 'bupri', ''),
('3421605362', 'bu indah', 'buindah', 'buindah', ''),
('5917222858', 'bu lilik', 'bulilik', 'bulilik', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katbenpel`
--

CREATE TABLE `katbenpel` (
  `c_katbenpel` varchar(10) NOT NULL,
  `katbenpel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `katbenpel`
--

INSERT INTO `katbenpel` (`c_katbenpel`, `katbenpel`) VALUES
('b4tFXbsU5', 'KEJAHATAN'),
('FSyln8F5q', 'KESOPANAN'),
('jGC4JtGo0', 'KERAPIAN'),
('wE2hDSZ0H', 'KERAJINAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `c_kelas` varchar(10) NOT NULL,
  `kelas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`c_kelas`, `kelas`) VALUES
('2451332544', 'XII APHP 1'),
('2659532119', 'XII RPL 3'),
('2948164123', 'XII TB 3'),
('3458411248', 'XII APHP 2'),
('6210303736', 'XII TB 1'),
('8242555344', 'XII TB 2'),
('bf14I0amf', 'XII RPL 1'),
('fi5IJXCDs', 'XII DKV 1'),
('g20VX0r3h', 'XII DKV 2'),
('NFVN6oSIZ', 'XII RPL 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orangtua`
--

CREATE TABLE `orangtua` (
  `c_orangtua` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orangtua`
--

INSERT INTO `orangtua` (`c_orangtua`, `c_siswa`, `nama`, `username`, `password`) VALUES
('0vEcBeBgF', 'djrCE5y6z', 'Bapaknya Amalia', 'bpa', 'bpa'),
('3140121839', '2201041135', 'Supardi', 'par', 'par'),
('5582053562', '4427029159', 'Sri Mulyati', 'sri', 'sri'),
('supyLA8lg', 'XKHcfzVUR', 'Bapak Ali Husain', 'alihusain', 'alihusain'),
('tW6FuMey0', 'ukxWhAq84', 'Muhammad Hasan Bisri', 'hasan', 'hasan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `c_pelanggaran` varchar(5) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_benpel` varchar(10) NOT NULL,
  `bobot` int(4) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggaran`
--

INSERT INTO `pelanggaran` (`c_pelanggaran`, `c_siswa`, `c_kelas`, `c_benpel`, `bobot`, `c_guru`, `at`) VALUES
('1', '2201041135', '3458411248', 'UtkxKRhBu', 10, '5917222858', '2023-01-30 18:32:15'),
('12345', 'XKHcfzVUR', 'fi5IJXCDs', 'jODakRHnk', 2, '3283720534', '2023-02-02 01:34:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasichat`
--

CREATE TABLE `relasichat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasichat`
--

INSERT INTO `relasichat` (`c_chat`, `c_guru`, `c_orangtua`) VALUES
(8, 'G2sSiWyoD', 'supyLA8lg'),
(9, '5917222858', 'supyLA8lg'),
(10, '5917222858', 'supyLA8lg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sanksi`
--

CREATE TABLE `sanksi` (
  `c_sanksi` varchar(10) NOT NULL,
  `kriteria` varchar(30) NOT NULL,
  `bobot_dari` int(3) NOT NULL,
  `bobot_sampai` int(3) NOT NULL,
  `sanksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sanksi`
--

INSERT INTO `sanksi` (`c_sanksi`, `kriteria`, `bobot_dari`, `bobot_sampai`, `sanksi`) VALUES
('0DhOeINEy', 'Pelanggaran Ringan', 1, 5, '1. Peringatan Lesan<br>2. Dicatat dalam buku pelanggaran'),
('d3e8l5Jts', 'Pelanggaran Sedang', 6, 20, '1. Dicatat<br>2. Membuat Surat Pernyataan'),
('Sk8x467Qm', 'Pelanggaran Berat', 50, 100, '1. Diberikan Peringatan dan Surat Perjanjian<br>2. BIla Melanggar Kembali dikeluarkan dari sekolahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`c_siswa`, `c_kelas`, `nisn`, `nama`, `jk`, `alamat`, `tl`) VALUES
('2201041135', '3458411248', '234567899', 'Nirmala', 'P', 'mojokerto', '1998-03-12'),
('3mPRqCUvC', 'fi5IJXCDs', '45643646', 'Irfan Bachdim', '', '', '0000-00-00'),
('4427029159', '2659532119', '123456789', 'Doni Salmanan', 'L', 'Samben', '1998-10-14'),
('6013259622', '2451332544', '23523124145', 'cfcxfrxd', 'L', 'cvghchtc', '1998-10-12'),
('8XmoU43aM', 'g20VX0r3h', '989898898', 'M. Lionel Messi', 'P', 'Barcelona', '1998-10-22'),
('9sgiPEKLX', 'g20VX0r3h', '123456789', 'Muhammad Ali', 'L', '', '0000-00-00'),
('AKbptUszm', 'g20VX0r3h', '9980802501', 'Muhammad Irfan Sukoco Basyuri', 'L', '', '0000-00-00'),
('aYlxwzZu6', 'fi5IJXCDs', '4374734626', 'Michael Essien Woi', 'L', 'Nganjuk', '1998-11-05'),
('BNlJPHC33', 'bf14I0amf', '43544354', 'Muhammad Nur Hidayat', '', '', '0000-00-00'),
('djrCE5y6z', 'fi5IJXCDs', '46437437', 'Amalia Utami', '', '', '0000-00-00'),
('I73vNKyU9', 'fi5IJXCDs', '362362362', 'Febri Hariyadi', '', '', '0000-00-00'),
('iYDGaCQDM', 'g20VX0r3h', '123123123', 'Khusnul Yuliansyah Putra', 'L', 'Baron', '1998-10-15'),
('j1gD4Sei6', 'g20VX0r3h', '39090909090', 'Diva Anggraini', 'P', 'Nganjuk', '1998-05-16'),
('NJOgsxL8z', 'bf14I0amf', '465437345', 'Muhammad Rizky Ridho', '', '', '0000-00-00'),
('ukxWhAq84', 'bf14I0amf', '46346436436', 'Evan Dimas Darmono', 'L', 'Surabaya', '1997-10-18'),
('unCWwBalF', 'bf14I0amf', '35326436436', 'M. Ronaldo', '', '', '0000-00-00'),
('XKHcfzVUR', 'fi5IJXCDs', '46436437437', 'Alvaro Morata', 'L', 'Lengkong', '1999-03-20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indeks untuk tabel `benpel`
--
ALTER TABLE `benpel`
  ADD PRIMARY KEY (`c_benpel`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`c_guru`);

--
-- Indeks untuk tabel `katbenpel`
--
ALTER TABLE `katbenpel`
  ADD PRIMARY KEY (`c_katbenpel`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`c_kelas`);

--
-- Indeks untuk tabel `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`c_orangtua`);

--
-- Indeks untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`c_pelanggaran`);

--
-- Indeks untuk tabel `relasichat`
--
ALTER TABLE `relasichat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indeks untuk tabel `sanksi`
--
ALTER TABLE `sanksi`
  ADD PRIMARY KEY (`c_sanksi`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`c_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `relasichat`
--
ALTER TABLE `relasichat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
