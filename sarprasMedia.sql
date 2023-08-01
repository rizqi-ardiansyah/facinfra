-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 06:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarprasmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `kategori_id` varchar(191) NOT NULL,
  `nama_barang` varchar(191) NOT NULL,
  `satuan` varchar(191) NOT NULL,
  `jumlah` varchar(191) NOT NULL,
  `jumlah_rusak` varchar(191) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barang_news`
--

CREATE TABLE `barang_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(191) DEFAULT NULL,
  `tahun_anggaran` varchar(191) DEFAULT NULL,
  `kode_barang` varchar(191) DEFAULT NULL,
  `nama_barang` varchar(191) DEFAULT NULL,
  `merk_type` varchar(191) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_perolehan` date DEFAULT NULL,
  `rupiah_satuan` varchar(191) NOT NULL DEFAULT '0',
  `ruang` varchar(191) DEFAULT NULL,
  `kondisi_barang` varchar(191) DEFAULT NULL,
  `gambar` varchar(191) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang_news`
--

INSERT INTO `barang_news` (`id`, `kode`, `tahun_anggaran`, `kode_barang`, `nama_barang`, `merk_type`, `jumlah`, `tanggal_perolehan`, `rupiah_satuan`, `ruang`, `kondisi_barang`, `gambar`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023B0001', '2023', 'B0001', 'Kipas Angin', 'Panasonic', 3, '2023-09-28', '400000', '3', 'Baik', 'storage/gambar/060703-5-2023B0001.png', 1, 1, NULL, '2023-06-27 20:19:31', '2023-07-05 20:11:14', NULL),
(6, '2023B0002', '2023', 'B0002', 'Laptop', 'Asus', 3, '2024-02-28', '5000000', '2', 'Baik', 'storage/gambar/060703-9-2023B0002.png', 1, 1, NULL, '2023-06-27 20:52:54', '2023-07-05 20:10:41', NULL),
(8, '2023B0008', '2023', 'B0008', 'Spidol', 'Panasonic', 0, '2023-07-05', '30000', '5', 'Baik', 'storage/gambar/280603-1-2023B0001.jpg', 1, 1, NULL, '2023-07-05 00:24:51', '2023-07-05 20:11:28', NULL),
(14, '2023B00014', '2023', 'B00014', 'texw', 'Kipas Angin', 0, '2023-07-07', '40000', '1', 'Baik', NULL, 1, 1, NULL, '2023-07-06 19:49:36', '2023-07-06 19:49:36', NULL),
(15, '2023B00015', '2023', 'B00015', 'Dispenser', 'Panasonic', 0, '2023-07-07', '40000', '2', 'Baik', 'storage/gambar/070703-2-2023B00015.png', 1, 1, NULL, '2023-07-06 20:22:57', '2023-07-06 20:22:57', NULL),
(16, '2023B00016', '2023', 'B00016', 'Lighting', 'Godox', 0, '2023-07-31', '0', '1', 'Baik', 'storage/gambar/310702-5-2023B00016.png', 1, 1, NULL, '2023-07-30 19:34:26', '2023-07-30 19:59:37', NULL),
(17, '2023B00017', '2023', 'B00017', 'Video capture', 'Panasonic', 3, '2023-07-31', '35000', '4', 'Baik', 'storage/gambar/310703-10-2023B00017.png', 1, 1, NULL, '2023-07-30 20:01:55', '2023-07-30 20:42:45', NULL),
(18, '2023B00018', '2023', 'B00018', 'tES', 'YEX', 0, '2023-07-31', '23000', '9', 'Baik', 'storage/gambar/310703-9-2023B00018.jpg', 1, 1, NULL, '2023-07-30 20:43:18', '2023-07-30 20:43:18', NULL),
(19, '2023B00019', '2023', 'B00019', 'DNCD', 'ECEC', 3, '2023-08-31', '23000', '9', 'Baik', 'storage/gambar/310703-2-2023B00019.jpg', 1, 1, NULL, '2023-07-30 20:44:50', '2023-07-30 20:44:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `input_ruangan`
--

CREATE TABLE `input_ruangan` (
  `id_input_ruangan` bigint(20) UNSIGNED NOT NULL,
  `id_ruangan_barang` int(11) NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_masuk` varchar(191) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jumlah_rusak_ruangan` varchar(191) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `input_ruangan`
--

INSERT INTO `input_ruangan` (`id_input_ruangan`, `id_ruangan_barang`, `id_barang`, `jumlah_masuk`, `tanggal_masuk`, `jumlah_rusak_ruangan`, `created_at`, `updated_at`) VALUES
(1, 2, '123', '3', '2023-06-30', '5', '2023-06-01 08:22:12', '2023-06-01 08:22:12');

--
-- Triggers `input_ruangan`
--
DELIMITER $$
CREATE TRIGGER `tg_barang_masuk` AFTER INSERT ON `input_ruangan` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_masuk
                WHERE
                id_barang = NEW.id_barang;
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kategori` varchar(191) DEFAULT NULL,
  `nama_kategori` varchar(191) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `kode_kategori`, `nama_kategori`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '11', 'Tes12', 1, 1, NULL, '2023-06-27 00:07:16', '2023-06-27 00:07:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `id_keluar` bigint(20) UNSIGNED NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_keluar` varchar(191) NOT NULL,
  `untuk` varchar(191) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `keluar`
--
DELIMITER $$
CREATE TRIGGER `tg_barang_keluar` AFTER INSERT ON `keluar` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_keluar
                WHERE
                id_barang = NEW.id_barang;
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_keluar`
--

CREATE TABLE `keranjang_keluar` (
  `id_keluar` bigint(20) UNSIGNED NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_keluar` varchar(191) NOT NULL,
  `untuk` varchar(191) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_masuk`
--

CREATE TABLE `keranjang_masuk` (
  `id_masuk` bigint(20) UNSIGNED NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_asup` varchar(191) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_satuan` varchar(191) NOT NULL,
  `harga_total` varchar(191) NOT NULL,
  `nama_toko` varchar(191) NOT NULL,
  `merek` varchar(191) NOT NULL,
  `sumber_dana` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang_masuk`
--

INSERT INTO `keranjang_masuk` (`id_masuk`, `id_barang`, `jumlah_asup`, `tanggal_masuk`, `harga_satuan`, `harga_total`, `nama_toko`, `merek`, `sumber_dana`, `created_at`, `updated_at`) VALUES
(1, '2', '4', '2023-06-01', '45000', '50000', 'tukiman', 'panasonic', 'rr', '2023-06-01 09:05:48', '2023-06-01 09:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_peminjaman`
--

CREATE TABLE `keranjang_peminjaman` (
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `nama_peminjam` varchar(191) NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_pinjam` varchar(191) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_ruangan`
--

CREATE TABLE `keranjang_ruangan` (
  `id_input_ruangan` bigint(20) UNSIGNED NOT NULL,
  `id_ruangan` varchar(191) NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_masuk` varchar(191) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang_ruangan`
--

INSERT INTO `keranjang_ruangan` (`id_input_ruangan`, `id_ruangan`, `id_barang`, `jumlah_masuk`, `tanggal_masuk`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '2', '2023-06-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_rusak_luar`
--

CREATE TABLE `keranjang_rusak_luar` (
  `id_rusak_luar` bigint(20) UNSIGNED NOT NULL,
  `id_barang_rusak_luar` varchar(191) NOT NULL,
  `jumlah_rusak_luar` varchar(191) NOT NULL,
  `tanggal_rusak_luar` date NOT NULL,
  `status` varchar(191) NOT NULL,
  `user_id_luar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_rusak_ruangan`
--

CREATE TABLE `keranjang_rusak_ruangan` (
  `id_rusak_ruangan` bigint(20) UNSIGNED NOT NULL,
  `id_barang_rusak` varchar(191) NOT NULL,
  `jumlah_rusak_ruangan` varchar(191) NOT NULL,
  `id_ruangan_rusak` varchar(191) NOT NULL,
  `tanggal_rusak` date NOT NULL,
  `status` varchar(191) NOT NULL,
  `user_id_ruangan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `id_masuk` bigint(20) UNSIGNED NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_asup` varchar(191) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_satuan` varchar(191) NOT NULL,
  `harga_total` varchar(191) NOT NULL,
  `nama_toko` varchar(191) NOT NULL,
  `merek` varchar(191) NOT NULL,
  `sumber_dana` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `masuk`
--
DELIMITER $$
CREATE TRIGGER `tg_masuk_barang` AFTER INSERT ON `masuk` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah + NEW.jumlah_asup
                WHERE
                id_barang = NEW.id_barang;
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_05_13_034444_create_rusak_ruangan', 1),
(4, '2020_05_13_034701_create_rusak_luar', 1),
(5, '2020_05_13_034908_create_ruangan', 1),
(6, '2020_05_13_035014_create_peminjaman', 1),
(7, '2020_05_13_035436_create_masuk', 1),
(8, '2020_05_13_035635_create_keranjang_rusak_ruangan', 1),
(9, '2020_05_13_035943_create_keranjang_rusak_luar', 1),
(10, '2020_05_13_064635_create_keranjang_ruangan', 1),
(11, '2020_05_13_064823_create_keranjang_peminjaman', 1),
(12, '2020_05_13_065038_create_keranjang_masuk', 1),
(13, '2020_05_13_065429_create_keranjang_keluar', 1),
(14, '2020_05_13_065558_create_keluar', 1),
(15, '2020_05_13_065732_create_kategori', 1),
(16, '2020_05_13_065838_create_input_ruangan', 1),
(17, '2020_05_13_070559_create_barangs', 1),
(18, '2020_05_13_071648_add_trigger', 1),
(20, '2022_04_20_131421_create_ruangans_table', 1),
(21, '2022_04_20_150246_create_kategoris_table', 1),
(22, '2022_04_26_142613_alter_table_barang_news_change_tanggal_perolehan', 1),
(23, '2022_04_20_131421_create_ruangan_table', 2),
(24, '2023_06_27_072236_create_table_ruangan', 3),
(25, '2023_06_27_072701_create_ruangans_table', 4),
(26, '2023_06_27_072759_create_ruangan_table', 5),
(27, '2022_04_18_145831_create_barang_news_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `nama_peminjam` varchar(191) NOT NULL,
  `id_barang` varchar(191) NOT NULL,
  `jumlah_pinjam` varchar(191) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nama_peminjam`, `id_barang`, `jumlah_pinjam`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dul', '1', '2', '2023-07-01', '2023-07-08', 'Sudah Dikembalikan', NULL, NULL),
(2, 'Dul 2', '6', '1', '2023-07-01', '2023-07-08', 'Sudah Dikembalikan', NULL, NULL),
(3, 'Dul', '1', '2', '2023-07-01', '2023-07-07', 'Belum Dikembalikan', NULL, NULL),
(4, 'Rizqi', '6', '3', '2023-07-12', '2023-07-15', 'Belum Dikembalikan', NULL, NULL);

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `tg_pinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_pinjam
                WHERE
                id_barang = NEW.id_barang;
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` bigint(20) UNSIGNED NOT NULL,
  `ruangan` varchar(191) NOT NULL,
  `id_pembimbing` varchar(191) DEFAULT NULL,
  `id_pj` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ruangan` varchar(191) NOT NULL,
  `nama_ruangan` varchar(191) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `kode_ruangan`, `nama_ruangan`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'R001', 'Kantor', 1, 1, NULL, '2023-06-27 19:21:47', '2023-06-27 19:21:47', NULL),
(2, 'R002', 'Ruang Guru', 1, 1, NULL, '2023-06-27 19:22:08', '2023-06-27 19:22:08', NULL),
(3, 'R003', 'Perpustakaan', 1, 1, NULL, '2023-06-27 19:22:25', '2023-06-27 19:22:25', NULL),
(4, 'R004', 'Ruang Komputer', 1, 1, NULL, '2023-06-27 19:22:57', '2023-06-27 19:22:57', NULL),
(5, 'R005', 'Kelas 7', 1, 1, NULL, '2023-06-27 19:23:21', '2023-06-27 19:23:21', NULL),
(6, 'R006', 'Kelas 8', 1, 1, NULL, '2023-06-27 19:23:34', '2023-06-27 19:23:34', NULL),
(7, 'R007', 'Kelas 9', 1, 1, NULL, '2023-06-27 19:23:48', '2023-06-27 19:23:48', NULL),
(8, 'R008', 'Kamar Mandi', 1, 1, NULL, '2023-06-27 19:24:48', '2023-06-27 19:24:48', NULL),
(9, 'R009', 'Media', 1, 1, NULL, '2023-07-30 20:06:14', '2023-07-30 20:06:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rusak_luar`
--

CREATE TABLE `rusak_luar` (
  `id_rusak_luar` bigint(20) UNSIGNED NOT NULL,
  `id_barang_rusak_luar` varchar(191) NOT NULL,
  `jumlah_rusak_luar` varchar(191) NOT NULL,
  `tanggal_rusak_luar` date NOT NULL,
  `status` varchar(191) NOT NULL,
  `user_id_luar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `rusak_luar`
--
DELIMITER $$
CREATE TRIGGER `tg_rusak_luar` AFTER INSERT ON `rusak_luar` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_rusak_luar
                WHERE
                id_barang = NEW.id_barang_rusak_luar;
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rusak_ruangan`
--

CREATE TABLE `rusak_ruangan` (
  `id_rusak_ruangan` bigint(20) UNSIGNED NOT NULL,
  `id_barang_rusak` varchar(191) NOT NULL,
  `jumlah_rusak_ruangan` varchar(191) NOT NULL,
  `id_ruangan_rusak` varchar(191) NOT NULL,
  `tanggal_rusak` date NOT NULL,
  `status` varchar(191) NOT NULL,
  `user_id_ruangan` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `rusak_ruangan`
--
DELIMITER $$
CREATE TRIGGER `tg_rusak_ruangan` AFTER INSERT ON `rusak_ruangan` FOR EACH ROW BEGIN
                UPDATE input_ruangan
                SET jumlah_masuk = jumlah_masuk - NEW.jumlah_rusak_ruangan
                WHERE
                id_barang = NEW.id_barang_rusak
                AND
                id_ruangan_barang=NEW.id_ruangan_rusak;
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `level` enum('rayon','pj','admin','bukan_pj') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, 'admin', '$2y$10$7A5IlPP.RtpE9H91CDq06O4iOyuqOJvWswo4ao/jNiQyeop3lnbGW', 'admin', NULL, NULL, NULL),
(2, 'Rizqi', 'rizqi@gmail.com', NULL, 'rizqi', '$2y$10$74INwKih.ejRsaSCxFeCduiSywLSwD1KJNPkM9mk4vF9U7j0F6EKy', 'pj', NULL, '2023-06-25 21:36:36', '2023-06-25 21:36:36'),
(3, 'Abduh 2', 'abduh@gmail.com', NULL, 'abduh', '$2y$10$A1gAF2zpBdsT9Wdj6H5k.etLuUFmkAM0QK0Cq05RDaWwkoZcOaTee', 'admin', NULL, '2023-07-11 02:23:27', '2023-07-11 02:23:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_news`
--
ALTER TABLE `barang_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_news_kode_index` (`kode`);

--
-- Indexes for table `input_ruangan`
--
ALTER TABLE `input_ruangan`
  ADD PRIMARY KEY (`id_input_ruangan`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id_keluar`);

--
-- Indexes for table `keranjang_keluar`
--
ALTER TABLE `keranjang_keluar`
  ADD PRIMARY KEY (`id_keluar`);

--
-- Indexes for table `keranjang_masuk`
--
ALTER TABLE `keranjang_masuk`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indexes for table `keranjang_peminjaman`
--
ALTER TABLE `keranjang_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `keranjang_ruangan`
--
ALTER TABLE `keranjang_ruangan`
  ADD PRIMARY KEY (`id_input_ruangan`);

--
-- Indexes for table `keranjang_rusak_luar`
--
ALTER TABLE `keranjang_rusak_luar`
  ADD PRIMARY KEY (`id_rusak_luar`);

--
-- Indexes for table `keranjang_rusak_ruangan`
--
ALTER TABLE `keranjang_rusak_ruangan`
  ADD PRIMARY KEY (`id_rusak_ruangan`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rusak_luar`
--
ALTER TABLE `rusak_luar`
  ADD PRIMARY KEY (`id_rusak_luar`);

--
-- Indexes for table `rusak_ruangan`
--
ALTER TABLE `rusak_ruangan`
  ADD PRIMARY KEY (`id_rusak_ruangan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang_news`
--
ALTER TABLE `barang_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `input_ruangan`
--
ALTER TABLE `input_ruangan`
  MODIFY `id_input_ruangan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_keluar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang_keluar`
--
ALTER TABLE `keranjang_keluar`
  MODIFY `id_keluar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang_masuk`
--
ALTER TABLE `keranjang_masuk`
  MODIFY `id_masuk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang_peminjaman`
--
ALTER TABLE `keranjang_peminjaman`
  MODIFY `id_peminjaman` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang_ruangan`
--
ALTER TABLE `keranjang_ruangan`
  MODIFY `id_input_ruangan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang_rusak_luar`
--
ALTER TABLE `keranjang_rusak_luar`
  MODIFY `id_rusak_luar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang_rusak_ruangan`
--
ALTER TABLE `keranjang_rusak_ruangan`
  MODIFY `id_rusak_ruangan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_masuk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruangan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rusak_luar`
--
ALTER TABLE `rusak_luar`
  MODIFY `id_rusak_luar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rusak_ruangan`
--
ALTER TABLE `rusak_ruangan`
  MODIFY `id_rusak_ruangan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
