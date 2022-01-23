-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 10:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `bloodGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `bloodGroup`, `created_at`, `updated_at`) VALUES
(1, 'A+', NULL, NULL),
(2, 'A-', NULL, NULL),
(3, 'B+', NULL, NULL),
(4, 'B-', NULL, NULL),
(5, 'AB+', NULL, NULL),
(6, 'AB-', NULL, NULL),
(7, 'O+', NULL, NULL),
(8, 'O-', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `country`) VALUES
(1, 'Alexandria', 'Egypt'),
(2, 'Assiut', 'Egypt'),
(3, 'Aswan', 'Egypt'),
(4, 'Beheira', 'Egypt'),
(5, 'Bani Suef', 'Egypt'),
(6, 'Cairo', 'Egypt'),
(7, 'Daqahliya', 'Egypt'),
(8, 'Damietta', 'Egypt'),
(9, 'Fayyoum', 'Egypt'),
(10, 'Gharbiya', 'Egypt'),
(11, 'Giza', 'Egypt'),
(12, 'Helwan', 'Egypt'),
(13, 'Ismailia', 'Egypt'),
(14, 'Kafr El Sheikh', 'Egypt'),
(15, 'Luxor', 'Egypt'),
(16, 'Marsa Matrouh', 'Egypt'),
(17, 'Minya', 'Egypt'),
(18, 'Monofiya', 'Egypt'),
(19, 'New Valley', 'Egypt'),
(20, 'North Sinai', 'Egypt'),
(21, 'Port Said', 'Egypt'),
(22, 'Qalioubiya', 'Egypt'),
(23, 'Qena', 'Egypt'),
(24, 'Red Sea', 'Egypt'),
(25, 'Sharqiya', 'Egypt'),
(26, 'Sohag', 'Egypt'),
(27, 'South Sinai', 'Egypt'),
(28, 'Suez', 'Egypt'),
(29, 'Tanta', 'Egypt');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `A+` int(11) NOT NULL,
  `A-` int(11) NOT NULL,
  `B+` int(11) NOT NULL,
  `B-` int(11) NOT NULL,
  `AB+` int(11) NOT NULL,
  `AB-` int(11) NOT NULL,
  `O+` int(11) NOT NULL,
  `O-` int(11) NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `phone`, `address`, `City`, `A+`, `A-`, `B+`, `B-`, `AB+`, `AB-`, `O+`, `O-`, `price`) VALUES
(1, 'Cairo Hospital', 5458855, '91st cairo', 'Cairo', 7, 0, 8, 9, 14, 4, 8, 5, 255.00),
(2, 'Middle East Hospital', 4299505, '  25 mohamed fawzy moaz', 'Alexandria', 15, 20, 8, 6, 8, 24, 25, 2, 350.00),
(3, 'Gamal Abd El Naser Hospital', 4281244, 'Qism Bab Sharqi', 'Alexandria', 4, 8, 0, 25, 14, 19, 8, 3, 200.00),
(4, 'Dr. Hassab Hospital', 3905599, '92 Moharram Bek', 'Alexandria', 7, 0, 8, 9, 14, 4, 8, 5, 375.00),
(5, 'Victoria Hospital', 5776770, 'Victoria ', 'Alexandria', 14, 20, 8, 9, 15, 4, 5, 10, 250.00),
(6, 'Coptic Hospital', 25899866, 'Ramsis st.', 'Cairo', 20, 5, 7, 10, 10, 23, 20, 14, 175.00),
(7, 'Al Helal Hospital', 25584852, 'Al Fawalah, Abdeen', 'Cairo', 25, 4, 5, 3, 15, 6, 5, 5, 300.00),
(8, 'Greek Hospital ', 24822259, 'As Sarayat', 'Cairo', 14, 15, 1, 5, 10, 10, 14, 2, 225.00),
(9, 'El Hussein University Hospital', 24585222, 'El-Darb El-Ahmar,', 'Cairo', 2, 2, 4, 15, 4, 25, 2, 14, 150.00),
(10, 'Aswan University Hospitals', 2428625, 'Kasr Al Hager', 'Aswan', 7, 0, 8, 9, 14, 4, 8, 5, 255.00),
(11, 'Aswan Military Hospital', 2316847, ' El-Sadat, Sheyakhah Oula', 'Aswan', 15, 20, 8, 6, 8, 24, 25, 2, 350.00),
(12, 'Fever Hospital', 2302523, 'Dr Abd Al Rady Hanafe\'', 'Aswan', 4, 8, 0, 25, 14, 19, 8, 3, 200.00),
(13, 'Assiut University Hospitals', 2335905, ' University of Assiut', 'Assiut', 7, 0, 8, 9, 14, 4, 8, 5, 375.00),
(14, 'Asyut General Hospital', 2333158, 'Al Hamraa Ath Thaneyah', 'Assiut', 14, 20, 8, 9, 15, 4, 5, 10, 250.00),
(15, 'Welcare Hospital', 37627896, '51 Demashk', 'Giza', 20, 5, 7, 10, 10, 23, 20, 14, 250.00),
(16, 'Al Haram Hospital', 33860236, ' Al Haram', 'Giza', 25, 4, 5, 3, 15, 6, 5, 5, 400.00),
(17, 'Sadr El Giza Hospital', 35624758, ' Giza District', 'Giza', 14, 15, 1, 5, 10, 10, 14, 2, 225.00),
(18, 'Al salam portsaid Hospital', 3220694, 'City, Port Said Governorate', 'Port said', 2, 2, 4, 15, 4, 25, 2, 14, 325.00),
(19, 'Ophthalmology Specialized Hospital', 3223765, 'Abd El-Salam Aref', 'Port said', 7, 0, 8, 9, 14, 4, 8, 5, 225.00),
(20, 'Alexandria hospital', 5458855, 'Alexandria', 'Alexandria', 7, 0, 8, 9, 14, 4, 8, 5, 255.00),
(21, 'Assiut hospitals', 4299505, 'Assiut', 'Assiut', 15, 20, 8, 6, 8, 24, 25, 2, 350.00),
(22, 'Aswan hospital', 4281244, 'Aswan', 'Aswan', 4, 8, 0, 25, 14, 19, 8, 3, 400.00),
(23, 'Beheira hospital', 3905599, 'Beheira', 'Beheira', 7, 0, 8, 9, 14, 4, 8, 5, 375.00),
(24, 'Bani Suef Hosptial', 5776770, 'Bani Suef ', 'Bani Suef', 14, 20, 8, 9, 15, 4, 5, 10, 250.00),
(25, 'Cairo Hospital1', 25899866, 'Cairo', 'Cairo', 20, 5, 7, 10, 10, 23, 20, 14, 250.00),
(26, 'Daqahliya hospital', 25584852, 'Daqahliya', 'Daqahliya', 25, 4, 5, 3, 15, 6, 5, 5, 300.00),
(27, 'Damietta hospital', 24822259, 'Damietta', 'Damietta', 14, 15, 1, 5, 10, 10, 14, 2, 225.00),
(28, 'Fayyoum hospital', 24585222, 'Fayyoum', 'Fayyoum', 2, 2, 4, 15, 4, 25, 2, 14, 325.00),
(29, 'Gharbiya hospital', 2428625, 'Gharbiya', 'Gharbiya', 7, 0, 8, 9, 14, 4, 8, 5, 255.00),
(30, 'Giza hospital', 2316847, 'Giza', 'Giza', 15, 20, 8, 6, 8, 24, 25, 2, 350.00),
(31, 'Helwan hospital', 2302523, 'Helwan', 'Helwan', 4, 8, 0, 25, 14, 19, 8, 3, 200.00),
(32, 'Ismailia hospital', 2335905, 'Ismailia', 'Ismailia', 7, 0, 8, 9, 14, 4, 8, 5, 375.00),
(33, 'Kafr El Sheikh hospital', 2333158, 'Kafr El Sheikh', 'Kafr El Sheikh', 14, 20, 8, 9, 15, 4, 5, 10, 250.00),
(34, 'Luxor hospital', 37627896, 'Luxor', 'Luxor', 20, 5, 7, 10, 10, 23, 20, 14, 250.00),
(35, 'Marsa Matrouh hospital', 33860236, 'Marsa Matrouh', 'Marsa Matrouh', 25, 4, 5, 3, 15, 6, 5, 5, 300.00),
(36, 'Minya hospital', 35624758, 'Minya', 'Minya', 14, 15, 1, 5, 10, 10, 14, 2, 225.00),
(37, 'Monofiya hospital', 3220694, 'Monofiya', 'Monofiya', 2, 2, 4, 15, 4, 25, 2, 14, 250.00),
(38, 'New Valley hospital', 3223765, 'New Valley', 'New Valley', 7, 0, 8, 9, 14, 4, 8, 5, 375.00),
(39, 'North Sinai hospital', 4778588, 'North Sinai', 'North Sinai', 14, 15, 1, 5, 10, 10, 14, 2, 225.00),
(40, 'Port Said hospital', 4555255, 'Port Said', 'Port Said', 2, 2, 4, 15, 4, 25, 2, 14, 325.00),
(41, 'Qalioubiya hospital', 4185559, 'Qalioubiya', 'Qalioubiya', 7, 0, 8, 9, 14, 4, 8, 5, 375.00),
(42, 'Qena hospital', 4558225, 'Qena', 'Qena', 7, 0, 8, 9, 14, 4, 8, 5, 255.00),
(43, 'Red Sea hospital', 4552984, 'Red Sea', 'Red Sea', 15, 20, 8, 6, 8, 24, 25, 2, 175.00),
(44, 'Sharqiya hospital', 3269620, 'Sharqiya', 'Sharqiya', 4, 8, 0, 25, 14, 19, 8, 3, 200.00),
(45, 'Sohag hospital', 1026558, 'Sohag', 'Sohag', 7, 0, 8, 9, 14, 4, 8, 5, 150.00),
(46, 'South Sinai hospital', 4125144, 'South Sinai', 'South Sinai', 14, 20, 8, 9, 15, 4, 5, 10, 250.00),
(47, 'Suez hospital', 4854225, 'Suez', 'Suez', 14, 20, 8, 9, 15, 4, 5, 10, 250.00),
(48, 'Tanta hospital', 1452657, 'Tanta', 'Tanta', 25, 4, 0, 3, 15, 6, 5, 5, 300.00),
(49, 'Tanta university hospital', 1452657, 'Tanta', 'Tanta', 10, 1, 5, 3, 20, 7, 1, 7, 300.00),
(50, 'Qena university hospital', 4558225, 'Qena', 'Qena', 10, 14, 5, 19, 2, 2, 2, 5, 255.00),
(51, 'New Valley university hospital', 3223765, 'New Valley', 'New Valley', 7, 2, 8, 20, 5, 8, 9, 8, 375.00),
(52, 'Ismailia  university hospital', 2335905, 'Ismailia', 'Ismailia', 4, 9, 14, 4, 14, 2, 8, 5, 375.00),
(53, 'Gharbiya university hospital', 2428625, 'Gharbiya', 'Gharbiya', 17, 4, 7, 9, 7, 5, 6, 2, 255.00),
(54, 'Beheira  university hospital', 3905599, 'Beheira', 'Beheira', 7, 0, 8, 3, 14, 4, 8, 9, 375.00),
(55, 'Sohag university hospital', 1026558, 'Sohag', 'Sohag', 8, 5, 9, 9, 6, 6, 6, 10, 150.00),
(56, ' East Hospital', 4299505, '1 mohamed fawzy moaz', 'Alexandria', 10, 1, 5, 3, 20, 7, 1, 7, 300.00),
(57, 'Gamal Ahmed Hospital', 4281244, 'Qism Bab Sharqi', 'Alexandria', 7, 2, 8, 20, 5, 8, 9, 8, 375.00),
(58, 'Dr. Nagam Hospital', 3905599, '92 Moharram Bek', 'Alexandria', 4, 9, 14, 4, 14, 2, 8, 5, 375.00),
(59, 'elQabri Hospital', 5776770, 'elQabri ', 'Alexandria', 20, 5, 7, 10, 10, 23, 20, 14, 250.00),
(60, 'Daqahliya university hospital', 25584852, 'Daqahliya', 'Daqahliya', 25, 4, 0, 3, 15, 6, 5, 5, 300.00),
(61, 'Damietta university hospital', 24822259, 'Damietta', 'Damietta', 10, 1, 5, 3, 20, 7, 1, 7, 300.00),
(62, 'Fayyoum university hospital', 24585222, 'Fayyoum', 'Fayyoum', 10, 14, 5, 19, 2, 2, 2, 5, 255.00),
(63, 'Gharbiya university hospital', 2428625, 'Gharbiya', 'Gharbiya', 7, 2, 8, 20, 5, 8, 9, 8, 375.00),
(64, 'Sohag university hospital', 1026558, 'Sohag', 'Sohag', 4, 9, 14, 4, 14, 2, 8, 5, 375.00),
(65, 'Helwan university hospital', 2302523, 'Helwan', 'Helwan', 4, 8, 0, 25, 14, 19, 8, 3, 200.00),
(66, 'Ismailia university hospital', 2335905, 'Ismailia', 'Ismailia', 7, 0, 8, 9, 14, 4, 8, 5, 375.00),
(67, 'Kafr El Sheikh university hospital', 2333158, 'Kafr El Sheikh', 'Kafr El Sheikh', 14, 20, 8, 9, 15, 4, 5, 10, 250.00),
(68, 'Luxor university hospital', 37627896, 'Luxor', 'Luxor', 20, 5, 7, 10, 10, 23, 20, 14, 250.00),
(69, 'Marsa Matrouh  university hospital', 33860236, 'Marsa Matrouh', 'Marsa Matrouh', 25, 4, 5, 3, 15, 6, 5, 5, 300.00),
(70, 'Minya university hospital', 35624758, 'Minya', 'Minya', 14, 15, 1, 5, 10, 10, 14, 2, 225.00),
(71, 'Monofiya university hospital', 3220694, 'Monofiya', 'Monofiya', 2, 2, 4, 15, 4, 25, 2, 14, 250.00),
(72, 'Alexandria International Hospital', 4299505, '20Mostafa Kamel', 'Alexandria', 7, 2, 8, 20, 5, 8, 9, 8, 375.00),
(73, 'Sidi Gaber Specialized Hospital', 4281244, 'Sidi Gaber', 'Alexandria', 4, 9, 14, 4, 14, 2, 8, 5, 375.00),
(74, 'Loran Hospital', 3905599, 'Loran', 'Alexandria', 20, 5, 7, 10, 10, 23, 20, 14, 250.00),
(75, 'Agial Hospital', 5776770, 'Alfred Layan ', 'Alexandria', 7, 0, 8, 9, 14, 4, 8, 5, 375.00);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_08_235947_create_blood_groups_table', 1),
(6, '2021_09_09_133141_create_cities_table', 1),
(7, '2021_09_09_194447_create_hospitals_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'mariam', 'mariam.mohamed', '$2y$10$4ggos1FIQrN0NDhUMhzJC.LbmInq1MfXFUuL6lORsQsUEwPzWEjGG', '2021-09-21 19:48:35', '2021-09-21 19:48:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
