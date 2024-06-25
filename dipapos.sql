-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 07:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dipapos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hutangs`
--

CREATE TABLE `hutangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `due_date` date NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Makanan', '2024-05-13 03:11:15', '2024-05-13 04:21:45'),
(2, 'Minuman', '2024-05-13 04:05:45', '2024-05-13 04:05:45'),
(5, 'Cemilan', '2024-05-29 04:44:40', '2024-05-29 04:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(4, '00001', 'bertot', 'jln. merdeka', '085354868566', '2024-05-27 00:55:37', '2024-05-27 00:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(37, '2024_03_20_080923_tambah_kolom_baru_to_users_table', 2),
(38, '2024_03_20_133725_buat_kategori_table', 3),
(39, '2024_03_20_135050_buat_produk_table', 3),
(40, '2024_03_20_140105_buat_member_table', 3),
(41, '2024_03_20_140838_buat_supplier_table', 3),
(42, '2024_03_20_142145_buat_pembelian_table', 3),
(43, '2024_03_20_142209_buat_pembelian_detail_table', 3),
(44, '2024_03_20_142247_buat_penjualan_detail_table', 3),
(45, '2024_03_20_142321_buat_penjualan_table', 3),
(46, '2024_03_20_142353_buat_setting_table', 3),
(47, '2024_03_20_145544_buat_pengeluaran_table', 3),
(48, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(49, '2024_03_25_033151_create_sessions_table', 4),
(50, '2024_05_16_030731_tambah_foreign_key_to_produk_table', 5),
(51, '2024_05_21_063511_tambah_foreign_key_to_produk_table', 6),
(52, '2024_05_22_040857_tambah_foreign_key_to_produk_table', 7),
(53, '2024_05_22_160545_tambah_kode_produk_to_produk_table', 8),
(54, '2024_06_06_200731_edit_id_member_to_penjualan_table', 9),
(55, '2024_06_25_095924_create_hutang_table', 10),
(56, '2024_06_25_100855_create_customer_table', 11),
(57, '2024_06_25_100906_create_hutang_table', 11),
(58, '2024_06_25_101339_create_hutangs_table', 12),
(59, '2024_06_25_102805_create_customer_table', 13),
(60, '2024_06_25_103221_create_hutangs_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(13, 2, 3, 6000, 0, 6000, '2024-05-27 00:41:23', '2024-05-27 00:41:45'),
(14, 2, 1, 2000, 0, 2000, '2024-05-27 00:43:58', '2024-05-27 00:44:10'),
(15, 2, 1, 2000, 0, 2000, '2024-05-27 00:56:42', '2024-05-27 01:01:11'),
(16, 2, 4, 8000, 0, 8000, '2024-05-27 01:20:31', '2024-05-27 01:21:02'),
(17, 2, 2, 4000, 0, 4000, '2024-05-27 01:35:12', '2024-05-27 01:35:42'),
(18, 2, 1, 2000, 0, 2000, '2024-05-28 20:18:34', '2024-05-28 20:18:45'),
(19, 3, 1, 2000, 0, 2000, '2024-05-29 04:48:04', '2024-05-29 04:48:26'),
(20, 2, 51, 102000, 0, 102000, '2024-05-29 04:49:20', '2024-05-29 04:50:22'),
(31, 3, 2, 4000, 0, 4000, '2024-06-04 01:57:19', '2024-06-04 01:57:45'),
(36, 3, 1000, 2000000, 5, 1900000, '2024-06-04 18:03:22', '2024-06-04 18:04:20'),
(37, 3, 0, 0, 0, 0, '2024-06-07 03:58:41', '2024-06-07 03:58:41'),
(38, 3, 0, 0, 0, 0, '2024-06-07 05:01:57', '2024-06-07 05:01:57'),
(39, 3, 0, 0, 0, 0, '2024-06-07 05:37:55', '2024-06-07 05:37:55'),
(40, 3, 6, 25000, 0, 25000, '2024-06-07 05:38:30', '2024-06-07 05:39:16'),
(41, 3, 0, 0, 0, 0, '2024-06-07 05:52:04', '2024-06-07 05:52:04'),
(42, 3, 0, 0, 0, 0, '2024-06-07 05:53:28', '2024-06-07 05:53:28'),
(43, 2, 0, 0, 0, 0, '2024-06-07 05:54:59', '2024-06-07 05:54:59'),
(44, 3, 0, 0, 0, 0, '2024-06-07 06:02:27', '2024-06-07 06:02:27'),
(45, 3, 0, 0, 0, 0, '2024-06-12 10:07:17', '2024-06-12 10:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 13, 11, 2000, 3, 6000, '2024-05-27 00:41:29', '2024-05-27 00:41:38'),
(2, 14, 11, 2000, 1, 2000, '2024-05-27 00:44:07', '2024-05-27 00:44:07'),
(3, 15, 12, 2000, 1, 2000, '2024-05-27 01:00:56', '2024-05-27 01:00:56'),
(4, 16, 12, 2000, 4, 8000, '2024-05-27 01:20:42', '2024-05-27 01:20:50'),
(6, 17, 12, 2000, 1, 2000, '2024-05-27 01:35:26', '2024-05-27 01:35:26'),
(7, 17, 11, 2000, 1, 2000, '2024-05-27 01:35:30', '2024-05-27 01:35:30'),
(9, 19, 12, 2000, 1, 2000, '2024-05-29 04:48:18', '2024-05-29 04:48:18'),
(10, 20, 11, 2000, 50, 100000, '2024-05-29 04:49:27', '2024-05-29 04:50:03'),
(11, 20, 12, 2000, 1, 2000, '2024-05-29 04:49:56', '2024-05-29 04:49:56'),
(12, 31, 12, 2000, 1, 2000, '2024-06-04 01:57:31', '2024-06-04 01:57:31'),
(13, 31, 11, 2000, 1, 2000, '2024-06-04 01:57:34', '2024-06-04 01:57:34'),
(15, 36, 11, 2000, 1000, 2000000, '2024-06-04 18:03:33', '2024-06-04 18:03:56'),
(16, 37, 11, 2000, 1, 2000, '2024-06-07 03:58:48', '2024-06-07 03:58:48'),
(18, 40, 11, 2000, 5, 10000, '2024-06-07 05:38:50', '2024-06-07 05:38:58'),
(19, 40, 14, 15000, 1, 15000, '2024-06-07 05:39:10', '2024-06-07 05:39:10'),
(20, 42, 12, 2000, 1, 2000, '2024-06-07 05:54:04', '2024-06-07 05:54:04'),
(21, 44, 12, 2000, 2, 4000, '2024-06-07 06:02:35', '2024-06-07 06:05:07'),
(22, 45, 12, 2000, 2, 4000, '2024-06-12 10:07:21', '2024-06-12 10:09:45'),
(23, 45, 14, 15000, 2, 30000, '2024-06-12 10:07:23', '2024-06-12 10:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `deskripsi`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 'sapu lidi', 20000, '2024-05-26 21:57:50', '2024-05-26 21:57:50'),
(2, 'makanan karyawan', 5000, '2024-05-29 04:46:22', '2024-05-29 04:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(20, 4, 1, 3000, 5, 2850, 100000, 2, '2024-06-13 15:14:53', '2024-06-13 15:15:11'),
(23, 4, 1, 5000, 5, 4750, 10000, 2, '2024-06-13 18:37:01', '2024-06-13 18:37:25'),
(28, 4, 11, 114960, 5, 109212, 150000, 2, '2024-06-14 00:55:02', '2024-06-14 00:55:41'),
(29, 4, 1, 5000, 5, 4750, 100000, 2, '2024-06-14 13:12:43', '2024-06-14 13:13:01'),
(30, 4, 1, 5000, 5, 4750, 100000, 2, '2024-06-14 14:04:56', '2024-06-14 14:05:07'),
(31, 4, 1, 3000, 5, 2850, 20000, 2, '2024-06-14 15:14:14', '2024-06-14 20:59:55'),
(33, 4, 1, 3000, 5, 2850, 0, 2, '2024-06-18 00:34:32', '2024-06-18 00:34:58'),
(41, 4, 1, 3000, 5, 2850, 5000, 4, '2024-06-24 19:48:10', '2024-06-24 19:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(9, 17, 12, 3000, 2, 0, 6000, '2024-06-13 14:16:35', '2024-06-13 14:16:51'),
(10, 17, 11, 5000, 1, 0, 5000, '2024-06-13 14:16:39', '2024-06-13 14:16:39'),
(13, 20, 12, 3000, 1, 0, 3000, '2024-06-13 15:14:57', '2024-06-13 15:14:57'),
(14, 22, 12, 3000, 1, 0, 3000, '2024-06-13 18:34:18', '2024-06-13 18:34:18'),
(15, 23, 11, 5000, 1, 0, 5000, '2024-06-13 18:37:08', '2024-06-13 18:37:08'),
(16, 26, 12, 3000, 5, 0, 15000, '2024-06-14 00:54:12', '2024-06-14 00:54:22'),
(17, 26, 14, 17000, 4, 2, 66640, '2024-06-14 00:54:19', '2024-06-14 00:54:26'),
(18, 28, 12, 3000, 5, 0, 15000, '2024-06-14 00:55:05', '2024-06-14 00:55:10'),
(19, 28, 14, 17000, 6, 2, 99960, '2024-06-14 00:55:07', '2024-06-14 00:55:12'),
(20, 29, 11, 5000, 1, 0, 5000, '2024-06-14 13:12:49', '2024-06-14 13:12:49'),
(21, 30, 11, 5000, 1, 0, 5000, '2024-06-14 14:05:00', '2024-06-14 14:05:00'),
(22, 31, 12, 3000, 1, 0, 3000, '2024-06-14 20:59:16', '2024-06-14 20:59:16'),
(23, 32, 12, 3000, 1, 0, 3000, '2024-06-18 00:34:05', '2024-06-18 00:34:05'),
(24, 33, 12, 3000, 1, 0, 3000, '2024-06-18 00:34:36', '2024-06-18 00:34:36'),
(25, 37, 12, 3000, 1, 0, 3000, '2024-06-19 14:05:16', '2024-06-19 14:05:16'),
(26, 39, 12, 3000, 10, 0, 30000, '2024-06-24 19:40:17', '2024-06-24 19:40:23'),
(27, 41, 12, 3000, 1, 0, 3000, '2024-06-24 19:48:13', '2024-06-24 19:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `harga_jual`, `diskon`, `stok`, `created_at`, `updated_at`) VALUES
(11, 1, 'P000001', 'romakelapa', 'magma', 2000, 5000, 0, 1110, '2024-05-27 00:13:29', '2024-06-14 14:05:07'),
(12, 2, 'P000012', 'oky jelly', 'magma', 2000, 3000, 0, -12, '2024-05-27 00:56:18', '2024-06-24 19:48:24'),
(14, 5, 'P000013', 'somay', 'merkusi', 15000, 17000, 2, 45, '2024-06-07 04:05:05', '2024-06-14 00:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('H3DcXPKcaxARqA3V2kzzcnrP3Oa8i0T0K9TLXsGH', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnk0WUZLMld3cWY5YjYybU1xcXZxUXo4WFNDYTh4eGozZlRxaGk5ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3QvZGlwYXBvcy9wdWJsaWMvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1719289337);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) DEFAULT 0,
  `path_logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `created_at`, `updated_at`) VALUES
(1, 'Dipapos', 'Jl. Silas Papare', '085354868565', 1, 5, '/img/logo.png', NULL, '2024-06-24 17:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(2, 'Oman', 'jln. merdeka', '085354868566', '2024-05-27 00:26:09', '2024-05-27 00:26:09'),
(3, 'bertot', 'jl.odading', '085354868566', '2024-05-29 04:47:54', '2024-05-29 04:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `foto`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Administrator', 'sabo@gmail.com', NULL, '$2y$12$XFQU1faj4xGRD1LXqathEuVi4GXTKZitctjGfYLKfEgeLVCJeJ0dO', NULL, NULL, NULL, '/img/logo-20240625002801.jpg', 1, NULL, '2024-03-27 19:56:09', '2024-06-24 16:28:01'),
(4, 'kakao', 'nickspienyu10@gmail.com', NULL, '$2y$12$TiaLYBBMSjJGFnI/rMOYr.Tqj2tXUMhA29P0UhXZa8i0QVmemnxDO', NULL, NULL, NULL, '/img/logo-20240625015258.jpg', 2, NULL, '2024-06-17 23:55:55', '2024-06-24 17:52:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hutangs`
--
ALTER TABLE `hutangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hutangs_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hutangs`
--
ALTER TABLE `hutangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hutangs`
--
ALTER TABLE `hutangs`
  ADD CONSTRAINT `hutangs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
