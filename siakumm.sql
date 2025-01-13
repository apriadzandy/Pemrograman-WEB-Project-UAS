-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2025 pada 08.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakumm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absens`
--

CREATE TABLE `absens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_krs` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_schedule` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `p1` int(11) DEFAULT 0,
  `p2` int(11) DEFAULT 0,
  `p3` int(11) DEFAULT 0,
  `p4` int(11) DEFAULT 0,
  `p5` int(11) DEFAULT 0,
  `p6` int(11) DEFAULT 0,
  `p7` int(11) DEFAULT 0,
  `p8` int(11) DEFAULT 0,
  `p9` int(11) DEFAULT 0,
  `p10` int(11) DEFAULT 0,
  `p11` int(11) DEFAULT 0,
  `p12` int(11) DEFAULT 0,
  `p13` int(11) DEFAULT 0,
  `p14` int(11) DEFAULT 0,
  `p15` int(11) DEFAULT 0,
  `p16` int(11) DEFAULT 0,
  `p17` int(11) DEFAULT 0,
  `p18` int(11) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absens`
--

INSERT INTO `absens` (`id`, `id_krs`, `id_mahasiswa`, `id_schedule`, `id_ta`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-01-13 00:01:22', '2025-01-13 00:02:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dosens`
--

INSERT INTO `dosens` (`id`, `nidn`, `nama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `agama`, `telp`, `email`, `jenis_kelamin`, `id_fakultas`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1102110, 'Apriadzandy Putra, M.Kom', 'Kisaran', '2025-01-09', 'Malang', 'Islam', '0821393993', 'Zandy@gmail.com', 'L', 1, 'png-transparent-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-united-states-thumbnail.png-1736751894.png', NULL, '2025-01-09 01:45:47', '2025-01-13 00:04:54'),
(2, 1102111, 'Adelia Ananda Aviva S.pd, MM', 'malioboro', '2002-04-11', 'kemuning', 'islam', '0845554525555', 'adelia@gmail.com', 'P', 2, '1000030480-removebg-preview.png-1736412769.png', NULL, '2025-01-09 01:52:49', '2025-01-09 01:52:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id`, `fakultas`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Teknik', NULL, '2025-01-09 01:45:47', '2025-01-09 01:45:47'),
(2, 'Keguruan Dan Ilmu Pendidikan', NULL, '2025-01-09 01:50:45', '2025-01-09 01:50:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gedungs`
--

CREATE TABLE `gedungs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gedung` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gedungs`
--

INSERT INTO `gedungs` (`id`, `gedung`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'GKB 3', NULL, '2025-01-09 01:45:47', '2025-01-09 01:45:47'),
(2, 'GKB 1', NULL, '2025-01-09 01:53:05', '2025-01-09 01:53:05'),
(3, 'GKB 2', NULL, '2025-01-09 01:53:14', '2025-01-09 01:53:14'),
(4, 'GKB 4', NULL, '2025-01-09 01:53:26', '2025-01-09 01:53:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `angkatan` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `id_prodi`, `id_dosen`, `angkatan`, `jumlah`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'INFORMATIKA A', 1, 1, 2022, 1, NULL, '2025-01-09 01:45:47', '2025-01-09 01:45:47'),
(2, 'PGSD A', 3, 2, 2022, NULL, NULL, '2025-01-13 00:07:10', '2025-01-13 00:07:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_schedule` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id`, `id_mahasiswa`, `id_schedule`, `id_ta`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, '2025-01-13 00:01:22', '2025-01-13 00:01:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` bigint(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `id_prodi`, `id_kelas`, `agama`, `telp`, `email`, `jenis_kelamin`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 202210370311204, 'APRIADZANDY PUTRA', 'HALTIm', '2025-01-09', 'Malang', 1, 1, 'Islam', '0821393993', 'PUTRA@gmail.com', 'L', 'png-transparent-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-united-states-thumbnail.png-1736690208.png', NULL, '2025-01-09 01:45:47', '2025-01-12 06:56:48'),
(2, 202210370311209, 'Rauf Hafizh Asmenta', 'jakarta', '2003-07-12', 'tirto', 1, NULL, 'islam', '085445151515', 'rauf@gmail.com', 'L', 'png-transparent-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-united-states-thumbnail.png-1736689774.png', NULL, '2025-01-12 06:49:34', '2025-01-12 06:49:34'),
(3, 202210370311183, 'Arya mandala putra', 'Kaltim', '2004-03-12', 'Tirto utomo', 1, NULL, 'islam', '08515485482', 'arya@gmail.com', 'L', 'png-transparent-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-united-states-thumbnail.png-1736689869.png', NULL, '2025-01-12 06:51:09', '2025-01-12 06:51:09'),
(4, 202210370311200, 'Mohammad Satria Agung Rahmatullah', 'malioboro', '2005-02-12', 'saxofon', 1, NULL, 'islam', '0845555454', 'satria@gmail.com', 'L', 'png-transparent-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-united-states-thumbnail.png-1736689995.png', NULL, '2025-01-12 06:53:15', '2025-01-12 06:53:15'),
(5, 202210370311181, 'Nilton is Marcal', 'malioboro', '2002-02-13', 'Blimbing', 1, NULL, 'Kristen', '0845547788', 'nilton@gmail.com', 'L', 'png-transparent-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper-united-states-thumbnail.png-1736690193.png', NULL, '2025-01-12 06:56:33', '2025-01-12 06:56:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkuls`
--

CREATE TABLE `matkuls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `matkul` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `smt` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `matkuls`
--

INSERT INTO `matkuls` (`id`, `kode`, `matkul`, `sks`, `kategori`, `smt`, `semester`, `id_prodi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'IF101', 'Kalkulus', 2, 'Wajib', 1, 'Ganjil', 1, NULL, '2025-01-09 01:45:47', '2025-01-09 01:57:18'),
(2, 'PGSD101', 'BAHASA INDONESIA', 3, 'Wajib', 1, 'Ganjil', 3, NULL, '2025-01-09 01:57:48', '2025-01-09 01:57:48'),
(3, 'IF102', 'PEMROGRAMAN DASAR', 3, 'Wajib', 1, 'Ganjil', 1, NULL, '2025-01-09 01:58:30', '2025-01-09 01:58:30'),
(4, 'IF103', 'PEMROGRAMAN WEB', 3, 'Wajib', 5, 'Ganjil', 1, NULL, '2025-01-13 00:06:17', '2025-01-13 00:06:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_01_07_095340_create_users_table', 1),
(2, '2025_01_07_095539_create_failed_jobs_table', 1),
(3, '2025_01_07_095631_create_mahasiswas_table', 1),
(4, '2025_01_07_095707_create_dosens_table', 1),
(5, '2025_01_07_095755_create_matkuls_table', 1),
(6, '2025_01_07_095914_create_fakultas_table', 1),
(7, '2025_01_07_095943_create_gedungs_table', 1),
(8, '2025_01_07_100016_create_ruangans_table', 1),
(9, '2025_01_07_100044_create_prodis_table', 1),
(10, '2025_01_07_100141_create_tahun_akademiks_table', 1),
(11, '2025_01_07_100211_create_kelas_table', 1),
(12, '2025_01_07_100306_create_schedules_table', 1),
(13, '2025_01_07_100341_create_krs_table', 1),
(14, '2025_01_07_100404_create_absens_table', 1),
(15, '2025_01_07_100500_create_nilais_table', 1),
(16, '2025_01_07_100811_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilais`
--

CREATE TABLE `nilais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_krs` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_schedule` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `nilai_absen` int(11) DEFAULT 0,
  `nilai_tugas` int(11) DEFAULT 0,
  `nilai_uts` int(11) DEFAULT 0,
  `nilai_uas` int(11) DEFAULT 0,
  `nilai_akhir` int(11) DEFAULT 0,
  `nilai_huruf` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nilais`
--

INSERT INTO `nilais` (`id`, `id_krs`, `id_mahasiswa`, `id_schedule`, `id_ta`, `nilai_absen`, `nilai_tugas`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `nilai_huruf`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 100, 100, 100, 100, 100, 'A', NULL, '2025-01-13 00:01:22', '2025-01-13 00:03:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodis`
--

CREATE TABLE `prodis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `kode_prodi` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `ka_prodi` varchar(255) NOT NULL,
  `jenjang` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prodis`
--

INSERT INTO `prodis` (`id`, `id_fakultas`, `kode_prodi`, `prodi`, `ka_prodi`, `jenjang`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'IF', 'INFORMATIKA', '1', 'S1', NULL, '2025-01-09 01:45:47', '2025-01-09 01:54:57'),
(2, 2, '0021', 'PGSD', '2', 'S1', '2025-01-09 01:54:44', '2025-01-09 01:54:20', '2025-01-09 01:54:44'),
(3, 2, 'PGSD', 'PENDIDIKAN GURU SEKOLAH DASAR', '2', 'S1', NULL, '2025-01-09 01:55:46', '2025-01-09 01:55:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_gedung` int(11) NOT NULL,
  `ruangan` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruangans`
--

INSERT INTO `ruangans` (`id`, `id_gedung`, `ruangan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'R610', NULL, '2025-01-09 01:45:47', '2025-01-09 01:45:47'),
(2, 2, 'R308', NULL, '2025-01-09 01:56:20', '2025-01-09 01:56:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schedules`
--

INSERT INTO `schedules` (`id`, `id_prodi`, `id_ta`, `id_kelas`, `id_matkul`, `id_dosen`, `hari`, `waktu`, `id_ruangan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 'Kamis', '10.20', 1, NULL, '2025-01-12 23:59:32', '2025-01-12 23:59:32'),
(2, 1, 1, 1, 3, 1, 'Selasa', '10.20', 1, NULL, '2025-01-13 00:04:24', '2025-01-13 00:04:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_akademiks`
--

CREATE TABLE `tahun_akademiks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_akademik` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tahun_akademiks`
--

INSERT INTO `tahun_akademiks` (`id`, `tahun_akademik`, `semester`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2025/2026', 'Ganjil', 1, NULL, '2025-01-09 01:45:47', '2025-01-09 01:45:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin1', 'admin@gmail.com', NULL, '$2y$10$gSbJS3LJ2Oyy.1.e1jdttufuwSw5Z3wQhXAe3aCn430p2ZWA5ek8e', 'Administrator', NULL, '2025-01-09 01:45:47', '2025-01-09 01:45:47'),
(2, 'APRIADZANDY PUTRA', '202210370311204', NULL, '$2y$10$8d7imBcip893MER75XNiZO8rMCrMW7g9Vdz/FOeT4IFh8o072cYg.', 'Mahasiswa', NULL, '2025-01-09 01:45:48', '2025-01-12 06:56:48'),
(3, 'Apriadzandy Putra, M.Kom', '1102110', NULL, '$2y$10$r1PbmtQdjv8HcKtUZEktt.H9dq9GbO9WhmNJKi6lFh/avDw.w5Ew2', 'Dosen', NULL, '2025-01-09 01:45:48', '2025-01-13 00:04:54'),
(4, 'Adelia Ananda Aviva S.pd, MM', '1102111', NULL, '$2y$10$bnifPywyFMw5fvSMnImiZ.Ed1Qbwtf4jLlkyi9ya92jOZL.z5J5lG', 'Dosen', NULL, '2025-01-09 01:52:49', '2025-01-09 01:52:49'),
(5, 'Rauf Hafizh Asmenta', '202210370311209', NULL, '$2y$10$jVOdMcGEoLYibVqBhn5Y9uw9dScb1IOQGZjDq9gehC937NYFyn1Nu', 'Mahasiswa', NULL, '2025-01-12 06:49:34', '2025-01-12 06:49:34'),
(6, 'Arya mandala putra', '202210370311183', NULL, '$2y$10$TCDv/qZPZ/FRCbo.w94f3upvD1i.kRJNf1m/2juLnPyKAyukqpTTi', 'Mahasiswa', NULL, '2025-01-12 06:51:09', '2025-01-12 06:51:09'),
(7, 'Mohammad Satria Agung Rahmatullah', '202210370311200', NULL, '$2y$10$Hy9h9Fq4LDyb7J30ygx1leOnvMhMK2iIBbxe3A8SjoGojzguiJ.ZO', 'Mahasiswa', NULL, '2025-01-12 06:53:15', '2025-01-12 06:53:15'),
(8, 'Nilton is Marcal', '202210370311181', NULL, '$2y$10$AHz67j4H9E1UpSAALNS6AeP0C4FoOLr.3jEsIC6KV4zMRCNhsrH7.', 'Mahasiswa', NULL, '2025-01-12 06:56:33', '2025-01-12 06:56:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absens`
--
ALTER TABLE `absens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gedungs`
--
ALTER TABLE `gedungs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `matkuls`
--
ALTER TABLE `matkuls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilais`
--
ALTER TABLE `nilais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `prodis`
--
ALTER TABLE `prodis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun_akademiks`
--
ALTER TABLE `tahun_akademiks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absens`
--
ALTER TABLE `absens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `gedungs`
--
ALTER TABLE `gedungs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `matkuls`
--
ALTER TABLE `matkuls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `nilais`
--
ALTER TABLE `nilais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `prodis`
--
ALTER TABLE `prodis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tahun_akademiks`
--
ALTER TABLE `tahun_akademiks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
