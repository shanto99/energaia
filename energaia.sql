-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 04:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `energaia`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_30_133927_create_suppliers_table', 1),
(4, '2019_04_30_134419_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `is_supplied` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `supplier_id`, `is_supplied`, `created_at`, `updated_at`) VALUES
(42, 'Reprehenderit eos quas eos praesentium.', 1, 1, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(43, 'Earum dolorem et perspiciatis molestiae aperiam aperiam.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(44, 'Esse optio adipisci ratione qui soluta ratione.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(45, 'Ex qui itaque incidunt reiciendis ea ipsum consequatur odit.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(46, 'Eum dicta impedit fuga ut perferendis.', 1, 1, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(47, 'Voluptates aut quis dolorem earum.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(48, 'Quia vero est unde.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(49, 'Magnam earum id qui eius dicta vitae aut.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(50, 'Est unde sint id corporis deserunt architecto explicabo.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(51, 'Architecto quo rerum nam dolor recusandae eveniet dolor.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(52, 'Sunt dolore reiciendis non fugit est aut.', 1, 1, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(53, 'Ex saepe magni vero.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(54, 'Aliquam nihil expedita qui qui.', 1, 1, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(55, 'Voluptas pariatur non ex cupiditate mollitia et et enim.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(56, 'Et omnis qui rerum eos.', 1, 1, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(57, 'Laboriosam in quia quidem amet animi praesentium debitis.', 1, 0, '2019-04-30 08:36:03', '2019-04-30 08:36:03'),
(58, 'Quae repudiandae maxime maiores dolorum sed et doloribus.', 1, 0, '2019-04-30 08:36:04', '2019-04-30 08:36:04'),
(59, 'Et itaque nihil quia a impedit.', 1, 0, '2019-04-30 08:36:04', '2019-04-30 08:36:04'),
(60, 'Cum eum sit deleniti.', 1, 0, '2019-04-30 08:36:04', '2019-04-30 08:36:04'),
(61, 'Assumenda eos aut qui quis.', 1, 1, '2019-04-30 08:36:04', '2019-04-30 08:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Supplier One', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shanto', 'shanto@gmail.com', NULL, '$2y$10$n1u4QEHeOG0QN/hpvAK/teg6mpqHI7GHl3Qpo94av6O0IEBcs7uSu', NULL, '2019-04-30 08:17:51', '2019-04-30 08:17:51');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
