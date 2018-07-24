-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2018 at 04:23 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_21_154946_create_tests_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Simple','Grouped','Variable','Gift') COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` enum('Electronics','Books','Games','Garden') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `slug`, `type`, `categories`, `created_at`, `updated_at`) VALUES
(1, 'Ut quidem rerum occaecati aut.', 'ut-quidem-rerum-occaecati-aut', 'Simple', 'Books', '2018-07-21 13:57:36', '2018-07-21 13:57:36'),
(2, 'Temporibus nobis aperiam sint vel.', 'temporibus-nobis-aperiam-sint-vel', 'Variable', 'Books', '2018-07-21 13:57:36', '2018-07-21 13:57:36'),
(3, 'Officia praesentium tempora rerum a.', 'officia-praesentium-tempora-rerum-a', 'Simple', 'Garden', '2018-07-21 13:57:36', '2018-07-21 13:57:36'),
(4, 'Dolor sint autem beatae ut nemo numquam.', 'dolor-sint-autem-beatae-ut-nemo-numquam', 'Simple', 'Games', '2018-07-21 13:57:36', '2018-07-21 13:57:36'),
(5, 'Quas corporis nisi temporibus voluptas.', 'quas-corporis-nisi-temporibus-voluptas', 'Variable', 'Garden', '2018-07-21 13:57:36', '2018-07-21 13:57:36'),
(6, 'Velit laborum ducimus esse corrupti temporibus.', 'velit-laborum-ducimus-esse-corrupti-temporibus', 'Variable', 'Electronics', '2018-07-21 13:57:36', '2018-07-21 13:57:36'),
(7, 'Est cupiditate eum quidem.', 'est-cupiditate-eum-quidem', 'Simple', 'Games', '2018-07-21 13:57:36', '2018-07-21 13:57:36'),
(8, 'Ex porro qui natus.', 'ex-porro-qui-natus', 'Gift', 'Games', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(9, 'Odit possimus necessitatibus temporibus quaerat laudantium aperiam commodi.', 'odit-possimus-necessitatibus-temporibus-quaerat-laudantium-aperiam-commodi', 'Gift', 'Books', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(10, 'Ipsam aut rem voluptatem nemo totam voluptatum.', 'ipsam-aut-rem-voluptatem-nemo-totam-voluptatum', 'Variable', 'Games', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(11, 'Dolorem fuga non sed blanditiis.', 'dolorem-fuga-non-sed-blanditiis', 'Gift', 'Garden', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(12, 'Eos non iusto sapiente tempore provident non facilis.', 'eos-non-iusto-sapiente-tempore-provident-non-facilis', 'Grouped', 'Electronics', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(13, 'Recusandae at eum minus quas aut sed soluta.', 'recusandae-at-eum-minus-quas-aut-sed-soluta', 'Simple', 'Garden', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(14, 'Odio et quisquam reprehenderit.', 'odio-et-quisquam-reprehenderit', 'Simple', 'Garden', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(15, 'Enim veniam rerum est optio corporis soluta dolores.', 'enim-veniam-rerum-est-optio-corporis-soluta-dolores', 'Grouped', 'Books', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(16, 'Facilis in qui qui et voluptas.', 'facilis-in-qui-qui-et-voluptas', 'Gift', 'Books', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(17, 'Libero ipsam deserunt id et autem qui.', 'libero-ipsam-deserunt-id-et-autem-qui', 'Gift', 'Electronics', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(18, 'Velit quia perferendis et dolorum qui.', 'velit-quia-perferendis-et-dolorum-qui', 'Grouped', 'Electronics', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(19, 'Itaque quae voluptatem tempore optio.', 'itaque-quae-voluptatem-tempore-optio', 'Simple', 'Garden', '2018-07-21 13:57:37', '2018-07-21 13:57:37'),
(20, 'Placeat atque et iure voluptatem voluptatem nulla odit.', 'placeat-atque-et-iure-voluptatem-voluptatem-nulla-odit', 'Simple', 'Games', '2018-07-21 13:57:37', '2018-07-21 13:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
