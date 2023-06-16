-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2023 pada 14.33
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxmon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_data_barang`
--

CREATE TABLE `d_data_barang` (
  `id_barang` varchar(250) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `jumlah_barang` varchar(250) NOT NULL,
  `id_jenis` varchar(250) NOT NULL,
  `id_inventaris` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_data_barang_edit`
--

CREATE TABLE `d_data_barang_edit` (
  `id_inventaris` varchar(250) NOT NULL,
  `jumlah_barang` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `user_act` varchar(250) NOT NULL,
  `log_time` varchar(250) NOT NULL,
  `id_barang` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `d_data_barang_edit`
--

INSERT INTO `d_data_barang_edit` (`id_inventaris`, `jumlah_barang`, `reason`, `type`, `user_act`, `log_time`, `id_barang`) VALUES
('I0001', '1234', 'ganti memek', 'delete', '', '2023-06-16 02:16:32', 'B0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_jenis_barang`
--

CREATE TABLE `d_jenis_barang` (
  `id_barang` varchar(250) NOT NULL,
  `jenis_barang` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `d_jenis_barang`
--

INSERT INTO `d_jenis_barang` (`id_barang`, `jenis_barang`) VALUES
('B0002', 'Memek');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_jenis_barang_edit`
--

CREATE TABLE `d_jenis_barang_edit` (
  `id_barang` varchar(250) NOT NULL,
  `jenis_barang` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `user_act` varchar(250) NOT NULL,
  `log_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `d_jenis_barang_edit`
--

INSERT INTO `d_jenis_barang_edit` (`id_barang`, `jenis_barang`, `reason`, `type`, `user_act`, `log_time`) VALUES
('B0001', 'Kontol', 'cilik', 'delete', '', '2023-06-16 02:17:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_agent`
--

CREATE TABLE `m_agent` (
  `id` int(11) NOT NULL,
  `id_agent` varchar(20) NOT NULL,
  `nama_agent` varchar(250) NOT NULL,
  `id_objek_pajak` varchar(20) NOT NULL,
  `last_connect` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_agent`
--

INSERT INTO `m_agent` (`id`, `id_agent`, `nama_agent`, `id_objek_pajak`, `last_connect`) VALUES
(83, '16834', 'agent 2', 'OP0002', '31'),
(84, 'eads', 'ads', 'OP0002', '25'),
(85, 'sdjkl', 'ksdf', 'OP0002', '45'),
(86, 'gr77irh', 'nyfiyg', 'OP0002', '23'),
(87, '16832', 'agent 1', 'OP0003', '24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_coba`
--

CREATE TABLE `m_coba` (
  `id` varchar(250) NOT NULL,
  `nama_pajak_pajak` varchar(250) NOT NULL,
  `last_connect` varchar(250) NOT NULL,
  `alamat_objek_pajak` varchar(250) NOT NULL,
  `kecamatan` varchar(250) NOT NULL,
  `petugas` varchar(250) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `nomor_pemilik` varchar(250) NOT NULL,
  `installed` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kecamatan`
--

CREATE TABLE `m_kecamatan` (
  `id_kecamatan` varchar(25) NOT NULL,
  `nama_kecamatan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_kecamatan`
--

INSERT INTO `m_kecamatan` (`id_kecamatan`, `nama_kecamatan`) VALUES
('KCM0001', 'Balongbendo'),
('KCM0002', 'Krian'),
('KCM0003', 'Taman'),
('KCM0004', 'Buduran'),
('KCM0005', 'Porong'),
('KCM0006', 'Tanggulangin'),
('KCM0007', 'Candi'),
('KCM0008', 'Prambon'),
('KCM0009', 'Tarik'),
('KCM0010', 'Gedangan'),
('KCM0011', 'Sedati'),
('KCM0012', 'Tulangan'),
('KCM0013', 'Jabon'),
('KCM0014', 'Sidoarjo'),
('KCM0015', 'Waru'),
('KCM0016', 'Krembung'),
('KCM0017', 'Sukodono'),
('KCM0018', 'Wonoayu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_klasifikasi_pajak`
--

CREATE TABLE `m_klasifikasi_pajak` (
  `id_klasifikasi` varchar(250) NOT NULL,
  `jenis_pajak` varchar(250) NOT NULL,
  `klasifikasi_pajak` varchar(250) NOT NULL,
  `tarif` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_klasifikasi_pajak`
--

INSERT INTO `m_klasifikasi_pajak` (`id_klasifikasi`, `jenis_pajak`, `klasifikasi_pajak`, `tarif`) VALUES
('K0001', 'pajak daerah', 'Pajak Restoran', '27000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_klasifikasi_pajak_edit`
--

CREATE TABLE `m_klasifikasi_pajak_edit` (
  `id_klasifikasi` varchar(25) NOT NULL,
  `jenis_pajak` varchar(50) NOT NULL,
  `Klasifikasi_pajak` varchar(100) NOT NULL,
  `tarif` varchar(150) NOT NULL,
  `reason` text DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `user_act` varchar(25) NOT NULL,
  `log_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_klasifikasi_pajak_edit`
--

INSERT INTO `m_klasifikasi_pajak_edit` (`id_klasifikasi`, `jenis_pajak`, `Klasifikasi_pajak`, `tarif`, `reason`, `type`, `user_act`, `log_time`) VALUES
('K0001', 'daerah', 'Pajak Restoran', '290000', 'ya', 'delete', '', '2023-03-31 15:04:35'),
('K0002', '', '', '', 'ya', 'delete', '', '2023-04-04 12:29:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_level`
--

CREATE TABLE `m_level` (
  `level_id` varchar(25) NOT NULL,
  `level_name` varchar(30) NOT NULL,
  `status_delete` int(1) NOT NULL,
  `entry_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL,
  `passcode` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_name`, `status_delete`, `entry_date`, `update_date`, `passcode`) VALUES
('L001', 'Admin', 0, '2023-04-03 10:14:22', '0000-00-00 00:00:00', NULL),
('L002', 'User', 0, '2023-05-04 10:14:22', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_menu_child`
--

CREATE TABLE `m_menu_child` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `menu_name_eng` varchar(25) NOT NULL,
  `menu_header_id` int(11) NOT NULL,
  `file_php` varchar(100) NOT NULL,
  `token_csrf` varchar(250) NOT NULL,
  `sort` int(11) NOT NULL,
  `passcode` varchar(25) NOT NULL DEFAULT '',
  `data` int(1) NOT NULL DEFAULT 1,
  `add` int(1) NOT NULL DEFAULT 1,
  `view` int(1) NOT NULL DEFAULT 1,
  `edit` int(1) NOT NULL DEFAULT 1,
  `delete` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_menu_child`
--

INSERT INTO `m_menu_child` (`menu_id`, `menu_name`, `menu_name_eng`, `menu_header_id`, `file_php`, `token_csrf`, `sort`, `passcode`, `data`, `add`, `view`, `edit`, `delete`) VALUES
(1, 'Data Barang', '', 1, 'd_data_barang.php', '', 2, '', 1, 1, 1, 1, 1),
(2, 'Jenis', '', 1, 'd_jenis_barang.php', '', 4, '', 1, 1, 1, 1, 1),
(3, 'USER', '', 2, 'm_user.php', '', 8, '', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_menu_header`
--

CREATE TABLE `m_menu_header` (
  `menu_header_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `class_icon` varchar(40) NOT NULL,
  `menu_header_name` varchar(50) NOT NULL,
  `menu_header_name_eng` varchar(25) NOT NULL,
  `sort` int(3) NOT NULL,
  `passcode` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_menu_header`
--

INSERT INTO `m_menu_header` (`menu_header_id`, `id`, `class_icon`, `menu_header_name`, `menu_header_name_eng`, `sort`, `passcode`) VALUES
(1, 1, '', 'DATA MONITORING', '', 1, NULL),
(2, 2, '', 'MASTER', '', 2, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_menu_level`
--

CREATE TABLE `m_menu_level` (
  `id_arr` int(11) NOT NULL,
  `level_id` varchar(25) NOT NULL,
  `menu_header_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `view` int(3) NOT NULL,
  `edit` int(3) NOT NULL,
  `del` int(3) NOT NULL,
  `adddata` int(11) NOT NULL,
  `passcode` varchar(25) DEFAULT NULL,
  `base_price` int(1) NOT NULL,
  `net_price` int(1) NOT NULL,
  `sell_price` int(1) NOT NULL,
  `branch_price` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_menu_level`
--

INSERT INTO `m_menu_level` (`id_arr`, `level_id`, `menu_header_id`, `menu_id`, `view`, `edit`, `del`, `adddata`, `passcode`, `base_price`, `net_price`, `sell_price`, `branch_price`) VALUES
(1, 'L001', 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(2, 'L001', 1, 2, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(3, 'L001', 2, 3, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(5, 'L002', 1, 1, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(8, 'L002', 1, 2, 0, 0, 0, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_menu_level_dashboard`
--

CREATE TABLE `m_menu_level_dashboard` (
  `id_arr` int(11) NOT NULL,
  `sort` varchar(25) DEFAULT NULL,
  `level_id` varchar(25) NOT NULL,
  `dashboard_id` int(11) NOT NULL,
  `view` int(3) NOT NULL,
  `passcode` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_objek_pajak`
--

CREATE TABLE `m_objek_pajak` (
  `id_objek_pajak` varchar(250) NOT NULL,
  `id_wajib_pajak` varchar(250) NOT NULL,
  `id_kecamatan` varchar(250) NOT NULL,
  `nama_objek_pajak` varchar(250) NOT NULL,
  `niop` varchar(250) NOT NULL,
  `npwpd` varchar(250) NOT NULL,
  `alamat_objek_pajak` varchar(250) NOT NULL,
  `petugas` varchar(250) NOT NULL,
  `create_time` varchar(250) NOT NULL,
  `tipe` varchar(250) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `nomor_pemilik` varchar(250) NOT NULL,
  `installed` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_objek_pajak`
--

INSERT INTO `m_objek_pajak` (`id_objek_pajak`, `id_wajib_pajak`, `id_kecamatan`, `nama_objek_pajak`, `niop`, `npwpd`, `alamat_objek_pajak`, `petugas`, `create_time`, `tipe`, `nama_pemilik`, `nomor_pemilik`, `installed`) VALUES
('OP0002', 'W0003', 'KCM0003', 'aw3', '890', '098', 'bogor', 'bydi', '', 'PARKIR', 'heri', '323', '4'),
('OP0003', 'W0004', 'KCM0004', 'papaloma', '345', '321', 'pandaan', 'budi', '', 'HIBURAN', 'bendrat', '789', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_objek_pajak_edit`
--

CREATE TABLE `m_objek_pajak_edit` (
  `id_objek_pajak` varchar(250) NOT NULL,
  `id_wajib_pajak` varchar(250) NOT NULL,
  `id_kecamatan` varchar(250) NOT NULL,
  `npwpd` varchar(250) NOT NULL,
  `niop` varchar(250) NOT NULL,
  `nama_objek_pajak` varchar(250) NOT NULL,
  `tipe` varchar(250) NOT NULL,
  `user_act` varchar(250) NOT NULL,
  `log_time` varchar(250) NOT NULL,
  `create_time` varchar(250) NOT NULL,
  `petugas` varchar(250) NOT NULL,
  `alamat_objek_pajak` varchar(250) NOT NULL,
  `nama_pemilik` varchar(250) NOT NULL,
  `nomor_pemilik` varchar(250) NOT NULL,
  `installed` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_objek_pajak_edit`
--

INSERT INTO `m_objek_pajak_edit` (`id_objek_pajak`, `id_wajib_pajak`, `id_kecamatan`, `npwpd`, `niop`, `nama_objek_pajak`, `tipe`, `user_act`, `log_time`, `create_time`, `petugas`, `alamat_objek_pajak`, `nama_pemilik`, `nomor_pemilik`, `installed`, `type`) VALUES
('OP0001', 'W0004', 'KCM0002', '456', '123', 'cfc', 'RESTO', '', '2023-05-09 09:25:35', '', 'heri', '', '', '', '', 'delete'),
('OP0003', 'W0004', 'KCM0001', '456', '123', 'kentucky', 'HOTEL', '', '2023-05-09 09:28:33', '', 'beni', '', '', '', '', 'delete');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_setting_edit`
--

CREATE TABLE `m_setting_edit` (
  `id_setting` varchar(250) NOT NULL,
  `atas` varchar(250) NOT NULL,
  `bawah` varchar(250) NOT NULL,
  `tanggal_pembayaran` varchar(250) NOT NULL,
  `tanggal_pelaporan` varchar(250) NOT NULL,
  `jumlah_hari` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `user_act` varchar(250) NOT NULL,
  `log_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_setting_edit`
--

INSERT INTO `m_setting_edit` (`id_setting`, `atas`, `bawah`, `tanggal_pembayaran`, `tanggal_pelaporan`, `jumlah_hari`, `reason`, `type`, `user_act`, `log_time`) VALUES
('SP0002', '1131313313131', '313131313', '1313-12-13', '131313-12-13', '13131313', 'adad', 'delete', 'U0002', '2023-05-30 08:45:54'),
('SP0003', '', '', '16-05-2023', '25-05-2023', '', 'd', 'delete', 'U0002', '2023-05-30 09:20:53'),
('SP0002', '30%', '20%', '2000-11-21', '2022-11-23', 'banyak', 'aas', 'delete', 'U0002', '2023-05-30 09:24:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_setting_parameter`
--

CREATE TABLE `m_setting_parameter` (
  `id_setting` varchar(250) NOT NULL,
  `atas` varchar(250) NOT NULL,
  `bawah` varchar(250) NOT NULL,
  `tanggal_pelaporan` varchar(250) NOT NULL,
  `tanggal_pembayaran` varchar(250) NOT NULL,
  `jumlah_hari` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_setting_parameter`
--

INSERT INTO `m_setting_parameter` (`id_setting`, `atas`, `bawah`, `tanggal_pelaporan`, `tanggal_pembayaran`, `jumlah_hari`) VALUES
('SP0001', '12', '24', '15-05-2023', '14-05-2023', '09'),
('SP0002', '13', '13', '05-05-2023', '01-05-2023', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_user`
--

CREATE TABLE `m_user` (
  `id_user` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `level_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_user`
--

INSERT INTO `m_user` (`id_user`, `username`, `password`, `full_name`, `level_id`) VALUES
('U0002', 'admin', 'eDFzeEhFellSVFJObmJtV3lUN3dtZz09', 'admin', 'L001'),
('U0004', 'witch', 'emsydE15S1dpMy9HNEp1Tnk5WTJ0UT09', 'hey', 'L002'),
('U0005', 'undefined', 'NkUvRjBZWmJadVQ1T1A4WDNPbXBwZz09', 'undefined', 'undefined'),
('U0006', 'undefined', 'NkUvRjBZWmJadVQ1T1A4WDNPbXBwZz09', 'undefined', 'undefined');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_user_edit`
--

CREATE TABLE `m_user_edit` (
  `id_user` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `user_act` varchar(250) NOT NULL,
  `log_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_user_edit`
--

INSERT INTO `m_user_edit` (`id_user`, `username`, `full_name`, `password`, `level`, `reason`, `type`, `user_act`, `log_time`) VALUES
('U0004', 'mau', 'maulana', 'ejljR1ZvQnJVaGozbWgrbzg2dGVFUT09', 'L002', 'ya', 'delete', 'U0002', '2023-05-09 09:09:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_wajib_pajak`
--

CREATE TABLE `m_wajib_pajak` (
  `id_wajib_pajak` varchar(250) NOT NULL,
  `npwpd` int(250) NOT NULL,
  `nama_wajib_pajak` varchar(250) NOT NULL,
  `pemilik` varchar(250) NOT NULL,
  `id_kecamatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_wajib_pajak`
--

INSERT INTO `m_wajib_pajak` (`id_wajib_pajak`, `npwpd`, `nama_wajib_pajak`, `pemilik`, `id_kecamatan`) VALUES
('W0001', 14142, 'rahmat', 'wahya', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_wajib_pajak_edit`
--

CREATE TABLE `m_wajib_pajak_edit` (
  `id_wajib_pajak` varchar(25) NOT NULL,
  `npwpd` varchar(50) NOT NULL,
  `nama_wajib_pajak` varchar(100) NOT NULL,
  `pemilik` varchar(150) NOT NULL,
  `id_kecamatan` varchar(25) NOT NULL,
  `reason` text DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `user_act` varchar(25) NOT NULL,
  `log_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_wajib_pajak_edit`
--

INSERT INTO `m_wajib_pajak_edit` (`id_wajib_pajak`, `npwpd`, `nama_wajib_pajak`, `pemilik`, `id_kecamatan`, `reason`, `type`, `user_act`, `log_time`) VALUES
('U0001', '1234', 'ayam', 'PT.HAHAY', 'SIDOARJO', 'iya', 'delete', '', '2023-03-31 13:00:52'),
('U0002', '123', '123', 'qwr', 'SIDOARJO', 'r', 'delete', '', '2023-04-13 15:29:55'),
('W0001', '12421', 'sagar', 'yara', 'KCM0003', 'potong rambut', 'delete', '', '2023-05-15 15:13:38'),
('W0002', '0', '', '', 'KCM0001', 'anu', 'delete', '', '2023-05-16 14:07:34'),
('W0003', '123', 'asgard', 'slamet', 'KCM0007', 'yyyyes', 'delete', '', '2023-05-15 14:12:22'),
('W0004', '123', 'pitik', 'BUDI', 'SIDOARJO', 'lupa', 'delete', '', '2023-04-03 12:40:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transaction`
--

CREATE TABLE `t_transaction` (
  `id_resto_trx` bigint(20) UNSIGNED NOT NULL,
  `id_agent` varchar(25) DEFAULT NULL,
  `no_struk` varchar(250) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `dpp` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `service` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_transaction`
--

INSERT INTO `t_transaction` (`id_resto_trx`, `id_agent`, `no_struk`, `date_time`, `subtotal`, `discount`, `dpp`, `tax`, `total`, `createtime`, `service`) VALUES
(672, '16834', 'PNJ/01/2021/00466', '2023-04-17 00:00:00', 45000, 0, 40500, 4500, 45000, '2023-04-11 00:03:07', '27000'),
(676, '16832', 'PNJ/01/2021/00467', '2021-01-21 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:03:07', ''),
(677, '16832', 'PNJ/01/2021/00469', '2021-01-21 00:00:00', 45232500, 0, NULL, 4523250, 49755750, '2023-04-11 00:03:07', ''),
(681, '16832', 'PNJ/01/2021/00470', '2021-01-21 00:00:00', 3636364, 363636, NULL, 327273, 3600001, '2023-04-11 00:03:07', ''),
(684, '16832', 'PNJ/01/2021/00472', '2021-01-21 00:00:00', 1600000, 0, NULL, 0, 1600000, '2023-04-11 00:03:07', ''),
(687, '16832', 'PNJ/01/2021/00473', '2021-01-21 00:00:00', 750000, 0, NULL, 75000, 825000, '2023-04-11 00:03:07', ''),
(690, '16832', 'PNJ/01/2021/00474', '2021-01-21 00:00:00', 600000, 0, NULL, 60000, 660000, '2023-04-11 00:03:07', ''),
(692, '16832', 'PNJ/01/2021/00475', '2021-01-21 00:00:00', 285000, 0, NULL, 28500, 313500, '2023-04-11 00:03:07', ''),
(696, '16832', 'PNJ/01/2021/00476', '2021-01-21 00:00:00', 110000, 0, NULL, 0, 110000, '2023-04-11 00:03:07', ''),
(697, '16832', 'PNJ/01/2021/00477', '2021-01-21 00:00:00', 425000, 0, NULL, 42500, 467500, '2023-04-11 00:03:07', ''),
(701, '16832', 'PNJ/01/2021/00478', '2021-01-21 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(702, '16832', 'PNJ/01/2021/00480', '2021-01-21 00:00:00', 170000, 0, NULL, 0, 170000, '2023-04-11 00:03:07', ''),
(705, '16832', 'PNJ/01/2021/00482', '2021-01-21 00:00:00', 504000, 0, NULL, 0, 504000, '2023-04-11 00:03:07', ''),
(707, '16832', 'PNJ/01/2021/00483', '2021-01-21 00:00:00', 1210000, 0, NULL, 0, 1210000, '2023-04-11 00:03:07', ''),
(711, '16832', 'PNJ/01/2021/00484', '2021-01-15 00:00:00', 23350000, 0, NULL, 2335000, 25685000, '2023-04-11 00:03:07', ''),
(712, '16832', 'PNJ/01/2021/00485', '2021-01-21 00:00:00', 305000, 0, NULL, 0, 305000, '2023-04-11 00:03:07', ''),
(716, '16832', 'PNJ/01/2021/00486', '2021-01-21 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(717, '16832', 'PNJ/01/2021/00487', '2021-01-22 00:00:00', 12300000, 0, NULL, 0, 12300000, '2023-04-11 00:03:07', ''),
(721, '16832', 'PNJ/01/2021/00488', '2021-01-22 00:00:00', 10992200, 1099220, NULL, 0, 9892980, '2023-04-11 00:03:07', ''),
(722, '16832', 'PNJ/01/2021/00489', '2021-01-22 00:00:00', 2300000, 230000, NULL, 0, 2070000, '2023-04-11 00:03:07', ''),
(726, '16832', 'PNJ/01/2021/00492', '2021-01-22 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(727, '16832', 'PNJ/01/2021/00493', '2021-01-22 00:00:00', 960000, 0, NULL, 0, 960000, '2023-04-11 00:03:07', ''),
(731, '16832', 'PNJ/01/2021/00494', '2021-01-22 00:00:00', 30300000, 0, NULL, 3030000, 33330000, '2023-04-11 00:03:07', ''),
(732, '16832', 'PNJ/01/2021/00495', '2021-01-22 00:00:00', 959091, 0, NULL, 95909, 1055000, '2023-04-11 00:03:07', ''),
(736, '16832', 'PNJ/01/2021/00496', '2021-01-22 00:00:00', 20150000, 0, NULL, 0, 20150000, '2023-04-11 00:03:07', ''),
(739, '16832', 'PNJ/01/2021/00497', '2021-01-22 00:00:00', 2400000, 0, NULL, 240000, 2640000, '2023-04-11 00:03:07', ''),
(741, '16832', 'PNJ/01/2021/00498', '2021-01-21 00:00:00', 10900000, 0, NULL, 1090000, 11990000, '2023-04-11 00:03:07', ''),
(745, '16832', 'PNJ/01/2021/00499', '2021-01-22 00:00:00', 515000, 0, NULL, 0, 515000, '2023-04-11 00:03:07', ''),
(746, '16832', 'PNJ/01/2021/00500', '2021-01-22 00:00:00', 12500000, 0, NULL, 0, 12500000, '2023-04-11 00:03:07', ''),
(750, '16832', 'PNJ/01/2021/00501', '2021-01-22 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:03:07', ''),
(751, '16832', 'PNJ/01/2021/00502', '2021-01-22 00:00:00', 250000, 0, NULL, 0, 250000, '2023-04-11 00:03:07', ''),
(755, '16832', 'PNJ/01/2021/00503', '2021-01-22 00:00:00', 760000, 0, NULL, 0, 760000, '2023-04-11 00:03:07', ''),
(756, '16832', 'PNJ/01/2021/00504', '2021-01-22 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:03:07', ''),
(759, '16832', 'PNJ/01/2021/00506', '2021-01-22 00:00:00', 1125000, 0, NULL, 0, 1125000, '2023-04-11 00:03:07', ''),
(761, '16832', 'PNJ/01/2021/00507', '2021-01-22 00:00:00', 5250000, 0, NULL, 0, 5250000, '2023-04-11 00:03:07', ''),
(765, '16832', 'PNJ/01/2021/00508', '2021-01-22 00:00:00', 300000, 0, NULL, 30000, 330000, '2023-04-11 00:03:07', ''),
(766, '16832', 'PNJ/01/2021/00509', '2021-01-22 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:03:07', ''),
(770, '16832', 'PNJ/01/2021/00510', '2021-01-22 00:00:00', 19000000, 3800000, NULL, 1520000, 16720000, '2023-04-11 00:03:07', ''),
(773, '16832', 'PNJ/01/2021/00511', '2021-01-22 00:00:00', 3462500, 692500, NULL, 0, 2770000, '2023-04-11 00:03:07', ''),
(775, '16832', 'PNJ/01/2021/00512', '2021-01-22 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:03:07', ''),
(778, '16832', 'PNJ/01/2021/00513', '2021-01-22 00:00:00', 165000, 0, NULL, 0, 165000, '2023-04-11 00:03:07', ''),
(780, '16832', 'PNJ/01/2021/00514', '2021-01-22 00:00:00', 10000000, 2000000, NULL, 800000, 8800000, '2023-04-11 00:03:07', ''),
(784, '16832', 'PNJ/01/2021/00516', '2021-01-21 00:00:00', 372000, 0, NULL, 37200, 409200, '2023-04-11 00:03:07', ''),
(785, '16832', 'PNJ/01/2021/00517', '2021-01-19 00:00:00', 1227350, 0, NULL, 122735, 1350085, '2023-04-11 00:03:07', ''),
(789, '16832', 'PNJ/01/2021/00519', '2021-01-22 00:00:00', 1310000, 0, NULL, 0, 1310000, '2023-04-11 00:03:07', ''),
(790, '16832', 'PNJ/01/2021/00520', '2021-01-22 00:00:00', 11375000, 2275000, NULL, 0, 9100000, '2023-04-11 00:03:07', ''),
(793, '16832', 'PNJ/01/2021/00522', '2021-01-22 00:00:00', 85000, 0, NULL, 0, 85000, '2023-04-11 00:03:07', ''),
(795, '16832', 'PNJ/01/2021/00523', '2021-01-22 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(798, '16832', 'PNJ/01/2021/00524', '2021-01-22 00:00:00', 170000, 0, NULL, 0, 170000, '2023-04-11 00:03:07', ''),
(800, '16832', 'PNJ/01/2021/00525', '2021-01-22 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(804, '16832', 'PNJ/01/2021/00526', '2021-01-22 00:00:00', 180000, 0, NULL, 0, 180000, '2023-04-11 00:03:07', ''),
(805, '16832', 'PNJ/01/2021/00527', '2021-01-23 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:03:07', ''),
(807, '16832', 'PNJ/01/2021/00528', '2021-01-23 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(810, '16832', 'PNJ/01/2021/00529', '2021-01-23 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:03:07', ''),
(812, '16832', 'PNJ/01/2021/00530', '2021-01-23 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:03:07', ''),
(815, '16832', 'PNJ/01/2021/00531', '2021-01-23 00:00:00', 135000, 0, NULL, 0, 135000, '2023-04-11 00:03:07', ''),
(817, '16832', 'PNJ/01/2021/00532', '2021-01-23 00:00:00', 117500, 0, NULL, 0, 117500, '2023-04-11 00:03:07', ''),
(820, '16832', 'PNJ/01/2021/00533', '2021-01-23 00:00:00', 210000, 0, NULL, 0, 210000, '2023-04-11 00:03:07', ''),
(821, '16832', 'PNJ/01/2021/00534', '2021-01-24 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(825, '16832', 'PNJ/01/2021/00535', '2021-01-24 00:00:00', 75000, 0, NULL, 0, 75000, '2023-04-11 00:03:07', ''),
(826, '16832', 'PNJ/01/2021/00536', '2021-01-24 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(830, '16832', 'PNJ/01/2021/00537', '2021-01-24 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(833, '16832', 'PNJ/01/2021/00538', '2021-01-24 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(835, '16832', 'PNJ/01/2021/00539', '2021-01-24 00:00:00', 200000, 0, NULL, 0, 200000, '2023-04-11 00:03:07', ''),
(839, '16832', 'PNJ/01/2021/00540', '2021-01-24 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(840, '16832', 'PNJ/01/2021/00541', '2021-01-24 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:03:07', ''),
(844, '16832', 'PNJ/01/2021/00542', '2021-01-25 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:03:07', ''),
(845, '16832', 'PNJ/01/2021/00543', '2021-01-25 00:00:00', 2500000, 250000, NULL, 0, 2250000, '2023-04-11 00:03:07', ''),
(849, '16832', 'PNJ/01/2021/00545', '2021-01-22 00:00:00', 108000000, 0, NULL, 0, 108000000, '2023-04-11 00:03:07', ''),
(851, '16832', 'PNJ/01/2021/00546', '2021-01-25 00:00:00', 3862500, 772500, NULL, 0, 3090000, '2023-04-11 00:03:07', ''),
(854, '16832', 'PNJ/01/2021/00547', '2021-01-25 00:00:00', 3500000, 0, NULL, 0, 3500000, '2023-04-11 00:03:07', ''),
(856, '16832', 'PNJ/01/2021/00548', '2021-01-25 00:00:00', 8342970, 0, NULL, 0, 8342970, '2023-04-11 00:03:07', ''),
(860, '16832', 'PNJ/01/2021/00549', '2021-01-25 00:00:00', 9500000, 0, NULL, 0, 9500000, '2023-04-11 00:03:07', ''),
(862, '16832', 'PNJ/01/2021/00550', '2021-01-25 00:00:00', 5000000, 0, NULL, 500000, 5500000, '2023-04-11 00:03:07', ''),
(865, '16832', 'PNJ/01/2021/00551', '2021-01-20 00:00:00', 21400000, 0, NULL, 0, 21400000, '2023-04-11 00:03:07', ''),
(867, '16832', 'PNJ/01/2021/00552', '2021-01-25 00:00:00', 1225000, 0, NULL, 0, 1225000, '2023-04-11 00:03:07', ''),
(870, '16832', 'PNJ/01/2021/00553', '2021-01-25 00:00:00', 6500000, 0, NULL, 650000, 7150000, '2023-04-11 00:03:07', ''),
(872, '16832', 'PNJ/01/2021/00554', '2021-01-25 00:00:00', 1050000, 0, NULL, 0, 1050000, '2023-04-11 00:03:07', ''),
(875, '16832', 'PNJ/01/2021/00555', '2021-01-25 00:00:00', 14000000, 0, NULL, 0, 14000000, '2023-04-11 00:03:07', ''),
(877, '16832', 'PNJ/01/2021/00557', '2021-01-25 00:00:00', 5000000, 0, NULL, 0, 5000000, '2023-04-11 00:03:07', ''),
(880, '16832', 'PNJ/01/2021/00558', '2021-01-25 00:00:00', 6800000, 0, NULL, 680000, 7480000, '2023-04-11 00:03:07', ''),
(884, '16832', 'PNJ/01/2021/00559', '2021-01-25 00:00:00', 2533000, 633250, NULL, 0, 1899750, '2023-04-11 00:03:07', ''),
(885, '16832', 'PNJ/01/2021/00561', '2021-01-25 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(888, '16832', 'PNJ/01/2021/00563', '2021-01-25 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:03:07', ''),
(890, '16832', 'PNJ/01/2021/00564', '2021-01-25 00:00:00', 9000000, 0, NULL, 0, 9000000, '2023-04-11 00:03:07', ''),
(893, '16832', 'PNJ/01/2021/00565', '2021-01-25 00:00:00', 3675000, 0, NULL, 0, 3675000, '2023-04-11 00:03:07', ''),
(895, '16832', 'PNJ/01/2021/00566', '2020-11-20 00:00:00', 11600000, 0, NULL, 0, 11600000, '2023-04-11 00:03:07', ''),
(898, '16832', 'PNJ/01/2021/00567', '2021-01-25 00:00:00', 6392500, 0, NULL, 0, 6392500, '2023-04-11 00:03:07', ''),
(900, '16832', 'PNJ/01/2021/00568', '2021-01-25 00:00:00', 2315000, 0, NULL, 0, 2315000, '2023-04-11 00:03:07', ''),
(903, '16832', 'PNJ/01/2021/00569', '2021-01-25 00:00:00', 1535000, 0, NULL, 0, 1535000, '2023-04-11 00:03:07', ''),
(905, '16832', 'PNJ/01/2021/00570', '2021-01-25 00:00:00', 2500000, 0, NULL, 0, 2500000, '2023-04-11 00:03:07', ''),
(908, '16832', 'PNJ/01/2021/00571', '2021-01-25 00:00:00', 1200000, 0, NULL, 120000, 1320000, '2023-04-11 00:03:07', ''),
(911, '16832', 'PNJ/01/2021/00572', '2021-01-25 00:00:00', 1600000, 0, NULL, 0, 1600000, '2023-04-11 00:03:07', ''),
(912, '16832', 'PNJ/01/2021/00573', '2021-01-25 00:00:00', 8191500, 0, NULL, 819150, 9010650, '2023-04-11 00:03:07', ''),
(916, '16832', 'PNJ/01/2021/00574', '2021-01-25 00:00:00', 500000, 0, NULL, 0, 500000, '2023-04-11 00:03:07', ''),
(918, '16832', 'PNJ/01/2021/00575', '2021-01-25 00:00:00', 210000, 0, NULL, 0, 210000, '2023-04-11 00:03:07', ''),
(921, '16832', 'PNJ/01/2021/00576', '2021-01-25 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:03:07', ''),
(923, '16832', 'PNJ/01/2021/00577', '2021-01-25 00:00:00', 145000, 0, NULL, 0, 145000, '2023-04-11 00:03:07', ''),
(925, '16832', 'PNJ/01/2021/00578', '2021-01-26 00:00:00', 3375000, 0, NULL, 0, 3375000, '2023-04-11 00:03:07', ''),
(928, '16832', 'PNJ/01/2021/00579', '2021-01-26 00:00:00', 2400000, 0, NULL, 240000, 2640000, '2023-04-11 00:03:07', ''),
(930, '16832', 'PNJ/01/2021/00580', '2021-01-26 00:00:00', 18900000, 0, NULL, 1890000, 20790000, '2023-04-11 00:03:07', ''),
(934, '16832', 'PNJ/01/2021/00581', '2021-01-26 00:00:00', 17000000, 0, NULL, 1700000, 18700000, '2023-04-11 00:03:07', ''),
(938, '16832', 'PNJ/01/2021/00582', '2021-01-26 00:00:00', 12000000, 0, NULL, 0, 12000000, '2023-04-11 00:03:07', ''),
(940, '16832', 'PNJ/01/2021/00584', '2021-01-26 00:00:00', 2000000, 0, NULL, 200000, 2200000, '2023-04-11 00:03:07', ''),
(943, '16832', 'PNJ/01/2021/00585', '2021-01-26 00:00:00', 8260000, 0, NULL, 826000, 9086000, '2023-04-11 00:03:07', ''),
(945, '16832', 'PNJ/01/2021/00586', '2021-01-26 00:00:00', 525000, 0, NULL, 0, 525000, '2023-04-11 00:03:07', ''),
(949, '16832', 'PNJ/01/2021/00587', '2021-01-26 00:00:00', 1050000, 0, NULL, 0, 1050000, '2023-04-11 00:03:07', ''),
(950, '16832', 'PNJ/01/2021/00588', '2021-01-26 00:00:00', 16300000, 3260000, NULL, 0, 13040000, '2023-04-11 00:03:07', ''),
(954, '16832', 'PNJ/01/2021/00589', '2021-01-26 00:00:00', 16500000, 0, NULL, 1650000, 18150000, '2023-04-11 00:03:07', ''),
(958, '16832', 'PNJ/01/2021/00590', '2021-01-26 00:00:00', 4000000, 0, NULL, 400000, 4400000, '2023-04-11 00:03:07', ''),
(959, '16832', 'PNJ/01/2021/00591', '2021-01-26 00:00:00', 222500, 0, NULL, 0, 222500, '2023-04-11 00:03:07', ''),
(963, '16832', 'PNJ/01/2021/00592', '2021-01-26 00:00:00', 25000000, 7500000, NULL, 1750000, 19250000, '2023-04-11 00:03:07', ''),
(964, '16832', 'PNJ/01/2021/00593', '2021-01-26 00:00:00', 1175000, 0, NULL, 0, 1175000, '2023-04-11 00:03:07', ''),
(968, '16832', 'PNJ/01/2021/00594', '2021-01-26 00:00:00', 1700000, 0, NULL, 0, 1700000, '2023-04-11 00:03:07', ''),
(970, '16832', 'PNJ/01/2021/00595', '2021-01-26 00:00:00', 6300000, 0, NULL, 0, 6300000, '2023-04-11 00:03:07', ''),
(971, '16832', 'PNJ/01/2021/00596', '2021-01-26 00:00:00', 4752060, 0, NULL, 0, 4752060, '2023-04-11 00:03:07', ''),
(975, '16832', 'PNJ/01/2021/00597', '2021-01-26 00:00:00', 975000, 0, NULL, 0, 975000, '2023-04-11 00:03:07', ''),
(976, '16832', 'PNJ/01/2021/00598', '2021-01-26 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(980, '16832', 'PNJ/01/2021/00599', '2021-01-26 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(981, '16832', 'PNJ/01/2021/00600', '2021-01-26 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:03:07', ''),
(985, '16832', 'PNJ/01/2021/00601', '2021-01-26 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:03:07', ''),
(986, '16832', 'PNJ/01/2021/00602', '2021-01-26 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:03:07', ''),
(990, '16832', 'PNJ/01/2021/00603', '2021-01-26 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(991, '16832', 'PNJ/01/2021/00604', '2021-01-26 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(995, '16832', 'PNJ/01/2021/00605', '2021-01-27 00:00:00', 2500000, 0, NULL, 250000, 2750000, '2023-04-11 00:03:07', ''),
(996, '16832', 'PNJ/01/2021/00606', '2021-01-27 00:00:00', 5000000, 0, NULL, 500000, 5500000, '2023-04-11 00:03:07', ''),
(1000, '16832', 'PNJ/01/2021/00607', '2021-01-27 00:00:00', 2400000, 480000, NULL, 0, 1920000, '2023-04-11 00:03:07', ''),
(1001, '16832', 'PNJ/01/2021/00608', '2021-01-27 00:00:00', 1000000, 0, NULL, 0, 1000000, '2023-04-11 00:03:07', ''),
(1005, '16832', 'PNJ/01/2021/00609', '2021-01-22 00:00:00', 4080000, 408000, NULL, 367200, 4039200, '2023-04-11 00:03:07', ''),
(1006, '16832', 'PNJ/01/2021/00610', '2021-01-27 00:00:00', 2550000, 0, NULL, 0, 2550000, '2023-04-11 00:03:07', ''),
(1009, '16832', 'PNJ/01/2021/00611', '2021-01-27 00:00:00', 17575000, 0, NULL, 1757500, 19332500, '2023-04-11 00:03:07', ''),
(1011, '16832', 'PNJ/01/2021/00612', '2021-01-27 00:00:00', 2000000, 0, NULL, 0, 2000000, '2023-04-11 00:03:07', ''),
(1013, '16832', 'PNJ/01/2021/00613', '2021-01-27 00:00:00', 775000, 0, NULL, 0, 775000, '2023-04-11 00:03:07', ''),
(1016, '16832', 'PNJ/01/2021/00614', '2021-01-27 00:00:00', 41500000, 2075000, NULL, 3942500, 43367500, '2023-04-11 00:03:07', ''),
(1018, '16832', 'PNJ/01/2021/00615', '2021-01-27 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:03:07', ''),
(1021, '16832', 'PNJ/01/2021/00616', '2021-01-27 00:00:00', 990000, 247500, NULL, 74250, 816750, '2023-04-11 00:03:07', ''),
(1024, '16832', 'PNJ/01/2021/00617', '2021-01-27 00:00:00', 190000, 0, NULL, 0, 190000, '2023-04-11 00:03:07', ''),
(1026, '16832', 'PNJ/01/2021/00618', '2021-01-27 00:00:00', 2400000, 0, NULL, 0, 2400000, '2023-04-11 00:03:07', ''),
(1028, '16832', 'PNJ/01/2021/00619', '2021-01-27 00:00:00', 1600000, 0, NULL, 0, 1600000, '2023-04-11 00:03:07', ''),
(1031, '16832', 'PNJ/01/2021/00621', '2021-01-27 00:00:00', 3800000, 0, NULL, 380000, 4180000, '2023-04-11 00:03:07', ''),
(1033, '16832', 'PNJ/01/2021/00622', '2021-01-27 00:00:00', 1210000, 0, NULL, 0, 1210000, '2023-04-11 00:03:07', ''),
(1036, '16832', 'PNJ/01/2021/00623', '2021-01-27 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:03:07', ''),
(1038, '16832', 'PNJ/01/2021/00624', '2021-01-27 00:00:00', 12250000, 0, NULL, 1225000, 13475000, '2023-04-11 00:03:07', ''),
(1041, '16832', 'PNJ/01/2021/00625', '2021-01-27 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:03:07', ''),
(1043, '16832', 'PNJ/01/2021/00626', '2021-01-27 00:00:00', 8860000, 0, NULL, 0, 8860000, '2023-04-11 00:03:07', ''),
(1047, '16832', 'PNJ/01/2021/00627', '2021-01-27 00:00:00', 1950000, 0, NULL, 195000, 2145000, '2023-04-11 00:03:07', ''),
(1051, '16832', 'PNJ/01/2021/00628', '2021-01-27 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:03:07', ''),
(1054, '16832', 'PNJ/01/2021/00630', '2021-01-28 00:00:00', 5343892, 0, NULL, 0, 5343892, '2023-04-11 00:03:07', ''),
(1055, '16832', 'PNJ/01/2021/00631', '2021-01-28 00:00:00', 24600000, 4920000, NULL, 1968000, 21648000, '2023-04-11 00:03:07', ''),
(1059, '16832', 'PNJ/01/2021/00632', '2021-01-28 00:00:00', 6400000, 0, NULL, 0, 6400000, '2023-04-11 00:03:07', ''),
(1061, '16832', 'PNJ/01/2021/00633', '2021-01-28 00:00:00', 760000, 0, NULL, 0, 760000, '2023-04-11 00:03:07', ''),
(1064, '16832', 'PNJ/01/2021/00634', '2021-01-28 00:00:00', 3935000, 1180500, NULL, 275450, 3029950, '2023-04-11 00:03:07', ''),
(1067, '16832', 'PNJ/01/2021/00635', '2021-01-28 00:00:00', 150000, 0, NULL, 0, 150000, '2023-04-11 00:03:07', ''),
(1070, '16832', 'PNJ/01/2021/00636', '2021-01-28 00:00:00', 5600000, 0, NULL, 560000, 6160000, '2023-04-11 00:03:07', ''),
(1073, '16832', 'PNJ/01/2021/00637', '2021-01-28 00:00:00', 5250000, 0, NULL, 0, 5250000, '2023-04-11 00:03:07', ''),
(1076, '16832', 'PNJ/01/2021/00638', '2021-01-28 00:00:00', 4500000, 0, NULL, 0, 4500000, '2023-04-11 00:03:07', ''),
(1081, '16832', 'PNJ/01/2021/00639', '2021-01-28 00:00:00', 145000, 0, NULL, 0, 145000, '2023-04-11 00:03:07', ''),
(1084, '16832', 'PNJ/01/2021/00640', '2021-01-28 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:03:07', ''),
(1087, '16832', 'PNJ/01/2021/00641', '2021-01-28 00:00:00', 9000000, 1350000, NULL, 0, 7650000, '2023-04-11 00:03:07', ''),
(1090, '16832', 'PNJ/01/2021/00642', '2021-01-28 00:00:00', 34250000, 3425000, NULL, 3082500, 33907500, '2023-04-11 00:03:07', ''),
(1095, '16832', 'PNJ/01/2021/00643', '2021-01-28 00:00:00', 312000, 196560, NULL, 11544, 126984, '2023-04-11 00:03:07', ''),
(1098, '16832', 'PNJ/01/2021/00644', '2021-01-28 00:00:00', 21250000, 0, NULL, 2125000, 23375000, '2023-04-11 00:03:07', ''),
(1101, '16832', 'PNJ/01/2021/00645', '2021-01-28 00:00:00', 2500000, 0, NULL, 0, 2500000, '2023-04-11 00:03:07', ''),
(1104, '16832', 'PNJ/01/2021/00646', '2021-01-28 00:00:00', 215000, 0, NULL, 0, 215000, '2023-04-11 00:03:07', ''),
(1107, '16832', 'PNJ/01/2021/00647', '2021-01-28 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:03:07', ''),
(1111, '16832', 'PNJ/01/2021/00648', '2021-01-29 00:00:00', 2625000, 0, NULL, 0, 2625000, '2023-04-11 00:03:07', ''),
(1115, '16832', 'PNJ/01/2021/00649', '2021-01-29 00:00:00', 2625000, 0, NULL, 0, 2625000, '2023-04-11 00:03:07', ''),
(1118, '16832', 'PNJ/01/2021/00650', '2021-01-29 00:00:00', 5250000, 0, NULL, 0, 5250000, '2023-04-11 00:03:07', ''),
(1120, '16832', 'PNJ/01/2021/00651', '2021-01-29 00:00:00', 10625000, 0, NULL, 0, 10625000, '2023-04-11 00:03:07', ''),
(1124, '16832', 'PNJ/01/2021/00652', '2021-01-29 00:00:00', 1050000, 0, NULL, 0, 1050000, '2023-04-11 00:03:07', ''),
(1126, '16832', 'PNJ/01/2021/00653', '2021-01-29 00:00:00', 780000, 0, NULL, 0, 780000, '2023-04-11 00:03:07', ''),
(1130, '16832', 'PNJ/01/2021/00654', '2021-01-29 00:00:00', 1575000, 0, NULL, 0, 1575000, '2023-04-11 00:03:07', ''),
(1135, '16832', 'PNJ/01/2021/00655', '2021-01-29 00:00:00', 3960000, 0, NULL, 396000, 4356000, '2023-04-11 00:03:07', ''),
(1138, '16832', 'PNJ/01/2021/00656', '2021-01-29 00:00:00', 371000, 0, NULL, 37100, 408100, '2023-04-11 00:03:07', ''),
(1143, '16832', 'PNJ/01/2021/00657', '2021-01-29 00:00:00', 3500000, 0, NULL, 0, 3500000, '2023-04-11 00:03:07', ''),
(1148, '16832', 'PNJ/01/2021/00658', '2021-01-29 00:00:00', 1731250, 346250, NULL, 138500, 1523500, '2023-04-11 00:03:07', ''),
(1149, '16832', 'PNJ/01/2021/00659', '2021-01-29 00:00:00', 25000, 0, NULL, 0, 25000, '2023-04-11 00:03:07', ''),
(1154, '16832', 'PNJ/01/2021/00660', '2021-01-29 00:00:00', 2985000, 0, NULL, 0, 2985000, '2023-04-11 00:03:07', ''),
(1157, '16832', 'PNJ/01/2021/00661', '2021-01-29 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:03:07', ''),
(1160, '16832', 'PNJ/01/2021/00662', '2021-01-29 00:00:00', 2700000, 0, NULL, 0, 2700000, '2023-04-11 00:03:07', ''),
(1162, '16832', 'PNJ/01/2021/00663', '2021-01-29 00:00:00', 235000, 0, NULL, 0, 235000, '2023-04-11 00:03:07', ''),
(1166, '16832', 'PNJ/01/2021/00664', '2021-01-29 00:00:00', 4981220, 0, NULL, 0, 4981220, '2023-04-11 00:03:07', ''),
(1170, '16832', 'PNJ/01/2021/00665', '2021-01-29 00:00:00', 2100000, 0, NULL, 0, 2100000, '2023-04-11 00:03:07', ''),
(1173, '16832', 'PNJ/01/2021/00666', '2021-01-29 00:00:00', 35000000, 0, NULL, 0, 35000000, '2023-04-11 00:03:07', ''),
(1178, '16832', 'PNJ/01/2021/00667', '2021-01-29 00:00:00', 90000, 0, NULL, 0, 90000, '2023-04-11 00:03:07', ''),
(1180, '16832', 'PNJ/01/2021/00668', '2021-01-29 00:00:00', 7000000, 0, NULL, 700000, 7700000, '2023-04-11 00:03:07', ''),
(1184, '16832', 'PNJ/01/2021/00669', '2021-01-29 00:00:00', 230000, 0, NULL, 0, 230000, '2023-04-11 00:03:07', ''),
(1189, '16832', 'PNJ/01/2021/00671', '2021-01-29 00:00:00', 725000, 0, NULL, 0, 725000, '2023-04-11 00:03:07', ''),
(1192, '16832', 'PNJ/01/2021/00672', '2021-01-29 00:00:00', 115000, 0, NULL, 0, 115000, '2023-04-11 00:03:07', ''),
(1196, '16832', 'PNJ/01/2021/00673', '2021-01-29 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:03:07', ''),
(1200, '16832', 'PNJ/01/2021/00674', '2021-01-29 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(1202, '16832', 'PNJ/01/2021/00675', '2021-01-29 00:00:00', 300000, 0, NULL, 0, 300000, '2023-04-11 00:03:07', ''),
(1207, '16832', 'PNJ/01/2021/00676', '2021-01-29 00:00:00', 190000, 0, NULL, 0, 190000, '2023-04-11 00:03:07', ''),
(1212, '16832', 'PNJ/01/2021/00677', '2021-01-29 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(1213, '16832', 'PNJ/01/2021/00678', '2021-01-30 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:03:07', ''),
(1215, '16832', 'PNJ/01/2021/00679', '2021-01-30 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(1219, '16832', 'PNJ/01/2021/00680', '2021-01-30 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(1220, '16832', 'PNJ/01/2021/00681', '2021-01-30 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:03:07', ''),
(1225, '16832', 'PNJ/01/2021/00682', '2021-01-30 00:00:00', 90000, 0, NULL, 0, 90000, '2023-04-11 00:03:07', ''),
(1229, '16832', 'PNJ/01/2021/00683', '2021-01-30 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(1232, '16832', 'PNJ/01/2021/00684', '2021-01-30 00:00:00', 165000, 0, NULL, 0, 165000, '2023-04-11 00:03:07', ''),
(1236, '16832', 'PNJ/01/2021/00685', '2021-01-31 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(1239, '16832', 'PNJ/01/2021/00686', '2021-01-31 00:00:00', 10000, 0, NULL, 0, 10000, '2023-04-11 00:03:07', ''),
(1244, '16832', 'PNJ/01/2022/00002', '2022-01-03 00:00:00', 8181816, 0, NULL, 818182, 8999998, '2023-04-11 00:03:07', ''),
(1246, '16832', 'PNJ/01/2022/00003', '2021-12-03 00:00:00', 2000000, 0, NULL, 200000, 2200000, '2023-04-11 00:03:07', ''),
(1251, '16832', 'PNJ/01/2022/00005', '2022-01-03 00:00:00', 5175000, 0, NULL, 517500, 5692500, '2023-04-11 00:03:07', ''),
(1254, '16832', 'PNJ/01/2022/00007', '2022-01-03 00:00:00', 241525000, 0, NULL, 24152500, 265677500, '2023-04-11 00:03:07', ''),
(1257, '16832', 'PNJ/01/2022/00008', '2022-01-03 00:00:00', 13303030, 0, NULL, 0, 13303030, '2023-04-11 00:03:07', ''),
(1261, '16832', 'PNJ/01/2022/00009', '2022-01-03 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:03:07', ''),
(1265, '16832', 'PNJ/01/2022/00010', '2022-01-03 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:03:07', ''),
(1269, '16832', 'PNJ/01/2022/00011', '2022-01-03 00:00:00', 8800000, 0, NULL, 0, 8800000, '2023-04-11 00:03:07', ''),
(1273, '16832', 'PNJ/01/2022/00012', '2022-01-03 00:00:00', 145455, 0, NULL, 14546, 160001, '2023-04-11 00:03:07', ''),
(1276, '16832', 'PNJ/01/2022/00013', '2022-01-03 00:00:00', 1835000, 0, NULL, 0, 1835000, '2023-04-11 00:03:07', ''),
(1280, '16832', 'PNJ/01/2022/00014', '2022-01-03 00:00:00', 5040000, 0, NULL, 504000, 5544000, '2023-04-11 00:03:07', ''),
(1283, '16832', 'PNJ/01/2022/00015', '2022-01-03 00:00:00', 1800000, 0, NULL, 0, 1800000, '2023-04-11 00:03:07', ''),
(1286, '16832', 'PNJ/01/2022/00016', '2022-01-03 00:00:00', 5300000, 0, NULL, 0, 5300000, '2023-04-11 00:03:07', ''),
(1290, '16832', 'PNJ/01/2022/00017', '2022-01-03 00:00:00', 3100000, 0, NULL, 0, 3100000, '2023-04-11 00:03:07', ''),
(1294, '16832', 'PNJ/01/2022/00018', '2022-01-03 00:00:00', 1100800, 0, NULL, 110080, 1210880, '2023-04-11 00:03:07', ''),
(1298, '16832', 'PNJ/01/2022/00019', '2022-01-04 00:00:00', 2900000, 0, NULL, 0, 2900000, '2023-04-11 00:03:07', ''),
(1303, '16832', 'PNJ/01/2022/00020', '2021-12-22 00:00:00', 350000, 0, NULL, 0, 350000, '2023-04-11 00:03:07', ''),
(1307, '16832', 'PNJ/01/2022/00021', '2022-01-04 00:00:00', 1800000, 0, NULL, 0, 1800000, '2023-04-11 00:03:07', ''),
(1309, '16832', 'PNJ/01/2022/00022', '2022-01-04 00:00:00', 2300000, 0, NULL, 230000, 2530000, '2023-04-11 00:03:07', ''),
(1313, '16832', 'PNJ/01/2022/00023', '2022-01-04 00:00:00', 75000000, 0, NULL, 7500000, 82500000, '2023-04-11 00:03:07', ''),
(1316, '16832', 'PNJ/01/2022/00024', '2022-01-04 00:00:00', 200000, 0, NULL, 0, 200000, '2023-04-11 00:03:07', ''),
(1320, '16832', 'PNJ/01/2022/00026', '2022-01-04 00:00:00', 330000, 0, NULL, 33000, 363000, '2023-04-11 00:03:07', ''),
(1323, '16832', 'PNJ/01/2022/00027', '2022-01-04 00:00:00', 9022860, 0, NULL, 902286, 9925146, '2023-04-11 00:03:07', ''),
(1328, '16832', 'PNJ/01/2022/00028', '2022-01-04 00:00:00', 550000, 0, NULL, 0, 550000, '2023-04-11 00:03:07', ''),
(1330, '16832', 'PNJ/01/2022/00029', '2022-01-04 00:00:00', 2975000, 0, NULL, 297500, 3272500, '2023-04-11 00:03:07', ''),
(1334, '16832', 'PNJ/01/2022/00030', '2022-01-04 00:00:00', 1300000, 390000, NULL, 91000, 1001000, '2023-04-11 00:03:07', ''),
(1337, '16832', 'PNJ/01/2022/00031', '2022-01-04 00:00:00', 6027312.5, 0, NULL, 0, 6027313, '2023-04-11 00:03:07', ''),
(1341, '16832', 'PNJ/01/2022/00032', '2022-01-05 00:00:00', 5625000, 0, NULL, 0, 5625000, '2023-04-11 00:03:07', ''),
(1345, '16832', 'PNJ/01/2022/00033', '2022-01-05 00:00:00', 90000, 0, NULL, 0, 90000, '2023-04-11 00:03:07', ''),
(1349, '16832', 'PNJ/01/2022/00034', '2022-01-05 00:00:00', 27090000, 8127000, NULL, 1896300, 20859300, '2023-04-11 00:03:07', ''),
(1352, '16832', 'PNJ/01/2022/00035', '2022-01-05 00:00:00', 530000, 0, NULL, 0, 530000, '2023-04-11 00:03:07', ''),
(1356, '16832', 'PNJ/01/2022/00036', '2022-01-05 00:00:00', 6800000, 1360000, NULL, 0, 5440000, '2023-04-11 00:03:07', ''),
(1359, '16832', 'PNJ/01/2022/00037', '2022-01-05 00:00:00', 825000, 0, NULL, 0, 825000, '2023-04-11 00:03:07', ''),
(1364, '16832', 'PNJ/01/2022/00038', '2022-01-05 00:00:00', 500000, 0, NULL, 0, 500000, '2023-04-11 00:03:07', ''),
(1369, '16832', 'PNJ/01/2022/00039', '2022-01-05 00:00:00', 7000000, 1050000, NULL, 595000, 6545000, '2023-04-11 00:03:07', ''),
(1372, '16832', 'PNJ/01/2022/00040', '2022-01-05 00:00:00', 1035000, 0, NULL, 103500, 1138500, '2023-04-11 00:03:07', ''),
(1375, '16832', 'PNJ/01/2022/00041', '2022-01-05 00:00:00', 850000, 0, NULL, 0, 850000, '2023-04-11 00:03:07', ''),
(1381, '16832', 'PNJ/01/2022/00042', '2022-01-05 00:00:00', 2175000, 0, NULL, 0, 2175000, '2023-04-11 00:03:07', ''),
(1385, '16832', 'PNJ/01/2022/00043', '2022-01-05 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(1388, '16832', 'PNJ/01/2022/00044', '2022-01-06 00:00:00', 20265000, 0, NULL, 2026500, 22291500, '2023-04-11 00:03:07', ''),
(1390, '16832', 'PNJ/01/2022/00045', '2022-01-06 00:00:00', 2700000, 0, NULL, 0, 2700000, '2023-04-11 00:03:07', ''),
(1396, '16832', 'PNJ/01/2022/00046', '2022-01-06 00:00:00', 485000, 0, NULL, 0, 485000, '2023-04-11 00:03:07', ''),
(1400, '16832', 'PNJ/01/2022/00047', '2022-01-06 00:00:00', 1750000, 0, NULL, 175000, 1925000, '2023-04-11 00:03:07', ''),
(1402, '16832', 'PNJ/01/2022/00048', '2022-01-06 00:00:00', 2025000, 0, NULL, 202500, 2227500, '2023-04-11 00:03:07', ''),
(1406, '16832', 'PNJ/01/2022/00049', '2022-01-06 00:00:00', 200000, 0, NULL, 20000, 220000, '2023-04-11 00:03:07', ''),
(1408, '16832', 'PNJ/01/2022/00050', '2022-01-06 00:00:00', 550000, 0, NULL, 0, 550000, '2023-04-11 00:03:07', ''),
(1412, '16832', 'PNJ/01/2022/00051', '2022-01-06 00:00:00', 4700000, 0, NULL, 0, 4700000, '2023-04-11 00:03:07', ''),
(1418, '16832', 'PNJ/01/2022/00052', '2022-01-06 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:03:07', ''),
(1424, '16832', 'PNJ/01/2022/00053', '2022-01-06 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:03:07', ''),
(1427, '16832', 'PNJ/01/2022/00054', '2022-01-06 00:00:00', 2300000, 0, NULL, 0, 2300000, '2023-04-11 00:03:07', ''),
(1431, '16832', 'PNJ/01/2022/00055', '2022-01-06 00:00:00', 550000, 0, NULL, 0, 550000, '2023-04-11 00:03:07', ''),
(1434, '16832', 'PNJ/01/2022/00056', '2022-01-06 00:00:00', 30000, 0, NULL, 0, 30000, '2023-04-11 00:03:07', ''),
(1438, '16832', 'PNJ/01/2022/00057', '2022-01-06 00:00:00', 2250000, 0, NULL, 0, 2250000, '2023-04-11 00:03:07', ''),
(1444, '16832', 'PNJ/01/2022/00058', '2022-01-06 00:00:00', 24219000, 7265700, NULL, 1695330, 18648630, '2023-04-11 00:03:07', ''),
(1447, '16832', 'PNJ/01/2022/00059', '2022-01-06 00:00:00', 2995000, 0, NULL, 299500, 3294500, '2023-04-11 00:03:07', ''),
(1451, '16832', 'PNJ/01/2022/00060', '2022-01-06 00:00:00', 4600000, 0, NULL, 0, 4600000, '2023-04-11 00:03:07', ''),
(1457, '16832', 'PNJ/01/2022/00061', '2022-01-06 00:00:00', 73500000, 0, NULL, 7350000, 80850000, '2023-04-11 00:03:07', ''),
(1461, '16832', 'PNJ/01/2022/00062', '2022-01-06 00:00:00', 70000, 0, NULL, 0, 70000, '2023-04-11 00:03:07', ''),
(1464, '16832', 'PNJ/01/2022/00063', '2022-01-07 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:03:07', ''),
(1469, '16832', 'PNJ/01/2022/00064', '2022-01-07 00:00:00', 270000, 0, NULL, 27000, 297000, '2023-04-11 00:03:07', ''),
(1472, '16832', 'PNJ/01/2022/00065', '2022-01-07 00:00:00', 1700000, 0, NULL, 0, 1700000, '2023-04-11 00:03:07', ''),
(1475, '16832', 'PNJ/01/2022/00066', '2022-01-07 00:00:00', 475000, 95000, NULL, 0, 380000, '2023-04-11 00:03:07', ''),
(1480, '16832', 'PNJ/01/2022/00067', '2022-01-07 00:00:00', 1015000, 0, NULL, 0, 1015000, '2023-04-11 00:03:07', ''),
(1482, '16832', 'PNJ/01/2022/00068', '2022-01-07 00:00:00', 2300000, 0, NULL, 0, 2300000, '2023-04-11 00:03:07', ''),
(1487, '16832', 'PNJ/01/2022/00069', '2022-01-07 00:00:00', 3900000, 0, NULL, 0, 3900000, '2023-04-11 00:03:07', ''),
(1490, '16832', 'PNJ/01/2022/00070', '2022-01-07 00:00:00', 1300000, 0, NULL, 0, 1300000, '2023-04-11 00:03:07', ''),
(1495, '16832', 'PNJ/01/2022/00071', '2022-01-07 00:00:00', 970000, 0, NULL, 0, 970000, '2023-04-11 00:03:07', ''),
(1499, '16832', 'PNJ/01/2022/00072', '2022-01-07 00:00:00', 3181820, 0, NULL, 318182, 3500002, '2023-04-11 00:03:07', ''),
(1501, '16832', 'PNJ/01/2022/00073', '2022-01-07 00:00:00', 4500000, 2250000, NULL, 0, 2250000, '2023-04-11 00:03:07', ''),
(1502, '16832', 'PNJ/01/2022/00074', '2022-01-07 00:00:00', 6500000, 780000, NULL, 0, 5720000, '2023-04-11 00:03:07', ''),
(1509, '16832', 'PNJ/01/2022/00075', '2022-01-07 00:00:00', 1600000, 0, NULL, 160000, 1760000, '2023-04-11 00:03:07', ''),
(1511, '16832', 'PNJ/01/2022/00076', '2022-01-07 00:00:00', 6450000, 0, NULL, 0, 6450000, '2023-04-11 00:03:07', ''),
(1517, '16832', 'PNJ/01/2022/00077', '2021-08-20 00:00:00', 2175000, 0, NULL, 0, 2175000, '2023-04-11 00:03:07', ''),
(1524, '16832', 'PNJ/01/2022/00079', '2022-01-08 00:00:00', 672000, 0, NULL, 67200, 739200, '2023-04-11 00:03:07', ''),
(1525, '16832', 'PNJ/01/2022/00080', '2022-01-08 00:00:00', 3000000, 0, NULL, 0, 3000000, '2023-04-11 00:03:07', ''),
(1531, '16832', 'PNJ/01/2022/00081', '2022-01-09 00:00:00', 75000, 0, NULL, 0, 75000, '2023-04-11 00:03:07', ''),
(1533, '16832', 'PNJ/01/2022/00084', '2022-01-10 00:00:00', 8000000, 0, NULL, 0, 8000000, '2023-04-11 00:03:07', ''),
(1535, '16832', 'PNJ/01/2022/00085', '2022-01-07 00:00:00', 8287500, 0, NULL, 0, 8287500, '2023-04-11 00:03:07', ''),
(1541, '16832', 'PNJ/01/2022/00086', '2022-01-10 00:00:00', 66450000, 0, NULL, 0, 66450000, '2023-04-11 00:03:07', ''),
(1545, '16832', 'PNJ/01/2022/00087', '2022-01-10 00:00:00', 1740000, 0, NULL, 0, 1740000, '2023-04-11 00:03:07', ''),
(1550, '16832', 'PNJ/01/2022/00089', '2022-01-10 00:00:00', 2575000, 772500, NULL, 180250, 1982750, '2023-04-11 00:03:07', ''),
(1554, '16832', 'PNJ/01/2022/00090', '2022-01-10 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:03:07', ''),
(1555, '16832', 'PNJ/01/2022/00091', '2022-01-10 00:00:00', 4800000, 0, NULL, 0, 4800000, '2023-04-11 00:03:07', ''),
(1560, '16832', 'PNJ/01/2022/00092', '2022-01-10 00:00:00', 7040000, 0, NULL, 704000, 7744000, '2023-04-11 00:03:07', ''),
(1562, '16832', 'PNJ/01/2022/00093', '2022-01-10 00:00:00', 275000, 0, NULL, 0, 275000, '2023-04-11 00:03:07', ''),
(1565, '16832', 'PNJ/01/2022/00094', '2022-01-10 00:00:00', 2000000, 0, NULL, 0, 2000000, '2023-04-11 00:03:07', ''),
(1570, '16832', 'PNJ/01/2022/00095', '2022-01-10 00:00:00', 1200000, 0, NULL, 120000, 1320000, '2023-04-11 00:03:07', ''),
(1574, '16832', 'PNJ/01/2022/00096', '2021-12-13 00:00:00', 1350000, 135000, NULL, 121500, 1336500, '2023-04-11 00:03:07', ''),
(1578, '16832', 'PNJ/01/2022/00097', '2022-01-10 00:00:00', 385000, 0, NULL, 38500, 423500, '2023-04-11 00:03:07', ''),
(1582, '16832', 'PNJ/01/2022/00098', '2022-01-10 00:00:00', 581250, 87188, NULL, 0, 494063, '2023-04-11 00:03:07', ''),
(1587, '16832', 'PNJ/01/2022/00099', '2022-01-10 00:00:00', 1800000, 270000, NULL, 0, 1530000, '2023-04-11 00:03:07', ''),
(1591, '16832', 'PNJ/01/2022/00100', '2022-01-10 00:00:00', 420000, 0, NULL, 0, 420000, '2023-04-11 00:03:07', ''),
(1596, '16832', 'PNJ/01/2022/00101', '2022-01-11 00:00:00', 399000, 99750, NULL, 29925, 329175, '2023-04-11 00:03:07', ''),
(1600, '16832', 'PNJ/01/2022/00102', '2022-01-11 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:03:07', ''),
(1606, '16832', 'PNJ/01/2022/00103', '2022-01-11 00:00:00', 770000, 0, NULL, 0, 770000, '2023-04-11 00:03:07', ''),
(1609, '16832', 'PNJ/01/2022/00104', '2022-01-11 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:03:07', ''),
(1615, '16832', 'PNJ/01/2022/00105', '2022-01-11 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:03:07', ''),
(1617, '16832', 'PNJ/01/2022/00106', '2022-01-11 00:00:00', 1760000, 0, NULL, 0, 1760000, '2023-04-11 00:03:07', ''),
(1623, '16832', 'PNJ/01/2022/00107', '2022-01-11 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:03:07', ''),
(1628, '16832', 'PNJ/01/2022/00108', '2022-01-11 00:00:00', 105000000, 0, NULL, 0, 105000000, '2023-04-11 00:03:07', ''),
(1630, '16832', 'PNJ/01/2022/00109', '2022-01-10 00:00:00', 4310650, 0, NULL, 431065, 4741715, '2023-04-11 00:03:07', ''),
(1635, '16832', 'PNJ/01/2022/00110', '2022-01-12 00:00:00', 14500000, 0, NULL, 1450000, 15950000, '2023-04-11 00:03:07', ''),
(1640, '16832', 'PNJ/01/2022/00111', '2022-01-12 00:00:00', 22000000, 1540000, NULL, 2046000, 22506000, '2023-04-11 00:03:07', ''),
(1644, '16832', 'PNJ/01/2022/00112', '2022-01-12 00:00:00', 7150000, 0, NULL, 0, 7150000, '2023-04-11 00:03:07', ''),
(1648, '16832', 'PNJ/01/2022/00113', '2022-01-12 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:03:07', ''),
(1652, '16832', 'PNJ/01/2022/00114', '2022-01-12 00:00:00', 1200000, 120000, NULL, 0, 1080000, '2023-04-11 00:03:07', ''),
(1657, '16832', 'PNJ/01/2022/00115', '2022-01-12 00:00:00', 3915000, 0, NULL, 0, 3915000, '2023-04-11 00:03:07', ''),
(1660, '16832', 'PNJ/01/2022/00116', '2022-01-12 00:00:00', 2500000, 0, NULL, 250000, 2750000, '2023-04-11 00:03:07', ''),
(1665, '16832', 'PNJ/01/2022/00117', '2022-01-12 00:00:00', 4050000, 0, NULL, 405000, 4455000, '2023-04-11 00:03:07', ''),
(1671, '16832', 'PNJ/01/2022/00118', '2022-01-12 00:00:00', 2575000, 772500, NULL, 180250, 1982750, '2023-04-11 00:03:07', ''),
(1674, '16832', 'PNJ/01/2022/00119', '2022-01-12 00:00:00', 1125000, 247500, NULL, 0, 877500, '2023-04-11 00:03:07', ''),
(1679, '16832', 'PNJ/01/2022/00120', '2022-01-12 00:00:00', 1100000, 0, NULL, 0, 1100000, '2023-04-11 00:03:07', ''),
(1685, '16832', 'PNJ/01/2022/00121', '2022-01-12 00:00:00', 6750000, 0, NULL, 675000, 7425000, '2023-04-11 00:03:07', ''),
(1688, '16832', 'PNJ/01/2022/00122', '2022-01-12 00:00:00', 1300000, 0, NULL, 0, 1300000, '2023-04-11 00:03:07', ''),
(1693, '16832', 'PNJ/01/2022/00123', '2022-01-12 00:00:00', 8700000, 0, NULL, 0, 8700000, '2023-04-11 00:03:07', ''),
(1695, '16832', 'PNJ/01/2022/00124', '2022-01-12 00:00:00', 3900000, 0, NULL, 0, 3900000, '2023-04-11 00:03:07', ''),
(1700, '16832', 'PNJ/01/2022/00125', '2022-01-12 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:03:07', ''),
(1704, '16832', 'PNJ/01/2022/00126', '2022-01-12 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(1708, '16832', 'PNJ/01/2022/00127', '2022-01-12 00:00:00', 25000, 0, NULL, 0, 25000, '2023-04-11 00:03:07', ''),
(1711, '16832', 'PNJ/01/2022/00128', '2022-01-13 00:00:00', 500000, 0, NULL, 50000, 550000, '2023-04-11 00:03:07', ''),
(1717, '16832', 'PNJ/01/2022/00129', '2022-01-13 00:00:00', 2250000, 337500, NULL, 191250, 2103750, '2023-04-11 00:03:07', ''),
(1720, '16832', 'PNJ/01/2022/00130', '2022-01-13 00:00:00', 6150000, 0, NULL, 615000, 6765000, '2023-04-11 00:03:07', ''),
(1724, '16832', 'PNJ/01/2022/00135', '2022-01-13 00:00:00', 16566000, 0, NULL, 1656600, 18222600, '2023-04-11 00:03:07', ''),
(1728, '16832', 'PNJ/01/2022/00136', '2022-01-13 00:00:00', 937500, 187500, NULL, 0, 750000, '2023-04-11 00:03:07', ''),
(1735, '16832', 'PNJ/01/2022/00137', '2022-01-13 00:00:00', 720000, 0, NULL, 0, 720000, '2023-04-11 00:03:07', ''),
(1736, '16832', 'PNJ/01/2022/00138', '2022-01-13 00:00:00', 4696500, 0, NULL, 469650, 5166150, '2023-04-11 00:03:07', ''),
(1741, '16832', 'PNJ/01/2022/00139', '2022-01-13 00:00:00', 550000, 0, NULL, 0, 550000, '2023-04-11 00:03:07', ''),
(1745, '16832', 'PNJ/01/2022/00140', '2021-12-03 00:00:00', 4090000, 0, NULL, 0, 4090000, '2023-04-11 00:03:07', ''),
(1752, '16832', 'PNJ/01/2022/00141', '2021-12-03 00:00:00', 4578000, 0, NULL, 0, 4578000, '2023-04-11 00:03:07', ''),
(1756, '16832', 'PNJ/01/2022/00142', '2022-01-13 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(1761, '16832', 'PNJ/01/2022/00143', '2022-01-13 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(1763, '16832', 'PNJ/01/2022/00144', '2022-01-14 00:00:00', 2045000, 0, NULL, 0, 2045000, '2023-04-11 00:03:07', ''),
(1769, '16832', 'PNJ/01/2022/00145', '2022-01-14 00:00:00', 2045000, 0, NULL, 0, 2045000, '2023-04-11 00:03:07', ''),
(1772, '16832', 'PNJ/01/2022/00146', '2022-01-14 00:00:00', 73211760, 0, NULL, 7321176, 80532936, '2023-04-11 00:03:07', ''),
(1778, '16832', 'PNJ/01/2022/00147', '2022-01-14 00:00:00', 490000, 0, NULL, 49000, 539000, '2023-04-11 00:03:07', ''),
(1782, '16832', 'PNJ/01/2022/00149', '2022-01-03 00:00:00', 2500000, 750000, NULL, 175000, 1925000, '2023-04-11 00:03:07', ''),
(1786, '16832', 'PNJ/01/2022/00150', '2022-01-14 00:00:00', 320000, 0, NULL, 0, 320000, '2023-04-11 00:03:07', ''),
(1792, '16832', 'PNJ/01/2022/00151', '2022-01-14 00:00:00', 345000, 0, NULL, 34500, 379500, '2023-04-11 00:03:07', ''),
(1796, '16832', 'PNJ/01/2022/00152', '2022-01-14 00:00:00', 31200000, 0, NULL, 3120000, 34320000, '2023-04-11 00:03:07', ''),
(1803, '16832', 'PNJ/01/2022/00153', '2022-01-14 00:00:00', 91000, 0, NULL, 0, 91000, '2023-04-11 00:03:07', ''),
(1805, '16832', 'PNJ/01/2022/00154', '2022-01-14 00:00:00', 8370000, 0, NULL, 837000, 9207000, '2023-04-11 00:03:07', ''),
(1812, '16832', 'PNJ/01/2022/00155', '2022-01-14 00:00:00', 4586918, 0, NULL, 458692, 5045610, '2023-04-11 00:03:07', ''),
(1817, '16832', 'PNJ/01/2022/00156', '2022-01-14 00:00:00', 1250000, 0, NULL, 0, 1250000, '2023-04-11 00:03:07', ''),
(1821, '16832', 'PNJ/01/2022/00157', '2022-01-14 00:00:00', 7500000, 0, NULL, 0, 7500000, '2023-04-11 00:03:07', ''),
(1827, '16832', 'PNJ/01/2022/00161', '2022-01-14 00:00:00', 3600000, 0, NULL, 0, 3600000, '2023-04-11 00:03:07', ''),
(1832, '16832', 'PNJ/01/2022/00162', '2021-11-10 00:00:00', 14000000, 0, NULL, 0, 14000000, '2023-04-11 00:03:07', ''),
(1836, '16832', 'PNJ/01/2022/00163', '2022-01-14 00:00:00', 1300000, 0, NULL, 0, 1300000, '2023-04-11 00:03:07', ''),
(1842, '16832', 'PNJ/01/2022/00164', '2022-01-14 00:00:00', 2000000, 400000, NULL, 160000, 1760000, '2023-04-11 00:03:07', ''),
(1848, '16832', 'PNJ/01/2022/00165', '2022-01-14 00:00:00', 150000, 0, NULL, 0, 150000, '2023-04-11 00:03:07', ''),
(1854, '16832', 'PNJ/01/2022/00166', '2022-01-14 00:00:00', 25000, 0, NULL, 0, 25000, '2023-04-11 00:03:07', ''),
(1858, '16832', 'PNJ/01/2022/00168', '2022-01-15 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(1859, '16832', 'PNJ/01/2022/00170', '2022-01-10 00:00:00', 500000, 0, NULL, 50000, 550000, '2023-04-11 00:03:07', ''),
(1867, '16832', 'PNJ/01/2022/00171', '2022-01-17 00:00:00', 780000, 0, NULL, 0, 780000, '2023-04-11 00:03:07', ''),
(1872, '16832', 'PNJ/01/2022/00172', '2022-01-17 00:00:00', 595290, 0, NULL, 59529, 654819, '2023-04-11 00:03:07', ''),
(1876, '16832', 'PNJ/01/2022/00173', '2022-01-17 00:00:00', 800000, 0, NULL, 0, 800000, '2023-04-11 00:03:07', ''),
(1882, '16832', 'PNJ/01/2022/00175', '2022-01-17 00:00:00', 7500000, 1500000, NULL, 0, 6000000, '2023-04-11 00:03:07', ''),
(1887, '16832', 'PNJ/01/2022/00176', '2022-01-17 00:00:00', 116165000, 0, NULL, 11616500, 127781500, '2023-04-11 00:03:07', ''),
(1892, '16832', 'PNJ/01/2022/00177', '2022-01-17 00:00:00', 1250000, 0, NULL, 0, 1250000, '2023-04-11 00:03:07', ''),
(1897, '16832', 'PNJ/01/2022/00178', '2022-01-17 00:00:00', 8621300, 0, NULL, 862130, 9483430, '2023-04-11 00:03:07', ''),
(1902, '16832', 'PNJ/01/2022/00179', '2022-01-17 00:00:00', 1600000, 0, NULL, 0, 1600000, '2023-04-11 00:03:07', ''),
(1906, '16832', 'PNJ/01/2022/00181', '2022-01-17 00:00:00', 812500, 162500, NULL, 0, 650000, '2023-04-11 00:03:07', ''),
(1912, '16832', 'PNJ/01/2022/00182', '2022-01-17 00:00:00', 1300000, 0, NULL, 130000, 1430000, '2023-04-11 00:03:07', ''),
(1916, '16832', 'PNJ/01/2022/00183', '2022-01-17 00:00:00', 1900000, 0, NULL, 0, 1900000, '2023-04-11 00:03:07', ''),
(1922, '16832', 'PNJ/01/2022/00184', '2022-01-17 00:00:00', 648000, 0, NULL, 64800, 712800, '2023-04-11 00:03:07', ''),
(1927, '16832', 'PNJ/01/2022/00185', '2022-01-17 00:00:00', 1350000, 0, NULL, 0, 1350000, '2023-04-11 00:03:07', ''),
(1929, '16832', 'PNJ/01/2022/00187', '2022-01-17 00:00:00', 3800000, 0, NULL, 380000, 4180000, '2023-04-11 00:03:07', ''),
(1933, '16832', 'PNJ/01/2022/00188', '2022-01-17 00:00:00', 1750000, 0, NULL, 175000, 1925000, '2023-04-11 00:03:07', ''),
(1938, '16832', 'PNJ/01/2022/00189', '2022-01-17 00:00:00', 770000, 0, NULL, 77000, 847000, '2023-04-11 00:03:07', ''),
(1942, '16832', 'PNJ/01/2022/00190', '2022-01-17 00:00:00', 11630000, 3489000, NULL, 814100, 8955100, '2023-04-11 00:03:07', ''),
(1948, '16832', 'PNJ/01/2022/00191', '2022-01-17 00:00:00', 200000, 0, NULL, 0, 200000, '2023-04-11 00:03:07', ''),
(1951, '16832', 'PNJ/01/2022/00192', '2022-01-18 00:00:00', 6300000, 0, NULL, 630000, 6930000, '2023-04-11 00:03:07', ''),
(1957, '16832', 'PNJ/01/2022/00193', '2022-01-18 00:00:00', 1515000, 0, NULL, 151500, 1666500, '2023-04-11 00:03:07', ''),
(1964, '16832', 'PNJ/01/2022/00194', '2022-01-18 00:00:00', 3915000, 0, NULL, 0, 3915000, '2023-04-11 00:03:07', ''),
(1967, '16832', 'PNJ/01/2022/00195', '2022-01-13 00:00:00', 9200000, 0, NULL, 0, 9200000, '2023-04-11 00:03:07', ''),
(1968, '16832', 'PNJ/01/2022/00196', '2022-01-18 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:03:07', ''),
(1974, '16832', 'PNJ/01/2022/00197', '2022-01-18 00:00:00', 48625000, 0, NULL, 4862500, 53487500, '2023-04-11 00:03:07', ''),
(1978, '16832', 'PNJ/01/2022/00200', '2022-01-18 00:00:00', 3475750, 0, NULL, 347575, 3823325, '2023-04-11 00:03:07', ''),
(1984, '16832', 'PNJ/01/2022/00201', '2022-01-18 00:00:00', 1400000, 0, NULL, 0, 1400000, '2023-04-11 00:03:07', ''),
(1988, '16832', 'PNJ/01/2022/00202', '2022-01-18 00:00:00', 2575000, 772500, NULL, 180250, 1982750, '2023-04-11 00:03:07', ''),
(1993, '16832', 'PNJ/01/2022/00203', '2022-01-18 00:00:00', 1187500, 237500, NULL, 95000, 1045000, '2023-04-11 00:03:07', ''),
(1995, '16832', 'PNJ/01/2022/00204', '2022-01-18 00:00:00', 3687500, 737500, NULL, 0, 2950000, '2023-04-11 00:03:07', ''),
(2002, '16832', 'PNJ/01/2022/00205', '2022-01-18 00:00:00', 290000, 0, NULL, 0, 290000, '2023-04-11 00:03:07', ''),
(2006, '16832', 'PNJ/01/2022/00206', '2022-01-18 00:00:00', 2600000, 0, NULL, 0, 2600000, '2023-04-11 00:03:07', ''),
(2013, '16832', 'PNJ/01/2022/00207', '2022-01-19 00:00:00', 300000, 0, NULL, 0, 300000, '2023-04-11 00:03:07', ''),
(2021, '16832', 'PNJ/01/2022/00208', '2022-01-19 00:00:00', 1950000, 0, NULL, 0, 1950000, '2023-04-11 00:03:07', ''),
(2025, '16832', 'PNJ/01/2022/00210', '2022-01-19 00:00:00', 1100000, 0, NULL, 0, 1100000, '2023-04-11 00:03:07', ''),
(2030, '16832', 'PNJ/01/2022/00211', '2022-01-19 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:03:07', ''),
(2034, '16832', 'PNJ/01/2022/00212', '2022-01-19 00:00:00', 2000000, 0, NULL, 0, 2000000, '2023-04-11 00:03:07', ''),
(2039, '16832', 'PNJ/01/2022/00213', '2022-01-19 00:00:00', 2800000, 560000, NULL, 224000, 2464000, '2023-04-11 00:03:07', ''),
(2045, '16832', 'PNJ/01/2022/00214', '2022-01-20 00:00:00', 600000, 0, NULL, 60000, 660000, '2023-04-11 00:03:07', ''),
(2058, '16832', 'PNJ/01/2022/00215', '2022-01-20 00:00:00', 915000, 0, NULL, 91500, 1006500, '2023-04-11 00:03:07', ''),
(2062, '16832', 'PNJ/01/2022/00216', '2022-01-20 00:00:00', 525000, 0, NULL, 0, 525000, '2023-04-11 00:03:07', ''),
(2068, '16832', 'PNJ/01/2022/00217', '2022-01-20 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:03:07', ''),
(2072, '16832', 'PNJ/01/2022/00218', '2022-01-20 00:00:00', 19750000, 3950000, NULL, 0, 15800000, '2023-04-11 00:03:07', ''),
(2076, '16832', 'PNJ/01/2022/00219', '2022-01-20 00:00:00', 280000, 0, NULL, 28000, 308000, '2023-04-11 00:03:07', ''),
(2082, '16832', 'PNJ/01/2022/00220', '2022-01-20 00:00:00', 1750000, 0, NULL, 175000, 1925000, '2023-04-11 00:03:07', ''),
(2083, '16832', 'PNJ/01/2022/00221', '2022-01-20 00:00:00', 9375000, 1875000, NULL, 0, 7500000, '2023-04-11 00:03:07', ''),
(2084, '16832', 'PNJ/01/2022/00223', '2022-01-20 00:00:00', 275000, 68750, NULL, 20625, 226875, '2023-04-11 00:03:07', ''),
(2092, '16832', 'PNJ/01/2022/00224', '2022-01-20 00:00:00', 2074500, 0, NULL, 207450, 2281950, '2023-04-11 00:03:07', ''),
(2095, '16832', 'PNJ/01/2022/00225', '2022-01-20 00:00:00', 2240000, 0, NULL, 224000, 2464000, '2023-04-11 00:03:07', ''),
(2103, '16832', 'PNJ/01/2022/00226', '2022-01-20 00:00:00', 22650000, 0, NULL, 2265000, 24915000, '2023-04-11 00:03:07', ''),
(2106, '16832', 'PNJ/01/2022/00227', '2022-01-20 00:00:00', 1000000, 0, NULL, 0, 1000000, '2023-04-11 00:03:07', ''),
(2113, '16832', 'PNJ/01/2022/00228', '2022-01-20 00:00:00', 935000, 0, NULL, 0, 935000, '2023-04-11 00:03:07', ''),
(2118, '16832', 'PNJ/01/2022/00229', '2022-01-20 00:00:00', 910000, 0, NULL, 91000, 1001000, '2023-04-11 00:03:07', ''),
(2124, '16832', 'PNJ/01/2022/00230', '2022-01-20 00:00:00', 10200000, 0, NULL, 0, 10200000, '2023-04-11 00:03:07', ''),
(2128, '16832', 'PNJ/01/2022/00231', '2022-01-20 00:00:00', 1775000, 0, NULL, 0, 1775000, '2023-04-11 00:03:07', ''),
(2135, '16832', 'PNJ/01/2022/00232', '2022-01-20 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:03:07', ''),
(2137, '16832', 'PNJ/01/2022/00233', '2022-01-21 00:00:00', 7000000, 0, NULL, 0, 7000000, '2023-04-11 00:03:07', ''),
(2146, '16832', 'PNJ/01/2022/00234', '2022-01-21 00:00:00', 5140000, 1542000, NULL, 359800, 3957800, '2023-04-11 00:03:07', ''),
(2148, '16832', 'PNJ/01/2022/00235', '2022-01-21 00:00:00', 3058823, 458823, NULL, 0, 2600000, '2023-04-11 00:03:07', ''),
(2156, '16832', 'PNJ/01/2022/00236', '2022-01-21 00:00:00', 1100000, 0, NULL, 0, 1100000, '2023-04-11 00:03:07', ''),
(2161, '16832', 'PNJ/01/2022/00237', '2022-01-21 00:00:00', 250000, 0, NULL, 0, 250000, '2023-04-11 00:03:07', ''),
(2166, '16832', 'PNJ/01/2022/00239', '2022-01-21 00:00:00', 8996361, 0, NULL, 899636, 9895997, '2023-04-11 00:03:07', ''),
(2169, '16832', 'PNJ/01/2022/00240', '2022-01-21 00:00:00', 1509000, 0, NULL, 150900, 1659900, '2023-04-11 00:03:07', ''),
(2177, '16832', 'PNJ/01/2022/00242', '2022-01-21 00:00:00', 12050000, 0, NULL, 1205000, 13255000, '2023-04-11 00:03:07', ''),
(2184, '16832', 'PNJ/01/2022/00243', '2022-01-21 00:00:00', 1900000, 0, NULL, 0, 1900000, '2023-04-11 00:03:07', ''),
(2188, '16832', 'PNJ/01/2022/00244', '2022-01-21 00:00:00', 21400000, 4280000, NULL, 0, 17120000, '2023-04-11 00:03:07', ''),
(2195, '16832', 'PNJ/01/2022/00246', '2022-01-21 00:00:00', 2340000, 0, NULL, 0, 2340000, '2023-04-11 00:03:07', ''),
(2197, '16832', 'PNJ/01/2022/00247', '2022-01-21 00:00:00', 2250000, 0, NULL, 0, 2250000, '2023-04-11 00:03:07', ''),
(2204, '16832', 'PNJ/01/2022/00248', '2022-01-21 00:00:00', 5850000, 0, NULL, 585000, 6435000, '2023-04-11 00:03:07', ''),
(2207, '16832', 'PNJ/01/2022/00249', '2022-01-21 00:00:00', 1750000, 0, NULL, 0, 1750000, '2023-04-11 00:03:07', '');
INSERT INTO `t_transaction` (`id_resto_trx`, `id_agent`, `no_struk`, `date_time`, `subtotal`, `discount`, `dpp`, `tax`, `total`, `createtime`, `service`) VALUES
(2214, '16832', 'PNJ/01/2022/00253', '2022-01-21 00:00:00', 1360000, 0, NULL, 136000, 1496000, '2023-04-11 00:03:07', ''),
(2218, '16832', 'PNJ/01/2022/00255', '2022-01-21 00:00:00', 640000, 0, NULL, 64000, 704000, '2023-04-11 00:03:07', ''),
(2226, '16832', 'PNJ/01/2022/00256', '2022-01-21 00:00:00', 3843750, 768750, NULL, 0, 3075000, '2023-04-11 00:03:07', ''),
(2234, '16832', 'PNJ/01/2022/00257', '2022-01-21 00:00:00', 1150000, 0, NULL, 0, 1150000, '2023-04-11 00:03:07', ''),
(2238, '16832', 'PNJ/01/2022/00258', '2022-01-21 00:00:00', 4500000, 0, NULL, 450000, 4950000, '2023-04-11 00:03:07', ''),
(2244, '16832', 'PNJ/01/2022/00259', '2022-01-22 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:03:07', ''),
(2248, '16832', 'PNJ/01/2022/00261', '2022-01-22 00:00:00', 1875000, 0, NULL, 0, 1875000, '2023-04-11 00:03:07', ''),
(2256, '16832', 'PNJ/01/2022/00262', '2022-01-22 00:00:00', 2250000, 0, NULL, 0, 2250000, '2023-04-11 00:03:07', ''),
(2260, '16832', 'PNJ/01/2022/00263', '2022-01-22 00:00:00', 1170000, 0, NULL, 117000, 1287000, '2023-04-11 00:03:07', ''),
(2265, '16832', 'PNJ/01/2022/00264', '2022-01-22 00:00:00', 10312500, 1031250, NULL, 0, 9281250, '2023-04-11 00:03:07', ''),
(2269, '16832', 'PNJ/01/2022/00265', '2022-01-23 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:07', ''),
(2278, '16832', 'PNJ/01/2022/00266', '2022-01-22 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:03:07', ''),
(2279, '16832', 'PNJ/01/2022/00267', '2022-01-24 00:00:00', 120000, 0, NULL, 12000, 132000, '2023-04-11 00:03:07', ''),
(2286, '16832', 'PNJ/01/2022/00268', '2022-01-24 00:00:00', 2530000, 0, NULL, 253000, 2783000, '2023-04-11 00:03:07', ''),
(2291, '16832', 'PNJ/01/2022/00269', '2022-01-24 00:00:00', 10755000, 0, NULL, 1075500, 11830500, '2023-04-11 00:03:07', ''),
(2297, '16832', 'PNJ/01/2022/00271', '2022-01-24 00:00:00', 1450000, 0, NULL, 145000, 1595000, '2023-04-11 00:03:07', ''),
(2300, '16832', 'PNJ/01/2022/00272', '2022-01-24 00:00:00', 325000, 0, NULL, 0, 325000, '2023-04-11 00:03:07', ''),
(2306, '16832', 'PNJ/01/2022/00273', '2022-01-24 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:03:07', ''),
(2312, '16832', 'PNJ/01/2022/00274', '2022-01-24 00:00:00', 9400000, 0, NULL, 0, 9400000, '2023-04-11 00:03:07', ''),
(2318, '16832', 'PNJ/01/2022/00275', '2022-01-24 00:00:00', 1750000, 0, NULL, 0, 1750000, '2023-04-11 00:03:07', ''),
(2323, '16832', 'PNJ/01/2022/00276', '2022-01-24 00:00:00', 1750000, 0, NULL, 175000, 1925000, '2023-04-11 00:03:07', ''),
(2328, '16832', 'PNJ/01/2022/00279', '2022-01-24 00:00:00', 801000, 0, NULL, 80100, 881100, '2023-04-11 00:03:07', ''),
(2331, '16832', 'PNJ/01/2022/00280', '2022-01-24 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:03:07', ''),
(2338, '16832', 'PNJ/01/2022/00281', '2022-01-24 00:00:00', 500000, 0, NULL, 0, 500000, '2023-04-11 00:03:07', ''),
(2341, '16832', 'PNJ/01/2022/00282', '2022-01-24 00:00:00', 372000, 0, NULL, 37200, 409200, '2023-04-11 00:03:07', ''),
(2350, '16832', 'PNJ/01/2022/00283', '2022-01-24 00:00:00', 1250000, 0, NULL, 0, 1250000, '2023-04-11 00:03:07', ''),
(2359, '16832', 'PNJ/01/2022/00284', '2022-01-24 00:00:00', 800000, 0, NULL, 0, 800000, '2023-04-11 00:03:07', ''),
(2364, '16832', 'PNJ/01/2022/00285', '2022-01-24 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:03:07', ''),
(2371, '16832', 'PNJ/01/2022/00286', '2022-01-24 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:03:07', ''),
(2372, '16832', 'PNJ/01/2022/00287', '2022-01-24 00:00:00', 825000, 0, NULL, 0, 825000, '2023-04-11 00:03:07', ''),
(2375, '16832', 'PNJ/01/2022/00288', '2022-01-24 00:00:00', 735000, 0, NULL, 73500, 808500, '2023-04-11 00:03:07', ''),
(2380, '16832', 'PNJ/01/2022/00290', '2022-01-24 00:00:00', 270000, 27000, NULL, 24300, 267300, '2023-04-11 00:03:07', ''),
(2385, '16832', 'PNJ/01/2022/00292', '2022-01-24 00:00:00', 1080000, 0, NULL, 108000, 1188000, '2023-04-11 00:03:07', ''),
(2391, '16832', 'PNJ/01/2022/00293', '2022-01-24 00:00:00', 3195990, 0, NULL, 319599, 3515589, '2023-04-11 00:03:07', ''),
(2396, '16832', 'PNJ/01/2022/00294', '2022-01-24 00:00:00', 4200000, 0, NULL, 0, 4200000, '2023-04-11 00:03:07', ''),
(2401, '16832', 'PNJ/01/2022/00295', '2022-01-24 00:00:00', 240000, 0, NULL, 24000, 264000, '2023-04-11 00:03:07', ''),
(2410, '16832', 'PNJ/01/2022/00296', '2022-01-24 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(2411, '16832', 'PNJ/01/2022/00297', '2022-01-25 00:00:00', 650000, 0, NULL, 0, 650000, '2023-04-11 00:03:07', ''),
(2413, '16832', 'PNJ/01/2022/00301', '2022-01-25 00:00:00', 7600000, 760000, NULL, 0, 6840000, '2023-04-11 00:03:07', ''),
(2422, '16832', 'PNJ/01/2022/00302', '2022-01-25 00:00:00', 9350000, 0, NULL, 0, 9350000, '2023-04-11 00:03:07', ''),
(2424, '16832', 'PNJ/01/2022/00303', '2022-01-25 00:00:00', 1290000, 0, NULL, 0, 1290000, '2023-04-11 00:03:07', ''),
(2433, '16832', 'PNJ/01/2022/00304', '2022-01-25 00:00:00', 2100000, 0, NULL, 0, 2100000, '2023-04-11 00:03:07', ''),
(2435, '16832', 'PNJ/01/2022/00305', '2022-01-25 00:00:00', 2400000, 720000, NULL, 168000, 1848000, '2023-04-11 00:03:07', ''),
(2443, '16832', 'PNJ/01/2022/00306', '2022-01-25 00:00:00', 5000000, 0, NULL, 0, 5000000, '2023-04-11 00:03:07', ''),
(2446, '16832', 'PNJ/01/2022/00312', '2022-01-25 00:00:00', 1250000, 0, NULL, 125000, 1375000, '2023-04-11 00:03:07', ''),
(2453, '16832', 'PNJ/01/2022/00313', '2022-01-25 00:00:00', 12095000, 0, NULL, 0, 12095000, '2023-04-11 00:03:07', ''),
(2457, '16832', 'PNJ/01/2022/00314', '2022-01-25 00:00:00', 140000, 0, NULL, 0, 140000, '2023-04-11 00:03:07', ''),
(2467, '16832', 'PNJ/01/2022/00315', '2022-01-25 00:00:00', 2182500, 0, NULL, 218250, 2400750, '2023-04-11 00:03:07', ''),
(2469, '16832', 'PNJ/01/2022/00316', '2022-01-25 00:00:00', 186000, 0, NULL, 18600, 204600, '2023-04-11 00:03:07', ''),
(2473, '16832', 'PNJ/01/2022/00317', '2022-01-25 00:00:00', 1075000, 0, NULL, 107500, 1182500, '2023-04-11 00:03:07', ''),
(2483, '16832', 'PNJ/01/2022/00318', '2022-01-25 00:00:00', 650000, 0, NULL, 0, 650000, '2023-04-11 00:03:07', ''),
(2488, '16832', 'PNJ/01/2022/00319', '2022-01-25 00:00:00', 370000, 0, NULL, 37000, 407000, '2023-04-11 00:03:07', ''),
(2491, '16832', 'PNJ/01/2022/00320', '2022-01-26 00:00:00', 6000000, 300000, NULL, 570000, 6270000, '2023-04-11 00:03:07', ''),
(2494, '16832', 'PNJ/01/2022/00321', '2022-01-26 00:00:00', 2600000, 0, NULL, 0, 2600000, '2023-04-11 00:03:07', ''),
(2503, '16832', 'PNJ/01/2022/00322', '2022-01-26 00:00:00', 640000, 128000, NULL, 0, 512000, '2023-04-11 00:03:07', ''),
(2505, '16832', 'PNJ/01/2022/00323', '2022-01-26 00:00:00', 4700000, 0, NULL, 0, 4700000, '2023-04-11 00:03:07', ''),
(2513, '16832', 'PNJ/01/2022/00325', '2022-01-26 00:00:00', 1250000, 0, NULL, 0, 1250000, '2023-04-11 00:03:07', ''),
(2517, '16832', 'PNJ/01/2022/00326', '2022-01-26 00:00:00', 4042500, 808500, NULL, 323400, 3557400, '2023-04-11 00:03:07', ''),
(2525, '16832', 'PNJ/01/2022/00327', '2022-01-26 00:00:00', 1950000, 292500, NULL, 165750, 1823250, '2023-04-11 00:03:07', ''),
(2529, '16832', 'PNJ/01/2022/00329', '2022-01-26 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:03:07', ''),
(2536, '16832', 'PNJ/01/2022/00330', '2022-01-26 00:00:00', 3900000, 0, NULL, 0, 3900000, '2023-04-11 00:03:07', ''),
(2546, '16832', 'PNJ/01/2022/00331', '2022-01-26 00:00:00', 3890000, 0, NULL, 389000, 4279000, '2023-04-11 00:03:07', ''),
(2551, '16832', 'PNJ/01/2022/00332', '2022-01-26 00:00:00', 150000, 0, NULL, 15000, 165000, '2023-04-11 00:03:07', ''),
(2556, '16832', 'PNJ/01/2022/00333', '2022-01-26 00:00:00', 356250, 71250, NULL, 28500, 313500, '2023-04-11 00:03:07', ''),
(2562, '16832', 'PNJ/01/2022/00334', '2022-01-26 00:00:00', 11255000, 0, NULL, 0, 11255000, '2023-04-11 00:03:07', ''),
(2566, '16832', 'PNJ/01/2022/00338', '2022-01-26 00:00:00', 375000, 0, NULL, 0, 375000, '2023-04-11 00:03:07', ''),
(2569, '16832', 'PNJ/01/2021/00426', '2021-01-19 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:18', ''),
(2572, '16832', 'PNJ/01/2022/00339', '2022-01-26 00:00:00', 60000, 0, NULL, 0, 60000, '2023-04-11 00:03:07', ''),
(2576, '16832', 'PNJ/01/2022/00341', '2022-01-27 00:00:00', 1080000, 0, NULL, 0, 1080000, '2023-04-11 00:03:07', ''),
(2583, '16832', 'PNJ/01/2022/00342', '2022-01-27 00:00:00', 810000, 81000, NULL, 72900, 801900, '2023-04-11 00:03:07', ''),
(2584, '16832', 'PNJ/01/2021/00427', '2021-01-19 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:03:18', ''),
(2591, '16832', 'PNJ/01/2022/00343', '2022-01-27 00:00:00', 9000000, 0, NULL, 0, 9000000, '2023-04-11 00:03:07', ''),
(2594, '16832', 'PNJ/01/2022/00344', '2022-01-27 00:00:00', 220000, 55000, NULL, 16500, 181500, '2023-04-11 00:03:07', ''),
(2599, '16832', 'PNJ/01/2021/00428', '2021-01-19 00:00:00', 1400000, 0, NULL, 0, 1400000, '2023-04-11 00:03:18', ''),
(2602, '16832', 'PNJ/01/2022/00345', '2022-01-27 00:00:00', 1700000, 0, NULL, 0, 1700000, '2023-04-11 00:03:07', ''),
(2606, '16832', 'PNJ/01/2022/00346', '2022-01-27 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:07', ''),
(2611, '16832', 'PNJ/01/2021/00429', '2021-01-19 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:03:18', ''),
(2613, '16832', 'PNJ/01/2022/00347', '2022-01-27 00:00:00', 2001750, 0, NULL, 200175, 2201925, '2023-04-11 00:03:07', ''),
(2619, '16832', 'PNJ/01/2022/00348', '2022-01-27 00:00:00', 560000, 0, NULL, 56000, 616000, '2023-04-11 00:03:07', ''),
(2621, '16832', 'PNJ/01/2021/00430', '2021-01-19 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:18', ''),
(2624, '16832', 'PNJ/01/2022/00349', '2022-01-27 00:00:00', 3225000, 0, NULL, 0, 3225000, '2023-04-11 00:03:07', ''),
(2630, '16832', 'PNJ/01/2022/00350', '2022-01-27 00:00:00', 6181816, 0, NULL, 618182, 6799998, '2023-04-11 00:03:07', ''),
(2632, '16832', 'PNJ/01/2021/00431', '2021-01-19 00:00:00', 2720000, 816000, NULL, 190400, 2094400, '2023-04-11 00:03:18', ''),
(2635, '16832', 'PNJ/01/2022/00352', '2022-01-27 00:00:00', 173788370, 0, NULL, 17378837, 191167207, '2023-04-11 00:03:07', ''),
(2636, '16832', 'PNJ/01/2022/00353', '2022-01-27 00:00:00', 145000, 0, NULL, 0, 145000, '2023-04-11 00:03:07', ''),
(2637, '16832', 'PNJ/01/2022/00354', '2022-01-27 00:00:00', 800000, 0, NULL, 80000, 880000, '2023-04-11 00:03:07', ''),
(2638, '16832', 'PNJ/01/2022/00356', '2022-01-27 00:00:00', 1500000, 0, NULL, 150000, 1650000, '2023-04-11 00:03:07', ''),
(2646, '16832', 'PNJ/01/2022/00357', '2022-01-27 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:03:07', ''),
(2648, '16832', 'PNJ/01/2021/00432', '2021-01-19 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:03:18', ''),
(2649, '16832', 'PNJ/01/2022/00358', '2022-01-27 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:07', ''),
(2656, '16832', 'PNJ/01/2021/00433', '2021-01-19 00:00:00', 25000, 0, NULL, 0, 25000, '2023-04-11 00:03:18', ''),
(2659, '16832', 'PNJ/01/2022/00359', '2022-01-27 00:00:00', 2950000, 0, NULL, 0, 2950000, '2023-04-11 00:03:07', ''),
(2660, '16832', 'PNJ/01/2022/00363', '2022-01-28 00:00:00', 6000000, 0, NULL, 600000, 6600000, '2023-04-11 00:03:07', ''),
(2664, '16832', 'PNJ/01/2021/00434', '2021-01-19 00:00:00', 6900000, 0, NULL, 0, 6900000, '2023-04-11 00:03:18', ''),
(2677, '16832', 'PNJ/01/2021/00435', '2021-01-11 00:00:00', 7200000, 0, NULL, 0, 7200000, '2023-04-11 00:03:18', ''),
(2688, '16832', 'PNJ/01/2021/00436', '2021-01-19 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:03:18', ''),
(2695, '16832', 'PNJ/01/2021/00437', '2021-01-20 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:03:18', ''),
(2703, '16832', 'PNJ/01/2021/00438', '2021-01-20 00:00:00', 6960000, 2436000, NULL, 0, 4524000, '2023-04-11 00:03:18', ''),
(2713, '16832', 'PNJ/01/2021/00439', '2021-01-20 00:00:00', 950000, 0, NULL, 0, 950000, '2023-04-11 00:03:18', ''),
(2720, '16832', 'PNJ/01/2021/00440', '2021-01-20 00:00:00', 1800000, 0, NULL, 0, 1800000, '2023-04-11 00:03:18', ''),
(2727, '16832', 'PNJ/01/2021/00441', '2021-01-20 00:00:00', 292000, 58400, NULL, 23360, 256960, '2023-04-11 00:03:18', ''),
(2736, '16832', 'PNJ/01/2021/00443', '2021-01-20 00:00:00', 720000, 0, NULL, 0, 720000, '2023-04-11 00:03:18', ''),
(2746, '16832', 'PNJ/01/2021/00446', '2021-01-20 00:00:00', 9000000, 900000, NULL, 0, 8100000, '2023-04-11 00:03:18', ''),
(2764, '16832', 'PNJ/01/2021/00447', '2021-01-20 00:00:00', 6000000, 600000, NULL, 0, 5400000, '2023-04-11 00:03:18', ''),
(2779, '16832', 'PNJ/01/2021/00448', '2021-01-20 00:00:00', 13200000, 0, NULL, 0, 13200000, '2023-04-11 00:03:18', ''),
(2787, '16832', 'PNJ/01/2021/00449', '2021-01-20 00:00:00', 280000, 0, NULL, 0, 280000, '2023-04-11 00:03:18', ''),
(2796, '16832', 'PNJ/01/2021/00450', '2021-01-20 00:00:00', 4900000, 0, NULL, 0, 4900000, '2023-04-11 00:03:18', ''),
(2801, '16832', 'PNJ/01/2021/00451', '2021-01-20 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:03:18', ''),
(2811, '16832', 'PNJ/01/2021/00452', '2021-01-20 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:18', ''),
(2823, '16832', 'PNJ/01/2021/00453', '2021-01-20 00:00:00', 480000, 0, NULL, 0, 480000, '2023-04-11 00:03:18', ''),
(2839, '16832', 'PNJ/01/2021/00454', '2021-01-20 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:03:18', ''),
(2850, '16832', 'PNJ/01/2021/00455', '2021-01-20 00:00:00', 9000000, 0, NULL, 0, 9000000, '2023-04-11 00:03:18', ''),
(2860, '16832', 'PNJ/01/2021/00456', '2021-01-20 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:03:18', ''),
(2870, '16832', 'PNJ/01/2021/00457', '2021-01-20 00:00:00', 70000, 0, NULL, 0, 70000, '2023-04-11 00:03:18', ''),
(2879, '16832', 'PNJ/01/2021/00458', '2021-01-20 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:03:18', ''),
(2891, '16832', 'PNJ/01/2021/00459', '2021-01-20 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:03:18', ''),
(2903, '16832', 'PNJ/01/2021/00460', '2021-01-20 00:00:00', 110000, 0, NULL, 0, 110000, '2023-04-11 00:03:18', ''),
(2913, '16832', 'PNJ/01/2021/00461', '2021-01-21 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:03:18', ''),
(2920, '16832', 'PNJ/01/2021/00462', '2021-01-21 00:00:00', 550000, 0, NULL, 55000, 605000, '2023-04-11 00:03:18', ''),
(2931, '16832', 'PNJ/01/2021/00464', '2020-12-31 00:00:00', 1360000, 0, NULL, 136000, 1496000, '2023-04-11 00:03:18', ''),
(2938, '16832', 'PNJ/01/2021/00465', '2021-01-21 00:00:00', 3075000, 0, NULL, 0, 3075000, '2023-04-11 00:03:18', ''),
(3013, '16832', 'PNJ/01/2021/00402', '2021-01-18 00:00:00', 3112500, 622500, NULL, 249000, 2739000, '2023-04-11 00:03:31', ''),
(3016, '16832', 'PNJ/01/2021/00403', '2021-01-18 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:03:31', ''),
(3025, '16832', 'PNJ/01/2021/00404', '2021-01-19 00:00:00', 19000000, 0, NULL, 0, 19000000, '2023-04-11 00:03:31', ''),
(3035, '16832', 'PNJ/01/2021/00406', '2021-01-19 00:00:00', 3500000, 700000, NULL, 280000, 3080000, '2023-04-11 00:03:31', ''),
(3044, '16832', 'PNJ/01/2021/00407', '2021-01-19 00:00:00', 3600000, 0, NULL, 0, 3600000, '2023-04-11 00:03:31', ''),
(3055, '16832', 'PNJ/01/2021/00408', '2021-01-19 00:00:00', 22500000, 0, NULL, 2250000, 24750000, '2023-04-11 00:03:31', ''),
(3070, '16832', 'PNJ/01/2021/00409', '2021-01-19 00:00:00', 300000, 0, NULL, 0, 300000, '2023-04-11 00:03:31', ''),
(3084, '16832', 'PNJ/01/2021/00410', '2021-01-19 00:00:00', 3025000, 605000, NULL, 242000, 2662000, '2023-04-11 00:03:31', ''),
(3091, '16832', 'PNJ/01/2021/00411', '2021-01-19 00:00:00', 37000000, 7400000, NULL, 2960000, 32560000, '2023-04-11 00:03:31', ''),
(3103, '16832', 'PNJ/01/2021/00412', '2021-01-19 00:00:00', 495000, 0, NULL, 0, 495000, '2023-04-11 00:03:31', ''),
(3115, '16832', 'PNJ/01/2021/00413', '2021-01-19 00:00:00', 1883000, 0, NULL, 188300, 2071300, '2023-04-11 00:03:31', ''),
(3119, '16832', 'PNJ/01/2021/00414', '2021-01-19 00:00:00', 350000, 0, NULL, 0, 350000, '2023-04-11 00:03:31', ''),
(3129, '16832', 'PNJ/01/2021/00416', '2021-01-19 00:00:00', 2437500, 487500, NULL, 0, 1950000, '2023-04-11 00:03:31', ''),
(3137, '16832', 'PNJ/01/2021/00417', '2021-01-19 00:00:00', 4687500, 937500, NULL, 0, 3750000, '2023-04-11 00:03:31', ''),
(3149, '16832', 'PNJ/01/2021/00419', '2021-01-19 00:00:00', 2408080, 0, NULL, 0, 2408080, '2023-04-11 00:03:31', ''),
(3154, '16832', 'PNJ/01/2021/00420', '2021-01-19 00:00:00', 550000, 0, NULL, 0, 550000, '2023-04-11 00:03:31', ''),
(3164, '16832', 'PNJ/01/2021/00421', '2021-01-19 00:00:00', 6187500, 618750, NULL, 0, 5568750, '2023-04-11 00:03:31', ''),
(3175, '16832', 'PNJ/01/2021/00422', '2021-01-19 00:00:00', 150000, 0, NULL, 15000, 165000, '2023-04-11 00:03:31', ''),
(3179, '16832', 'PNJ/01/2021/00423', '2021-01-19 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:03:31', ''),
(3192, '16832', 'PNJ/01/2021/00424', '2021-01-19 00:00:00', 62500000, 15625000, NULL, 4687500, 51562500, '2023-04-11 00:03:31', ''),
(3297, '16832', 'PNJ/01/2021/00381', '2021-01-18 00:00:00', 15000000, 0, NULL, 0, 15000000, '2023-04-11 00:03:42', ''),
(3309, '16832', 'PNJ/01/2021/00382', '2021-01-18 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:03:42', ''),
(3323, '16832', 'PNJ/01/2021/00383', '2021-01-18 00:00:00', 8750000, 0, NULL, 875000, 9625000, '2023-04-11 00:03:42', ''),
(3330, '16832', 'PNJ/01/2021/00384', '2021-01-18 00:00:00', 1781250, 356250, NULL, 142500, 1567500, '2023-04-11 00:03:42', ''),
(3345, '16832', 'PNJ/01/2021/00385', '2021-01-18 00:00:00', 240000, 0, NULL, 24000, 264000, '2023-04-11 00:03:42', ''),
(3352, '16832', 'PNJ/01/2021/00387', '2021-01-18 00:00:00', 1440000, 0, NULL, 144000, 1584000, '2023-04-11 00:03:42', ''),
(3361, '16832', 'PNJ/01/2021/00388', '2021-01-18 00:00:00', 6000000, 0, NULL, 600000, 6600000, '2023-04-11 00:03:42', ''),
(3368, '16832', 'PNJ/01/2021/00389', '2021-01-18 00:00:00', 9850000, 1970000, NULL, 788000, 8668000, '2023-04-11 00:03:42', ''),
(3377, '16832', 'PNJ/01/2021/00390', '2021-01-18 00:00:00', 875000, 0, NULL, 87500, 962500, '2023-04-11 00:03:42', ''),
(3390, '16832', 'PNJ/01/2021/00391', '2021-01-18 00:00:00', 270000, 0, NULL, 0, 270000, '2023-04-11 00:03:42', ''),
(3398, '16832', 'PNJ/01/2021/00392', '2021-01-18 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:03:42', ''),
(3409, '16832', 'PNJ/01/2021/00394', '2021-01-18 00:00:00', 3813635, 0, NULL, 381364, 4194999, '2023-04-11 00:03:42', ''),
(3420, '16832', 'PNJ/01/2021/00395', '2021-01-18 00:00:00', 1320000, 0, NULL, 0, 1320000, '2023-04-11 00:03:42', ''),
(3430, '16832', 'PNJ/01/2021/00396', '2021-01-18 00:00:00', 850000, 0, NULL, 0, 850000, '2023-04-11 00:03:42', ''),
(3445, '16832', 'PNJ/01/2021/00398', '2021-01-18 00:00:00', 2250000, 0, NULL, 0, 2250000, '2023-04-11 00:03:42', ''),
(3452, '16832', 'PNJ/01/2021/00399', '2021-01-18 00:00:00', 10800000, 0, NULL, 0, 10800000, '2023-04-11 00:03:42', ''),
(3463, '16832', 'PNJ/01/2021/00400', '2021-01-18 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:03:42', ''),
(4049, '16832', 'PNJ/01/2021/00354', '2021-01-15 00:00:00', 1600000, 0, NULL, 0, 1600000, '2023-04-11 00:04:13', ''),
(4055, '16832', 'PNJ/01/2021/00355', '2021-01-15 00:00:00', 1650000, 0, NULL, 0, 1650000, '2023-04-11 00:04:13', ''),
(4071, '16832', 'PNJ/01/2021/00356', '2021-01-15 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:04:13', ''),
(4080, '16832', 'PNJ/01/2021/00357', '2021-01-15 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:04:13', ''),
(4091, '16832', 'PNJ/01/2021/00358', '2021-01-15 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:04:13', ''),
(4101, '16832', 'PNJ/01/2021/00359', '2021-01-15 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:04:13', ''),
(4111, '16832', 'PNJ/01/2021/00360', '2021-01-16 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:04:13', ''),
(4117, '16832', 'PNJ/01/2021/00361', '2021-01-16 00:00:00', 115000, 0, NULL, 0, 115000, '2023-04-11 00:04:13', ''),
(4124, '16832', 'PNJ/01/2021/00362', '2021-01-16 00:00:00', 70000, 0, NULL, 0, 70000, '2023-04-11 00:04:13', ''),
(4136, '16832', 'PNJ/01/2021/00363', '2021-01-16 00:00:00', 40000, 0, NULL, 0, 40000, '2023-04-11 00:04:13', ''),
(4141, '16832', 'PNJ/01/2021/00364', '2021-01-16 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:04:13', ''),
(4154, '16832', 'PNJ/01/2021/00365', '2021-01-16 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:04:13', ''),
(4164, '16832', 'PNJ/01/2021/00366', '2021-01-16 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:04:13', ''),
(4177, '16832', 'PNJ/01/2021/00367', '2021-01-17 00:00:00', 165000, 0, NULL, 0, 165000, '2023-04-11 00:04:13', ''),
(4188, '16832', 'PNJ/01/2021/00368', '2021-01-17 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:04:13', ''),
(4200, '16832', 'PNJ/01/2021/00369', '2021-01-17 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:04:13', ''),
(4213, '16832', 'PNJ/01/2021/00370', '2021-01-17 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:04:13', ''),
(4222, '16832', 'PNJ/01/2021/00371', '2021-01-17 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:04:13', ''),
(4233, '16832', 'PNJ/01/2021/00372', '2021-01-17 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:04:13', ''),
(4245, '16832', 'PNJ/01/2021/00373', '2021-01-17 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:04:13', ''),
(4252, '16832', 'PNJ/01/2021/00374', '2021-01-17 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:04:13', ''),
(4268, '16832', 'PNJ/01/2021/00375', '2021-01-18 00:00:00', 80000, 0, NULL, 0, 80000, '2023-04-11 00:04:13', ''),
(4272, '16832', 'PNJ/01/2021/00376', '2021-01-18 00:00:00', 2250000, 0, NULL, 0, 2250000, '2023-04-11 00:04:13', ''),
(4284, '16832', 'PNJ/01/2021/00377', '2021-01-18 00:00:00', 2750000, 0, NULL, 0, 2750000, '2023-04-11 00:04:13', ''),
(4297, '16832', 'PNJ/01/2021/00378', '2021-01-18 00:00:00', 1700000, 0, NULL, 0, 1700000, '2023-04-11 00:04:13', ''),
(4426, '16832', 'PNJ/01/2021/00339', '2021-01-15 00:00:00', 1350000, 0, NULL, 135000, 1485000, '2023-04-11 00:04:24', ''),
(4437, '16832', 'PNJ/01/2021/00340', '2021-01-14 00:00:00', 3994000, 0, NULL, 0, 3994000, '2023-04-11 00:04:24', ''),
(4449, '16832', 'PNJ/01/2021/00341', '2021-01-15 00:00:00', 150000, 0, NULL, 0, 150000, '2023-04-11 00:04:24', ''),
(4463, '16832', 'PNJ/01/2021/00342', '2021-01-15 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:04:24', ''),
(4471, '16832', 'PNJ/01/2021/00343', '2021-01-15 00:00:00', 102500, 0, NULL, 0, 102500, '2023-04-11 00:04:24', ''),
(4484, '16832', 'PNJ/01/2021/00344', '2021-01-15 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:04:24', ''),
(4494, '16832', 'PNJ/01/2021/00345', '2021-01-15 00:00:00', 5000000, 0, NULL, 0, 5000000, '2023-04-11 00:04:24', ''),
(4505, '16832', 'PNJ/01/2021/00346', '2021-01-15 00:00:00', 3000000, 0, NULL, 0, 3000000, '2023-04-11 00:04:24', ''),
(4517, '16832', 'PNJ/01/2021/00347', '2021-01-15 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:04:24', ''),
(4528, '16832', 'PNJ/01/2021/00349', '2021-01-15 00:00:00', 5257500, 1051500, NULL, 0, 4206000, '2023-04-11 00:04:24', ''),
(4533, '16832', 'PNJ/01/2021/00351', '2021-01-15 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:04:24', ''),
(4550, '16832', 'PNJ/01/2021/00352', '2021-01-15 00:00:00', 5900000, 0, NULL, 0, 5900000, '2023-04-11 00:04:24', ''),
(4560, '16832', 'PNJ/01/2021/00353', '2021-01-15 00:00:00', 3500000, 0, NULL, 0, 3500000, '2023-04-11 00:04:24', ''),
(5093, '16832', 'PNJ/01/2021/00333', '2021-01-14 00:00:00', 315000, 0, NULL, 0, 315000, '2023-04-11 00:04:46', ''),
(5102, '16832', 'PNJ/01/2021/00334', '2021-01-15 00:00:00', 8389616, 0, NULL, 0, 8389616, '2023-04-11 00:04:46', ''),
(5109, '16832', 'PNJ/01/2021/00335', '2021-01-15 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:04:46', ''),
(5127, '16832', 'PNJ/01/2021/00337', '2021-01-15 00:00:00', 1800000, 0, NULL, 0, 1800000, '2023-04-11 00:04:46', ''),
(6299, '16832', 'PNJ/01/2021/00006', '2021-01-02 00:00:00', 86200, 0, NULL, 0, 86200, '2023-04-11 00:07:34', ''),
(6308, '16832', 'PNJ/01/2021/00007', '2021-01-02 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:07:34', ''),
(6314, '16832', 'PNJ/01/2021/00008', '2021-01-02 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:07:34', ''),
(6325, '16832', 'PNJ/01/2021/00009', '2021-01-02 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(6336, '16832', 'PNJ/01/2021/00010', '2021-01-02 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(6347, '16832', 'PNJ/01/2021/00011', '2021-01-02 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:07:34', ''),
(6360, '16832', 'PNJ/01/2021/00012', '2021-01-02 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:07:34', ''),
(6371, '16832', 'PNJ/01/2021/00013', '2021-01-02 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(6382, '16832', 'PNJ/01/2021/00014', '2021-01-02 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:07:34', ''),
(6392, '16832', 'PNJ/01/2021/00015', '2021-01-03 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(6395, '16832', 'PNJ/01/2021/00016', '2021-01-03 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:07:34', ''),
(6408, '16832', 'PNJ/01/2021/00017', '2021-01-03 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:07:34', ''),
(6422, '16832', 'PNJ/01/2021/00018', '2021-01-03 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:07:34', ''),
(6428, '16832', 'PNJ/01/2021/00019', '2021-01-03 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(6440, '16832', 'PNJ/01/2021/00020', '2021-01-03 00:00:00', 150000, 37500, NULL, 0, 112500, '2023-04-11 00:07:34', ''),
(6454, '16832', 'PNJ/01/2021/00021', '2021-01-03 00:00:00', 195000, 0, NULL, 0, 195000, '2023-04-11 00:07:34', ''),
(6464, '16832', 'PNJ/01/2021/00022', '2021-01-03 00:00:00', 175000, 0, NULL, 0, 175000, '2023-04-11 00:07:34', ''),
(6474, '16832', 'PNJ/01/2021/00023', '2021-01-03 00:00:00', 135000, 0, NULL, 0, 135000, '2023-04-11 00:07:34', ''),
(6483, '16832', 'PNJ/01/2021/00024', '2021-01-03 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(6500, '16832', 'PNJ/01/2021/00025', '2021-01-03 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(6513, '16832', 'PNJ/01/2021/00026', '2021-01-03 00:00:00', 25000, 0, NULL, 0, 25000, '2023-04-11 00:07:34', ''),
(6522, '16832', 'PNJ/01/2021/00027', '2021-01-03 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:07:34', ''),
(6534, '16832', 'PNJ/01/2021/00028', '2021-01-03 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:07:34', ''),
(6545, '16832', 'PNJ/01/2021/00029', '2021-01-03 00:00:00', 150000, 0, NULL, 0, 150000, '2023-04-11 00:07:34', ''),
(6560, '16832', 'PNJ/01/2021/00031', '2021-01-04 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:07:34', ''),
(6567, '16832', 'PNJ/01/2021/00032', '2021-01-04 00:00:00', 8750000, 0, NULL, 875000, 9625000, '2023-04-11 00:07:34', ''),
(6575, '16832', 'PNJ/01/2021/00033', '2021-01-04 00:00:00', 5500000, 0, NULL, 0, 5500000, '2023-04-11 00:07:34', ''),
(6585, '16832', 'PNJ/01/2021/00034', '2021-01-04 00:00:00', 3005000, 0, NULL, 0, 3005000, '2023-04-11 00:07:34', ''),
(6593, '16832', 'PNJ/01/2021/00035', '2021-01-04 00:00:00', 800000, 0, NULL, 0, 800000, '2023-04-11 00:07:34', ''),
(6600, '16832', 'PNJ/01/2021/00036', '2021-01-04 00:00:00', 4800000, 0, NULL, 0, 4800000, '2023-04-11 00:07:34', ''),
(6612, '16832', 'PNJ/01/2021/00037', '2021-01-04 00:00:00', 3000000, 750000, NULL, 0, 2250000, '2023-04-11 00:07:34', ''),
(6623, '16832', 'PNJ/01/2021/00038', '2021-01-04 00:00:00', 2550000, 0, NULL, 0, 2550000, '2023-04-11 00:07:34', ''),
(6633, '16832', 'PNJ/01/2021/00039', '2021-01-04 00:00:00', 3000000, 750000, NULL, 0, 2250000, '2023-04-11 00:07:34', ''),
(6640, '16832', 'PNJ/01/2021/00040', '2021-01-04 00:00:00', 4500000, 0, NULL, 0, 4500000, '2023-04-11 00:07:34', ''),
(6651, '16832', 'PNJ/01/2021/00042', '2021-01-04 00:00:00', 4000000, 0, NULL, 0, 4000000, '2023-04-11 00:07:34', ''),
(6661, '16832', 'PNJ/01/2021/00043', '2021-01-04 00:00:00', 12925000, 0, NULL, 0, 12925000, '2023-04-11 00:07:34', ''),
(6671, '16832', 'PNJ/01/2021/00044', '2021-01-04 00:00:00', 875000, 0, NULL, 0, 875000, '2023-04-11 00:07:34', ''),
(6681, '16832', 'PNJ/01/2021/00045', '2021-01-04 00:00:00', 3500000, 0, NULL, 0, 3500000, '2023-04-11 00:07:34', ''),
(6689, '16832', 'PNJ/01/2021/00046', '2021-01-04 00:00:00', 308000, 0, NULL, 0, 308000, '2023-04-11 00:07:34', ''),
(6700, '16832', 'PNJ/01/2021/00047', '2021-01-04 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:07:34', ''),
(6709, '16832', 'PNJ/01/2021/00048', '2020-12-14 00:00:00', 1570000, 0, NULL, 0, 1570000, '2023-04-11 00:07:34', ''),
(6720, '16832', 'PNJ/01/2021/00049', '2021-01-04 00:00:00', 3600000, 720000, NULL, 288000, 3168000, '2023-04-11 00:07:34', ''),
(6730, '16832', 'PNJ/01/2021/00050', '2021-01-04 00:00:00', 6250000, 1250000, NULL, 500000, 5500000, '2023-04-11 00:07:34', ''),
(6738, '16832', 'PNJ/01/2021/00051', '2021-01-04 00:00:00', 3280000, 0, NULL, 0, 3280000, '2023-04-11 00:07:34', ''),
(6746, '16832', 'PNJ/01/2021/00052', '2021-01-04 00:00:00', 14100000, 0, NULL, 0, 14100000, '2023-04-11 00:07:34', ''),
(6762, '16832', 'PNJ/01/2021/00054', '2021-01-04 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:07:34', ''),
(6778, '16832', 'PNJ/01/2021/00055', '2021-01-04 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:07:34', ''),
(6788, '16832', 'PNJ/01/2021/00056', '2021-01-04 00:00:00', 165000, 0, NULL, 0, 165000, '2023-04-11 00:07:34', ''),
(6800, '16832', 'PNJ/01/2021/00057', '2021-01-04 00:00:00', 1111000, 0, NULL, 111100, 1222100, '2023-04-11 00:07:34', ''),
(6808, '16832', 'PNJ/01/2021/00059', '2021-01-04 00:00:00', 7700000, 770000, NULL, 0, 6930000, '2023-04-11 00:07:34', ''),
(6818, '16832', 'PNJ/01/2021/00060', '2021-01-04 00:00:00', 4000000, 0, NULL, 0, 4000000, '2023-04-11 00:07:34', ''),
(6834, '16832', 'PNJ/01/2021/00061', '2021-01-04 00:00:00', 2250000, 0, NULL, 0, 2250000, '2023-04-11 00:07:34', ''),
(6844, '16832', 'PNJ/01/2021/00062', '2021-01-04 00:00:00', 145000, 0, NULL, 0, 145000, '2023-04-11 00:07:34', ''),
(6852, '16832', 'PNJ/01/2021/00063', '2021-01-04 00:00:00', 4860000, 0, NULL, 0, 4860000, '2023-04-11 00:07:34', ''),
(6864, '16832', 'PNJ/01/2021/00064', '2021-01-04 00:00:00', 1400000, 0, NULL, 0, 1400000, '2023-04-11 00:07:34', ''),
(6874, '16832', 'PNJ/01/2021/00065', '2021-01-04 00:00:00', 3100000, 0, NULL, 0, 3100000, '2023-04-11 00:07:34', ''),
(6884, '16832', 'PNJ/01/2021/00066', '2021-01-04 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:07:34', ''),
(6894, '16832', 'PNJ/01/2021/00067', '2021-01-04 00:00:00', 9000000, 1800000, NULL, 0, 7200000, '2023-04-11 00:07:34', ''),
(6899, '16832', 'PNJ/01/2021/00069', '2021-01-04 00:00:00', 117000, 0, NULL, 0, 117000, '2023-04-11 00:07:34', ''),
(6910, '16832', 'PNJ/01/2021/00070', '2021-01-04 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(6922, '16832', 'PNJ/01/2021/00071', '2021-01-04 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(6929, '16832', 'PNJ/01/2021/00072', '2021-01-05 00:00:00', 1500000, 375000, NULL, 0, 1125000, '2023-04-11 00:07:34', ''),
(6937, '16832', 'PNJ/01/2021/00073', '2021-01-05 00:00:00', 14100000, 0, NULL, 0, 14100000, '2023-04-11 00:07:34', ''),
(6946, '16832', 'PNJ/01/2021/00074', '2020-12-21 00:00:00', 44870000, 0, NULL, 4487000, 49357000, '2023-04-11 00:07:34', ''),
(6953, '16832', 'PNJ/01/2021/00075', '2021-01-05 00:00:00', 3900000, 780000, NULL, 312000, 3432000, '2023-04-11 00:07:34', ''),
(6964, '16832', 'PNJ/01/2021/00076', '2021-01-05 00:00:00', 6731000, 1009650, NULL, 572135, 6293485, '2023-04-11 00:07:34', ''),
(6975, '16832', 'PNJ/01/2021/00078', '2021-01-05 00:00:00', 36250000, 0, NULL, 3625000, 39875000, '2023-04-11 00:07:34', ''),
(6982, '16832', 'PNJ/01/2021/00079', '2021-01-05 00:00:00', 450000, 0, NULL, 0, 450000, '2023-04-11 00:07:34', ''),
(6989, '16832', 'PNJ/01/2021/00080', '2021-01-05 00:00:00', 2138480, 0, NULL, 213848, 2352328, '2023-04-11 00:07:34', ''),
(7000, '16832', 'PNJ/01/2021/00081', '2020-12-31 00:00:00', 2800000, 0, NULL, 0, 2800000, '2023-04-11 00:07:34', ''),
(7011, '16832', 'PNJ/01/2021/00082', '2021-01-05 00:00:00', 9000000, 900000, NULL, 0, 8100000, '2023-04-11 00:07:34', ''),
(7017, '16832', 'PNJ/01/2021/00083', '2021-01-05 00:00:00', 290000, 0, NULL, 0, 290000, '2023-04-11 00:07:34', ''),
(7025, '16832', 'PNJ/01/2021/00084', '2020-12-31 00:00:00', 45250000, 0, NULL, 4525000, 49775000, '2023-04-11 00:07:34', ''),
(7037, '16832', 'PNJ/01/2021/00086', '2021-01-05 00:00:00', 2400000, 0, NULL, 0, 2400000, '2023-04-11 00:07:34', ''),
(7046, '16832', 'PNJ/01/2021/00087', '2021-01-05 00:00:00', 9000000, 1800000, NULL, 720000, 7920000, '2023-04-11 00:07:34', ''),
(7055, '16832', 'PNJ/01/2021/00088', '2021-01-05 00:00:00', 14925000, 0, NULL, 0, 14925000, '2023-04-11 00:07:34', ''),
(7064, '16832', 'PNJ/01/2021/00089', '2021-01-05 00:00:00', 237500, 47500, NULL, 19000, 209000, '2023-04-11 00:07:34', ''),
(7072, '16832', 'PNJ/01/2021/00090', '2021-01-05 00:00:00', 450000, 0, NULL, 45000, 495000, '2023-04-11 00:07:34', ''),
(7083, '16832', 'PNJ/01/2021/00091', '2021-01-05 00:00:00', 14000000, 0, NULL, 1400000, 15400000, '2023-04-11 00:07:34', ''),
(7093, '16832', 'PNJ/01/2021/00092', '2021-01-05 00:00:00', 20068185, 0, NULL, 0, 20068185, '2023-04-11 00:07:34', ''),
(7103, '16832', 'PNJ/01/2021/00093', '2021-01-05 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:07:34', ''),
(7112, '16832', 'PNJ/01/2021/00094', '2021-01-05 00:00:00', 35000, 0, NULL, 0, 35000, '2023-04-11 00:07:34', ''),
(7126, '16832', 'PNJ/01/2021/00095', '2021-01-05 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(7134, '16832', 'PNJ/01/2021/00096', '2021-01-05 00:00:00', 940000, 94000, NULL, 84600, 930600, '2023-04-11 00:07:34', ''),
(7141, '16832', 'PNJ/01/2021/00097', '2021-01-06 00:00:00', 20000000, 0, NULL, 0, 20000000, '2023-04-11 00:07:34', ''),
(7148, '16832', 'PNJ/01/2021/00100', '2021-01-06 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:07:34', ''),
(7155, '16832', 'PNJ/01/2021/00101', '2021-01-06 00:00:00', 5500000, 0, NULL, 0, 5500000, '2023-04-11 00:07:34', ''),
(7163, '16832', 'PNJ/01/2021/00105', '2021-01-06 00:00:00', 12650000, 0, NULL, 0, 12650000, '2023-04-11 00:07:34', ''),
(7167, '16832', 'PNJ/01/2021/00106', '2021-01-06 00:00:00', 3200000, 0, NULL, 0, 3200000, '2023-04-11 00:07:34', ''),
(7173, '16832', 'PNJ/01/2021/00107', '2020-12-21 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:07:34', ''),
(7186, '16832', 'PNJ/01/2021/00108', '2021-01-06 00:00:00', 9600000, 1920000, NULL, 768000, 8448000, '2023-04-11 00:07:34', ''),
(7188, '16832', 'PNJ/01/2021/00109', '2021-01-06 00:00:00', 4900000, 0, NULL, 0, 4900000, '2023-04-11 00:07:34', ''),
(7197, '16832', 'PNJ/01/2021/00110', '2021-01-06 00:00:00', 2800000, 0, NULL, 0, 2800000, '2023-04-11 00:07:34', ''),
(7205, '16832', 'PNJ/01/2021/00111', '2021-01-06 00:00:00', 4435000, 0, NULL, 0, 4435000, '2023-04-11 00:07:34', ''),
(7214, '16832', 'PNJ/01/2021/00113', '2021-01-06 00:00:00', 2750000, 550000, NULL, 0, 2200000, '2023-04-11 00:07:34', ''),
(7223, '16832', 'PNJ/01/2021/00114', '2021-01-06 00:00:00', 2700000, 0, NULL, 270000, 2970000, '2023-04-11 00:07:34', ''),
(7236, '16832', 'PNJ/01/2021/00115', '2021-01-06 00:00:00', 1300000, 0, NULL, 0, 1300000, '2023-04-11 00:07:34', ''),
(7244, '16832', 'PNJ/01/2021/00116', '2021-01-06 00:00:00', 990000, 0, NULL, 0, 990000, '2023-04-11 00:07:34', ''),
(7251, '16832', 'PNJ/01/2021/00117', '2021-01-06 00:00:00', 2880000, 0, NULL, 0, 2880000, '2023-04-11 00:07:34', ''),
(7258, '16832', 'PNJ/01/2021/00118', '2021-01-06 00:00:00', 1800000, 0, NULL, 0, 1800000, '2023-04-11 00:07:34', ''),
(7266, '16832', 'PNJ/01/2021/00119', '2021-01-06 00:00:00', 165000, 0, NULL, 0, 165000, '2023-04-11 00:07:34', ''),
(7276, '16832', 'PNJ/01/2021/00120', '2021-01-06 00:00:00', 1125000, 315000, NULL, 81000, 891000, '2023-04-11 00:07:34', ''),
(7282, '16832', 'PNJ/01/2021/00121', '2021-01-06 00:00:00', 200000, 0, NULL, 0, 200000, '2023-04-11 00:07:34', ''),
(7287, '16832', 'PNJ/01/2021/00122', '2021-01-06 00:00:00', 5250000, 0, NULL, 0, 5250000, '2023-04-11 00:07:34', ''),
(7292, '16832', 'PNJ/01/2021/00123', '2021-01-06 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(7303, '16832', 'PNJ/01/2021/00124', '2021-01-06 00:00:00', 10000000, 0, NULL, 0, 10000000, '2023-04-11 00:07:34', ''),
(7306, '16832', 'PNJ/01/2021/00125', '2021-01-06 00:00:00', 1700000, 0, NULL, 0, 1700000, '2023-04-11 00:07:34', ''),
(7317, '16832', 'PNJ/01/2021/00126', '2021-01-06 00:00:00', 1750000, 175000, NULL, 157500, 1732500, '2023-04-11 00:07:34', ''),
(7325, '16832', 'PNJ/01/2021/00127', '2021-01-06 00:00:00', 1750000, 175000, NULL, 157500, 1732500, '2023-04-11 00:07:34', ''),
(7335, '16832', 'PNJ/01/2021/00128', '2021-01-06 00:00:00', 2727280, 0, NULL, 0, 2727280, '2023-04-11 00:07:34', ''),
(7342, '16832', 'PNJ/01/2021/00129', '2021-01-06 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:07:34', ''),
(7348, '16832', 'PNJ/01/2021/00130', '2021-01-06 00:00:00', 2000000, 0, NULL, 0, 2000000, '2023-04-11 00:07:34', ''),
(7358, '16832', 'PNJ/01/2021/00131', '2021-01-06 00:00:00', 237800, 0, NULL, 0, 237800, '2023-04-11 00:07:34', ''),
(7362, '16832', 'PNJ/01/2021/00132', '2021-01-06 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:07:34', ''),
(7369, '16832', 'PNJ/01/2021/00133', '2021-01-06 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7375, '16832', 'PNJ/01/2021/00134', '2021-01-06 00:00:00', 305000, 0, NULL, 0, 305000, '2023-04-11 00:07:34', ''),
(7383, '16832', 'PNJ/01/2021/00135', '2021-01-06 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:07:34', ''),
(7391, '16832', 'PNJ/01/2021/00136', '2021-01-07 00:00:00', 1650000, 0, NULL, 165000, 1815000, '2023-04-11 00:07:34', ''),
(7393, '16832', 'PNJ/01/2021/00137', '2021-01-07 00:00:00', 2200000, 0, NULL, 220000, 2420000, '2023-04-11 00:07:34', ''),
(7399, '16832', 'PNJ/01/2021/00138', '2021-01-07 00:00:00', 2695200, 0, NULL, 269520, 2964720, '2023-04-11 00:07:34', ''),
(7405, '16832', 'PNJ/01/2021/00139', '2021-01-07 00:00:00', 39500000, 0, NULL, 0, 39500000, '2023-04-11 00:07:34', ''),
(7412, '16832', 'PNJ/01/2021/00140', '2021-01-07 00:00:00', 3500000, 0, NULL, 0, 3500000, '2023-04-11 00:07:34', ''),
(7419, '16832', 'PNJ/01/2021/00141', '2021-01-07 00:00:00', 900000, 0, NULL, 90000, 990000, '2023-04-11 00:07:34', ''),
(7426, '16832', 'PNJ/01/2021/00142', '2021-01-07 00:00:00', 3275000, 0, NULL, 0, 3275000, '2023-04-11 00:07:34', ''),
(7433, '16832', 'PNJ/01/2021/00143', '2021-01-07 00:00:00', 850000, 0, NULL, 0, 850000, '2023-04-11 00:07:34', ''),
(7440, '16832', 'PNJ/01/2021/00144', '2021-01-07 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:07:34', ''),
(7446, '16832', 'PNJ/01/2021/00145', '2021-01-07 00:00:00', 310000, 0, NULL, 0, 310000, '2023-04-11 00:07:34', ''),
(7451, '16832', 'PNJ/01/2021/00146', '2021-01-07 00:00:00', 190000, 0, NULL, 0, 190000, '2023-04-11 00:07:34', ''),
(7457, '16832', 'PNJ/01/2021/00147', '2021-01-07 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(7465, '16832', 'PNJ/01/2021/00148', '2021-01-07 00:00:00', 250000, 0, NULL, 0, 250000, '2023-04-11 00:07:34', ''),
(7469, '16832', 'PNJ/01/2021/00149', '2021-01-07 00:00:00', 90000, 0, NULL, 0, 90000, '2023-04-11 00:07:34', ''),
(7479, '16832', 'PNJ/01/2021/00150', '2021-01-08 00:00:00', 330000, 0, NULL, 0, 330000, '2023-04-11 00:07:34', ''),
(7487, '16832', 'PNJ/01/2021/00151', '2021-01-08 00:00:00', 3750000, 0, NULL, 0, 3750000, '2023-04-11 00:07:34', ''),
(7491, '16832', 'PNJ/01/2021/00152', '2021-01-08 00:00:00', 1930000, 0, NULL, 0, 1930000, '2023-04-11 00:07:34', ''),
(7496, '16832', 'PNJ/01/2021/00154', '2021-01-08 00:00:00', 23500000, 0, NULL, 0, 23500000, '2023-04-11 00:07:34', ''),
(7502, '16832', 'PNJ/01/2021/00155', '2021-01-08 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:07:34', ''),
(7509, '16832', 'PNJ/01/2021/00157', '2021-01-08 00:00:00', 150000, 0, NULL, 15000, 165000, '2023-04-11 00:07:34', ''),
(7514, '16832', 'PNJ/01/2021/00158', '2021-01-08 00:00:00', 50000, 0, NULL, 0, 50000, '2023-04-11 00:07:34', ''),
(7520, '16832', 'PNJ/01/2021/00159', '2021-01-08 00:00:00', 360000, 0, NULL, 36000, 396000, '2023-04-11 00:07:34', ''),
(7527, '16832', 'PNJ/01/2021/00160', '2021-01-08 00:00:00', 2850000, 0, NULL, 0, 2850000, '2023-04-11 00:07:34', ''),
(7534, '16832', 'PNJ/01/2021/00161', '2020-11-10 00:00:00', 38350000, 0, NULL, 3835000, 42185000, '2023-04-11 00:07:34', ''),
(7540, '16832', 'PNJ/01/2021/00163', '2021-01-08 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:07:34', ''),
(7544, '16832', 'PNJ/01/2021/00164', '2021-01-08 00:00:00', 48000000, 5280000, NULL, 4272000, 46992000, '2023-04-11 00:07:34', ''),
(7549, '16832', 'PNJ/01/2021/00165', '2021-01-08 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:07:34', ''),
(7555, '16832', 'PNJ/01/2021/00167', '2021-01-08 00:00:00', 5425000, 0, NULL, 542500, 5967500, '2023-04-11 00:07:34', ''),
(7561, '16832', 'PNJ/01/2021/00168', '2021-01-08 00:00:00', 5250000, 262500, NULL, 498750, 5486250, '2023-04-11 00:07:34', ''),
(7567, '16832', 'PNJ/01/2021/00171', '2021-01-08 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7573, '16832', 'PNJ/01/2021/00172', '2021-01-08 00:00:00', 19000000, 0, NULL, 1900000, 20900000, '2023-04-11 00:07:34', ''),
(7579, '16832', 'PNJ/01/2021/00173', '2021-01-08 00:00:00', 1300000, 0, NULL, 130000, 1430000, '2023-04-11 00:07:34', ''),
(7584, '16832', 'PNJ/01/2021/00174', '2021-01-08 00:00:00', 1250000, 250000, NULL, 100000, 1100000, '2023-04-11 00:07:34', ''),
(7586, '16832', 'PNJ/01/2021/00175', '2021-01-08 00:00:00', 9400000, 0, NULL, 0, 9400000, '2023-04-11 00:07:34', ''),
(7592, '16832', 'PNJ/01/2021/00176', '2021-01-08 00:00:00', 8600000, 0, NULL, 860000, 9460000, '2023-04-11 00:07:34', ''),
(7602, '16832', 'PNJ/01/2021/00177', '2021-01-08 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:07:34', ''),
(7608, '16832', 'PNJ/01/2021/00178', '2021-01-08 00:00:00', 2300000, 230000, NULL, 0, 2070000, '2023-04-11 00:07:34', ''),
(7611, '16832', 'PNJ/01/2021/00179', '2021-01-08 00:00:00', 1440000, 0, NULL, 0, 1440000, '2023-04-11 00:07:34', ''),
(7615, '16832', 'PNJ/01/2021/00180', '2021-01-08 00:00:00', 7500000, 0, NULL, 0, 7500000, '2023-04-11 00:07:34', ''),
(7621, '16832', 'PNJ/01/2021/00181', '2021-01-08 00:00:00', 130000, 0, NULL, 0, 130000, '2023-04-11 00:07:34', ''),
(7628, '16832', 'PNJ/01/2021/00182', '2021-01-08 00:00:00', 5500000, 0, NULL, 0, 5500000, '2023-04-11 00:07:34', ''),
(7633, '16832', 'PNJ/01/2021/00183', '2021-01-08 00:00:00', 18000000, 0, NULL, 1800000, 19800000, '2023-04-11 00:07:34', ''),
(7641, '16832', 'PNJ/01/2021/00184', '2021-01-08 00:00:00', 2700000, 0, NULL, 270000, 2970000, '2023-04-11 00:07:34', ''),
(7648, '16832', 'PNJ/01/2021/00185', '2021-01-08 00:00:00', 1250000, 0, NULL, 125000, 1375000, '2023-04-11 00:07:34', ''),
(7654, '16832', 'PNJ/01/2021/00186', '2021-01-08 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:07:34', ''),
(7659, '16832', 'PNJ/01/2021/00187', '2021-01-08 00:00:00', 120000, 0, NULL, 0, 120000, '2023-04-11 00:07:34', ''),
(7664, '16832', 'PNJ/01/2021/00188', '2021-01-08 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(7669, '16832', 'PNJ/01/2021/00189', '2021-01-08 00:00:00', 185000, 0, NULL, 0, 185000, '2023-04-11 00:07:34', ''),
(7677, '16832', 'PNJ/01/2021/00190', '2021-01-09 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7682, '16832', 'PNJ/01/2021/00191', '2021-01-09 00:00:00', 5125000, 0, NULL, 0, 5125000, '2023-04-11 00:07:34', ''),
(7687, '16832', 'PNJ/01/2021/00192', '2021-01-09 00:00:00', 25000, 0, NULL, 0, 25000, '2023-04-11 00:07:34', ''),
(7691, '16832', 'PNJ/01/2021/00193', '2021-01-09 00:00:00', 145000, 0, NULL, 0, 145000, '2023-04-11 00:07:34', ''),
(7693, '16832', 'PNJ/01/2021/00194', '2021-01-09 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7697, '16832', 'PNJ/01/2021/00195', '2021-01-09 00:00:00', 110000, 0, NULL, 0, 110000, '2023-04-11 00:07:34', ''),
(7700, '16832', 'PNJ/01/2021/00196', '2021-01-10 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7706, '16832', 'PNJ/01/2021/00197', '2021-01-10 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7711, '16832', 'PNJ/01/2021/00198', '2021-01-10 00:00:00', 165000, 0, NULL, 0, 165000, '2023-04-11 00:07:34', ''),
(7715, '16832', 'PNJ/01/2021/00199', '2021-01-11 00:00:00', 372000, 0, NULL, 37200, 409200, '2023-04-11 00:07:34', ''),
(7721, '16832', 'PNJ/01/2021/00200', '2021-01-11 00:00:00', 1545000, 0, NULL, 0, 1545000, '2023-04-11 00:07:34', ''),
(7723, '16832', 'PNJ/01/2021/00201', '2021-01-11 00:00:00', 3000000, 0, NULL, 300000, 3300000, '2023-04-11 00:07:34', ''),
(7728, '16832', 'PNJ/01/2021/00202', '2021-01-11 00:00:00', 1430000, 286000, NULL, 114400, 1258400, '2023-04-11 00:07:34', ''),
(7732, '16832', 'PNJ/01/2021/00203', '2021-01-11 00:00:00', 8300000, 1660000, NULL, 0, 6640000, '2023-04-11 00:07:34', ''),
(7738, '16832', 'PNJ/01/2021/00204', '2021-01-11 00:00:00', 2600000, 0, NULL, 0, 2600000, '2023-04-11 00:07:34', ''),
(7741, '16832', 'PNJ/01/2021/00205', '2020-12-15 00:00:00', 30697300, 0, NULL, 3069730, 33767030, '2023-04-11 00:07:34', ''),
(7743, '16832', 'PNJ/01/2021/00206', '2021-01-11 00:00:00', 300000, 0, NULL, 0, 300000, '2023-04-11 00:07:34', ''),
(7747, '16832', 'PNJ/01/2021/00207', '2021-01-11 00:00:00', 10515000, 2103000, NULL, 841200, 9253200, '2023-04-11 00:07:34', ''),
(7752, '16832', 'PNJ/01/2021/00208', '2021-01-11 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:07:34', ''),
(7758, '16832', 'PNJ/01/2021/00209', '2021-01-11 00:00:00', 3300000, 0, NULL, 0, 3300000, '2023-04-11 00:07:34', ''),
(7763, '16832', 'PNJ/01/2021/00211', '2021-01-11 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(7773, '16832', 'PNJ/01/2021/00212', '2021-01-11 00:00:00', 136400, 0, NULL, 0, 136400, '2023-04-11 00:07:34', ''),
(7776, '16832', 'PNJ/01/2021/00213', '2021-01-11 00:00:00', 3850000, 0, NULL, 385000, 4235000, '2023-04-11 00:07:34', ''),
(7782, '16832', 'PNJ/01/2021/00214', '2021-01-11 00:00:00', 3000000, 0, NULL, 0, 3000000, '2023-04-11 00:07:34', ''),
(7786, '16832', 'PNJ/01/2021/00215', '2021-01-11 00:00:00', 7000000, 0, NULL, 0, 7000000, '2023-04-11 00:07:34', ''),
(7790, '16832', 'PNJ/01/2021/00216', '2021-01-11 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7795, '16832', 'PNJ/01/2021/00217', '2021-01-11 00:00:00', 2750000, 0, NULL, 0, 2750000, '2023-04-11 00:07:34', ''),
(7798, '16832', 'PNJ/01/2021/00218', '2021-01-11 00:00:00', 173000, 0, NULL, 17300, 190300, '2023-04-11 00:07:34', ''),
(7801, '16832', 'PNJ/01/2021/00219', '2021-01-11 00:00:00', 970000, 0, NULL, 97000, 1067000, '2023-04-11 00:07:34', ''),
(7803, '16832', 'PNJ/01/2021/00221', '2021-01-11 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(7808, '16832', 'PNJ/01/2021/00222', '2021-01-11 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7812, '16832', 'PNJ/01/2021/00223', '2021-01-12 00:00:00', 1170000, 0, NULL, 117000, 1287000, '2023-04-11 00:07:34', ''),
(7816, '16832', 'PNJ/01/2021/00224', '2021-01-12 00:00:00', 18000000, 0, NULL, 1800000, 19800000, '2023-04-11 00:07:34', ''),
(7820, '16832', 'PNJ/01/2021/00225', '2021-01-12 00:00:00', 1500000, 0, NULL, 0, 1500000, '2023-04-11 00:07:34', ''),
(7823, '16832', 'PNJ/01/2021/00226', '2021-01-12 00:00:00', 12825000, 0, NULL, 0, 12825000, '2023-04-11 00:07:34', ''),
(7826, '16832', 'PNJ/01/2021/00227', '2021-01-12 00:00:00', 1600000, 0, NULL, 0, 1600000, '2023-04-11 00:07:34', ''),
(7830, '16832', 'PNJ/01/2021/00228', '2021-01-12 00:00:00', 475000, 0, NULL, 0, 475000, '2023-04-11 00:07:34', ''),
(7834, '16832', 'PNJ/01/2021/00229', '2021-01-12 00:00:00', 87500000, 0, NULL, 0, 87500000, '2023-04-11 00:07:34', ''),
(7838, '16832', 'PNJ/01/2021/00230', '2021-01-12 00:00:00', 16144000, 4843200, NULL, 0, 11300800, '2023-04-11 00:07:34', ''),
(7842, '16832', 'PNJ/01/2021/00231', '2021-01-12 00:00:00', 200000, 0, NULL, 0, 200000, '2023-04-11 00:07:34', ''),
(7846, '16832', 'PNJ/01/2021/00232', '2021-01-12 00:00:00', 550000, 0, NULL, 0, 550000, '2023-04-11 00:07:34', ''),
(7849, '16832', 'PNJ/01/2021/00233', '2021-01-12 00:00:00', 1400000, 0, NULL, 0, 1400000, '2023-04-11 00:07:34', ''),
(7851, '16832', 'PNJ/01/2021/00234', '2021-01-12 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(7856, '16832', 'PNJ/01/2021/00236', '2021-01-12 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:07:34', ''),
(7861, '16832', 'PNJ/01/2021/00237', '2021-01-12 00:00:00', 1200000, 0, NULL, 0, 1200000, '2023-04-11 00:07:34', ''),
(7862, '16832', 'PNJ/01/2021/00238', '2021-01-12 00:00:00', 1950000, 390000, NULL, 156000, 1716000, '2023-04-11 00:07:34', ''),
(7866, '16832', 'PNJ/01/2021/00239', '2021-01-12 00:00:00', 140000, 0, NULL, 0, 140000, '2023-04-11 00:07:34', ''),
(7869, '16832', 'PNJ/01/2021/00240', '2021-01-12 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:07:34', ''),
(7872, '16832', 'PNJ/01/2021/00241', '2021-01-12 00:00:00', 9000000, 0, NULL, 0, 9000000, '2023-04-11 00:07:34', ''),
(7873, '16832', 'PNJ/01/2021/00242', '2021-01-12 00:00:00', 859440, 0, NULL, 85944, 945384, '2023-04-11 00:07:34', ''),
(7875, '16832', 'PNJ/01/2021/00243', '2021-01-12 00:00:00', 3000000, 0, NULL, 300000, 3300000, '2023-04-11 00:07:34', ''),
(7880, '16832', 'PNJ/01/2021/00244', '2021-01-12 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7883, '16832', 'PNJ/01/2021/00245', '2021-01-12 00:00:00', 145000, 0, NULL, 0, 145000, '2023-04-11 00:07:34', ''),
(7886, '16832', 'PNJ/01/2021/00246', '2021-01-12 00:00:00', 380000, 0, NULL, 0, 380000, '2023-04-11 00:07:34', ''),
(7889, '16832', 'PNJ/01/2021/00247', '2021-01-12 00:00:00', 237500, 47500, NULL, 19000, 209000, '2023-04-11 00:07:34', ''),
(7890, '16832', 'PNJ/01/2021/00248', '2021-01-12 00:00:00', 700000, 0, NULL, 0, 700000, '2023-04-11 00:07:34', ''),
(7892, '16832', 'PNJ/01/2021/00249', '2021-01-12 00:00:00', 24450000, 4890000, NULL, 1956000, 21516000, '2023-04-11 00:07:34', ''),
(7894, '16832', 'PNJ/01/2021/00250', '2021-01-12 00:00:00', 7500000, 0, NULL, 0, 7500000, '2023-04-11 00:07:34', ''),
(7897, '16832', 'PNJ/01/2021/00251', '2021-01-12 00:00:00', 190000, 0, NULL, 0, 190000, '2023-04-11 00:07:34', ''),
(7900, '16832', 'PNJ/01/2021/00253', '2021-01-12 00:00:00', 2900000, 0, NULL, 0, 2900000, '2023-04-11 00:07:34', ''),
(7903, '16832', 'PNJ/01/2021/00254', '2021-01-12 00:00:00', 3000000, 600000, NULL, 240000, 2640000, '2023-04-11 00:07:34', '');
INSERT INTO `t_transaction` (`id_resto_trx`, `id_agent`, `no_struk`, `date_time`, `subtotal`, `discount`, `dpp`, `tax`, `total`, `createtime`, `service`) VALUES
(7907, '16832', 'PNJ/01/2021/00255', '2021-01-12 00:00:00', 1475000, 0, NULL, 0, 1475000, '2023-04-11 00:07:34', ''),
(7910, '16832', 'PNJ/01/2021/00256', '2021-01-12 00:00:00', 75000, 0, NULL, 0, 75000, '2023-04-11 00:07:34', ''),
(7912, '16832', 'PNJ/01/2021/00257', '2021-01-12 00:00:00', 4875000, 0, NULL, 0, 4875000, '2023-04-11 00:07:34', ''),
(7914, '16832', 'PNJ/01/2021/00258', '2021-01-12 00:00:00', 12800000, 2560000, NULL, 1024000, 11264000, '2023-04-11 00:07:34', ''),
(7916, '16832', 'PNJ/01/2021/00259', '2021-01-12 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(7919, '16832', 'PNJ/01/2021/00260', '2021-01-12 00:00:00', 100000, 0, NULL, 0, 100000, '2023-04-11 00:07:34', ''),
(7921, '16832', 'PNJ/01/2021/00261', '2021-01-13 00:00:00', 1650000, 0, NULL, 165000, 1815000, '2023-04-11 00:07:34', ''),
(7924, '16832', 'PNJ/01/2021/00262', '2021-01-13 00:00:00', 850000, 0, NULL, 0, 850000, '2023-04-11 00:07:34', ''),
(7927, '16832', 'PNJ/01/2021/00263', '2021-01-13 00:00:00', 11000000, 0, NULL, 0, 11000000, '2023-04-11 00:07:34', ''),
(7930, '16832', 'PNJ/01/2021/00264', '2021-01-13 00:00:00', 8800000, 0, NULL, 0, 8800000, '2023-04-11 00:07:34', ''),
(7933, '16832', 'PNJ/01/2021/00265', '2021-01-13 00:00:00', 970000, 0, NULL, 97000, 1067000, '2023-04-11 00:07:34', ''),
(7936, '16832', 'PNJ/01/2021/00266', '2021-01-13 00:00:00', 4681850, 0, NULL, 468185, 5150035, '2023-04-11 00:07:34', ''),
(7938, '16832', 'PNJ/01/2021/00268', '2021-01-13 00:00:00', 1100000, 0, NULL, 0, 1100000, '2023-04-11 00:07:34', ''),
(7940, '16832', 'PNJ/01/2021/00269', '2021-01-13 00:00:00', 1300000, 0, NULL, 0, 1300000, '2023-04-11 00:07:34', ''),
(7943, '16832', 'PNJ/01/2021/00270', '2021-01-13 00:00:00', 48000000, 0, NULL, 0, 48000000, '2023-04-11 00:07:34', ''),
(7948, '16832', 'PNJ/01/2021/00273', '2021-01-08 00:00:00', 25000000, 0, NULL, 2500000, 27500000, '2023-04-11 00:07:34', ''),
(7951, '16832', 'PNJ/01/2021/00274', '2021-01-13 00:00:00', 150000, 0, NULL, 0, 150000, '2023-04-11 00:07:34', ''),
(7953, '16832', 'PNJ/01/2021/00275', '2021-01-13 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:07:34', ''),
(7954, '16832', 'PNJ/01/2021/00277', '2021-01-13 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:07:34', ''),
(7955, '16832', 'PNJ/01/2021/00279', '2021-01-13 00:00:00', 17000000, 0, NULL, 1700000, 18700000, '2023-04-11 00:07:34', ''),
(7957, '16832', 'PNJ/01/2021/00280', '2021-01-13 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7959, '16832', 'PNJ/01/2021/00281', '2021-01-13 00:00:00', 540000, 54000, NULL, 0, 486000, '2023-04-11 00:07:34', ''),
(7961, '16832', 'PNJ/01/2021/00282', '2021-01-08 00:00:00', 3200000, 0, NULL, 0, 3200000, '2023-04-11 00:07:34', ''),
(7962, '16832', 'PNJ/01/2021/00284', '2021-01-13 00:00:00', 1970000, 0, NULL, 197000, 2167000, '2023-04-11 00:07:34', ''),
(7965, '16832', 'PNJ/01/2021/00285', '2021-01-13 00:00:00', 2250000, 0, NULL, 0, 2250000, '2023-04-11 00:07:34', ''),
(7966, '16832', 'PNJ/01/2021/00286', '2021-01-13 00:00:00', 4640000, 0, NULL, 0, 4640000, '2023-04-11 00:07:34', ''),
(7967, '16832', 'PNJ/01/2021/00287', '2021-01-13 00:00:00', 4700000, 940000, NULL, 376000, 4136000, '2023-04-11 00:07:34', ''),
(7969, '16832', 'PNJ/01/2021/00288', '2021-01-13 00:00:00', 2695000, 0, NULL, 0, 2695000, '2023-04-11 00:07:34', ''),
(7971, '16832', 'PNJ/01/2021/00289', '2021-01-13 00:00:00', 500000, 0, NULL, 0, 500000, '2023-04-11 00:07:34', ''),
(7973, '16832', 'PNJ/01/2021/00290', '2021-01-13 00:00:00', 2800000, 560000, NULL, 0, 2240000, '2023-04-11 00:07:34', ''),
(7975, '16832', 'PNJ/01/2021/00291', '2021-01-13 00:00:00', 8800000, 1320000, NULL, 0, 7480000, '2023-04-11 00:07:34', ''),
(7977, '16832', 'PNJ/01/2021/00292', '2021-01-13 00:00:00', 4900000, 0, NULL, 0, 4900000, '2023-04-11 00:07:34', ''),
(7978, '16832', 'PNJ/01/2021/00293', '2021-01-13 00:00:00', 170000, 0, NULL, 0, 170000, '2023-04-11 00:07:34', ''),
(7979, '16832', 'PNJ/01/2021/00295', '2021-01-13 00:00:00', 145399000, 7269950, NULL, 13812905, 151941955, '2023-04-11 00:07:34', ''),
(7981, '16832', 'PNJ/01/2021/00296', '2021-01-13 00:00:00', 976000, 0, NULL, 0, 976000, '2023-04-11 00:07:34', ''),
(7983, '16832', 'PNJ/01/2021/00297', '2021-01-13 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7985, '16832', 'PNJ/01/2021/00298', '2021-01-13 00:00:00', 135000, 0, NULL, 0, 135000, '2023-04-11 00:07:34', ''),
(7987, '16832', 'PNJ/01/2021/00299', '2021-01-13 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(7988, '16832', 'PNJ/01/2021/00300', '2021-01-13 00:00:00', 165000, 0, NULL, 0, 165000, '2023-04-11 00:07:34', ''),
(7990, '16832', 'PNJ/01/2021/00301', '2021-01-14 00:00:00', 4575000, 0, NULL, 0, 4575000, '2023-04-11 00:07:34', ''),
(7991, '16832', 'PNJ/01/2021/00302', '2021-01-14 00:00:00', 1500000, 150000, NULL, 135000, 1485000, '2023-04-11 00:07:34', ''),
(7992, '16832', 'PNJ/01/2021/00303', '2021-01-14 00:00:00', 8260000, 0, NULL, 0, 8260000, '2023-04-11 00:07:34', ''),
(7993, '16832', 'PNJ/01/2021/00304', '2021-01-14 00:00:00', 7575000, 0, NULL, 0, 7575000, '2023-04-11 00:07:34', ''),
(7995, '16832', 'PNJ/01/2021/00305', '2021-01-14 00:00:00', 4450000, 0, NULL, 0, 4450000, '2023-04-11 00:07:34', ''),
(7997, '16832', 'PNJ/01/2021/00308', '2021-01-14 00:00:00', 35000, 0, NULL, 0, 35000, '2023-04-11 00:07:34', ''),
(7999, '16832', 'PNJ/01/2021/00309', '2021-01-14 00:00:00', 3700000, 0, NULL, 370000, 4070000, '2023-04-11 00:07:34', ''),
(8001, '16832', 'PNJ/01/2021/00310', '2021-01-14 00:00:00', 9000000, 0, NULL, 900000, 9900000, '2023-04-11 00:07:34', ''),
(8003, '16832', 'PNJ/01/2021/00312', '2021-01-14 00:00:00', 25500000, 8925000, NULL, 1657500, 18232500, '2023-04-11 00:07:34', ''),
(8004, '16832', 'PNJ/01/2021/00313', '2021-01-13 00:00:00', 59625000, 0, NULL, 5962500, 65587500, '2023-04-11 00:07:34', ''),
(8005, '16832', 'PNJ/01/2021/00314', '2021-01-14 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(8006, '16832', 'PNJ/01/2021/00315', '2021-01-14 00:00:00', 150000, 0, NULL, 0, 150000, '2023-04-11 00:07:34', ''),
(8007, '16832', 'PNJ/01/2021/00317', '2021-01-14 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:07:34', ''),
(8008, '16832', 'PNJ/01/2021/00319', '2021-01-14 00:00:00', 540000, 54000, NULL, 48600, 534600, '2023-04-11 00:07:34', ''),
(8009, '16832', 'PNJ/01/2021/00320', '2021-01-14 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(8011, '16832', 'PNJ/01/2021/00321', '2021-01-14 00:00:00', 3750000, 0, NULL, 0, 3750000, '2023-04-11 00:07:34', ''),
(8013, '16832', 'PNJ/01/2021/00322', '2021-01-14 00:00:00', 21250000, 0, NULL, 0, 21250000, '2023-04-11 00:07:34', ''),
(8015, '16832', 'PNJ/01/2021/00323', '2021-01-14 00:00:00', 160000, 0, NULL, 0, 160000, '2023-04-11 00:07:34', ''),
(8017, '16832', 'PNJ/01/2021/00324', '2021-01-14 00:00:00', 750000, 0, NULL, 0, 750000, '2023-04-11 00:07:34', ''),
(8019, '16832', 'PNJ/01/2021/00326', '2021-01-14 00:00:00', 2500000, 0, NULL, 0, 2500000, '2023-04-11 00:07:34', ''),
(8020, '16832', 'PNJ/01/2021/00327', '2021-01-14 00:00:00', 585000, 0, NULL, 0, 585000, '2023-04-11 00:07:34', ''),
(8021, '16832', 'PNJ/01/2021/00328', '2021-01-14 00:00:00', 900000, 0, NULL, 0, 900000, '2023-04-11 00:07:34', ''),
(8022, '16832', 'PNJ/01/2021/00329', '2021-01-14 00:00:00', 2500000, 0, NULL, 0, 2500000, '2023-04-11 00:07:34', ''),
(8023, '16832', 'PNJ/01/2021/00330', '2021-01-14 00:00:00', 3900000, 780000, NULL, 312000, 3432000, '2023-04-11 00:07:34', ''),
(8025, '16832', 'PNJ/01/2021/00331', '2021-01-14 00:00:00', 45000, 0, NULL, 0, 45000, '2023-04-11 00:07:34', ''),
(8330, '16832', 'PNJ/01/2021/00001', '2021-01-01 00:00:00', 600000, 0, NULL, 0, 600000, '2023-04-11 00:23:33', ''),
(8331, '16832', 'PNJ/01/2021/00002', '2021-01-01 00:00:00', 105000, 0, NULL, 0, 105000, '2023-04-11 00:23:33', ''),
(8332, '16832', 'PNJ/01/2021/00003', '2021-01-01 00:00:00', 65000, 0, NULL, 0, 65000, '2023-04-11 00:23:33', ''),
(8333, '16832', 'PNJ/01/2021/00004', '2021-01-01 00:00:00', 25000, 0, NULL, 0, 25000, '2023-04-11 00:23:33', ''),
(8334, '16832', 'PNJ/01/2021/00005', '2021-01-01 00:00:00', 70000, 0, NULL, 0, 70000, '2023-04-11 00:23:33', ''),
(8335, '16834', 'PNJ/01/2022/01363', '2023-01-28 00:00:00', 5000000, 0, NULL, 500000, 5500000, '2023-04-11 00:03:07', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `u_majoo_users`
--

CREATE TABLE `u_majoo_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_agent` varchar(25) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `is_cms` varchar(3) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `last_pool` date DEFAULT NULL,
  `loadtime` varchar(25) NOT NULL,
  `nama_usaha` varchar(25) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `xstatus` varchar(25) NOT NULL,
  `active` int(1) NOT NULL,
  `node_id` varchar(25) DEFAULT NULL,
  `type_api` varchar(250) DEFAULT NULL,
  `id_cabang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_omset`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_omset` (
`id_op` varchar(250)
,`nama_objek_pajak` varchar(250)
,`niop` varchar(250)
,`id_agent` varchar(25)
,`date_time` datetime
,`total` double
,`tax` double
,`dpp` double
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_omset`
--
DROP TABLE IF EXISTS `v_omset`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_omset`  AS  select `o`.`id_objek_pajak` AS `id_op`,`o`.`nama_objek_pajak` AS `nama_objek_pajak`,`o`.`niop` AS `niop`,`t`.`id_agent` AS `id_agent`,`t`.`date_time` AS `date_time`,sum(`t`.`total`) AS `total`,sum(`t`.`tax`) AS `tax`,sum(`t`.`dpp`) AS `dpp` from ((`t_transaction` `t` join `m_agent` `a` on(`t`.`id_agent` = `a`.`id_agent`)) join `m_objek_pajak` `o` on(`a`.`id_objek_pajak` = `o`.`id_objek_pajak`)) group by `t`.`id_agent`,`t`.`date_time` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `d_data_barang`
--
ALTER TABLE `d_data_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `d_data_barang_edit`
--
ALTER TABLE `d_data_barang_edit`
  ADD PRIMARY KEY (`id_inventaris`);

--
-- Indeks untuk tabel `d_jenis_barang`
--
ALTER TABLE `d_jenis_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `d_jenis_barang_edit`
--
ALTER TABLE `d_jenis_barang_edit`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `m_agent`
--
ALTER TABLE `m_agent`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  ADD UNIQUE KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indeks untuk tabel `m_klasifikasi_pajak`
--
ALTER TABLE `m_klasifikasi_pajak`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indeks untuk tabel `m_klasifikasi_pajak_edit`
--
ALTER TABLE `m_klasifikasi_pajak_edit`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indeks untuk tabel `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indeks untuk tabel `m_menu_child`
--
ALTER TABLE `m_menu_child`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `m_menu_header`
--
ALTER TABLE `m_menu_header`
  ADD PRIMARY KEY (`menu_header_id`);

--
-- Indeks untuk tabel `m_menu_level`
--
ALTER TABLE `m_menu_level`
  ADD PRIMARY KEY (`id_arr`);

--
-- Indeks untuk tabel `m_menu_level_dashboard`
--
ALTER TABLE `m_menu_level_dashboard`
  ADD PRIMARY KEY (`id_arr`);

--
-- Indeks untuk tabel `m_objek_pajak`
--
ALTER TABLE `m_objek_pajak`
  ADD PRIMARY KEY (`id_objek_pajak`);

--
-- Indeks untuk tabel `m_objek_pajak_edit`
--
ALTER TABLE `m_objek_pajak_edit`
  ADD PRIMARY KEY (`id_objek_pajak`);

--
-- Indeks untuk tabel `m_setting_parameter`
--
ALTER TABLE `m_setting_parameter`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `m_user_edit`
--
ALTER TABLE `m_user_edit`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `m_wajib_pajak`
--
ALTER TABLE `m_wajib_pajak`
  ADD PRIMARY KEY (`id_wajib_pajak`);

--
-- Indeks untuk tabel `m_wajib_pajak_edit`
--
ALTER TABLE `m_wajib_pajak_edit`
  ADD PRIMARY KEY (`id_wajib_pajak`);

--
-- Indeks untuk tabel `t_transaction`
--
ALTER TABLE `t_transaction`
  ADD PRIMARY KEY (`id_resto_trx`),
  ADD UNIQUE KEY `id_resto_trx` (`id_resto_trx`),
  ADD KEY `id_transaksi` (`id_resto_trx`),
  ADD KEY `no_struk` (`no_struk`);

--
-- Indeks untuk tabel `u_majoo_users`
--
ALTER TABLE `u_majoo_users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_agent`
--
ALTER TABLE `m_agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `m_menu_child`
--
ALTER TABLE `m_menu_child`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `m_menu_header`
--
ALTER TABLE `m_menu_header`
  MODIFY `menu_header_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `m_menu_level`
--
ALTER TABLE `m_menu_level`
  MODIFY `id_arr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32519;

--
-- AUTO_INCREMENT untuk tabel `m_menu_level_dashboard`
--
ALTER TABLE `m_menu_level_dashboard`
  MODIFY `id_arr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5206;

--
-- AUTO_INCREMENT untuk tabel `t_transaction`
--
ALTER TABLE `t_transaction`
  MODIFY `id_resto_trx` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8336;

--
-- AUTO_INCREMENT untuk tabel `u_majoo_users`
--
ALTER TABLE `u_majoo_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
