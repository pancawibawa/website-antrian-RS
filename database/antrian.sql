-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2024 pada 02.50
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `antrians`
--

CREATE TABLE `antrians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_antrian` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `poli` enum('umum','gigi','tht') NOT NULL,
  `is_call` tinyint(1) NOT NULL DEFAULT 0,
  `tanggal_antrian` date NOT NULL DEFAULT '2023-12-13',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `antrians`
--

INSERT INTO `antrians` (`id`, `no_antrian`, `user_id`, `nama`, `alamat`, `jenis_kelamin`, `no_hp`, `no_ktp`, `poli`, `is_call`, `tanggal_antrian`, `created_at`, `updated_at`) VALUES
(1, 'U1', 2, 'paundrafebrian', 'brebes', 'laki-laki', '091229248179', '3303928049283', 'umum', 1, '2023-01-31', '2024-01-01 09:13:34', '2024-01-13 04:52:09'),
(2, 'G1', 12, 'nabila asshafa putri', 'pasarbatang', 'perempuan', '089530226331', '123232343212242', 'gigi', 1, '2024-01-13', '2024-01-13 04:46:29', '2024-01-13 04:50:57'),
(3, 'T1', 12, 'panca', 'pasarbatang', 'laki-laki', '1232122122', '232123212', 'tht', 1, '2024-01-13', '2024-01-13 04:53:24', '2024-01-14 05:56:09'),
(4, 'G2', 13, 'diki', 'kebumen', 'laki-laki', '2321223455432', '234567898765431234', 'gigi', 1, '2024-01-13', '2024-01-13 05:08:12', '2024-01-13 05:09:49'),
(5, 'U1', 18, 'panca', 'Pasarbatang', 'laki-laki', '1234567', '1234567654', 'umum', 1, '2024-01-14', '2024-01-14 05:29:11', '2024-01-14 05:52:47'),
(6, 'U2', 18, 'asdf', 'wert', 'laki-laki', '1234', '23456', 'umum', 1, '2024-01-14', '2024-01-14 05:54:32', '2024-01-14 05:55:58'),
(7, 'T1', 11, 'fadil', 'sumbang', 'laki-laki', '231412412311232', '082153623123', 'tht', 1, '2024-01-14', '2024-01-14 08:02:14', '2024-01-14 09:09:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_21_234112_create_antrians_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `roles` enum('pasien','admin') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dwi Purnomo', 'purnomodwi174@gmail.com', NULL, '$2y$10$1yymj3YKHEwPZvrLV6AK9Oz0PwV5LYjSnHcYekkkpQeG4nzCEKpki', 'pasien', NULL, '2023-10-19 03:07:54', '2023-10-19 03:07:54'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$jf1nCWYrT4eZpihx.4DVgeXOLd3lrSIi4EkQkKCSPpRLHvoTTLepG', 'admin', NULL, '2023-10-19 03:07:54', '2023-10-19 03:07:54'),
(4, 'paijo', 'paijo@gmail.com', NULL, '$2y$10$q9L9sJRBFKdZNlMdHo6hve6VB3Jzd2ZB.MKmMICoEUhE/Fn4vZtJu', 'pasien', NULL, '2023-10-19 03:09:59', '2023-10-19 03:09:59'),
(5, 'jamal', 'jamal@gmail.com', NULL, '$2y$10$DBG12/mlu5b3rEW0aZ0KR.UVJxT1f.O2W.Uu89bPtcZr5Iz9jJ/ua', 'pasien', NULL, '2023-10-22 08:21:24', '2023-10-22 08:21:24'),
(6, 'Paundrafebrian', 'paundra@gmail.com', NULL, '$2y$10$.zOpENqGWQhVsf78zai4TOIkvsMcmRGYMUbHhFoOabpN5PwKisQ52', 'pasien', NULL, '2024-01-01 09:13:34', '2024-01-01 09:13:34'),
(8, 'support', 'user@gmail.com', NULL, '$2y$10$RV.UIu3/akqy30EMHMyFbOowlaRLFRLnrTBZrOtziShaLCxN4aOz2', 'pasien', NULL, '2024-01-09 06:27:47', '2024-01-09 06:27:47'),
(9, 'ekoo', 'eko@gmail.com', NULL, '$2y$10$/I0BK1gdNPvFuCHkjbZBk.bvswsCffUU7WCuvMr5oZWYtGytpw0VO', 'pasien', NULL, '2024-01-09 06:30:10', '2024-01-09 06:30:10'),
(10, 'acing', 'acing@gmail.com', NULL, '$2y$10$yDbcy5lLwULUtbMXwgvVMeYcgIUUY7vPAeRaJICgiMs56KIhhRxK2', 'pasien', NULL, '2024-01-09 06:33:14', '2024-01-09 06:33:14'),
(11, 'fadil', 'fadil@gmail.com', NULL, '$2y$10$wFpt7cClWem.DQTlOqdGyOSNz/sm8JqNIM7GWTcrfzKAqH6wX6De6', 'pasien', NULL, '2024-01-13 04:42:37', '2024-01-13 04:42:37'),
(12, 'nabila', 'nabila@gmail.com', NULL, '$2y$10$qKl0Oz85caLgBm7fNSn1ceQOlAaTWv8f.ZOYFSRJ7C5iK8qbQsCXa', 'admin', NULL, '2024-01-13 04:45:31', '2024-01-13 04:45:31'),
(13, 'diki', 'diki@gmail.com', NULL, '$2y$10$gaX7RiFXr1JmlRkYD12ulO/I11WPO.au383of7UE3YMeUDy/s65vq', 'pasien', NULL, '2024-01-13 05:07:37', '2024-01-13 05:07:37'),
(14, 'dimas', 'dimas@gmail.com', NULL, '$2y$10$JMRFJN.ELPHrjSYnhJdb7.RBUk3XUzi.KeOLY/573D.ikUe9laqRm', 'pasien', NULL, '2024-01-14 02:06:51', '2024-01-14 02:06:51'),
(15, 'narlim', 'narlim@gmail.com', NULL, '$2y$10$lUvq75MpSgZzFbcZJedGk.k2AfeCRvOK/bdUFgwCpjpQUKy4nfrje', 'pasien', NULL, '2024-01-14 02:07:58', '2024-01-14 02:07:58'),
(16, 'novanda', 'novanda@gmail.com', NULL, '$2y$10$lxbXZ7yPbM4oo7F24ru9p..AxO/4nPe4Q43UAUfAUzXTJr3hLtmqu', 'pasien', NULL, '2024-01-14 02:09:03', '2024-01-14 02:09:03'),
(17, 'jokowi', 'jokowi@gmail.com', NULL, '$2y$10$boUeTR.pj.lIHJ8L1mTdCOMoI7pSufDV4CMYeRElp/D4nmdjvtf2y', 'pasien', NULL, '2024-01-14 02:10:08', '2024-01-14 02:10:08'),
(18, 'tanto', 'tanto@gmail.com', NULL, '$2y$10$/h067qb5Fq7wDIWdKo.X7e64R.FeqtO8HlFNDN/1t1mAYV9N/AIhe', 'admin', NULL, '2024-01-14 05:23:39', '2024-01-14 05:23:39'),
(19, 'nisa', 'nisa@gmail.com', NULL, '$2y$10$7KIeAnZNlEFimS3BbefZo.Igl/VqRNT2JGrkM6JnwcG4FB/7VCzVG', 'pasien', NULL, '2024-01-14 08:17:13', '2024-01-14 08:17:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `antrians`
--
ALTER TABLE `antrians`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `antrians`
--
ALTER TABLE `antrians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
