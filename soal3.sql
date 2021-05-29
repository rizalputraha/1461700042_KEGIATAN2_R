-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2020 pada 16.20
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soal3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_guru`
--

CREATE TABLE `data_guru` (
  `id_guru` int(3) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat_guru` text NOT NULL,
  `telpon_guru` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_guru`
--

INSERT INTO `data_guru` (`id_guru`, `nama_guru`, `nip`, `kelamin`, `alamat_guru`, `telpon_guru`, `username`, `password`) VALUES
(1, 'Budi Setiawan', '111112', 'laki-laki', 'Bogor', '0217703999', 'budi', '00dfc53ee86af02e742515cdcf075ed3'),
(2, 'Rosni Anjar', '111113', 'perempuan', 'Jakarta', '0217703111', 'rosni', 'f24317cf121953638985646330c6296d'),
(3, 'Iwan Pranoto', '111114', 'laki-laki', 'Cijantung', '0217703222', 'iwan', '01ccce480c60fcdb67b54f4509ffdb56'),
(4, 'Imam Raharja', '111115', 'laki-laki', 'Bekasi', '0217703555', 'imam', 'eaccb8ea6090a40a98aa28c071810371'),
(5, 'Desi Sukma', '111116', 'perempuan', 'Bogor', '0217703444', 'desi', '069e2dd171f61ecffb845190a7adf425');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(5) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `nis` varchar(12) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat_siswa` text NOT NULL,
  `telpon_siswa` varchar(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `nama_siswa`, `nis`, `kelamin`, `alamat_siswa`, `telpon_siswa`, `username`, `password`) VALUES
(2, 'Ibnu Siena', '50406041', 'laki-laki', 'Bogor', '0217703966', 'ibnu', '195ace8d50de761419faf08845304398'),
(3, 'Elka Fajar', '50406042', 'perempuan', 'Bojong', '0217703977', 'elka', '0eb0d6bc3f0b26b3cdaf7639cc0287ef'),
(4, 'Adi Kurnia', '50406043', 'laki-laki', 'Jakarta', '0217703988', 'adi', 'c46335eb267e2e1cde5b017acb4cd799'),
(6, 'Blodod Eman', '50406045', 'laki-laki', 'Tangerang', '0217703944', 'blodod', '6ed2d9fc10d15ca4c123f3b90b5d170a'),
(7, 'Athi Septiani', '50406046', 'perempuan', 'Jakarta', '0217703933', 'athi', '1b47e01486bbd74137716457e828a709'),
(8, 'Naila Larasati', '50406047', 'perempuan', 'Depok', '0217703922', 'naila', 'eec1b906b0c314e617235f13f0e6468d'),
(9, 'Rizkon Halali', '50406048', 'laki-laki', 'Mampang', '0217703955', 'rizkon', '544ccf86d9579f519ec9efb8de16a0dd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setup_kelas`
--

CREATE TABLE `setup_kelas` (
  `id_kelas` int(3) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setup_kelas`
--

INSERT INTO `setup_kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setup_pelajaran`
--

CREATE TABLE `setup_pelajaran` (
  `id_pelajaran` int(3) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setup_pelajaran`
--

INSERT INTO `setup_pelajaran` (`id_pelajaran`, `nama_pelajaran`) VALUES
(1, 'Biologi'),
(2, 'Matematika'),
(3, 'Fisika'),
(4, 'B.Indonesia'),
(5, 'Kimia'),
(6, 'Sejarah'),
(7, 'Sosiologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(5) NOT NULL,
  `id_guru` int(3) NOT NULL,
  `id_pelajaran` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_guru`, `id_pelajaran`, `id_kelas`) VALUES
(3, 1, 4, 1),
(4, 1, 1, 1),
(5, 1, 3, 1),
(6, 1, 5, 1),
(7, 5, 2, 1),
(8, 5, 6, 1),
(9, 5, 7, 1),
(10, 5, 2, 2),
(11, 5, 6, 2),
(12, 5, 7, 2),
(13, 4, 4, 2),
(14, 4, 1, 2),
(15, 4, 3, 2),
(16, 4, 5, 2),
(17, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `id_pelajaran` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `id_guru` int(3) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_siswa`, `id_pelajaran`, `id_kelas`, `id_guru`, `nilai`) VALUES
(55, 2, 2, 2, 5, 60),
(54, 3, 2, 2, 5, 50),
(53, 6, 7, 1, 5, 76),
(52, 7, 7, 1, 5, 40),
(51, 4, 7, 1, 5, 50),
(50, 6, 6, 1, 5, 90),
(49, 7, 6, 1, 5, 60),
(48, 4, 6, 1, 5, 75),
(47, 6, 2, 1, 5, 55),
(46, 7, 2, 1, 5, 30),
(45, 4, 2, 1, 5, 60),
(44, 6, 5, 1, 1, 70),
(43, 7, 5, 1, 1, 80),
(42, 4, 5, 1, 1, 90),
(41, 6, 3, 1, 1, 55),
(40, 7, 3, 1, 1, 70),
(39, 4, 3, 1, 1, 75),
(38, 6, 1, 1, 1, 75),
(37, 7, 1, 1, 1, 60),
(36, 4, 1, 1, 1, 80),
(35, 6, 4, 1, 1, 80),
(34, 7, 4, 1, 1, 60),
(33, 4, 4, 1, 1, 70),
(56, 8, 2, 2, 5, 70),
(57, 9, 2, 2, 5, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `id_ruangan` int(5) NOT NULL,
  `id_siswa` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`id_ruangan`, `id_siswa`, `id_kelas`) VALUES
(1, 4, 1),
(2, 7, 1),
(3, 6, 1),
(4, 3, 2),
(5, 2, 2),
(6, 8, 2),
(7, 9, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `is_dibalas` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=belum dibalas; 1=sudah dibalas',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tb_kontak`
--

INSERT INTO `tb_kontak` (`id`, `nama`, `email`, `judul`, `isi`, `is_dibalas`, `created_at`, `updated_at`) VALUES
(1, 'awan pribadi basuki', 'awan@gmail.com', 'Tidak Bisa Login', 'Saya tidak bisa login.', '0', '2014-12-09 20:35:17', '2014-12-09 20:35:17'),
(2, 'Awan Pribadi Basuki', 'awan@localhost.com', 'Tidak Bisa Login', 'Saya tidak bisa login, username dan password yang diberikan saya lupa.', '0', '2014-12-10 17:57:24', '2014-12-10 17:57:24'),
(3, 'Awan Pribadi Basuki', 'awan@localhost.com', 'Tidak bisa login', 'Saya tidak bisa login, bagaimana ya?', '0', '2014-12-15 23:34:33', '2014-12-15 23:34:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE `tb_pengumuman` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `judul` varchar(64) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id`, `judul`, `slug`, `isi`, `created_at`, `updated_at`) VALUES
(10, 'Mengetahui Status Kelulusan Siswa PSB 2014', 'mengetahui-status-kelulusan-siswa-psb-2014', '<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>\r\n<p>&nbsp;Berikut ini adalah cara verifikasi data PSB 2014.&nbsp; Berikut ini adalah cara verifikasi data PSB 2014. &nbsp;Berikut ini adalah cara verifikasi data PSB 2014. &nbsp; Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014. Berikut ini adalah cara verifikasi data PSB 2014.</p>', '2014-12-05 17:35:55', '2014-12-05 19:58:56'),
(11, 'Cara Update Data', 'cara-update-data', '<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>\r\n<p>Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini. Bagi anda yang belum tahu cara mengupdate data, maka ikuti langkah berikut ini.</p>', '2014-12-08 17:26:16', '2014-12-08 17:26:16'),
(12, 'Menghapus Pengumuman Yang Sudah Kadaluarsa', 'menghapus-pengumuman-yang-sudah-kadaluarsa', '<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>\r\n<p>Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa. Berikut ini adalah cara bagaimana menghapus pengumuman yang sudah dadaluarsa.</p>', '2014-12-31 06:14:14', '2014-12-31 06:14:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` char(8) NOT NULL,
  `password` char(8) NOT NULL,
  `nisn` char(10) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `nama_panggilan` varchar(32) NOT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `agama` enum('0','1','2','3','4','5','6') DEFAULT NULL COMMENT '0=lainnya; 1=islam; 2=katolik; 3=protestan; 4=hindu; 5=budha; 6=Konghucu',
  `ket_agama` varchar(32) DEFAULT NULL,
  `tempat_lahir` varchar(32) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `berat_badan` varchar(3) DEFAULT NULL,
  `tinggi_badan` varchar(3) DEFAULT NULL,
  `golongan_darah` enum('O','AB','B','A') DEFAULT NULL,
  `status_anak` enum('0','1') DEFAULT NULL COMMENT '0=angkat; 1=kandung',
  `anak_ke` varchar(2) DEFAULT NULL,
  `jumlah_saudara` varchar(2) DEFAULT NULL,
  `tmp_tinggal_dengan` enum('0','1','2','3','4') DEFAULT NULL COMMENT '0=lainnya; 1=orang tua; 2=kakak; 3=paman/bibi; 4=kakek/nenek',
  `tmp_ket_tinggal_dengan` varchar(32) DEFAULT NULL,
  `tmp_alamat` varchar(255) DEFAULT NULL,
  `tmp_telepon` varchar(16) DEFAULT NULL,
  `tmp_jarak_sekolah` varchar(2) DEFAULT NULL,
  `tmp_kendaraan` enum('1','2','3','4','5') DEFAULT NULL COMMENT '1=berjalan kaki; 2=sepeda;  3=angkutan umum; 4=sepeda motor; 5=mobil;',
  `ort_nama_ayah` varchar(64) DEFAULT NULL,
  `ort_pekerjaan_ayah` enum('0','1','2','3','4','5','6','7') DEFAULT NULL COMMENT '0=lainnya; 1=pns; 2=tni/polri; 3=petani/nelayan; 4=buruh; 5=pedagang/wiraswasta; 6=tukang becak/ojek; 7=sopir',
  `ort_ket_pekerjaan_ayah` varchar(32) DEFAULT NULL,
  `ort_nama_ibu` varchar(64) DEFAULT NULL,
  `ort_pekerjaan_ibu` enum('0','1','2','3','4','5','6','7','8') DEFAULT NULL COMMENT '0=lainnya; 1=pns; 2=tni/polri; 3=petani/nelayan; 4=buruh; 5=pedagang/wiraswasta; 6=tukang becak/ojek; 7=sopir; 8=ibu rumah tangga',
  `ort_ket_pekerjaan_ibu` varchar(32) DEFAULT NULL,
  `ort_alamat` varchar(255) DEFAULT NULL,
  `ort_telepon` varchar(16) DEFAULT NULL,
  `ort_penghasilan` varchar(12) DEFAULT NULL,
  `ska_nama` varchar(64) DEFAULT NULL,
  `ska_status` enum('0','1') DEFAULT NULL COMMENT '0=swasta; 1=negeri',
  `ska_alamat` varchar(255) DEFAULT NULL,
  `ska_telepon` varchar(16) DEFAULT NULL,
  `ska_kelas` varchar(32) DEFAULT NULL,
  `ska_tahun_lulus` year(4) DEFAULT NULL,
  `ska_no_ijazah` varchar(32) DEFAULT NULL,
  `nil_bin_1` float(2,1) DEFAULT NULL,
  `nil_bin_2` float(2,1) DEFAULT NULL,
  `nil_bin_3` float(2,1) DEFAULT NULL,
  `nil_bin_4` float(2,1) DEFAULT NULL,
  `nil_bin_5` float(2,1) DEFAULT NULL,
  `nil_bin_rata` float(2,1) DEFAULT NULL,
  `nil_big_1` float(2,1) DEFAULT NULL,
  `nil_big_2` float(2,1) DEFAULT NULL,
  `nil_big_3` float(2,1) DEFAULT NULL,
  `nil_big_4` float(2,1) DEFAULT NULL,
  `nil_big_5` float(2,1) DEFAULT NULL,
  `nil_big_rata` float(2,1) DEFAULT NULL,
  `nil_mat_1` float(2,1) DEFAULT NULL,
  `nil_mat_2` float(2,1) DEFAULT NULL,
  `nil_mat_3` float(2,1) DEFAULT NULL,
  `nil_mat_4` float(2,1) DEFAULT NULL,
  `nil_mat_5` float(2,1) DEFAULT NULL,
  `nil_mat_rata` float(2,1) DEFAULT NULL,
  `nil_ipa_1` float(2,1) DEFAULT NULL,
  `nil_ipa_2` float(2,1) DEFAULT NULL,
  `nil_ipa_3` float(2,1) DEFAULT NULL,
  `nil_ipa_4` float(2,1) DEFAULT NULL,
  `nil_ipa_5` float(2,1) DEFAULT NULL,
  `nil_ipa_rata` float(2,1) DEFAULT NULL,
  `nil_ips_1` float(2,1) DEFAULT NULL,
  `nil_ips_2` float(2,1) DEFAULT NULL,
  `nil_ips_3` float(2,1) DEFAULT NULL,
  `nil_ips_4` float(2,1) DEFAULT NULL,
  `nil_ips_5` float(2,1) DEFAULT NULL,
  `nil_ips_rata` float(2,1) DEFAULT NULL,
  `status_pendaftaran` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=mengundurkan diri; 1=aktif',
  `status_biodata` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=belum lengkap; 1=sudah lengkap',
  `status_verifikasi` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=belum; 1=sudah',
  `status_seleksi` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 = tidak lulus; 1=lulus;',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tb_peserta`
--

INSERT INTO `tb_peserta` (`id`, `email`, `username`, `password`, `nisn`, `nama`, `nama_panggilan`, `jenis_kelamin`, `agama`, `ket_agama`, `tempat_lahir`, `tanggal_lahir`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `status_anak`, `anak_ke`, `jumlah_saudara`, `tmp_tinggal_dengan`, `tmp_ket_tinggal_dengan`, `tmp_alamat`, `tmp_telepon`, `tmp_jarak_sekolah`, `tmp_kendaraan`, `ort_nama_ayah`, `ort_pekerjaan_ayah`, `ort_ket_pekerjaan_ayah`, `ort_nama_ibu`, `ort_pekerjaan_ibu`, `ort_ket_pekerjaan_ibu`, `ort_alamat`, `ort_telepon`, `ort_penghasilan`, `ska_nama`, `ska_status`, `ska_alamat`, `ska_telepon`, `ska_kelas`, `ska_tahun_lulus`, `ska_no_ijazah`, `nil_bin_1`, `nil_bin_2`, `nil_bin_3`, `nil_bin_4`, `nil_bin_5`, `nil_bin_rata`, `nil_big_1`, `nil_big_2`, `nil_big_3`, `nil_big_4`, `nil_big_5`, `nil_big_rata`, `nil_mat_1`, `nil_mat_2`, `nil_mat_3`, `nil_mat_4`, `nil_mat_5`, `nil_mat_rata`, `nil_ipa_1`, `nil_ipa_2`, `nil_ipa_3`, `nil_ipa_4`, `nil_ipa_5`, `nil_ipa_rata`, `nil_ips_1`, `nil_ips_2`, `nil_ips_3`, `nil_ips_4`, `nil_ips_5`, `nil_ips_rata`, `status_pendaftaran`, `status_biodata`, `status_verifikasi`, `status_seleksi`, `created_at`, `updated_at`) VALUES
(1, 'awan@localhost', 'YyCKqlNv', 'SFwaWqpe', '1234567891', 'Awan Pribadi Basuki Adi', 'awan', 'L', '1', NULL, 'Pasirian', '1986-06-10', '60', '165', 'O', '1', '1', '3', '1', NULL, 'Jalan Raya Pasirian Gg. Dwikora No. 23\r\nPasirian, 67372', '0334-571174', '2', '2', 'Basuki Adi', '1', NULL, 'Endang Sri Hartini', '8', NULL, 'Jalan Raya Pasirian Gg. Dwikora No. 23\r\nPasirian, 67372', '0334-571174', '3575650', 'SDN Pasirian 07', '1', 'Jalan Raya Pasirian No. 7', '0334-571534', '6', 1999, 'abc/23-45a/mkjn', 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, '1', '1', '1', '1', '2014-12-01 15:30:17', '2014-12-16 00:44:07'),
(2, 'tiwi@gmail.com', 'V6AxnZon', 'hWdRnmOk', '1234567893', 'Candra Pratiwi', 'tiwi', 'P', '1', NULL, 'Pasirian', '1993-05-10', '60', '160', 'O', '1', '3', '3', '0', 'Yayasan Al Amin', 'Jalan Raya Pasirian No. 23 Pairian\r\n67372', '0334-57114', '2', '3', 'Sumarno', '1', NULL, 'Sri Hartini', '8', NULL, 'Jalan Raya Pasirian No. 23 Pairian\r\n67372', '0334-571174', '4000000', 'Sdn Pasirian 06', '1', 'Jalan Raya Kebonan 34, Pasirian\r\n67372', '0334-571123', '6', 2004, 'abc/23-45a/mkjg', 7.0, 7.4, 7.7, 7.0, 7.0, 7.2, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.0, 7.4, 7.0, 7.0, 7.1, 7.0, 7.0, 7.0, 7.7, 7.0, 7.1, 7.0, 7.7, 7.0, 7.0, 7.3, 7.2, '1', '1', '1', '0', '2014-12-01 15:44:35', '2014-12-05 15:35:24'),
(3, 'bangkit@gmail.com', 'VQbUYIgp', 'bkDn0Fmm', '1234567892', 'Bangkit Sanjaya', 'bangkit', 'L', '0', 'Rahasia', 'Pasirian', '2010-06-15', '50', '150', 'O', '1', '2', '3', '0', 'Yayasan Al Amin', 'Jalan Raya Pasirian 23', '571174', '2', '1', 'Basuki Adi', '1', NULL, 'Endang Hartini', '0', 'Agen Rahasia', 'Jalan Raya Pasirian No 23', '57117364', '3000000', 'Sdn Pasirian 07', '1', 'Pasirian No 17', '5712374', '6-a', 2013, 'abc/123-mda-dfdkioej/2013', 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, 7.3, 7.0, 7.0, 7.0, 7.0, 7.1, '1', '1', '0', '0', '2014-12-01 16:06:17', '2014-12-08 15:08:04'),
(4, 'bambang@gmail.com', 'PKMxv2tC', 'RYfS8HCh', '1234567894', 'Bambang Setiawan', 'bambang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-01 16:18:54', '2014-12-01 16:18:54'),
(5, 'indra@gmail.com', 'lbdtyzvT', 'ec2T1469', '1234567895', 'Indra Hermawan', 'indra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-07 22:53:01', '2014-12-07 22:53:01'),
(6, 'eko@gmail.com', 'ewWJJPnE', 'K8kWcjA0', '1234567896', 'Eko Suharjo', 'Eko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-10 17:36:17', '2014-12-10 17:36:17'),
(7, 'ida@gmail.com', 'N9ziR23l', 'BuwYu6Ge', '1234567897', 'Ida Nurhasanah', 'ida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-15 16:26:39', '2014-12-15 16:26:39'),
(8, 'novi@gmail.com', 'im546jqF', '3y73eZL7', '1234567898', 'Novita Sari', 'Novi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', '0', '2014-12-18 23:03:17', '2014-12-18 23:03:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` char(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` enum('operator','administrator') NOT NULL DEFAULT 'operator',
  `is_blokir` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `is_blokir`, `created_at`, `updated_at`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'administrator', '0', '0000-00-00 00:00:00', '2014-12-10 23:49:22'),
(13, 'awan', 'e19cb7c038c2159012047e8b276bb6a2', 'Awan Pribadi Basuki', 'operator', '0', '2014-12-20 14:39:41', '2014-12-30 04:32:40'),
(14, 'bangkit', '71c7c97e86a4618374f3a345248b3dff', 'Bangkit Pribadi', 'operator', '0', '2014-12-30 04:48:30', '2014-12-30 04:48:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_admin`
--

CREATE TABLE `user_admin` (
  `id_admin` int(3) NOT NULL,
  `nama_admin` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_admin`
--

INSERT INTO `user_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Agus Sumarna', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `setup_kelas`
--
ALTER TABLE `setup_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `setup_pelajaran`
--
ALTER TABLE `setup_pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indeks untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indeks untuk tabel `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_guru`
--
ALTER TABLE `data_guru`
  MODIFY `id_guru` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `setup_kelas`
--
ALTER TABLE `setup_kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `setup_pelajaran`
--
ALTER TABLE `setup_pelajaran`
  MODIFY `id_pelajaran` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  MODIFY `id_ruangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
