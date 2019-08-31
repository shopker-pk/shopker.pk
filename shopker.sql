-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 09:19 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopker`
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
(1, '2018_09_29_055431_countries', 1),
(2, '2018_09_29_055615_cities', 1),
(3, '2018_09_29_060205_countries__phone__code', 1),
(4, '2018_09_29_060608_users', 1),
(5, '2018_10_01_111015_login__activities', 1),
(7, '2018_10_02_062636_product__categories', 1),
(8, '2018_10_03_034919_brands__for__products', 1),
(9, '2018_10_03_035008_product__brands', 1),
(10, '2018_10_03_044914_variations__for__products', 1),
(12, '2018_10_03_084057_products__images', 1),
(19, '2018_10_11_130046_banner__advertisements', 1),
(26, '2019_01_14_170957_parent__categories', 1),
(27, '2019_01_14_171209_child__categories', 1),
(28, '2019_01_14_171701_sub_child__categories', 1),
(29, '2018_10_03_083948_products', 2),
(30, '2019_02_08_154058_products_featured_image', 2),
(33, '2018_10_06_100259_store__settings', 5),
(34, '2018_10_10_064207_store__images', 5),
(35, '2019_02_26_143651_stores_bank_details', 6),
(36, '2019_03_05_125155_site_settings', 7),
(37, '2019_03_05_125218_site_images', 8),
(38, '2019_03_05_132301_site_tax_settings', 9),
(39, '2019_03_05_132339_site_shipping_settings', 9),
(40, '2019_03_05_142734_site_social_links', 9),
(43, '2019_03_19_114934_admin_permissions', 10),
(46, '2019_08_16_192351_careers', 2),
(47, '2019_03_21_125317_vendors_commission', 12),
(48, '2019_03_21_155234_coupons', 13),
(49, '2019_03_21_161952_coupons_products', 13),
(50, '2019_04_10_151304_users_genders', 14),
(51, '2019_04_10_153140_users_news_letter', 15),
(53, '2019_04_10_182629_email', 16),
(54, '2019_03_19_151707_pages', 17),
(55, '2019_03_19_152048_pages_meta_details', 17),
(56, '2019_04_15_113822_wishlists', 18),
(62, '2019_04_23_114855_site_shipping_charges', 21),
(70, '2019_04_25_153614_orders', 24),
(71, '2019_04_25_153833_orders_coupons', 24),
(72, '2019_04_25_160510_shipping_details', 24),
(73, '2019_04_25_160621_shipping_charges', 24),
(74, '2019_04_25_160755_orders_invoices', 25),
(79, '2019_04_29_131854_products_reviews', 26),
(81, '2019_04_29_132110_orders_reviews', 27);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_permissions`
--

CREATE TABLE `tbl_admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin_permissions`
--

INSERT INTO `tbl_admin_permissions` (`id`, `ip_address`, `added_by`, `admin_id`, `permission_id`, `created_date`, `created_time`) VALUES
(1, '::1', 1, 6, 0, '2019-03-19', '11:58:15'),
(2, '::1', 1, 6, 1, '2019-03-19', '11:58:15'),
(3, '::1', 1, 6, 2, '2019-03-19', '11:58:16'),
(13, '::1', 1, 7, 3, '2019-03-19', '15:15:27'),
(18, '103.255.5.79', 1, 8, 0, '2019-08-08', '17:16:54'),
(19, '103.255.5.79', 1, 8, 3, '2019-08-08', '17:16:54'),
(20, '103.255.5.79', 1, 8, 14, '2019-08-08', '17:16:54'),
(22, '182.185.236.189', 1, 25, 3, '2019-08-28', '16:30:09'),
(23, '182.185.236.189', 1, 27, 0, '2019-08-28', '16:32:00'),
(24, '182.185.236.189', 1, 28, 0, '2019-08-28', '16:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner_advertisements`
--

CREATE TABLE `tbl_banner_advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci,
  `type` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_banner_advertisements`
--

INSERT INTO `tbl_banner_advertisements` (`id`, `ip_address`, `user_id`, `image`, `url`, `type`, `page_id`, `start_date`, `end_date`, `status`, `created_date`, `created_time`) VALUES
(22, '103.255.4.58', 1, '1562948635.jpeg', NULL, 2, 0, '2019-07-04', '2019-08-31', 0, '2019-07-12', '21:23:55'),
(23, '103.255.4.58', 1, '1562948626.png', NULL, 0, 0, '2019-07-04', '2019-07-31', 0, '2019-07-12', '21:23:46'),
(25, '103.255.4.58', 1, '1562948617.jpeg', NULL, 0, 0, '2019-07-04', '2019-08-31', 0, '2019-07-12', '21:23:37'),
(27, '103.255.4.58', 1, '1562948608.jpeg', NULL, 0, 0, '2019-07-09', '2019-08-31', 0, '2019-07-12', '21:23:28'),
(28, '103.255.4.58', 1, '1562948567.png', NULL, 0, 0, '2019-07-12', '2019-07-31', 0, '2019-07-12', '21:22:47'),
(29, '103.255.5.79', 1, '5d28b4bfa9a3a.jpeg', 'https://shopker.pk/all-categories', 1, 0, '2019-07-12', '2019-08-31', 0, '2019-08-08', '15:42:39'),
(31, '182.185.148.66', 1, '5d4d7d175ab9a.jpeg', 'https://shopker.pk', 0, 0, '2019-08-09', '2019-08-31', 0, '2019-08-09', '19:03:03'),
(32, '182.185.148.66', 1, '5d4d7d8d69acc.jpeg', 'https://shopker.pk/products/power-banks', 0, 0, '2019-08-09', '2019-08-31', 0, '2019-08-09', '19:05:01'),
(33, '103.255.4.94', 1, '5d5fdae5e0825.jpeg', NULL, 0, 0, '2019-08-23', '2019-08-31', 0, '2019-08-23', '17:24:05'),
(34, '103.255.4.94', 1, '5d5fdb268a521.jpeg', NULL, 0, 0, '2019-08-23', '2019-08-24', 0, '2019-08-23', '17:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands_for_products`
--

CREATE TABLE `tbl_brands_for_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brands_for_products`
--

INSERT INTO `tbl_brands_for_products` (`id`, `user_id`, `ip_address`, `image`, `name`, `slug`, `status`, `created_date`, `created_time`) VALUES
(6, 1, '182.185.220.109', '1549363181.jpeg', 'Shopker', 'shopker', 0, '2019-02-05', '15:39:41'),
(7, 1, '103.255.5.30', '1549363355.jpeg', 'ABN Traders', 'abn-traders', 0, '2019-02-05', '15:42:35'),
(8, 1, '103.255.5.30', '1549363413.jpeg', 'Crazy Mart', 'crazy-mart', 0, '2019-02-05', '15:43:33'),
(9, 1, '103.255.5.30', '1549363484.jpeg', 'Easy Mart', 'easy-mart', 0, '2019-02-05', '15:44:43'),
(10, 1, '103.255.5.30', '', 'Mediserve Pharmacy', 'mediserve-pharmacy', 0, '2019-02-05', '15:45:30'),
(11, 1, '103.255.5.104', '1549395518.png', 'Rabi\'s Collection', 'rabi\'s-collection', 0, '2019-02-06', '00:38:38'),
(12, 1, '182.185.232.203', '1562500726.png', 'Remax', 'remax', 0, '2019-07-07', '16:58:46'),
(13, 1, '182.185.197.64', '', 'IELY', 'iely', 0, '2019-07-09', '00:54:04'),
(14, 1, '182.185.184.40', '', 'LIGE', 'lige', 0, '2019-07-11', '23:37:28'),
(15, 1, '103.255.4.58', '', 'Kiss Beauty', 'kiss-beauty', 0, '2019-07-12', '17:46:01'),
(16, 1, '182.185.148.66', '', 'Brinch', 'brinch', 0, '2019-08-09', '19:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_careers`
--

CREATE TABLE `tbl_careers` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `phone_no` varchar(13) NOT NULL,
  `message` longtext NOT NULL,
  `cv` varchar(30) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_careers`
--

INSERT INTO `tbl_careers` (`id`, `ip_address`, `name`, `email`, `job_title`, `phone_no`, `message`, `cv`, `created_date`, `created_time`) VALUES
(1, '::1', 'dasd', 'sdadasd@fdfd', 'fsdf', '345454', 'gfgf', '5d56bd5019299.png', '2019-08-16', '19:27:28'),
(2, '103.217.178.45', 'asd', 'asd@asd.asd', 'asd', '123', 'asd', '5d5aaf4b4555b.txt', '2019-08-19', '19:16:43'),
(3, '103.255.5.34', 'test', 'abntraders17@gmail.com', 'test', '03225739999', 'test', '5d5bc7576fb54.pdf', '2019-08-20', '15:11:35'),
(4, '103.217.177.249', 'asd', 'asd@asd.com', 'Asd', '123', 'Asd', '5d5bd387498ad.png', '2019-08-20', '16:03:35'),
(5, '103.217.177.249', 'asd', 'asd@asd.com', 'Asd', '123', 'Asd', '5d5bd4212f749.png', '2019-08-20', '16:06:09'),
(6, '103.217.177.249', 'asd', 'Sabeehsultan@gmail.com', 'Asd', '123', 'Asd', '5d5bd4357aac2.png', '2019-08-20', '16:06:29'),
(7, '103.217.177.249', 'asd', 'shahzaiibimran@gmail.com', 'Asd', '123', 'Asd', '5d5bd46c216de.png', '2019-08-20', '16:07:24'),
(8, '103.217.177.249', 'sabeeh sultan', 'sabeehsultan@gmail.com', 'seo', '3475063896', 'scsaccs', '5d5bd4bd7e795.png', '2019-08-20', '16:08:45'),
(9, '103.217.177.249', 'sabeeh sultan', 'admin@shopker.pk', 'seo', '3475063896', 'scsaccs', '5d5bd4f938b75.png', '2019-08-20', '16:09:45'),
(10, '103.217.177.249', 'sabeeh sultan', 'abntraders17@gmail.com', 'seo', '3475063896', 'ascdccsssc', '5d5bd70d19bf9.png', '2019-08-20', '16:18:37'),
(11, '103.217.177.249', 'sabeeh sultan', 'sabeehsultan@gmail.com', 'seo', '3475063896', 'ascdccsssc', '5d5bdb79a0941.png', '2019-08-20', '16:37:29'),
(12, '103.217.177.249', 'sabeeh sultan', 'admin@shopker.pk', 'seo', '3475063896', 'vcghccg', '5d5bdc6ace4bd.png', '2019-08-20', '16:41:30'),
(13, '103.217.177.249', 'sabeeh sultan', 'admin@shopker.pk', 'seo', '3475063896', 'sdcaca', '5d5bde25e2255.png', '2019-08-20', '16:48:53'),
(14, '103.217.177.249', 'sabeeh sultan', 'sabeehsultan@gmail.com', 'seo', '3475063896', 'vjhvj', '5d5bdf0d914ff.png', '2019-08-20', '16:52:45'),
(15, '103.217.177.249', 'sabeeh sultan', 'admin@shopker.pk', 'seo', '3475063896', 'vjhvj', '5d5bdf1ca27f8.png', '2019-08-20', '16:53:00'),
(16, '103.217.177.249', 'sabeeh sultan', 'hr@shopker.pk', 'ghvgh', '3475063896', 'nljnlk', '5d5bdfa5dcb5e.pdf', '2019-08-20', '16:55:17'),
(17, '103.217.177.249', 'sabeeh sultan', 'hr@shopker.pk', 'ghvgh', '3475063896', 'nljnlk', '5d5be062c6c77.pdf', '2019-08-20', '16:58:26'),
(18, '103.217.177.249', 'sabeeh sultan', 'admin@shopker.pk', 'ghvgh', '3475063896', 'nljnlk', '5d5be073d922e.pdf', '2019-08-20', '16:58:43'),
(19, '103.255.5.34', 'test', 'admin@shopker.pk', 'sdas', 'asda', 'asda', '5d5be12c31119.docx', '2019-08-20', '17:01:48'),
(20, '103.255.5.34', 'df', 'admin@shopker.pk', 'sdsd', 'sf', 'dsf', '5d5be16021f74.pdf', '2019-08-20', '17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_child_categories`
--

CREATE TABLE `tbl_child_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(11) DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_child_categories`
--

INSERT INTO `tbl_child_categories` (`id`, `ip_address`, `user_id`, `parent_id`, `featured_image`, `name`, `slug`, `sorting_order`, `meta_keywords`, `meta_description`, `status`, `created_date`, `created_time`) VALUES
(9, '182.185.212.80', 1, 15, '1549360051.png', 'Mobiles', 'mobiles', 20, 'Mobiles', 'Mobiles', 0, '2019-08-08', '20:30:18'),
(10, '103.255.5.30', 1, 15, '1549360087.png', 'Tablets', 'tablets', NULL, 'Tablets', 'Tablets', 0, '2019-02-05', '14:48:07'),
(11, '182.185.212.80', 1, 15, NULL, 'Laptops', 'laptops', 21, 'Laptops', 'Laptops', 0, '2019-08-08', '20:31:37'),
(12, '103.255.5.30', 1, 15, '1549360436.png', 'Desktops Computer', 'desktops-computer', NULL, 'Desktops Computer', 'Desktops Computer', 0, '2019-02-05', '14:53:56'),
(13, '103.255.5.30', 1, 15, NULL, 'Gaming Consoles', 'gaming-consoles', NULL, 'Gaming Consoles', 'Gaming Consoles', 0, '2019-02-05', '14:54:36'),
(14, '103.255.5.30', 1, 15, NULL, 'Video Cameras', 'video-cameras', NULL, 'Video Cameras', 'Video Cameras', 0, '2019-02-05', '14:55:03'),
(15, '103.255.5.30', 1, 15, NULL, 'Security Cameras', 'security-cameras', NULL, 'Security Cameras', 'Security Cameras', 0, '2019-02-05', '14:55:26'),
(16, '103.255.5.30', 1, 15, NULL, 'Digital Cameras', 'digital-cameras', NULL, 'Digital Cameras', 'Digital Cameras', 0, '2019-02-05', '14:55:50'),
(17, '182.185.212.80', 1, 16, NULL, 'Mobile Accessories', 'mobile-accessories', 1, 'Mobile Accessories', 'Mobile Accessories', 0, '2019-08-08', '20:30:39'),
(18, '182.185.212.80', 1, 16, NULL, 'Audio Accessories', 'audio-accessories', 2, 'Audio Accessories', 'Audio Accessories', 0, '2019-08-08', '20:31:51'),
(19, '182.185.212.80', 1, 16, NULL, 'Wearable Devices', 'wearable-devices', 3, 'Wearable Devices', 'Wearable Devices', 0, '2019-08-08', '20:32:48'),
(20, '103.255.5.30', 1, 16, NULL, 'Console Accessories', 'console-accessories', NULL, 'Console Accessories', 'Console Accessories', 0, '2019-02-05', '15:13:47'),
(21, '103.255.5.30', 1, 16, NULL, 'Camera Accessories', 'camera-accessories', NULL, 'Camera Accessories', 'Camera Accessories', 0, '2019-02-05', '15:14:24'),
(22, '182.185.212.80', 1, 16, NULL, 'Computer Accessories', 'computer-accessories', 8, 'Computer Accessories', 'Computer Accessories', 0, '2019-08-08', '21:05:44'),
(23, '182.185.212.80', 1, 16, NULL, 'Storage Devices', 'storage-devices', 9, 'Storage Devices', 'Storage Devices', 0, '2019-08-08', '21:07:44'),
(24, '103.255.5.30', 1, 16, NULL, 'Printers & Scanners', 'printers-&-scanners', NULL, 'Printers & Scanners', 'Printers & Scanners', 0, '2019-02-05', '15:15:49'),
(25, '103.255.5.30', 1, 16, NULL, 'Computer Components', 'computer-components', NULL, 'Computer Components', 'Computer Components', 0, '2019-02-05', '15:16:17'),
(26, '103.255.5.30', 1, 16, NULL, 'Networking Components', 'networking-components', NULL, 'Networking Components', 'Networking Components', 0, '2019-02-05', '15:16:45'),
(27, '182.185.212.80', 1, 17, NULL, 'Personal Care Appliances', 'personal-care-appliances', 4, 'Personal Care Appliances', 'Personal Care Appliances', 0, '2019-08-08', '21:01:13'),
(28, '103.255.5.30', 1, 17, NULL, 'Fabric Care & Iron', 'fabric-care-&-iron', NULL, 'Fabric Care & Iron', 'Fabric Care & Iron', 0, '2019-02-05', '15:22:44'),
(29, '182.185.220.109', 1, 17, NULL, 'Vacuums & Floor Care', 'vacuums-&-floor-care', NULL, 'Vacuums & Floor Care', 'Vacuums & Floor Care', 0, '2019-02-05', '15:26:57'),
(30, '182.185.220.109', 1, 17, NULL, 'Cooling & Air Treatment', 'cooling-&-air-treatment', NULL, 'Cooling & Air Treatment', 'Cooling & Air Treatment', 0, '2019-02-05', '15:29:47'),
(31, '182.185.220.109', 1, 17, NULL, 'Small Kitchen Appliances', 'small-kitchen-appliances', NULL, 'Small Kitchen Appliances', 'Small Kitchen Appliances', 0, '2019-02-05', '15:30:43'),
(32, '182.185.220.109', 1, 17, NULL, 'Large Appliances', 'large-appliances', NULL, 'Large Appliances', 'Large Appliances', 0, '2019-02-05', '15:31:23'),
(33, '182.185.220.109', 1, 18, NULL, 'TV & LED Accessories', 'tv-&-led-accessories', NULL, 'TV & LED Accessories', 'TV & LED Accessories', 0, '2019-02-05', '15:35:28'),
(34, '182.185.220.109', 1, 18, NULL, 'Home Audio System', 'home-audio-system', NULL, 'Home Audio System', 'Home Audio System', 0, '2019-02-05', '15:36:13'),
(35, '182.185.220.109', 1, 18, NULL, 'TV & LED\'s', 'tv-&-led\'s', NULL, 'TV & LED\'s', 'TV & LED\'s', 0, '2019-02-05', '15:36:59'),
(36, '182.185.220.109', 1, 18, NULL, 'Video Devices', 'video-devices', NULL, 'Video Devices', 'Video Devices', 0, '2019-02-05', '15:37:31'),
(37, '182.185.212.80', 1, 19, NULL, 'Bath & Body', 'bath-&-body', 6, 'Bath & Body', 'Bath & Body', 0, '2019-08-08', '21:00:23'),
(38, '182.185.178.120', 1, 19, NULL, 'Beauty Tools', 'beauty-tools', NULL, 'Beauty Tools', 'Beauty Tools', 0, '2019-02-05', '23:44:30'),
(39, '182.185.178.120', 1, 19, NULL, 'Fragrances', 'fragrances', NULL, 'Fragrances', 'Fragrances', 0, '2019-02-05', '23:44:50'),
(40, '182.185.178.120', 1, 19, NULL, 'Hair Care Products', 'hair-care-products', NULL, 'Hair Care Products', 'Hair Care Products', 0, '2019-02-05', '23:45:23'),
(41, '182.185.178.120', 1, 19, NULL, 'Makeup', 'makeup', NULL, 'Makeup', 'Makeup', 0, '2019-02-05', '23:45:52'),
(42, '182.185.178.120', 1, 19, NULL, 'Men\'s Care Products', 'men\'s-care-products', NULL, 'Men\'s Care Products', 'Men\'s Care Products', 0, '2019-02-05', '23:46:28'),
(43, '182.185.178.120', 1, 19, NULL, 'Personal Care', 'personal-care', NULL, 'Personal Care', 'Personal Care', 0, '2019-02-05', '23:46:48'),
(44, '182.185.178.120', 1, 19, NULL, 'Skin Care Products', 'skin-care-products', NULL, 'Skin Care Products', 'Skin Care Products', 0, '2019-02-05', '23:47:33'),
(45, '103.255.5.73', 1, 30, NULL, 'Food Supplements', 'food-supplements', NULL, 'Food Supplements', 'Food Supplements', 0, '2019-04-10', '17:58:52'),
(48, '103.255.5.73', 1, 29, '1554891164.jpeg', 'Salon', 'salon', NULL, 'Salon', 'Salon', 0, '2019-04-10', '15:12:44'),
(49, '103.255.5.73', 1, 29, NULL, 'Restaurant', 'restaurant', NULL, 'Restaurant', 'Restaurant', 0, '2019-04-10', '15:14:44'),
(50, '103.255.5.73', 1, 30, NULL, 'OCT Medicine', 'oct-medicine', NULL, 'OCT Medicine', 'OCT Medicine', 0, '2019-04-10', '17:57:57'),
(51, '103.255.5.73', 1, 30, NULL, 'Surgical Items', 'surgical-items', NULL, 'Surgical Items', 'Surgical Items', 0, '2019-04-10', '17:59:58'),
(52, '103.255.5.73', 1, 30, NULL, 'Medical Equipments', 'medical-equipments', NULL, 'Medical Equipments', 'Medical Equipments', 0, '2019-04-10', '18:00:14'),
(53, '103.255.5.73', 1, 20, NULL, 'Baby Gears', 'baby-gears', NULL, 'Baby Gears', 'Baby Gears', 0, '2019-04-10', '18:05:19'),
(54, '103.255.5.73', 1, 20, NULL, 'Baby Personal Care', 'baby-personal-care', NULL, 'Baby Personal Care', 'Baby Personal Care', 0, '2019-04-10', '18:05:42'),
(55, '103.255.5.73', 1, 20, NULL, 'Cloths', 'cloths', NULL, 'Cloths', 'Cloths', 0, '2019-04-10', '18:06:03'),
(56, '103.255.5.73', 1, 20, NULL, 'Baby Accessories', 'baby-accessories', NULL, 'Baby Accessories', 'Baby Accessories', 0, '2019-04-10', '18:06:20'),
(57, '103.255.5.73', 1, 20, NULL, 'Dippers & Wipes', 'dippers-&-wipes', NULL, 'Dippers & Wipes', 'Dippers & Wipes', 0, '2019-04-10', '18:20:42'),
(58, '103.255.5.73', 1, 20, NULL, 'Feeding', 'feeding', NULL, 'Feeding', 'Feeding', 0, '2019-04-10', '18:20:30'),
(59, '103.255.5.73', 1, 20, NULL, 'Nursery', 'nursery', NULL, 'Nursery', 'Nursery', 0, '2019-04-10', '18:20:12'),
(60, '103.255.5.73', 1, 20, NULL, 'Baby & Toddlers Toys', 'baby-&-toddlers-toys', NULL, 'Baby & Toddlers Toys', 'Baby & Toddlers Toys', 0, '2019-04-10', '18:19:59'),
(61, '103.255.5.73', 1, 20, NULL, 'Toys & Games', 'toys-&-games', NULL, 'Toys & Games', 'Toys & Games', 0, '2019-04-10', '18:08:22'),
(62, '103.255.5.87', 1, 21, NULL, 'Daily & Frozen Items', 'daily-&-frozen-items', NULL, 'Daily & Frozen Items', 'Daily & Frozen Items', 0, '2019-04-11', '14:17:15'),
(63, '103.255.5.87', 1, 21, NULL, 'Laundry & Household', 'laundry-&-household', NULL, 'Laundry & Household', 'Laundry & Household', 0, '2019-04-11', '14:17:38'),
(64, '103.255.5.87', 1, 21, NULL, 'Canned Food', 'canned-food', NULL, 'Canned Food', 'Canned Food', 0, '2019-04-11', '14:18:00'),
(65, '103.255.5.87', 1, 21, NULL, 'Pet Food & Accessories', 'pet-food-&-accessories', NULL, 'Pet Food & Accessories', 'Pet Food & Accessories', 0, '2019-04-11', '14:24:04'),
(66, '182.185.212.80', 1, 22, NULL, 'Bath', 'bath', 5, 'Bath', 'Bath', 0, '2019-08-08', '21:02:09'),
(67, '103.255.5.251', 1, 22, NULL, 'Stationary & Craft', 'stationary-&-craft', 13, 'Stationary & Craft', 'Stationary & Craft', 0, '2019-08-21', '18:16:47'),
(68, '182.185.212.80', 1, 22, NULL, 'Tools, DIY, Outdoor', 'tools,-diy,-outdoor', 7, 'Tools, DIY, Outdoor', 'Tools, DIY, Outdoor', 0, '2019-08-08', '21:03:25'),
(69, '103.255.5.87', 1, 22, NULL, 'Lighting & Decor', 'lighting-&-decor', NULL, 'Lighting & Decor', 'Lighting & Decor', 0, '2019-04-11', '14:26:27'),
(70, '103.255.5.87', 1, 22, NULL, 'Kitchen & Dining', 'kitchen-&-dining', NULL, 'Kitchen & Dining', 'Kitchen & Dining', 0, '2019-04-11', '14:27:02'),
(71, '103.255.5.87', 1, 22, NULL, 'Furniture', 'furniture', NULL, 'Furniture', 'Furniture', 0, '2019-04-11', '14:27:22'),
(72, '103.255.5.87', 1, 22, NULL, 'Bedding', 'bedding', NULL, 'Bedding', 'Bedding', 0, '2019-04-11', '14:27:55'),
(73, '103.255.5.87', 1, 23, NULL, 'Traditional Cloths', 'traditional-cloths', NULL, 'Traditional Cloths', 'Traditional Cloths', 0, '2019-04-11', '15:29:06'),
(74, '103.255.5.87', 1, 23, NULL, 'Tops', 'tops', NULL, 'tops', 'tops', 0, '2019-04-11', '15:29:31'),
(75, '103.255.5.87', 1, 23, NULL, 'Lingeries & Undergarments', 'lingeries-&-undergarments', NULL, 'Lingeries & Undergarments', 'Lingeries & Undergarments', 0, '2019-04-11', '15:30:18'),
(76, '103.255.5.87', 1, 23, NULL, 'Women Bags', 'women-bags', NULL, 'Women Hand Bags', 'Women Hand Bags', 0, '2019-04-11', '15:31:14'),
(77, '103.255.5.87', 1, 23, NULL, 'Pants & Leggings', 'pants-&-leggings', NULL, 'Pants & Leggings', 'Pants & Leggings', 0, '2019-04-11', '15:31:39'),
(78, '103.255.5.87', 1, 23, NULL, 'Jackets & Coats', 'jackets-&-coats', NULL, 'Jackets & Coats', 'Jackets & Coats', 0, '2019-04-11', '15:31:58'),
(79, '103.217.177.27', 1, 23, NULL, 'Accessories', 'accessories', 19, 'Accessories', 'Accessories', 0, '2019-08-08', '20:27:02'),
(80, '103.255.5.87', 1, 23, NULL, 'Shoes', 'shoes', NULL, 'Accessories', 'Accessories', 0, '2019-04-11', '15:32:22'),
(81, '182.185.212.80', 1, 24, NULL, 'Men Accessories', 'men-accessories', 10, 'Men Accessories', 'Men Accessories', 0, '2019-08-08', '21:10:19'),
(82, '103.255.5.87', 1, 24, NULL, 'Hoodies & Sweatshirts', 'hoodies-&-sweatshirts', NULL, 'Hoodies & Sweatshirts', 'Hoodies & Sweatshirts', 0, '2019-04-11', '15:37:33'),
(83, '103.255.5.87', 1, 24, NULL, 'Jacket & Coat', 'jacket-&-coat', NULL, 'Jackets & Coats', 'Jackets & Coats', 0, '2019-04-11', '15:38:53'),
(84, '103.255.5.87', 1, 24, NULL, 'Traditional Clothings', 'traditional-clothings', NULL, 'Traditional Clothings', 'Traditional Clothings', 0, '2019-04-11', '15:39:34'),
(85, '103.255.5.87', 1, 24, NULL, 'Shorts', 'shorts', NULL, 'Shorts', 'Shorts', 0, '2019-04-11', '15:39:51'),
(86, '103.255.5.87', 1, 24, NULL, 'Polo\'s', 'polo\'s', NULL, 'Polo\'s', 'Polo\'s', 0, '2019-04-11', '15:40:10'),
(87, '103.255.5.87', 1, 24, NULL, 'Pants', 'pants', NULL, 'Pants', 'Pants', 0, '2019-04-11', '15:41:27'),
(88, '103.255.5.87', 1, 24, NULL, 'Jeans', 'jeans', NULL, 'Jeans', 'Jeans', 0, '2019-04-11', '15:41:37'),
(89, '103.255.5.87', 1, 24, NULL, 'T-Shirts', 't-shirts', NULL, 'T-Shirts', 'T-Shirts', 0, '2019-04-11', '15:41:58'),
(90, '182.185.212.80', 1, 24, NULL, 'Shirts', 'shirts', 24, 'Shirts', 'Shirts', 0, '2019-08-08', '21:10:01'),
(91, '182.185.222.160', 1, 25, NULL, 'Jewellery', 'jewellery', NULL, 'Jewellery', 'Jewellery', 0, '2019-07-06', '23:58:13'),
(92, '182.185.197.64', 1, 27, NULL, 'Auto Tools & Equipment', 'auto-tools-&-equipment', NULL, 'Auto Tools & Equipment', 'Auto Tools & Equipment', 0, '2019-07-09', '00:29:12'),
(93, '182.185.212.80', 1, 27, NULL, 'Interior Accessories', 'interior-accessories', 15, 'Interior Accessories', 'Interior Accessories', 0, '2019-08-08', '20:24:07'),
(94, '103.217.177.27', 1, 25, NULL, 'Watches', 'watches', 11, 'Watches', 'Watches', 0, '2019-08-08', '20:18:36'),
(95, '103.217.177.27', 1, 27, NULL, 'Exterior Accessories', 'exterior-accessories', 12, 'Exterior Accessories', 'Exterior Accessories', 0, '2019-08-08', '20:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`id`, `country_id`, `city_id`, `name`) VALUES
(2, 'PK', '1', 'LAHORE'),
(3, 'PK', '2', 'KARACHI'),
(4, 'PK', '3', 'ISLAMABAD'),
(5, 'PK', '3', 'RAWALPINDI'),
(6, 'PK', '42', 'SUKKUR'),
(7, 'PK', '22', 'KASUR'),
(8, 'PK', '40', 'SHEIKHUPURA'),
(9, 'PK', '34', 'PESHAWAR'),
(10, 'PK', '35', 'QUETTA'),
(11, 'PK', '18', 'HYDERABAD'),
(12, 'PK', '5', 'SAHIWAL'),
(13, 'PK', '7', 'MULTAN'),
(14, 'PK', '38', 'SARGODHA'),
(15, 'PK', '41', 'SIALKOT'),
(16, 'PK', '15', 'GUJRANWALA'),
(17, 'PK', '19', 'JEHLUM'),
(18, 'PK', '30', 'MIRPUR (AJK)'),
(19, 'PK', '26', 'ABBOTABAD'),
(20, 'PK', '9', 'BAHAWALPUR'),
(21, 'PK', '14', 'FAISALABAD'),
(22, 'PK', '4', 'DERA ISMAIL KHAN'),
(23, 'PK', '2', 'GAWADER'),
(24, 'PK', '2', 'TURBAT'),
(25, 'PK', '13', 'DERA GHAZI KHAN'),
(26, 'PK', '17', 'HAFIZABAD'),
(27, 'PK', '25', 'MANDI BAHAUDDIN'),
(28, 'PK', '36', 'RAHIM YAR KHAN'),
(29, 'PK', '6', 'OKARA'),
(30, 'PK', '37', 'SADIQABAD'),
(31, 'PK', '29', 'MIANWALI'),
(32, 'PK', '7', 'LAYYAH'),
(33, 'PK', '6', 'DEPALPUR'),
(34, 'PK', '14', 'TOBA TEK SINGH'),
(35, 'PK', '5', 'VEHARI'),
(36, 'PK', '19', 'LALA MUSA'),
(37, 'PK', '34', 'KOHAT'),
(38, 'PK', '3', 'BAGH'),
(39, 'PK', '16', 'GUJRAT'),
(40, 'PK', '31', 'KOT ADDU'),
(41, 'PK', '3', 'HASANABDAAL'),
(42, 'PK', '3', 'ATTOCK'),
(43, 'PK', '3', 'WAH CANTT'),
(44, 'PK', '3', 'GILGIT'),
(45, 'PK', '14', 'JARANWALA'),
(46, 'PK', '8', 'BAHAWALNAGAR'),
(47, 'PK', '8', 'FORT ABBAS'),
(48, 'PK', '28', 'MIAN CHANNU'),
(49, 'PK', '14', 'GOJRA'),
(50, 'PK', '3', 'GUJAR KHAN'),
(51, 'PK', '33', 'BHAI PHERU'),
(52, 'PK', '20', 'JHANG'),
(53, 'PK', '18', 'MIR PUR KHAS'),
(54, 'PK', '1', 'MURIDKE'),
(55, 'PK', '31', 'MUZAFFARGARH'),
(56, 'PK', '4', 'TANK'),
(57, 'PK', '23', 'KHANEWAL'),
(58, 'PK', '41', 'SHAKARGARH'),
(59, 'PK', '3', 'PIND DADAN KHAN'),
(60, 'PK', '41', 'NAROWAL'),
(61, 'PK', '3', 'MURREE'),
(62, 'PK', '5', 'PAKPATTAN'),
(63, 'PK', '43', 'BHAKKAR'),
(64, 'PK', '3', 'RAWALAKOT (AJK)'),
(65, 'PK', '5', 'BUREWALA'),
(66, 'PK', '15', 'KAMOKE'),
(67, 'PK', '26', 'HATTAR'),
(68, 'PK', '24', 'KHAN PUR'),
(69, 'PK', '10', 'CHICHAWATNEE'),
(70, 'PK', '26', 'HARIPUR'),
(71, 'PK', '18', 'NAWAB SHAH'),
(72, 'PK', '27', 'SWABI'),
(73, 'PK', '3', 'CHAKWAL'),
(74, 'PK', '3', 'MUZAFARABAD (AJK)'),
(75, 'PK', '42', 'DEHARKI'),
(76, 'PK', '27', 'MARDAN'),
(77, 'PK', '14', 'TANDLAWALA'),
(78, 'PK', '32', 'NOWSHERA'),
(79, 'PK', '8', 'HAROONABAD'),
(80, 'PK', '42', 'JACABABAD'),
(81, 'PK', '42', 'SHIKARPUR'),
(82, 'PK', '42', 'LARKANA'),
(83, 'PK', '14', 'KAMALIA'),
(84, 'PK', '19', 'KHARIAN'),
(85, 'PK', '42', 'GHOTKI'),
(86, 'PK', '2', 'THATTA'),
(87, 'PK', '4', 'BANNU'),
(88, 'PK', '40', 'NUNKANA SAB'),
(89, 'PK', '21', 'KHUSHAAB'),
(90, 'PK', '3', 'KOTLI'),
(91, 'PK', '18', '60 MIL'),
(92, 'PK', '28', 'ABDUL HAKIM'),
(93, 'PK', '9', 'ADA ZAKHEERA'),
(94, 'PK', '41', 'ADDA BADYANA'),
(95, 'PK', '14', 'ADDA JOHAL 97 / RB'),
(96, 'PK', '36', 'ADDA SHEIKH WAN'),
(97, 'PK', '41', 'ADDA SIRAJ'),
(98, 'PK', '42', 'ADIL PUR'),
(99, 'PK', '30', 'AFZAL PUR (AJK)'),
(100, 'PK', '42', 'AGRA'),
(101, 'PK', '18', 'AGRO RAHO'),
(102, 'PK', '9', 'AHMED PUR EAST'),
(103, 'PK', '20', 'AHMED PUR SIAL'),
(104, 'PK', '31', 'AHSAN PUR'),
(105, 'PK', '40', 'AJNIA WALA'),
(106, 'PK', '30', 'AKAL GHAR'),
(107, 'PK', '6', 'AKHTAR ABAD'),
(108, 'PK', '32', 'AKORA KHATAK'),
(109, 'PK', '18', 'ALI MURAD JAMALI'),
(110, 'PK', '15', 'ALI PUR CHATHA'),
(111, 'PK', '31', 'ALIPUR'),
(112, 'PK', '15', 'ALLAH ABAD'),
(113, 'PK', '32', 'AMANGARH'),
(114, 'PK', '5', 'ARIFWALA'),
(115, 'PK', '35', 'AWRAN'),
(116, 'PK', '3', 'AYUBIA'),
(117, 'PK', '42', 'BABAR LOI'),
(118, 'PK', '42', 'BADAH'),
(119, 'PK', '18', 'BADIN'),
(120, 'PK', '41', 'BADOMALI'),
(121, 'PK', '26', 'BAFFA'),
(122, 'PK', '38', 'BAGHATANWALA'),
(123, 'PK', '3', 'BAHTAR MORE'),
(124, 'PK', '40', 'BAIG PUR'),
(125, 'PK', '34', 'BAJORE AGENCY'),
(126, 'PK', '26', 'BALA KOT'),
(127, 'PK', '39', 'BALAM BUT'),
(128, 'PK', '34', 'BARA MARKET'),
(129, 'PK', '3', 'BARAH KHU'),
(130, 'PK', '30', 'BARNALA (AJK)'),
(131, 'PK', '39', 'BARI KOT'),
(132, 'PK', '13', 'BARKHAN'),
(133, 'PK', '26', 'BASHAAM'),
(134, 'PK', '3', 'BASHARAT'),
(135, 'PK', '3', 'BASIA'),
(136, 'PK', '6', 'BASIRPUR'),
(137, 'PK', '7', 'BASTI MALOOK'),
(138, 'PK', '26', 'BATGRAM'),
(139, 'PK', '34', 'BATKHELA'),
(140, 'PK', '26', 'BATTAL'),
(141, 'PK', '30', 'BERJA / JHANDALA'),
(142, 'PK', '3', 'BEROTE'),
(143, 'PK', '3', 'BEWAL'),
(144, 'PK', '3', 'BHADDANA'),
(145, 'PK', '3', 'BHAGWAL'),
(146, 'PK', '18', 'BHALI DINO KAKA'),
(147, 'PK', '38', 'BHALWAAL'),
(148, 'PK', '42', 'BHAN SAEEDABAD'),
(149, 'PK', '30', 'BHATHROI'),
(150, 'PK', '3', 'BHAUN'),
(151, 'PK', '38', 'BHERA'),
(152, 'PK', '40', 'BHIKKI'),
(153, 'PK', '30', 'BHIMBER (AJK)'),
(154, 'PK', '18', 'BHITT SHAH'),
(155, 'PK', '14', 'BHOWANA'),
(156, 'PK', '18', 'BHUCHERI'),
(157, 'PK', '18', 'BHUDIO KAMRANI'),
(158, 'PK', '18', 'BHUDO KHAN JAMALI'),
(159, 'PK', '37', 'BHUNG'),
(160, 'PK', '3', 'BHURBUN (P.C. HOTEL)'),
(161, 'PK', '15', 'BHUTALA JANDA SINGH'),
(162, 'PK', '30', 'BINDHI'),
(163, 'PK', '5', 'BONGA HAYAT'),
(164, 'PK', '30', 'BRHARY'),
(165, 'PK', '30', 'BRINGH'),
(166, 'PK', '3', 'BUCHAL KALAN'),
(167, 'PK', '40', 'BUCHEKE'),
(168, 'PK', '39', 'BUNER'),
(169, 'PK', '3', 'C M H SKARDU'),
(170, 'PK', '42', 'CADET COLLEGE LARKANA'),
(171, 'PK', '3', 'CADET COLLEGE SUNNY BANK'),
(172, 'PK', '30', 'CHAHCIAN (AJK)'),
(173, 'PK', '19', 'CHAK JAMAL '),
(174, 'PK', '14', 'CHAK JHUMRA'),
(175, 'PK', '19', 'CHAK PARANA'),
(176, 'PK', '30', 'CHAK SWARI (AJK)'),
(177, 'PK', '34', 'CHAKDARA'),
(178, 'PK', '3', 'CHAKLALA'),
(179, 'PK', '3', 'CHAKRI'),
(180, 'PK', '15', 'CHALKALAN'),
(181, 'PK', '35', 'CHAMAN'),
(182, 'PK', '19', 'CHANAN'),
(183, 'PK', '3', 'CHANGA BANGIAL'),
(184, 'PK', '33', 'CHANGA MANGA'),
(185, 'PK', '9', 'CHANI GOTH'),
(186, 'PK', '39', 'CHAR BAGH'),
(187, 'PK', '34', 'CHARSADDA'),
(188, 'PK', '30', 'CHATER PARI (AJK)'),
(189, 'PK', '41', 'CHAWINDA'),
(190, 'PK', '3', 'CHILAS'),
(191, 'PK', '11', 'CHINIOT'),
(192, 'PK', '19', 'CHIRYWALA'),
(193, 'PK', '8', 'CHISTIAN'),
(194, 'PK', '34', 'CHITRAL'),
(195, 'PK', '19', 'CHITRAN'),
(196, 'PK', '3', 'CHOA SAIDAN SHAH'),
(197, 'PK', '7', 'CHOBARA'),
(198, 'PK', '4', 'CHOHAR KHEL'),
(199, 'PK', '42', 'CHONDIKO'),
(200, 'PK', '30', 'CHOOKE'),
(201, 'PK', '18', 'CHOR'),
(202, 'PK', '27', 'CHOTA LAHORE'),
(203, 'PK', '19', 'CHOTALA'),
(204, 'PK', '13', 'CHOTI ZERIN'),
(205, 'PK', '7', 'CHOWK AZAM'),
(206, 'PK', '3', 'CHOWK PANDORI '),
(207, 'PK', '31', 'CHOWK SARWAR SHAHEED'),
(208, 'PK', '30', 'CHOWKI SAMANI (AJK)'),
(209, 'PK', '28', 'CHUB CHOUKI'),
(210, 'PK', '20', 'CHUND'),
(211, 'PK', '33', 'CHUNIAN'),
(212, 'PK', '42', 'DADU'),
(213, 'PK', '30', 'DADYAL (AJK)'),
(214, 'PK', '31', 'DAIRA DIN PANNAH'),
(215, 'PK', '42', 'DAKHAN'),
(216, 'PK', '41', 'DAKWALA'),
(217, 'PK', '35', 'DALBANDIN'),
(218, 'PK', '18', 'DAMBALU'),
(219, 'PK', '3', 'DANDOT CEMENT'),
(220, 'PK', '34', 'DAOOD ZAI'),
(221, 'PK', '42', 'DARBELLO'),
(222, 'PK', '34', 'DARGAI'),
(223, 'PK', '43', 'DARYA KHAN'),
(224, 'PK', '42', 'DARYA KHAN MARI'),
(225, 'PK', '12', 'DASKA'),
(226, 'PK', '3', 'DAUL TALA'),
(227, 'PK', '16', 'DAULATNAGAR'),
(228, 'PK', '18', 'DAUR'),
(229, 'PK', '42', 'DERA ALLAH YAR'),
(230, 'PK', '42', 'DERA MURAD JAMALI'),
(231, 'PK', '9', 'DERA NAWAB'),
(232, 'PK', '39', 'DEWALAY'),
(233, 'PK', '13', 'DG CEMENT FACTORY'),
(234, 'PK', '3', 'DHAB KALAN'),
(235, 'PK', '2', 'DHABJEE'),
(236, 'PK', '42', 'DHADAR'),
(237, 'PK', '30', 'DHANGRE BALA'),
(238, 'PK', '30', 'DHNDHAR'),
(239, 'PK', '18', 'DHORO NARO'),
(240, 'PK', '3', 'DHUDIAL'),
(241, 'PK', '18', 'DIGRI'),
(242, 'PK', '14', 'DIJKOT'),
(243, 'PK', '19', 'DINA '),
(244, 'PK', '19', 'DINGA '),
(245, 'PK', '3', 'DISTT. COMPLEX'),
(246, 'PK', '34', 'DOABA'),
(247, 'PK', '7', 'DOHRI ADDA'),
(248, 'PK', '42', 'DOKRI'),
(249, 'PK', '8', 'DONGA BONGA'),
(250, 'PK', '30', 'DONGI (AJK)'),
(251, 'PK', '42', 'DOULAT PUR'),
(252, 'PK', '43', 'DULLE WALA'),
(253, 'PK', '9', 'DUNIAPUR'),
(254, 'PK', '42', 'F.F.C. PLANT'),
(255, 'PK', '8', 'FAQIRWALI'),
(256, 'PK', '38', 'FAROKA'),
(257, 'PK', '40', 'FAROOQABAD'),
(258, 'PK', '34', 'FATA AGENCIES'),
(259, 'PK', '3', 'FATEH JANG'),
(260, 'PK', '7', 'FATEH PUR'),
(261, 'PK', '36', 'FATEH PUR KAMAL'),
(262, 'PK', '16', 'FATEHPUR'),
(263, 'PK', '13', 'FAZIL PUR'),
(264, 'PK', '18', 'FAZIL RAHO'),
(265, 'PK', '24', 'FEROUZA'),
(266, 'PK', '40', 'FEROZ WATWAN'),
(267, 'PK', '28', 'FKPCL POWER PLANT'),
(268, 'PK', '14', 'FOUJI SUGAR MILL (2KM)'),
(269, 'PK', '26', 'GADOON'),
(270, 'PK', '5', 'GAGGO MANDI'),
(271, 'PK', '9', 'GALEWAL'),
(272, 'PK', '42', 'GAMBAT'),
(273, 'PK', '6', 'GAMBER'),
(274, 'PK', '18', 'GANGI RAHO'),
(275, 'PK', '5', 'GARHA MORE'),
(276, 'PK', '42', 'GARHI KHERO'),
(277, 'PK', '42', 'GARHI YASEEN'),
(278, 'PK', '19', 'GARMALA'),
(279, 'PK', '3', 'GARRI DUPATTA'),
(280, 'PK', '14', 'GATWALA 199 / RB'),
(281, 'PK', '15', 'GHAKKAR MANDI'),
(282, 'PK', '20', 'GHAR MORE'),
(283, 'PK', '26', 'GHARI HABIBULLAH'),
(284, 'PK', '3', 'GHARIBWAL CEMENT'),
(285, 'PK', '2', 'GHARO'),
(286, 'PK', '26', 'GHAZI'),
(287, 'PK', '10', 'GHAZIABAD'),
(288, 'PK', '3', 'GHIKA GALI '),
(289, 'PK', '3', 'GHORA GALI'),
(290, 'PK', '3', 'GHOUR GHUSTI'),
(291, 'PK', '42', 'GHOUS PUR'),
(292, 'PK', '18', 'GOLARCHI'),
(293, 'PK', '3', 'GONDAL'),
(294, 'PK', '18', 'GOTH CHANDIO'),
(295, 'PK', '37', 'GOTH MACHI'),
(296, 'PK', '19', 'GUJARPUR'),
(297, 'PK', '18', 'GULAB LAGHARI'),
(298, 'PK', '19', 'GULYANA'),
(299, 'PK', '27', 'GUMBAT'),
(300, 'PK', '3', 'HAJEERA'),
(301, 'PK', '18', 'HAJI SAWAN'),
(302, 'PK', '32', 'HAKEEM ABAD'),
(303, 'PK', '18', 'HALA'),
(304, 'PK', '42', 'HALANI'),
(305, 'PK', '30', 'HAMEED ABAD'),
(306, 'PK', '30', 'HAMEED PUR'),
(307, 'PK', '3', 'HAMLET'),
(308, 'PK', '34', 'HANGU'),
(309, 'PK', '5', 'HARAPPA'),
(310, 'PK', '3', 'HARNAL'),
(311, 'PK', '40', 'HASEEB WAQAS MILLS'),
(312, 'PK', '9', 'HASIL PUR'),
(313, 'PK', '3', 'HATHIAN'),
(314, 'PK', '3', 'HATIA BALA'),
(315, 'PK', '18', 'HATUNGU'),
(316, 'PK', '6', 'HAVELI LAKHA'),
(317, 'PK', '26', 'HAZARA UNIVERSITY'),
(318, 'PK', '3', 'HAZRO'),
(319, 'PK', '33', 'HEAD BALOKI ROAD'),
(320, 'PK', '25', 'HEAD FAQIRIAN'),
(321, 'PK', '41', 'HEADMARALA'),
(322, 'PK', '42', 'HINGORJA'),
(323, 'PK', '2', 'HUB CHOWKI'),
(324, 'PK', '6', 'HUJRA SHAH MUKEEM'),
(325, 'PK', '3', 'HUNZA'),
(326, 'PK', '18', 'HUSRI'),
(327, 'PK', '36', 'IQBAL ABAD'),
(328, 'PK', '10', 'IQBAL NAGAR'),
(329, 'PK', '30', 'ISLAM GARH (AJK)'),
(330, 'PK', '30', 'JABBI'),
(331, 'PK', '23', 'JAHANIAN'),
(332, 'PK', '17', 'JALALPUR BHATTIAN'),
(333, 'PK', '16', 'JALALPUR JATTAN'),
(334, 'PK', '7', 'JALALPURPIRWALA'),
(335, 'PK', '37', 'JAMAL DIN WALI'),
(336, 'PK', '13', 'JAMPUR'),
(337, 'PK', '18', 'JAMSHERO'),
(338, 'PK', '24', 'JAN PUR'),
(339, 'PK', '40', 'JANDIA SHER KHAN'),
(340, 'PK', '30', 'JATALAN (AJK)'),
(341, 'PK', '31', 'JATOI'),
(342, 'PK', '32', 'JEHANGIRA'),
(343, 'PK', '24', 'JETHA BHUTTA'),
(344, 'PK', '40', 'JHABRAN MANDI'),
(345, 'PK', '2', 'JHAMBIR'),
(346, 'PK', '3', 'JHATLA'),
(347, 'PK', '42', 'JHATT PATT'),
(348, 'PK', '18', 'JHOOL'),
(349, 'PK', '34', 'JHOOR'),
(350, 'PK', '18', 'JHUDU'),
(351, 'PK', '21', 'JOHARABAD'),
(352, 'PK', '42', 'JOHI'),
(353, 'PK', '26', 'JOLIAN'),
(354, 'PK', '3', 'JUGLOT'),
(355, 'PK', '23', 'KABIRWALA'),
(356, 'PK', '28', 'KACHA KHOO'),
(357, 'PK', '30', 'KADHALA'),
(358, 'PK', '3', 'KAHAUTA'),
(359, 'PK', '30', 'KAHRI SHARIF (AJK)'),
(360, 'PK', '42', 'KAIRPUR NATHIN SHAH'),
(361, 'PK', '30', 'KAKRA TOWN (AJK)'),
(362, 'PK', '13', 'KALA'),
(363, 'PK', '19', 'KALA DEV'),
(364, 'PK', '26', 'KALA DHAKA'),
(365, 'PK', '30', 'KALA DUB'),
(366, 'PK', '34', 'KALASH'),
(367, 'PK', '35', 'KALAT'),
(368, 'PK', '3', 'KALLAR KAHAR'),
(369, 'PK', '3', 'KALLAR SYEDDAN'),
(370, 'PK', '43', 'KALOR KOT'),
(371, 'PK', '3', 'KAMRA'),
(372, 'PK', '42', 'KAND KOT'),
(373, 'PK', '42', 'KANDHRA'),
(374, 'PK', '42', 'KANDIARO'),
(375, 'PK', '22', 'KANGAN PUR'),
(376, 'PK', '26', 'KANGRA'),
(377, 'PK', '39', 'KANJU'),
(378, 'PK', '3', 'KANYAL'),
(379, 'PK', '31', 'KAPCO POWER PLANT'),
(380, 'PK', '34', 'KARAK'),
(381, 'PK', '42', 'KARAM PUR'),
(382, 'PK', '16', 'KARIANWALA'),
(383, 'PK', '18', 'KAROONDI'),
(384, 'PK', '9', 'KAROOR PAKA'),
(385, 'PK', '7', 'KAROR LAL EASAN'),
(386, 'PK', '15', 'KARYAL'),
(387, 'PK', '30', 'KAS CHANATAR'),
(388, 'PK', '42', 'KASHMORE'),
(389, 'PK', '10', 'KASSOWAL'),
(390, 'PK', '34', 'KHAAL'),
(391, 'PK', '30', 'KHADAM ABAD'),
(392, 'PK', '18', 'KHADAN'),
(393, 'PK', '18', 'KHADIARO'),
(394, 'PK', '42', 'KHAIR PUR'),
(395, 'PK', '42', 'KHAIRPUR MEERUS'),
(396, 'PK', '9', 'KHAIRPUR TAMEWALI'),
(397, 'PK', '24', 'KHAN BELA'),
(398, 'PK', '31', 'KHAN GHAR'),
(399, 'PK', '18', 'KHAN MOHD ALI UJJAN'),
(400, 'PK', '15', 'KHAN MUSALMAN'),
(401, 'PK', '42', 'KHAN PUR DISTT. SHIKARPUR'),
(402, 'PK', '18', 'KHANDOO'),
(403, 'PK', '40', 'KHANKA DOGRAN'),
(404, 'PK', '26', 'KHANPUR DAM'),
(405, 'PK', '42', 'KHANPUR MAHAR'),
(406, 'PK', '31', 'KHANPUR SHOMALI'),
(407, 'PK', '7', 'KHARAL AZEEM'),
(408, 'PK', '19', 'KHARALA'),
(409, 'PK', '35', 'KHARAN'),
(410, 'PK', '43', 'KHAS BEHAAL'),
(411, 'PK', '18', 'KHIPRO'),
(412, 'PK', '39', 'KHOAZA KHAILA'),
(413, 'PK', '19', 'KHOHAR'),
(414, 'PK', '3', 'KHORA KHEL'),
(415, 'PK', '18', 'KHOSKI'),
(416, 'PK', '22', 'KHUDIAN KHAS'),
(417, 'PK', '14', 'KHURRIANWALA'),
(418, 'PK', '35', 'KHUZDAR'),
(419, 'PK', '3', 'KHWERA'),
(420, 'PK', '18', 'KHYBER'),
(421, 'PK', '34', 'KOHAT (CEMENT FACTORY )'),
(422, 'PK', '39', 'KOHISTAN'),
(423, 'PK', '20', 'KOT BAHADAR'),
(424, 'PK', '13', 'KOT CHUTTA'),
(425, 'PK', '18', 'KOT GHULAM MOHD'),
(426, 'PK', '18', 'KOT GHULAM MUHAMMAD'),
(427, 'PK', '30', 'KOT JAMAL (AJK)'),
(428, 'PK', '13', 'KOT MITHAN'),
(429, 'PK', '38', 'KOT MOMIN'),
(430, 'PK', '40', 'KOT PINDI DAS'),
(431, 'PK', '22', 'KOT RADHA KISHAN'),
(432, 'PK', '36', 'KOT SAMABAH'),
(433, 'PK', '3', 'KOT SARANG'),
(434, 'PK', '28', 'KOT SUJAN SINGH'),
(435, 'PK', '7', 'KOT SULTAN (BAHI SADHU )'),
(436, 'PK', '42', 'KOTDEJI'),
(437, 'PK', '16', 'KOTLA ARAB ALI KHAN'),
(438, 'PK', '41', 'KOTLI BEHRAM'),
(439, 'PK', '41', 'KOTLI LOHARAN'),
(440, 'PK', '18', 'KOTRI'),
(441, 'PK', '35', 'KUCHLAK'),
(442, 'PK', '4', 'KULACHI'),
(443, 'PK', '42', 'KUNB'),
(444, 'PK', '29', 'KUNDIAN'),
(445, 'PK', '16', 'KUNJAH'),
(446, 'PK', '18', 'KUNRI'),
(447, 'PK', '7', 'LADHANA'),
(448, 'PK', '25', 'LAIDHER'),
(449, 'PK', '18', 'LAKHRA'),
(450, 'PK', '4', 'LAKKI MARWAT '),
(451, 'PK', '11', 'LALIAN'),
(452, 'PK', '38', 'LALLIAN'),
(453, 'PK', '22', 'LALLIANI'),
(454, 'PK', '31', 'LALPIR (THERMAL POWER)'),
(455, 'PK', '26', 'LASSA NAWAB'),
(456, 'PK', '3', 'LAWRENCE PUR'),
(457, 'PK', '24', 'LIAQAT PUR'),
(458, 'PK', '9', 'LODHRAN'),
(459, 'PK', '35', 'LORALAI'),
(460, 'PK', '19', 'LOTA SHARIF'),
(461, 'PK', '34', 'LOWER DIR'),
(462, 'PK', '3', 'LOWER TOPA'),
(463, 'PK', '40', 'MACHIKEY'),
(464, 'PK', '42', 'MADIJI'),
(465, 'PK', '5', 'MAILSI'),
(466, 'PK', '5', 'MAITLA CHOWK'),
(467, 'PK', '9', 'MAKHDOOM AALI'),
(468, 'PK', '7', 'MAKHDOOM RASHEED'),
(469, 'PK', '34', 'MALAKAND'),
(470, 'PK', '25', 'MALAKWAL'),
(471, 'PK', '16', 'MALOWAL'),
(472, 'PK', '14', 'MAMU KANJAN'),
(473, 'PK', '40', 'MANA WLA'),
(474, 'PK', '40', 'MANAWALA'),
(475, 'PK', '40', 'MANDI SAFDAR ABAD'),
(476, 'PK', '22', 'MANDI USMAN WALA'),
(477, 'PK', '26', 'MANDIAN'),
(478, 'PK', '3', 'MANDRA'),
(479, 'PK', '15', 'MANDRANWALA'),
(480, 'PK', '22', 'MANGA MANDI'),
(481, 'PK', '30', 'MANGLA (AJK)'),
(482, 'PK', '30', 'MANGLA CANTT (AJK)'),
(483, 'PK', '30', 'MANGLA COLONY (AJK)'),
(484, 'PK', '30', 'MANGLA HEMLET AK'),
(485, 'PK', '16', 'MANGOWAL GHARBI'),
(486, 'PK', '18', 'MANIK LAGHARI'),
(487, 'PK', '43', 'MANKERA'),
(488, 'PK', '3', 'MANKYLA STATION'),
(489, 'PK', '26', 'MANSEHRA'),
(490, 'PK', '3', 'MARI'),
(491, 'PK', '3', 'MASAR CAMP'),
(492, 'PK', '35', 'MASTUNG'),
(493, 'PK', '18', 'MATIYARI'),
(494, 'PK', '18', 'MATLI'),
(495, 'PK', '39', 'MATTA'),
(496, 'PK', '42', 'MEHER'),
(497, 'PK', '42', 'MEHRAB PUR'),
(498, 'PK', '30', 'MIAN MUHAMMAD TOWN (AJK)'),
(499, 'PK', '36', 'MIAN WALI QURESHAIN'),
(500, 'PK', '3', 'MIANI'),
(501, 'PK', '30', 'MIMORA KANYAL'),
(502, 'PK', '8', 'MINCHINABAD'),
(503, 'PK', '39', 'MINGORA'),
(504, 'PK', '42', 'MIR PUR METHELO'),
(505, 'PK', '4', 'MIRAN SHAH'),
(506, 'PK', '42', 'MIRPUR BURRO'),
(507, 'PK', '18', 'MIRWAH GORC HANI'),
(508, 'PK', '21', 'MITHA TIWANA'),
(509, 'PK', '42', 'MITHIANI'),
(510, 'PK', '18', 'MITTHI'),
(511, 'PK', '13', 'MOHAMMADPUR DIWAN'),
(512, 'PK', '25', 'MONA DEPU'),
(513, 'PK', '15', 'MORE AIMANABAD'),
(514, 'PK', '40', 'MORE KHUNDA'),
(515, 'PK', '14', 'MOREED WALA'),
(516, 'PK', '42', 'MORO'),
(517, 'PK', '41', 'MOTRA'),
(518, 'PK', '35', 'MUCH'),
(519, 'PK', '43', 'MUSLAM KOT'),
(520, 'PK', '19', 'NAKODAR'),
(521, 'PK', '1', 'NARANG MANDI'),
(522, 'PK', '42', 'NASIRABAD'),
(523, 'PK', '26', 'NATHIA GALI'),
(524, 'PK', '18', 'NAUKOT'),
(525, 'PK', '35', 'NAUSHKI'),
(526, 'PK', '18', 'NAWABAD'),
(527, 'PK', '34', 'NAWAGAY'),
(528, 'PK', '26', 'NAWAN SHEHR'),
(529, 'PK', '39', 'NAWAY KALI'),
(530, 'PK', '30', 'NEW INDUSTRIAL AREA '),
(531, 'PK', '18', 'NINDO'),
(532, 'PK', '15', 'NIZAMABAD'),
(533, 'PK', '19', 'NOGRAN '),
(534, 'PK', '15', 'NOKHAR'),
(535, 'PK', '41', 'NONAR'),
(536, 'PK', '26', 'NOOR COLONY'),
(537, 'PK', '41', 'NOOR KOT'),
(538, 'PK', '5', 'NOORPUR'),
(539, 'PK', '21', 'NOORPUR THAL'),
(540, 'PK', '2', 'NORIABAD'),
(541, 'PK', '27', 'NOWSHERA KALAN'),
(542, 'PK', '15', 'NOWSHERA VIRKAN'),
(543, 'PK', '42', 'NOWSHERO FEROZE'),
(544, 'PK', '26', 'NRTC (TELECOM STAFF COLLEGE)'),
(545, 'PK', '42', 'NUDEARO'),
(546, 'PK', '18', 'ODERO LAL'),
(547, 'PK', '18', 'OLD HALA'),
(548, 'PK', '34', 'OOCH LOWER DIR'),
(549, 'PK', '3', 'P.O.F. (FACTORY & COLONY)'),
(550, 'PK', '34', 'PABI'),
(551, 'PK', '42', 'PADEDAN'),
(552, 'PK', '4', 'PAHARPUR'),
(553, 'PK', '25', 'PAHRIANWALI ADDA'),
(554, 'PK', '18', 'PANGRIO'),
(555, 'PK', '30', 'PANJERI'),
(556, 'PK', '42', 'PANOAQIL'),
(557, 'PK', '15', 'PAPNAKHA'),
(558, 'PK', '4', 'PAROA'),
(559, 'PK', '2', 'PASNI'),
(560, 'PK', '41', 'PASROOR'),
(561, 'PK', '41', 'PASROOR ROAD AND VILLAGES'),
(562, 'PK', '18', 'PATHAR GOTH'),
(563, 'PK', '33', 'PATOKI'),
(564, 'PK', '3', 'PATRIATA'),
(565, 'PK', '14', 'PEER MAHAL'),
(566, 'PK', '4', 'PEZU'),
(567, 'PK', '25', 'PHALIA'),
(568, 'PK', '18', 'PHULADYN'),
(569, 'PK', '17', 'PINDI BHATIAN'),
(570, 'PK', '3', 'PINDI GHEB'),
(571, 'PK', '3', 'PINDI GUJRAN'),
(572, 'PK', '18', 'PINYAL'),
(573, 'PK', '29', 'PIPLAN'),
(574, 'PK', '39', 'PIR BABA'),
(575, 'PK', '18', 'PIR JHUNDU'),
(576, 'PK', '34', 'PIRAN'),
(577, 'PK', '42', 'PIRJOGOTH'),
(578, 'PK', '23', 'PIROWAL'),
(579, 'PK', '35', 'PISHIN'),
(580, 'PK', '18', 'PITARO'),
(581, 'PK', '3', 'PLANDARI / SADHNOTI (AJK)'),
(582, 'PK', '26', 'PMA KAKUL'),
(583, 'PK', '30', 'POONA'),
(584, 'PK', '3', 'POONCH (AJK)'),
(585, 'PK', '7', 'PUL KHARA'),
(586, 'PK', '30', 'PULL MANDA (AJK)'),
(587, 'PK', '23', 'PULL NO 14'),
(588, 'PK', '43', 'PUNGIRAYIN'),
(589, 'PK', '23', 'PUNJAB SEED CORP. PIROWAL'),
(590, 'PK', '28', 'PUNJAB SUGAR MILLS'),
(591, 'PK', '40', 'PUNWAN'),
(592, 'PK', '30', 'PUNYAM'),
(593, 'PK', '19', 'PURAAN '),
(594, 'PK', '39', 'QABAL'),
(595, 'PK', '5', 'QABOOLA SHARIF'),
(596, 'PK', '42', 'QADIR PUR'),
(597, 'PK', '7', 'QADIR PUR RAWAN'),
(598, 'PK', '21', 'QAIDABAD'),
(599, 'PK', '29', 'QAMAR MASHANI'),
(600, 'PK', '42', 'QAMBER ALI KHAN'),
(601, 'PK', '31', 'QASBA GUJRAT.'),
(602, 'PK', '18', 'QAZI AHMED'),
(603, 'PK', '15', 'QILA DEEDAR SING'),
(604, 'PK', '41', 'QILA SAIB SINGH'),
(605, 'PK', '42', 'RADHAN'),
(606, 'PK', '22', 'RAIWIND'),
(607, 'PK', '30', 'RAJ DHANI'),
(608, 'PK', '22', 'RAJA JANG'),
(609, 'PK', '7', 'RAJA RAM'),
(610, 'PK', '13', 'RAJAN PUR'),
(611, 'PK', '14', 'RAJANA'),
(612, 'PK', '34', 'RAJAR'),
(613, 'PK', '18', 'RAJU KHANANI'),
(614, 'PK', '19', 'RAJWAL'),
(615, 'PK', '4', 'RAMAK'),
(616, 'PK', '42', 'RANI PUR'),
(617, 'PK', '22', 'RAO KHAN WALA'),
(618, 'PK', '32', 'RASHAKI'),
(619, 'PK', '42', 'RATO DEARO'),
(620, 'PK', '30', 'RATTA'),
(621, 'PK', '3', 'RAWAT'),
(622, 'PK', '6', 'RENALA KHURD'),
(623, 'PK', '27', 'RISALPUR'),
(624, 'PK', '31', 'ROHALANWALI'),
(625, 'PK', '15', 'ROHIAN WALI'),
(626, 'PK', '42', 'ROHRI'),
(627, 'PK', '13', 'ROJHAN'),
(628, 'PK', '11', 'RUBWA'),
(629, 'PK', '19', 'SADAT PUR'),
(630, 'PK', '15', 'SADOKI'),
(631, 'PK', '18', 'SAEEDABAD'),
(632, 'PK', '40', 'SAFDARABAD'),
(633, 'PK', '3', 'SAGHAR'),
(634, 'PK', '3', 'SAGRI'),
(635, 'PK', '41', 'SAHOWALA'),
(636, 'PK', '39', 'SAIDU SHARIF'),
(637, 'PK', '2', 'SAJAWAL'),
(638, 'PK', '34', 'SAKHA KOT'),
(639, 'PK', '18', 'SAKRAND'),
(640, 'PK', '14', 'SALAR WALA'),
(641, 'PK', '14', 'SAMANDARI'),
(642, 'PK', '30', 'SAMANI (AJK)'),
(643, 'PK', '18', 'SAMARO'),
(644, 'PK', '30', 'SAMLOTHA'),
(645, 'PK', '31', 'SANAWAN'),
(646, 'PK', '18', 'SANGAR'),
(647, 'PK', '42', 'SANGHI (PSO DEPOT)'),
(648, 'PK', '40', 'SANGLA HILL'),
(649, 'PK', '30', 'SANGOI'),
(650, 'PK', '18', 'SANJHORO'),
(651, 'PK', '3', 'SANJWAL'),
(652, 'PK', '23', 'SARAI SIDHU'),
(653, 'PK', '4', 'SARAYE GAMBILA'),
(654, 'PK', '4', 'SARAYE NORANG'),
(655, 'PK', '36', 'SARDAR GARH'),
(656, 'PK', '34', 'SARDARYAB'),
(657, 'PK', '42', 'SARHAD'),
(658, 'PK', '19', 'SARI ALAMGIR'),
(659, 'PK', '14', 'SATYYANA'),
(660, 'PK', '27', 'SAWABI'),
(661, 'PK', '39', 'SAWAT'),
(662, 'PK', '30', 'SAYAKH'),
(663, 'PK', '24', 'SEHJA'),
(664, 'PK', '42', 'SEHWAN SHARIF'),
(665, 'PK', '34', 'SHABQADAR'),
(666, 'PK', '42', 'SHADAD KOT'),
(667, 'PK', '18', 'SHADI LARGE'),
(668, 'PK', '16', 'SHADIWAL'),
(669, 'PK', '31', 'SHAH JAMAL'),
(670, 'PK', '20', 'SHAH JUINA'),
(671, 'PK', '18', 'SHAH PUR CHAKAR'),
(672, 'PK', '2', 'SHAHAQEEQ'),
(673, 'PK', '18', 'SHAHDAD PUR'),
(674, 'PK', '40', 'SHAHKOT'),
(675, 'PK', '18', 'SHAHPUR JAHANIA'),
(676, 'PK', '38', 'SHAHPUR SADDAR'),
(677, 'PK', '20', 'SHAKARGANJ SUGAR MILLS, JHANG'),
(678, 'PK', '19', 'SHAKIRILA'),
(679, 'PK', '22', 'SHAM KOT'),
(680, 'PK', '3', 'SHAMS ABAD'),
(681, 'PK', '39', 'SHANGLA'),
(682, 'PK', '32', 'SHEEDO'),
(683, 'PK', '31', 'SHER SULTAN'),
(684, 'PK', '27', 'SHERGARH'),
(685, 'PK', '27', 'SHEWA ADDA'),
(686, 'PK', '26', 'SHIMLA HILL'),
(687, 'PK', '20', 'SHORKOT'),
(688, 'PK', '7', 'SHUJABAD'),
(689, 'PK', '42', 'SIBI'),
(690, 'PK', '3', 'SIHALA'),
(691, 'PK', '29', 'SIKANDARABAD'),
(692, 'PK', '38', 'SILANWALI'),
(693, 'PK', '18', 'SINDHRI'),
(694, 'PK', '18', 'SIRAJ RAHO'),
(695, 'PK', '43', 'SIRAYE MUHAJIR'),
(696, 'PK', '3', 'SKARDU'),
(697, 'PK', '12', 'SMAAL IND ESTATE. DASKA'),
(698, 'PK', '39', 'SOARAY'),
(699, 'PK', '42', 'SOBHODERO'),
(700, 'PK', '3', 'SOHAWA ONLY MAIN GT ROAD'),
(701, 'PK', '42', 'SUIGAS'),
(702, 'PK', '30', 'SUKASAN'),
(703, 'PK', '42', 'SULTAN KOT'),
(704, 'PK', '3', 'SUMBAL'),
(705, 'PK', '12', 'SUMBRIAL'),
(706, 'PK', '1', 'SUNDER ADDA'),
(707, 'PK', '30', 'SURAKHE'),
(708, 'PK', '40', 'SYED WALA'),
(709, 'PK', '27', 'TAKHT-E-BHAI'),
(710, 'PK', '3', 'TALAGUNG'),
(711, 'PK', '18', 'TALHAR'),
(712, 'PK', '34', 'TALL'),
(713, 'PK', '22', 'TALVANDI'),
(714, 'PK', '16', 'TANDA'),
(715, 'PK', '18', 'TANDO ADAM'),
(716, 'PK', '18', 'TANDO ALAM'),
(717, 'PK', '18', 'TANDO ALLAHYAR'),
(718, 'PK', '18', 'TANDO BHAGU'),
(719, 'PK', '18', 'TANDO GHULAM ALI'),
(720, 'PK', '18', 'TANDO JAM'),
(721, 'PK', '18', 'TANDO JAN MUHAMMAD'),
(722, 'PK', '18', 'TANDO MOHD KHAN'),
(723, 'PK', '34', 'TANGI'),
(724, 'PK', '3', 'TARBELA DAM'),
(725, 'PK', '3', 'TARNOL'),
(726, 'PK', '15', 'TATLAY VALI'),
(727, 'PK', '13', 'TAUNSA SHARIF'),
(728, 'PK', '3', 'TAXLA'),
(729, 'PK', '34', 'THANA'),
(730, 'PK', '30', 'THARA'),
(731, 'PK', '23', 'THATTA (SADIQABAD)'),
(732, 'PK', '22', 'THEENG MORE (ALLAHABAD)'),
(733, 'PK', '42', 'THULL'),
(734, 'PK', '5', 'TIBBA SULTANPURA'),
(735, 'PK', '13', 'TIBI QAISARANI'),
(736, 'PK', '34', 'TIMARGARAH'),
(737, 'PK', '27', 'TOPI (GIK UNIVERSITY AREA ONLY)*'),
(738, 'PK', '36', 'TRANDA SAWAY KHAN'),
(739, 'PK', '24', 'TRANDA MOHAMMAD PANAH'),
(740, 'PK', '28', 'TULAMBA'),
(741, 'PK', '42', 'UBARO'),
(742, 'PK', '42', 'UCH POWER STATION'),
(743, 'PK', '9', 'UCH SHRIF'),
(744, 'PK', '26', 'UGGHI'),
(745, 'PK', '41', 'UGGOKE'),
(746, 'PK', '18', 'UMER KOT'),
(747, 'PK', '34', 'UPPER DIR'),
(748, 'PK', '42', 'USTA MUHAMMAD'),
(749, 'PK', '43', 'VILLAGE SIAL'),
(750, 'PK', '33', 'WAN RAHDA RAM'),
(751, 'PK', '42', 'WANGO'),
(752, 'PK', '30', 'WAPDA COLONY (AJK)'),
(753, 'PK', '40', 'WARBATTAN'),
(754, 'PK', '34', 'WARSAK'),
(755, 'PK', '15', 'WAZIRABAD'),
(756, 'PK', '9', 'YAZMAN'),
(757, 'PK', '41', 'ZAFARWAL'),
(758, 'PK', '24', 'ZAHIR PIR'),
(759, 'PK', '35', 'ZHOB'),
(760, 'PK', '44', 'GPO'),
(761, 'PK', '44', 'OVERSEAS'),
(762, 'PK', '44', 'INCOMPLETE / UNTRACEABLE'),
(763, 'PK', '44', 'HOLD MAIL'),
(764, 'PK', '44', 'STOP'),
(765, 'PK', '44', 'RETURN'),
(766, 'PK', '44', 'VIP'),
(767, 'PK', '44', 'HEAD OFFICE'),
(768, 'PK', '26', 'HAVELIAN'),
(769, 'PK', '35', 'JAFFARABAD');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `country_code`) VALUES
(240, 'Pakistan', 'PK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries_phone_code`
--

CREATE TABLE `tbl_countries_phone_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_countries_phone_code`
--

INSERT INTO `tbl_countries_phone_code` (`id`, `code`) VALUES
(1, '+93'),
(2, '+358'),
(3, '+355'),
(4, '+213'),
(5, '+1684'),
(6, '+376'),
(7, '+244'),
(8, '+1264'),
(9, '+672'),
(10, '+1268'),
(11, '+54'),
(12, '+374'),
(13, '+297'),
(14, '+61'),
(15, '+43'),
(16, '+994'),
(17, '+1242'),
(18, '+973'),
(19, '+880'),
(20, '+1246'),
(21, '+375'),
(22, '+32'),
(23, '+501'),
(24, '+229'),
(25, '+1441'),
(26, '+975'),
(27, '+591'),
(28, '+387'),
(29, '+267'),
(30, '+55'),
(31, '+246'),
(32, '+673'),
(33, '+359'),
(34, '+226'),
(35, '+257'),
(36, '+855'),
(37, '+237'),
(38, '+1'),
(39, '+238'),
(40, '+ 345'),
(41, '+236'),
(42, '+235'),
(43, '+56'),
(44, '+86'),
(45, '+61'),
(46, '+61'),
(47, '+57'),
(48, '+269'),
(49, '+242'),
(50, '+243'),
(51, '+682'),
(52, '+506'),
(53, '+225'),
(54, '+385'),
(55, '+53'),
(56, '+357'),
(57, '+420'),
(58, '+45'),
(59, '+253'),
(60, '+1767'),
(61, '+1849'),
(62, '+593'),
(63, '+20'),
(64, '+503'),
(65, '+240'),
(66, '+291'),
(67, '+372'),
(68, '+251'),
(69, '+500'),
(70, '+298'),
(71, '+679'),
(72, '+358'),
(73, '+33'),
(74, '+594'),
(75, '+689'),
(76, '+241'),
(77, '+220'),
(78, '+995'),
(79, '+49'),
(80, '+233'),
(81, '+350'),
(82, '+30'),
(83, '+299'),
(84, '+1473'),
(85, '+590'),
(86, '+1671'),
(87, '+502'),
(88, '+44'),
(89, '+224'),
(90, '+245'),
(91, '+595'),
(92, '+509'),
(93, '+379'),
(94, '+504'),
(95, '+852'),
(96, '+36'),
(97, '+354'),
(98, '+91'),
(99, '+62'),
(100, '+98'),
(101, '+964'),
(102, '+353'),
(103, '+44'),
(104, '+972'),
(105, '+39'),
(106, '+1876'),
(107, '+81'),
(108, '+44'),
(109, '+962'),
(110, '+7 7'),
(111, '+254'),
(112, '+686'),
(113, '+850'),
(114, '+82'),
(115, '+965'),
(116, '+996'),
(117, '+856'),
(118, '+371'),
(119, '+961'),
(120, '+266'),
(121, '+231'),
(122, '+218'),
(123, '+423'),
(124, '+370'),
(125, '+352'),
(126, '+853'),
(127, '+389'),
(128, '+261'),
(129, '+265'),
(130, '+60'),
(131, '+960'),
(132, '+223'),
(133, '+356'),
(134, '+692'),
(135, '+596'),
(136, '+222'),
(137, '+230'),
(138, '+262'),
(139, '+52'),
(140, '+691'),
(141, '+373'),
(142, '+377'),
(143, '+976'),
(144, '+382'),
(145, '+1664'),
(146, '+212'),
(147, '+258'),
(148, '+95'),
(149, '+264'),
(150, '+674'),
(151, '+977'),
(152, '+31'),
(153, '+599'),
(154, '+687'),
(155, '+64'),
(156, '+505'),
(157, '+227'),
(158, '+234'),
(159, '+683'),
(160, '+672'),
(161, '+1670'),
(162, '+47'),
(163, '+968'),
(164, '+92'),
(165, '+680'),
(166, '+970'),
(167, '+507'),
(168, '+675'),
(169, '+595'),
(170, '+51'),
(171, '+63'),
(172, '+872'),
(173, '+48'),
(174, '+351'),
(175, '+1939'),
(176, '+974'),
(177, '+40'),
(178, '+7'),
(179, '+250'),
(180, '+262'),
(181, '+590'),
(182, '+290'),
(183, '+1869'),
(184, '+1758'),
(185, '+590'),
(186, '+508'),
(187, '+1784'),
(188, '+685'),
(189, '+378'),
(190, '+239'),
(191, '+966'),
(192, '+221'),
(193, '+381'),
(194, '+248'),
(195, '+232'),
(196, '+65'),
(197, '+421'),
(198, '+386'),
(199, '+677'),
(200, '+252'),
(201, '+27'),
(202, '+500'),
(203, '+34'),
(204, '+94'),
(205, '+249'),
(206, '+597'),
(207, '+47'),
(208, '+268'),
(209, '+46'),
(210, '+41'),
(211, '+963'),
(212, '+886'),
(213, '+992'),
(214, '+255'),
(215, '+66'),
(216, '+670'),
(217, '+228'),
(218, '+690'),
(219, '+676'),
(220, '+1868'),
(221, '+216'),
(222, '+90'),
(223, '+993'),
(224, '+1649'),
(225, '+688'),
(226, '+256'),
(227, '+380'),
(228, '+971'),
(229, '+44'),
(230, '+1'),
(231, '+598'),
(232, '+998'),
(233, '+678'),
(234, '+58'),
(235, '+84'),
(236, '+1284'),
(237, '+1340'),
(238, '+681'),
(239, '+967'),
(240, '+260'),
(241, '+263');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupons`
--

CREATE TABLE `tbl_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_offer` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_uses` int(11) NOT NULL,
  `min_order_amount` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `max_order_amount` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `limit_per_customer` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_coupons`
--

INSERT INTO `tbl_coupons` (`id`, `ip_address`, `admin_id`, `vendor_id`, `code`, `discount_type`, `start_date`, `end_date`, `discount_offer`, `no_of_uses`, `min_order_amount`, `max_order_amount`, `limit_per_customer`, `order_type`, `status`, `created_date`, `created_time`) VALUES
(1, '::1', 1, NULL, 'Test 0001', 1, '2019-04-17', '2019-05-31', '499', 2, '4999', '14999', 1, 1, 0, '2019-04-17', '12:06:57'),
(2, '::1', 1, NULL, 'Test 0002', 1, '2019-04-17', '2019-05-31', '399', 1, '4999', '14999', 1, 1, 0, '2019-04-17', '12:06:57'),
(3, '::1', 1, NULL, 'shopker deal', 0, '2019-04-17', '2019-04-30', '10', 10, '500', '5000', 1, 1, 0, '2019-04-17', '17:59:02'),
(4, '103.255.5.111', 1, 0, 'ABN786', 1, '2019-07-11', '2019-07-13', '100', 2, '1000', '5000', 1, 1, 0, '2019-07-11', '13:50:54'),
(5, '103.255.5.79', 1, 0, 'test', 1, '2019-08-08', '2019-08-09', '100', 1, '1000', '500', 1, 0, 0, '2019-08-08', '16:08:15'),
(6, '103.255.5.79', 1, 0, 'Azadi14', 0, '2019-08-08', '2019-08-15', '14', 50, '1', '5000', 1, 1, 0, '2019-08-08', '16:26:11'),
(7, '103.217.178.13', 1, 0, 'BHJBHJB', 0, '2019-08-16', '2019-08-19', '15', 10000000, '10000', '10000000', 445, 1, 0, '2019-08-09', '19:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupons_products`
--

CREATE TABLE `tbl_coupons_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emails`
--

CREATE TABLE `tbl_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_emails`
--

INSERT INTO `tbl_emails` (`id`, `ip_address`, `name`, `email`, `subject`, `phone_no`, `message`, `type`, `created_date`, `created_time`) VALUES
(1, '::1', 'Shahzaib Imran', 'Shahzaiibimran@gmail.com', 'Hello, this is a test whole sale request.', '03362642935', 'Hello this is Shahzaib Imran.', 0, '2019-04-10', '01:31:51'),
(2, '::1', 'Munir Ahmed', 'MunirAhmed@gmail.com', 'Testing Contact Email', '12345678901', 'Hello this is a contact us email.', 1, '2019-04-11', '11:28:11'),
(3, '::1', 'imran', 'info@parcelit.com', 'nned mobiles', '03004128681', 'test', 0, '2019-04-11', '11:50:24'),
(4, '31.204.181.238', 'Zafarovo https://google.com', 'l_echin@mail.ru', 'Zafarovo https://google.com', '85121594865', 'Zafarovo https://google.com', 0, '2019-05-24', '02:13:43'),
(5, '31.204.181.238', 'Zafarovo https://google.com', 'sofiya.kusina@mail.ru', 'Zafarovo https://google.com', '87579836858', 'Zafarovo https://google.com', 0, '2019-05-24', '05:27:48'),
(6, '31.204.181.238', 'Zafarovo https://google.com', 'singberrasu1977@mail.ru', 'Zafarovo https://google.com', '83117135241', 'Zafarovo https://google.com', 0, '2019-05-25', '09:50:41'),
(7, '31.204.181.238', 'Zafarovo https://google.com', 'scoratvirmusc1981@mail.ru', 'Zafarovo https://google.com', '84975142888', 'Zafarovo https://google.com', 0, '2019-05-27', '12:30:33'),
(8, '31.204.181.238', 'Zafarovo https://google.com', 'vita.gribacheva.86@mail.ru', 'Zafarovo https://google.com', '84196749612', 'Zafarovo https://google.com', 0, '2019-05-28', '10:16:50'),
(9, '82.147.67.70', 'Lettie Sapp', 'sapp.lettie@googlemail.com', 'Hello I would like to order something from your shop', '052 780 15 72', 'Hello\r\n\r\nI want to say what a nice site you have made.\r\nI am a regular customer of your shop.\r\nI had visited your store last month, and I saw a very nice item i wanne order.\r\nBut I have a question! today I wanted to order it, but can not find the product anymore in your website.\r\nThe item looks like the first picture on this webshop. http://bit.ly/SewingItem4325\r\nI hope you will sell it again soon.\r\nI\'ll wait.\r\n\r\ngreetings', 1, '2019-07-07', '06:21:05'),
(10, '110.37.204.74', 'Danish Masood', 'danishmasood72@gmail.com', 'reseller', '03486619930', 'i want to join your wholeseller program im online seller', 0, '2019-07-07', '06:12:20'),
(11, '103.255.5.111', 'test', 'test@gmail.com', 'test', '03225739999', 'test', 0, '2019-07-11', '04:11:55'),
(12, '103.255.4.58', 'munir ahmad', 'abntraders17@gmail.com', 'test', '03004128681', 'test', 0, '2019-07-12', '04:34:07'),
(13, '185.93.3.114', 'Kevinhef', 'raphaeoi@gmail.com', 'Delivery of your email messages.', '88759196262', 'Hello!  shopker.pk \r\n \r\nWe propose \r\n \r\nSending your commercial proposal through the feedback form which can be found on the sites in the contact section. Feedback forms are filled in by our software and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This technique raise the odds that your message will be open. \r\n \r\nOur database contains more than 25 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing of 50,000 messages to any country of your choice. \r\n \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - FeedbackForm@make-success.com \r\nWhatsApp - +44 7598 509161', 0, '2019-08-07', '06:46:41'),
(14, '185.253.96.198', 'Thomascoope', 'noreplymonkeydigital@gmail.com', 'Improve Alexa Ranks to increase trust and confidence for your business', '84852675329', 'Having a better Alexa for your website will increase sales and visibility \r\n \r\nOur service is intended to improve the Global Alexa traffic rank of a website. It usually takes seven days to see the primary change and one month to achieve your desired three-month average Alexa Rank. The three-month average Alexa traffic rank is the one that Alexa.com shows on the Alexa’s toolbar. \r\n \r\nFor more information visit our website \r\nhttps://monkeydigital.co/product/alexa-rank-service/ \r\n \r\nthanks and regards \r\nMike \r\nmonkeydigital.co@gmail.com', 0, '2019-08-21', '07:02:40'),
(15, '37.120.217.41', 'HireLabas Gruppe', 'topmanager@zeitarbeits.lt', 'Arbeitnehmerüberlassung', '81713561818', 'Sehr geehrte Damen und Herren, \r\n \r\nIm Bereich der Personalvermittlung ist HireLabas Gruppe Ihre innovative Zeitarbeitsfirma. \r\n \r\n \r\nWir stehen Ihnen bei den Themen Zeitarbeit aus dem Ausland, Personalvermittlung Litauen und bei weiteren Fachgebieten der Zeitarbeit zur Verfügung. \r\nAls Personalvermittlung mit Sitz in Deutschland helfen wir Ihnen beim Personalleasing und vermitteln Arbeitskräfte aus dem Ausland. Auch bei der Thematik Arbeitnehmerüberlassung Ausland oder bei der generellen Hilfe von der Zeitarbeit aus dem Ausland helfen wir Ihnen. \r\n \r\nAls Personalfirma vermitteln wir ausländische Arbeitskräfte, Saisonarbeiter. Mitarbeiter aus Litauen und auch bei anderem Personal aus Osteuropa stehen wir Ihnen als zuverlässiger \r\nDienstleister jederzeit zur Verfügung. \r\n \r\nPersonalvermittlung \r\n \r\nLITAUEN ARBEITSKRÄFTE ANGEBOTE \r\nSie benötigen schnelle Hilfe in Form einer Arbeitskraft? So lassen Sie sich schnell und unverbindlich ein Angebot von uns machen. Wir antworten in der Regel innerhalb von 24h, oder rufen Sie auch gern zurück. \r\n \r\nKontakte: \r\n \r\nHireLabas Gruppe \r\nVasaros str. 24, Marijampole, Litauen 68110 \r\ntopmanager@zeitarbeits.lt \r\nhttp://www.zeitarbeits.lt/ \r\nTel. +49 151 64102628 Frau Rasita', 0, '2019-08-26', '03:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_activities`
--

CREATE TABLE `tbl_login_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_login_activities`
--

INSERT INTO `tbl_login_activities` (`id`, `ip_address`, `user_id`, `status`, `date`, `time`) VALUES
(1, '::1', 1, 0, '2019-02-07', '13:56:46'),
(2, '::1', 1, 0, '2019-02-08', '09:27:52'),
(3, '::1', 1, 1, '2019-02-08', '10:44:32'),
(4, '::1', 1, 0, '2019-02-08', '15:04:45'),
(5, '::1', 1, 0, '2019-02-09', '10:56:39'),
(6, '::1', 1, 0, '2019-02-09', '16:45:52'),
(7, '::1', 1, 0, '2019-02-11', '09:09:22'),
(8, '::1', 1, 0, '2019-02-12', '10:11:33'),
(9, '::1', 1, 1, '2019-02-12', '18:08:27'),
(10, '::1', 1, 0, '2019-02-13', '11:23:32'),
(11, '::1', 1, 1, '2019-02-13', '13:52:25'),
(12, '::1', 1, 0, '2019-02-13', '15:09:12'),
(13, '::1', 1, 1, '2019-02-13', '15:11:22'),
(14, '::1', 1, 0, '2019-02-13', '15:11:31'),
(15, '::1', 1, 1, '2019-02-13', '15:11:43'),
(16, '::1', 1, 0, '2019-02-13', '15:11:55'),
(17, '::1', 1, 1, '2019-02-13', '17:15:10'),
(18, '::1', 1, 0, '2019-02-14', '14:37:31'),
(19, '::1', 1, 1, '2019-02-14', '14:53:08'),
(20, '::1', 1, 0, '2019-02-14', '14:55:24'),
(21, '::1', 1, 1, '2019-02-14', '14:55:44'),
(22, '::1', 1, 0, '2019-02-14', '15:05:06'),
(23, '::1', 1, 1, '2019-02-14', '17:16:59'),
(24, '::1', 1, 0, '2019-02-14', '17:37:38'),
(25, '::1', 1, 1, '2019-02-14', '17:37:41'),
(26, '::1', 1, 0, '2019-02-14', '17:40:19'),
(27, '::1', 1, 1, '2019-02-14', '17:41:38'),
(28, '::1', 1, 0, '2019-02-14', '17:50:07'),
(29, '::1', 1, 1, '2019-02-14', '17:50:29'),
(30, '::1', 1, 0, '2019-02-14', '17:58:41'),
(31, '::1', 1, 1, '2019-02-14', '17:58:59'),
(32, '::1', 1, 0, '2019-02-15', '13:04:23'),
(33, '::1', 1, 1, '2019-02-15', '13:06:31'),
(34, '::1', 1, 0, '2019-02-15', '16:01:39'),
(35, '::1', 1, 0, '2019-02-16', '09:48:16'),
(36, '::1', 1, 1, '2019-02-16', '09:50:53'),
(37, '::1', 1, 0, '2019-02-18', '11:20:28'),
(38, '::1', 1, 1, '2019-02-18', '11:20:40'),
(39, '::1', 1, 0, '2019-02-18', '11:23:04'),
(40, '::1', 1, 1, '2019-02-18', '15:56:54'),
(41, '::1', 1, 0, '2019-02-18', '16:35:03'),
(42, '::1', 1, 0, '2019-02-19', '16:21:36'),
(43, '::1', 1, 1, '2019-02-19', '16:26:02'),
(44, '::1', 0, 1, '2019-02-19', '17:36:17'),
(45, '::1', 2, 0, '2019-02-20', '11:03:07'),
(46, '::1', 2, 0, '2019-02-20', '11:20:41'),
(47, '::1', 2, 1, '2019-02-20', '11:25:56'),
(48, '::1', 2, 0, '2019-02-20', '11:26:08'),
(49, '::1', 2, 0, '2019-02-21', '04:10:01'),
(50, '::1', 1, 0, '2019-02-21', '09:42:34'),
(51, '::1', 2, 0, '2019-02-22', '04:51:52'),
(52, '::1', 2, 0, '2019-02-22', '09:32:55'),
(53, '::1', 1, 0, '2019-02-22', '15:24:01'),
(54, '::1', 2, 0, '2019-02-23', '06:33:48'),
(55, '::1', 2, 0, '2019-02-23', '09:57:54'),
(56, '::1', 2, 0, '2019-02-23', '11:28:36'),
(57, '::1', 2, 1, '2019-02-23', '11:33:32'),
(58, '::1', 2, 0, '2019-02-25', '04:24:49'),
(59, '::1', 1, 0, '2019-02-25', '09:32:20'),
(60, '::1', 1, 1, '2019-02-25', '09:32:46'),
(61, '::1', 2, 0, '2019-02-25', '04:46:29'),
(62, '::1', 2, 0, '2019-02-25', '09:31:15'),
(63, '::1', 2, 1, '2019-02-25', '10:24:31'),
(64, '::1', 2, 0, '2019-02-25', '11:30:46'),
(65, '::1', 2, 1, '2019-02-25', '12:00:37'),
(66, '::1', 2, 0, '2019-02-25', '12:39:10'),
(67, '::1', 2, 0, '2019-02-26', '05:57:23'),
(68, '::1', 2, 0, '2019-02-26', '06:35:00'),
(69, '::1', 2, 0, '2019-02-26', '06:44:45'),
(70, '::1', 2, 0, '2019-02-26', '08:58:10'),
(71, '::1', 2, 0, '2019-02-26', '09:07:19'),
(72, '::1', 2, 1, '2019-02-26', '09:11:13'),
(73, '::1', 2, 0, '2019-02-26', '09:11:27'),
(74, '::1', 2, 1, '2019-02-26', '09:17:21'),
(75, '::1', 2, 0, '2019-02-26', '09:17:29'),
(76, '::1', 2, 0, '2019-02-26', '11:45:00'),
(77, '::1', 2, 1, '2019-02-26', '11:51:06'),
(78, '::1', 2, 0, '2019-02-26', '12:40:23'),
(79, '::1', 2, 0, '2019-02-27', '04:08:20'),
(80, '::1', 2, 0, '2019-02-28', '08:13:47'),
(81, '::1', 2, 1, '2019-02-28', '08:22:29'),
(82, '::1', 2, 0, '2019-03-05', '05:52:07'),
(83, '::1', 2, 0, '2019-03-05', '05:58:23'),
(84, '::1', 2, 0, '2019-03-05', '06:37:01'),
(85, '::1', 2, 0, '2019-03-05', '06:38:34'),
(86, '::1', 1, 0, '2019-03-05', '13:12:50'),
(87, '::1', 1, 0, '2019-03-05', '15:44:57'),
(88, '::1', 2, 0, '2019-03-05', '11:43:59'),
(89, '::1', 1, 0, '2019-03-06', '11:10:52'),
(90, '::1', 1, 1, '2019-03-06', '11:40:07'),
(91, '::1', 1, 0, '2019-03-06', '11:45:53'),
(92, '::1', 2, 0, '2019-03-06', '10:48:07'),
(93, '::1', 2, 0, '2019-03-06', '13:08:29'),
(94, '::1', 2, 0, '2019-03-07', '09:40:57'),
(95, '::1', 2, 1, '2019-03-07', '09:42:16'),
(96, '::1', 2, 0, '2019-03-08', '07:09:09'),
(97, '::1', 2, 0, '2019-03-08', '07:39:18'),
(98, '::1', 2, 0, '2019-03-08', '09:55:45'),
(99, '::1', 2, 0, '2019-03-08', '10:46:01'),
(100, '::1', 2, 1, '2019-03-08', '11:01:09'),
(101, '::1', 1, 0, '2019-03-08', '16:01:39'),
(102, '::1', 1, 1, '2019-03-08', '19:16:31'),
(103, '::1', 1, 0, '2019-03-09', '10:53:07'),
(104, '::1', 1, 1, '2019-03-09', '13:00:18'),
(105, '::1', 2, 0, '2019-03-11', '09:39:44'),
(106, '::1', 2, 1, '2019-03-11', '09:40:10'),
(107, '::1', 1, 0, '2019-03-13', '10:02:03'),
(108, '::1', 1, 1, '2019-03-13', '10:47:52'),
(109, '::1', 2, 0, '2019-03-13', '05:48:20'),
(110, '::1', 2, 1, '2019-03-13', '06:31:37'),
(111, '::1', 1, 0, '2019-03-13', '11:37:39'),
(112, '::1', 1, 0, '2019-03-13', '14:55:26'),
(113, '::1', 1, 1, '2019-03-13', '15:09:25'),
(114, '::1', 2, 0, '2019-03-13', '10:27:34'),
(115, '::1', 2, 0, '2019-03-14', '09:09:54'),
(116, '::1', 2, 0, '2019-03-14', '09:30:03'),
(117, '::1', 2, 1, '2019-03-14', '09:35:34'),
(118, '::1', 2, 0, '2019-03-14', '09:53:03'),
(119, '::1', 2, 1, '2019-03-14', '09:53:21'),
(120, '::1', 2, 0, '2019-03-14', '14:27:55'),
(121, '::1', 2, 1, '2019-03-14', '14:30:32'),
(122, '::1', 1, 0, '2019-03-14', '19:49:58'),
(123, '::1', 1, 1, '2019-03-14', '19:50:53'),
(124, '::1', 2, 0, '2019-03-15', '15:33:10'),
(125, '::1', 2, 1, '2019-03-15', '16:29:00'),
(126, '::1', 1, 0, '2019-03-15', '21:29:23'),
(127, '::1', 1, 0, '2019-03-18', '12:06:12'),
(128, '::1', 1, 1, '2019-03-18', '16:49:28'),
(129, '::1', 1, 0, '2019-03-19', '11:44:01'),
(130, '::1', 1, 1, '2019-03-19', '16:25:12'),
(131, '::1', 1, 0, '2019-03-19', '16:42:00'),
(132, '::1', 1, 1, '2019-03-19', '16:59:33'),
(133, '::1', 1, 0, '2019-03-20', '15:11:00'),
(134, '::1', 1, 1, '2019-03-20', '18:17:02'),
(135, '::1', 1, 0, '2019-03-20', '18:52:04'),
(136, '::1', 1, 1, '2019-03-20', '18:52:12'),
(137, '::1', 1, 0, '2019-03-21', '12:45:38'),
(138, '::1', 1, 1, '2019-03-21', '18:18:28'),
(139, '::1', 1, 0, '2019-03-22', '14:50:22'),
(140, '::1', 1, 1, '2019-03-22', '14:50:39'),
(141, '::1', 1, 0, '2019-03-22', '16:01:25'),
(142, '::1', 1, 1, '2019-03-22', '16:09:40'),
(143, '::1', 1, 0, '2019-03-22', '16:14:31'),
(144, '::1', 1, 1, '2019-03-22', '17:35:16'),
(145, '::1', 2, 0, '2019-03-22', '16:23:27'),
(146, '::1', 1, 0, '2019-03-25', '11:31:41'),
(147, '::1', 1, 1, '2019-03-25', '12:07:07'),
(148, '::1', 1, 0, '2019-03-25', '12:51:22'),
(149, '::1', 1, 0, '2019-03-26', '13:06:25'),
(150, '::1', 1, 1, '2019-03-26', '15:24:32'),
(151, '::1', 1, 0, '2019-03-30', '10:50:14'),
(152, '::1', 1, 1, '2019-03-30', '12:03:35'),
(153, '::1', 2, 0, '2019-04-01', '06:40:57'),
(154, '::1', 2, 1, '2019-04-01', '06:42:56'),
(155, '::1', 1, 0, '2019-04-02', '13:26:49'),
(156, '::1', 1, 1, '2019-04-02', '13:36:24'),
(157, '::1', 1, 0, '2019-04-03', '13:16:44'),
(158, '::1', 1, 1, '2019-04-03', '15:35:24'),
(159, '::1', 1, 0, '2019-04-03', '15:49:14'),
(160, '::1', 1, 1, '2019-04-03', '19:09:02'),
(161, '::1', 1, 0, '2019-04-05', '14:49:06'),
(162, '::1', 1, 1, '2019-04-05', '18:48:31'),
(163, '::1', 1, 0, '2019-04-06', '13:34:22'),
(164, '::1', 1, 0, '2019-04-08', '12:24:30'),
(165, '::1', 1, 1, '2019-04-08', '17:59:35'),
(166, '::1', 1, 0, '2019-04-09', '11:37:19'),
(167, '::1', 10, 0, '2019-04-09', '14:48:18'),
(168, '::1', 10, 1, '2019-04-09', '14:48:42'),
(169, '::1', 1, 1, '2019-04-09', '19:57:16'),
(170, '103.255.5.66', 1, 1, '2019-04-09', '20:10:41'),
(171, '103.255.5.66', 1, 0, '2019-04-09', '20:10:44'),
(172, '103.255.5.66', 1, 0, '2019-04-09', '20:13:34'),
(173, '103.217.177.148', 1, 0, '2019-04-09', '20:13:42'),
(174, '103.217.177.148', 1, 1, '2019-04-09', '20:19:26'),
(175, '::1', 1, 1, '2019-04-10', '19:06:30'),
(176, '::1', 1, 0, '2019-04-11', '16:02:05'),
(177, '::1', 1, 1, '2019-04-11', '18:57:13'),
(178, '::1', 13, 0, '2019-04-15', '07:04:17'),
(179, '::1', 13, 0, '2019-04-15', '07:04:33'),
(180, '::1', 13, 0, '2019-04-15', '07:05:26'),
(181, '::1', 1, 0, '2019-04-15', '15:57:50'),
(182, '::1', 1, 1, '2019-04-15', '15:58:48'),
(183, '::1', 13, 0, '2019-04-15', '13:21:30'),
(184, '::1', 13, 0, '2019-04-16', '07:04:32'),
(185, '::1', 13, 0, '2019-04-16', '07:06:10'),
(186, '::1', 13, 0, '2019-04-16', '07:11:28'),
(187, '::1', 1, 0, '2019-04-16', '16:40:29'),
(188, '::1', 1, 0, '2019-04-17', '12:05:02'),
(189, '::1', 13, 0, '2019-04-18', '11:38:04'),
(190, '::1', 13, 0, '2019-04-18', '12:58:16'),
(191, '::1', 1, 0, '2019-04-20', '09:41:54'),
(192, '::1', 1, 1, '2019-04-20', '10:16:25'),
(193, '::1', 1, 0, '2019-04-20', '11:01:23'),
(194, '::1', 1, 1, '2019-04-20', '11:03:31'),
(195, '::1', 1, 0, '2019-04-22', '11:56:15'),
(196, '::1', 1, 1, '2019-04-22', '12:19:48'),
(197, '::1', 13, 0, '2019-04-22', '07:23:39'),
(198, '::1', 13, 0, '2019-04-22', '10:10:05'),
(199, '::1', 13, 0, '2019-04-22', '10:35:28'),
(200, '::1', 1, 0, '2019-04-22', '16:05:12'),
(201, '::1', 1, 1, '2019-04-22', '18:03:29'),
(202, '::1', 1, 0, '2019-04-23', '11:55:48'),
(203, '::1', 1, 0, '2019-04-23', '12:39:56'),
(204, '::1', 13, 0, '2019-04-23', '07:47:06'),
(205, '::1', 1, 1, '2019-04-23', '14:00:10'),
(206, '::1', 1, 0, '2019-04-23', '15:24:06'),
(207, '::1', 1, 1, '2019-04-23', '15:55:44'),
(208, '::1', 13, 0, '2019-04-23', '10:58:54'),
(209, '::1', 1, 0, '2019-04-23', '16:10:43'),
(210, '::1', 13, 0, '2019-04-23', '11:47:24'),
(211, '::1', 1, 0, '2019-04-23', '16:47:52'),
(212, '::1', 13, 0, '2019-04-23', '11:49:35'),
(213, '::1', 13, 0, '2019-04-24', '06:37:56'),
(214, '::1', 13, 0, '2019-04-24', '07:04:51'),
(215, '::1', 13, 0, '2019-04-25', '06:35:32'),
(216, '::1', 1, 0, '2019-04-25', '13:25:59'),
(217, '::1', 13, 0, '2019-04-25', '11:19:43'),
(218, '::1', 13, 0, '2019-04-26', '08:42:55'),
(219, '::1', 13, 0, '2019-04-26', '12:02:13'),
(220, '::1', 1, 0, '2019-04-26', '17:25:57'),
(221, '::1', 1, 1, '2019-04-26', '19:35:19'),
(222, '::1', 1, 0, '2019-04-27', '17:29:33'),
(223, '::1', 13, 0, '2019-04-29', '07:30:57'),
(224, '::1', 1, 0, '2019-04-29', '18:29:11'),
(225, '::1', 13, 0, '2019-04-30', '11:29:15'),
(226, '::1', 1, 0, '2019-04-30', '16:44:13'),
(227, '::1', 1, 1, '2019-04-30', '17:05:52'),
(228, '::1', 1, 0, '2019-05-03', '11:56:48'),
(229, '::1', 1, 1, '2019-05-03', '18:59:25'),
(230, '::1', 2, 0, '2019-05-04', '13:10:55'),
(231, '::1', 1, 0, '2019-05-06', '11:57:48'),
(232, '::1', 1, 1, '2019-05-06', '14:06:53'),
(233, '::1', 1, 0, '2019-05-07', '11:49:20'),
(234, '::1', 1, 1, '2019-05-07', '11:54:24'),
(235, '::1', 2, 0, '2019-05-07', '06:54:45'),
(236, '::1', 1, 0, '2019-05-07', '12:01:25'),
(237, '::1', 2, 0, '2019-05-07', '07:02:48'),
(238, '::1', 1, 0, '2019-05-07', '12:39:33'),
(239, '::1', 1, 1, '2019-05-07', '13:54:44'),
(240, '::1', 1, 0, '2019-05-07', '14:08:02'),
(241, '::1', 1, 1, '2019-05-07', '15:40:54'),
(242, '::1', 2, 1, '2019-05-07', '10:41:50'),
(243, '::1', 2, 0, '2019-05-08', '06:20:11'),
(244, '::1', 1, 0, '2019-05-08', '11:29:59'),
(245, '::1', 2, 0, '2019-05-08', '06:34:27'),
(246, '::1', 2, 1, '2019-05-08', '06:51:03'),
(247, '::1', 2, 0, '2019-05-08', '09:16:41'),
(248, '::1', 13, 0, '2019-05-08', '15:32:25'),
(249, '::1', 2, 0, '2019-05-08', '10:37:22'),
(250, '::1', 1, 1, '2019-05-08', '16:02:04'),
(251, '::1', 2, 1, '2019-05-08', '11:02:09'),
(252, '::1', 1, 0, '2019-05-08', '16:17:19'),
(253, '::1', 2, 0, '2019-05-08', '11:19:41'),
(254, '::1', 2, 1, '2019-05-08', '11:25:08'),
(255, '::1', 1, 1, '2019-05-08', '16:25:11'),
(256, '103.217.177.167', 1, 0, '2019-05-09', '15:26:27'),
(257, '103.217.177.167', 2, 0, '2019-05-09', '11:29:10'),
(258, '103.217.177.167', 1, 0, '2019-05-09', '16:44:07'),
(259, '103.217.177.167', 1, 1, '2019-05-09', '17:00:33'),
(260, '202.163.108.201', 1, 0, '2019-05-12', '00:06:27'),
(261, '202.163.108.201', 1, 1, '2019-05-12', '00:07:49'),
(262, '103.217.177.7', 1, 0, '2019-05-14', '11:37:16'),
(263, '103.217.177.7', 13, 0, '2019-05-14', '13:51:42'),
(264, '103.217.177.10', 13, 0, '2019-05-15', '13:09:10'),
(265, '103.217.177.253', 13, 0, '2019-05-16', '12:31:21'),
(266, '103.217.177.218', 13, 0, '2019-05-17', '14:59:36'),
(267, '103.217.177.244', 15, 0, '2019-05-18', '11:31:08'),
(268, '103.217.177.232', 1, 0, '2019-05-20', '15:49:02'),
(269, '103.217.177.232', 1, 1, '2019-05-20', '16:21:31'),
(270, '::1', 1, 0, '2019-05-29', '16:09:27'),
(271, '::1', 2, 1, '2019-05-29', '16:26:53'),
(272, '::1', 2, 0, '2019-05-29', '17:00:10'),
(273, '::1', 2, 0, '2019-05-30', '13:07:58'),
(274, '::1', 2, 1, '2019-05-30', '13:10:01'),
(275, '::1', 2, 0, '2019-05-30', '13:25:25'),
(276, '::1', 2, 1, '2019-05-30', '14:53:10'),
(277, '::1', 2, 0, '2019-05-30', '15:05:38'),
(278, '::1', 2, 0, '2019-05-30', '15:21:22'),
(279, '::1', 2, 0, '2019-05-30', '15:56:15'),
(280, '::1', 2, 0, '2019-05-30', '15:58:45'),
(281, '::1', 2, 0, '2019-05-30', '15:59:21'),
(282, '::1', 2, 1, '2019-05-30', '16:02:04'),
(283, '::1', 1, 1, '2019-05-30', '16:15:04'),
(284, '37.111.130.160', 1, 0, '2019-07-03', '16:03:51'),
(285, '37.111.130.160', 1, 1, '2019-07-03', '16:04:21'),
(286, '37.111.130.160', 1, 0, '2019-07-03', '16:16:08'),
(287, '37.111.130.160', 1, 1, '2019-07-03', '17:21:02'),
(288, '37.111.130.160', 2, 0, '2019-07-03', '12:53:42'),
(289, '37.111.130.160', 2, 1, '2019-07-03', '17:56:48'),
(290, '37.111.130.160', 1, 0, '2019-07-03', '18:23:18'),
(291, '103.255.5.68', 1, 0, '2019-07-03', '18:24:24'),
(292, '37.111.130.160', 1, 0, '2019-07-04', '10:09:43'),
(293, '37.111.130.160', 1, 1, '2019-07-04', '10:29:01'),
(294, '37.111.130.160', 13, 0, '2019-07-04', '11:26:39'),
(295, '37.111.130.160', 1, 0, '2019-07-04', '16:45:42'),
(296, '37.111.130.160', 13, 0, '2019-07-04', '16:51:59'),
(297, '103.255.5.68', 1, 0, '2019-07-04', '17:24:06'),
(298, '103.255.5.68', 1, 0, '2019-07-04', '17:38:47'),
(299, '103.255.4.8', 1, 0, '2019-07-05', '18:19:34'),
(300, '103.217.177.83', 1, 0, '2019-07-05', '18:51:11'),
(301, '103.217.177.83', 1, 1, '2019-07-05', '18:56:50'),
(302, '103.255.4.8', 1, 0, '2019-07-05', '19:17:32'),
(303, '103.255.4.15', 1, 0, '2019-07-05', '22:17:19'),
(304, '103.255.4.15', 16, 0, '2019-07-05', '22:25:13'),
(305, '103.217.177.83', 1, 0, '2019-07-05', '22:35:56'),
(306, '103.217.177.83', 1, 1, '2019-07-05', '22:36:01'),
(307, '103.255.5.41', 1, 0, '2019-07-05', '22:36:31'),
(308, '103.255.5.41', 16, 0, '2019-07-05', '22:38:15'),
(309, '182.185.144.132', 1, 0, '2019-07-05', '23:16:52'),
(310, '103.255.5.71', 1, 0, '2019-07-06', '15:01:25'),
(311, '103.255.5.71', 1, 0, '2019-07-06', '15:28:26'),
(312, '103.255.5.71', 16, 0, '2019-07-06', '15:36:26'),
(313, '103.255.4.69', 16, 1, '2019-07-06', '15:51:57'),
(314, '103.255.4.69', 16, 0, '2019-07-06', '15:54:02'),
(315, '103.255.4.69', 1, 0, '2019-07-06', '16:25:39'),
(316, '202.163.108.201', 1, 0, '2019-07-06', '17:01:15'),
(317, '202.163.108.201', 1, 1, '2019-07-06', '17:07:34'),
(318, '103.255.4.69', 1, 0, '2019-07-06', '17:09:56'),
(319, '182.185.222.160', 1, 0, '2019-07-06', '23:48:40'),
(320, '182.185.222.160', 16, 0, '2019-07-07', '00:05:50'),
(321, '202.163.108.201', 1, 0, '2019-07-07', '00:24:53'),
(322, '182.185.253.149', 1, 0, '2019-07-07', '15:02:01'),
(323, '182.185.232.203', 16, 0, '2019-07-07', '15:56:29'),
(324, '182.185.232.203', 16, 1, '2019-07-07', '15:56:39'),
(325, '202.163.108.201', 1, 0, '2019-07-07', '18:06:17'),
(326, '103.255.5.74', 1, 0, '2019-07-08', '14:52:30'),
(327, '103.255.5.74', 1, 0, '2019-07-08', '17:01:04'),
(328, '103.255.5.74', 17, 0, '2019-07-08', '17:09:12'),
(329, '103.217.178.17', 2, 0, '2019-07-08', '17:36:09'),
(330, '103.217.178.17', 2, 0, '2019-07-08', '17:57:22'),
(331, '103.217.178.17', 2, 1, '2019-07-08', '18:00:48'),
(332, '103.217.178.17', 1, 0, '2019-07-08', '18:01:57'),
(333, '103.217.178.17', 1, 1, '2019-07-08', '18:03:13'),
(334, '103.255.5.74', 17, 0, '2019-07-08', '18:06:39'),
(335, '103.217.178.17', 2, 0, '2019-07-08', '18:16:49'),
(336, '103.217.178.17', 2, 1, '2019-07-08', '18:22:36'),
(337, '103.217.178.17', 1, 0, '2019-07-08', '18:41:17'),
(338, '103.217.178.17', 1, 1, '2019-07-08', '18:44:27'),
(339, '182.185.197.64', 1, 0, '2019-07-09', '00:12:45'),
(340, '182.185.197.64', 17, 0, '2019-07-09', '00:23:23'),
(341, '103.217.178.39', 2, 0, '2019-07-10', '11:31:04'),
(342, '103.217.178.39', 2, 1, '2019-07-10', '11:32:36'),
(343, '103.255.5.111', 1, 0, '2019-07-11', '13:19:46'),
(344, '103.255.5.111', 17, 0, '2019-07-11', '13:20:00'),
(345, '103.255.5.111', 16, 0, '2019-07-11', '13:51:31'),
(346, '103.217.177.179', 24, 0, '2019-07-11', '14:24:11'),
(347, '103.217.177.179', 1, 0, '2019-07-11', '14:25:45'),
(348, '103.217.177.179', 13, 0, '2019-07-11', '14:28:56'),
(349, '103.255.5.111', 16, 1, '2019-07-11', '15:23:22'),
(350, '103.255.5.111', 16, 0, '2019-07-11', '15:26:18'),
(351, '103.217.177.179', 1, 1, '2019-07-11', '15:28:17'),
(352, '103.217.177.179', 1, 0, '2019-07-11', '16:13:52'),
(353, '103.217.177.179', 13, 1, '2019-07-11', '16:21:03'),
(354, '103.255.5.111', 1, 0, '2019-07-11', '16:29:20'),
(355, '103.217.177.179', 13, 0, '2019-07-11', '16:52:02'),
(356, '103.217.177.179', 13, 1, '2019-07-11', '16:52:21'),
(357, '182.185.184.40', 1, 0, '2019-07-11', '20:59:23'),
(358, '182.185.184.40', 16, 0, '2019-07-11', '21:00:22'),
(359, '182.185.184.40', 17, 0, '2019-07-11', '21:04:48'),
(360, '182.185.184.40', 16, 0, '2019-07-12', '00:27:21'),
(361, '103.255.4.58', 1, 0, '2019-07-12', '14:41:43'),
(362, '103.255.4.58', 17, 0, '2019-07-12', '14:43:12'),
(363, '103.217.177.223', 1, 0, '2019-07-12', '19:52:43'),
(364, '103.217.177.223', 1, 1, '2019-07-12', '19:53:53'),
(365, '103.255.4.58', 1, 0, '2019-07-12', '19:54:40'),
(366, '103.217.177.223', 1, 0, '2019-07-12', '19:57:09'),
(367, '103.255.4.58', 1, 0, '2019-07-12', '19:58:23'),
(368, '103.255.4.58', 1, 0, '2019-07-12', '19:59:04'),
(369, '103.217.177.223', 1, 0, '2019-07-12', '20:33:22'),
(370, '103.255.4.58', 1, 0, '2019-07-12', '20:38:56'),
(371, '103.217.177.223', 0, 1, '2019-07-12', '20:42:03'),
(372, '103.217.177.223', 1, 0, '2019-07-12', '20:42:23'),
(373, '103.255.4.58', 1, 0, '2019-07-12', '20:54:18'),
(374, '103.217.177.240', 1, 0, '2019-08-06', '20:41:13'),
(375, '72.255.40.171', 1, 0, '2019-08-06', '20:48:10'),
(376, '72.255.40.171', 1, 0, '2019-08-07', '00:05:31'),
(377, '72.255.40.171', 16, 0, '2019-08-07', '01:09:38'),
(378, '103.217.178.16', 1, 0, '2019-08-07', '12:31:37'),
(379, '103.217.178.16', 1, 1, '2019-08-07', '12:44:12'),
(380, '103.217.177.191', 13, 0, '2019-08-07', '14:59:13'),
(381, '103.217.177.191', 1, 0, '2019-08-07', '15:00:10'),
(382, '103.217.178.23', 1, 0, '2019-08-07', '16:13:03'),
(383, '103.217.178.23', 1, 0, '2019-08-07', '16:18:10'),
(384, '103.217.178.23', 1, 1, '2019-08-07', '16:22:17'),
(385, '103.255.5.56', 1, 0, '2019-08-07', '18:48:17'),
(386, '103.217.178.23', 13, 0, '2019-08-07', '19:27:38'),
(387, '103.217.178.23', 1, 0, '2019-08-07', '19:52:06'),
(388, '103.217.178.23', 1, 1, '2019-08-07', '19:57:31'),
(389, '103.255.5.79', 17, 0, '2019-08-08', '14:23:58'),
(390, '103.255.5.79', 17, 1, '2019-08-08', '14:25:01'),
(391, '103.255.5.79', 17, 0, '2019-08-08', '14:25:14'),
(392, '103.217.177.27', 1, 0, '2019-08-08', '14:55:19'),
(393, '103.255.5.79', 1, 0, '2019-08-08', '14:55:41'),
(394, '103.217.177.27', 1, 1, '2019-08-08', '14:55:57'),
(395, '103.217.177.27', 1, 0, '2019-08-08', '14:56:43'),
(396, '103.255.5.79', 16, 0, '2019-08-08', '15:40:26'),
(397, '103.217.177.27', 1, 0, '2019-08-08', '15:41:11'),
(398, '103.217.177.27', 13, 0, '2019-08-08', '15:54:49'),
(399, '103.217.177.27', 1, 1, '2019-08-08', '15:56:34'),
(400, '103.217.177.27', 1, 1, '2019-08-08', '16:08:43'),
(401, '103.217.177.27', 1, 0, '2019-08-08', '16:12:18'),
(402, '103.217.177.27', 2, 0, '2019-08-08', '17:19:36'),
(403, '103.255.5.79', 17, 1, '2019-08-08', '17:24:17'),
(404, '103.217.177.27', 2, 1, '2019-08-08', '17:25:13'),
(405, '103.217.177.27', 17, 0, '2019-08-08', '17:25:45'),
(406, '103.255.5.79', 17, 0, '2019-08-08', '17:25:50'),
(407, '103.217.177.27', 17, 1, '2019-08-08', '17:26:33'),
(408, '103.217.177.27', 2, 0, '2019-08-08', '17:26:35'),
(409, '103.217.177.27', 2, 1, '2019-08-08', '17:28:16'),
(410, '103.255.5.79', 17, 0, '2019-08-08', '17:28:25'),
(411, '103.217.177.27', 17, 0, '2019-08-08', '17:28:37'),
(412, '103.217.177.27', 1, 1, '2019-08-08', '17:31:45'),
(413, '103.255.5.79', 17, 1, '2019-08-08', '17:32:16'),
(414, '103.255.5.79', 17, 0, '2019-08-08', '17:32:17'),
(415, '103.217.177.27', 1, 0, '2019-08-08', '18:11:21'),
(416, '103.255.5.79', 1, 0, '2019-08-08', '18:36:28'),
(417, '103.217.177.27', 13, 0, '2019-08-08', '19:17:27'),
(418, '103.255.5.79', 1, 0, '2019-08-08', '19:17:27'),
(419, '103.217.177.27', 1, 0, '2019-08-08', '19:44:05'),
(420, '103.217.177.27', 1, 1, '2019-08-08', '19:45:38'),
(421, '103.217.177.27', 1, 0, '2019-08-08', '19:45:54'),
(422, '103.217.177.27', 1, 1, '2019-08-08', '19:51:37'),
(423, '103.217.177.27', 13, 1, '2019-08-08', '19:51:41'),
(424, '182.185.212.80', 16, 0, '2019-08-08', '20:07:22'),
(425, '103.217.177.27', 13, 0, '2019-08-08', '20:08:05'),
(426, '182.185.212.80', 1, 1, '2019-08-08', '20:09:46'),
(427, '182.185.212.80', 1, 0, '2019-08-08', '20:09:58'),
(428, '103.217.177.27', 1, 1, '2019-08-08', '20:10:15'),
(429, '103.217.177.27', 1, 0, '2019-08-08', '20:10:23'),
(430, '182.185.148.66', 1, 0, '2019-08-09', '15:26:04'),
(431, '103.217.178.13', 13, 0, '2019-08-09', '15:43:01'),
(432, '182.185.148.66', 16, 0, '2019-08-09', '15:52:19'),
(433, '103.217.178.13', 1, 0, '2019-08-09', '16:12:18'),
(434, '103.217.178.13', 1, 1, '2019-08-09', '16:31:35'),
(435, '103.217.178.13', 1, 0, '2019-08-09', '17:30:24'),
(436, '103.217.178.13', 1, 1, '2019-08-09', '17:31:15'),
(437, '103.217.178.13', 25, 0, '2019-08-09', '17:34:13'),
(438, '103.217.178.13', 25, 0, '2019-08-09', '17:37:31'),
(439, '103.217.178.13', 1, 1, '2019-08-09', '17:37:49'),
(440, '103.217.178.13', 25, 0, '2019-08-09', '17:42:04'),
(441, '103.217.178.13', 1, 1, '2019-08-09', '17:42:07'),
(442, '103.217.178.13', 13, 1, '2019-08-09', '17:48:28'),
(443, '182.185.148.66', 1, 0, '2019-08-09', '18:14:24'),
(444, '103.217.178.13', 13, 0, '2019-08-09', '18:16:13'),
(445, '182.185.148.66', 16, 0, '2019-08-09', '18:16:30'),
(446, '103.217.178.13', 13, 1, '2019-08-09', '18:17:50'),
(447, '182.185.148.66', 16, 1, '2019-08-09', '18:17:50'),
(448, '182.185.148.66', 16, 0, '2019-08-09', '18:18:01'),
(449, '103.217.178.13', 13, 0, '2019-08-09', '18:18:01'),
(450, '103.217.178.13', 1, 0, '2019-08-09', '18:19:17'),
(451, '103.217.178.13', 1, 1, '2019-08-09', '18:19:22'),
(452, '103.217.178.13', 1, 0, '2019-08-09', '18:19:53'),
(453, '182.185.148.66', 1, 0, '2019-08-09', '18:22:46'),
(454, '182.185.148.66', 16, 0, '2019-08-09', '18:54:39'),
(455, '103.217.178.13', 13, 0, '2019-08-09', '19:02:29'),
(456, '103.217.178.13', 1, 0, '2019-08-09', '19:09:12'),
(457, '103.217.178.13', 1, 1, '2019-08-09', '19:22:36'),
(458, '182.185.148.66', 17, 0, '2019-08-09', '19:28:27'),
(459, '103.217.178.13', 2, 0, '2019-08-09', '19:28:49'),
(460, '103.217.178.13', 2, 1, '2019-08-09', '20:30:30'),
(461, '103.255.5.81', 17, 0, '2019-08-10', '15:34:31'),
(462, '103.255.5.81', 1, 0, '2019-08-10', '15:35:35'),
(463, '103.255.5.81', 1, 0, '2019-08-10', '18:49:10'),
(464, '202.163.108.201', 1, 0, '2019-08-13', '16:48:23'),
(465, '202.163.108.201', 1, 1, '2019-08-13', '16:48:45'),
(466, '182.185.225.228', 1, 0, '2019-08-16', '17:01:57'),
(467, '103.217.178.57', 1, 0, '2019-08-16', '17:35:33'),
(468, '103.217.178.57', 2, 0, '2019-08-16', '17:38:24'),
(469, '103.217.178.57', 2, 0, '2019-08-16', '17:41:36'),
(470, '103.217.178.57', 2, 1, '2019-08-16', '17:42:19'),
(471, '182.185.225.228', 16, 0, '2019-08-16', '17:53:52'),
(472, '182.185.225.228', 16, 1, '2019-08-16', '17:54:58'),
(473, '182.185.225.228', 16, 0, '2019-08-16', '17:55:02'),
(474, '182.185.225.228', 1, 1, '2019-08-16', '17:55:22'),
(475, '182.185.225.228', 1, 0, '2019-08-16', '17:55:32'),
(476, '182.185.225.228', 17, 0, '2019-08-16', '17:56:16'),
(477, '103.217.178.57', 1, 0, '2019-08-16', '19:34:24'),
(478, '103.217.177.126', 1, 0, '2019-08-17', '12:14:18'),
(479, '202.163.108.201', 1, 0, '2019-08-18', '19:40:54'),
(480, '110.39.200.102', 1, 0, '2019-08-18', '22:33:56'),
(481, '103.255.4.55', 17, 0, '2019-08-19', '17:52:21'),
(482, '103.217.178.45', 2, 0, '2019-08-19', '18:43:38'),
(483, '103.255.4.55', 17, 0, '2019-08-19', '18:45:00'),
(484, '103.217.178.45', 2, 1, '2019-08-19', '18:45:19'),
(485, '103.255.4.55', 17, 0, '2019-08-19', '18:47:55'),
(486, '103.217.178.45', 1, 0, '2019-08-19', '19:25:04'),
(487, '103.217.178.45', 17, 0, '2019-08-19', '19:28:02'),
(488, '103.217.178.45', 17, 1, '2019-08-19', '19:38:31'),
(489, '103.217.178.45', 17, 0, '2019-08-19', '19:39:03'),
(490, '103.217.178.45', 17, 1, '2019-08-19', '19:39:20'),
(491, '103.217.178.45', 17, 0, '2019-08-19', '19:39:28'),
(492, '103.255.4.55', 1, 0, '2019-08-19', '19:40:02'),
(493, '103.217.178.45', 17, 1, '2019-08-19', '19:45:01'),
(494, '103.217.178.45', 1, 1, '2019-08-19', '19:45:33'),
(495, '103.217.178.45', 17, 0, '2019-08-19', '19:46:06'),
(496, '103.217.178.45', 17, 1, '2019-08-19', '19:46:58'),
(497, '182.185.167.176', 1, 0, '2019-08-20', '11:51:27'),
(498, '182.185.167.176', 17, 0, '2019-08-20', '12:14:08'),
(499, '103.217.177.249', 1, 0, '2019-08-20', '14:29:09'),
(500, '103.255.5.34', 17, 1, '2019-08-20', '15:09:41'),
(501, '103.255.5.74', 17, 0, '2019-08-20', '16:01:03'),
(502, '103.255.5.74', 17, 1, '2019-08-20', '16:01:08'),
(503, '103.255.5.74', 2, 0, '2019-08-20', '16:01:42'),
(504, '103.217.177.249', 2, 0, '2019-08-20', '16:02:20'),
(505, '103.217.177.249', 2, 1, '2019-08-20', '16:02:41'),
(506, '103.217.177.249', 2, 0, '2019-08-20', '16:02:48'),
(507, '103.255.5.34', 1, 0, '2019-08-20', '17:05:51'),
(508, '103.255.5.34', 2, 0, '2019-08-20', '17:08:12'),
(509, '103.255.5.34', 2, 1, '2019-08-20', '17:08:34'),
(510, '103.255.5.34', 17, 0, '2019-08-20', '17:08:40'),
(511, '103.217.177.139', 2, 0, '2019-08-21', '17:54:30'),
(512, '103.217.177.139', 1, 0, '2019-08-21', '18:07:44'),
(513, '103.255.5.251', 1, 0, '2019-08-21', '18:12:44'),
(514, '103.255.5.251', 1, 1, '2019-08-21', '18:17:37'),
(515, '103.255.5.251', 1, 0, '2019-08-21', '18:17:39'),
(516, '103.255.5.251', 16, 0, '2019-08-21', '18:18:05'),
(517, '103.217.177.139', 2, 1, '2019-08-21', '18:51:59'),
(518, '103.217.177.139', 1, 0, '2019-08-21', '18:56:11'),
(519, '103.255.5.251', 1, 0, '2019-08-21', '18:59:29'),
(520, '103.255.4.76', 1, 0, '2019-08-23', '15:33:12'),
(521, '103.217.178.15', 1, 0, '2019-08-23', '15:33:13'),
(522, '103.255.4.94', 1, 0, '2019-08-23', '17:18:25'),
(523, '103.217.178.15', 1, 0, '2019-08-23', '17:21:35'),
(524, '103.255.4.94', 17, 0, '2019-08-23', '17:22:00'),
(525, '103.217.178.15', 1, 1, '2019-08-23', '17:25:03'),
(526, '103.255.5.59', 17, 0, '2019-08-24', '16:12:35'),
(527, '103.217.178.47', 1, 0, '2019-08-26', '12:41:58'),
(528, '103.255.5.52', 1, 0, '2019-08-26', '15:42:53'),
(529, '103.255.5.52', 17, 0, '2019-08-26', '15:42:56'),
(530, '103.217.178.47', 1, 1, '2019-08-26', '16:41:55'),
(531, '103.217.177.68', 1, 0, '2019-08-27', '20:12:09'),
(532, '103.217.177.68', 2, 0, '2019-08-27', '20:23:02'),
(533, '182.185.236.189', 1, 0, '2019-08-28', '16:27:14'),
(534, '182.185.236.189', 1, 1, '2019-08-28', '16:32:13'),
(535, '182.185.236.189', 1, 0, '2019-08-28', '16:33:25'),
(536, '182.185.236.189', 17, 0, '2019-08-28', '16:33:55'),
(537, '182.185.236.189', 27, 0, '2019-08-28', '16:34:26'),
(538, '182.185.236.189', 1, 1, '2019-08-28', '16:39:50'),
(539, '182.185.236.189', 28, 0, '2019-08-28', '16:40:50'),
(540, '103.217.178.16', 1, 0, '2019-08-28', '16:47:16'),
(541, '103.217.178.16', 28, 0, '2019-08-28', '16:50:09'),
(542, '103.217.178.16', 28, 0, '2019-08-28', '16:58:10'),
(543, '103.217.178.16', 1, 1, '2019-08-28', '16:59:15'),
(544, '103.217.178.16', 1, 1, '2019-08-28', '16:59:54'),
(545, '103.217.178.16', 1, 0, '2019-08-28', '16:59:59'),
(546, '103.255.4.98', 1, 0, '2019-08-28', '19:22:42'),
(547, '103.255.4.96', 1, 0, '2019-08-30', '15:50:43'),
(548, '103.217.177.228', 28, 0, '2019-08-30', '17:32:58'),
(549, '103.255.4.96', 1, 1, '2019-08-30', '17:34:50'),
(550, '103.255.4.96', 28, 0, '2019-08-30', '17:35:13'),
(551, '103.255.4.96', 1, 1, '2019-08-30', '17:49:21'),
(552, '103.255.4.96', 1, 0, '2019-08-30', '17:49:32'),
(553, '103.255.4.96', 16, 0, '2019-08-30', '17:59:52'),
(554, '103.255.4.96', 17, 0, '2019-08-30', '18:00:08'),
(555, '103.255.4.96', 1, 0, '2019-08-30', '18:05:57'),
(556, '103.217.177.228', 1, 1, '2019-08-30', '18:10:51'),
(557, '103.255.4.96', 1, 1, '2019-08-30', '18:12:46'),
(558, '103.255.4.96', 1, 0, '2019-08-30', '18:12:59'),
(559, '103.217.177.228', 1, 0, '2019-08-30', '18:13:14'),
(560, '103.255.4.96', 17, 0, '2019-08-30', '18:21:25'),
(561, '::1', 1, 0, '2019-08-31', '11:45:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `order_no` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_coupons`
--

CREATE TABLE `tbl_orders_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` longtext COLLATE utf8_unicode_ci NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_invoices`
--

CREATE TABLE `tbl_orders_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payer_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `total` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_reviews`
--

CREATE TABLE `tbl_orders_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `buyer_ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `order_no` longtext COLLATE utf8_unicode_ci NOT NULL,
  `buyer_stars` int(11) DEFAULT NULL,
  `vendor_stars` int(11) NOT NULL,
  `buyer_comment` longtext COLLATE utf8_unicode_ci,
  `vendor_comment` longtext COLLATE utf8_unicode_ci,
  `buyer_review_created_date` date DEFAULT NULL,
  `buyer_review_created_time` time DEFAULT NULL,
  `vendor_review_created_date` date DEFAULT NULL,
  `vendor_review_created_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `ip_address`, `user_id`, `title`, `slug`, `content`, `status`, `created_date`, `created_time`) VALUES
(1, '103.217.177.139', 1, 'Refund Policy', 'refund-policy', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3><strong>Refund Policy</strong></h3>\r\n\r\n<hr />\r\n<p>If you would like to claim refund against any order, the process begins after we perform Quality check of the products on your returned products. The quality check process may take 1 to 2 business days from the date we receive the returned item. We will inform you of the result as soon as we complete the quality check process.</p>\r\n\r\n<p>Once your refund is approved you can either claim a store credit Refund Voucher of the amount you had paid for your returned item or you could ask for a complete cash refund.</p>\r\n\r\n<p>In case of a store credit voucher, you can use the store credit voucher for a new purchase on the website. In case of a cash refund, the amount will be refunded to you via online bank transfer into your bank account, or via a cheque mailed to your address.</p>\r\n\r\n<p>In case of credit card payments, refund can either be claimed as a store credit Refund Voucher, a cash refund or via transaction reversal.</p>\r\n\r\n<p><strong>Reimbursed time frame post quality check:</strong></p>\r\n\r\n<div class=\"mt-4 row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"col-md-8\">\r\n<div class=\"card\" style=\"border:2px solid #cccccc\">\r\n<table class=\"table table-striped\">\r\n	<thead>\r\n		<tr>\r\n			<th>Refund Type</th>\r\n			<th>Time Frame</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Voucher Refund</td>\r\n			<td>24 hours</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Banks Transfer</td>\r\n			<td>48 hours</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cheque</td>\r\n			<td>48-72 hours</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p><strong>What is a Refund Voucher?</strong></p>\r\n\r\n<p>A Refund Voucher is a return mechanism of equal worth to the value paid for the item that you have returned.</p>\r\n\r\n<p>You can use a Refund Voucher at your next purchase, at the time of checkout just put your voucher code in the discount Colum and it will be redeemed. This Refund Voucher can be used on multiple purchases A refund voucher is valid for 185 days you need to use your voucher during this period, Voucher will be expired after the above said days.</p>\r\n\r\n<p><strong>How do I use my Refund Voucher? </strong></p>\r\n\r\n<p>Once you have been issued a refund voucher, the discount voucher will be sent to you via email.</p>\r\n\r\n<p>You can enter the code in the discount code box and click <strong>&quot;Apply Code&quot;</strong> during checkout at payment step.</p>\r\n\r\n<p><strong>If my returned product is not validated for refund, how do I get informed? </strong></p>\r\n\r\n<p>If your return is not valid then we will inform you to explain the issue and send the item(s) back to you again. Please make sure you are available at the corresponded time to accept the item at your doorstep. Failure to delivery will result in holding your item for a 30 day period which you can collect yourself from our office.</p>\r\n\r\n<p><strong>I have bought an item on promotion or with a Discount Code. What amount will be refunded to me?</strong></p>\r\n\r\n<p>For items purchased on sale, if a refund is allowed on the sale item, the amount refunded will be the exact amount paid for the item, and not its original value.</p>\r\n\r\n<p>Scenario:- If you purchased an item on sale for Rs.1000 and its original value was Rs.2000, we will refund you Rs.1000 only.</p>\r\n\r\n<p>If you purchased an item with a Refund voucher, we will refund you the sum of the amount you paid (including the amount of the refund voucher used).</p>\r\n</div>\r\n</div>\r\n</div>', 0, '2019-08-21', '18:09:16'),
(2, '::1', 1, 'Return Policy', 'return-policy', '<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3><strong>Refund Policy</strong></h3>\r\n\r\n<hr />\r\n<p>If you would like to claim refund against any order, the process begins after we perform Quality check of the products on your returned products. The quality check process may take 1 to 2 business days from the date we receive the returned item. We will inform you of the result as soon as we complete the quality check process.</p>\r\n\r\n<p>Once your refund is approved you can either claim a store credit Refund Voucher of the amount you had paid for your returned item or you could ask for a complete cash refund.</p>\r\n\r\n<p>In case of a store credit voucher, you can use the store credit voucher for a new purchase on the website. In case of a cash refund, the amount will be refunded to you via online bank transfer into your bank account, or via a cheque mailed to your address.</p>\r\n\r\n<p>In case of credit card payments, refund can either be claimed as a store credit Refund Voucher, a cash refund or via transaction reversal.</p>\r\n\r\n<p><strong>Reimbursed time frame post quality check:</strong></p>\r\n\r\n<div class=\"mt-4 row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"col-md-8\">\r\n<div class=\"card\" style=\"border:2px solid #cccccc\">\r\n<table class=\"table table-striped\">\r\n	<thead>\r\n		<tr>\r\n			<th>Refund Type</th>\r\n			<th>Time Frame</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>Voucher Refund</td>\r\n			<td>24 hours</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Banks Transfer</td>\r\n			<td>48 hours</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cheque</td>\r\n			<td>48-72 hours</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p><strong>What is a Refund Voucher?</strong></p>\r\n\r\n<p>A Refund Voucher is a return mechanism of equal worth to the value paid for the item that you have returned.</p>\r\n\r\n<p>You can use a Refund Voucher at your next purchase, at the time of checkout just put your voucher code in the discount Colum and it will be redeemed. This Refund Voucher can be used on multiple purchases A refund voucher is valid for 185 days you need to use your voucher during this period, Voucher will be expired after the above said days.</p>\r\n\r\n<p><strong>How do I use my Refund Voucher? </strong></p>\r\n\r\n<p>Once you have been issued a refund voucher, the discount voucher will be sent to you via email.</p>\r\n\r\n<p>You can enter the code in the discount code box and click <strong>&quot;Apply Code&quot;</strong> during checkout at payment step.</p>\r\n\r\n<p><strong>If my returned product is not validated for refund, how do I get informed? </strong></p>\r\n\r\n<p>If your return is not valid then we will inform you to explain the issue and send the item(s) back to you again. Please make sure you are available at the corresponded time to accept the item at your doorstep. Failure to delivery will result in holding your item for a 30 day period which you can collect yourself from our office.</p>\r\n\r\n<p><strong>I have bought an item on promotion or with a Discount Code. What amount will be refunded to me?</strong></p>\r\n\r\n<p>For items purchased on sale, if a refund is allowed on the sale item, the amount refunded will be the exact amount paid for the item, and not its original value.</p>\r\n\r\n<p>Scenario:- If you purchased an item on sale for Rs.1000 and its original value was Rs.2000, we will refund you Rs.1000 only.</p>\r\n\r\n<p>If you purchased an item with a Refund voucher, we will refund you the sum of the amount you paid (including the amount of the refund voucher used).</p>\r\n</div>\r\n</div>\r\n</div>', 0, '2019-04-11', '17:32:11'),
(3, '::1', 1, 'About Us', 'about-us', '<div class=\"container-fluid mb-5 pb-5\">\r\n	<div class=\"row\" id=\"aboutusbackground\">\r\n		<div class=\"col-md-12\">\r\n			<p class=\"text-white text-center aboutustext text-uppercase\">About Us</p>\r\n			<p class=\"aboutussubheading text-center\">Shopker.pk SAB MILTA HAI</p>\r\n		</div>\r\n	</div>\r\n    <div class=\"container mb-5\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-12\">\r\n                <p class=\"aboutuscontent\">Shopker is an online marketplace that aims to be the best online shopping portal with the broadest range of products available. At shopker, we connect people &amp; products by opening up a virtual world of possibilitywith the best available range of selection across so that you can get the greatest deals. We believe online shopping can be just as personal and engaging as entering a retail store. We promise to provide hassle-free online shopping experience all the way from product selection to timely delivery.Our approach is based on 3 basic principles:Clutter free presentation of products on the websiteEasier selection process with expert reviews and descriptionFaster and timely delivery of your orders.</p>\r\n                <h2 class=\"text-center pt-5 text-uppercase\"><b>Our approach is based on 3 basic principles</b></h2>\r\n    			<div class=\"row\">\r\n    				<div class=\"col-md-12\" align=\"center\">\r\n    					<hr style=\"width: 120px; border:2px solid #c4161f; border-radius: 10px;\" />\r\n    				</div>\r\n    			</div>\r\n                <div class=\"mt-5 row\">\r\n                    <div class=\"col-md-4\">\r\n                        <div class=\"rotateIn wow\"><img src=\"http://itechnocode.com/shopker/images/clutter.png\" style=\"height:100px; width:100px\" /></div>\r\n                        <h4 class=\"mt-5\"><b>Clutter free presentation of products on the website</b></h4>\r\n                    </div>\r\n                    <div class=\"col-md-4\">\r\n                        <div class=\"fadeIn wow\"><img src=\"http://itechnocode.com/shopker/images/selection.png\" style=\"height:100px; width:100px\" /></div>\r\n                        <h4 class=\"mt-5\"><b>Easier selection process with expert reviews and description</b></h4>\r\n                    </div>\r\n                    <div class=\"col-md-4\">\r\n                        <div class=\"fadeInLeft wow\"><img src=\"http://itechnocode.com/shopker/images/fastdelivery.png\" style=\"height:100px; width:100px\" /></div>\r\n                        <h4 class=\"mt-5\"><b>Faster and timely delivery of your<br />orders</b></h4>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 0, '2019-04-11', '18:33:40'),
(5, '103.217.178.13', 1, 'Terms & Conditions', 'terms-&-conditions', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:Cambria\"><span style=\"font-size:14.0pt\">Terms and Conditions</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:Cambria\"><span style=\"font-size:14.0pt\">&nbsp;<span style=\"font-size:16px\">The domain name </span></span><span style=\"font-size:16px\"><a href=\"http://www.shopker.pk\" style=\"color:blue; text-decoration:underline\">www.shopker.pk</a> &nbsp;(hereinafter referred to as &quot;Website&quot;) including the mobile applications are&nbsp;owned by shopker &nbsp;a company with its office located at Gold Center, Liberty Market, Gulberg III, Lahore, Pakistan (hereinafter referred to as &quot;shopker&quot;).</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Cambria\">For the purpose of the Terms of Use (hereinafter referred to as &ldquo;ToU&rdquo;), wherever the context so requires, &lsquo;you&rsquo; and &lsquo;your&rsquo; shall relate to any natural or legal person who has agreed to become a vendor on the shopker.pk by providing registration data while registering on the website using computer systems. The word &lsquo;user&rsquo; shall collectively imply a seller, a buyer, and any visitor on the website and the terms &lsquo;we&rsquo;, &lsquo;us&rsquo; and &lsquo;our&rsquo; shall mean shopker.pk.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Cambria\">Your use of the Platform and the features therein is governed by the following terms and conditions (ToU) including applicable policies available on the Platform, notifications and communications sent to you on the Platform which are incorporated herein by way of reference. If you transact on the Platform, you shall be subject to the policies that are applicable to the Platform for such a transaction. By simple use of the Platform you shall be contracting with shopker.pk, and these terms and conditions including the policies constitute your binding obligations to shopker.pk.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Cambria\">When you use any current or future services provided by us through the Platform you will be subject to the rules, guidelines, policies, terms and conditions applicable to such services and they shall be deemed incorporated into the ToU and considered a part and parcel of the ToU. We reserve the right, at our sole discretion, to change, modify, add, or remove portions of the ToU at any time. We will notify you through any of the communication modes as mentioned in this ToU in case of any changes or updates to the ToU that materially impact your use of the Platform.&nbsp; Your continued use of the Platform following the changes or updates will mean that you accept and agree to the revisions. As long as you comply with the ToU, we grant you a personal, non-exclusive, non-transferable, and limited privilege to enter and use the Platform.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Cambria\">BROWSING, ACCESSING, OR OTHERWISE USING THE PLATFORM INDICATES YOUR AGREEMENT WITH ALL THE TERMS AND CONDITIONS UNDER THE ToU.<br />\r\nPLEASE READ THE ToU CAREFULLY BEFORE PROCEEDING. By impliedly or expressly accepting the ToU, you also accept and agree to be bound by&nbsp;all of&nbsp;<a href=\"https://seller.flipkart.com/sellerPolicies\" style=\"color:blue; text-decoration:underline\">shopker&rsquo;s policies applicable to you</a>, as amended, from time to time.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Cambria\"><strong>Listing and Selling</strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:16px\"><span style=\"font-family:Cambria\">As a registered vendor, you are allowed to list products(s) for sale on the Website in accordance with the Policies which are incorporated by way of reference in this Terms of Use. You must be legally able to sell the products you list for sale on our Website. You must ensure that the listed items do not infringe upon the intellectual property, trade secret or other proprietary rights or rights of publicity or privacy rights of third parties. Listings may only include text descriptions, graphics and pictures that describe your item for sale. All listed items must be listed in an appropriate category on the Website. All listed items must be kept in stock for successful fulfilment of sales.<br />\r\nThe listing description of the item must not be misleading and must describe actual condition of the product. If the item description does not match the actual condition of the item, you agree to refund any amounts that you may have received from the Buyer. You agree not to list a single product in multiple quantities across various categories on the Website. Shopker.pk reserves the right to delete such multiple listings of the same product listed by you in various categories and even delist your shop from the website.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>', 0, '2019-08-09', '20:12:07'),
(6, '182.185.225.228', 1, 'Privacy Policy', 'privacy-policy', '<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Tahoma\"><span style=\"color:black\">Shopker.pk values the trust that our customers and vendors place in us when they give us personal information. We believe that privacy is more than an issue of compliance and endeavour to manage personal information in accordance with our core value of respect for the individual.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Tahoma\"><span style=\"color:black\">At shopker.pk, we treat our customers and vendors the number one - always. That&#39;s why everything we do is focused on providing excellent customer service and delivering competitive prices.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Tahoma\"><span style=\"color:black\">The information you share with shopker.pk allows us to provide the products and services you need and want while giving you the very best shopping experience ever.&nbsp;</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Tahoma\"><span style=\"color:black\">We promise to our customers that we respect the trust you place in us and the privacy of the information you share. Part of providing superior customer service includes making sure that we&#39;re building a relationship of trust with customers. Our way of doing that is to let you know in a clear, prominent, and easily accessible way how we collect, use, share, and above all protect your personal information..</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>', 0, '2019-08-16', '18:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages_meta_details`
--

CREATE TABLE `tbl_pages_meta_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `meta_keywords` longtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_pages_meta_details`
--

INSERT INTO `tbl_pages_meta_details` (`id`, `ip_address`, `user_id`, `page_id`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(1, '103.217.177.139', 1, 1, NULL, NULL, '2019-08-21', '18:09:16'),
(2, '::1', 1, 2, NULL, NULL, '2019-04-11', '17:32:11'),
(3, '::1', 1, 3, NULL, NULL, '2019-04-11', '18:33:40'),
(4, '103.255.5.111', 1, 4, NULL, NULL, '2019-07-11', '14:59:24'),
(5, '103.217.178.23', 1, 4, NULL, NULL, '2019-08-07', '16:26:48'),
(6, '103.217.178.13', 1, 5, 'Terms & Conditions', 'Terms & Conditions', '2019-08-09', '20:12:07'),
(7, '182.185.225.228', 1, 6, 'Privacy Policy', 'Shopker.pk values the trust that our customers and vendors place in us when they give us personal information. We believe that privacy is more than an issue of compliance and endeavour to manage personal information in accordance with our core value of respect for the individual.\r\n\r\nAt shopker.pk, we treat our customers and vendors the number one - always. That\'s why everything we do is focused on providing excellent customer service and delivering competitive prices.\r\n\r\nThe information you share with shopker.pk allows us to provide the products and services you need and want while giving you the very best shopping experience ever. \r\n\r\nWe promise to our customers that we respect the trust you place in us and the privacy of the information you share. Part of providing superior customer service includes making sure that we\'re building a relationship of trust with customers. Our way of doing that is to let you know in a clear, prominent, and easily accessible way how we collect, use, share, and above all protect your personal information. ', '2019-08-16', '18:04:50'),
(8, '103.217.177.249', 1, 7, 'dsad', 'asdas', '2019-08-20', '14:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parent_categories`
--

CREATE TABLE `tbl_parent_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(11) NOT NULL,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_parent_categories`
--

INSERT INTO `tbl_parent_categories` (`id`, `ip_address`, `user_id`, `featured_image`, `name`, `slug`, `sorting_order`, `meta_keywords`, `meta_description`, `status`, `created_date`, `created_time`) VALUES
(15, '103.255.5.93', 1, '1549360008.png', 'Electronic Devices', 'electronic-devices', 2, 'Electronic Devices', 'Electronic Devices', 0, '2019-04-04', '17:37:48'),
(16, '103.255.5.100', 1, '1549360690.png', 'Electronic Accessories', 'electronic-accessories', 3, 'Electronic Accessories', 'Electronic Accessories', 0, '2019-04-03', '18:45:13'),
(17, '103.255.5.100', 1, NULL, 'Home Appliances', 'home-appliances', 5, 'Home Appliances', 'Home Appliances', 0, '2019-04-03', '18:45:49'),
(18, '103.255.5.30', 1, NULL, 'TV & Leds', 'tv-&-leds', 15, 'TV & Leds', 'TV & Leds', 0, '2019-02-05', '14:59:07'),
(19, '103.255.5.30', 1, NULL, 'Health & Beauty', 'health-&-beauty', 4, 'Health & Beauty', 'Health & Beauty', 0, '2019-02-05', '14:59:26'),
(20, '103.255.5.30', 1, NULL, 'Babies & Toys', 'babies-&-toys', 6, 'Babies & Toys', 'Babies & Toys', 0, '2019-02-05', '14:59:49'),
(21, '103.255.5.30', 1, NULL, 'Groceries & Pets', 'groceries-&-pets', 7, 'Groceries & Pets', 'Groceries & Pets', 0, '2019-02-05', '15:00:16'),
(22, '103.255.5.30', 1, NULL, 'Home & Lifestyle', 'home-&-lifestyle', 8, 'Home & Lifestyle', 'Home & Lifestyle', 0, '2019-02-05', '15:00:35'),
(23, '103.255.5.30', 1, NULL, 'Women\'s Fashion', 'women\'s-fashion', 9, 'Women\'s Fashion', 'Women\'s Fashion', 0, '2019-02-05', '15:00:52'),
(24, '103.255.5.30', 1, NULL, 'Men\'s Fashion', 'men\'s-fashion', 10, 'Men\'s Fashion', 'Men\'s Fashion', 0, '2019-02-05', '15:01:12'),
(25, '103.255.5.30', 1, NULL, 'Watches & Accessories', 'watches-&-accessories', 11, 'Watches & Accessories', 'Watches & Accessories', 0, '2019-02-05', '15:01:33'),
(26, '103.255.5.30', 1, NULL, 'Sports & Outdoor', 'sports-&-outdoor', 12, 'Sports & Outdoor', 'Sports & Outdoor', 0, '2019-02-05', '15:01:51'),
(27, '103.255.5.30', 1, NULL, 'Automotive & Motorbike', 'automotive-&-motorbike', 13, 'Automotive & Motorbike', 'Automotive & Motorbike', 0, '2019-02-05', '15:02:12'),
(29, '103.255.4.25', 1, NULL, 'Salon & Restaurant', 'salon-&-restaurant', 1, 'Salon & Restaurant Vouchers', 'Salon & Restaurant Vouchers', 0, '2019-04-09', '13:19:54'),
(30, '103.255.4.25', 1, '1554797873.jpeg', 'Pharmacy', 'pharmacy', 14, 'Pharmacy, medicine, medical items', 'Pharmacy, medicine, medical itemsPharmacy', 0, '2019-04-09', '13:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `high_light` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty_type` int(11) NOT NULL,
  `what_in_the_box` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `variation_id` int(11) NOT NULL,
  `sku_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regural_price` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_approved` int(11) NOT NULL,
  `is_daily_deal` int(11) NOT NULL DEFAULT '1',
  `deal_start_time` time NOT NULL,
  `deal_end_time` time NOT NULL,
  `video_url` longtext COLLATE utf8mb4_unicode_ci,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(2, '72.255.40.171', 17, 1, 'USB Vacuum Cleaner Designed For Cleaning Computer Keyboard Use Top Quality Computer Clean Tools', 'usb-vacuum-cleaner-designed-for-cleaning-computer-keyboard-use-top-quality-computer-clean-tools-shopker', '<ul>\n	<li>1pc USB Vacuum Cleaner</li>\n	<li>Designed For Cleaning Computer Keyboard</li>\n	<li>Use Top Quality Computer Clean Tools</li>\n</ul>', '<ul>\n	<li>1pc USB Vacuum Cleaner</li>\n	<li>Designed For Cleaning Computer Keyboard</li>\n	<li>Use Top Quality Computer Clean Tools</li>\n</ul>', 7, 'USB Vacuum Cleaner Designed For Cleaning', '0.3', NULL, NULL, NULL, 689, 'USB Vacuum Cleaner Designed For Cleaning', '750', '450', 6, '2019-08-30', '2019-08-30', 0, 0, 0, '18:00:00', '19:00:00', NULL, 'USB Vacuum Cleaner Designed For Cleaning', 'USB Vacuum Cleaner Designed For Cleaning', '2019-08-07', '12:39:47'),
(4, '72.255.40.171', 17, 1, 'Car Decorative Flexible Daytime Running Light 15SMD 30cm 12V Waterproof -2pcs', 'car-decorative-flexible-daytime-running-light-15smd-30cm-12v-waterproof--2pcs-shopker', '<ul>\n	<li>Water-proof flexible LED strip</li>\n	<li>Self-adhesive back with 3M double side adhesive tape</li>\n	<li>Continuous length, packed with 30cm meter long</li>\n	<li>Self-adhesive back with Adhesive tape for secure and easy application</li>\n	<li>LED Type: High Quality 3528 SMD LED, high intensity and reliability</li>\n	<li>Ultra-bright but running at low temperature</li>\n	<li>Dc-plug already soldered on the connector, ready to be plugged in and working</li>\n	<li>Flexible ribbon for curving around bends</li>\n	<li>Completely smooth and even light spread, solving the uneven luminous problem Low power consumption.</li>\n	<li>Installation Notice: If LED Light can not be lighted up, please change positive(+) to negative(-) (Swap the right and left wires)</li>\n</ul>', '<p>Light up colorful home life ,DIY household lights for hallways, stairs, trails, windows.</p>\n\n<p>Architectural decorative lighting, boutique atmosphere lighting.</p>\n\n<p>Widely used in the illumination of emporiums, shopping malls, meeting room, factory, clubs, hotel, light box, and performances.</p>\n\n<p>Decorative lights for holiday, event, show exhibition.</p>\n\n<p>Applicable for automobile and bicycle decoration, border or contour lighting.</p>', 7, 'Car Decorative Flexible Daytime Running Light 15SMD 30cm 12V Waterproof -2pcs', '0.2', NULL, NULL, NULL, 679, 'Car Decorative Flexible Daytime Running Light 15SMD 30cm 12V Waterproof -2pcs', '999', '699', 2, '2019-08-03', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Car Decorative Flexible Daytime Running Light 15SMD 30cm 12V Waterproof -2pcs', 'Car Decorative Flexible Daytime Running Light 15SMD 30cm 12V Waterproof -2pcs', '2019-08-07', '12:39:47'),
(5, '72.255.40.171', 17, 1, 'Silicon Gel Shoe Pad Insoles High Heel Elastic Cushion Orthotic Arch Support Pads Non Slip', 'silicon-gel-shoe-pad-insoles-high-heel-elastic-cushion-orthotic-arch-support-pads-non-slip-shopker', '<ul>\n	<li>Massaging Gel cushion are made of soft gel to cushion and comfort every step.</li>\n	<li>The gel design helps to provide shock absorption and ideal for high-heeled shoe.</li>\n	<li>Work as a cushion to prevent foot from sliding forward while walking and standing</li>\n	<li>Non-slip design gives a firm support and offers massaging effect</li>\n	<li>Relieve pain and pressure of the feet caused by wearing high heel shoes.</li>\n	<li>Crystal clear invisible in any shoes</li>\n	<li>Reusable and washable.</li>\n	<li>One size fits all</li>\n	<li>Approx. Size: as picture show</li>\n</ul>', '<ul>\n	<li>Massaging Gel cushion are made of soft gel to cushion and comfort every step.</li>\n	<li>The gel design helps to provide shock absorption and ideal for high-heeled shoe.</li>\n	<li>Work as a cushion to prevent foot from sliding forward while walking and standing</li>\n	<li>Non-slip design gives a firm support and offers massaging effect</li>\n	<li>Relieve pain and pressure of the feet caused by wearing high heel shoes.</li>\n	<li>Crystal clear invisible in any shoes</li>\n	<li>Reusable and washable.</li>\n	<li>One size fits all</li>\n	<li>Approx. Size: as picture show</li>\n</ul>', 7, 'Silicon Gel Shoe Pad Insoles High Heel Elastic Cushion Orthotic Arch Support Pads Non Slip', '0.2', NULL, NULL, NULL, 679, 'Silicon Gel Shoe Pad Insoles High Heel Elastic Cushion Orthotic Arch Support Pads Non Slip', '650', '299', 6, '2019-08-03', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Silicon Gel Shoe Pad Insoles High Heel Elastic Cushion Orthotic Arch Support Pads Non Slip', 'Silicon Gel Shoe Pad Insoles High Heel Elastic Cushion Orthotic Arch Support Pads Non Slip', '2019-08-07', '12:39:47'),
(6, '72.255.40.171', 17, 1, 'Silicon PVC Key Cover for Honda Civic, Accord Cr-v ,Pilot Crv Protect Skin Styling', 'silicon-pvc-key-cover-for-honda-civic-accord-cr-v-pilot-crv-protect-skin-styling-shopker', '<ul>\n	<li>Silicon PVC</li>\n	<li>Key Cover for Honda Civic,</li>\n	<li>Accord</li>\n	<li>Cr-v</li>\n	<li>Pilot Crv</li>\n	<li>Protect Skin Styling</li>\n</ul>', '<ul>\n	<li>Silicon PVC</li>\n	<li>Key Cover for Honda Civic,</li>\n	<li>Accord</li>\n	<li>Cr-v</li>\n	<li>Pilot Crv</li>\n	<li>Protect Skin Styling</li>\n</ul>', 7, 'Silicon PVC Key Cover for Honda Civic', '0.3', NULL, NULL, NULL, 689, 'Silicon PVC Key Cover for Honda Civic', '399', '295', 4, '2019-08-03', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Silicon PVC Key Cover for Honda Civic', 'Silicon PVC Key Cover for Honda Civic', '2019-08-07', '12:39:47'),
(8, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-1.5m', 'hdmi-round-cable-full-hd-15m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'HDMI ROUND CABLE-1.5M', '175', '150', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:47'),
(9, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-3m', 'hdmi-round-cable-full-hd-3m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'Hdmi Round Cable Full HD-3m', '250', '215', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:47'),
(10, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-5m', 'hdmi-round-cable-full-hd-5m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'Hdmi Round Cable Full HD-5m', '375', '315', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:47'),
(11, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-10m', 'hdmi-round-cable-full-hd-10m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'Hdmi Round Cable Full HD-10m', '700', '580', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:47'),
(12, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-15m', 'hdmi-round-cable-full-hd-15m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'Hdmi Round Cable Full HD-15m', '1190', '980', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:47'),
(13, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-20m', 'hdmi-round-cable-full-hd-20m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'Hdmi Round Cable Full HD-20', '1600', '1325', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:48'),
(14, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-25m', 'hdmi-round-cable-full-hd-25m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'Hdmi Round Cable Full HD-25', '2600', '2150', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:48'),
(15, '72.255.40.171', 17, 1, 'Hdmi Round Cable Full HD-30m', 'hdmi-round-cable-full-hd-30m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length- 30m, 25m, 20m, 15m, 10m, 5m, 3m, 1.5m</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Resolution: Full HD, 4K</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">7.1 Surround Sound</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">48 Bit Deep Colors</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Flexibility</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Hdmi Round Cable </span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">New V1.4 Provides High Speed Content From High End HDMI Cable. It&rsquo;s Re-Engineered Profile And Flexibility Allows The User To Relief Stress So You Gain As Much Strength As Possible. Full HD Resolution, 4K Resolution, 48 Bit Deep Colors, 7 Channel And 7.1 Surround Sound Gives Luxurious Quality.</span></span></span></span></p>', 0, 'Hdmi Round Cable Full HD', '1', NULL, NULL, NULL, 715, 'Hdmi Round Cable Full HD-30m', '3340', '2765', 24, '2019-08-02', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Hdmi Round Cable Full HD', 'Hdmi Round Cable Full HD', '2019-08-07', '12:39:48'),
(16, '72.255.40.171', 17, 1, 'HDD CASE 3.5 INCH SATA HARD DISK CASE 2.0', 'hdd-case-35-inch-sata-hard-disk-case-20-shopker', '<ul>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:#f2f2f2\">Durable</span></span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:#f2f2f2\">High Speed Transfer Rate USB Port</span></span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:#f2f2f2\">Version 2.0</span></span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:#f2f2f2\">Size: 3.5&rdquo; Inch</span></span></span></span></li>\n</ul>', '<p>HDD CASE 3.5 INCH SATA HARD DISK CASE 2.0 -&nbsp;<br />\nThis Is A Standard HDD CASE 3.5 Inch Case With USB 2.0 Port.&nbsp;&nbsp;You Can Insert Internal Hard Disk In This Case To Function As An External Hard Drive.</p>', 0, '1x HDD CASE 3.5 Inch Case 1x Connecting Cable', '0.3', NULL, NULL, NULL, 679, 'HDD CASE 3.5 INCH SATA HARD DISK CASE 2.0', '1450', '1150', 24, '2019-08-02', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', 'https://youtu.be/0Il10EXrviM', 'HDD CASE 3.5 INCH SATA HARD DISK CASE 2.0', 'HDD CASE 3.5 INCH SATA HARD DISK CASE 2.0', '2019-08-07', '12:39:48'),
(17, '72.255.40.171', 17, 1, 'Android And Pc Usb Endoscope Cam 3.5m', 'android-and-pc-usb-endoscope-cam-35m-shopker', '<ul>\n	<li>Total Length: 3.5M</li>\n	<li>Waterproof Level: IP67</li>\n	<li>Resolution: 640 &times; 480 30 Fps</li>\n	<li>Focal Distance: 6cm</li>\n	<li>Camera Head Outer Diameter Is 7mm\\</li>\n</ul>', '<p>Android And PC USB Endoscope Cam 3.5M -&nbsp;<br />\nAndroid&nbsp;Endoscope Is&nbsp;A New Type Of&nbsp;Electronic Products.&nbsp;The Advantages Of This Product Are Small Size And Light Weight.&nbsp;The Middle Part Of&nbsp;The Installation Of A&nbsp;Control Box,&nbsp;Can Adjust The&nbsp;Brightness&nbsp;Of Six LED Lights,&nbsp;Capture The Image Photo Graphed After The&nbsp;Camera Directly&nbsp;Stored In The&nbsp;Android&nbsp;Mobile Phone,&nbsp;You Can Video The Whole Process Of&nbsp;Record Check, Observation And&nbsp;Follow - Up&nbsp;Analysis. The Photos And Video File Will Directly Store In Your Android Mobile Phone. There&rsquo;s Also A Turning Wheel Used For Adjust The Brightness Of Six LED Lights So That Work In Some Area Without Enough Light.</p>', 7, '1 X Android And PC USB Endoscope Cam 1 X Small Hook 1 X Magnet 1 X Side Audition 1 X User Manual', '0.2', NULL, NULL, NULL, 689, 'Android And Pc Usb Endoscope Cam 3.5m', '1200', '950', 24, '2019-08-02', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Android And Pc Usb Endoscope Cam 3.5m', 'Android And Pc Usb Endoscope Cam 3.5m', '2019-08-07', '12:39:48'),
(18, '72.255.40.171', 17, 1, 'KY108 BLOOD PRESSURE WATERPROOF BLUETOOTH FITNESS BRACELET HEART RATE MONITOR', 'ky108-blood-pressure-waterproof-bluetooth-fitness-bracelet-heart-rate-monitor-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"background-color:white\">ROM:128MB&nbsp;</span></span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"background-color:white\">RAM: 128MB&nbsp;</span></span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"background-color:white\">Battery Capacity: 180mAh</span></span></span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">KY108 BLOOD PRESSURE WATERPROOF BLUETOOTH FITNESS BRACELET HEART RATE MONITOR -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"background-color:white\">Multiple Movement Patterns: Real-Time Monitoring Of Movement States Number Of Steps, Calorie Distance Application Operation View, And Movement Data At A Glance. Fitness Tracker: Pedometer, Calorie Counter, Distance Counter, Sleep Monitor (Sleep Time, Sleep Quality), Heart Rate Monitor, Multiple Movement Patterns, Concern Your Health At Any Time. IP67 Waterproof Level: Effectively Protect The Device From Cold Rain And Splashes, You Cannot Use It In The Shower Or Swim. High-Resolution Large Color Touchscreen: Sensitive Touch Keys Offer Quick And Easy Operation; Smart Reminder: Customize Your Alarm Or Other Reminder Features.</span></span></span></span></span></span></p>', 7, '1x KY108 Smart Watch 1x Charger Cable 1x User Manual', '0.3', NULL, NULL, NULL, 679, 'KY108 BLOOD PRESSURE WATERPROOF', '3000', '2000', 24, '2019-08-02', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'KY108 BLOOD PRESSURE WATERPROOF', 'KY108 BLOOD PRESSURE WATERPROOF', '2019-08-07', '12:39:48'),
(19, '72.255.40.171', 17, 1, 'F1 Plus Blue Blood Pressure Waterproof Bluetooth Fitness Bracelet Heart Rate Monitor', 'f1-plus-blue-blood-pressure-waterproof-bluetooth-fitness-bracelet-heart-rate-monitor-shopker', '<ul>\n	<li style=\"text-align:start\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Advanced CPU NRF51822 QFAC, Quick Data Processing.</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Compatible For IOS 9.0 &amp; Android 4.4&nbsp;Or Above, With BT 4.0 It Can Connect With A Phone To Synchronize Information.</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">0.96in IPS Colorful Touch Screen, Clear To See.</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">IP67 Water-Resistant&nbsp;For Washing Hand And Splashing Water.</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Made From TPU Watch Band, Comfortable To Wear.</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong><span style=\"font-family:Verdana,sans-serif\"><span style=\"color:black\">Support Languages:</span></span></strong>&nbsp;English, French, Japanese, Korean, Spanish, Russian, Arabic</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">F1 PLUS BLUE BLOOD PRESSURE WATERPROOF BLUETOOTH FITNESS BRACELET HEART RATE MONITOR -&nbsp;</span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Smart Band F1 PLUS Blood Oxygen Blood Pressure Watches Waterproof Bluetooth Fitness Bracelet Heart Rate Monitor<span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\"><span style=\"background-color:white\">.&nbsp;</span></span></span></span>This Smart Watch Band With Many Functions Such As Pedometer, Heart Rate Monitoring, Blood Pressure Monitoring Etc Makes Your Sports More Intelligent And Cares More About Your Health. Compatible For IOS 9.0 &amp; Android 4.4 Or Above, With BT 4.0 It Can Connect With A Phone To Synchronize Information.</span></span></span></p>', 7, 'F1 Plus Blue Blood Pressure Waterproof Bluetooth Fitness Bracelet Heart Rate Monitor', '0.3', NULL, NULL, NULL, 687, 'F1', '2200', '1650', 24, '2019-08-02', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'F1 Plus Blue Blood Pressure Waterproof Bluetooth Fitness Bracelet Heart Rate Monitor', 'F1 Plus Blue Blood Pressure Waterproof Bluetooth Fitness Bracelet Heart Rate Monitor', '2019-08-07', '12:39:48'),
(20, '72.255.40.171', 17, 1, 'Sports Blood Pressure Heart Rate Monitor V07s Health Band (Blue)', 'sports-blood-pressure-heart-rate-monitor-v07s-health-band-blue-shopker', '<ul>\n	<li style=\"margin-left: 31.5pt; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">BLOOD PRESSURE MEASURE-Smart Blood Pressure Monitor Measure Your Systolic, Diastolic Blood Pressure After Sports Or In Daily Life And Show The History Records By Date. New Featured Updated: Monitor Blood Pressure Automatically During Sleep Time(22PM-8AM Next Day)</span></span></span></span></span></span></li>\n	<li style=\"margin-left: 31.5pt; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">HEART RATE MONITOR -Track Heart Rate 24/7 Continuously On Your Wrist To Maximize Workouts. Automatically Tracks Steps, Distance, Calories And Time.</span></span></span></span></span></span></li>\n	<li style=\"margin-left: 31.5pt; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">AUTO SLEEP TRACKING Tracker Automatically Tracks How Long And How Well You Sleep To Help You Work Toward A Better Routine.</span></span></span></span></span></span></li>\n	<li style=\"margin-left: 31.5pt; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">CALL NOTIFICATION-Vibration Alerts For Call ID And Text Notifications, Facebook, Twitter ...Notification, Movement Reminders, And Alarms</span></span></span></span></span></span></li>\n</ul>', '<p>SPORTS BLOOD PRESSURE HEART RATE MONITOR V07S HEALTH BAND (Blue) -&nbsp;<br />\nSupport High-Quality Display And Light Visual Effects (Strong Light Show More Clearly), Tend To Traditional Watch Wrist Button Design, It Is Not Only Very Convenient To Wear But Also Will Not Fall Off From Your Wrist. Light Body Design Fully Fit Our Wrist, Making It To Be A Part Of Our Body. We Will Not Feel Cumbersome When Wearing It, It Meets Our Requirement In Wearing Device. Has A Great Feature Of Monitoring Our Blood Pressure Which Separates This Health Band From All Others.</p>', 7, 'SPORTS BLOOD PRESSURE HEART RATE MONITOR V07S HEALTH BAND (Blue)', '0.3', NULL, NULL, NULL, 687, 'SPORTS BLOOD PRESSURE HEART RATE MONITOR V07S', '3500', '3000', 24, '2019-08-02', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'SPORTS BLOOD PRESSURE HEART RATE MONITOR V07S HEALTH BAND (Blue)', 'SPORTS BLOOD PRESSURE HEART RATE MONITOR V07S HEALTH BAND (Blue)', '2019-08-07', '12:39:48'),
(21, '72.255.40.171', 17, 1, 'Android Smart Watch Black Dz09 With Gsm Slot Bluetooth For Ios And Android', 'android-smart-watch-black-dz09-with-gsm-slot-bluetooth-for-ios-and-android-shopker', '<ul>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Anti-Loss Technology, Pedometer, Sleep Monitor, Sedentary Reminder, Calendar</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Sim And Network Connectivity</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Can Be Used As A Standalone Device</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Stainless Steel Watch Case</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Type: Watch Phone</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">External Memory: TF Card Up To 32GB (Not Included)</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Wireless Connectivity: Bluetooth</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Battery: 1 X 380 MA</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Network Type: GSM</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Frequency: GSM850/900/1800/1900MHz</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Bluetooth: Yes</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Bluetooth Version: V3.0</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Screen Size: 1.56inch</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Camera Type: Single Camera</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Front Camera: 0.3MP</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Connectivity</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">SIM Card Slot: Single SIM (Micro SIM Slot)</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">TF Card Slot: Yes</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Speaker: Supported</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Languages</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Languages: English, Italian, German, Spanish, French, Polish, Portuguese, Russian</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Product Size: 4.35 X 4.00 X 0.98 Cm / 1.71 X 1.57 X 0.39 Inches</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Package Size: 11.00 X 11.00 X 9.00 Cm / 4.33 X 4.33 X 3.54 Inches</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Product Weight: 0.051 Kg</span></span></span></li>\n</ul>', '<p>Android Smart Watch Black DZ09 With GSM Slot Bluetooth For IOS And Android -&nbsp;<br />\nAndroid Smart Watch DZ09 With GSM Slot Is Bluetooth Supported Smart Watch And Compatible With IOS Android Smart Phones. This Smartwatch Also Supports TF Card. This GSM 850/900/1800/1900 MHz Can Have Single Micro SIM Card. It Has Bluetooth Dialer, Call Reminder, Call, SMS/IM Message Notification Features.</p>', 7, '1x Smart Watch (Black) 1x USB Cable 1x Manual', '0.3', NULL, NULL, NULL, 689, 'Android Smart Watch Black Dz09', '1475', '1225', 24, '2019-08-02', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', 'https://youtu.be/8xIKLe5KwJ4', 'Android Smart Watch Black Dz09', 'Android Smart Watch Black Dz09', '2019-08-07', '12:39:48'),
(22, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP-1.5m', 'lan-cable-cat-6-utp-15m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', 7, 'Lan Cable CAT 6 UTP', '0.5', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-1.5m', '150', '99', 24, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:48');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(23, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP-3m', 'lan-cable-cat-6-utp-3m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', 7, 'Lan Cable CAT 6 UTP', '0.5', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-3m', '175', '150', 24, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:48'),
(24, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP-5m', 'lan-cable-cat-6-utp-5m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', 7, 'Lan Cable CAT 6 UTP', '0.5', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-5m', '250', '199', 24, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:48'),
(25, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP-10m', 'lan-cable-cat-6-utp-10m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', 7, 'Lan Cable CAT 6 UTP', '0.5', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-10m', '350', '299', 24, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:48'),
(26, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP-15m', 'lan-cable-cat-6-utp-15m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', 7, 'Lan Cable CAT 6 UTP', '0.5', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-15m', '475', '375', 24, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:48'),
(27, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP-20m', 'lan-cable-cat-6-utp-20m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise. </span></span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"color:#252525\"><span style=\"font-family:Arial,sans-serif\">The Cable Standard Specifies Performance Of Up To 250 MHz.</span></span></span></span></span></span></li>\n</ul>', 7, 'Lan Cable CAT 6 UTP', '0.5', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-20m', '575', '475', 24, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:48'),
(28, '72.255.40.171', 17, 1, 'Shock Proof Skin/Case For Apple Airpods- Black', 'shock-proof-skincase-for-apple-airpods--black-shopker', '<ul>\n	<li>Durable and Easy to apply</li>\n	<li>Gives Maximum Protection</li>\n	<li>Maintains original shine and finish</li>\n	<li>Dust and scratches Proof</li>\n</ul>', '<ul>\n	<li>Durable and Easy to apply</li>\n	<li>Gives Maximum Protection</li>\n	<li>Maintains original shine and finish</li>\n	<li>Dust and scratches Proof</li>\n</ul>', 7, 'Shock Proof Skin/Case For Apple Airpods- Black', '0.2', NULL, NULL, NULL, 689, 'Shock Proof Skin/Case For Apple Airpods- Black', '899', '499', 24, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Shock Proof Skin/Case For Apple Airpods- Black', 'Shock Proof Skin/Case For Apple Airpods- Black', '2019-08-07', '12:39:48'),
(29, '72.255.40.171', 17, 1, 'Vga Cable Male To Male OD 8MM-5m', 'vga-cable-male-to-male-od-8mm-5m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Type: Standard VGA Cable Male To Male</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length: 20 Meters</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Number Of Pins: 15</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Works With PC Monitor Or Anything With A VGA Port</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Supports High Resolution</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Vga Cable Male To Male OD 8MM </span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">VGA Cable Connects A VGA Port To A Monitor Or A Projector. It Is A Standard VGA Cable Of 20m Length</span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;</span></span></span></p>', 7, 'Vga Cable Male To Male OD 8MM', '0.4', NULL, NULL, NULL, 765, 'Vga Cable Male To Male OD 8MM-5m', '300', '250', 24, '2019-08-01', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Vga Cable Male To Male OD 8MM', 'Vga Cable Male To Male OD 8MM', '2019-08-07', '12:39:48'),
(30, '72.255.40.171', 17, 1, 'Vga Cable Male To Male OD 8MM-10m', 'vga-cable-male-to-male-od-8mm-10m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Type: Standard VGA Cable Male To Male</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length: 20 Meters</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Number Of Pins: 15</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Works With PC Monitor Or Anything With A VGA Port</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Supports High Resolution</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Vga Cable Male To Male OD 8MM </span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">VGA Cable Connects A VGA Port To A Monitor Or A Projector. It Is A Standard VGA Cable Of 20m Length</span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;</span></span></span></p>', 7, 'Vga Cable Male To Male OD 8MM', '0.4', NULL, NULL, NULL, 765, 'Vga Cable Male To Male OD 8MM-10m', '665', '550', 24, '2019-08-01', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Vga Cable Male To Male OD 8MM', 'Vga Cable Male To Male OD 8MM', '2019-08-07', '12:39:48'),
(31, '72.255.40.171', 17, 1, 'Vga Cable Male To Male OD 8MM-15m', 'vga-cable-male-to-male-od-8mm-15m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Type: Standard VGA Cable Male To Male</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length: 20 Meters</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Number Of Pins: 15</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Works With PC Monitor Or Anything With A VGA Port</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Supports High Resolution</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Vga Cable Male To Male OD 8MM </span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">VGA Cable Connects A VGA Port To A Monitor Or A Projector. It Is A Standard VGA Cable Of 20m Length</span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;</span></span></span></p>', 7, 'Vga Cable Male To Male OD 8MM', '0.4', NULL, NULL, NULL, 765, 'Vga Cable Male To Male OD 8MM-15m', '950', '780', 24, '2019-08-01', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Vga Cable Male To Male OD 8MM', 'Vga Cable Male To Male OD 8MM', '2019-08-07', '12:39:48'),
(32, '72.255.40.171', 17, 1, 'Vga Cable Male To Male OD 8MM-20m', 'vga-cable-male-to-male-od-8mm-20m-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Type: Standard VGA Cable Male To Male</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length: 20 Meters</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Number Of Pins: 15</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Works With PC Monitor Or Anything With A VGA Port</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Supports High Resolution</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Vga Cable Male To Male OD 8MM </span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12px\">VGA Cable Connects A VGA Port To A Monitor Or A Projector. It Is A Standard VGA Cable Of 20m Length</span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;</span></span></span></p>', 7, 'Vga Cable Male To Male OD 8MM', '0.4', NULL, NULL, NULL, 765, 'Vga Cable Male To Male OD 8MM-20m', '1225', '999', 24, '2019-08-01', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Vga Cable Male To Male OD 8MM', 'Vga Cable Male To Male OD 8MM', '2019-08-07', '12:39:48'),
(33, '72.255.40.171', 17, 1, 'Women\'s Bracelet Quartz Wrist Watch Retro Rainbow Design', 'womens-bracelet-quartz-wrist-watch-retro-rainbow-design-shopker', '<p>&nbsp;</p>\n\n<ul>\n	<li>Band Width:20mm</li>\n	<li>Feature:Auto Date</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Case Shape:Round</li>\n	<li>Water Resistance Depth:No waterproof</li>\n	<li>Dial Window Material Type:Glass</li>\n	<li>Model Number:Women Watch Quartz Wrist Watch Retro Rainbow Leather clock</li>\n	<li>Case Thickness:8mm</li>\n	<li>Style:Fashion &amp; Casual</li>\n	<li>Clasp Type:Buckle</li>\n	<li>Band Material Type:PU</li>\n	<li>Band Length:24cm</li>\n	<li>Boxes &amp; Cases Material:No package</li>\n	<li>Dial Diameter:38mm</li>\n	<li>sports watches :women&#39;s bracelet watches</li>\n</ul>', '<ul>\n	<li>Band Width:20mm</li>\n	<li>Feature:Auto Date</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Case Shape:Round</li>\n	<li>Water Resistance Depth:No waterproof</li>\n	<li>Dial Window Material Type:Glass</li>\n	<li>Model Number:Women Watch Quartz Wrist Watch Retro Rainbow Leather clock</li>\n	<li>Case Thickness:8mm</li>\n	<li>Style:Fashion &amp; Casual</li>\n	<li>Clasp Type:Buckle</li>\n	<li>Band Material Type:PU</li>\n	<li>Band Length:24cm</li>\n	<li>Boxes &amp; Cases Material:No package</li>\n	<li>Dial Diameter:38mm</li>\n	<li>sports watches :women&#39;s bracelet watches</li>\n</ul>', 7, 'Women\'s Bracelet Quartz Wrist Watch Retro Rainbow Design', '0.3', NULL, NULL, NULL, 679, 'Women\'s Bracelet Quartz Wrist Watch Retro Rainbow Design', '750', '475', 6, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Women\'s Bracelet Quartz Wrist Watch Retro Rainbow Design', 'Women\'s Bracelet Quartz Wrist Watch Retro Rainbow Design', '2019-08-07', '12:39:48'),
(34, '72.255.40.171', 17, 1, 'IMB Num Pad-19Keys', 'imb-num-pad-19keys-shopker', '<ul>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Ideal Accessory For Notebooks</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">All Keys Can Be User-Defined With Up To 24 Characters Per Key.</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Durable, Fastest Key Response</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Keys: 24</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Programmable Keys: Yes</span></span></span></li>\n	<li style=\"margin-left:0px;margin-right:0px;text-align:left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">OS Support: All Including Windows And Macintosh</span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;Ideal Accessory For Notebooks</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">All Keys Can Be User-Defined With Up To 24 Characters Per Key.</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Durable, Fastest Key Response</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Keys: 24</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Programmable Keys: Yes</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">OS Support: All Including Windows And Macintosh</span></span></span></li>\n</ul>', 7, 'IMB Num Pad-19Keys', '0.3', NULL, NULL, NULL, 689, 'Num Pad', '550', '399', 24, '2019-08-01', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Num Pad', 'Num Pad', '2019-08-07', '12:39:48'),
(35, '72.255.40.171', 17, 1, 'Rubber Hot Water Bag - Red', 'rubber-hot-water-bag---red-shopker', '<ul>\n	<li>Can use cold or hot water</li>\n	<li>For pain relief</li>\n	<li>Easy to Use</li>\n	<li>Durable</li>\n</ul>', '<ul>\n	<li>Can use cold or hot water</li>\n	<li>For pain relief</li>\n	<li>Easy to Use</li>\n	<li>Durable</li>\n</ul>', 7, 'Rubber Hot Water Bag - Red', '0.4', NULL, NULL, NULL, 734, 'Rubber Hot Water Bag - Red', '450', '399', 6, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Rubber Hot Water Bag - Red', 'Rubber Hot Water Bag - Red', '2019-08-07', '12:39:48'),
(36, '72.255.40.171', 17, 1, 'Black 100% Cow Leather ATM Card Holder For Men', 'black-100-cow-leather-atm-card-holder-for-men-shopker', '<ul>\n	<li>Black 100% Cow Leather ATM Card Holder For Men</li>\n	<li>High Quality&nbsp;</li>\n	<li>Leather Wallet&nbsp;</li>\n	<li>Trendy</li>\n</ul>', '<ul>\n	<li>Black 100% Cow Leather ATM Card Holder For Men</li>\n	<li>High Quality&nbsp;</li>\n	<li>Leather Wallet&nbsp;</li>\n	<li>Trendy</li>\n</ul>', 7, 'Black 100% Cow Leather ATM Card Holder For Men', '0.3', NULL, NULL, NULL, 689, 'Black 100% Cow Leather ATM Card Holder For Men', '750', '399', 6, '2019-08-01', '2020-01-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Black 100% Cow Leather ATM Card Holder For Men', 'Black 100% Cow Leather ATM Card Holder For Men', '2019-08-07', '12:39:48'),
(37, '72.255.40.171', 17, 1, 'SMART STICK H96PRO-H3 2GB+16GB BLUETOOTH 4.0 QUAD CORE 4K ULTRA HD 7.1V', 'smart-stick-h96pro-h3-2gb16gb-bluetooth-40-quad-core-4k-ultra-hd-71v-shopker', '<ul>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">VP9-10 Profile-2 Up To 4Kx2K 60fps</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">H.265 HEVC MP-10 L5.1 Up To 4Kx2K &nbsp;60fps</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">H.264 AVC HP L5.1 Up To 4Kx2K 30fps</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">H.264 MVC Up To 1080P &nbsp;60fps</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">MPEG-4 ASP L5 Up To 1080P 60fps (ISO-14496)</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">WMV/VC-1 SP/MP/AP Up To 1080P 60fps</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">AVS-P16(AVS+) /AVS-P2 JiZhun Profile Up To 1080P 60fps</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">MPEG-2 MP/HL Up To 1080P 60fps (ISO-13818)</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">MPEG-1 MP/HL Up To 1080P 60fps (ISO-11172)</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">RealVideo 8/9/10 Up To 1080P 60fps</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">WebM Up To VGA</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Multiple Language And Multiple Format Sub-Title Video Support</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">MJPEG And JPEG Unlimited Pixel Resolution Decoding (ISO/IEC-10918)</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Supports JPEG Thumbnail, Scaling, Rotation And Transition Effects</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Supports *.Mkv,*.Wmv,*.Mpg, *.Mpeg, *.Dat, *.Avi, *.Mov, *.Iso, *.Mp4, *.Rm And *.Jpg File</span></span></span></span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">SMART STICK H96PRO-H3 (S905X) 2GB+16GB BLUETOOTH 4.0 QUAD CORE 4K ULTRA HD 7.1V -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Built-In HDMI 2.0a Transmitter Including Both Controller And PHY With HDR, CEC And HDCP 2,2, 4Kx2K 60 Max Resolution Output</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Support Google Play &amp; APK Install</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Support DLNA,Miracast Protocol,Support DRM Requirement.</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Remote Control</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Support Smart Phone Remote Contro</span></span></span><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">2.4GHZ Wireless Air Mouse/Remote Controller</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">IM Software</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Support Skype/QQ/MSN/GTALK (Depends On APK Install)</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Offic Software:&nbsp;WORD/EXCEL/PDF(Depends On APK Install)</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Interface</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">HDMI Out</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">1*HDMI</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">USB Port:&nbsp;1*USB Host + 1*USB OT</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Card Readere</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">1* Micro SD Card (TF Card) Reader</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Network:&nbsp;Wifi 2.4G</span></span></span></span></span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Power Supply:&nbsp;1*5V/2A DC</span></span></span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\">&nbsp;</span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\">&nbsp;</p>', 7, '1* H96 Pro TV BOX   1*Power Charger   1*User Manual   1*HDMI Cable', '0.5', NULL, NULL, NULL, 679, 'SMART STICK H96PRO-H3', '7500', '6500', 24, '2019-08-01', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'SMART STICK H96PRO-H3', 'SMART STICK H96PRO-H3', '2019-08-07', '12:39:48'),
(38, '72.255.40.171', 17, 1, 'Crocodile Skin Style Cow Leather Wallet For Men-Brown', 'crocodile-skin-style-cow-leather-wallet-for-men-brown-shopker', '<p>&nbsp;</p>\n\n<ul>\n	<li>Crocodile Skin Style Cow Leather Wallet For Men-Brown&nbsp;</li>\n	<li>100% Cow Leather</li>\n	<li>High quality wallet</li>\n	<li>Multiple compartments</li>\n	<li>Stylish design</li>\n</ul>', '<ul>\n	<li>100% Cow Leather</li>\n	<li>High quality wallet</li>\n	<li>Multiple compartments</li>\n	<li>Stylish design</li>\n</ul>', 0, 'Crocodile Skin Style Cow Leather Wallet For Men-Brown', '0.4', NULL, NULL, NULL, 695, 'Crocodile Skin Style Cow Leather Wallet For Men-Brown', '2500', '1200', 6, '2019-07-31', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Crocodile Skin Style Cow Leather Wallet For Men-Brown', 'Crocodile Skin Style Cow Leather Wallet For Men-Brown', '2019-08-07', '12:39:48');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(39, '72.255.40.171', 17, 1, 'Air Mouse MX3 For Android And Smart TV', 'air-mouse-mx3-for-android-and-smart-tv-shopker', '<ul>\n	<li>Full QWERTY Keyboard Layout</li>\n	<li>Convenient Typing</li>\n	<li>Fast Key Response</li>\n	<li>Auto Stand-By After 20 Seconds</li>\n	<li>Sensor: 3-Axis Gravity Sensor, 3-Axis Gyroscope&nbsp;</li>\n	<li>Communication: 2.4 GHz&nbsp;</li>\n	<li>Working Distance: 10m&nbsp;</li>\n	<li>Frequency: 2.400 - 2.483 GHz&nbsp;</li>\n	<li>Working Current: &lt;&lt;20mA&nbsp;</li>\n	<li>Standby Current: &lt;&lt;20uA&nbsp;</li>\n	<li>Battery: Rechargeable Lithium Battery&nbsp;</li>\n	<li>Indicator: 1 LED Indicator&nbsp;</li>\n	<li>USB: USB2.0&nbsp;</li>\n	<li>System: Compatible With Windows, Linux, Android</li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Air Mouse MX3 For Android And Smart TV -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-family:Calibri,sans-serif\">This Product Is A Remote Controller With The Function Of Mouse, Keyboard, Multimedia Android Control And Motion Sense Support. It Can Provide People A Unique And Capable Tool To Operate Their PC, Smart TV, Android TV Box, Media Player, Set Top Box. It Is Plug And Play, Simple And Smooth. It Is Widely Used For:&nbsp;<br />\n<br />\nControlling Presentations, Teaching And Lecturing With Larger Screen Or Projector Up To 10m.&nbsp;<br />\nAnyone Who Wants To Control Their Computers From The Comfort Of Their Couch.&nbsp;<br />\nThe Full QWERTY Keyboard Allows For Convenient Typing From The Same Device.</span></span></span></span></p>', 7, 'Air Mouse MX3 For Android And Smart TV', '0.5', NULL, NULL, NULL, 689, 'Air Mouse MX3 For Android And Smart TV', '1450', '999', 24, '2019-07-31', '2019-08-05', 0, 0, 1, '00:00:00', '00:00:00', 'https://youtu.be/Li5aubTiPyw', 'https://youtu.be/Li5aubTiPyw', 'https://youtu.be/Li5aubTiPyw', '2019-08-07', '12:39:48'),
(40, '72.255.40.171', 17, 1, 'Crocodile Skin Style Cow Leather Wallet-Black', 'crocodile-skin-style-cow-leather-wallet-black-shopker', '<ul>\n	<li>Crocodile Skin Style</li>\n	<li>100% Original Cow Leather</li>\n	<li>Wallet-Black Color</li>\n	<li>High Quality</li>\n	<li>Leather Wallet</li>\n	<li>Trendy</li>\n</ul>', '<ul>\n	<li>Crocodile Skin Style</li>\n	<li>100% Original Cow Leather</li>\n	<li>Wallet-Black Color</li>\n	<li>High Quality</li>\n	<li>Leather Wallet</li>\n	<li>Trendy</li>\n</ul>', 7, 'Crocodile Skin Style Cow Leather Wallet-Black', '0.4', NULL, NULL, NULL, 689, 'Crocodile Skin Style Cow Leather Walle-Black', '2500', '1200', 6, '2019-07-31', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Crocodile Skin Style Cow Leather Wallet-Black', 'Crocodile Skin Style Cow Leather Wallet-Black', '2019-08-07', '12:39:49'),
(41, '72.255.40.171', 17, 1, 'Air Mouse MX3 Backlit For Android And Smart Tv', 'air-mouse-mx3-backlit-for-android-and-smart-tv-shopker', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"-webkit-text-size-adjust:auto; -webkit-text-stroke-width:0px; background-position:initial initial; background-repeat:initial initial; border-collapse:collapse; border:1pt solid #0d0c0c; caret-color:#000000; color:#000000; font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif; font-size:12px; font-style:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; margin:0px; orphans:auto; overflow:scroll; padding:0px; table-layout:fixed; text-align:left; text-decoration:none; text-transform:none; white-space:normal; widows:auto; width:341.6pt; word-spacing:0px\">\n	<tbody>\n		<tr>\n			<td style=\"border-color:#0d0c0c; height:14.25pt; text-align:left; vertical-align:top; width:85.1pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><strong>Sensor</strong></p>\n			</td>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:256.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">3-Gyro&nbsp;+&nbsp;3-Gsensor</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:85.1pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><strong>Amount&nbsp;Of&nbsp;Key&nbsp;</strong></p>\n			</td>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:256.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:#333333\">81</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:85.1pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><strong>Control&nbsp;Distance</strong></p>\n			</td>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:256.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">More Than 10m</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:85.1pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><strong>Battery&nbsp;Type</strong></p>\n			</td>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:256.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">AAA&nbsp;X2</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"height:14.25pt; text-align:left; width:85.1pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><strong>Working&nbsp;Power</strong></p>\n			</td>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:256.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">Less&nbsp;Than&nbsp;10mA&nbsp;In&nbsp;The&nbsp;Work&nbsp;Condition&nbsp;Witout&nbsp;Vioce&nbsp;Input,</p>\n\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;Less&nbsp;Than&nbsp;15mA&nbsp;In&nbsp;The&nbsp;Sate&nbsp;Of&nbsp;Voice&nbsp;Input</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:85.1pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><strong>Backlit&nbsp;Color</strong></p>\n			</td>\n			<td style=\"height:14.25pt; text-align:left; vertical-align:top; width:256.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">White&nbsp;/Red&nbsp;/Purple/&nbsp;Blue&nbsp;/Yellow/Green/Lake&nbsp;Blue</p>\n			</td>\n		</tr>\n	</tbody>\n</table>', '<p>Air Mouse MX3 Backlit For Android And Smart Tv -&nbsp;<br />\nYou Can Use It At Home, Enjoying PC Multi-Media Entertainment Or Take It To The Office, Suitable For Conference, Presentation &amp; Lecturing. With 2.4GHz RF Wireless Technology, The Transmission Distance Is Up To 10 Meters. You Can Control The Devices At Random Within 10 Meters.<strong>&nbsp;</strong>It Is So Easy To Type And Input The Correct Information Accurately Even In The Dark. It&rsquo;s So Energy- Saving, Turn On The Backlight Button, Press The Buttons On The Front Face Of Remote, The Backlight Will Turn Off The Backlight Automatically And Vice Versa. Never Need Change The Batteries Frequently.The Qwerty Keys Are Soft And Sensitive, Easy To Press, Control, And Jump To The Interface What You Want. With 3-Gyro + 3-Gsensor, Convenient To Control In Horizontal And Vertical Mode For Motion Games And Typing.<strong>&nbsp;</strong>It&rsquo;s Compatible With Android TV Box , Smart TV Box, IPTV, Network Media Player, Game Player, Set-Top Box, Tablet, HTPC And PCTV.</p>', 7, '1 X MX3 Backlit 1 X User Manual', '0.4', NULL, NULL, NULL, 689, 'Air Mouse MX3 Backlit For Android And Smart Tv', '1500', '1150', 24, '2019-07-31', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Air Mouse MX3 Backlit For Android And Smart Tv', 'Air Mouse MX3 Backlit For Android And Smart Tv', '2019-08-07', '12:39:49'),
(42, '72.255.40.171', 17, 1, 'Multipurpose School Office Desk Set Computer Keyboard Cleaning Brush Cleaner 2 In 1', 'multipurpose-school-office-desk-set-computer-keyboard-cleaning-brush-cleaner-2-in-1-shopker', '<ul>\n	<li>1pc Multipurpose School Office</li>\n	<li>Desk Set Computer Keyboard Cleaning</li>\n	<li>Brush Cleaner 2 In 1 Stationery Tool</li>\n</ul>', '<ul>\n	<li>1pc Multipurpose School Office</li>\n	<li>Desk Set Computer Keyboard Cleaning</li>\n	<li>Brush Cleaner 2 In 1 Stationery Tool</li>\n</ul>', 7, 'Multipurpose School Office Desk Set Computer Keyboard Cleaning Brush Cleaner 2 In 1', '0.3', NULL, NULL, NULL, 679, 'Multipurpose School Office Desk Set Computer Keyboard Cleaning Brush Cleaner 2 In 1', '400', '275', 6, '2019-07-31', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Multipurpose School Office Desk Set Computer Keyboard Cleaning Brush Cleaner 2 In 1', 'Multipurpose School Office Desk Set Computer Keyboard Cleaning Brush Cleaner 2 In 1', '2019-08-07', '12:39:49'),
(43, '72.255.40.171', 17, 1, 'Apple Wireless Keyboard Mouse Mini', 'apple-wireless-keyboard-mouse-mini-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">Support For Apple, Android, Windows System, Suitable For Laptop, PC Machine And All General Machines Having USB Port.</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">78 Keys With 12 Multi-Function Keys - Special Keys Provide One-Touch Access To A - Variety Of Features</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">Wireless 2.4 Ghz: A Cable-Free Connection</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">Slim: Its Compact Design Is Great For Travels</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">2 Pcs AAA Dry Battery (NOT INCLUDE</span></span></span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-family:Symbol\">&nbsp;</span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Apple Wireless Keyboard Mouse Mini -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Arial,sans-serif\">The Wireless Keyboard Features An Integrated Ergonomic Tilt To Provide Added Comfort And Avoid Strain While Typing. The Attached Keyboard Features A Sleek Thin Enclosure That Provide A Crisp, Tactile Responsive Feel, To Help Improve Typing Accuracy And Speed. Its Compact Design Fits On Even The Most Crowded Desk. The 2.4g Wireless Technology Provides A Clean, Cable Free Workspace, You&#39;re Free To Move The Keyboard Just About Anywhere Within Range And Wirelessly Type Away.</span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong>&nbsp;</strong></span></span></span>​​​​​​​</p>', 7, '1 X Mouse 1 X Keyboard 1 X Keyboard Silicon Dust Protector', '0.4', NULL, NULL, NULL, 689, 'Original Xiaomi Mi Band 3', '1500', '1175', 24, '2019-07-29', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Apple Wireless Keyboard Mouse Mini', 'Apple Wireless Keyboard Mouse Mini', '2019-08-07', '12:39:49'),
(44, '72.255.40.171', 17, 1, 'Cute Silver DIY Circle Mirror Wall Stickers Home Bedroom Office Decor-30Pcs', 'cute-silver-diy-circle-mirror-wall-stickers-home-bedroom-office-decor-30pcs-shopker', '<ul>\n	<li>Material: Acrylic</li>\n	<li>Color: As the picture show</li>\n	<li>Biggest round dia.: approx. 8.2cm</li>\n	<li>Smallest round dia.: approx. 3.3cm</li>\n	<li>Quantity:1 Set (30Pcs)</li>\n	<li>Attention:Please reveal the surface of the protective membrane after installation is complete!</li>\n	<li>Very fashion and modern breath</li>\n	<li>You can DIY what you like</li>\n	<li>Easy and Convenient to use</li>\n	<li>Only 1mm thick plastic mirror, light but durable</li>\n	<li>TV setting wall, Sofa setting wall, dining room, bedroom, door, freezer, wardrobe and so on, simple but not tedium, all show fashion atmosphere elegant noble quality of life</li>\n	<li>Size for manual measurement, there may be a 0 to 1 cm error, belongs to the normal phenomenon.</li>\n	<li>Due to the difference between different monitors, the picture may not reflect the actual color of the item. Thank you</li>\n	<li>Package includes:</li>\n	<li>1 Set X Wall Sticker(Includeddouble sides adhesive tapes)</li>\n</ul>', '<ul>\n	<li>Material: Acrylic</li>\n	<li>Color: As the picture show</li>\n	<li>Biggest round dia.: approx. 8.2cm</li>\n	<li>Smallest round dia.: approx. 3.3cm</li>\n	<li>Quantity:1 Set (30Pcs)</li>\n	<li>Attention:Please reveal the surface of the protective membrane after installation is complete!</li>\n	<li>Very fashion and modern breath</li>\n	<li>You can DIY what you like</li>\n	<li>Easy and Convenient to use</li>\n	<li>Only 1mm thick plastic mirror, light but durable</li>\n	<li>TV setting wall, Sofa setting wall, dining room, bedroom, door, freezer, wardrobe and so on, simple but not tedium, all show fashion atmosphere elegant noble quality of life</li>\n	<li>Size for manual measurement, there may be a 0 to 1 cm error, belongs to the normal phenomenon.</li>\n	<li>Due to the difference between different monitors, the picture may not reflect the actual color of the item. Thank you</li>\n	<li>Package includes:</li>\n	<li>1 Set X Wall Sticker(Includeddouble sides adhesive tapes)</li>\n</ul>', 7, 'Cute Silver DIY Circle Mirror Wall Stickers Home Bedroom Office Decor-30Pcs', '0.4', NULL, NULL, NULL, 689, 'Original Xiaomi Mi Band 3', '950', '650', 24, '2019-07-29', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Cute Silver DIY Circle Mirror Wall Stickers Home Bedroom Office Decor-30Pcs', 'Cute Silver DIY Circle Mirror Wall Stickers Home Bedroom Office Decor-30Pcs', '2019-08-07', '12:39:49'),
(45, '72.255.40.171', 17, 1, 'Panda Eyes Car Styling Air Freshener - Car Air Conditioning Vent Perfume', 'panda-eyes-car-styling-air-freshener---car-air-conditioning-vent-perfume-shopker', '<ul>\n	<li>Panda Eyes Car Styling Air Freshener 1 Set Car Air Conditioning Vent Perfume</li>\n	<li>Brand new and high quality</li>\n	<li>Panda head shape, eyes blinks when car move slightly</li>\n	<li>A cute and attractive decoration</li>\n	<li>Can be used in car, home, office or anywhere</li>\n	<li>Easy Installation</li>\n	<li>small wet sticks for perfuming</li>\n</ul>', '<ul>\n	<li>Panda Eyes Car Styling Air Freshener 1 Set Car Air Conditioning Vent Perfume</li>\n	<li>Brand new and high quality</li>\n	<li>Panda head shape, eyes blinks when car move slightly</li>\n	<li>A cute and attractive decoration</li>\n	<li>Can be used in car, home, office or anywhere</li>\n	<li>Easy Installation</li>\n	<li>small wet sticks for perfuming</li>\n</ul>', 7, 'Panda Eyes Car Styling Air Freshener - Car Air Conditioning Vent Perfume', '0.3', NULL, NULL, NULL, 765, 'Panda Eyes Car Styling Air Freshener - Car Air Conditioning Vent Perfume', '550', '350', 6, '2019-07-29', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Panda Eyes Car Styling Air Freshener - Car Air Conditioning Vent Perfume', 'Panda Eyes Car Styling Air Freshener - Car Air Conditioning Vent Perfume', '2019-08-07', '12:39:49'),
(46, '72.255.40.171', 17, 1, 'Heavy Duty Tool Box-First Aid Box - 13 Inch', 'heavy-duty-tool-box-first-aid-box---13-inch-shopker', '<ul>\n	<li>13 inches</li>\n	<li>Durable</li>\n	<li>High Quality</li>\n	<li>Strong Plastic</li>\n	<li>Tray Included Inside</li>\n</ul>', '<ul>\n	<li>13 inches</li>\n	<li>Durable</li>\n	<li>High Quality</li>\n	<li>Strong Plastic</li>\n	<li>Tray Included Inside</li>\n</ul>', 7, 'Heavy Duty Tool Box-First Aid Box - 13 Inch', '1', NULL, NULL, NULL, 679, 'Heavy Duty Tool Box - 13 Inch', '1450', '999', 24, '2019-07-29', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Heavy Duty Tool Box - 13 Inch', 'Heavy Duty Tool Box - 13 Inch', '2019-08-07', '12:39:49'),
(47, '72.255.40.171', 17, 1, 'Remax RU-S2 4 USB Ports Hub and 3 Universal Plug 4.2A Power Strip - Black', 'remax-ru-s2-4-usb-ports-hub-and-3-universal-plug-42a-power-strip---black-shopker', '<ul>\n	<li>\n	<p>Brand Name:Remax</p>\n	</li>\n	<li>\n	<p>Model:Ming Series RU-S2(Business Section)</p>\n	</li>\n	<li>\n	<p>Material:ABS+PC</p>\n	</li>\n	<li>\n	<p>Size: 245*44.4*27MM</p>\n	</li>\n	<li>\n	<p>Line Length:1.8m</p>\n	</li>\n	<li>\n	<p>Rated Input:AC100~240V/50~60HZ/MAX 10A</p>\n	</li>\n	<li>\n	<p>Rated Output:AC100~240V/50~60HZ/MAX 2500W</p>\n	</li>\n	<li>\n	<p>USB Ports:MAX DC 5V/2.1A &nbsp;DC 5V/1A</p>\n	</li>\n	<li>\n	<p>Power Conversion Rate:82%</p>\n	</li>\n	<li>\n	<p>Total Current:3.1A</p>\n	</li>\n	<li>\n	<p>Application:Residential / General-Purpose</p>\n	</li>\n	<li>\n	<p>Color:Black</p>\n	</li>\n</ul>', '<ul>\n	<li>\n	<p>Wide compatibility.Compatible for iPhone,iPad,Samsung and other electronic devices with usb interface.</p>\n	</li>\n	<li>\n	<p>Size optimization.The 245*44.4*27MM size make it more delicate and portable for you to carry while traveling.</p>\n	</li>\n	<li>\n	<p>&ldquo;3C&rdquo; safety certification plug,3*0.75mm internal copper standard line,2500W rated power,PC material that is heat-resistant and not easy to deformation.</p>\n	</li>\n	<li>\n	<p>Security Protection.10A overload protection,75N children safety door and 750℃ flame retardant shell make it safer for use.</p>\n	</li>\n</ul>', 7, 'Remax RU-S2 4 USB Ports Hub and 3 Universal Plug 4.2A Power Strip - Black', '0.5', NULL, NULL, NULL, 689, 'Remax RU-S2 4 USB Ports Hub and 3 Universal Plug 4.2A Power Strip - Black', '2200', '1650', 24, '2019-07-29', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax RU-S2 4 USB Ports Hub and 3 Universal Plug 4.2A Power Strip - Black', 'Remax RU-S2 4 USB Ports Hub and 3 Universal Plug 4.2A Power Strip - Black', '2019-08-07', '12:39:49'),
(48, '72.255.40.171', 17, 1, 'Remax Alien Series RU-S4 5 USB Ports Hub- Black', 'remax-alien-series-ru-s4-5-usb-ports-hub--black-shopker', '<ul>\n	<li>Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Remax RU-S4 is an electric plug with USB Charger.</li>\n	<li>There are 6 universal power outlets and 5 USB Ports so you can use various devices while charging the smartphone using only 1 device 5 USB Ports Remax RU-S4 has 5buah USB Port.</li>\n	<li>You can have available ports according to the voltage requirements of your smartphone or tablet. 6 Electric Plug It has 6 pieces of universal litrik plugs that you can use to striking a variety of electronic devices.</li>\n</ul>', '<p style=\"border:0px; display:block; height:0px; left:-9999px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; opacity:0; overflow:hidden; padding:0px; position:absolute; top:0px; width:0px\">&nbsp;</p>\n\n<p>Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Remax RU-S4 is an electric plug with USB Charger.</p>\n\n<p>There are 6 universal power outlets and 5 USB Ports so you can use various devices while charging the smartphone using only 1 device 5 USB Ports Remax RU-S4 has 5buah USB Port.</p>\n\n<p>You can have available ports according to the voltage requirements of your smartphone or tablet. 6 Electric Plug It has 6 pieces of universal litrik plugs that you can use to striking a variety of electronic devices.</p>\n\n<p style=\"border:0px; display:block; height:0px; left:-9999px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; opacity:0; overflow:hidden; padding:0px; position:absolute; top:0px; width:0px\">&nbsp;</p>', 7, 'Remax Alien Series RU-S4 5 USB Ports Hub- Black', '0.5', NULL, NULL, NULL, 689, 'Remax Alien Series RU-S4 5 USB Ports Hub- Black', '3200', '2599', 24, '2019-07-29', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Alien Series RU-S4 5 USB Ports Hub- Black', 'Remax Alien Series RU-S4 5 USB Ports Hub- Black', '2019-08-07', '12:39:49'),
(49, '72.255.40.171', 17, 1, 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', 'bunion-corrector-gel-pad-stretch-nylon-hallux-valgus-shopker', '<ul>\n	<li>Reduces toe and foot discomfort</li>\n	<li>Alleviates tension</li>\n	<li>Stretches and aligns toes</li>\n	<li>Increase circulation</li>\n	<li>Straighten bent toes</li>\n	<li>Realign joint</li>\n	<li>Improve balance</li>\n	<li>Improve foot strength</li>\n	<li>Bunion relief</li>\n</ul>', '<ul>\n	<li>Reduces toe and foot discomfort</li>\n	<li>Alleviates tension</li>\n	<li>Stretches and aligns toes</li>\n	<li>Increase circulation</li>\n	<li>Straighten bent toes</li>\n	<li>Realign joint</li>\n	<li>Improve balance</li>\n	<li>Improve foot strength</li>\n	<li>Bunion relief</li>\n</ul>', 7, '1* Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', '0.3', NULL, NULL, NULL, 679, 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', '699', '499', 12, '2019-07-29', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', '2019-08-07', '12:39:49'),
(50, '72.255.40.171', 17, 1, 'Gel Foot Care Tool Bunion Corrector Bone Big Toe Protector', 'gel-foot-care-tool-bunion-corrector-bone-big-toe-protector-shopker', '<ul>\n	<li>Gel Foot Care Tool Bunion Corrector Bone Big Toe Protector Hallux Valgus Straightener Toe Spreader Pedicure</li>\n	<li>Feature:Toe seperator in day use ,can be used in shoes.</li>\n	<li>2.Material: Silicone</li>\n	<li>3.Size:One size fits all</li>\n	<li>4.Used for: Relieve bunion pain and prevent the bunion from worsening.</li>\n	<li>5.color: White</li>\n	<li>Function:</li>\n	<li>Reduces toe and foot discomfort</li>\n	<li>Alleviates tension</li>\n	<li>Stretches and aligns toes</li>\n	<li>Increase circulation</li>\n	<li>Straighten bent toes</li>\n	<li>Realign joint</li>\n	<li>Improve balance</li>\n	<li>Improve foot strength</li>\n</ul>', '<ul>\n	<li>Gel Foot Care Tool Bunion Corrector Bone Big Toe Protector Hallux Valgus Straightener Toe Spreader Pedicure</li>\n	<li>Feature:Toe seperator in day use ,can be used in shoes.</li>\n	<li>2.Material: Silicone</li>\n	<li>3.Size:One size fits all</li>\n	<li>4.Used for: Relieve bunion pain and prevent the bunion from worsening.</li>\n	<li>5.color: White</li>\n	<li>Function:</li>\n	<li>Reduces toe and foot discomfort</li>\n	<li>Alleviates tension</li>\n	<li>Stretches and aligns toes</li>\n	<li>Increase circulation</li>\n	<li>Straighten bent toes</li>\n	<li>Realign joint</li>\n	<li>Improve balance</li>\n	<li>Improve foot strength</li>\n</ul>', 7, '1 Pair * Gel Foot Care Tool Bunion Corrector Bone Big Toe Protector', '0.4', NULL, NULL, NULL, 765, 'Gel Foot Care Tool Bunion Corrector Bone Big Toe Protector', '750', '399', 6, '2019-07-29', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Gel Foot Care Tool Bunion Corrector Bone Big Toe Protector', 'Gel Foot Care Tool Bunion Corrector Bone Big Toe Protector', '2019-08-07', '12:39:49'),
(51, '72.255.40.171', 17, 1, 'Usb Mini Stand Mic', 'usb-mini-stand-mic-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">USB Microphone For PC Or Mac</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Filters Unwanted Background Noise</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Switch Lights When The Microphone Is On</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Microphone: 13x5.5 CM / 5 &quot;X 2&quot; (MAX)</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">USB Cable Length: 95cm / 37 &quot;</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">No Need To Install The Driver, Can Be Recognized By The PC Automatically When The USB Connector Is Inserted Into The USB Port On The PC.</span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">USB Microphone For PC Or Mac</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Filters Unwanted Background Noise</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Switch Lights When The Microphone Is On</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Microphone: 13x5.5 CM / 5 &quot;X 2&quot; (MAX)</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">USB Cable Length: 95cm / 37 &quot;</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">No Need To Install The Driver, Can Be Recognized By The PC Automatically When The USB Connector Is Inserted Into The USB Port On The PC.</span></span></span></li>\n</ul>', 7, '1* Usb Mini Stand Mic', '0.4', NULL, NULL, NULL, 689, 'Usb Mini Stand Mic', '450', '325', 24, '2019-07-29', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Usb Mini Stand Mic', 'Usb Mini Stand Mic', '2019-08-07', '12:39:49'),
(52, '72.255.40.171', 17, 1, 'TRIPOD CAMERA STAND 330A', 'tripod-camera-stand-330a-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"color:black\"><span style=\"background-color:white\">Maximum Height:&nbsp;</span></span></span></span></strong><span style=\"background-color:white\">1345mm</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"color:black\"><span style=\"background-color:white\">Minimum Height:</span></span></span></span></strong><span style=\"background-color:white\">&nbsp;470mm</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"color:black\"><span style=\"background-color:white\">Folded Length:&nbsp;</span></span></span></span></strong><span style=\"background-color:white\">515mm</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"color:black\"><span style=\"background-color:white\">Leg Sections:&nbsp;</span></span></span></span></strong><span style=\"background-color:white\">Aluminum 3 Section Leg</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"color:black\"><span style=\"background-color:white\">Head Type:&nbsp;</span></span></span></span></strong><span style=\"background-color:white\">360&deg; Swivel Fluid Head</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:Helvetica,sans-serif\"><span style=\"color:black\"><span style=\"background-color:white\">Leg Lock Type:&nbsp;</span></span></span></span></strong><span style=\"background-color:white\">Self-Aligning Metal Quick-Flip</span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">TRIPOD CAMERA STAND 330A -&nbsp;</span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\">Don&#39;t Just Take Snapshots! Take Control Over Your Composition With Increased Camera Performance And Sharper Images That Will Exceed Your Expectations. Extremely Sharp Pictures Even At Shorter Focal Lengths And In Macro Applications, As Well As Any Extreme Telephoto Instances Where Every Little Movement Is Magnified And Reduces Picture Sharpness. Avoid Camera Shake From Handholding, And Never Worry About Shooting At Slower Shutter Speeds. Reasons To Use A Tripod: Get Maximum Image Quality Whether You Are Shooting Stills Or Video. With The Use Of A Tripod You Can Achieve Greater Performance And Maintain Image Quality. This Quality Tripod Will Allow You To Hold Steady Enough To Get The Most Out Of Your Camera Equipment. You Can Even Take Advantage Of Things Like Your Camera&#39;s Timer Feature As This Durable Tripod Holds Your Camera In Place. Features: Bubble Level Indicator Adjust Your Angle Precisely Non-Slip Adjustable Rubber Feet Keeps Your Tripod Steady On Any Surface Extends To 1050mm 42Inches, Folds To 350mm 14Inches Incredible Portability And Flexibility 4-Section Aluminum Legs For Maximum Versatility And Light Weight Change Your Equipment Whatever You Want 3-Way, 360-Degree Swivel Pan Head For Shooting At Any Angle Gearless Center Column For Fast, Precise Column Adjustment Quick-Release Leg Locks For Quick, Easy Maneuverability Includes Nylon Carrying Case With Shoulder Strap Convenient, Lightweight Protection And Mobility</span></span></span></span></p>', 7, '1 X Portable Folding Tripod Weifeng WT-330A  1 X Carrying Case (Nylon)  1 X Packing + Instruction', '0.5', NULL, NULL, NULL, 754, 'TRIPOD CAMERA STAND 330A', '1600', '1195', 24, '2019-07-27', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'TRIPOD CAMERA STAND 330A', 'TRIPOD CAMERA STAND 330A', '2019-08-07', '12:39:49'),
(53, '72.255.40.171', 17, 1, 'TRIPOD CAMERA STAND 3110', 'tripod-camera-stand-3110-shopker', '<p style=\"margin-left:15pt; margin-right:0px; text-align:left\">&nbsp;</p>\n\n<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">Pull-Out Button Angling Adjustment, Ensuring Single Adjust Of Each Leg.</span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">Typical Regulating Design Of Elevator, Offering The Different Damping Effect Depends On The Weight Of Your Camera.</span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">3-Section Center Column, Realizing Your Lowest Angle Shooting, Non Silp Rubber Feet.</span></span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">Flip Leg Locking System, Giving A More Convenient Leg Handling</span></span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:#f5f8f9\"><span style=\"font-family:Arial,sans-serif\">Professional Tripod With 3-Way Panhead For Digital Cameras And Camcorders DV. Get Rid Of The Shakes With This Trusty 43.5-Inch Aluminum Tripod! This Tripod Features Aluminum Construction With Black Plastic Fittings, Making It Lightweight For Portability, And The Brace And Non-Slip Feet Keep It Standing Securely In Place.</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;</span></span></span></p>', 7, '1* TRIPOD CAMERA STAND 3110, 1* Mobile Clip', '0.5', NULL, NULL, NULL, 754, 'TRIPOD CAMERA STAND 3110', '799', '599', 24, '2019-07-27', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'TRIPOD CAMERA STAND 3110', 'TRIPOD CAMERA STAND 3110', '2019-08-07', '12:39:49'),
(54, '72.255.40.171', 17, 1, 'S6 SMART SENSOR CAR WIRLESS CHARGER WITH MOBILE HOLDER', 's6-smart-sensor-car-wirless-charger-with-mobile-holder-shopker', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;S6 SMART SENSOR CAR WIRLESS CHARGER WITH MOBILE HOLDER -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Portable, Attractive Design And Modern, Wireless Charging Technology And Cool Appearance The Perfect Combination Of Life Will Provide You With The Wireless Border, Please Note It Is Not Suit For All Of IPhone And Android Phones, Some IPhone And Android Mobile Phones Need To Install A General Purpose Receiver. This Wireless Charger Can Be Used With Any Compatible With Qi Standards For Mobile Phones And Devices, And Provide Absolute Security. .360 Degree Rotation: The 360-Degree Rotating Ball Joint On Mount Enables Flexible Viewing Angles While Driving. You Could Adjust Easily Between Portrait And Landscape Orientation.</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\">Charging Efficiency: 72% &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><br />\n<span style=\"background-color:white\">Charging Distance: 10mm</span></span></span></span></p>', '<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;S6 SMART SENSOR CAR WIRLESS CHARGER WITH MOBILE HOLDER -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Portable, Attractive Design And Modern, Wireless Charging Technology And Cool Appearance The Perfect Combination Of Life Will Provide You With The Wireless Border, Please Note It Is Not Suit For All Of IPhone And Android Phones, Some IPhone And Android Mobile Phones Need To Install A General Purpose Receiver. This Wireless Charger Can Be Used With Any Compatible With Qi Standards For Mobile Phones And Devices, And Provide Absolute Security. .360 Degree Rotation: The 360-Degree Rotating Ball Joint On Mount Enables Flexible Viewing Angles While Driving. You Could Adjust Easily Between Portrait And Landscape Orientation.</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\">Charging Efficiency: 72% &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><br />\n<span style=\"background-color:white\">Charging Distance: 10mm</span></span></span></span></p>', 7, '1* Car Charger 1* Type C USB Charging Cable', 'o.5', NULL, NULL, NULL, 689, 'S6 SMART SENSOR CAR WIRLESS CHARGER WITH MOBILE HOLDER', '2500', '1650', 24, '2019-07-27', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'S6 SMART SENSOR CAR WIRLESS CHARGER WITH MOBILE HOLDER', 'S6 SMART SENSOR CAR WIRLESS CHARGER WITH MOBILE HOLDER', '2019-08-07', '12:39:49'),
(55, '72.255.40.171', 17, 1, 'REMAX WIRELESS CHARGER ANDRIOD AND IOS RP-W10', 'remax-wireless-charger-andriod-and-ios-rp-w10-shopker', '<p>&middot; Input: 5V/2A</p>\n\n<p>&middot; Output: 5V/1A</p>\n\n<p>&middot; Materials: ABS+PC</p>', '<p>REMAX WIRELESS CHARGER ANDRIOD AND IOS RP-W10 -</p>', 7, '1* REMAX WIRELESS CHARGER ANDRIOD AND IOS RP-W10 -', '0.4', NULL, NULL, NULL, 689, 'REMAX WIRELESS CHARGER ANDRIOD AND IOS RP-W10', '1400', '950', 24, '2019-07-27', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'REMAX WIRELESS CHARGER ANDRIOD AND IOS RP-W10', 'REMAX WIRELESS CHARGER ANDRIOD AND IOS RP-W10', '2019-08-07', '12:39:49'),
(56, '72.255.40.171', 17, 1, 'Remax Wp-U60 USB Charger 2.4A 2 Port', 'remax-wp-u60-usb-charger-24a-2-port-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">USB Power Adapter</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Compact Size, Perfect For Traveling</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Input: AC 100V - 2&nbsp;&nbsp;40V, 50-60Hz</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Output: DC 5V, 2100 MA Max</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:9pt\"><span style=\"font-family:Helvetica,sans-serif\">2 X USB Charging Ports</span></span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Remax Wp-U60 USB Charger 2.4A 2 Port -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\">USB Mobile Phone Charger.&nbsp;Ideal Spare Charger For Your Phone.</span></span><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;Compatible With All Handsets And All Brands Having Micro USB Charging Ports.&nbsp;An Ideal Travel Companion.</span></span></span></span></span></p>', 7, '1* Remax Wp-U60 USB Charger 2.4A 2 Port', '0.3', NULL, NULL, NULL, 765, 'Remax Wp-U60 USB Charger 2.4A 2 Port', '550', '350', 24, '2019-07-27', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Wp-U60 USB Charger 2.4A 2 Port', 'Remax Wp-U60 USB Charger 2.4A 2 Port', '2019-08-07', '12:39:49'),
(57, '72.255.40.171', 17, 1, 'REMAX 3.5 AUX AUDIO CABLE RL-L100', 'remax-35-aux-audio-cable-rl-l100-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Connector Type: 3.5mm</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Connector Gender: Male</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Length: 2 Meter</span></span></span></li>\n</ul>', '<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">REMAX 3.5 AUX AUDIO CABLE RL-L100 -&nbsp;</span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Ideal For Connecting Portable Audio Devices, Such As An Smartphones, Tablets And MP3 Players, To A Car Stereo, Portable Speaker Or Any 3.5mm-Compatible Output. A Beveled Step-Down Design Allows Plugs To Be Fully Connected, Even When Bulky Cases Are On Your Device. Non-Toxic And Odorless; Has Past More Than 10000 Times Flexing Test.</span></span></span></p>', 7, '1* REMAX 3.5 AUX AUDIO CABLE RL-L100', '0.3', NULL, NULL, NULL, 765, 'REMAX 3.5 AUX AUDIO CABLE RL-L100', '500', '350', 24, '2019-07-27', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'REMAX 3.5 AUX AUDIO CABLE RL-L100', 'REMAX 3.5 AUX AUDIO CABLE RL-L100', '2019-08-07', '12:39:49'),
(58, '72.255.40.171', 17, 1, 'Remax Jewellery Micro USB Data Cable RC058m', 'remax-jewellery-micro-usb-data-cable-rc058m-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Remax Jewellery Micro USB Data Cable RC058m -&nbsp;</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Stylishly Designed Micro USB Data Cable Can Be Used As A Jewelry As Well As A Data Cable On The Go.</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Micro USB Data Cable</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Attractive Design</span></span></span></li>\n</ul>', '<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Remax Jewellery Micro USB Data Cable RC058m -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Stylishly Designed Micro USB Data Cable Can Be Used As A Jewelry As Well As A Data Cable On The Go.</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Micro USB Data Cable</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Attractive Design</span></span></span></p>', 7, '1* Remax Jewellery Micro USB Data Cable RC058m', '0.2', NULL, NULL, NULL, 689, 'Remax Jewellery Micro USB Data Cable RC058m', '650', '425', 24, '2019-07-27', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Jewellery Micro USB Data Cable RC058m', 'Remax Jewellery Micro USB Data Cable RC058m', '2019-08-07', '12:39:49');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(59, '72.255.40.171', 17, 1, 'REMAX MICRO USB CABLE RC 134M', 'remax-micro-usb-cable-rc-134m-shopker', '<ul>\n	<li style=\"margin-left: 1in; margin-right: 0in;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#333333\">Corrosion-Resistant Bare Copper Conductors</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#333333\">Gold Plated Connector</span></span></span></span></span></span></span></li>\n	<li style=\"margin-left: 1in; margin-right: 0in;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\">&nbsp;<span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#333333\">Foil &amp; Braid Shielding Provide Maximum Conductivity And Minimize Data Loss</span></span></span></span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\">USB 2.0 Standard High Speed Rate Up To 480 Mb/S</span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#333333\">Fully Compatible With PC And Mac</span></span></span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:#333333\">Supports Plug And Play, Supports 2.1A Fast Charging</span></span></span></span></span></span></span></p>', 7, '1x Remax Micro USB Cable', '0.2', NULL, NULL, NULL, 689, 'REMAX MICRO USB CABLE RC 134M', '175', '150', 24, '2019-07-27', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'REMAX MICRO USB CABLE RC 134M', 'REMAX MICRO USB CABLE RC 134M', '2019-08-07', '12:39:49'),
(60, '72.255.40.171', 17, 1, 'Doorbell Ip Wirless With Camera IOS And Andriod', 'doorbell-ip-wirless-with-camera-ios-and-andriod-shopker', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong>Specification</strong></span></span></span></p>\n\n<table cellspacing=\"0\" class=\"Table\" style=\"-webkit-text-size-adjust:auto; -webkit-text-stroke-width:0px; background-color:white; background-position:initial initial; background-repeat:initial initial; border-collapse:collapse; border:none; caret-color:#000000; color:#000000; font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif; font-size:12px; font-style:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; margin:0px; orphans:auto; overflow:scroll; padding:0px; table-layout:fixed; text-align:left; text-decoration:none; text-transform:none; white-space:normal; widows:auto; width:413.75pt; word-spacing:0px\">\n	<tbody>\n		<tr>\n			<td rowspan=\"4\" style=\"background-color:#f2f2f2; border-color:black; height:15.75pt; text-align:left; width:64.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Camera</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Solution:</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">OV9712&nbsp;CMOS&nbsp;Sensor&nbsp;+&nbsp;Hi3518E&nbsp;SoC</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Resolution:</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">720P&nbsp;(1280&times;720px)&nbsp;</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Field&nbsp;Of&nbsp;View:</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">166&deg;&nbsp;Wide&nbsp;Angle</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Night&nbsp;Vision:</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">6&nbsp;IR&nbsp;LEDs,&nbsp;5m&nbsp;(16ft)&nbsp;Night&nbsp;Vision</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"4\" style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:64.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Video</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Video&nbsp;Quality:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">HD&nbsp;720P&nbsp;@&nbsp;25FPS</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Scene&nbsp;Option:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">BLC,&nbsp;IR,&nbsp;HLC,&nbsp;Motion&nbsp;Compensation,&nbsp;WDR</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Motion&nbsp;Sensor:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Smart&nbsp;PIR&nbsp;Sensor&nbsp;(Sensitivity&nbsp;Editable)</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">D/N&nbsp;Mode:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Auto&nbsp;Switch&nbsp;By&nbsp;Light&nbsp;Sensor</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"4\" style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:64.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Audio</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Pickup&nbsp;Device:</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Internal&nbsp;Microphone</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Pickup&nbsp;Range</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">5&nbsp;Meter</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Audio&nbsp;Output:</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Speaker</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Type:</span></span></p>\n			</td>\n			<td style=\"background-color:#f2f2f2; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">2-Way&nbsp;Audio&nbsp;With&nbsp;Noice&nbsp;Cancellation</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"4\" style=\"background-color:#d9d9d9; height:12.65pt; text-align:left; width:64.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Connection</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#d9d9d9; height:12.65pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Network:</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#d9d9d9; height:12.65pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">2.4GHz&nbsp;WiFi&nbsp;(IEEE&nbsp;802.11&nbsp;B/G/N)</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\" style=\"background-color:#d9d9d9; height:12.65pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">OS&nbsp;Require:</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#d9d9d9; height:12.65pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">IOS&nbsp;(V7.0&nbsp;Or&nbsp;Newer)&nbsp;Or&nbsp;Android&nbsp;(V4.0&nbsp;Or&nbsp;Newer)</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"4\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:64.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Storage</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Photo/Video Storage:</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Support Phone/Video To Save On Smart Phone</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Storage&nbsp;Capacity:</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Max&nbsp;Support&nbsp;32GB&nbsp;TF-Card (Optional To Buy)</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; height:12.65pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"4\" style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:64.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">LED&nbsp;Indicator</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Red&nbsp;LED&nbsp;Blink:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Power&nbsp;OK,&nbsp;Waiting&nbsp;For&nbsp;WiFi&nbsp;Connection</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Blue&nbsp;&amp;&nbsp;Red&nbsp;Blink:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">WiFi&nbsp;Setting&nbsp;Succeed,&nbsp;Waitting&nbsp;For&nbsp;APP&nbsp;Connection</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Blue&nbsp;LED&nbsp;Blink:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Power&nbsp;&amp;&nbsp;Network&nbsp;OK,&nbsp;Device&nbsp;In&nbsp;Working&nbsp;Status</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">LED&nbsp;OFF:</span></span></p>\n			</td>\n			<td style=\"background-color:#d9d9d9; height:15.75pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">No&nbsp;Power&nbsp;/&nbsp;StandBy&nbsp;Mode</span></span></p>\n			</td>\n			<td style=\"background-color:white; height:15.75pt; text-align:left\">&nbsp;</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:64.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Power</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:83.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Power&nbsp;Type:</span></span></p>\n			</td>\n			<td rowspan=\"2\" style=\"background-color:#f2f2f2; height:12.65pt; text-align:left; width:266.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-family:inherit,serif\"><span style=\"color:black\">Rechargeable&nbsp;18650&nbsp;Battery&nbsp;Or&nbsp;Hardwire&nbsp;AC8V-24V</span></span></p>\n			</td>\n		</tr>\n	</tbody>\n</table>', '<p>WiFi Vedio Doorbell Connects To Network Via Wifi Router Or Network Cable. Mobile Devices Including Smartphones Or Tablets, Could Connect To The Doorbell. After The Visitor Rings, Mobile Devices Could Interact With Doorbell Via Real Time Video And Audio, Unlock, Take Photos, Take Videos, And Warning.&nbsp;P2P Cloud Service Could Push Messages&nbsp;Of Visitor Calling And Alarms. This Product Has Capabilities Of Anti-Removal Alarm, PIR , Infrared Night View.</p>', 7, '1 X WIFI Doorbell 1 X Bag Screws 1 X User Manual 1 X Wireless Doorbell Button', '1', NULL, NULL, NULL, 689, 'Doorbell Ip Wirless With Camera IOS And Andriod', '14000', '9999', 24, '2019-07-25', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Doorbell Ip Wirless With Camera IOS And Andriod', 'Doorbell Ip Wirless With Camera IOS And Andriod', '2019-08-07', '12:39:49'),
(61, '72.255.40.171', 17, 1, 'Ip Wirless V380 Bullet Camera Water Proof Night Vision  With Sd Slot Model 8110', 'ip-wirless-v380-bullet-camera-water-proof-night-vision--with-sd-slot-model-8110-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">High Quality 960p</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">1 Antenna</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Two-Way Audio Communication</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\">SD SLOT</li>\n</ul>', '<p>IP WIRLESS V380 BULLET CAMERA WATER PROOF NIGHT VISON WITH SD SLOT MODEL 8110 WITH POWR SUPPLY -&nbsp;<br />\nWaterproof Single Antenna With IP Wireless Camera Uses High Quality Glass Lens, Through Your Smart Phone, Clear Visual Observation, Anytime. The IP Camera With 1/2.5&#39;S Color CMOS Sensor And 1000K Pixel High Quality Lens Can Transmit Videos And Voice Browsers On The Internet Anywhere In The World. Once You Have Chosen It, You Will Be Surprised By Its Rich Functions And Richer Functions. At The Same Time, The Maximum Support 64GB TF Card, You Can Record What Happens In Your Life, Vivid And Faithful Forever. How To Use The Specification Sensor: 1/4, CMOS1.3 Megapixel, 960P Mainstream: HD960P-25f/S Extra Flow: D1 (1280 X 960) -25f/ Lens: 3.6mm Infrared: 3 Infrared Array Lights, Infrared: 10 Meters, Infrared Cutting Technology. Sensitivity: 0.5Lux@F1.2 (AGC ON). 2. Support 1 Channel Audio, 1 Microphones, And Support Up To 64G TF Memory Card. E-Mail Notification Support. 1In/1ra. Day And Night (ICR), 2dB, AWB, AGC, BLC, Motion Detection Protocols: IP, TCP, UDP, HTTP, HTTPS, SMTP, FTP, UDP, Etc. Wireless Fidelity: IEEE 802.11b/G/N. Remote Control Of The Network; Support The National Immunization Alliance. 12V-2A DC Power Supply</p>', 7, '1* IP Wireless Camera Waterproof Single Antenna', '1', NULL, NULL, NULL, 765, 'Ip Wirless V380 Bullet Camera Water Proof Night Vision  With Sd Slot Model 8110', '4500', '3900', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Ip Wirless V380 Bullet Camera Water Proof Night Vision  With Sd Slot Model 8110', 'Ip Wirless V380 Bullet Camera Water Proof Night Vision  With Sd Slot Model 8110', '2019-08-07', '12:39:49'),
(62, '72.255.40.171', 17, 1, 'DRONE TRACKER CAMERA HD 2MP JY018', 'drone-tracker-camera-hd-2mp-jy018-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Controller: Wifi App Control (Android / IOS)</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Channels: 4 Channels</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Camera: 720P</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Gyroscope: 6-Axis</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Function: Forward/Backward, Up/Down, Left/Right, Sideward Flight, Hovering, 3D-Flip,&nbsp;</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Headless Mode, High/Low Speed, FPV Image Transmission, Photo Taking And Video Recording, Altitude Hold, Trajectory Flight</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Remote Distance: About 70m</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Battery For Quadcopter: 3.7V 500mAh Li-Po Battery</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Battery Size: 72 * 20 * 18mm</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Charging Time: About 30 Minutes</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Working Time: About 6-8 Minutes</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Item Weight: 85g (Including Battery)</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Item Dimension: 200 * 175 * 35mm (Unfolded) / 145 * 65 * 35mm (Folded)</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">There Might Be Some Deviation Due To Manual Measurement.</span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">DRONE TRACKER CAMERA HD 2MP JY018 -&nbsp;</span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;&nbsp;</span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">This Quadcopter Is A Fantastic Foldable Quadcopter Which You Will Love It At First Sight.</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">It&#39;s Headless Mode, 3D-Flip And Altitude Hold Make Your Flight Easy And Fun.&nbsp;</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:13.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Besides That, The 720P Camera With Real-Time Transmission Can Capture Photos And Record Videos As You Wish.</span></span></span></span></span></span></p>', 7, '1 X JY018 Quadcopter 1 X 3.7V 500mAh Li-Po Battery 1 X USB Charging Cable 1 X Pouch Bag 1 X Screwdriver 4 X Spare Propeller 1 X English Manual', '0.5', NULL, NULL, NULL, 689, 'DRONE TRACKER CAMERA HD 2MP JY018', '6500', '4750', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'DRONE TRACKER CAMERA HD 2MP JY018', 'DRONE TRACKER CAMERA HD 2MP JY018', '2019-08-07', '12:39:49'),
(63, '72.255.40.171', 17, 1, 'IP Wireless Camera WIFI 1080p With Battery S06', 'ip-wireless-camera-wifi-1080p-with-battery-s06-shopker', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"-webkit-text-size-adjust:auto; -webkit-text-stroke-width:0px; background-position:initial initial; background-repeat:initial initial; border-collapse:collapse; border:1pt solid #cccccc; caret-color:#000000; color:#000000; font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif; font-size:12px; font-style:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; margin:0px; orphans:auto; overflow:scroll; padding:0px; table-layout:fixed; text-align:left; text-decoration:none; text-transform:none; white-space:normal; widows:auto; width:288.75pt; word-spacing:0px\">\n	<tbody>\n		<tr>\n			<td style=\"border-color:#cccccc; text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Pixel</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">5 Megapixel CMOS</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Resolution</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">1080P/720P/480P Selectable</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Video Format</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">AVI</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Frames</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">25</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">View Angle</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">90&deg;</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Distance Of Motion Detection Shooting</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">6 M Straight-Line Distance</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Minimum Illumination</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">1LUX</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Battery Capacity</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">280MA</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"height:26.05pt; text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Continuous Shooting Time</span></span></p>\n			</td>\n			<td style=\"height:26.05pt; text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">4H</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Compressed Format</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">H.264</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Sound Recording Range</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">5M2</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Type Of Memory Card</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">TF Card</span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:left; vertical-align:top; width:131.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">Maximum Capacity Of Memory Card</span></span></p>\n			</td>\n			<td style=\"text-align:left; vertical-align:top; width:157.5pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12pt\"><span style=\"font-family:Tahoma,sans-serif\">32GB</span></span></p>\n			</td>\n		</tr>\n	</tbody>\n</table>', '<p>IP Wireless Camera WIFI 1080p With Battery S06 -&nbsp;<br />\nHD (1080P 25FPS) Network Camera Monitoring Module, With External TF Card Memory Support. It Is A Multi-Functional High-Tech Product Which Integrating Functions Of Video Recording, Photographing, Motion Detection Alarm, And APP Real-Time Monitoring Etc. This Product Is Equipped With High-Capacity Battery; 5 Million-Pixel High-Definition Video; It Supports Up To 32GB TF Card; Long-Time Work And APP Operation, Which Makes It More Convenient. Moreover, It Works As The Best Anti-Theft And Evidence-Gathering Tool With Strong Concealment.</p>', 7, 'Camera *1 Manual *1 USB Line *1 Disk *1 Battery (4000mah)*1', '0.5', NULL, NULL, NULL, 689, 'Hidden WiFi Wall Clock 1080p', '5000', '3450', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'IP Wireless Camera WIFI 1080p With Battery S06', 'IP Wireless Camera WIFI 1080p With Battery S06', '2019-08-07', '12:39:49'),
(64, '72.255.40.171', 17, 1, 'Hidden WiFi Wall Clock 1080p', 'hidden-wifi-wall-clock-1080p-shopker', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\">&nbsp;</p>\n\n<ul>\n	<li style=\"display: block; width: 0px; height: 0px; padding: 0px; border: 0px; margin: 0px; position: absolute; top: 0px; left: -9999px; opacity: 0; overflow: hidden;\">&nbsp;</li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Video Format: AVI&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Photo Format: JPG&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Video Resolution: 1980 X 1080</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Audio: WAV</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Wireless Distance: &lt;50m Memory: Support External Micro-SD/TF Card(Not Include)&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Power Source: DC 5V / 300~500mA&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Support Opreating System: Android, IOS Smart Phone Wifi Connection&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Operating Temperature: 0 ~ 60 Degree C&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">Storage Temperature: - 20 ~ 80 Degree C&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10pt\"><span style=\"font-family:Verdana,sans-serif\">OS Supported: Windows XP, 2000, Vista, Win 7</span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Capable Of Recording Full HD 1080p Videos</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:9pt\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"color:#111111\">ANDROID AND APPLE IOS COMPATIBLE:&nbsp;Can Be Viewed Remotely On Both Apple And Android Smartphones And Tablets.</span></span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:9pt\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"color:#111111\">WIRELESS CAMERA:&nbsp;Use Your Smartphone Or Tablet To Remotely Access This Spy Clock From Anywhere With WiFi.</span></span></span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:9pt\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"color:#111111\">SPY CAMERA AND MICROPHONE:&nbsp;This Discreet Surveillance Device Contains A Camera And Microphone Allowing You To See And Hear The Device&#39;s Surroundings Making It The Complete Spy Clock Camera.</span></span></span></span></span></span></li>\n	<li style=\"display: block; width: 0px; height: 0px; padding: 0px; border: 0px; margin: 0px; position: absolute; top: 0px; left: -9999px; opacity: 0; overflow: hidden;\">&nbsp;</li>\n</ul>', '<p>Wall Clock Camera White Is A HD Digital Camera. It Features Wi-Fi And Remote Control Functions Through A Free IOS And Android App. With TF Card, This Digital Camera Could Shoot HD Pictures And Videos. It Is A Perfect Combination Of An Undetectable Wall Clock And A Practical Surveillance Gadget. As A Wall Clock, It Has The Feature Of Keeping Accurate Time. With Meticulous Design, This Digital Camera Is Small And Lightweight That It Is Very Easy To Carry And Use. As A Surveillance Device, It Can Be Set Up In Your Home, Office Or Shop To Monitor What Is Going On. It Is A Covert Way To Keep An Eye On The Place For A Long Time. This Wall Clock Camera Is The</p>', 7, '1 X WiFi Wall Clock 1 X Charging Adapter 1 X Charging Cable 1 X User Manual', '0.5', NULL, NULL, NULL, 689, 'Hidden WiFi Wall Clock 1080p', '7500', '6500', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', 'Https://Youtu.be/2uEoptbc0sA', 'Hidden WiFi Wall Clock 1080p', 'Hidden WiFi Wall Clock 1080p', '2019-08-07', '12:39:49');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(65, '72.255.40.171', 17, 1, 'Hidden WiFi Table Clock T3', 'hidden-wifi-table-clock-t3-shopker', '<ul style=\"list-style-type:disc; margin-left:0px; margin-right:0px\">\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">Format: MP4,JPG</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">Power: 2A Adapter And Built-In Li-Battery:2200mAHh</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">PC And Mobile WIFI Video: 1080p</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">Night Vision</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">160 Degree Angle</span></span></li>\n</ul>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><strong>Key Features</strong></span></span></span></p>\n\n<ul style=\"list-style-type:disc; margin-left:0px; margin-right:0px\">\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">Record What&rsquo;s Happening While You&rsquo;re Away</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">HD Real Time Video You Can See From Anywhere!</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">VERY DISCRETE: Full Clock Functions. No One Will Suspect It&rsquo;s A Camera!</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">SPY CAMERA:&nbsp;Record Everything, Up To 32GB Of Hi-Res Video With Audio.</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">WIFI CAMERA: Connects To Your WiFi And Broadcasts In Real Time Everything That Happens In HD Video And Audio</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">MOTION DETECTOR: Records Only When Something Moves, Saving Its Battery And Memory</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">VIDEO RECORDING: Support Recording And Charging At The Same Time In&nbsp;1080p HD Video</span></span></li>\n	<li><span style=\"font-size:10.5pt\"><span style=\"font-family:Verdana,sans-serif\">FREE APP: View &amp; Control Up To 9 Cameras. Available For PC, IOS And Android</span></span></li>\n</ul>', '<p><strong>Wifi Digital Spy Clock Camera With Night Vision. 1080p Surveillance Pinhole Cam Camcorder</strong><strong>.&nbsp;</strong>Connectable With A Free App To Watch Real-Time Video Just Like An IP Wireless Camera. Full HD Recording With A Wide Angle Of 160 Degrees.</p>', 7, '1 X HD Wifi Clock Camera 1 X Charging Cable 1 X Drivers CD 1 X Manual', '0.3', NULL, NULL, NULL, 689, 'Hidden WiFi Table Clock T3', '5200', '3999', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', 'Https://Youtu.be/_DOkVUOU4Pk', 'Hidden WiFi Table Clock T3', 'Hidden WiFi Table Clock T3', '2019-08-07', '12:39:49'),
(66, '72.255.40.171', 17, 1, 'Hidden Table Clock Camera With Remote', 'hidden-table-clock-camera-with-remote-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Type: Alarm Clock With Hidden Camera</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Main Color: Silver</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Pixel: 2.0 Mega Pixel</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Camera Resolution: 640 X 480, Photo: 1280x960</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Video Format: AVI</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Frame Number: 30fps</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Vision Angle: 72&deg;</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Minimal Illumination: 1LUX</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Support TF Card, Up To 32GB (Not Included)</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Player Software: Media Player/KM Player</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">USB Interface: USB1.1/2.0</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Operating System: For Win 2000/XP/Vista32</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Charging Time: About 4 Hours</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Battery Capacity: 2200mA</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Recording Scope: 40&nbsp;&Atilde;&Aring;&frac12;&iexcl;</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Continuous Recording Time: Over 12 Hours</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Remote Operating Distance: 15m</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Power Consumption: 130mA / 3.7V</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Storage Temperature: -20&deg;C&tilde;80&deg;C</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Working Temperature: -10&deg;C&tilde;60&deg;C</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Working Humidity: 15&tilde;85% RH</span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Size(L X W X H): 104mm X 30mm X 59mm/4.09&quot; X 1.18&quot; X 2.32&quot; (Approx.)</span></span></span></li>\n</ul>', '<p>Hidden Table Clock Camera With Remote -&nbsp;Smallest Mini Alarm Clock With Powerful Functions.This All-In-One Alarm Clock Hidden Camera With DVR, Lets You Keep Track Of What&#39;s Going On In Your Home Or Office Without Raising Any Suspicions. The Device&#39;s Built-In Pinhole Surveillance Camera And DVR Are Cleverly Hidden Inside The Alarm Clock&#39;s Body, Making It The Ultimate All-In-One Digital Video Recording System Online.</p>', 7, '1x Multi-Function Alarm Clock With Hidden Camera (With 2200mah Built-In Lithium Battery) 1x Remote Control (With 1 Pc CR2025 Button Battery) 1x USB Charging Cable 1x CD Disk 1x English User Manual', '0.3', NULL, NULL, NULL, 689, 'Hidden Table Clock Camera With Remote', '3200', '1999', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', 'https://youtu.be/UV_vJsRcwQ8', 'Hidden Table Clock Camera With Remote', 'Hidden Table Clock Camera With Remote', '2019-08-07', '12:39:49'),
(67, '72.255.40.171', 17, 1, 'SQ12 WIDE ANGLE WATERPROOF MINI CAMERA 1080P HD', 'sq12-wide-angle-waterproof-mini-camera-1080p-hd-shopker', '<ul>\n	<li>Size: 245*245*255mm</li>\n	<li>Video Format: AVI</li>\n	<li>Video Coding: M-IPEG</li>\n	<li>Video Resolution: 1920*1080P 1280*720P</li>\n	<li>Video Frame Rate: 30fps</li>\n	<li>Image Ratio: 16:9</li>\n	<li>Image Format: JPG</li>\n	<li>Motion Detection: Yes</li>\n	<li>TV OUT: Yes</li>\n	<li>Battery Capacity: Built-In 200mAh Lithium</li>\n	<li>Working Hours: Up To 80 Minutes</li>\n	<li>Support: Up To 32G TF Card (Not Included)</li>\n	<li>Transmission Speed: Hight-Speed USB2.0</li>\n	<li>Interface Type: Mini 8pin USB</li>\n	<li>Compatible System: Windows Me/2000/XP/2003/Vista/Mac Os. Linux<br />\n	&nbsp;</li>\n</ul>', '<p>The SQ12 Mini Camera Is A Mini 1080P Full HD DVR Camera Recorder. With Its Maximum 30 Meters&rsquo; Waterproof Ability, You Can Make Perfect Video Underwater Too. Let Along Its Powerful Night Version Ability Which Allows You To Get The Clear Video Even At Night. Also, The SQ12 Supports Up To 32G TF Card (Not Included) So You Don&#39;t Have To Worry About The Storage Issues.</p>', 7, '1 X SQ12 1 X Clamp 1 X Base Bracket 1 X Waterproof Shell Body 1 X Waterproof Shell Base Support 1 X Waterproof Back Clamp 1 X Waterproof Shell Strap Buckle', '0.3', NULL, NULL, NULL, 689, 'SQ12 WIDE ANGLE', '2900', '1999', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'SQ12 WIDE ANGLE WATERPROOF MINI CAMERA 1080P HD', 'SQ12 WIDE ANGLE WATERPROOF MINI CAMERA 1080P HD', '2019-08-07', '12:39:49'),
(68, '72.255.40.171', 17, 1, 'Hidden Mini Camera Sq8 Night Vision', 'hidden-mini-camera-sq8-night-vision-shopker', '<ul>\n	<li>Video Format: AVI</li>\n	<li>Video Coding: M-JPEG</li>\n	<li>Video Resolution Ratio: 1280 * 720P&nbsp; 1920 * 1080P</li>\n	<li>Video Frame Rate: 30 Fps</li>\n	<li>Player Software: Operating System Or Bring The Mainstream Video Player Software</li>\n	<li>Picture Format: JPG</li>\n	<li>Image Proportion: 4:3</li>\n	<li>Support System: Windows Me/2000/Xp/2003/Vista; Mac Os; Linux;</li>\n	<li>Battery Capacity: 200mAh</li>\n	<li>Working Time: About 100 Minutes</li>\n	<li>&nbsp;Charging Voltage:DC-5V</li>\n	<li>Interface Type: Mini 8Pin USB</li>\n	<li>&nbsp;Storage Support: TF Card(Card Is Not Include)</li>\n	<li>&nbsp;Battery Type: High Capacity Polymer Lithium Electricity</li>\n</ul>', '<p>High-Definition Images FULL HD1080P DV DC<br />\nCompact Design, Portable Handheld DV DC<br />\nUnder Low Illumination, Hd Video Recording Can Be Performed<br />\nVideo Format For: 1280X720P<br />\nVideo Format For: 1920X1080P<br />\nMode For Taking Pictures: 12MP(4032X3024)<br />\nMotion Detecting Video: 720P And 1080P<br />\nUSB 2.0 Interface Of High Speed Transmission<br />\nBiggest Can Support 32 Gb T - Flash CARDS<br />\nSupport TV OUT TV Monitor Video Connection<br />\nBuilt-In Lithium Battery Sustainable Camera Up To 100 Minutes</p>', 7, '1 X Mini Camcorder SQ8 1 X USB Cable 1 X User Manual 1 X Stent', '0.3', NULL, NULL, NULL, 689, 'Hidden Mini Camera Sq8 Night Vision', '1950', '1375', 24, '2019-07-25', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', 'Https://Youtu.be/NWHSn7PYShg', 'Hidden Mini Camera Sq8 Night Vision', 'Hidden Mini Camera Sq8 Night Vision', '2019-08-07', '12:39:50'),
(69, '72.255.40.171', 17, 1, 'IP WIRLESS 3D TRACKING MINI CAMERA Y4C-ZA 2MP HD 1080P', 'ip-wirless-3d-tracking-mini-camera-y4c-za-2mp-hd-1080p-shopker', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"-webkit-text-size-adjust:auto; -webkit-text-stroke-width:0px; background-color:white; background-position:initial initial; background-repeat:initial initial; border-collapse:collapse; border:1px solid #cccccc; caret-color:#000000; color:#000000; font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif; font-size:12px; font-style:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; margin:0px; orphans:auto; overflow:scroll; padding:0px; table-layout:fixed; text-align:left; text-decoration:none; text-transform:none; white-space:normal; widows:auto; width:444.5px; word-spacing:0px\">\n	<tbody>\n		<tr>\n			<td rowspan=\"2\" style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Camera</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Main Processor</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">T20N</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Operation System</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Embedded LINUX OS System</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"9\" style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Video</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Image Sensor</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">1.0MP</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:black\">&atilde;&euro;&Acirc;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">1.3MP</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:black\">&atilde;&euro;&Acirc;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">2.0MP CMOS</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Video Compression</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">H.264</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Video System</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">PAL</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:black\">&atilde;&euro;&Acirc;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">NTSC</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">&nbsp;Display Resolution</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">1280*720/640*480/320*180</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Video Resolution</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">1080p</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Motion Detection</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Yes</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Low Illumination</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">0.1LUX/F1.2</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Picture Capture</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">&nbsp;Yes</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Video Flip</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Yes</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"3\" style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Audio</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Audio Coding Standard</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Amr</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Audio Input</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">YES</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Audio Output</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">YES</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"3\" style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Record Management</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">&nbsp;Record Mode</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Manual Record, Motion Detection Record, Scheduled Record, Alarm Record,</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Video Storage</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">TF Card</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Playback, Back Up</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Yes</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"2\" style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Alarm</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Alarm Input</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">/</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Motion Detection</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Video Push</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:black\">&atilde;&euro;&Acirc;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Alarm Recording</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:black\">&atilde;&euro;&Acirc;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Screen Shot Capture ,Sending Email</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td rowspan=\"4\" style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.05pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Network</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Wired Network Interface</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">1*RJ45 , 10/100M10-100 Base-T, &nbsp;Self-Adaptable Ethernet Port</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">WIFI</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">802.11b/G/N</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Stream</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Three Stream</span></span></span></p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:64.2pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Network Protocol</span></span></span></p>\n			</td>\n			<td style=\"background-color:white; border-color:#cccccc; text-align:left; width:62.35pt\">\n			<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">Support TCP/IP</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:black\">&atilde;&euro;&Acirc;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">RTSP</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;MS Gothic&quot;\"><span style=\"color:black\">&atilde;&euro;&Acirc;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\"><span style=\"color:black\">ONVIF, Etc</span></span></span></p>\n			</td>\n		</tr>\n	</tbody>\n</table>', '<p>Smart Dual Talking, Smart Colorful Video At Night, AP Functions.&nbsp;H.264 Main Profile Compression Algorithm, Live Real-Time Display And HD Resolution Recording.&nbsp;It Has &nbsp;Motion Auto Tracking Technology, It Is Like PTZ ,You Can Setting Protection Area,When Some One Get In This Place ,It Will Warning You And Following That Guys,After He Get Out Of This Place 10 Seconds ,It Will Back To The Protection Area Keep Second Round Protection.&nbsp;1080p@25FPS Real-Time Live Video Transmission &nbsp;, Self-Adaptable Ethernet, Fluency And Smoothly.&nbsp;Echo Elimination And Noise Reduction Technology, Perfect Dual-Duplex Audio Effect.&nbsp;YCC365 Smart Cloud &nbsp;Technology , One-Step Remotely Connection, Plug And Play.&nbsp;Pioneering Technology , One Key For WIFI Setting, One-Step Connecting Internet, &nbsp;&nbsp;</p>', 0, '1 X Camera 1 X Mount 1 X Power Adapter', '0.5', NULL, NULL, NULL, 765, 'IP WIRLESS 3D TRACKING MINI CAMERA Y4C-ZA 2MP', '4500', '3400', 24, '2019-07-23', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, '1 X Camera\n1 X Mount\n1 X Power Adapter', '1 X Camera\n1 X Mount\n1 X Power Adapter', '2019-08-07', '12:39:50'),
(70, '72.255.40.171', 17, 1, 'IP Wireless Camera 360 With 2 Antenna', 'ip-wireless-camera-360-with-2-antenna-shopker', '<ul>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Sensor: 1/4 &quot;CMOS 1.0 Megapixel</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Resolution: 960P</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Main Stream: HD 960P - 25f / S</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Extra Stream: D1 (704 X 576) - 25f / S</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Lens: 3.6mm / 6mm</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;.</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Infrared: 11 IR Led &ETH;&curren; 5mm.&nbsp;Infrared: 10m, IR Cut Technology.</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Sensitivity: 0.5Lux@F1.2 (AGC ON).</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">355 Degrees Horizontal Rotation - 90 Degrees Vertical Rotation, 8 Direction Control</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">.</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Supports&nbsp;2-Way&nbsp;</span></span><a href=\"http://www.vatgia.com/342/am-thanh.html\" style=\"margin:0px; padding:0px; color:#000000; text-decoration:none; outline:none\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Audio</span></span></a><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;, 1&nbsp;</span></span><a href=\"http://www.vatgia.com/4746/microphone.html\" style=\"margin:0px; padding:0px; color:#000000; text-decoration:none; outline:none\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Microphone</span></span></a><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;, 1 3.5mm Jack</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Supports&nbsp;Up To 32G SD&nbsp;</span></span><a href=\"http://www.vatgia.com/417/the-nho.html\" style=\"margin:0px; padding:0px; color:#000000; text-decoration:none; outline:none\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Memory</span></span></a><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;Card</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Email Notification Alerts Support.&nbsp;1 In / 1ra.</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Day / Night (ICR), 2dB, AWB, AGC, BLC, Motion Detection</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Connectivity: RJ-45 (10 / 100Base-T). Protocol: IP, TCP, UDP, HTTP, HTTPS, SMTP, FTP, DHCP, UPnP, RTS, WPS.&nbsp;</span></span><a href=\"http://www.vatgia.com/1477/access-point-wifi.html\" style=\"margin:0px; padding:0px; color:#000000; text-decoration:none; outline:none\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">WIFI</span></span></a><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;: IEEE 802.11b / G / N.</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Remote Control Over The Network.&nbsp;Support ONVIF.</span></span></span></span></span></li>\n	<li style=\"margin-left: 0in; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">DC Power Supply 5V-2A</span></span></span></span></span></li>\n</ul>', '<p>&nbsp;IP Wireless Camera 360 With 2 Antenna -&nbsp;<br />\nOur IP Camera Are Using High Quality Glass Lens, Clear Vision Viewing Through Your Smartphone Anyway Any Time. This IP Camera With 1/2.5&quot; Color CMOS Sensor And 1,000k Pixels High-Quality Lens Can Send Live Video &amp; Sound Through The Internet To A Web Browser Anywhere In The World. Once You Choose It, You Will Be Amazed At Its Abundant Features And Richer Functionality. Meanwhile It Maximum Supports 32GB TF Card, You Can Record What Happened In Your Life Faithfully, Vividly And Permanently.</p>', 7, 'IP Wireless Camera 360 With 2 Antenna', '0.5', NULL, NULL, NULL, 765, 'IP Wireless Camera 360 With 2 Antenna', '3500', '2900', 24, '2019-07-23', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', 'Https://Www.youtube.com/Watch?V=3y10vEnwfmY', 'IP Wireless Camera 360 With 2 Antenna', 'IP Wireless Camera 360 With 2 Antenna', '2019-08-07', '12:39:50'),
(71, '72.255.40.171', 17, 1, 'IP WIRELSS PANORAMIC BULB CAMERA 960P HD', 'ip-wirelss-panoramic-bulb-camera-960p-hd-shopker', '<ul>\n	<li>360-Degree Panoramic View, Monitoring No Dead Ends, Large Viewing Area.</li>\n	<li>Two-Way Voice Intercom, Built-In Microphone, And Baby O Distance Interaction.</li>\n	<li>Mobile Phone Will Be Able To Remotely Monitor, Anytime, Anywhere Want To See.</li>\n	<li>Abnormal Alarm Push Function, When An Exception Occurs, The Mail Push.</li>\n	<li>Night To Provide Lighting, Can Adjust The Brightness Through The APP, Timer Switch Machine.</li>\n	<li>Resolution: 1.3MP</li>\n	<li>Processor: XM510</li>\n	<li>Sensor: H65</li>\n	<li>Max. Image Size: 1280 X 960</li>\n	<li>Lens: Fisheye Lens</li>\n	<li>Storage Interface: TF Card Slot Max.128G(Not Included)</li>\n	<li>Work Voltage: AC 100 - 240V 50 - 60Hz</li>\n	<li>Power: &le; 6W</li>\n	<li>Package Weight: 250 G / 8.82 Ounces</li>\n</ul>', '<p style=\"margin-left:4.5pt; margin-right:0in; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"color:#111111\">SUPER WIDE VIEW ANGLE: 360-Degree Panoramic View Angle With 1/3&#39;&#39; Fisheye Lens, No Blind Area, See The Entire Room In Stunning HD Video Quality During The Day Or At Night (With Night Vision). HD Video Format: 1280&times;1024(1.3MP) Resolution With Genuine Color By H.264 Compression Format.</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:4.5pt; margin-right:0in; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"color:#111111\">MOTION DETECTION: Get Informed About Every Movement In Your House Via E-Mail, FTP Or Store The Alerts On Micro SD. The Motion Detection Sensors &#39;Feel&#39; It When Something Is Moving In The Room And Will Let You Know Immediately. Perfect For Surveillance</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:4.5pt; margin-right:0in; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"color:#111111\">&nbsp;NIGHT VISION AND TWO-WAY AUDIO: Night Vision Up To 16-Feet - Never Miss A Moment, Day Or Night, With Visibility Up To 16 Feet In Complete Darkness. Communicate With Family, Friends And Your Pets On Mobile Devices. Talk To Camera Or Listen To Camera, There Is No Distance To Communicate With Anyone.</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:4.5pt; margin-right:0in; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"color:#111111\">&nbsp;SIMPLE AND EASY MOBILE Wi-Fi SETUP: Quick Wi-Fi Setup Via IOS Or Android Smartphone Using Supplied APP. Remote Access To The Camera On Smartphone Via IOS Or Android Smartphone Using Supplied App.</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:4.5pt; margin-right:0in; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"background-color:white\"><span style=\"font-size:10pt\"><span style=\"color:#111111\">&nbsp;ADVANCED VIDEO RECORDING: Record, Store And Review Footage Using A Micro SD Card (Up To 128G) And Manage Directly From Your Mobile Device. Alert Pictures Will Be Stored On The SD Card, And You Can Playback The Videos On Your Phone.</span></span></span></span></span></span></p>', 0, '1 X Bulb Camera ·       1 X Light Bulb Base ·       7 X Mounting Accessories ·       1 X Manual', '0.5', NULL, NULL, NULL, 765, 'IP WIRELSS PANORAMIC BULB CAMERA 960P HD', '3800', '2775', 24, '2019-07-23', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'IP WIRELSS PANORAMIC BULB CAMERA 960P HD', 'IP WIRELSS PANORAMIC BULB CAMERA 960P HD', '2019-08-07', '12:39:50');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(72, '72.255.40.171', 17, 1, 'IP WIRELSS PANORAMIC FISH CAMERA V380', 'ip-wirelss-panoramic-fish-camera-v380-shopker', '<table border=\"1\" cellspacing=\"0\" class=\"Table\" style=\"-webkit-text-size-adjust:auto; -webkit-text-stroke-width:0px; background-position:initial initial; background-repeat:initial initial; border-collapse:collapse; border:1px solid #cccccc; caret-color:#000000; color:#000000; font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif; font-size:12px; font-style:normal; font-variant-caps:normal; font-weight:normal; letter-spacing:normal; margin:0px; orphans:auto; overflow:scroll; padding:0px; table-layout:fixed; text-align:left; text-decoration:none; text-transform:none; white-space:normal; widows:auto; width:440.8pt; word-spacing:0px\">\n	<tbody>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;Sensor</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp; 1/3&Prime; Progressive Scan</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Lens&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp; 360&deg; Panorama Fisheye&nbsp;Lens</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"background-color:#d8d8d8; border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Angle&nbsp;</p>\n			</td>\n			<td style=\"background-color:#d8d8d8; border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Horizontal 360&deg;</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;<span style=\"font-family:Arial,sans-serif\">Resolution</span></p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp; 1280*960P (1.3MP)</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:35.1pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Video Compression Standard&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:35.1pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;H.264</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Video Frame &nbsp;Rate</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Max 25 Fps&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Aduio Input / Output&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Input Built In Microphone; Output Built In Horn</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;IR Night Vision&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;IR LEDs,IR Distance 10m, (Optional IR-CUT Automatic Switching)</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Storage&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp; TF/SD Card , Max Support 64GB</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Wifi</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;IEEE 802.11b/G/N</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Image Rotation</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Mirror / Inverted</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Motion Detection&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Supported</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;APP</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;V380</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;System Interface&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;1pc Micro USB Interface , 1pc TF(Micro SD) Card Interface</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Power&nbsp;</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;5V 1.6A</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:104.55pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;Power Consumption</p>\n			</td>\n			<td style=\"border-color:#cccccc; height:21.5pt; text-align:left; width:336.25pt\">\n			<p style=\"margin-left:0px; margin-right:0px\">&nbsp;&nbsp;&lt;5W</p>\n			</td>\n		</tr>\n	</tbody>\n</table>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">IP WIRELSS PANORAMIC FISH CAMERA V380 -&nbsp;</span></span></span><br />\n<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\">Full Glass Fisheye Lens F2.0 1.44mm, 1/3&rsquo;&rsquo;&nbsp;CMOS Sensor, Full And Clear View. Easy To Access Via Mobile, PC, IPad Etc. Multi-Platform Watch And Remote Control.</span></span><strong>&nbsp;</strong><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\">Max 64G TF Card Storage, Also Support Cloud Storage, Video Does Not Account For Cell Phone Memory.</span></span><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;Support Roof Mounted (360&deg; Panoramic Coverage) And Wall Mounted (180&deg; Panoramic Coverage) Two Installation Modes.Two-Way Voice Intercom, Microphone And Speaker Built-In, Smooth Communication.</span></span></span></span></span></p>\n\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:9pt\"><span style=\"font-family:Arial,sans-serif\">&nbsp;Same Monitoring Effect Both In The Day And Night. Free Switching Of 5 Viewing Modes.</span></span></span></span></span></p>', 7, '1x Wireless IP Panoramic Camera 1x Power Adapter 1x Screws', '0.5', NULL, NULL, NULL, 765, 'IP WIRELSS PANORAMIC FISH CAMERA V380', '4200', '2999', 24, '2019-07-23', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'IP WIRELSS PANORAMIC FISH CAMERA V380', 'IP WIRELSS PANORAMIC FISH CAMERA V380', '2019-08-07', '12:39:50'),
(73, '72.255.40.171', 17, 1, 'Doorbell IP Wireless With Camera IOS And Andriod', 'doorbell-ip-wireless-with-camera-ios-and-andriod-shopker', '<p></p><p>Camera</p><p>Solution:</p><p>OV9712 CMOS Sensor + Hi3518E SoC</p>&nbsp;<p>Resolution:</p><p>720P (1280×720px) </p>&nbsp;<p>Field Of View:</p><p>166° Wide Angle</p>&nbsp;<p>Night Vision:</p><p>6 IR LEDs, 5m (16ft) Night Vision</p>&nbsp;<p>Video</p><p>Video Quality:</p><p>HD 720P @ 25FPS</p>&nbsp;<p>Scene Option:</p><p>BLC, IR, HLC, Motion Compensation, WDR</p>&nbsp;<p>Motion Sensor:</p><p>Smart PIR Sensor (Sensitivity Editable)</p>&nbsp;<p>D/N Mode:</p><p>Auto Switch By Light Sensor</p>&nbsp;<p>Audio</p><p>Pickup Device:</p><p>Internal Microphone</p>&nbsp;<p>Pickup Range</p><p>5 Meter</p>&nbsp;<p>Audio Output:</p><p>Speaker</p>&nbsp;<p>Type:</p><p>2-Way Audio With Noice Cancellation</p>&nbsp;<p>Connection</p><p>Network:</p><p>2.4GHz WiFi (IEEE 802.11 B/G/N)</p>&nbsp; <p>OS Require:</p><p>IOS (V7.0 Or Newer) Or Android (V4.0 Or Newer)</p>&nbsp; <p>Storage</p><p>Photo/Video Storage:</p><p>Support Phone/Video To Save On Smart Phone</p>&nbsp; <p>Storage Capacity:</p><p>Max Support 32GB TF-Card (Optional To Buy)</p>&nbsp; <p>LED Indicator</p><p>Red LED Blink:</p><p>Power OK, Waiting For WiFi Connection</p>&nbsp;<p>Blue &amp; Red Blink:</p><p>WiFi Setting Succeed, Waitting For APP Connection</p>&nbsp;<p>Blue LED Blink:</p><p>Power &amp; Network OK, Device In Working Status</p>&nbsp;<p>LED OFF:</p><p>No Power / StandBy Mode</p>&nbsp;<p>Power</p><p>Power Type:</p><p>Rechargeable 18650 Battery Or Hardwire AC8V-24V</p><br><p></p>', '<p></p><p>&nbsp;Doorbell IP Wireless With Camera Ios And Andriod -<br>WiFi Video Doorbell Connects To Network Via Wifi Router Or Network Cable. Mobile Devices Including Smartphones Or Tablets, Could Connect To The Doorbell. After The Visitor Rings, Mobile Devices Could Interact With Doorbell Via Real Time Video And Audio, Unlock, Take Photos, Take Videos, And Warning. P2P Cloud Service Could Push Messages Of Visitor Calling And Alarms. This Product Has Capabilities Of Anti-Removal Alarm, PIR , Infrared Night View.</p><br><br><p></p>', 7, '1 X WIFI Doorbell 1 X Bag Screws 1 X User Manual 1 X Wireless Doorbell Button', '1', NULL, NULL, NULL, 689, 'Doorbell IP Wireless With Camera IOS And Andriod', '14000', '9999', 24, '2019-07-23', '2019-12-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Doorbell IP Wireless With Camera IOS And Andriod', 'Doorbell IP Wireless With Camera IOS And Andriod', '2019-08-07', '12:39:50'),
(74, '72.255.40.171', 17, 1, 'IP WIRLESS V380 BULLET CAMERA WATER PROOF NIGHT VISON', 'ip-wirless-v380-bullet-camera-water-proof-night-vison-shopker', '<p></p><p></p><ul><li>High Quality 960p</li><li>1 Antenna</li><li>Two-Way Audio Communication</li><li>SD Card SLOT&nbsp;</li><li>MODEL 8110 WITH POWR SUPPLY</li></ul><br><br><p></p><br><p></p>', '<p></p><p>IP WIRLESS V380 BULLET CAMERA WATER PROOF NIGHT VISON WITH SD SLOT MODEL 8110 WITH POWR SUPPLY - </p><p>Detail: &nbsp;Waterproof Single Antenna With IP Wireless Camera Uses High Quality Glass Lens, Through Your Smart Phone, Clear Visual Observation, Anytime. The IP Camera With 1/2.5\'S Color CMOS Sensor And 1000K Pixel High Quality Lens Can Transmit Videos And Voice Browsers On The Internet Anywhere In The World. Once You Have Chosen It, You Will Be Surprised By Its Rich Functions And Richer Functions. At The Same Time, The Maximum Support 64GB TF Card, You Can Record What Happens In Your Life, Vivid And Faithful Forever. How To Use The Specification Sensor: 1/4, CMOS1.3 Megapixel, 960P Mainstream: HD960P-25f/S Extra Flow: D1 (1280 X 960) -25f/ Lens: 3.6mm Infrared: 3 Infrared Array Lights, Infrared: 10 Meters, Infrared Cutting Technology. Sensitivity: 0.5Lux@F1.2 (AGC ON). 2. Support 1 Channel Audio, 1 Microphones, And Support Up To 64G TF Memory Card. E-Mail Notification Support. 1In/1ra. Day And Night (ICR), 2dB, AWB, AGC, BLC, Motion Detection Protocols: IP, TCP, UDP, HTTP, HTTPS, SMTP, FTP, UDP, Etc. Wireless Fidelity: IEEE 802.11b/G/N. Remote Control Of The Network; Support The National Immunization Alliance. 12V-2A DC Power Supply</p><br><p></p>', 7, '1X IP Wireless Camera Waterproof Single Antenna', '0.5', NULL, NULL, NULL, 765, 'IP WIRLESS V380 BULLET CAMERA WATER PROOF', '4500', '3650', 24, '2019-07-23', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'IP WIRLESS V380 BULLET CAMERA WATER PROOF', 'IP WIRLESS V380 BULLET CAMERA WATER PROOF', '2019-08-07', '12:39:50'),
(75, '72.255.40.171', 17, 1, 'ACTION SPORTS CAMERA WIFI 4K 1080P HD', 'action-sports-camera-wifi-4k-1080p-hd-shopker', '<p></p><p></p><ul><li>Video: 4K 25fps/2.7K 30fps</li><li>1080p 60/30 Fps (H.264)</li><li>720p 120/60 Fps (H.264)</li><li>Battery:1050MAh &nbsp;</li><li>Super Wide Angle Lens:170 Degree</li><li>Waterproof: Up To 30m</li><li>Wi-Fi:802.11b/G/N</li><li>2-Inch LCD</li></ul><p></p><br><p></p>', '<p></p><p>&nbsp;A Water-Resistant Casing That Allows You To Film Fascinating Water Sports &amp; Water-Resistant Up To 30 Meters Under Water.</p><p>· &nbsp; &nbsp; &nbsp; &nbsp; High Definition Screen That Displays And Replays Fascinating Videos Recorded &nbsp;</p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Detachable Battery That Is Easy To Replace And Prolongs Your Camera\'s Service Life &nbsp;</p><p>· &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Video Recording While Charging </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Video Recording With Battery &nbsp;</p><p>· &nbsp; &nbsp; &nbsp; &nbsp; 12-Megapixel HD Wide-Angle Lens </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; HDMI HD Output </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Support Storage Cards Up To 64GB Maximum </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Multiple Video Recording Formats: 4K 1080P 720P WVGA </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Recorded In MOV Format </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Multiple Photo Shooting Modes: Single Shot, Snapper &nbsp;</p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Video Encryption Enabled &nbsp; </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Wi-Fi Connection. </p><p>· &nbsp; &nbsp; &nbsp; &nbsp; Accessories Included In Official Package </p><br><p></p>', 7, '1 X Sports DV   1 X Waterproof Case  1 X Bicycle Stand   1 X Mounts   1 X Handle Bar/Pole Mount  1 X Battery', '1', NULL, NULL, NULL, 689, 'ACTION SPORTS CAMERA WIFI 4K 1080P HD', '4500', '3400', 24, '2019-07-23', '2019-11-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'ACTION SPORTS CAMERA WIFI 4K 1080P HD', 'ACTION SPORTS CAMERA WIFI 4K 1080P HD', '2019-08-07', '12:39:50'),
(76, '72.255.40.171', 17, 1, 'Silicone Gel feet Cushion Foot Heel Elastic Care Half Insole Shoe Pad With Cloth Anti-fatigue', 'silicone-gel-feet-cushion-foot-heel-elastic-care-half-insole-shoe-pad-with-cloth-anti-fatigue-shopker', '<p></p><ul><li>Silicone Gel feet Cushion Foot Heel Elastic Care Half Insole Shoe Pad With Cloth Anti-fatigue</li><li>Made from special medical grade silicone</li><li>100% viscoeleastic silicone thus ensuring a soft and gentle walking</li><li>Designed to absorb shock loads and vibrations in heel region of foot</li><li>Can relieve heel pain Prevents arthrosis in ankle joint, knee joint</li></ul><br><p></p>', '<p></p><p></p><ul><li>Silicone Gel feet Cushion Foot Heel Elastic Care Half Insole Shoe Pad With Cloth Anti-fatigue</li><li>Made from special medical grade silicone</li><li>100% viscoelastic silicone thus ensuring a soft and gentle walking</li><li>Designed to absorb shock loads and vibrations in heel region of foot</li><li>Can relieve heel pain Prevents arthritis in ankle joint, knee joint</li></ul><br><p></p>', 7, 'Silicone Gel feet Cushion Foot Heel Elastic Care Half Insole Shoe Pad With Cloth Anti-fatigue', '0.2', NULL, NULL, NULL, 679, 'Silicone Gel feet Cushion Foot Heel Elastic Care Half Insole Shoe Pad With Cloth Anti-fatigue', '950', '549', 6, '2019-07-18', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Silicone Gel feet Cushion Foot Heel Elastic Care Half Insole Shoe Pad With Cloth Anti-fatigue', 'Silicone Gel feet Cushion Foot Heel Elastic Care Half Insole Shoe Pad With Cloth Anti-fatigue', '2019-08-07', '12:39:50'),
(77, '72.255.40.171', 17, 1, 'SMART WATCH BLACK W08 WITH GSM SLOT AND BLUETOOTH', 'smart-watch-black-w08-with-gsm-slot-and-bluetooth-shopker', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">TF Card: Support Max 32GB TF Card.</span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Display: 1.54&quot; Inch IPS, Resolution Ratio: 240*240 Pixel.</span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Bluetooth: Ver. 3.0 (VS20), Ver. 4.0 (VS20 Plus).</span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Camera: 1.3M.</span></span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Battery: 320mAh.</span></span></span></span></li>\n</ul>', '<p>SMART WATCH BLACK W08 WITH GSM SLOT AND BLUETOOTH CONNECTIVITY FOR IOS AND ANDROID SMART PHONES</p>\n\n<p>Description:&nbsp;SMART WATCH BLACK W08 WITH GSM SLOT AND BLUETOOTH CONNECTIVITY FOR IOS AND ANDROID SMART PHONES -&nbsp;</p>\n\n<p>Detail:&nbsp;&nbsp;Apple Smart W08 With GSM Slot Is Bluetooth Supported Smart Watch And Compatible With IOS Android Smart Phones. This Smartwatch Also Supports TF Card. This GSM 850/900/1800/1900 MHz Can Have Single Micro SIM Card. It Has Bluetooth Dialer, Call Reminder, Call, SMS/IM Message Notification Features.</p>', 0, '1x Smart Watch (Black) 1x Manual. 1x USB Cable. 1x Retail Package.', '0.4', NULL, NULL, NULL, 689, 'SMART WATCH BLACK W08', '3000', '1500', 12, '2019-07-18', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', 'https://www.youtube.com/watch?v=1bgNL1wQBUQ&feature=youtu.be', 'SMART WATCH BLACK W08', 'SMART WATCH BLACK W08', '2019-08-07', '12:39:50'),
(78, '72.255.40.171', 17, 1, 'MINI TOUCH PAD RF 500 WIRELESS WITH 3 COLOUR BACKLIGHT KEYBOARD MOUSE', 'mini-touch-pad-rf-500-wireless-with-3-colour-backlight-keyboard-mouse-shopker', '<ul>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Built-In 2.4G Wireless Receiver&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Model: UKB-500-RF</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Key Number: 92 Keys (74 Standard Keys +18 Media Keys)</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">DPI Adjustable Transmit Power +5 DB&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Operating Voltage: 3.3 V&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Operating Current: &lt;50 MA&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Charging Voltage: 4.2 V 5.05 V&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Charging Current: &lt;300 MA&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Sleep Current: &lt;1 MA&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Working Distance: 15 M&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Battery: 810 MA Lithium Battery&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Compatibility: PC, HTPC, Google TV, WEB, TV, Android TV Box, IPad, PS3, IPTV&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">System Requirements: Windows 2000, Windows XP, Windows Vista, Windows CE, Windows 7, Linux (Debian-3.1, Redhat-9.0 Ubuntu-8.10 Fedora-7.0 Tested&nbsp;</span></span></span></span></li>\n	<li style=\"margin-left: 0px; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">Dimensions: 146.8&nbsp; 97.5 &nbsp;19 Mm</span></span></span></span></li>\n</ul>', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">MINI TOUCH PAD RF 500 WIRELESS WITH 3 COLOUR BACKLIGHT KEYBOARD MOUSE -&nbsp;</span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\">UKB-500-RF Is A Powerful Wireless Handheld Keyboard With A Touchpad Mouse. You Can Hook This Small, Portable Device Up To Your HTPC, Mini PC, TV Box, XBOX, PC Or Other Device, So You Can Work And Play From The Comfort Of Your Couch Or Favorite Lazy Spot. This Powerful Device Has A Full QWERTY Keyboard (92 Keys), Support Multimedia And Gaming Controls, And A Touchpad Mouse For Easy, Sensitive Screen Navigation And All Without Wires.</span></span></span></span></p>', 0, 'MINI TOUCH PAD RF 500 WIRELESS', '0.4', NULL, NULL, NULL, 689, 'MINI TOUCH PAD RF 500 WIRELESS', '1500', '950', 34, '2019-07-18', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', 'https://youtu.be/pPfQuoEt5gQ', 'MINI TOUCH PAD RF 500 WIRELESS WITH 3 COLOUR BACKLIGHT KEYBOARD MOUSE', 'MINI TOUCH PAD RF 500 WIRELESS WITH 3 COLOUR BACKLIGHT KEYBOARD MOUSE', '2019-08-07', '12:39:50'),
(79, '72.255.40.171', 17, 1, 'Microfiber Hair Drying Cap - Blue', 'microfiber-hair-drying-cap---blue-shopker', '<ul>\n	<li>\n	<h1>This microfiber hair-drying cap has super water-absorbent</h1>\n	</li>\n	<li>\n	<h1>ability. Use it to dry your hair, especially long hair, fast and</h1>\n	</li>\n	<li>\n	<h1>easy without an electric hair blower. In addition, it has button</h1>\n	</li>\n	<li>\n	<h1>&amp; loop for keeping it on securely.</h1>\n	</li>\n	<li>\n	<h1>Quick drying and lightweight</h1>\n	</li>\n	<li>\n	<h1>Gentle on hair and skin</h1>\n	</li>\n	<li>\n	<h1>Absorbs wetness and dries hair faster than normal towels</h1>\n	</li>\n	<li>\n	<h1>Washing instruction: no softener, bleaching.</h1>\n	</li>\n	<li>\n	<h1>User Instructions:</h1>\n	</li>\n	<li>\n	<h1>Bend forward your head and let your hair flow down naturally</h1>\n	</li>\n	<li>\n	<h1>Put on the magic hair-drying cap and twist around the hair</h1>\n	</li>\n	<li>\n	<h1>Fold back the magic hair-drying cap and button up at the rear</h1>\n	</li>\n	<li>\n	<h1>Material: Microfiber</h1>\n	</li>\n	<li>\n	<h1>Size(approx.): 56x20.5cm</h1>\n	</li>\n	<li>\n	<h1>Color:Pink,Blue,Green</h1>\n	</li>\n	<li>\n	<h1>Include:</h1>\n	</li>\n	<li>\n	<h1>1*Microfiber Hair Bath Cap</h1>\n	</li>\n</ul>', '<ul>\n	<li>\n	<h1>This microfiber hair-drying cap has super water-absorbent</h1>\n	</li>\n	<li>\n	<h1>ability. Use it to dry your hair, especially long hair, fast and</h1>\n	</li>\n	<li>\n	<h1>easy without an electric hair blower. In addition, it has button</h1>\n	</li>\n	<li>\n	<h1>&amp; loop for keeping it on securely.</h1>\n	</li>\n	<li>\n	<h1>Quick drying and lightweight</h1>\n	</li>\n	<li>\n	<h1>Gentle on hair and skin</h1>\n	</li>\n	<li>\n	<h1>Absorbs wetness and dries hair faster than normal towels</h1>\n	</li>\n	<li>\n	<h1>Washing instruction: no softener, bleaching.</h1>\n	</li>\n	<li>\n	<h1>User Instructions:</h1>\n	</li>\n	<li>\n	<h1>Bend forward your head and let your hair flow down naturally</h1>\n	</li>\n	<li>\n	<h1>Put on the magic hair-drying cap and twist around the hair</h1>\n	</li>\n	<li>\n	<h1>Fold back the magic hair-drying cap and button up at the rear</h1>\n	</li>\n	<li>\n	<h1>Material: Microfiber</h1>\n	</li>\n	<li>\n	<h1>Size(approx.): 56x20.5cm</h1>\n	</li>\n	<li>\n	<h1>Color:Pink,Blue,Green</h1>\n	</li>\n	<li>\n	<h1>Include:</h1>\n	</li>\n	<li>\n	<h1>1*Microfiber Hair Bath Cap</h1>\n	</li>\n</ul>', 7, '1x Microfiber Hair Drying Cap - Blue', '0.2', NULL, NULL, NULL, 711, 'Microfiber Hair Drying Cap - Blue', '450', '299', 6, '2019-07-18', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Microfiber Hair Drying Cap - Blue', 'Microfiber Hair Drying Cap - Blue', '2019-08-07', '12:39:50'),
(80, '72.255.40.171', 17, 1, 'Room Acrylic Decal Art DIY Mirror Light Decor 3D Wall Sticker Home Decoration', 'room-acrylic-decal-art-diy-mirror-light-decor-3d-wall-sticker-home-decoration-shopker', '<ul>\n	<li>Removable Wall Sticker</li>\n	<li>Environmental friendly</li>\n	<li>Decorate your room, an ideal way to personalise your home in a very affordable way</li>\n	<li>Can be applied to any smooth and clean surface such as wall, door, window, plastic, metal, ceramic tile, etc</li>\n	<li>NOT suitable for dirty or rough surface</li>\n	<li>This Round-shaped Mirror Wall Decal is a fashionable and modern way to bring peace, harmony and romantic touches to your home/ office decor.</li>\n	<li>It is ideal for decorating homes, creating comfortable and romantic home atmosphere!</li>\n	<li>Can be sticked perfectly on smooth surfaces such as painted walls, glass window, doors, etc.</li>\n	<li>Material: Acrylic</li>\n	<li>Size: Single Size: 10x7cm</li>\n	<li>It Includes: 12pcs flower+12pcs waterdrop decor</li>\n	<li>NOTE: MIRROR NOT INCLUDED ONLY STICKERS INCLUDED​​​​​​​</li>\n</ul>', '<ul>\n	<li>Removable Wall Sticker</li>\n	<li>Environmental friendly</li>\n	<li>Decorate your room, an ideal way to personalise your home in a very affordable way</li>\n	<li>Can be applied to any smooth and clean surface such as wall, door, window, plastic, metal, ceramic tile, etc</li>\n	<li>NOT suitable for dirty or rough surface</li>\n	<li>This Round-shaped Mirror Wall Decal is a fashionable and modern way to bring peace, harmony and romantic touches to your home/ office decor.</li>\n	<li>It is ideal for decorating homes, creating comfortable and romantic home atmosphere!</li>\n	<li>Can be sticked perfectly on smooth surfaces such as painted walls, glass window, doors, etc.</li>\n	<li>Material: Acrylic</li>\n	<li>Size: Single Size: 10x7cm</li>\n	<li>It Includes: 12pcs flower+12pcs waterdrop decor</li>\n	<li>NOTE: MIRROR NOT INCLUDED ONLY STICKERS INCLUDED​​​​​​​</li>\n</ul>', 7, 'Room Acrylic Decal Art DIY Mirror Light Decor 3D Wall Sticker Home Decoration', '0.3', NULL, NULL, NULL, 754, 'Room Acrylic Decal Art DIY Mirror Light Decor 3D Wall Sticker Home Decoration', '950', '650', 6, '2019-07-18', '2019-10-31', 1, 0, 1, '00:00:00', '00:00:00', NULL, 'Room Acrylic Decal Art DIY Mirror Light Decor 3D Wall Sticker Home Decoration', 'Room Acrylic Decal Art DIY Mirror Light Decor 3D Wall Sticker Home Decoration', '2019-08-07', '12:39:50'),
(81, '72.255.40.171', 17, 1, 'Wireless Bluetooth Keyboard Blue X5', 'wireless-bluetooth-keyboard-blue-x5-shopker', '<ul>\n	<li><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Cross-Compatible: Works With IOS, Android, Mac And Windows</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Lightweight &amp; Compact: 30% Smaller Than Traditional Clunky Keyboards</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Comfortable Keys: Type Quietly And Effortlessly On Comfortable, Low-Profile Keys</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Working Distance Up To 10m&nbsp;</span></span></span></li>\n</ul>', '<ul>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">BLUETOOTH KEYBOARD BLUE X5 -&nbsp;</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">This Is A Standard Wireless Bluetooth Keyboard Which Can Be Connected With Various Types Of Devices</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cross-Compatible: Works With IOS, Android, Mac And Windows</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lightweight &amp; Compact: 30% Smaller Than Traditional Clunky Keyboards</span></span></span></li>\n	<li style=\"text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">3)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Comfortable Keys: Type Quietly And Effortlessly On Comfortable, Low-Profile Keys</span></span></span></li>\n</ul>', 7, '1x Wireless Bluetooth Keyboard Blue X5', '0.3', NULL, NULL, NULL, 765, 'Wireless Bluetooth Keyboard Blue X5', '1200', '950', 24, '2019-07-18', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Wireless Bluetooth Keyboard Blue X5', 'Wireless Bluetooth Keyboard Blue X5', '2019-08-07', '12:39:50'),
(82, '72.255.40.171', 17, 1, 'Bunion Splint Big Toe Straightener Corrector Foot Pain Relief Hallux Valgus', 'bunion-splint-big-toe-straightener-corrector-foot-pain-relief-hallux-valgus-shopker', '<ul>\n	<li>This is UPDATED version, more functional and flexible</li>\n	<li>&nbsp;&nbsp;&nbsp; The splint is a resting splint, for both day and night time use</li>\n	<li>&nbsp;&nbsp;&nbsp; It applies a 3-point pressure system to relieve the hallux valgus deformit flexible</li>\n	<li>&nbsp;&nbsp;&nbsp; It helps to adjust the big toe to prevent valgus</li>\n	<li>&nbsp;&nbsp;&nbsp; Comfortably bend in the bone and toes</li>\n	<li>&nbsp;&nbsp;&nbsp; The double-layer tape foot central arch state stable</li>\n	<li>&nbsp;&nbsp;&nbsp; Fill the hinge clips to protect the organization to protect pain, relieve stress</li>\n	<li>&nbsp;&nbsp;&nbsp; Adjustable in bone pad to ease the pressure of the toe joint, and to maximize the scattered pressure</li>\n	<li>&nbsp;&nbsp;&nbsp; It is extremely comfortable to wear and is adjustable to ensure maximum user comfort and support</li>\n	<li>&nbsp;&nbsp;&nbsp; Arch support design to relief forefoot stress</li>\n	<li>&nbsp;&nbsp;&nbsp; One size fits most toes</li>\n	<li>&nbsp;&nbsp;&nbsp; Comes in piece</li>\n	<li>&nbsp;&nbsp;&nbsp; Material: medical material</li>\n	<li>&nbsp;&nbsp;&nbsp; Color: beige</li>\n	<li>&nbsp;&nbsp;&nbsp; Size : approx. 14 cm&nbsp;</li>\n</ul>', '<ul>\n	<li>This is UPDATED version, more functional and flexible</li>\n	<li>&nbsp;&nbsp;&nbsp; The splint is a resting splint, for both day and night time use</li>\n	<li>&nbsp;&nbsp;&nbsp; It applies a 3-point pressure system to relieve the hallux valgus deformit flexible</li>\n	<li>&nbsp;&nbsp;&nbsp; It helps to adjust the big toe to prevent valgus</li>\n	<li>&nbsp;&nbsp;&nbsp; Comfortably bend in the bone and toes</li>\n	<li>&nbsp;&nbsp;&nbsp; The double-layer tape foot central arch state stable</li>\n	<li>&nbsp;&nbsp;&nbsp; Fill the hinge clips to protect the organization to protect pain, relieve stress</li>\n	<li>&nbsp;&nbsp;&nbsp; Adjustable in bone pad to ease the pressure of the toe joint, and to maximize the scattered pressure</li>\n	<li>&nbsp;&nbsp;&nbsp; It is extremely comfortable to wear and is adjustable to ensure maximum user comfort and support</li>\n	<li>&nbsp;&nbsp;&nbsp; Arch support design to relief forefoot stress</li>\n	<li>&nbsp;&nbsp;&nbsp; One size fits most toes</li>\n	<li>&nbsp;&nbsp;&nbsp; Comes in piece</li>\n	<li>&nbsp;&nbsp;&nbsp; Material: medical material</li>\n	<li>&nbsp;&nbsp;&nbsp; Color: beige</li>\n	<li>&nbsp;&nbsp;&nbsp; Size : approx. 14 cm&nbsp;</li>\n</ul>', 0, '1 piece X Bunion Splint Big Toe Straightener Corrector Foot Pain Relief Hallux Valgus', '0.2', NULL, NULL, NULL, 679, 'Bunion Splint Big Toe Straightener Corrector Foot Pain Relief Hallux Valgus', '850', '499', 12, '2019-07-18', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Bunion Splint Big Toe Straightener Corrector Foot Pain Relief Hallux Valgus', 'Bunion Splint Big Toe Straightener Corrector Foot Pain Relief Hallux Valgus', '2019-08-07', '12:39:50'),
(83, '72.255.40.171', 17, 1, 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', 'bunion-corrector-gel-pad-stretch-nylon-hallux-valgus-shopker', '<ul>\n	<li>Reduces toe and foot discomfort</li>\n	<li>Alleviates tension</li>\n	<li>Stretches and aligns toes</li>\n	<li>Increase circulation</li>\n	<li>Straighten bent toes</li>\n	<li>Realign joint</li>\n	<li>Improve balance</li>\n	<li>Improve foot strength</li>\n	<li>Bunion relief</li>\n</ul>', '<p>Reduces toe and foot discomfort<br />\nAlleviates tension<br />\nStretches and aligns toes<br />\nIncrease circulation<br />\nStraighten bent toes<br />\nRealign joint<br />\nImprove balance<br />\nImprove foot strength<br />\nBunion relief<br />\nCondition: New and high quality<br />\nMaterial: Durable soft elastic cloth and medical-grade gel<br />\nColor: Beige<br />\nLength: Approx. 9cm<br />\nWideth: Approx. 8cm&nbsp; (Can be stretched)</p>', 0, '1 Pair X Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', '0.2', NULL, NULL, NULL, 679, 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', '750', '499', 20, '2019-07-18', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', 'Bunion Corrector Gel Pad Stretch Nylon Hallux Valgus', '2019-08-07', '12:39:50'),
(84, '103.255.5.79', 17, 1, 'SMART BOX H96 PRO PLUS 3GB+32GB OCTA CORE 4K ULTA HD 8.1v', 'smart-box-h96-pro-plus-3gb+32gb-octa-core-4k-ulta-hd-8.1v-689', '<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">CPU:&nbsp;Amlogic S912 Octa Core ARM Cortex-A53 CPU Up To 2GHz (DVFS)</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">GPU:&nbsp;750MHz+ ARM Mali-820MP3 GPU Processor&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">RAM:&nbsp;3GB&nbsp;DDR3</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">ROM:&nbsp;32GB&nbsp;&nbsp;EMMC Flash&nbsp;</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">OS:&nbsp;Android 7.1 OS</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Ethernet:&nbsp;100M/1000M</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">WIFI:&nbsp;&nbsp;2.4GHZ/5.8GHZ&nbsp;&nbsp;802.11a/B/G/N /Ac</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Bluetooth:&nbsp;BT4.1</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"font-family:Symbol\">&middot;</span></span><span style=\"font-size:10.5pt\"><span style=\"font-family:Arial,sans-serif\">Video Codecs:&nbsp;VP9-10&nbsp;Profile-2 Up To 4Kx2K@60fps,&nbsp;H.265&nbsp;HEVC MP-10@L5.1 Up To 4Kx2K@60fps</span></span></span></span></span></p>', '<p><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">Say Hello To The H96 Pro+ Android TV Box. With Its Octa-Core Amlogic S912&nbsp;</span></span></span><span style=\"font-size:10.5pt\"><span style=\"color:#000000\"><span style=\"font-family:Arial,sans-serif\">ARM Cortex-A53</span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">&nbsp;CPU, 3GB Or RAM And Respectable 32GB Of Storage This TV Box Has A Nice Line Up Of Specs. While This May Be Commonplace With TV Boxes These Days The H96 Pro+ Stills Stands Out From The Crowd As It Sports An Unusual And Very Attractive Design Featuring A Recessed Band About Its Middle And A Glossy Strip Across The Top. A Powerful Portable PC That Can Turn Just About Any Screen Into A Mini PC And Entertainment System.</span></span></span>&nbsp;<span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\">The Left Size Of The TV Box Features 2 Full-Size USB Ports While The Right Side Houses The Micro SD Card Slot Enabling You To Double The Storage To A Substantial 64GB. At The Rear Of The H96Pro+ Is The HDMI And AV Out Ports As Well As Optical SPDIF For Flawless Audio And DC In Port. With A Gigabit Ethernet Port And Built-In Dual Band Wi-Fi Antenna, This Mini TV Box Has Fast Network Access So You Can Easily Stream Media And Download From The Cloud. An Android 7.1 Operating System Brings Good Support For A Full Range Of Apps Making This TV Box More Than Just A Media Station As With A Bluetooth Keyboard And Mouse You Can Use It For Just Like A Mini PC. Coming With The Kodi Media Player Pre-Installed You&#39;ll Have Great Access To The Full Spectrum Of Media Channels Be It Sports, Movies Or Documentaries So There&#39;ll Never Be Any Shortage Of Things To Watch. With 4K Resolutions And Decoding Supported You&#39;ll Be Able To View It All In Stunning Quality And You&#39;ll Be Ready For The 4K Revolution.</span></span></span><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"color:#666666\"><span style=\"font-family:Tahoma,sans-serif\">&nbsp;</span></span></span></span></span><br />\r\n&nbsp;</p>', 0, '1x Android Smart TV Box MXQ 1xpower Cord 1xRemote 1xHDMI Cable', '0.5', NULL, NULL, NULL, 689, 'SMART BOX H96 PRO PLUS 3GB+32GB OCTA CORE 4K ULTA HD 8.1v', '15000', '11500', 24, '2019-07-18', '2019-10-31', 1, 0, 1, '00:00:00', '00:00:00', NULL, 'SMART BOX H96 PRO PLUS 3GB+32GB OCTA CORE 4K ULTA HD 8.1v', 'SMART BOX H96 PRO PLUS 3GB+32GB OCTA CORE 4K ULTA HD 8.1v', '2019-08-08', '03:34:52');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(85, '72.255.40.171', 17, 1, 'SMART BOX MXQ 4K QUAD CORE 1G+8G', 'smart-box-mxq-4k-quad-core-1g8g-shopker', '<ul>\n	<li dir=\"ltr\">\n	<p dir=\"ltr\">Rockchip RK3229 Quad Cortex-A7 1.2GHz 32bit</p>\n	</li>\n	<li dir=\"ltr\">\n	<p dir=\"ltr\">Built-In DDR3 1GB RAM, 8GB ROM (Flash Memory)</p>\n	</li>\n	<li dir=\"ltr\">\n	<p dir=\"ltr\">Built-In 2USB/AV/RJ45/HDMI/SPDIF/OTG/TF Port.</p>\n	</li>\n	<li dir=\"ltr\">\n	<p dir=\"ltr\">Support 64GB External SD Card</p>\n	</li>\n	<li dir=\"ltr\">\n	<p dir=\"ltr\">MXQ Video/Picture Decoding Support H.265 HEVC MP A L4.1 Up To 1080P A 60fps, Supports *.Mkv,*.Wmv,*.Mpg, *.Mpeg, *.Dat, *.Avi, *.Mov, *.Iso, *.Mp4, *.Rm And *.Jpg File Formats. Built-In Wi-Fi</p>\n	</li>\n	<li dir=\"ltr\">\n	<p dir=\"ltr\">Android 7.1</p>\n	</li>\n</ul>', '<p dir=\"ltr\" style=\"margin-left:-12.5pt; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">MXQ Google Android Smart TV BOX, Rockchip RK3229 Quad Cortex-A7 1.2GHz 32bit, Quad ARM Mali-450 GPU, 1.2GHz. MXQ The Newest Version Of MX,Faster Than The MX MX2 Dual Core TV BOX, Support External (Max 64GB) Micro SD Card Expanded, And USB Hard Drivers. Support USB Webcam Works With Skype, QQ And HDMI Supported. Compatible With Any TV (HDMI Or AV (White-Red-Yellow Cables)) Or Regular PC Monitor With HDMI Jack.</span></span></span></span></span></span></p>\n\n<p style=\"margin-left:-12.5pt; margin-right:0in; text-align:left\">&nbsp;</p>\n\n<p dir=\"ltr\" style=\"margin-left:-12pt; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span style=\"color:#000000\"><strong>How To Use:</strong></span></span></span></span></span></span></p>\n\n<div dir=\"ltr\" style=\"-webkit-text-stroke-width:0px; margin-bottom:0px; margin-left:0pt; margin-right:0px; margin-top:0px; padding:0px; text-align:left\">&nbsp;\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:medium\"><a href=\"https://www.youtube.com/watch?v=fPPVT3g6gHI\" style=\"margin:0px; padding:0px; color:#000000; text-decoration:none; outline:none\">Https://Www.youtube.com/Watch?V=FPPVT3g6gHI</a></span></span></span></span></p>\n\n<table cellspacing=\"0\" style=\"border-collapse:collapse; border:undefined; margin:0px; overflow:scroll; padding:0px; table-layout:fixed; width:445.5px\">\n	<tbody>\n	</tbody>\n</table>\n</div>\n\n<p style=\"margin-left:-12.5pt; margin-right:0in; text-align:left\">&nbsp;</p>\n\n<p dir=\"ltr\" style=\"margin-left:-12.5pt; margin-right:0px; text-align:left\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\"><strong>Key Features:</strong></span></span></span></span></span></span></span></p>\n\n<ol style=\"margin-left:0px; margin-right:0px\">\n	<li dir=\"ltr\" style=\"list-style-type:decimal\">\n	<p dir=\"ltr\" style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Supports FULL HD Resolutions</span></span></span></p>\n	</li>\n	<li dir=\"ltr\" style=\"list-style-type:decimal\">\n	<p dir=\"ltr\" style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Small In Size</span></span></span></p>\n	</li>\n	<li dir=\"ltr\" style=\"list-style-type:decimal\">\n	<p dir=\"ltr\" style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri\"><span style=\"color:#000000\">Can Be Kept Anywhere Due To Its Small Size, It&rsquo;ll Not Take A Lot Of Space</span></span></span></p>\n	</li>\n</ol>\n\n<p>&nbsp;</p>', 0, '1x Android Smart TV Box MXQ 1xpower Cord 1xRemote 1xHDMI Cable', '0.5', NULL, NULL, NULL, 679, 'SMART BOX MXQ 4K QUAD CORE 1G+8G', '4800', '3200', 24, '2019-07-18', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'SMART BOX MXQ 4K QUAD CORE 1G+8G', 'SMART BOX MXQ 4K QUAD CORE 1G+8G', '2019-08-07', '12:39:50'),
(86, '72.255.40.171', 17, 1, 'Remax Mobile Car Holder Navigation', 'remax-mobile-car-holder-navigation-shopker', '<ul>\n	<li>With Magnetic Absorption Charging Port, Not Only A Car Holder, But Also One Charging Base Dock</li>\n	<li>120 Degree Slant Angle Design, More Comfortable For Navigation</li>\n	<li>Silicone Material Base, Super Tough, Skid Resistance</li>\n</ul>', '<p>Remax Car Holder Is Your Daily Companion While Traveling In Your Car. It Works As A Standard Phone Holder</p>\n\n<p><strong>Key Features:</strong></p>\n\n<p>1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;With Magnetic Absorption Charging Port, Not Only A Car Holder, But Also One Charging Base Dock</p>\n\n<p>2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;120 Degree Slant Angle Design, More Comfortable For Navigation</p>\n\n<p>3)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Silicone Material Base, Super Tough, Skid Resistance</p>\n\n<p><strong>Specifications:</strong></p>\n\n<p>Brand: REMAX&nbsp;</p>\n\n<p>Mainly Compatible With: Blackberry,D7,G2,GALAXY Mega2,Galaxy Note 4,HTC,HTC One M9,IPad,IPad 5,IPad Air, IPad Mini 2,IPad Mini Retina, IPhone 4/4S,IPhone 5/5S,IPhone 5C,IPhone 6,IPhone 6 Plus, IPhone 6S, IPhone Series, LG, Lumia 730,Lumia 830,Mate 7,Moto,Moto X+1,Nokia,SAMSUNG,Samsung Note 5,Samsung S6,Samsung S6 Edge Plus, Sony, Universal, Xperia Z3,Zenfone&nbsp;</p>\n\n<p>Type: Car Stand&nbsp;</p>\n\n<p>Material: Silicone&nbsp;</p>\n\n<p>Features: Anti-Skid Panel, Charging Base Dock&nbsp;</p>\n\n<p>Dimensions And Weight</p>\n\n<p>Product Weight: 0.118 Kg&nbsp;</p>\n\n<p>Package Weight: 0.276 Kg&nbsp;</p>\n\n<p>Product Size (L X W X H): 17.80 X 10.90 X 4.30 Cm / 7.01 X 4.29 X 1.69 Inches&nbsp;</p>\n\n<p>Package Size (L X W X H): 20.70 X 14.30 X 2.80 Cm / 8.15 X 5.63 X 1.1 Inches</p>', 7, '1x Remax Mobile Car Holder Navigation', '0.3', NULL, NULL, NULL, 689, 'Remax Mobile Car Holder Navigation', '2500', '999', 24, '2019-07-18', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Mobile Car Holder Navigation', 'Remax Mobile Car Holder Navigation', '2019-08-07', '12:39:50'),
(87, '72.255.40.171', 17, 1, 'Ladies Wrist Watch Gold Vintage Stainless Steel Bracelet With Rhinestones', 'ladies-wrist-watch-gold-vintage-stainless-steel-bracelet-with-rhinestones-shopker', '<ul>\n	<li>Ladies Wrist Watch Gold Vintage Stainless Steel Bracelet With Rhinestones</li>\n	<li>Brand Name:susenstone</li>\n	<li>Movement:Quartz</li>\n	<li>Feature:Message Reminder,None</li>\n	<li>Case Material:Alloy</li>\n	<li>Case Shape:Round</li>\n	<li>Water Resistance Depth:No waterproof</li>\n	<li>Dial Window Material Type:Glass</li>\n	<li>Band Material Type:Alloy</li>\n	<li>Style:Fashion &amp; Casual</li>\n	<li>Case Thickness:6mm</li>\n	<li>Dial Diameter:22mm</li>\n	<li>Band Length:20cm</li>\n	<li>Clasp Type:Hook Buckle</li>\n	<li>Band Width:17mm</li>\n	<li>Boxes &amp; Cases Material:No package</li>\n	<li>Watch Case material:Alloy</li>\n	<li>Watch Gender:Women</li>\n	<li>Watch Waterproof:No</li>\n	<li>Watch Movement:Quartz Wristwatches</li>\n	<li>Watch Style:Fashion &amp; casual</li>\n	<li>Watch Dial Window Material Type:Glass</li>\n	<li>Top Search Words:Hot Sale Women Cheap Luxury Watches Watch</li>\n	<li>hot Search Words:Female Wristwatch Gift Dress Watches New</li>\n	<li>Watch Quantity:1pc</li>\n	<li>Watch Case Shape:Round</li>\n</ul>', '<ul>\n	<li>Ladies Wrist Watch Gold Vintage Stainless Steel Bracelet With Rhinestones</li>\n	<li>Brand Name:susenstone</li>\n	<li>Movement:Quartz</li>\n	<li>Feature:Message Reminder,None</li>\n	<li>Case Material:Alloy</li>\n	<li>Case Shape:Round</li>\n	<li>Water Resistance Depth:No waterproof</li>\n	<li>Dial Window Material Type:Glass</li>\n	<li>Band Material Type:Alloy</li>\n	<li>Style:Fashion &amp; Casual</li>\n	<li>Case Thickness:6mm</li>\n	<li>Dial Diameter:22mm</li>\n	<li>Band Length:20cm</li>\n	<li>Clasp Type:Hook Buckle</li>\n	<li>Band Width:17mm</li>\n	<li>Boxes &amp; Cases Material:No package</li>\n	<li>Watch Case material:Alloy</li>\n	<li>Watch Gender:Women</li>\n	<li>Watch Waterproof:No</li>\n	<li>Watch Movement:Quartz Wristwatches</li>\n	<li>Watch Style:Fashion &amp; casual</li>\n	<li>Watch Dial Window Material Type:Glass</li>\n	<li>Top Search Words:Hot Sale Women Cheap Luxury Watches Watch</li>\n	<li>hot Search Words:Female Wristwatch Gift Dress Watches New</li>\n	<li>Watch Quantity:1pc</li>\n	<li>Watch Case Shape:Round</li>\n</ul>', 7, 'Ladies Wrist Watch Gold Vintage Stainless Steel Bracelet With Rhinestones', '0.4', NULL, NULL, NULL, 714, 'Ladies Wrist Watch Gold Vintage Stainless Steel Bracelet With Rhinestones', '1200', '699', 6, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Ladies Wrist Watch Gold Vintage Stainless Steel Bracelet With Rhinestones', 'Ladies Wrist Watch Gold Vintage Stainless Steel Bracelet With Rhinestones', '2019-08-07', '12:39:50'),
(88, '72.255.40.171', 17, 1, 'Portable Casual Travel Handbag Storage Organizer Bag', 'portable-casual-travel-handbag-storage-organizer-bag-shopker', '<ul>\n	<li>Portable Casual Travel Handbag Storage Organizer Bag</li>\n	<li>Material: Polyester</li>\n	<li>Size: 28.5*18*10cm</li>\n	<li>Material:Nylon + Cotton</li>\n	<li>High quality material and nice process</li>\n	<li>This bag can make it larger or slim according to your use</li>\n	<li>Enough bag in bag for different kind of sundries</li>\n	<li>Dual zipper can lock some thing importance</li>\n	<li>Widely use in home,office,especially traval</li>\n</ul>', '<ul>\n	<li>Portable Casual Travel Handbag Storage Organizer Bag</li>\n	<li>Material: Polyester</li>\n	<li>Size: 28.5*18*10cm</li>\n	<li>Material:Nylon + Cotton</li>\n	<li>High quality material and nice process</li>\n	<li>This bag can make it larger or slim according to your use</li>\n	<li>Enough bag in bag for different kind of sundries</li>\n	<li>Dual zipper can lock some thing importance</li>\n	<li>Widely use in home,office,especially traval</li>\n</ul>', 7, 'Portable Casual Travel Handbag Storage Organizer Bag', '0.4', NULL, NULL, NULL, 734, 'Portable Casual Travel Handbag Storage Organizer Bag-Orange', '999', '650', 6, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Portable Casual Travel Handbag Storage Organizer Bag', 'Portable Casual Travel Handbag Storage Organizer Bag', '2019-08-07', '12:39:50'),
(89, '72.255.40.171', 17, 1, 'Portable Casual Travel Handbag Storage Organizer Bag', 'portable-casual-travel-handbag-storage-organizer-bag-shopker', '<ul>\n	<li>Portable Casual Travel Handbag Storage Organizer Bag</li>\n	<li>Material: Polyester</li>\n	<li>Size: 28.5*18*10cm</li>\n	<li>Material:Nylon + Cotton</li>\n	<li>High quality material and nice process</li>\n	<li>This bag can make it larger or slim according to your use</li>\n	<li>Enough bag in bag for different kind of sundries</li>\n	<li>Dual zipper can lock some thing importance</li>\n	<li>Widely use in home,office,especially traval</li>\n</ul>', '<ul>\n	<li>Portable Casual Travel Handbag Storage Organizer Bag</li>\n	<li>Material: Polyester</li>\n	<li>Size: 28.5*18*10cm</li>\n	<li>Material:Nylon + Cotton</li>\n	<li>High quality material and nice process</li>\n	<li>This bag can make it larger or slim according to your use</li>\n	<li>Enough bag in bag for different kind of sundries</li>\n	<li>Dual zipper can lock some thing importance</li>\n	<li>Widely use in home,office,especially traval</li>\n</ul>', 7, 'Portable Casual Travel Handbag Storage Organizer Bag', '0.4', NULL, NULL, NULL, 689, 'Portable Casual Travel Handbag Storage Organizer Bag-Black', '999', '699', 6, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Portable Casual Travel Handbag Storage Organizer Bag', 'Portable Casual Travel Handbag Storage Organizer Bag', '2019-08-07', '12:39:50'),
(90, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP', 'lan-cable-cat-6-utp-shopker', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', 0, 'Lan Cable CAT 6 UTP', '0.4', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-1.5m', '150', '99', 24, '2019-07-17', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:51'),
(91, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP', 'lan-cable-cat-6-utp-shopker', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', 0, 'Lan Cable CAT 6 UTP', '0.4', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-3m', '250', '150', 24, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:51'),
(92, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP', 'lan-cable-cat-6-utp-shopker', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', 0, 'Lan Cable CAT 6 UTP', '0.4', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-5m', '350', '200', 24, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:51'),
(93, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP', 'lan-cable-cat-6-utp-shopker', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', 0, 'Lan Cable CAT 6 UTP', '0.4', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-10m', '450', '300', 24, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:51'),
(94, '72.255.40.171', 17, 1, 'Lan Cable CAT 6 UTP', 'lan-cable-cat-6-utp-shopker', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', '<ul>\n	<li>Lan Cable CAT 6 UTP -</li>\n	<li>Detail:Cat 6, Is A Standardized Twisted Pair Cable For Ethernet And Other Network Physical Layers</li>\n	<li>That Is Backward Compatible With The Category 5/5e And Category 3 Cable Standards. Compared With Cat 5 And Cat 5e, Cat 6 Features More Stringent Specifications For Crosstalk And System Noise.</li>\n	<li>The Cable Standard Specifies Performance Of Up To 250 MHz.Availabel sizes:15m, 10m, 5m, 3m, 1.5m</li>\n</ul>', 0, 'Lan Cable CAT 6 UTP', '0.4', NULL, NULL, NULL, 687, 'Lan Cable CAT 6 UTP-15m', '550', '400', 24, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Lan Cable CAT 6 UTP', 'Lan Cable CAT 6 UTP', '2019-08-07', '12:39:51'),
(95, '72.255.40.171', 17, 1, 'Mini 3.5Mm Stereo Mic For Mobile & Laptop Recording', 'mini-35mm-stereo-mic-for-mobile--laptop-recording-shopker', '<ul>\n	<li>Mini 3.5mm Stereo Mic For Mobile &amp; Laptop recording</li>\n	<li>Unidirectional x 2&nbsp;</li>\n	<li>Frequency: 100-15,000 Hz&nbsp;</li>\n	<li>Noise Level: 34dB SPL&nbsp;</li>\n	<li>Front sensitivity (0dB = 1V/Pa): -38dB &plusmn; 3.5dB&nbsp;</li>\n	<li>Maximum Input Sound Level: 110dB SPL (THD 1 percent at 1kHz)&nbsp;</li>\n	<li>Plug: L-shap gold-plat mini plug, 3.5mm&nbsp;</li>\n	<li>Color: Black&amp;Silver&nbsp;</li>\n	<li>Size: approx. 57 x 57 x 15mm&nbsp;</li>\n	<li>Net Weight: 9g</li>\n</ul>', '<ul>\n	<li>Mini 3.5mm Stereo Mic For Mobile &amp; Laptop recording</li>\n	<li>Unidirectional x 2&nbsp;</li>\n	<li>Frequency: 100-15,000 Hz&nbsp;</li>\n	<li>Noise Level: 34dB SPL&nbsp;</li>\n	<li>Front sensitivity (0dB = 1V/Pa): -38dB &plusmn; 3.5dB&nbsp;</li>\n	<li>Maximum Input Sound Level: 110dB SPL (THD 1 percent at 1kHz)&nbsp;</li>\n	<li>Plug: L-shap gold-plat mini plug, 3.5mm&nbsp;</li>\n	<li>Color: Black&amp;Silver&nbsp;</li>\n	<li>Size: approx. 57 x 57 x 15mm&nbsp;</li>\n	<li>Net Weight: 9g</li>\n</ul>', 0, 'Mini 3.5Mm Stereo Mic For Mobile & Laptop Recording', '0.4', NULL, NULL, NULL, 754, 'Mini 3.5Mm Stereo Mic For Mobile & Laptop Recording', '750', '450', 6, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Mini 3.5Mm Stereo Mic For Mobile & Laptop Recording', 'Mini 3.5Mm Stereo Mic For Mobile & Laptop Recording', '2019-08-07', '12:39:51'),
(96, '72.255.40.171', 17, 1, 'Shock Proof Skin-Case for Apple Airpods', 'shock-proof-skin-case-for-apple-airpods-shopker', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', 7, 'Shock Proof Skin/Case for Apple Airpods', '0.3', NULL, NULL, NULL, 765, 'Shock Proof Skin/Case for Apple Airpods-white', '950', '550', 6, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Shock Proof Skin/Case for Apple Airpods', 'Shock Proof Skin/Case for Apple Airpods', '2019-08-07', '12:39:51'),
(97, '72.255.40.171', 17, 1, 'Shock Proof Skin-Case for Apple Airpods', 'shock-proof-skin-case-for-apple-airpods-shopker', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', 7, 'Shock Proof Skin/Case for Apple Airpods', '0.3', NULL, NULL, NULL, 739, 'Shock Proof Skin/Case for Apple Airpods-blue', '950', '550', 6, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Shock Proof Skin/Case for Apple Airpods', 'Shock Proof Skin/Case for Apple Airpods', '2019-08-07', '12:39:51'),
(98, '72.255.40.171', 17, 1, 'Shock Proof Skin-Case for Apple Airpods', 'shock-proof-skin-case-for-apple-airpods-shopker', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', 7, 'Shock Proof Skin/Case for Apple Airpods', '0.3', NULL, NULL, NULL, 734, 'Shock Proof Skin/Case for Apple Airpods-RED', '950', '550', 12, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Shock Proof Skin/Case for Apple Airpods', 'Shock Proof Skin/Case for Apple Airpods', '2019-08-07', '12:39:51'),
(99, '72.255.40.171', 17, 1, 'Shock Proof Skin-Case for Apple Airpods', 'shock-proof-skin-case-for-apple-airpods-shopker', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', 7, 'Shock Proof Skin/Case for Apple Airpods', '0.3', NULL, NULL, NULL, 740, 'Shock Proof Skin/Case for Apple Airpods-Pink', '950', '550', 12, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Shock Proof Skin/Case for Apple Airpods', 'Shock Proof Skin/Case for Apple Airpods', '2019-08-07', '12:39:51'),
(100, '72.255.40.171', 17, 1, 'Shock Proof Skin-Case for Apple Airpods', 'shock-proof-skin-case-for-apple-airpods-shopker', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', '<ul>\n	<li>Shock Proof&nbsp; Skin/Case for Apple Airpods</li>\n	<li>Useful: Designed for Apple AirPods wireless headphone box, 100% fitting, not easy slide out and keep it always in new look.</li>\n	<li>Special: Provides full protection for your device. Superior shock absorbing design, protect your headphone box body from dirty, bump and scrape, prevent abrase.</li>\n	<li>Advantage: Precise hole location for charging port. Easy access to the charging port. Adds anti-slip bars on it&#39;s two sides.</li>\n	<li>Durable: Made of environmentally-friendly medical-grade silicone, soft texture, not deform and offers wonderful grip.</li>\n	<li>Good choice: Fashion but simple style fits and matches your headphone box perfectly. Ultra thin and use the most secure and slim way to carry your device.</li>\n	<li>Specifications:</li>\n	<li>Material: Environmentally-friendly medical-grade silicone, spray rubber-oil surface.</li>\n	<li>Color: Sea Blue/White/Black/Red/Pink</li>\n</ul>', 7, 'Shock Proof Skin/Case for Apple Airpods', '0.3', NULL, NULL, NULL, 689, 'Shock Proof Skin/Case for Apple Airpods-Black', '950', '550', 12, '2019-07-17', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Shock Proof Skin/Case for Apple Airpods', 'Shock Proof Skin/Case for Apple Airpods', '2019-08-07', '12:39:51'),
(101, '72.255.40.171', 17, 1, 'Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Power Strip - Black', 'remax-alien-series-ru-s4-5-usb-ports-hub-and-6-universal-plug-42a---eu-plug-power-strip---black-shopker', '<p></p><ul><li><p>Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Remax RU-S4 is an electric plug with USB Charger.&nbsp;</p></li><li><p>There are 6 universal power outlets and 5 USB Ports so you can use various devices while charging the smartphone using only 1 device 5 USB Ports Remax RU-S4 has 5buah USB Port.&nbsp;</p></li><li><p>You can have available ports according to the voltage requirements of your smartphone or tablet.&nbsp;</p></li><li><p>6 Electric Plug It has 6 pieces of universal litrik plugs that you can use to striking a variety of electronic devices.</p></li></ul><br><p></p>', '<p></p><ul><li><p>Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Remax RU-S4 is an electric plug with USB Charger. </p></li><li><p>There are 6 universal power outlets and 5 USB Ports so you can use various devices while charging the smartphone using only 1 device 5 USB Ports Remax RU-S4 has 5buah USB Port. </p></li><li><p>You can have available ports according to the voltage requirements of your smartphone or tablet. </p></li><li><p>6 Electric Plug It has 6 pieces of universal litrik plugs that you can use to striking a variety of electronic devices.</p></li></ul><br><p></p>', 7, '1x Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Power Strip - Black', '0.5', NULL, NULL, NULL, 689, 'Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Power Strip - Black', '3500', '2299', 24, '1970-01-01', '1970-01-01', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Power Strip - Black', 'Remax Alien Series RU-S4 5 USB Ports Hub and 6 Universal Plug 4.2A - EU Plug Power Strip - Black', '2019-08-07', '12:39:51'),
(102, '72.255.40.171', 17, 1, 'Suncool Portable Bamboo Laptop Wooden Table With Fan', 'suncool-portable-bamboo-laptop-wooden-table-with-fan-shopker', '<p></p><ul><li><strong>Suncool Portable Bamboo Laptop Wooden Table With Fan</strong></li><li><p>Name: Suncool Bamboo Laptop Table</p></li><li><p>Mode: L10</p></li><li><p>Color: Brown</p></li><li><p>Normal Height: 21cm</p></li><li><p>Expandable Height: 30cm</p></li><li><p>Material: Bamboo</p></li></ul><br><p></p>', '<p></p><ul><li><p>Multipurpose wooden foldable</p></li><li><p>Can be used as laptop table / study table</p></li><li><p>Smart designed surface to keep heat out</p></li><li><p>5 tilting ways to fit different users</p></li><li><p>Perfect for reading, writing, using of Internet on Sofa or anywhere</p></li></ul><br><p></p>', 7, '1x Suncool Portable Bamboo Laptop Wooden Table With Fan', '1.5', NULL, NULL, NULL, 679, 'Suncool Portable Bamboo Laptop Wooden Table With Fan', '4500', '2999', 24, '2019-07-16', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Suncool Portable Bamboo Laptop Wooden Table With Fan', 'Suncool Portable Bamboo Laptop Wooden Table With Fan', '2019-08-07', '12:39:51'),
(103, '72.255.40.171', 17, 1, 'Arrow Panel 14 SMD LED For Car Rear View Mirror Indicator Turn Signal Light-2 Pcs', 'arrow-panel-14-smd-led-for-car-rear-view-mirror-indicator-turn-signal-light-2-pcs-shopker', '<p>&nbsp;</p>\n\n<ul>\n	<li>Arrow Panel 14 SMD LED For Car Rear View Mirror Indicator Turn Signal Light-2 Pcs/lot</li>\n	<li>Universal fits for 12V cars, trucks, motorcycles and scooters.</li>\n	<li>Can be used as turning light, indicator light, brake light etc.</li>\n	<li>Effective warning indicating the direction the vehicle is moving.</li>\n	<li>LED lights are synchronous to the turning signal.</li>\n	<li>Proper LED light intensity will not affect driver vision.</li>\n	<li>Easy to install.</li>\n	<li>Working voltage: DC 12V.</li>\n	<li>LED quantity (each): 14pcs SMD.</li>\n	<li>Shape: arrow.</li>\n	<li>Light color: yellow, blue, red, white.</li>\n	<li>Quantity: 1 pair.</li>\n	<li>Size: 5.5cm x 4cm.</li>\n	<li>&nbsp;</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Universal fits for 12V cars, trucks, motorcycles and scooters.</li>\n	<li>Can be used as turning light, indicator light, brake light etc.</li>\n	<li>Effective warning indicating the direction the vehicle is moving.</li>\n	<li>LED lights are synchronous to the turning signal.</li>\n	<li>Proper LED light intensity will not affect driver vision.</li>\n	<li>Easy to install.</li>\n	<li>Working voltage: DC 12V.</li>\n	<li>LED quantity (each): 14pcs SMD.</li>\n	<li>Shape: arrow.</li>\n	<li>Light color: yellow, blue, red, white.</li>\n	<li>Quantity: 1 pair.</li>\n	<li>Size: 5.5cm x 4cm.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Arrow Panel 14 SMD LED For Car Rear View Mirror Indicator Turn Signal Light-2 Pcs/lot', '0.2', NULL, NULL, NULL, 766, 'Arrow Panel 14 SMD LED For Car Rear View Mirror Indicator Turn Signal Light-2 Pcs/lot', '999', '650', 6, '2019-07-15', '2019-07-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Arrow Panel 14 SMD LED For Car Rear View Mirror Indicator Turn Signal Light-2 Pcs/lot', 'Arrow Panel 14 SMD LED For Car Rear View Mirror Indicator Turn Signal Light-2 Pcs/lot', '2019-08-07', '12:39:51'),
(104, '72.255.40.171', 17, 1, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', 'mini-usb-5v-led-night-light-desk-book-reading-lamp-camping-3-824-leds-shopker', '<p>&nbsp;</p>\n\n<ul>\n	<li>Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Portable and easy to carry</li>\n	<li>Adopting the high technology, show excellent performance.</li>\n	<li>Compatible with all standard USB device, power bank, mobile charger, computer or laptop.</li>\n	<li>Compatible Device: USB device / power bank / mobile charger / computer / laptop</li>\n	<li>Light Color: White Light</li>\n	<li>Voltage: 5V</li>\n	<li>Size: 24LED- 177*20*10mm, 8LED-&nbsp;100*10*10mm, 3LED-&nbsp;59*18*09mm</li>\n	<li>weight: 20g, 12g, 8g</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Portable and easy to carry</li>\n	<li>Adopting the high technology, show excellent performance.</li>\n	<li>Compatible with all standard USB device, power bank, mobile charger, computer or laptop.</li>\n	<li>Compatible Device: USB device / power bank / mobile charger / computer / laptop</li>\n	<li>Light Color: White Light</li>\n	<li>Voltage: 5V</li>\n	<li>Size: 24LED- 177*20*10mm, 8LED- 100*10*10mm, 3LED- 59*18*09mm</li>\n	<li>weight: 20g, 12g, 8g</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 24 Leds', '0.3', NULL, NULL, NULL, 765, '3LED', '350', '150', 12, '2019-07-15', '2019-07-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', '2019-08-07', '12:39:51'),
(105, '72.255.40.171', 1, 1, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', 'mini-usb-5v-led-night-light-desk-book-reading-lamp-camping-3-824-leds-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Portable and easy to carry</li>\n	<li>Adopting the high technology, show excellent performance.</li>\n	<li>Compatible with all standard USB device, power bank, mobile charger, computer or laptop.</li>\n	<li>Compatible Device: USB device / power bank / mobile charger / computer / laptop</li>\n	<li>Light Color: White Light</li>\n	<li>Voltage: 5V</li>\n	<li>Size: 24LED- 177*20*10mm, 8LED-&nbsp;100*10*10mm, 3LED-&nbsp;59*18*09mm</li>\n	<li>weight: 20g, 12g, 8g</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Portable and easy to carry</li>\n	<li>Adopting the high technology, show excellent performance.</li>\n	<li>Compatible with all standard USB device, power bank, mobile charger, computer or laptop.</li>\n	<li>Compatible Device: USB device / power bank / mobile charger / computer / laptop</li>\n	<li>Light Color: White Light</li>\n	<li>Voltage: 5V</li>\n	<li>Size: 24LED- 177*20*10mm, 8LED- 100*10*10mm, 3LED- 59*18*09mm</li>\n	<li>weight: 20g, 12g, 8g</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 24 Leds', '0.3', NULL, NULL, NULL, 765, '8LED', '550', '250', 12, '2019-07-12', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', '2019-08-07', '12:39:51'),
(106, '72.255.40.171', 1, 1, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', 'mini-usb-5v-led-night-light-desk-book-reading-lamp-camping-3-824-leds-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Portable and easy to carry</li>\n	<li>Adopting the high technology, show excellent performance.</li>\n	<li>Compatible with all standard USB device, power bank, mobile charger, computer or laptop.</li>\n	<li>Compatible Device: USB device / power bank / mobile charger / computer / laptop</li>\n	<li>Light Color: White Light</li>\n	<li>Voltage: 5V</li>\n	<li>Size: 24LED- 177*20*10mm, 8LED-&nbsp;100*10*10mm, 3LED-&nbsp;59*18*09mm</li>\n	<li>weight: 20g, 12g, 8g</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Portable and easy to carry</li>\n	<li>Adopting the high technology, show excellent performance.</li>\n	<li>Compatible with all standard USB device, power bank, mobile charger, computer or laptop.</li>\n	<li>Compatible Device: USB device / power bank / mobile charger / computer / laptop</li>\n	<li>Light Color: White Light</li>\n	<li>Voltage: 5V</li>\n	<li>Size: 24LED- 177*20*10mm, 8LED- 100*10*10mm, 3LED- 59*18*09mm</li>\n	<li>weight: 20g, 12g, 8g</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 24 Leds', '0.3', NULL, NULL, NULL, 765, '24LED', '999', '499', 5, '2019-07-12', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', 'Mini USB 5V LED Night light Desk Book Reading Lamp Camping 3, 8,24 Leds', '2019-08-07', '12:39:51'),
(107, '72.255.40.171', 1, 1, 'Round Ball Smooth Organic 3d Lip Balm', 'round-ball-smooth-organic-3d-lip-balm-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Lipstick natural ingredients,</li>\n	<li>Free of petrolatum and mineral oil.</li>\n	<li>Use them fresh,</li>\n	<li>not greasy,</li>\n	<li>sweet odor and natural organic ingredients,</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>Round Ball Smooth Lip Balm Bola Plant Fruit Flavor Lipstick Mosturizer Care Smackers Natural Organic Makeup Lipbalm Set<br />\nLipstick natural ingredients, free of petrolatum and mineral oil. Use them fresh, not greasy, sweet odor and natural organic ingredients, gives you more confidence to use.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Round Ball Smooth Organic 3d Lip Balm', '0.2', NULL, NULL, NULL, 767, 'Round Ball Smooth Organic 3d Lip Balm', '499', '299', 50, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Round Ball Smooth Organic 3d Lip Balm', 'Round Ball Smooth Organic 3d Lip Balm', '2019-08-07', '12:39:51'),
(108, '72.255.40.171', 1, 1, 'DRONE TRACKER CAMERA HD NO 523', 'drone-tracker-camera-hd-no-523-', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>Built-In Gyro: 6 Axis Gyro</li>\n	<li>Channel: 4CH</li>\n	<li>Remote Control: WiFi Remote Control</li>\n	<li>Material: ABS&amp;Electric Components</li>\n	<li>Functions: Sideward Flight/Turn Left/Right,Up/Down,Forward/Backward/3D Rollover/WIFI FPV/Headless Mode/Altitude Hold</li>\n	<li>Control Distance: About 50m</li>\n	<li>Battery: 3.7V 550mAh Lipo Battery</li>\n	<li>Flying Time: 7-8mins</li>\n	<li>Charging Time: About 60mins</li>\n	<li>Camera: 720P</li>\n	<li>Product Weight: 76g</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>DRONE TRACKER CAMERA HD NO 523 -<br />\n3D Flips With Amazing Agility Provides A Stunt Aerial Show. Built-In Barometer With Altitude Hold Function Provides Stable Flight. Innovative Selfie Drone, 720P Camera Allows You To Get Great Selfies Effortlessly. With Attractive Headless Model, Completely Solving Pilot Loss-Of-Orientation Problem. Wifi Real-Time Transmission FPV System Which Can Capture Photos And Record Videos For Your Great Memory</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, '1 * Selfie Drone 1 * USB Charging Cable 4 * Spare Propeller 1 * Screwdriver 1 * English Manual', '0.4', NULL, NULL, NULL, 689, 'DRONE TRACKER CAMERA HD NO 523', '7500', '4999', 12, '2019-07-15', '2019-07-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'DRONE TRACKER CAMERA HD NO 523', 'DRONE TRACKER CAMERA HD NO 523', '2019-08-07', '12:39:51'),
(109, '72.255.40.171', 1, 1, 'Air Mouse C120 For Android And Smart TV', 'air-mouse-c120-for-android-and-smart-tv-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Full QWERTY Keyboard Layout</li>\n	<li>2)Convenient Typing</li>\n	<li>3)Fast Key Response</li>\n	<li>4)Auto Stand-By After 20 Seconds</li>\n	<li>Sensor: 3-Axis Gravity Sensor, 3-Axis Gyroscope</li>\n	<li>Communication: 2.4 GHz</li>\n	<li>Working Distance: 10m</li>\n	<li>Frequency: 2.400 - 2.483 GHz</li>\n	<li>Working Current: &lt;&lt;20mA</li>\n	<li>Standby Current: &lt;&lt;20uA</li>\n	<li>Battery: Rechargeable Lithium Battery</li>\n	<li>Indicator: 1 LED Indicator</li>\n	<li>USB: USB2.0</li>\n	<li>System: Compatible With Windows, Linux, Android</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>This Product Is A Remote Controller With The Function Of Mouse, Keyboard, Multimedia Android Control And Motion Sense Support. It Can Provide People A Unique And Capable Tool To Operate Their PC, Smart TV, Android TV Box, Media Player, Set Top Box. It Is Plug And Play, Simple And Smooth.</p>', 7, 'Air Mouse C120 For Android And Smart TV', '0.3', NULL, NULL, NULL, 689, 'Air Mouse C120 For Android And Smart TV', '1200', '949', 24, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Air Mouse C120 For Android And Smart TV', 'Air Mouse C120 For Android And Smart TV', '2019-08-07', '12:39:51');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(110, '72.255.40.171', 1, 1, 'USB Hub Charger Remax 5 Port 5V 6A RUU1', 'usb-hub-charger-remax-5-port-5v-6a-ruu1-', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>5 USB Ports With Various Outputs To Meet Different Current Demands, Which Ensures Maximum Compatibility.</li>\n	<li>Made Of Flaming Retardant Material, Solid And Safe.</li>\n	<li>Compact Size, A Perfect Must-Have For Travel Use.</li>\n	<li>Available For Home, Office Multiple Appliances Use.</li>\n	<li>Comes With 1.2m Detachable Power Cord, Flexible Length For Long Distance Charging.</li>\n	<li>Stylish Exterior, Powerful Interior, It Is Too Good To Pass Up.</li>\n	<li>Input: AC 100 - 240V, 50 - 60Hz, Max 10A</li>\n	<li>Input: AC 90 - 264V, 50 - 60Hz, Max 2.5A</li>\n	<li>Output 1: DC 5V 1A</li>\n	<li>Output 2: DC 5V 1A</li>\n	<li>Output 3: DC 5V 1A</li>\n	<li>Output 4: DC 5V 2.1A</li>\n	<li>Output 5: DC 5V 2.4A</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>5 USB Ports With Various Outputs To Meet Different Current Demands, Which Ensures Maximum Compatibility.</li>\n	<li>Made Of Flaming Retardant Material, Solid And Safe.</li>\n	<li>Compact Size, A Perfect Must-Have For Travel Use.</li>\n	<li>Available For Home, Office Multiple Appliances Use.</li>\n	<li>Comes With 1.2m Detachable Power Cord, Flexible Length For Long Distance Charging.</li>\n	<li>Stylish Exterior, Powerful Interior, It Is Too Good To Pass Up.</li>\n	<li>Input: AC 100 - 240V, 50 - 60Hz, Max 10A</li>\n	<li>Input: AC 90 - 264V, 50 - 60Hz, Max 2.5A</li>\n	<li>Output 1: DC 5V 1A</li>\n	<li>Output 2: DC 5V 1A</li>\n	<li>Output 3: DC 5V 1A</li>\n	<li>Output 4: DC 5V 2.1A</li>\n	<li>Output 5: DC 5V 2.4A</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'USB Hub Charger Remax 5 Port 5V 6A RUU1', '0.4', NULL, NULL, NULL, 679, 'USB Hub Charger Remax 5 Port 5V 6A RUU1', '2000', '1400', 24, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'USB Hub Charger Remax 5 Port 5V 6A RUU1', 'USB Hub Charger Remax 5 Port 5V 6A RUU1', '2019-08-07', '12:39:51'),
(111, '72.255.40.171', 1, 1, 'Multicolor high quality leggings for ladies slim', 'multicolor-high-quality-leggings-for-ladies-slim-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Multicolor high quality leggings for ladies slim fit-</li>\n	<li>Random colors will be sent</li>\n	<li>Absorb sweat</li>\n	<li>Keep Warm</li>\n	<li>Slim</li>\n	<li>Package hip show</li>\n	<li>thin durable</li>\n	<li>Size: S, M, L</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Multicolor high quality leggings for ladies slim fit-</li>\n	<li>Random colors will be sent</li>\n	<li>Absorb sweat</li>\n	<li>Keep Warm</li>\n	<li>Slim</li>\n	<li>Package hip show</li>\n	<li>thin durable</li>\n	<li>Size: S, M, L</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Multicolor high quality leggings for ladies slim', '0.2', NULL, NULL, NULL, 767, 'Multicolor high quality leggings for ladies slim', '599', '399', 12, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Multicolor high quality leggings for ladies slim', 'Multicolor high quality leggings for ladies slim', '2019-08-07', '12:39:51'),
(112, '72.255.40.171', 1, 1, 'Pack Of 12 - Colors Glitter Eyes Makeup Eyeshadow Stick', 'pack-of-12---colors-glitter-eyes-makeup-eyeshadow-stick-', '<p>&nbsp;</p>\n\n<ul>\n	<li>For Queries, contact Product Expert @0301-8268457(Between 10 AM to 7 PM)</li>\n	<li>Long-lasting</li>\n	<li>Perfect Finish</li>\n	<li>Waterproof / Water-Resistant</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Easy to Wear,Long-lasting,Other,Waterproof / Water-Resistant</li>\n	<li>Finish:</li>\n	<li>Glitter</li>\n	<li>Ingredient:</li>\n	<li>Eyeshadow</li>\n	<li>Model Number:</li>\n	<li>YW0825-YW0826</li>\n	<li>Quantity:</li>\n	<li>12pcs</li>\n	<li>Size:</li>\n	<li>Sample Size</li>\n	<li>Waterproof / Water-Resistant:</li>\n	<li>Yes</li>\n	<li>NET WT:</li>\n	<li>3.5g*12pcs</li>\n	<li>Single color/multi-color:</li>\n	<li>Above eight colors</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Pack Of 12 - Colors Glitter Eyes Makeup Eyeshadow Stick', '0.3', NULL, NULL, NULL, 767, 'Pack Of 12 - Colors Glitter Eyes Makeup Eyeshadow Stick', '1499', '949', 6, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Pack Of 12 - Colors Glitter Eyes Makeup Eyeshadow Stick', 'Pack Of 12 - Colors Glitter Eyes Makeup Eyeshadow Stick', '2019-08-07', '12:39:51'),
(113, '72.255.40.171', 1, 1, 'Golden Plated Imitation Pearl Crystal Necklace', 'golden-plated-imitation-pearl-crystal-necklace-', '<p>&nbsp;</p>\n\n<ul>\n	<li>High Quality</li>\n	<li>Light Weight</li>\n	<li>Stylish &amp; Trendy</li>\n	<li>Easy to carry</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Fashion Trendy Jewelry Sets</li>\n	<li>Golden Plated Imitation Pearl Crystal Necklace</li>\n	<li>Earrings Bride Jewelry Set</li>\n	<li>Simulated-pearl</li>\n	<li>Necklace + Earring</li>\n	<li>Metals Type:Gold Plated</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Golden Plated Imitation Pearl Crystal Necklace', '0.4', NULL, NULL, NULL, 714, 'Golden Plated Imitation Pearl Crystal Necklace', '1375', '949', 1, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Golden Plated Imitation Pearl Crystal Necklace', 'Golden Plated Imitation Pearl Crystal Necklace', '2019-08-07', '12:39:51'),
(114, '72.255.40.171', 1, 1, 'Face Brighten Shimmer Glow Highlighter', 'face-brighten-shimmer-glow-highlighter-', '<p>&nbsp;</p>\n\n<h1>&nbsp;</h1>\n\n<ul>\n	<li>New Kiss Beauty Brand</li>\n	<li>Highlighter Contour Cosmetics</li>\n	<li>Long Lasting</li>\n	<li>Face Brighten Shimmer Glow Liquid Highlighters Makeup</li>\n	<br />\n	<br />\n	&nbsp;\n</ul>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>New Kiss Beauty Brand</li>\n	<li>Highlighter Contour Cosmetics</li>\n	<li>Long Lasting</li>\n	<li>Face Brighten Shimmer Glow Liquid Highlighters Makeup</li>\n	<br />\n	<br />\n	&nbsp;\n</ul>\n\n<p>&nbsp;</p>', 7, 'Face Brighten Shimmer Glow Highlighter', '0.2', NULL, NULL, NULL, 679, 'Face Brighten Shimmer Glow Highlighter', '399', '299', 6, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Face Brighten Shimmer Glow Highlighter', 'Face Brighten Shimmer Glow Highlighter', '2019-08-07', '12:39:51'),
(115, '72.255.40.171', 1, 1, 'Gold Pearl & Silver Jewelry Set', 'gold-pearl--silver-jewelry-set-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Fashion Full Crystal Simulated Pearl Jewelry Sets</li>\n	<li>Gold Plated Choker Necklaces</li>\n	<li>Stud Earrings For Women Wedding</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Fashion Full Crystal Simulated Pearl Jewelry Sets</li>\n	<li>Gold Plated Choker Necklaces</li>\n	<li>Stud Earrings For Women Wedding</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Gold Pearl & Silver Jewelry Set', '0.3', NULL, NULL, NULL, 714, 'Gold Pearl & Silver Jewelry Set', '1500', '899', 1, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Gold Pearl & Silver Jewelry Set', 'Gold Pearl & Silver Jewelry Set', '2019-08-07', '12:39:51'),
(116, '72.255.40.171', 1, 1, 'Golden Crystal Brooch Scarf Pins', 'golden-crystal-brooch-scarf-pins-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Golden Crystal Brooch Scarf Pins</li>\n	<li>Golden</li>\n	<li>Metal</li>\n	<li>Crystal</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Golden Crystal Brooch Scarf Pins</li>\n	<li>Golden</li>\n	<li>Metal</li>\n	<li>Crystal</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Golden Crystal Brooch Scarf Pins', '0.2', NULL, NULL, NULL, 714, 'Golden Crystal Brooch Scarf Pins', '650', '399', 6, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Golden Crystal Brooch Scarf Pins', 'Golden Crystal Brooch Scarf Pins', '2019-08-07', '12:39:51'),
(117, '72.255.40.171', 1, 1, 'Ipega Bluetooth Gamepad For IOS AND ANDRIOD, WIN', 'ipega-bluetooth-gamepad-for-ios-and-andriod-win-', '<p>Bluetooth Standard: V3.0&nbsp;<br />\nRange: 8-10m&nbsp;<br />\nCompatible Models: Cellphone, Tablet, IPad And PC&nbsp;<br />\nSupport System: Android 3.2 IOS 7 Above&nbsp;<br />\nBattery: Built-In Lithium Rechargeable 3.7V/380mAh&nbsp;<br />\nWorking Voltage: DC3.7V&nbsp;<br />\nWorking Current: &le;30mA&nbsp;<br />\nQuiescent Current: &le;80mA&nbsp;</p>', '<p>&nbsp;</p>\n\n<p><strong>ERGONOMIC DESIGN:</strong>&nbsp; &nbsp;Beautiful And Luxury Design, More Meet The Hands, Stylish And Silk Smooth Touch. Anti-Skid, Comfortable And Portable, Let You Enjoy The Great Fun For Gaming.</p>\n\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>BLUETOOTH 3.0 WIRELESS TRANSMISSION:</strong><strong>&nbsp;</strong>&nbsp;Bluetooth Enabled For 8-10m Range, Reliable Wireless Connection. Pairs Wirelessly With Your IOS/Android Smartphone Via Bluetooth Technology. The Powerful Transmitter Instantly Sends Commands To Your Device Without Delay.</p>\n\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; <strong>4cm-8.5cm WIDTH FLEXIBLE HOLDER:</strong>&nbsp; &nbsp;Lock Arm Attaches Your Smartphone Directly To The Controller With Perfect View Angle. Since The Connection Is Wireless, You Can Enjoy Gaming Without Having To Hold Your Device.</p>\n\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; <strong>PRECISION CONTROLS:</strong><strong>&nbsp;</strong>&nbsp;Portable Controller Delivers Precise Responsive Control, Dual Clickable Analog Sticks, Shoulder Buttons And Triggers, Four Action LED Buttons, A Directional Pad, And L1/R1 Shoulder And Built-In Hall-Sensor L2/R2 Trigger Buttons To Deliver Greater Precision Than Your Mobile Device&#39;s Touchscreen.</p>\n\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; <strong>WIDE COMPATIBILITY:</strong><strong>&nbsp;</strong>&nbsp;Deal With Most Simple ACT/STG/FTG/RPG/AVG/SLG/Casual Games. For IPhone 6S Plus IPad Mini Air Samsung S7 Edge HTC LG Android Tablet PC, Android 3.2 IOS7.0 Or Above.</p>\n\n<p>&middot; &nbsp; &nbsp; &nbsp; &nbsp; <strong>NO NEED ROOTING:</strong><strong>&nbsp;</strong>&nbsp;Work With Emulators Without Rooting, Function With Any Emulator That Supports Key &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mapping, FC Simulator, GBA Emulator, Arcade Emulator, SFC Simulator, N64 Emulator, Etc. Under Android System, It Supports The Vast Majority Of Games And Simulator Games 100+ Great Games Are Compatible With This Controller.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, '1 * Game Controller  1 * USB Cable  1 * Use Manual', '0.4', NULL, NULL, NULL, 689, 'Ipega Bluetooth Gamepad For IOS AND ANDRIOD, WIN', '3500', '2199', 36, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Ipega Bluetooth Gamepad For IOS AND ANDRIOD, WIN', 'Ipega Bluetooth Gamepad For IOS AND ANDRIOD, WIN', '2019-08-07', '12:39:51'),
(118, '72.255.40.171', 1, 1, 'USB FAST CHARGER 12 PORT 12AMP W858', 'usb-fast-charger-12-port-12amp-w858-', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>USB FAST CHARGER 12 PORT 12AMP W858 -</li>\n</ul>\n\n<ul>\n	<li>Fast-Charging USB Power Adapter</li>\n</ul>\n\n<ul>\n	<li>Twelve (12) USB Ports</li>\n	<li>&nbsp;</li>\n	<li>Four (4) DC 5V/3.5A Ports</li>\n</ul>\n\n<ul>\n	<li>Four (4) DC 5V/2.5A Ports</li>\n</ul>\n\n<ul>\n	<li>Four (4) DC 5V/1.5A Ports</li>\n</ul>\n\n<ul>\n	<li>12 Amp Total Output</li>\n</ul>\n\n<ul>\n	<li>Input: AC 100-240V</li>\n</ul>\n\n<ul>\n	<li>Output: 0.5A - 3.5A W/Automatic Identification Of Charging</li>\n</ul>\n\n<ul>\n	<li>Supports Charging Twelve (12) Devices Simultaneously</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<ul>\n	<li>USB FAST CHARGER 12 PORT 12AMP W858 -</li>\n</ul>\n\n<ul>\n	<li>Fast-Charging USB Power Adapter</li>\n</ul>\n\n<ul>\n	<li>Twelve (12) USB Ports</li>\n	<li>&nbsp;</li>\n	<li>Four (4) DC 5V/3.5A Ports</li>\n</ul>\n\n<ul>\n	<li>Four (4) DC 5V/2.5A Ports</li>\n</ul>\n\n<ul>\n	<li>Four (4) DC 5V/1.5A Ports</li>\n</ul>\n\n<ul>\n	<li>12 Amp Total Output</li>\n</ul>\n\n<ul>\n	<li>Input: AC 100-240V</li>\n</ul>\n\n<ul>\n	<li>Output: 0.5A - 3.5A W/Automatic Identification Of Charging</li>\n</ul>\n\n<ul>\n	<li>Supports Charging Twelve (12) Devices Simultaneously</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'USB FAST CHARGER 12 PORT 12AMP W858', '0.4', NULL, NULL, NULL, 689, 'USB FAST CHARGER 12 PORT 12AMP W858', '2500', '1500', 36, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'USB FAST CHARGER 12 PORT 12AMP W858', 'USB FAST CHARGER 12 PORT 12AMP W858', '2019-08-07', '12:39:51'),
(119, '72.255.40.171', 1, 1, 'Voice Recorder 8GB-Black', 'voice-recorder-8gb-black-', '<p>&nbsp;</p>\n\n<p>Memory: 8GB</p>\n\n<p>LCD Display: 128X64 Lattice Screen</p>\n\n<p>7 RQ MP3 Modes: NOP, ROCK, POP, CLASSOL, SOFT, JAZZ And DBB</p>\n\n<p>Power Supply: Built In Li-On Rechargeable Battery</p>\n\n<p>Record Bit Ratio: LP 8Kbps/SP 32Kbps/HP 42Kbps</p>\n\n<p>Support Format: WAV, ACT</p>\n\n<p>Music Format: MP1, MP2, MP3, WMA</p>\n\n<p>Working Temperature: 0~40oC</p>\n\n<p>Dimension: Approx.8.3 X 3.5 X 1.2cm Weight: 300g</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>VN Series Is A Perfect Choice To Record Your Own Voice, Take Voice Notes And Reminder. It Offers A Highly Distinctive And Large LCD Screen For Detailed Information And A Convenient Front Panel Design. And With A Huge Rechargea</p>', 7, '1 X Black 8GB USB Voice Recorder 1 X USB Cable 1 X Earphone 1 X Microphone 1 X Audio Cable 1 X Telephone Cable 1 X Telephone/Recording Junction Box 1 X User Manual', '0.4', NULL, NULL, NULL, 689, 'Voice Recorder 8GB', '2500', '1999', 36, '2019-07-12', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', 'https://youtu.be/RHfflnYtm40', 'Voice Recorder 8GB', 'Voice Recorder 8GB', '2019-08-07', '12:39:52'),
(120, '72.255.40.171', 1, 1, 'Car Paint Damage Testing Digital Machine-Yellow', 'car-paint-damage-testing-digital-machine-yellow-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Car Paint Damage Testing Digital Gun</li>\n	<li>portable ,Fast side</li>\n	<li>Fool type return to zero operation mode</li>\n	<li>Micro power consumption</li>\n	<li>Compact and beautiful</li>\n	<li>Technology features:</li>\n	<li>Measurement range: 0~1250um (Can be customized0~3000)</li>\n	<li>Resolution:0.1/1</li>\n	<li>Use environment:</li>\n	<li>Temperature:0-40&deg; , humidity:10-85%RH</li>\n	<li>Metric / inch:Convertible</li>\n	<li>Body size:102mm x 66mm x24mm</li>\n	<li>Instrument appearance size:102&times;62&times;28mm</li>\n	<li>weight :99g(Battery containing)</li>\n	<li>Power Supply:1.5V*2</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>Car Paint Damage Testing Digital Gun<br />\nportable ,Fast side<br />\nFool type return to zero operation mode<br />\nMicro power consumption<br />\nCompact and beautiful<br />\nTechnology features:<br />\nMeasurement range: 0~1250um (Can be customized0~3000)<br />\nResolution:0.1/1<br />\nUse environment:<br />\nTemperature:0-40&deg; , humidity:10-85%RH<br />\nMetric / inch:Convertible<br />\nBody size:102mm x 66mm x24mm<br />\nInstrument appearance size:102&times;62&times;28mm<br />\nweight :99g(Battery containing)<br />\nPower Supply:1.5V*2<br />\n&nbsp;</p>', 7, 'Car Paint Damage Testing Digital Machine-Yellow', '0.4', NULL, NULL, NULL, 766, 'Car Paint Damage Testing Digital Machine-Yellow', '4500', '3500', 3, '2019-07-11', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', 'https://www.youtube.com/watch?v=mB4nkB0YPiY', 'Car Paint Damage Testing Digital Machine-Yellow', 'Car Paint Damage Testing Digital Machine-Yellow', '2019-08-07', '12:39:52'),
(121, '72.255.40.171', 1, 1, 'Iphone Charging Docking Station', 'iphone-charging-docking-station-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Iphone Charging Docking Station</li>\n	<li>Compatible With: for iPhone 5S 6 plus</li>\n	<li>Durable</li>\n	<li>Great quality</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Iphone Charging Docking Station</li>\n	<li>Compatible With: for iPhone 5S 6 plus</li>\n	<li>Durable</li>\n	<li>Great quality</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Iphone Charging Docking Station', '0.4', NULL, NULL, NULL, 689, 'Iphone Charging Docking Station', '999', '550', 6, '2019-07-11', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Iphone Charging Docking Station', 'Iphone Charging Docking Station', '2019-08-07', '12:39:52'),
(122, '72.255.40.171', 1, 1, 'KISS ME Women Crystal Imitation Pearl Earrings Classic Fashion Teardrop Bee Earrings', 'kiss-me-women-crystal-imitation-pearl-earrings-classic-fashion-teardrop-bee-earrings-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Product Style: KISS ME Women Crystal Imitation Pearl Earrings Classic Fashion Teardrop Bee Earrings for Women Costume Jewellery &nbsp; &nbsp; &nbsp; &nbsp;</li>\n	<li>Brand Name: KISS ME (Qingdao, China)</li>\n	<li>Material:, Crystal, Zinc Alloy</li>\n	<li>Color Options: Clear Earrings</li>\n	<li>Occasion: Wedding, Party, Birthday, Sea Travel, Shopping.</li>\n	<li>Gender: Women Earrings</li>\n	<li>Product Type: ed01480b</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Product Style: KISS ME Women Crystal Imitation Pearl Earrings Classic Fashion Teardrop Bee Earrings for Women Costume Jewellery &nbsp; &nbsp; &nbsp; &nbsp;</li>\n	<li>Brand Name: KISS ME (Qingdao, China)</li>\n	<li>Material:, Crystal, Zinc Alloy</li>\n	<li>Color Options: Clear Earrings</li>\n	<li>Occasion: Wedding, Party, Birthday, Sea Travel, Shopping.</li>\n	<li>Gender: Women Earrings</li>\n	<li>Product Type: ed01480b</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'KISS ME Women Crystal Imitation Pearl Earrings Classic Fashion Teardrop Bee Earrings', '0.2', NULL, NULL, NULL, 765, 'KISS ME Women Crystal Imitation Pearl Earrings Classic Fashion Teardrop Bee Earrings', '999', '499', 6, '2019-07-11', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'KISS ME Women Crystal Imitation Pearl Earrings Classic Fashion Teardrop Bee Earrings', 'KISS ME Women Crystal Imitation Pearl Earrings Classic Fashion Teardrop Bee Earrings', '2019-08-07', '12:39:52'),
(123, '72.255.40.171', 1, 1, 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', 'men-luxury-brand-lige-chronograph-men-sports-watches-waterproof-full-steel-quartz-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz</li>\n	<li>Brand Name:LIGE</li>\n	<li>Item Type:Quartz Wristwatches</li>\n	<li>Style:Sport</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Band Length:21</li>\n	<li>Clasp Type:Push Button Hidden Clasp</li>\n	<li>Water Resistance Depth:3Bar</li>\n	<li>Feature:Complete Calendar,Shock Resistant,Luminous Hands,Water Resistant,Stop Watch,Swim</li>\n	<li>Dial Diameter:42</li>\n	<li>Model Number:LIGE9810</li>\n	<li>Boxes &amp; Cases Material:Paper</li>\n	<li>Dial Window Material Type:Hardlex</li>\n	<li>Case Shape:Round</li>\n	<li>Band Material Type:Stainless Steel</li>\n	<li>Band Width:22</li>\n	<li>Case Thickness:12</li>\n	<li>Gender:Men</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz</li>\n	<li>Brand Name:LIGE</li>\n	<li>Item Type:Quartz Wristwatches</li>\n	<li>Style:Sport</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Band Length:21</li>\n	<li>Clasp Type:Push Button Hidden Clasp</li>\n	<li>Water Resistance Depth:3Bar</li>\n	<li>Feature:Complete Calendar,Shock Resistant,Luminous Hands,Water Resistant,Stop Watch,Swim</li>\n	<li>Dial Diameter:42</li>\n	<li>Model Number:LIGE9810</li>\n	<li>Boxes &amp; Cases Material:Paper</li>\n	<li>Dial Window Material Type:Hardlex</li>\n	<li>Case Shape:Round</li>\n	<li>Band Material Type:Stainless Steel</li>\n	<li>Band Width:22</li>\n	<li>Case Thickness:12</li>\n	<li>Gender:Men</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', '0.4', NULL, NULL, NULL, 754, 'Men Luxury Brand LIGE-Silver', '8000', '4499', 1, '2019-07-11', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', '2019-08-07', '12:39:52'),
(124, '72.255.40.171', 1, 1, 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', 'men-luxury-brand-lige-chronograph-men-sports-watches-waterproof-full-steel-quartz-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz</li>\n	<li>Brand Name:LIGE</li>\n	<li>Item Type:Quartz Wristwatches</li>\n	<li>Style:Sport</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Band Length:21</li>\n	<li>Clasp Type:Push Button Hidden Clasp</li>\n	<li>Water Resistance Depth:3Bar</li>\n	<li>Feature:Complete Calendar,Shock Resistant,Luminous Hands,Water Resistant,Stop Watch,Swim</li>\n	<li>Dial Diameter:42</li>\n	<li>Model Number:LIGE9810</li>\n	<li>Boxes &amp; Cases Material:Paper</li>\n	<li>Dial Window Material Type:Hardlex</li>\n	<li>Case Shape:Round</li>\n	<li>Band Material Type:Stainless Steel</li>\n	<li>Band Width:22</li>\n	<li>Case Thickness:12</li>\n	<li>Gender:Men</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz</li>\n	<li>Brand Name:LIGE</li>\n	<li>Item Type:Quartz Wristwatches</li>\n	<li>Style:Sport</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Band Length:21</li>\n	<li>Clasp Type:Push Button Hidden Clasp</li>\n	<li>Water Resistance Depth:3Bar</li>\n	<li>Feature:Complete Calendar,Shock Resistant,Luminous Hands,Water Resistant,Stop Watch,Swim</li>\n	<li>Dial Diameter:42</li>\n	<li>Model Number:LIGE9810</li>\n	<li>Boxes &amp; Cases Material:Paper</li>\n	<li>Dial Window Material Type:Hardlex</li>\n	<li>Case Shape:Round</li>\n	<li>Band Material Type:Stainless Steel</li>\n	<li>Band Width:22</li>\n	<li>Case Thickness:12</li>\n	<li>Gender:Men</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', '0.4', NULL, NULL, NULL, 689, 'Men Luxury Brand LIGE-Black', '8000', '4499', 1, '2019-07-11', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', 'Men Luxury Brand LIGE Chronograph Men Sports Watches Waterproof Full Steel Quartz', '2019-08-07', '12:39:52'),
(125, '72.255.40.171', 1, 1, 'Military Watch Men Auto Mechanical Skeleton Dial Copper Stainless Steel Strap Mens Watches Top Brand Luxury', 'military-watch-men-auto-mechanical-skeleton-dial-copper-stainless-steel-strap-mens-watches-top-brand-luxury-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Militray Watch Men Auto Mechanical Skeleton Dial Copper Stainless Steel Strap Mens Watches Top Brand Luxury</li>\n	<li>Brand Name:T-WINNER</li>\n	<li>Item Type:Mechanical Wristwatches</li>\n	<li>Boxes &amp; Cases Material:Paper</li>\n	<li>Case Shape:Round</li>\n	<li>Band Material Type:Stainless Steel</li>\n	<li>Style:Fashion &amp; Casual</li>\n	<li>Movement:Automatic Self-Wind</li>\n	<li>Clasp Type:Folding Clasp with Safety</li>\n	<li>Case Thickness:14mm</li>\n	<li>Band Width:22mm</li>\n	<li>Band Length:24cm</li>\n	<li>Dial Window Material Type:Hardlex</li>\n	<li>Case Material:Stainless Steel</li>\n	<li>Water Resistance Depth:No waterproof</li>\n	<li>Feature:Shock Resistant</li>\n	<li>Dial Diameter:43mm</li>\n	<li>Model Number:WINNER 233G</li>\n	<li>Material Feature:Imported original watch movement, A-class strap &amp; case material.</li>\n	<li>Craftsmanship Feature:Non-toxic vacuum zinc alloy plating.Partly Handwork.</li>\n	<li>Cooperation Feature:Can drop shipping, can custom LOGO. Welcome retailers &amp; distributors.</li>\n	<li>Package Feature:Free watch box included( watch design may be different accordingly).</li>\n	<li>Gift &amp; Usage:Ideal gift for Valentine&#39;s Day, Christmas, New Year,Carnival Festival</li>\n	<li>Delivery Service:Standard free shipping ( ePacket &amp; Express supported).</li>\n	<li>Waterproof Notice:Daily waterproof ( unless specially mentioned as 3ATM waterproof).</li>\n	<li>Manual Instruction:Mechanical watch needs shaking &amp; winding to</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>Militray Watch Men Auto Mechanical Skeleton Dial Copper Stainless Steel Strap Mens Watches Top Brand Luxury<br />\nBrand Name:T-WINNER<br />\nItem Type:Mechanical Wristwatches<br />\nBoxes &amp; Cases Material:Paper<br />\nCase Shape:Round<br />\nBand Material Type:Stainless Steel<br />\nStyle:Fashion &amp; Casual<br />\nMovement:Automatic Self-Wind<br />\nClasp Type:Folding Clasp with Safety<br />\nCase Thickness:14mm<br />\nBand Width:22mm<br />\nBand Length:24cm<br />\nDial Window Material Type:Hardlex<br />\nCase Material:Stainless Steel<br />\nWater Resistance Depth:No waterproof<br />\nFeature:Shock Resistant<br />\nDial Diameter:43mm<br />\nModel Number:WINNER 233G<br />\nMaterial Feature:Imported original watch movement, A-class strap &amp; case material.<br />\nCraftsmanship Feature:Non-toxic vacuum zinc alloy plating.Partly Handwork.<br />\nCooperation Feature:Can drop shipping, can custom LOGO. Welcome retailers &amp; distributors.<br />\nPackage Feature:Free watch box included( watch design may be different accordingly).<br />\nGift &amp; Usage:Ideal gift for Valentine&#39;s Day, Christmas, New Year,Carnival Festival<br />\nDelivery Service:Standard free shipping ( ePacket &amp; Express supported).<br />\nWaterproof Notice:Daily waterproof ( unless specially mentioned as 3ATM waterproof).<br />\nManual Instruction:Mechanical watch needs shaking &amp; winding to<br />\n&nbsp;</p>', 7, 'Military Watch Men Auto Mechanical Skeleton Dial Copper Stainless Steel Strap Mens Watches Top Brand Luxury', '0.4', NULL, NULL, NULL, 714, 'Military Watch Men Auto Mechanical Skeleton Dial Copper Stainless Steel Strap Mens Watches Top Brand Luxury', '9999', '6999', 1, '2019-07-11', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Military Watch Men Auto Mechanical Skeleton Dial Copper Stainless Steel Strap Mens Watches Top Brand Luxury', 'Military Watch Men Auto Mechanical Skeleton Dial Copper Stainless Steel Strap Mens Watches Top Brand Luxury', '2019-08-07', '12:39:52'),
(126, '72.255.40.171', 1, 1, 'Anti Snore Chin Strap Care - Black', 'anti-snore-chin-strap-care---black-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Premium quality</li>\n	<li>Comfortable to wear</li>\n	<li>Jaw Supporter Belt</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<h1>Anti Snore Chin Strap Care Sleep Stop Snoring Belt Chin Jaw Supporter Apnea Belt For Men Women Sleeping Products</h1>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, '1x Anti Snore Chin Strap Care - Black', '0.2', NULL, NULL, NULL, 689, 'Anti Snore Chin Strap Care - Black', '750', '299', 12, '2019-07-15', '2019-07-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Anti Snore Chin Strap Care - Black', 'Anti Snore Chin Strap Care - Black', '2019-08-07', '12:39:52'),
(127, '72.255.40.171', 1, 1, 'Professional Microphone Clip Lapel Mic For Phone Portable Mini Stereo Hifi Sound Quality Condenser', 'professional-microphone-clip-lapel-mic-for-phone-portable-mini-stereo-hifi-sound-quality-condenser-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Compact, attractive appearance, high sensitivity</li>\n	<li>High quality design fit voice chat, video conferencing, voice recording, online karaoke</li>\n	<li>Clip-on design, easy to clip it to your shirt, collar or placed in small pockets</li>\n	<li>Compa</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Compact, attractive appearance, high sensitivity</li>\n	<li>High quality design fit voice chat, video conferencing, voice recording, online karaoke</li>\n	<li>Clip-on design, easy to clip it to your shirt, collar or placed in small pockets</li>\n	<li>Compa</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, 'Professional Microphone Clip Lapel Mic For Phone Portable Mini Stereo Hifi Sound Quality Condenser', '0.5', NULL, NULL, NULL, 689, 'Professional Microphone Clip Lapel Mic For Phone Portable Mini Stereo Hifi Sound Quality Condenser', '999', '599', 24, '2019-07-11', '2019-09-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Professional Microphone Clip Lapel Mic For Phone Portable Mini Stereo Hifi Sound Quality Condenser', 'Professional Microphone Clip Lapel Mic For Phone Portable Mini Stereo Hifi Sound Quality Condenser', '2019-08-07', '12:39:52'),
(128, '72.255.40.171', 1, 1, 'Women Luxury Bracelet Watches Crystal Dress Wristwatches Casual Quartz Watch', 'women-luxury-bracelet-watches-crystal-dress-wristwatches-casual-quartz-watch-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Women Luxury Bracelet Watches Crystal Dress Wristwatches &nbsp;Casual Quartz Watch</li>\n	<li>Brand Name:Bowake</li>\n	<li>Band Length:19cm</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Case Shape:Round</li>\n	<li>Water Resistance Depth:No waterproof</li>\n	<li>Band Width:10mm</li>\n	<li>Dial Window Material Type:Glass</li>\n	<li>Case Thickness:10mm</li>\n	<li>Model Number:JE0618</li>\n	<li>Style:Fashion &amp; Casual</li>\n	<li>Dial Diameter:28mm</li>\n	<li>Clasp Type:Hook Buckle</li>\n	<li>Feature:None</li>\n	<li>Boxes &amp; Cases Material:No package</li>\n	<li>Band Material Type:Stainless Steel</li>\n	<li>Wristwatches:Quartz watch Movement watc</li>\n	<li>Type :quartz wristwatch</li>\n	<li>ladies wrist watches:watch women</li>\n	<li>Model Number:Watch</li>\n</ul>\n\n<ul>\n	<li>place of origin:China Mainland</li>\n	<li>Provide :Buy 100 watches to send EMS/DHL/DDP</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Women Luxury Bracelet Watches Crystal Dress Wristwatches &nbsp;Casual Quartz Watch</li>\n	<li>Brand Name:Bowake</li>\n	<li>Band Length:19cm</li>\n	<li>Movement:Quartz</li>\n	<li>Case Material:Alloy</li>\n	<li>Case Shape:Round</li>\n	<li>Water Resistance Depth:No waterproof</li>\n	<li>Band Width:10mm</li>\n	<li>Dial Window Material Type:Glass</li>\n	<li>Case Thickness:10mm</li>\n	<li>Model Number:JE0618</li>\n	<li>Style:Fashion &amp; Casual</li>\n	<li>Dial Diameter:28mm</li>\n	<li>Clasp Type:Hook Buckle</li>\n	<li>Feature:None</li>\n	<li>Boxes &amp; Cases Material:No package</li>\n	<li>Band Material Type:Stainless Steel</li>\n	<li>Wristwatches:Quartz watch Movement watch</li>\n	<li>relogio feminino:montre femmes</li>\n	<li>Type :quartz wristwatch</li>\n	<li>ladies wrist watches:watch women</li>\n	<li>Model Number:Watch</li>\n	<li>Support :Free shipping, wholesale, Dropshopping</li>\n	<li>place of origin:China Mainland</li>\n	<li>Provide :Buy 100 watches to send EMS/DHL/DDP</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 0, '1x Women Luxury Bracelet Watches Crystal Dress Wristwatches Casual Quartz Watch', '0.4', NULL, NULL, NULL, 754, 'Women Luxury Bracelet Watches Crystal Dress Wristwatches Casual Quartz Watch', '2000', '1000', 6, '2019-07-09', '2019-08-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Women Luxury Bracelet Watches Crystal Dress Wristwatches Casual Quartz Watch', 'Women Luxury Bracelet Watches Crystal Dress Wristwatches Casual Quartz Watch', '2019-08-07', '12:39:52'),
(129, '72.255.40.171', 1, 1, 'Genuine Leather Braid Steering Wheel Cover Automobile Braiding Covers-Black', 'genuine-leather-braid-steering-wheel-cover-automobile-braiding-covers-black-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Genuine Leather Braid Steering Wheel Cover</li>\n	<li>Automobile Braiding Covers On The Steering Wheel</li>\n	<li>Car Interior Accessories 15 inch</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<ul>\n	<li>Genuine Leather Braid Steering Wheel Cover</li>\n	<li>Automobile Braiding Covers On The Steering Wheel</li>\n	<li>Car Interior Accessories 15 inch</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, '1x Genuine Leather Braid Steering Wheel Cover Automobile Braiding Covers-Black', '0.4', NULL, NULL, NULL, 689, 'Genuine Leather Braid Steering Wheel Cover Automobile Braiding Covers-Black', '5000', '2500', 1, '2019-07-09', '2019-08-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Genuine Leather Braid Steering Wheel Cover Automobile Braiding Covers-Black', 'Genuine Leather Braid Steering Wheel Cover Automobile Braiding Covers-Black', '2019-08-07', '12:39:52'),
(130, '72.255.40.171', 1, 1, 'Paint Coating Thickness Gauge Pen 100% Original Made in Poland', 'paint-coating-thickness-gauge-pen-100-original-made-in-poland-', '<p>&nbsp;</p>\n\n<ul>\n	<li>Easily Check Accidental area</li>\n	<li>No batteries or Charging</li>\n	<li>Low price</li>\n	<li>Long Life</li>\n	<li>Made In Poland 100% original</li>\n	<li>Not copy which is made is EU</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', '<p>&nbsp;</p>\n\n<p>The<strong>&nbsp;AUTO-LAK-TEST 3003</strong>&nbsp;meter is a gauge for measuring the thickness of varnish coatings with an accuracy of 20 microns.</p>\n\n<p>&nbsp;It is used for quick and precise checking whether the vehicle was painted in the past.</p>\n\n<p>&nbsp;The tester does not require battery power, calibration and can be used for many years.</p>\n\n<p>&nbsp;It is a meter and tester because it performs the function of measuring the thickness of varnish and performs the function of quick testing.</p>\n\n<p>&nbsp;It is used to detect the thickness of paint coats that are invisible to the naked eye on vehicles made of sheet steel and galvanized steel.</p>\n\n<p>The tester lets you know if a car accident is hidden under the beautiful varnish.</p>\n\n<p>The AUTO-LAK-TEST BIT 3003 lacquer tester has a colour scale in microns which makes it very easy to read the thickness of the varnish or putty, even for those who check the car for the first time.</p>\n\n<p><strong>The individual colours on the scale indicate:</strong></p>\n\n<p>&nbsp;5. Blue colour- coating with a thickness of 0.0 to 100 microns - a thin coat of varnish (varnish without foundation or repeatedly polished)</p>\n\n<p>4. Green colour - coating with a thickness of 100 to 200 microns for original varnishes. Warning; in newer car models, 180 micron thickness may indicate a thin layer of the second varnish.</p>\n\n<p>3. Yellow colour- coating with a thickness of 200 to 300 microns - after painting repairs (&#39;&#39; second varnish &#39;&#39;).</p>\n\n<p>2. Red colour - coating with a thickness of 300 to 520 microns - surface after sheet metal repairs + a second varnish.</p>\n\n<p>1. Black colour - coating with a thickness of over 520 - surface putty and varnished (the amount of putty about 0.5 mm).</p>\n\n<p><strong>How it works:</strong></p>\n\n<p>The thickness of the varnish and putty is measured by touching the tip of the tester with the magnet of the surface being tested (the surface must be clean and free of dust). Monotonous, not too fast movement, we pull the tester until the magnet breaks away from the tested surface. During this operation a colourful scale comes out. The thickness of the lacquer coating is read in microns with an accuracy of 25 microns. The result of the measurement is the highest indication on the scale of the tester, and also at this moment the scale automatically disappears.</p>\n\n<p>Designed as a simple pen and with its MAGNETIC TIP, it can stick to any curved surface or a hard-to-reach place.</p>\n\n<p>It is made of high-quality materials, making it the perfect choice to carry around and always be prepared.</p>\n\n<p>It does not paint varnish and does not leave any traces on light or dark varnishes. Extremely easy to use, no battery required.</p>\n\n<p>Its thickness gauge is water resistant and can be used in the rain and on a dirty car</p>\n\n<p>It&rsquo;s highly accurate due to its compatibility with a digital thickness gauge</p>\n\n<p>The colourful measurement scale will help you understand the state of the car you&rsquo;re testing, and it will easily reveal any hidden damages</p>\n\n<p>It is perfect for checking if a car has been involved in an accident and if the lacquer is original. The tester can be used by both professional business to assess the condition of the parts, and by a buyer to appraise the quality of a car.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>', 7, '1x Paint Coating Thickness Gauge Pen 100% Original Made in Poland', '0.4', 10, 10, 10, 766, 'Paint Coating Thickness Gauge Pen 100% Original Made in Poland', '6500', '4999', 6, '2019-07-09', '2019-08-31', 0, 0, 1, '00:00:00', '00:00:00', 'https://www.youtube.com/watch?v=o5StsiDZSsM', 'Paint Coating Thickness Gauge Pen 100% Original Made in Poland', 'Paint Coating Thickness Gauge Pen 100% Original Made in Poland', '2019-08-07', '12:39:52'),
(131, '72.255.40.171', 1, 1, 'Dollar Size Black Cow Leather Wallet For Men', 'dollar-size-black-cow-leather-wallet-for-men-', '<p>Dollar Size Black Cow Leather Wallet For Men</p>', '<p>Dollar Size Black Cow Leather Wallet For Men</p>', 7, '1xDollar Size Black Cow Leather Wallet For Men', '0.5', NULL, NULL, NULL, 689, 'Dollar Size Black Cow Leather Wallet For Men', '1400', '999', 6, '2019-07-08', '2019-07-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, NULL, NULL, '2019-08-07', '12:39:52'),
(132, '72.255.40.171', 1, 1, 'Scarf Clip Pins For Women -12 Pcs Set', 'scarf-clip-pins-for-women--12-pcs-set-', '<h2>Specifications of Scarf Clip Pins For Women -12 Pcs Set</h2>\n\n<ul>\n	<li>Brand :Rabi&#39;s Collection</li>\n	<li>Where to wear it :Formal</li>\n	<li>Color: Multicolor</li>\n	<li>Main Material : Steel</li>\n	<li>Material Family :Stainless Stee</li>\n</ul>', '<h2>Specifications of Scarf Clip Pins For Women -12 Pcs Set</h2>\n\n<ul>\n	<li>Brand :Rabi&#39;s Collection</li>\n	<li>Where to wear it :Formal</li>\n	<li>Color: Multicolor</li>\n	<li>Main Material : Steel</li>\n	<li>Material Family :Stainless Stee</li>\n</ul>', 7, '1x Specifications of Scarf Clip Pins For Women -12 Pcs Set', '0.5', NULL, NULL, NULL, 679, 'Specifications of Scarf Clip Pins For Women -12 Pcs Set', '999', '650', 6, '2019-07-07', '2019-07-07', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Specifications of Scarf Clip Pins For Women -12 Pcs Set', 'Specifications of Scarf Clip Pins For Women -12 Pcs Set', '2019-08-07', '12:39:52'),
(133, '72.255.40.171', 1, 1, 'SMART BOX X96 MINI QUAD CORE 2G+16G ORIGNAL CPU', 'smart-box-x96-mini-quad-core-2g16g-orignal-cpu-', '<h1>SMART BOX X96 MINI QUAD CORE 2G+16G ORIGNAL CPU</h1>\n\n<p>SMART BOX X96 MINI QUAD CORE 2G+16G ORIGNAL CPU</p>\n\n<p>Description:&nbsp;SMART BOX X96 MINI QUAD CORE 2G+16G ORIGNAL CPU -&nbsp;</p>\n\n<p>Detail:&nbsp;&nbsp;X96 MINI Is Based On&nbsp;The Latest Android 7.1.2 OS, With High Speed And Smooth, Designed To Turn Your Regular TV Into A Smart One. The Processor In This Chip Is An Amlogic S905W, Fully Supporting Premium 4K UHD Contents With A Powerful 64bit CPU And Mali-450 Penta-Core GPU Combination In Place To Handle 4K Graphics And Offers Strikingly Realistic Pictures. It Boasts DDR3 2GB RAM, And EMMC 16GB Flash, Advantageous In Performance, Security And Reliability, Ascribing To The EMMC Memory, Ultimately Delivering A Richer End-User Experience. You Can Go Directly To Let Your TV And X96 TV Box Are Connected Through An HDMI Cable And Set Up Your Home Cinema For The Best 4K X 2K&nbsp;UHD&nbsp;Multimedia Experience. Infrared Remote Control Powered By 2 X AAA Batteries. Supports 802.11 B/G/N Wireless Standard, Among Which 802.11b Has A Maximum Bandwidth Of 11 Mbps, 802.11g 54 Mbps And 802.11n 150 Mbps. While Your Average Media Box Might Only Accept 1080P Video Playback, This Gadget Plays Just About Any 4K Sources You Could Throw At It. Furthermore, It Moves Out Into Reality The Fantasy Of VP9 Hardware Decoding Alongside The H.265. Like Any Android Based Media Players, It Brings, Aside From The Preinstalled KODI 17.3, Full Access To Google Play Store Apps Like Neflix, Vudu, Skype, Picasa, Flicker, Youtube, Facebook, Etc</p>', '<h1>SMART BOX X96 MINI QUAD CORE 2G+16G ORIGNAL CPU</h1>\n\n<p>SMART BOX X96 MINI QUAD CORE 2G+16G ORIGNAL CPU</p>\n\n<p>Description:&nbsp;SMART BOX X96 MINI QUAD CORE 2G+16G ORIGNAL CPU -&nbsp;</p>\n\n<p>Detail:&nbsp;&nbsp;X96 MINI Is Based On&nbsp;The Latest Android 7.1.2 OS, With High Speed And Smooth, Designed To Turn Your Regular TV Into A Smart One. The Processor In This Chip Is An Amlogic S905W, Fully Supporting Premium 4K UHD Contents With A Powerful 64bit CPU And Mali-450 Penta-Core GPU Combination In Place To Handle 4K Graphics And Offers Strikingly Realistic Pictures. It Boasts DDR3 2GB RAM, And EMMC 16GB Flash, Advantageous In Performance, Security And Reliability, Ascribing To The EMMC Memory, Ultimately Delivering A Richer End-User Experience. You Can Go Directly To Let Your TV And X96 TV Box Are Connected Through An HDMI Cable And Set Up Your Home Cinema For The Best 4K X 2K&nbsp;UHD&nbsp;Multimedia Experience. Infrared Remote Control Powered By 2 X AAA Batteries. Supports 802.11 B/G/N Wireless Standard, Among Which 802.11b Has A Maximum Bandwidth Of 11 Mbps, 802.11g 54 Mbps And 802.11n 150 Mbps. While Your Average Media Box Might Only Accept 1080P Video Playback, This Gadget Plays Just About Any 4K Sources You Could Throw At It. Furthermore, It Moves Out Into Reality The Fantasy Of VP9 Hardware Decoding Alongside The H.265. Like Any Android Based Media Players, It Brings, Aside From The Preinstalled KODI 17.3, Full Access To Google Play Store Apps Like Neflix, Vudu, Skype, Picasa, Flicker, Youtube, Facebook, Etc</p>', 0, 'tv', '0.4', 10, 10, 10, 679, 'x96mini', '7000', '5450', 12, '2019-07-07', '2019-07-09', 0, 0, 1, '00:00:00', '00:00:00', NULL, NULL, NULL, '2019-08-07', '12:39:52'),
(134, '72.255.40.171', 1, 1, 'HDMI cable', 'hdmi-cable-', '<p>Specification: Brand Name:YUNTENG Package:Yes Type:Professional Tripod Model Number:5218 Weight (g):620 Max Extened Length (mm):1360 Material:Aluminum Use:Digital Camera Folded Length (mm):420 Description: Camera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm</p>', '<p>Specification: Brand Name:YUNTENG Package:Yes Type:Professional Tripod Model Number:5218 Weight (g):620 Max Extened Length (mm):1360 Material:Aluminum Use:Digital Camera Folded Length (mm):420 Description: Camera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm</p>', 7, '1 x Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', '0.4', 10, 10, 10, 679, 'Yunteng VCT5218 Cam&Mob Tripod Black', '4250', '2700', 24, '2019-07-04', '2019-07-11', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', 'Specification:\n\nBrand Name:YUNTENG\n\nPackage:Yes\n\nType:Professional Tripod\n\nModel Number:5218\n\nWeight (g):620\n\nMax Extened Length (mm):1360\n\nMaterial:Aluminum\n\nUse:Digital Camera\n\nFolded Length (mm):420\n\nDescription:\n\nCamera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm', '2019-08-07', '12:39:52'),
(135, '72.255.40.171', 1, 1, 'TRIPOD CAMERA STAND 3120', 'tripod-camera-stand-3120-', '<ul>\n	<li style=\"margin-left: 15pt; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">It Is The Best Choices For Outdoor Photograph Activities. Not Only Its Lightweight, But Also Its Flexible Handling, Which Makes Your Trip More Enjoyable.&nbsp;</span></span></span></span></span></li>\n	<li style=\"margin-left: 15pt; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">Pull-Out Button Angling Adjustment, Ensuring Single Adjust Of Each Leg.</span></span></span></span></span></li>\n	<li style=\"margin-left: 15pt; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">Typical Regulating Design Of Elevator, Offering The Different Damping Effect Depends On The Weight Of Your Camera.</span></span></span></span></span></li>\n	<li style=\"margin-left: 15pt; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">3-Section Center Column, Realizing Your Lowest Angle Shooting, Non Silp Rubber Feet.</span></span></span></span></span></li>\n	<li style=\"margin-left: 15pt; margin-right: 0px; text-align: left;\"><span style=\"font-size:12px\"><span style=\"color:#000000\"><span style=\"font-family:&quot;Open Sans&quot;,sans-serif,Arial,Geneva,sans-serif\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial,sans-serif\">Flip Leg Locking System, Giving A More Convenient Leg Handling</span></span></span></span></span></li>\n</ul>', '<p>TRIPOD CAMERA STAND 3120 -&nbsp;Professional Tripod With 3-Way Panhead For Digital Cameras And Camcorders DV. Get Rid Of The Shakes With This Trusty 40.5-Inch Aluminum Tripod! This Tripod Features Aluminum Construction With Black Plastic Fittings, Making It Lightweight For Portability, And The Brace And Non-Slip Feet Keep It Standing Securely In Place.</p>', 7, '1x TRIPOD CAMERA STAND 3120', '0.4', 10, 10, 10, 679, 'TRIPOD CAMERA STAND 3120', '1200', '650', 24, '2019-07-13', '2019-10-31', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', 'Specification:\n\nBrand Name:YUNTENG\n\nPackage:Yes\n\nType:Professional Tripod\n\nModel Number:5218\n\nWeight (g):620\n\nMax Extened Length (mm):1360\n\nMaterial:Aluminum\n\nUse:Digital Camera\n\nFolded Length (mm):420\n\nDescription:\n\nCamera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm', '2019-08-07', '12:39:52');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(136, '72.255.40.171', 1, 1, 'AERO BULL BLUETOOTH SPEAKER GOOD QUALITY', 'aero-bull-bluetooth-speaker-good-quality-', '<p>Specification: Brand Name:YUNTENG Package:Yes Type:Professional Tripod Model Number:5218 Weight (g):620 Max Extened Length (mm):1360 Material:Aluminum Use:Digital Camera Folded Length (mm):420 Description: Camera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm</p>', '<p>Specification: Brand Name:YUNTENG Package:Yes Type:Professional Tripod Model Number:5218 Weight (g):620 Max Extened Length (mm):1360 Material:Aluminum Use:Digital Camera Folded Length (mm):420 Description: Camera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm</p>', 7, '1 x Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', '0.4', 10, 10, 10, 679, 'Yunteng VCT5218 Cam&Mob Tripod Black', '4250', '2700', 24, '1970-01-01', '1970-01-01', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', 'Specification:\n\nBrand Name:YUNTENG\n\nPackage:Yes\n\nType:Professional Tripod\n\nModel Number:5218\n\nWeight (g):620\n\nMax Extened Length (mm):1360\n\nMaterial:Aluminum\n\nUse:Digital Camera\n\nFolded Length (mm):420\n\nDescription:\n\nCamera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm', '2019-08-07', '12:39:52'),
(137, '72.255.40.171', 1, 1, 'Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', 'yunteng-vct5218-professional-camera-tripod-portable-for-camera-and-mobile-phones-photograph---black-', '<p>Specification: Brand Name:YUNTENG Package:Yes Type:Professional Tripod Model Number:5218 Weight (g):620 Max Extened Length (mm):1360 Material:Aluminum Use:Digital Camera Folded Length (mm):420 Description: Camera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm</p>', '<p>Specification: Brand Name:YUNTENG Package:Yes Type:Professional Tripod Model Number:5218 Weight (g):620 Max Extened Length (mm):1360 Material:Aluminum Use:Digital Camera Folded Length (mm):420 Description: Camera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm</p>', 7, '1 x Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', '0.4', 10, 10, 10, 679, 'Yunteng VCT5218 Cam&Mob Tripod Black', '4250', '2675', 24, '2019-07-15', '2019-07-30', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Yunteng VCT5218 Professional Camera Tripod Portable For Camera And Mobile Phones Photograph - Black', 'Specification:\n\nBrand Name:YUNTENG\n\nPackage:Yes\n\nType:Professional Tripod\n\nModel Number:5218\n\nWeight (g):620\n\nMax Extened Length (mm):1360\n\nMaterial:Aluminum\n\nUse:Digital Camera\n\nFolded Length (mm):420\n\nDescription:\n\nCamera placement for taking pictures and videos when you have it. The YUNTENG VCT-5218 portable tripod lets you shoot more efficiently and without having to hold your camera all the time. Compact, lightweight, light weight aluminum and PVC plastic tripods that are just 42cm long and extend up to 136cm', '2019-08-07', '12:39:52'),
(138, '72.255.40.171', 1, 1, 'Octupus Flexible Ball Head Tripod MZ-305 - Black', 'octupus-flexible-ball-head-tripod-mz-305---black-', '<p>Specification: Name: Fotopro Flexible Tripod Model:UFO2 Color: Black + Red Activity: Photography, Wedding Shoots, Casual Photography, Hobby Photography, Sports &amp; Action Photography, Outdoor Portrait Shoots, Cinematography, Macro Photography, Landscape Photography, Street Photography Weight (kgs): 0.2270 Dimensions: 285 x 52 x 52mm Material: Rubber and Stainless Steel Brand: Fotopro Capacity: 800 grams</p>', '<p>Description: Flexible tripod Legs can be curved randomly for all kinds of places by attach anywhere for better creativity.Compatibility with camera, any smartphones, Gopro, webcam, etc.Universal Phone clip and 1/4 screw interface - Compatible with all iPhone, Samsung and most Other Smartphones up to 3.5 inches wide.The adjustable ball head allows the camera,smartphone etc to adjust to the proper angle,the max loading can be 800g.Waterproof legs made of special materials perfect for both indoor and outdoor use.The materials used in making the tripod include RUBBER and stainless steel.Upon purchase, the package will include 1 tripod, the Gopro adapter and connection adapter.The legs can not be broken, regardless of the sequence and the tripod can be attached to the leg for some degree of tension.The angles of the adjustable spherical heads are adjusted by simply turning the locking knob of the device hence allowing the smartphones to adjust to the correct angle.The 1/4 universal screw camera is easily connected and attached directly to the digital camera without mirror and the panoramic camera 360.GoPro camera and phone can also be used with the phone holder and Gopro adapter. DURABLE AND RESISTANT: Fotopro Flexible tripod made with high-density rubber-coated Robust legs which makes it more sturdy and durable , It can be bent arbitrarily and attached anywhere. (sloping or slick surfaces). you can wrap it anywhere you wan HIGH COMPATIBILITY: The phone Tripod with 1/4&#39;&#39; screw is fully compatible with DSLR Cam Gopro Action Cam DSLR machines . WATERPROOF &amp; FLEXIBLE : The strong flexible legs can easily wrap around the tree branch, fence, bench, bicycle, just shake the tripod as you like. allowing you to capture different angles on your trip SWIVEL HEAD AND TERMINAL - The smartphone tripod with ball head ensures a 360 &deg; shooting perspective allowing you to capture the perfect shot. You can simply take horizontal or vertical photos by rotating the phone clamp and selecting the cellular mode LIGHT &amp; PORTABLE: The desk tripod stand weighs only 0.28kg and 28 cm tall and max loading 800g.it is easy to storage and travel comfort. The adjustable and quick release phone mount grasps to your phone or camera sturdy and won&#39;t fall out, and the tripod stick is suitable for Android and iOS devices up to 3.5 inches and no need to download APP,It lets you start/stop recording videos as well as take pictures,You just switch from camera mode to video mode. Then press button to start and stop</p>', 7, '1 x Octupus Flexible Ball Head Tripod MZ-305 - Black', '0.2', 10, 10, 10, 679, 'Octupus Tripod MZ-305 - Black', '2000', '1300', 24, '2019-07-07', '2019-07-10', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Octupus Flexible Ball Head Tripod MZ-305 - Black', 'Specification:\n\nName: Fotopro Flexible Tripod \n\nModel:UFO2\n\nColor: Black + Red\n\nActivity: Photography, Wedding Shoots, Casual Photography, Hobby Photography, Sports & Action Photography, Outdoor Portrait Shoots, Cinematography, Macro Photography, Landscape Photography, Street Photography\n\nWeight (kgs): 0.2270\n\nDimensions: 285 x 52 x 52mm\n\nMaterial: Rubber and Stainless Steel\n\nBrand: Fotopro\n\nCapacity: 800 grams', '2019-08-07', '12:39:52'),
(140, '72.255.40.171', 1, 1, 'Laptop Sleeve 13 Inch Premium Soft - Silver', 'laptop-sleeve-13-inch-premium-soft---silver-', '<p>Specification: Gender: Unisex Pattern Type: Solid Style: Casua lType: Laptop Sleeve Applicable Models: Universal Laptop 13.3 Style: Liner Sleeve Material: Felt Color: Silver Description: Premium felt and exquisite cut design to protect your Laptop from dust and scratches. Fashionable and elegant appearance is popular with many people. Especially designed for 13.3&quot; LaptopsPremium felt, soft sleeve case to protect your Laptop from scratches. Fastener Tape closure for best security and easy opening. Slim design, portable and convenient to carry no matter where you go. Fashionable and elegant appearance, perfect gift for friends or families.</p>', '<p>Specification: Gender: Unisex Pattern Type: Solid Style: Casua lType: Laptop Sleeve Applicable Models: Universal Laptop 13.3 Style: Liner Sleeve Material: Felt Color: Silver Description: Premium felt and exquisite cut design to protect your Laptop from dust and scratches. Fashionable and elegant appearance is popular with many people. Especially designed for 13.3&quot; LaptopsPremium felt, soft sleeve case to protect your Laptop from scratches. Fastener Tape closure for best security and easy opening. Slim design, portable and convenient to carry no matter where you go. Fashionable and elegant appearance, perfect gift for friends or families.</p>', 7, '1 x Laptop Sleeve 13 Inch Premium Soft - Silver', '0.1', 10, 10, 10, 679, 'Laptop Sleeve 13\" Soft - Silver', '900', '600', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Sleeve 13 Inch Premium Soft - Silver', 'Specification:\n\nGender: Unisex\n\nPattern Type: Solid\n\nStyle: Casua\n\nlType: Laptop Sleeve\n\nApplicable Models: Universal Laptop 13.3\n\nStyle: Liner Sleeve\n\nMaterial: Felt\n\nColor: Silver\n\nDescription:\n\nPremium felt and exquisite cut design to protect your Laptop from dust and scratches.\n\nFashionable and elegant appearance is popular with many people.\n\nEspecially designed for 13.3\" LaptopsPremium felt, soft sleeve case to protect your Laptop from scratches.\n\nFastener Tape closure for best security and easy opening.\n\nSlim design, portable and convenient to carry no matter where you go.\n\nFashionable and elegant appearance, perfect gift for friends or families.', '2019-08-07', '12:39:52'),
(141, '72.255.40.171', 1, 1, 'Neoprene Handle Sleeve For Laptop 15.6 Inch - Black', 'neoprene-handle-sleeve-for-laptop-156-inch---black-', '<p>Specification: color: Black Compatible Size: 15.6&quot; closure Type: Zipper Carrying Type: Handel Description: Compatible: All Laptop 15.6 Inch PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage. WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', '<p>Specification: color: Black Compatible Size: 15.6&quot; closure Type: Zipper Carrying Type: Handel Description: Compatible: All Laptop 15.6 Inch PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage. WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', 7, '1 x Neoprene Handle Sleeve For Laptop 15.6 Inch - Black', '0.4', 10, 10, 10, 679, 'Neoprene Handle Sleeve Laptop 15.6\" Black', '1500', '900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Neoprene Handle Sleeve For Laptop 15.6 Inch - Black', 'Specification:\n\ncolor: Black\n\nCompatible Size: 15.6\"\n\nclosure Type: Zipper\n\nCarrying Type: Handel\n\nDescription:\n\nCompatible: All Laptop 15.6 Inch \n\nPROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage.\n\n WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain.\n\nSHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop.\n\nLIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.', '2019-08-07', '12:39:52'),
(142, '72.255.40.171', 1, 1, 'BOYA BY-M1 Omnidirectional Lavalier Microphone for Camera & Mobile Phone', 'boya-by-m1-omnidirectional-lavalier-microphone-for-camera--mobile-phone-', '<ul>\n	<li>\n	<p>Clip-On Mic for Smartphones, DSLR, Camcorders, Audio recorders, PC etc.</p>\n	</li>\n	<li>\n	<p>Superb sound for presentations and video recording.</p>\n	</li>\n	<li>\n	<p>Omni-directional condenser microphone.</p>\n	</li>\n	<li>\n	<p>High-quality condenser is ideal for video use. Low handling noise.</p>\n	</li>\n	<li>\n	<p>Includes lapel clip, foam windscreen, 3.5mm to 6.3mm adapter.</p>\n	</li>\n</ul>', '<ul>\n	<li>\n	<p>Transducer: Electret Condenser</p>\n	</li>\n	<li>\n	<p>Polar pattern: Omni-directional&nbsp;</p>\n	</li>\n	<li>\n	<p>Frequency Range: 65Hz ~ 18KHz.</p>\n	</li>\n	<li>\n	<p>Signal/Noise: 74dB SPL.</p>\n	</li>\n	<li>\n	<p>Sensitivity: -30dB +/-3dB / 0dB=1V/Pa, 1kHz.</p>\n	</li>\n	<li>\n	<p>Output Impedance: 1000 Ohm or less</p>\n	</li>\n	<li>\n	<p>Connector: 3.5mm (1/8&rdquo;) 4-pole gold plug.</p>\n	</li>\n	<li>\n	<p>Battery Type: LR44 (included)</p>\n	</li>\n	<li>\n	<p>Cable length: Approx. 5.7m / 18.7ft</p>\n	</li>\n</ul>', 7, '1x BOYA BY-M1 Omnidirectional Lavalier Microphone for Camera & Mobile Phone', '0.1', 10, 10, 10, 679, 'BOYA BY-M1 Omnidirectional Lavalier Microphone for Camera & Mobile Phone', '1999', '1699', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'BOYA BY-M1 Omnidirectional Lavalier Microphone for Camera & Mobile Phone', 'Specification:\n\nBrand: Remax\n\nItem: Mobile Ring Holder\n\nColor: Black\n\nMaterial: Metal + 3M glue\n\nRing Size: 1.8*1.6*1.6 inches (46*4*4mm)\n\nHook Size: 0.9 * 1.2 * 0.35 inches (22 * 31 * 9mm)\n\nFunction: Mini Car Holder, Mobile Phone Bracket, Portable Hook 360 Degree Support.', '2019-08-07', '12:39:52'),
(143, '72.255.40.171', 1, 1, 'AIR MOUSE JS6/T6 KEYBOARD WITH TOUCH PAD', 'air-mouse-js6t6-keyboard-with-touch-pad-', '<p>Specification: Brand Name:Remax Use:Desk Magnetic:No Material:Plastic Charger:No Compatible Brand:Universal Has Speaker:No Model Number:X2 Package Weight:0.06kg (0.13lb.) Package Size:19cm x 9cm x 2cm (7.48in x 3.54in x 0.79in) feature:Repeated use function:Portable Holder For Tablet PC Weight:10g</p>', '<p>Description: Ergonomic Design: This laptop stand can assist you in correcting posture, alleviating the fatigue of eyes and relieving the stress of neck to prevent the occurrence of spondylosis. Heat dissipation principle: The stand could increase air circulation, improve the thermal performance of the metal shell at the bottom of laptops to extend the life of the notebook. Foldable and Portable: Easily slip this compact laptop stand in your bag and take from home, to office, to store, and back. You can adjust the angle casually to get the best performance for using. Micro-suction Technology: Nano-absorbing technology at the products&#39; bottom can paste and remove freely without leaving any residue or damaged the products. Compatible with Apple Macbook Pro,Macbook Air,Microsoft Surface and other laptops with depths less than 15 inches,also applicable to iPhone iPad or other smartphone tablet.we are the exclusive distributor of this item-back guarantee is what we offer.</p>', 7, 'AIR MOUSE JS6/T6 KEYBOARD WITH TOUCH PAD', '0.2', 10, 10, 10, 679, 'Remax Laptop Cooling Stand X2 RT-W02 - Black', '800', '600', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Laptop Cooling Stand X2 RT-W02 - Black', 'Specification:\n\nBrand Name:Remax\n\nUse:Desk\n\nMagnetic:No\n\nMaterial:Plastic\n\nCharger:No\n\nCompatible Brand:Universal\n\nHas Speaker:No\n\nModel Number:X2\n\nPackage Weight:0.06kg (0.13lb.)\n\nPackage Size:19cm x 9cm x 2cm (7.48in x 3.54in x 0.79in)\n\nfeature:Repeated use\n\nfunction:Portable Holder For Tablet PC\n\nWeight:10g', '2019-08-07', '12:39:52'),
(144, '72.255.40.171', 1, 1, 'BOYA BY-M1 Omnidirectional Lavalier Microphone for Camera & Mobile Phone', 'boya-by-m1-omnidirectional-lavalier-microphone-for-camera--mobile-phone-', '<p>Specification: Clip-On Mic for Smartphones, DSLR, Camcorders, Audio recorders, PC etc. Superb sound for presentations and video recording. Omni-directional condenser microphone. High-quality condenser is ideal for video use. Low handling noise. Includes lapel clip, foam windscreen, 3.5mm to 6.3mm adapter. Description: Transducer: Electret Condenser Polar pattern: Omni-directional Frequency Range: 65Hz ~ 18KHz. Signal/Noise: 74dB SPL. Sensitivity: -30dB +/-3dB / 0dB=1V/Pa, 1kHz. Output Impedance: 1000 Ohm or less Connector: 3.5mm (1/8&rdquo;) 4-pole gold plug. Battery Type: LR44 (not included) Cable length: Approx. 5.7m / 18.7ft Using the microphone - For Smartphone Switch off the microphone. Slide the ON/OFF up to OFF/Smartphone. The power is shut down. - For DSLR, Camcorders, Audio recorders, PC ect Switch on the microphone. Slide the ON/OFF up to ON.</p>', '<p>Specification: Clip-On Mic for Smartphones, DSLR, Camcorders, Audio recorders, PC etc. Superb sound for presentations and video recording. Omni-directional condenser microphone. High-quality condenser is ideal for video use. Low handling noise. Includes lapel clip, foam windscreen, 3.5mm to 6.3mm adapter. Description: Transducer: Electret Condenser Polar pattern: Omni-directional Frequency Range: 65Hz ~ 18KHz. Signal/Noise: 74dB SPL. Sensitivity: -30dB +/-3dB / 0dB=1V/Pa, 1kHz. Output Impedance: 1000 Ohm or less Connector: 3.5mm (1/8&rdquo;) 4-pole gold plug. Battery Type: LR44 (not included) Cable length: Approx. 5.7m / 18.7ft Using the microphone - For Smartphone Switch off the microphone. Slide the ON/OFF up to OFF/Smartphone. The power is shut down. - For DSLR, Camcorders, Audio recorders, PC ect Switch on the microphone. Slide the ON/OFF up to ON.</p>', 7, '1 x BY-M1 Microphone1 x Lapel Clip1 x Foam Windscreen1 x Adapter1 x User Manual (English)', '0.3', 10, 10, 10, 679, 'BOYA BY-M1 Microphone', '2200', '1800', 24, '1970-01-01', '1970-01-01', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'BOYA BY-M1 Omnidirectional Lavalier Microphone for Camera & Mobile Phone', 'Specification:\n\nClip-On Mic for Smartphones, DSLR, Camcorders, Audio recorders, PC etc.\n\nSuperb sound for presentations and video recording.\n\nOmni-directional condenser microphone.\n\nHigh-quality condenser is ideal for video use. Low handling noise.\n\nIncludes lapel clip, foam windscreen, 3.5mm to 6.3mm adapter.\n\nDescription:\n\nTransducer: Electret Condenser\n\nPolar pattern: Omni-directional \n\nFrequency Range: 65Hz ~ 18KHz.\n\nSignal/Noise: 74dB SPL.\n\nSensitivity: -30dB +/-3dB / 0dB=1V/Pa, 1kHz.\n\nOutput Impedance: 1000 Ohm or less\n\nConnector: 3.5mm (1/8”) 4-pole gold plug.\n\nBattery Type: LR44 (not included)\n\nCable length: Approx. 5.7m / 18.7ft\n\nUsing the microphone\n\n- For Smartphone\n\nSwitch off the microphone. Slide the ON/OFF up to OFF/Smartphone.\n\nThe power is shut down.\n\n- For DSLR, Camcorders, Audio recorders, PC ect\n\nSwitch on the microphone. Slide the ON/OFF up to ON.', '2019-08-07', '12:39:52'),
(145, '72.255.40.171', 1, 1, 'Gorilla Camera And Mobile Tripod Stand 811 - Black', 'gorilla-camera-and-mobile-tripod-stand-811---black-', '<p>Specification: Name: Gorilla Tripod Color: Black&amp;White Capacity: Camera &amp; Mobile Weight: 225g Weight Capacity: 3000g Size: 250 x 60 x 60mm</p>', '<p>Discription: Get crisper shots with this durable, lightweight tripod. The rubberized foot grips and wrappable legs will secure professional cameras up to 6.6lbs. as they hold their stance to any viable surface. CAPTURE SUPERIOR PERSPECTIVES. Look at life from a different point of view with the GorillaPod SLR Zoom Tripod. Easy maneuverability and precise positioning with 360 panning, to expand the range of shots you can capture. Get ultra-stable and find your grounding with over two dozen leg joints and German TPE joins, so you&rsquo;ll never have a shaky shot. The GorillaPod SLR Zoom can fiercely secure equipment up to 6.6 lbs., making the impossible shot, possible. Take this lightweight SLR and mirrorless camera tripod anywhere. The quick release plate simply stays connected to your camera, so you can interchange with ease. Hold on tight with the 1/4&rdquo;-20 standard tripod mount and 3/8&rdquo; adapter. Made of durable Japanese medical-grade ABS plastic, stainless steel, and German TPE, it&rsquo;s made for the wear and tear of everyday life, or the rigor of adventure. Pair it with your mirrorless camera or SLR to capture the worthy moments of life.</p>', 7, '1 x Gorilla Camera And Mobile Tripod Stand 811 - Black', '0.3', 10, 10, 10, 679, 'Gorilla Camera&Mobile Tripod 811 - Black', '900', '650', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Gorilla Camera And Mobile Tripod Stand 811 - Black', 'Specification:\n\nName: Gorilla Tripod \n\nColor: Black&White\n\nCapacity: Camera & Mobile\n\nWeight: 225g\n\nWeight Capacity: 3000g\n\nSize: 250 x 60 x 60mm', '2019-08-07', '12:39:52'),
(146, '72.255.40.171', 1, 1, 'Aspor 10000mAh Power Bank A345 - Black', 'aspor-10000mah-power-bank-a345---black-', '<p>Specification: Brand: Aspor Model: A345 Capacity: 10000mAh Suitable For Charging: Mobile &amp; Tablets Design: Standard Charging Type: Stamdard Technology: Lithium-ion Charge indicator: Yes Overload protection: Yes</p>', '<p>Description: Stylish device from the manufacturer Aspor external battery A345, black color, the volume of 10000 mAh, fully compatible with Apple devices, etc. It is possible to charge several devices at once. The external battery is charged from the micro-USB connector. The kit includes a battery and a USB cable.Power Bank - External batteries, reliable power source, which will become a good friend for travelers, business people and active people. Talk on the phone, listen to music, play, take pictures and shoot more. Power Bank is a portable backup battery that will charge your smartphone, mobile phone, iPhone, iPod, iPad, MP3 player, PDA, PSP, digital camera, Bluetooth headsets and there when the traditional charging method is not available.</p>', 7, '1 x Aspor 10000mAh Power Bank A345 - Black', '0.2', 10, 10, 10, 679, 'Aspor 10000mAh P-Bank A345 - Black', '1800', '1500', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Aspor 10000mAh Power Bank A345 - Black', 'Specification:\n\nBrand: Aspor\n\nModel: A345\n\nCapacity: 10000mAh\n\nSuitable For Charging: Mobile & Tablets\n\nDesign: Standard\n\nCharging Type: Stamdard\n\nTechnology: Lithium-ion\n\nCharge indicator: Yes\n\nOverload protection: Yes', '2019-08-07', '12:39:52'),
(147, '72.255.40.171', 1, 1, 'Frosted Fabric Macbook Bag 13.3 Air-Pro-Retina-Touch Bar - Grey', 'frosted-fabric-macbook-bag-133-air-pro-retina-touch-bar---grey-', '<p>Butterfly design opens flat to easily pass through airport security Accessory organizer pockets with dedicated iPad sleeve Detachable padded shoulder strap</p>', '<p>Butterfly design opens flat to easily pass through airport security Accessory organizer pockets with dedicated iPad sleeve Detachable padded shoulder strap</p>', 7, 'Frosted Fabric Macbook Bag 13.3 Air-Pro-Retina-Touch Bar - Grey', '0.4', 10, 10, 10, 679, 'Frosted Fabric Macbook Bag 13.3 A/P/R/TB-Grey', '2500', '1600', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Frosted Fabric Macbook Bag 13.3 Air/Pro/Retina/Touch Bar - Grey', 'Butterfly design opens flat to easily pass through airport security\n\nAccessory organizer pockets with dedicated iPad sleeve\n\nDetachable padded shoulder strap', '2019-08-07', '12:39:52'),
(148, '72.255.40.171', 1, 1, 'Brinch BW-235 Laptop Bag 15.6 Inch - Blue', 'brinch-bw-235-laptop-bag-156-inch---blue-', '<p>Brand: Brinch Product number: BW-235 Product Category: Hand/shoulder bag Product Color: Blue External Material: Nylon Inner Material: Polyester Accommodate Laptop Size: 15.6 inches External Dimensions (length, width, height and mm): 400*290*40 Spacer Size (length, width and height mm): 380*270*35 Product Weight (kg): 0.72 Closed Way: Zipper Internal Structure: Sandwich Bag Waterproof Strength: Water Repellent</p>', '<p>Brand: Brinch Product number: BW-235 Product Category: Hand/shoulder bag Product Color: Blue External Material: Nylon Inner Material: Polyester Accommodate Laptop Size: 15.6 inches External Dimensions (length, width, height and mm): 400*290*40 Spacer Size (length, width and height mm): 380*270*35 Product Weight (kg): 0.72 Closed Way: Zipper Internal Structure: Sandwich Bag Waterproof Strength: Water Repellent</p>', 7, '1 x Brinch BW-235 Laptop Bag 15.6 Inch - Blue', '0.4', 10, 10, 10, 679, 'Brinch BW-235 Laptop Bag 15.6\"Blue', '3100', '2900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Brinch BW-235 Laptop Bag 15.6 Inch - Blue', 'Brand: Brinch\n\nProduct number: BW-235\n\nProduct Category: Hand/shoulder bag\n\nProduct Color: Blue\n\nExternal Material: Nylon\n\nInner Material: Polyester\n\nAccommodate Laptop Size: 15.6 inches\n\nExternal Dimensions (length, width, height and mm): 400*290*40\n\nSpacer Size (length, width and height mm): 380*270*35\n\nProduct Weight (kg): 0.72\n\nClosed Way: Zipper\n\nInternal Structure: Sandwich Bag\n\nWaterproof Strength: Water Repellent', '2019-08-07', '12:39:52'),
(149, '72.255.40.171', 1, 1, 'Brinch BW-233 Waterproof Laptop Bag 15.6 Inch - Brown', 'brinch-bw-233-waterproof-laptop-bag-156-inch---brown-', '<p>Specification: Very stylish design with Coating Canvas materials,lightweight,durable,well easy clean,anti-scratch &amp; waterproof,keeping inside items dry against from splashing,even on rainy day. Good choice for everyday use ( work / business travel / college...) Laptop Compartment padded with soft thick padding &amp; fluffy lining,protects laptop very well from accidental bump,shock,scratch. Reasonable design with Enough capacity to organize daily essentials easily &amp; conveniently,like laptop,ipad,charger,adapter,mouse,cables,books,pens,phone,wallet etc. On Top are 2 x Hidden-type &quot;Quick-access&quot; Pockets,providing a very quick &amp; easy access to frequently-used small items,like phone,lighter.On Front are 1x horizontal-access pocket &amp; 1x vertical-access pocket,that is more convenient to hold different items in your easy way. With the removable adjustable soft padded Shoulder Strap or Handles,carry in more comfort,even on heave duty for a long time, also can be firmly fixed over trolley suitcase on travel with the Luggage Strap on back.</p>', '<p>Description: With unique design,this waterproof laptop bag has been created by BRINCH after doing a large amount of market research. It is not only a very practical &amp; durable messenger bag with various pockets to organize daily essentials easily &amp; conveniently,but also can be cleaned easily.This BRINCH Laptop Messenger Bag,Good choice for everyday work or business travel. Made of high quality Coating Canvas,very durable,well easy clean,anti-scratch &amp; waterproof,keeps inside items dry on rainy day. Lightweight but Multi-compartment Design with various pockets,not bulky but has enough capacity to hold daily essentials with ease. On front,a horizontal-access pocket &amp; a vertical-access pocket is convenient to hold different items. 2xHidden-type &quot;Quick-access&quot; Pockets are ideally designed on top,providing a very quick &amp; easy access to frequently-used small items,like phone,lighter. Soft thick pad with fluffy lining to protect laptop much better. Luggage Strap on back can be firmly fixed over trolley suitcase on travel. Comes with a removable adjustable soft padded shoulder strap &amp; handles,carry in more comfort,even on heave duty for a long time. Material:High Quality Coating Canvas. Front Pockets:2xBig zippered pockets with pen pockets,phone pocket inside. Main Compartment:1xLaptop Compartment of soft thick padding with fluffy lining;1xBig Accessory Compartment. Top Pockets:2xNon-zippered pockets below handles. Luggage Strap:sturdy on back. Dual Handles:well padded and sturdy. 1xDetachable Shoulder Strap.</p>', 7, '1 x Brinch BW-233 Waterproof Laptop Bag 15.6 Inch - Brown', '0.4', 10, 10, 10, 679, 'Brinch BW-233 Laptop Bag 15.6\"Brown', '3200', '3100', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Brinch BW-233 Waterproof Laptop Bag 15.6 Inch - Brown', 'Specification:\n\nVery stylish design with Coating Canvas materials,lightweight,durable,well easy clean,anti-scratch & waterproof,keeping inside items dry against from splashing,even on rainy day. Good choice for everyday use ( work / business travel / college...)\n\nLaptop Compartment padded with soft thick padding & fluffy lining,protects laptop very well from accidental bump,shock,scratch. Reasonable design with Enough capacity to organize daily essentials easily & conveniently,like laptop,ipad,charger,adapter,mouse,cables,books,pens,phone,wallet etc.\n\nOn Top are 2 x Hidden-type \"Quick-access\" Pockets,providing a very quick & easy access to frequently-used small items,like phone,lighter.On Front are 1x horizontal-access pocket & 1x vertical-access pocket,that is more convenient to hold different items in your easy way.\n\nWith the removable adjustable soft padded Shoulder Strap or Handles,carry in more comfort,even on heave duty for a long time, also can be firmly fixed over trolley suitcase on travel with the Luggage Strap on back.', '2019-08-07', '12:39:52'),
(150, '72.255.40.171', 1, 1, 'Laptop Slim Bag 14.6 - Grey', 'laptop-slim-bag-146---grey-', '<p>Compatible: All Laptop Display 14&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', '<p>Compatible: All Laptop Display 14&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', 7, '1 x Laptop Slim Bag 14.6 - Grey', '0.4', 10, 10, 10, 679, 'Laptop Slim Bag 14.6 - Grey', '3100', '2000', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Slim Bag 14.6 - Grey', 'Compatible: All Laptop Display 14\'\'\n\nPROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage\n\nWATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain.\n\nSHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop.\n\nLIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.', '2019-08-07', '12:39:52'),
(151, '72.255.40.171', 1, 1, 'Laptop Slim Bag 14.6 - Black', 'laptop-slim-bag-14.6---black-679', '<p>Discription: Laptop Bags for Dell HP Asus Acer Lenovo Macbook 14.6 inch Soft Cover - Black Compatible: All Laptop Display 14&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', '<p>Discription: Laptop Bags for Dell HP Asus Acer Lenovo Macbook 14.6 inch Soft Cover - Black Compatible: All Laptop Display 14&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', 7, '1 x Laptop Slim Bag 14.6 - Black', '0.4', 10, 10, 10, 679, 'Laptop Slim Bag 14.6 - Black', '3100', '2000', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Slim Bag 14.6 - Black', 'Discription:\r\n\r\nLaptop Bags for Dell HP Asus Acer Lenovo Macbook 14.6 inch Soft Cover - Black\r\n\r\nCompatible: All Laptop Display 14\'\'\r\n\r\nPROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage\r\n\r\nWATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain.\r\n\r\nSHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop.\r\n\r\nLIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.', '2019-08-07', '12:49:50'),
(152, '72.255.40.171', 1, 1, 'Frosted Fabric Office , Hand And Totes Casual 15.6 Inch Shoulder Bag - Grey', 'frosted-fabric-office--hand-and-totes-casual-156-inch-shoulder-bag---grey-', '<p>Specification: Pattern Type:Solid Style:Casual Gender:Unisex Type:Laptop Bag Closure Type:Zipper Material:Frosted Fabric Style:Laptop Cases Color:Dark Gray Features:Shockproof Fabric:Frosted</p>', '<p>Specification: Pattern Type:Solid Style:Casual Gender:Unisex Type:Laptop Bag Closure Type:Zipper Material:Frosted Fabric Style:Laptop Cases Color:Dark Gray Features:Shockproof Fabric:Frosted</p>', 7, '1 x Frosted Fabric Office , Hand And Totes Casual 15.6 Inch Shoulder Bag - Grey', '0.4', 10, 10, 10, 679, 'Frosted Fabric 15.6\" Shoulder Bag - Grey', '2500', '1900', 24, '2019-08-23', '2019-08-23', 0, 0, 0, '17:00:00', '20:00:00', NULL, 'Frosted Fabric Office , Hand And Totes Casual 15.6 Inch Shoulder Bag - Grey', 'Specification:\n\nPattern Type:Solid\n\nStyle:Casual\n\nGender:Unisex\n\nType:Laptop Bag\n\nClosure Type:Zipper\n\nMaterial:Frosted Fabric\n\nStyle:Laptop Cases\n\nColor:Dark Gray\n\nFeatures:Shockproof\n\nFabric:Frosted', '2019-08-07', '12:39:53'),
(153, '72.255.40.171', 1, 1, 'Remax RC-080a 1M USB To Type-C Data Sync Charging Cable - Black', 'remax-rc-080a-1m-usb-to-type-c-data-sync-charging-cable---black-', '<p>Specification: Transfer Rate Data: 480Mb/s Output: 2.1A Dimension Length: 1 meter Others Material: Metal + Aluminium Color: Black Campatible: Type-C Decscription: High quality wire &amp; make of metal Make of metal material, aluminum alloy oxidation process and laser carving technology, anti-wind, toughness and pull resistance, anti-rust Fast Charging Safe. Fast charging, 2.1A (max) 480mb/s Charge and data transferUSB port output, double-side metal contacts, reversible bline insertion. Charging and data transfering 2 in 1</p>', '<p>Specification: Transfer Rate Data: 480Mb/s Output: 2.1A Dimension Length: 1 meter Others Material: Metal + Aluminium Color: Black Campatible: Type-C Decscription: High quality wire &amp; make of metal Make of metal material, aluminum alloy oxidation process and laser carving technology, anti-wind, toughness and pull resistance, anti-rust Fast Charging Safe. Fast charging, 2.1A (max) 480mb/s Charge and data transferUSB port output, double-side metal contacts, reversible bline insertion. Charging and data transfering 2 in 1</p>', 7, '1 x Remax RC-080a 1M USB To Type-C Data Sync Charging Cable - Black', '0.1', 10, 10, 10, 679, 'Remax RC-080a USB To Type-C Cable - Black', '650', '450', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax RC-080a 1M USB To Type-C Data Sync Charging Cable - Black', 'Specification:\n\nTransfer Rate Data: 480Mb/s\n\nOutput: 2.1A\n\nDimension Length: 1 meter\n\nOthers Material: Metal + Aluminium\n\nColor: Black\n\nCampatible: Type-C\n\nDecscription:\n\nHigh quality wire & make of metal\n\nMake of metal material, aluminum alloy oxidation process and laser carving technology, anti-wind, toughness and pull resistance, anti-rust\n\nFast Charging Safe. Fast charging, 2.1A (max) 480mb/s\n\nCharge and data transferUSB port output, double-side metal contacts, reversible bline insertion.\n\nCharging and data transfering 2 in 1', '2019-08-07', '12:39:53'),
(154, '72.255.40.171', 1, 1, 'Remax Kerolla series cable for Type-C RC-094a(2M) - Black', 'remax-kerolla-series-cable-for-type-c-rc-094a2m---black-', '<p>Remax Kerolla series cable for Type-C RC-094a(2M) - Black Brand Name: Remax Has Retail Package: Yes Compatible:Type C Current: 2.1A Length:2m: black Structure: Aluminum shell/Seamless fit within the mold design</p>', '<p>Remax Kerolla series cable for Type-C RC-094a(2M) - Black Brand Name: Remax Has Retail Package: Yes Compatible:Type C Current: 2.1A Length:2m: black Structure: Aluminum shell/Seamless fit within the mold design</p>', 7, '1 x Remax Kerolla series cable for Type-C RC-094a(2M) - Black', '0.1', 10, 10, 10, 679, 'Remax Kerolla cable Type-C RC-094a Black', '700', '550', 24, '2019-08-23', '2019-08-23', 0, 0, 0, '17:00:00', '18:00:00', NULL, 'Remax Kerolla series cable for Type-C RC-094a(2M) - Black', 'Remax Kerolla series cable for Type-C RC-094a(2M) - Black\n\nBrand Name: Remax\n\nHas Retail Package: Yes\n\nCompatible:Type C\n\nCurrent: 2.1A\n\nLength:2m: black\n\nStructure: Aluminum shell/Seamless fit within the mold design', '2019-08-07', '12:39:53'),
(155, '72.255.40.171', 1, 1, 'Remax Gravity Series Data Cable for Type-C RC-095a - Black', 'remax-gravity-series-data-cable-for-type-c-rc-095a---black-', '<p>Specification Brand: Remax Name: Gravity Model: RC-095a Plugs: USB/USB Type-C Material: Nylon + aluminum Current: 2.1A Length: 1 M Compatibility: devices with USB Type-C port Additional features: LED light, double-sided USB plug</p>', '<p>Descrition Remax Gravity RC-095a is magnetic USB data cable with USB Type-C connector that can also be a great dust plug. Made of high-quality materials with braided nylon cord and aluminum plugs shell. Durable, elegant and tear resistant. The magnetic design and double-sided USB plug enable easy alignment and automatic connection. It&rsquo;s simple to use by single hand and thanks to LED light even in the dark. Also, plugs can be switched freely so you can charge any type of device (as long as you have a right plug). Designed only for charging, not data transfer.</p>', 7, '1 x Remax Gravity Series Data Cable for Type-C RC-095a - Black', '0.1', 10, 10, 10, 679, 'Remax Gravity Data Cable Type-C RC-095a - Black', '750', '700', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Gravity Series Data Cable for Type-C RC-095a - Black', 'Specification\n\nBrand: Remax\n\nName: Gravity\n\nModel: RC-095a\n\nPlugs: USB/USB Type-C\n\nMaterial: Nylon + aluminum\n\nCurrent: 2.1A\n\nLength: 1 M\n\nCompatibility: devices with USB Type-C port\n\nAdditional features: LED light, double-sided USB plug', '2019-08-07', '12:39:53'),
(156, '72.255.40.171', 1, 1, 'Remax Gravity Series Data Cable for Lightning RC-095i - Black', 'remax-gravity-series-data-cable-for-lightning-rc-095i---black-', '<p>Specification: Brand: Remax Name: Gravity Model: RC-095i Plugs: USB/Lightning Material: Nylon + aluminum Current: 2.1A Length: 1 M Compatibility: devices with Lightning port Additional features: LED light, double-sided USB plug</p>', '<p>Description Remax Gravity RC-095i is magnetic USB data cable with Lightning connector that can also be a great dust plug. Made of high-quality materials with braided nylon cord and aluminum plugs shell. Durable, elegant and tear resistant. The magnetic design and double-sided USB plug enable easy alignment and automatic connection. It&rsquo;s simple to use by single hand and thanks to LED light even in the dark. Also, plugs can be switched freely so you can charge any type of device (as long as you have a right plug). Designed only for charging, not data transfer.</p>', 7, '1 x Remax Gravity Series Data Cable for Lightning RC-095i - Black', '0.1', 10, 10, 10, 679, 'Remax Gravity Data Cable RC-095i - Black', '950', '750', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Gravity Series Data Cable for Lightning RC-095i - Black', 'Specification:\n\nBrand: Remax\n\nName: Gravity\n\nModel: RC-095i\n\nPlugs: USB/Lightning\n\nMaterial: Nylon + aluminum\n\nCurrent: 2.1A\n\nLength: 1 M\n\nCompatibility: devices with Lightning port\n\nAdditional features: LED light, double-sided USB plug', '2019-08-07', '12:39:53'),
(157, '72.255.40.171', 17, 1, 'Remax Bean Series Desktop Humidifier RT-EM02 - Blue', 'remax-bean-series-desktop-humidifier-rt-em02---blue-shopker', '<p>Specification: Brand : Remax Name : REMAX BEAN SERIES DESKTOP HUMIDIFIER Model : RT-EM02 Description 100% Brand New in Retail Box Packaging High Quality Remax Bean Series Desktop Humidifier Model: RT-EM02 Beauty moisturiser, nano spray, quiet environment, suitable for babies and pregnant women, no water leaking issues Very portable, bring it for travel, in vehicle, office, bedside table and more!</p>', '<p>Specification: Brand : Remax Name : REMAX BEAN SERIES DESKTOP HUMIDIFIER Model : RT-EM02 Description 100% Brand New in Retail Box Packaging High Quality Remax Bean Series Desktop Humidifier Model: RT-EM02 Beauty moisturiser, nano spray, quiet environment, suitable for babies and pregnant women, no water leaking issues Very portable, bring it for travel, in vehicle, office, bedside table and more!</p>', 7, '1 x Remax Bean Series Desktop Humidifier RT-EM02 - Blue', '0.4', 10, 10, 10, 679, 'Remax Humidifier RT-EM02 - Blue', '1450', '1150', 24, '1970-01-01', '1970-01-01', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Bean Series Desktop Humidifier RT-EM02 - Blue', 'Specification:\n\nBrand : Remax\n\nName : REMAX BEAN SERIES DESKTOP HUMIDIFIER\n\nModel : RT-EM02\n\nDescription\n\n100% Brand New in Retail Box Packaging\n\nHigh Quality\n\nRemax Bean Series Desktop Humidifier\n\nModel: RT-EM02\n\nBeauty moisturiser, nano spray, quiet environment, suitable for babies and pregnant women, no water leaking issues\n\nVery portable, bring it for travel, in vehicle, office, bedside table and more!', '2019-08-07', '12:39:53'),
(158, '72.255.40.171', 1, 1, 'Macbook Barvo Sleeve 15.4 - Black', 'macbook-barvo-sleeve-154---black-', '<p>Specification: Anti-Slip system to prevent the device from falling Flatlock stitching for better grip Case - 4 mm thick</p>', '<p>Description: The sleeve for MacBook incorporates advanced Tensaerlite&trade; technology along with a lightweight EVA, Nylon, Velvet frame to ensure maximum impact absorption. A Inside Strap closure further secures your MacBook, while allowing for easy access, along with premium outer panels layered over faux nylon Compatibility: 13-inch MacBook Pro, 13 inch other Laptop Models Material: Features 50% Nylon / 50% Polyester.</p>', 7, '1 x Macbook Barvo Sleeve 15.4 - Black', '0.1', 10, 10, 10, 679, 'Macbook Barvo Sleeve 15.4 - Black', '900', '675', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Macbook Barvo Sleeve 15.4 - Black', 'Specification:\n\nAnti-Slip system to prevent the device from falling\n\nFlatlock stitching for better grip\n\nCase - 4 mm thick', '2019-08-07', '12:39:53'),
(159, '72.255.40.171', 1, 1, 'Macbook Barvo Sleeve 15.4 - Purple', 'macbook-barvo-sleeve-154---purple-', '<p>Specification: Anti-Slip system to prevent the device from falling Flatlock stitching for better grip Case - 4 mm thick</p>', '<p>Description: The sleeve for MacBook incorporates advanced Tensaerlite&trade; technology along with a lightweight EVA, Nylon, Velvet frame to ensure maximum impact absorption. A Inside Strap closure further secures your MacBook, while allowing for easy access, along with premium outer panels layered over faux nylon Compatibility: 13-inch MacBook Pro, 13 inch other Laptop Models Material: Features 50% Nylon / 50% Polyester.</p>', 7, '1 x Macbook Barvo Sleeve 15.4 - Purple', '0.1', 10, 10, 10, 679, 'Macbook Barvo Sleeve 15.4 - Purple', '900', '675', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Macbook Barvo Sleeve 15.4 - Purple', 'Specification:\n\nAnti-Slip system to prevent the device from falling\n\nFlatlock stitching for better grip\n\nCase - 4 mm thick', '2019-08-07', '12:39:53'),
(160, '72.255.40.171', 1, 1, 'Tablet Bubble Pouch 10 inch - Grey', 'tablet-bubble-pouch-10-inch---grey-', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable) Leegoal bulk packing with good quality warranty..</p>', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable) Leegoal bulk packing with good quality warranty..</p>', 7, '1 x Tablet Bubble Pouch 10 inch - Grey', '0.1', 10, 10, 10, 679, 'Tablet Bubble Pouch 10 inch - Grey', '500', '300', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Tablet Bubble Pouch 10 inch - Grey', 'Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch..\n\nWashable. Do not worry about it getting dirty. Always keeping it new..\n\nSize:Approx. 20.5x14.5cm (Extendable)\n\nLeegoal bulk packing with good quality warranty..', '2019-08-07', '12:39:53');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(161, '72.255.40.171', 1, 1, 'Tablet Bubble Pouch 10 inch - Silver', 'tablet-bubble-pouch-10-inch---silver-', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable) Leegoal bulk packing with good quality warranty..</p>', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable) Leegoal bulk packing with good quality warranty..</p>', 7, '1 x Tablet Bubble Pouch 10 inch - Silver', '0.1', 10, 10, 10, 679, 'Tablet Bubble Pouch 10 inch - Silver', '500', '300', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Tablet Bubble Pouch 10 inch - Silver', 'Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch..\n\nWashable. Do not worry about it getting dirty. Always keeping it new..\n\nSize:Approx. 20.5x14.5cm (Extendable)\n\nLeegoal bulk packing with good quality warranty..', '2019-08-07', '12:39:53'),
(162, '72.255.40.171', 1, 1, 'Tablet Bubble Pouch 10 inch - Black', 'tablet-bubble-pouch-10-inch---black-', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable);Type:Non-OEM /Aftermarket itemsAccessory ONLY; Lenovo Dell HP does not endorse use of these products.. Leegoal bulk packing with good quality warranty..</p>', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable);Type:Non-OEM /Aftermarket itemsAccessory ONLY; Lenovo Dell HP does not endorse use of these products.. Leegoal bulk packing with good quality warranty..</p>', 7, '1 x Tablet Bubble Pouch 10 inch - Black', '0.1', 10, 10, 10, 679, 'Tablet Bubble Pouch 10 inch - Black', '500', '300', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Tablet Bubble Pouch 10 inch - Black', 'Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch..\n\nWashable. Do not worry about it getting dirty. Always keeping it new..\n\nSize:Approx. 20.5x14.5cm (Extendable);Type:Non-OEM /Aftermarket itemsAccessory ONLY; Lenovo Dell HP does not endorse use of these products..\n\nLeegoal bulk packing with good quality warranty..', '2019-08-07', '12:39:53'),
(163, '72.255.40.171', 1, 1, 'Remax Jet Series Case For IPhone 7Plus - Black', 'remax-jet-series-case-for-iphone-7plus---black-', '<p>Specification Brand: REMAX Name: Jeter Series Phone Case Model: iPhone 7plus Product Process: unique IML technology + TPU + PET material Color: bright black</p>', '<p>Description Remax Jeter iPhone 7 Plus Fully protect the back cover and sides of your iPhone 7Plus with this Remax case This elegant protection case will prevent shocks and scratches while giving your smartphone a new elegant look</p>', 7, '1 x Remax Jet Series Case For IPhone 7Plus - Black', '0.1', 10, 10, 10, 679, 'Remax Jet Series Case IPhone 7Plus - Black', '1000', '750', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Jet Series Case For IPhone 7Plus - Black', 'Specification\n\nBrand: REMAX\nName: Jeter Series Phone Case\nModel: iPhone 7plus\nProduct Process: unique IML technology + TPU + PET material\nColor: bright black', '2019-08-07', '12:39:53'),
(164, '72.255.40.171', 1, 1, 'Remax Micro USB To Lighting Apple IOS Charging And Data Syncing Converter RA-USB2 For iPhone - Gold', 'remax-micro-usb-to-lighting-apple-ios-charging-and-data-syncing-converter-ra-usb2-for-iphone---gold-', '<p>Working Temperature：10-35 degrees Humidity Tolerance：&le;85% Max Output：3.0 A Life：Can plug and unplug for more than 10000 times Compatible With iPod,iPad,iPhone</p>', '<p>Working Temperature：10-35 degrees Humidity Tolerance：&le;85% Max Output：3.0 A Life：Can plug and unplug for more than 10000 times Compatible With iPod,iPad,iPhone</p>', 7, '1 x Remax Micro USB To Lighting Apple IOS Charging And Data Syncing Converter RA-USB2 For iPhone - Gold', '0.1', 10, 10, 10, 679, 'Remax Micro USB Converter RA-USB2 iPhone - Gold', '500', '300', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Micro USB To Lighting Apple IOS Charging And Data Syncing Converter RA-USB2 For iPhone - Gold', 'Working Temperature：10-35 degrees\n\nHumidity Tolerance：≤85%\n\nMax Output：3.0 A\n\nLife：Can plug and unplug for more than 10000 times\n\nCompatible With iPod,iPad,iPhone', '2019-08-07', '12:39:53'),
(165, '72.255.40.171', 1, 1, 'Remax TPU Crystal Transparent Case For iPhone 7Plus', 'remax-tpu-crystal-transparent-case-for-iphone-7plus-', '<p>Remax TPU Crystal Transparent Case For iPhone 7Plus Brand Name:Remax Size:For iPhone 7Plus Mobile Phone Case Function:Anti-knock Compatible iPhone Model:iphone 7Plus Compatible Brand:Apple iPhones Type:Case Package:Environmental protection sealing bag Compatible:For Apple iPhone 7Plus Material:TPU Soft Cell Phone Case Cover for Apple iphone7Plus Style:TPU Soft Case Clear Cover Case For iPhone 7Plus Feature 1:Coque Pour Etui CasoFunda Para Phone Crystal TPU Case Feature 2:Super Soft Clear Cover For Iphone 7Plus</p>', '<p>Remax TPU Crystal Transparent Case For iPhone 7Plus Brand Name:Remax Size:For iPhone 7Plus Mobile Phone Case Function:Anti-knock Compatible iPhone Model:iphone 7Plus Compatible Brand:Apple iPhones Type:Case Package:Environmental protection sealing bag Compatible:For Apple iPhone 7Plus Material:TPU Soft Cell Phone Case Cover for Apple iphone7Plus Style:TPU Soft Case Clear Cover Case For iPhone 7Plus Feature 1:Coque Pour Etui CasoFunda Para Phone Crystal TPU Case Feature 2:Super Soft Clear Cover For Iphone 7Plus</p>', 7, '1 x Remax TPU Crystal Transparent Case For iPhone 7Plus', '0.1', 10, 10, 10, 679, 'Remax TPU Case iPhone 7Plus', '1150', '600', 24, '2019-08-30', '2019-09-05', 0, 0, 0, '18:00:00', '20:00:00', NULL, 'Remax TPU Crystal Transparent Case For iPhone 7Plus', 'Remax TPU Crystal Transparent Case For iPhone 7Plus\n\nBrand Name:Remax\nSize:For iPhone 7Plus Mobile Phone Case\n\nFunction:Anti-knock\n\nCompatible iPhone Model:iphone 7Plus\n\nCompatible Brand:Apple iPhones\n\nType:Case\n\nPackage:Environmental protection sealing bag\n\nCompatible:For Apple iPhone 7Plus\n\nMaterial:TPU Soft Cell Phone Case Cover for Apple iphone7Plus\n\nStyle:TPU Soft Case Clear Cover Case For iPhone 7Plus\n\nFeature 1:Coque Pour Etui CasoFunda Para Phone Crystal TPU Case\n\nFeature 2:Super Soft Clear Cover For Iphone 7Plus', '2019-08-07', '12:39:53'),
(166, '72.255.40.171', 1, 1, 'Remax Lesu Data Cable For Apple USB RC-050i - Black', 'remax-lesu-data-cable-for-apple-usb-rc-050i---black-', '<p>Specification: Brand: Remax Name: Remax Lesu Cable Model: RC-050i Color: Black Port: Lightning Length: 1m</p>', '<p>Description: Remax Lesu Data Cable For Apple USB RC-050i - Black Flat noodles unique design prevents wire winding knot trouble. Copper plating interface, efficient and stable. Ergonomic tip, easy to plug and unplug. The maximum current carrying 1.3A, and 1A data transmission. Strong and flexible wire, long lifespan.</p>', 7, '1 x Remax Lesu Data Cable For Apple USB RC-050i - Black', '0.1', 10, 10, 10, 679, 'Remax Lesu Data Cable For Apple USB RC-050i - Black', '300', '200', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Lesu Data Cable For Apple USB RC-050i - Black', 'Specification:\n\nBrand: Remax \n\nName: Remax Lesu Cable\n\nModel: RC-050i\n\nColor: Black\n\nPort: Lightning\n\nLength: 1m', '2019-08-07', '12:39:53'),
(167, '72.255.40.171', 1, 1, 'WK Sbaro 2 in 1 Data Cable For Micro And Lightning WDC-025 - Grey', 'wk-sbaro-2-in-1-data-cable-for-micro-and-lightning-wdc-025---grey-', '<p>Specification: Brand: WK Design Name: WK Sbaro 2 in 1 Data Cable Model: WDC-025 Color: Grey Length: 0.20cm</p>', '<p>Description: WK Sbaro 2 in 1 Data Cable For Micro And Lightning WDC-025 - Grey WDC-25 SBARO data cable iron Wire material design high quality fast charge recognize the device automatically. 2 in 1 for Lightning and Micro, Easy to carry, The outward appearance is exquisite, beautiful. For Samsung and Other Android For iPhone</p>', 7, '1 x WK Sbaro 2 in 1 Data Cable For Micro And Lightning WDC-025 - Grey', '0.1', 10, 10, 10, 679, 'WK Sbaro 2in1 Data Cable WDC-025 - Grey', '1150', '800', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'WK Sbaro 2 in 1 Data Cable For Micro And Lightning WDC-025 - Grey', 'Specification: \n\nBrand: WK Design\n\nName: WK Sbaro 2 in 1 Data Cable\n\nModel: WDC-025\n\nColor: Grey\n\nLength: 0.20cm', '2019-08-07', '12:39:53'),
(168, '72.255.40.171', 1, 1, 'Remax Flash Drive 3.0 RX-801 64GB - Black', 'remax-flash-drive-30-rx-801-64gb---black-', '<p>Specification: Brand: Remax Name: Remax Mini Flash Drive Model: RX-801 Color: Black Capacity: 64gb Transmission Version: 3.0 Material: Steel</p>', '<p>Specification: Brand: Remax Name: Remax Mini Flash Drive Model: RX-801 Color: Black Capacity: 64gb Transmission Version: 3.0 Material: Steel</p>', 7, '1 x Remax Flash Drive 3.0 RX-801 64GB - Black', '0.1', 10, 10, 10, 679, 'Remax USB 3.0 RX-801 64GB - Black', '5000', '4000', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Flash Drive 3.0 RX-801 64GB - Black', 'Specification:\n\nBrand: Remax\n\nName: Remax Mini Flash Drive\n\nModel: RX-801\n\nColor: Black\n\nCapacity: 64gb\n\nTransmission Version: 3.0\n\nMaterial: Steel', '2019-08-07', '12:39:53'),
(169, '72.255.40.171', 1, 1, 'Remax Flash Drive 3.0 RX-801 32GB - Black', 'remax-flash-drive-30-rx-801-32gb---black-', '<p>Specification: Brand: Remax Name: Remax Mini Flash Drive Model: RX-801 Color: Black Capacity: 32gb Transmission Version: 3.0 Material: Steel</p>', '<p>Specification: Brand: Remax Name: Remax Mini Flash Drive Model: RX-801 Color: Black Capacity: 32gb Transmission Version: 3.0 Material: Steel</p>', 7, '1 x  Remax Flash Drive 3.0 RX-801 32GB - Black', '0.1', 10, 10, 10, 679, 'Remax USB 3.0 RX-801 32GB - Black', '3000', '2300', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Flash Drive 3.0 RX-801 32GB - Black', 'Specification:\n\nBrand: Remax\n\nName: Remax Mini Flash Drive\n\nModel: RX-801\n\nColor: Black\n\nCapacity: 32gb\n\nTransmission Version: 3.0\n\nMaterial: Steel', '2019-08-07', '12:39:53'),
(170, '72.255.40.171', 1, 1, 'Remax Flash Drive 2.0 RX-808 16GB - Black', 'remax-flash-drive-20-rx-808-16gb---black-', '<p>Specification: Brand: Remax Name: Remax Flash Drive Model: RX-808 Color: Black Capacity: 16gb Transmission Version: 2.0 Material: Steel</p>', '<p>Specification: Brand: Remax Name: Remax Flash Drive Model: RX-808 Color: Black Capacity: 16gb Transmission Version: 2.0 Material: Steel</p>', 7, '1 x Remax Flash Drive 2.0 RX-808 16GB - Black', '0.1', 10, 10, 10, 679, 'Remax USB 2.0 RX-808 16GB - Black', '1750', '1150', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Flash Drive 2.0 RX-808 16GB - Black', 'Specification:\n\nBrand: Remax\n\nName: Remax Flash Drive \n\nModel: RX-808\n\nColor: Black\n\nCapacity: 16gb\n\nTransmission Version: 2.0\n\nMaterial: Steel', '2019-08-07', '12:39:53'),
(171, '72.255.40.171', 1, 1, 'Remax Flash Drive 2.0 RX-808 32GB - Rose Gold', 'remax-flash-drive-20-rx-808-32gb---rose-gold-', '<p>Specification: Brand: Remax Name: Remax Flash Drive Model: RX-808 Color: Rose Gold Capacity: 32gb Transmission Version: 2.0 Material: Steel</p>', '<p>Description: Remax Flash Drive 2.0 RX-808 32GB - Rose Gold Support system: Win 2000 / XP / VISTA / 7, Mac, OS Made of metal alloy, nice touch feeling, not easy to be broken Key chain design, looks cool, gives you pleasure Beautiful package, perfect gift, your friends would like it Plug and play, no need to install drivers Free sling, easy to carry</p>', 7, '1 x Remax Flash Drive 2.0 RX-808 32GB - Rose Gold', '0.1', 10, 10, 10, 679, 'Remax USB 2.0 RX-808 32GB - Rose Gold', '2250', '1550', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Flash Drive 2.0 RX-808 32GB - Rose Gold', 'Specification:\n\nBrand: Remax\n\nName: Remax Flash Drive \n\nModel: RX-808\n\nColor: Rose Gold\n\nCapacity: 32gb\n\nTransmission Version: 2.0\n\nMaterial: Steel', '2019-08-07', '12:39:53'),
(172, '72.255.40.171', 1, 1, 'Remax Micro USB To Lighting Apple IOS Charging And Data Syncing Converter RA-USB2 For iPhone - Silver', 'remax-micro-usb-to-lighting-apple-ios-charging-and-data-syncing-converter-ra-usb2-for-iphone---silver-', '<p>Working Temperature：10-35 degrees Humidity Tolerance：&le;85% Max Output：3.0 A Life：Can plug and unplug for more than 10000 times Compatible With iPod,iPad,iPhone</p>', '<p>Working Temperature：10-35 degrees Humidity Tolerance：&le;85% Max Output：3.0 A Life：Can plug and unplug for more than 10000 times Compatible With iPod,iPad,iPhone</p>', 7, '1 x Remax Micro USB To Lighting Apple IOS Charging And Data Syncing Converter RA-USB2 For iPhone - Silver', '0.1', 10, 10, 10, 679, 'Remax Micro USB To Lighting Apple RA-USB2 Silver', '500', '350', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Micro USB To Lighting Apple IOS Charging And Data Syncing Converter RA-USB2 For iPhone - Silver', 'Working Temperature：10-35 degrees\n\nHumidity Tolerance：≤85%\n\nMax Output：3.0 A\n\nLife：Can plug and unplug for more than 10000 times\n\nCompatible With iPod,iPad,iPhone', '2019-08-07', '12:39:53'),
(173, '72.255.40.171', 1, 1, 'Remax Micro USB To Charging And Data Syncing Converter For Type-C RA-USB1 - Silver', 'remax-micro-usb-to-charging-and-data-syncing-converter-for-type-c-ra-usb1---silver-', '<p>Specification: Brand Name:Remax Model Number:RA-USB1 Input Voltage:5v Output Voltage:5v Color:Silver Type:Micro Usb to Type-C</p>', '<p>Description: Type:Adapter OTG USB type C - microUSB Color:silver maximum data transfer speed 500 Mb / s, maximum current 3A Remax adapter OTG Type-C to USB is a high quality adapter cable that can be used to connect to a USB smartphone and also to connect 12 &quot;peripheral devices (printers, scanners, phones, USB drives, hard drives) to Apple MakBook .&quot; Assigning a connection to a smartphone USB drives, connecting to Apple MakBook 12 &quot;peripherals (printers, scanners, phones, USB drives, hardware tkih disks).</p>', 7, '1 x Remax Micro USB To Charging And Data Syncing Converter For Type-C RA-USB1 - Silver', '0.1', 10, 10, 10, 679, 'Remax Micro USB For Type-C RA-USB1 - Silver', '500', '350', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Micro USB To Charging And Data Syncing Converter For Type-C RA-USB1 - Silver', 'Specification:\n\nBrand Name:Remax\nModel Number:RA-USB1\nInput Voltage:5v\nOutput Voltage:5v\nColor:Silver\nType:Micro Usb to Type-C', '2019-08-07', '12:39:53'),
(174, '72.255.40.171', 1, 1, 'Remax Gezhi Series Case White Lanyard Stand For iPhone 7Plus - Black', 'remax-gezhi-series-case-white-lanyard-stand-for-iphone-7plus---black-', '<p>Specification: Brand Name:REMAX Model Number:Gezhi Series Material:TPU+Zince alloy Color:Black Double layer case:Yes Feature:Light and thin GW/pcs:67.1g Selling point:Lanyard hole/Holder</p>', '<p>Description: Brand Name:REMAX Model Number:Gezhi Series Material:TPU+Zince alloy Color:Black Double layer case:Yes Feature:Light and thin GW/pcs:67.1g Selling point:Lanyard hole/Holder</p>', 7, '1 x Remax Gezhi Series Case White Lanyard Stand For iPhone 7Plus - Black', '0.1', 10, 10, 10, 679, 'Remax Gezhi Series Case iPhone 7Plus - Black', '1300', '800', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Gezhi Series Case White Lanyard Stand For iPhone 7Plus - Black', 'Specification:\n\nBrand Name:REMAX\n\nModel Number:Gezhi Series\n\nMaterial:TPU+Zince alloy\n\nColor:Black\n\nDouble layer case:Yes\n\nFeature:Light and thin\n\nGW/pcs:67.1g\n\nSelling point:Lanyard hole/Holder', '2019-08-07', '12:39:53'),
(175, '72.255.40.171', 1, 1, 'Remax Radiance Series Data Cable For Micro USB RC-041m - Black', 'remax-radiance-series-data-cable-for-micro-usb-rc-041m---black-', '<p>Specification: Brand: Remax Name: Remax Radiance Cable Model: RC-041m Color: White Compatible: Micro USB Length: 1m</p>', '<p>Description: Remax Radiance Series Data Cable For Micro USB RC-041m - White Metal wire-drawing design, make it look different. High Compatibility, suitable for almost micro usb devices. Humanization design, concave design according to the curve of finger. 2.1A fast charging. Pure copper core, provide fast charging and data transmission.</p>', 7, '1 x Remax Radiance Series Data Cable For Micro USB RC-041m - Black', '0.1', 10, 10, 10, 679, 'Remax Data Cable Micro USB RC-041m - Black', '450', '350', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Radiance Series Data Cable For Micro USB RC-041m - Black', 'Specification:\n\nBrand: Remax \n\nName: Remax Radiance Cable\n\nModel: RC-041m\n\nColor: White\n\nCompatible: Micro USB\n\nLength: 1m', '2019-08-07', '12:39:53'),
(176, '72.255.40.171', 1, 1, 'Remax Radiance Series Data Cable For Micro USB RC-041m - White', 'remax-radiance-series-data-cable-for-micro-usb-rc-041m---white-', '<p>Specification: Brand: Remax Name: Remax Radiance Cable Model: RC-041m Color: White Compatible: Micro USB Length: 1m</p>', '<p>Description: Remax Radiance Series Data Cable For Micro USB RC-041m - White Metal wire-drawing design, make it look different. High Compatibility, suitable for almost micro usb devices. Humanization design, concave design according to the curve of finger. 2.1A fast charging. Pure copper core, provide fast charging and data transmission.</p>', 7, '1 x Remax Radiance Series Data Cable For Micro USB RC-041m - White', '0.1', 10, 10, 10, 679, 'Remax Data Cable Micro USB RC-041m - White', '450', '350', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Radiance Series Data Cable For Micro USB RC-041m - White', 'Specification:\n\nBrand: Remax \n\nName: Remax Radiance Cable\n\nModel: RC-041m\n\nColor: White\n\nCompatible: Micro USB\n\nLength: 1m', '2019-08-07', '12:39:53'),
(177, '72.255.40.171', 1, 1, 'Remax Platinum Series Data Cable For Type-C RC-044a - Black', 'remax-platinum-series-data-cable-for-type-c-rc-044a---black-', '<p>Specification: Brand: Remax Name: Remax Platinum Series Model: RC-044a Color: Black Compatible: Type-C Weight: 50g Length: 1m</p>', '<p>Description: Remax Platinum Series Data Cable For Type-C RC-044a - Black Flat noodles unique design prevents wire winding knot trouble Copper plating interface , efficient and stable . Ergonomic tip , easy to plug and unplug. The maximum current carrying 2.1A, and 480Mbps data transmission. Strong and flexible wire , long lifespan For Samsung / HTC / Micro USB / Iphone Connector</p>', 7, '1 x Remax Platinum Series Data Cable For Type-C RC-044a - Black', '0.1', 10, 10, 10, 679, 'Remax Data Cable Type-C RC-044a - Black', '500', '400', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Platinum Series Data Cable For Type-C RC-044a - Black', 'Specification:\n\nBrand: Remax \n\nName: Remax Platinum Series\n\nModel: RC-044a\n\nColor: Black\n\nCompatible: Type-C\n\nWeight: 50g\n\nLength: 1m', '2019-08-07', '12:39:53'),
(178, '72.255.40.171', 1, 1, 'Aspor Air Series Ultrathin 10000mAh Power Bank A383 - Silver', 'aspor-air-series-ultrathin-10000mah-power-bank-a383---silver-', '<p>Specification: 1 X USB Output Battery Capacity: 10000 MAh Brand: Aspor Colour:silver Shipping Weight (kg) 0.5</p>', '<p>Description: Elegantly designed and light weight, can be easily fit into one&#39;s pocket without much hassle. Metallic Case ensure long lasting appearance after thousands of use cycles. Efficient Cells Only the best power cells are used. A lithium polymer battery, is a rechargeable battery of lithium-ion technology using a polymer electrolyte instead of the more common liquid electrolyte. High conductivity semisolid (gel) polymers form the electrolyte for LiPo cells used in tablet computers and many cellular telephone handsets. You can be sure of its quality. First Charge Cycles Unlike more conventional batteries, Aspor A383 powerbank can be used immediately out of the box. While some older rechargeable battery types like Nickel Cadmium (NiCd) and Nickel Metal Hydrate (NiMH) needs priming, Aspor A383 DO NOT requires priming. Hassle Free Over-charge? Reduce the battery&rsquo;s life by keeping it plugged in. Aspor A383 has built-in circuits to cut power to it once it&rsquo;s fully charged.</p>', 7, '1 x Aspor Air Series Ultrathin 10000mAh Power Bank A383 - Silver', '0.2', 10, 10, 10, 679, 'Aspor 10000mAh Power Bank A383 - Silver', '2000', '1600', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Aspor Air Series Ultrathin 10000mAh Power Bank A383 - Silver', 'Specification:\n\n1 X USB Output\n\nBattery Capacity:  10000 MAh\n\nBrand: Aspor\n\nColour:silver\n\nShipping Weight (kg) 0.5', '2019-08-07', '12:39:53'),
(179, '72.255.40.171', 1, 1, 'Laptop Slim Bag 13.3 - Grey', 'laptop-slim-bag-133---grey-', '<p>Description: Laptop Bags for&nbsp;13 inch Soft Cover - Grey Compatible: All Laptop Display 13&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', '<p>Description: Laptop Bags for&nbsp;13 inch Soft Cover - Grey Compatible: All Laptop Display 13&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', 7, '1 x Laptop Slim Bag 13.3 - Grey', '0.4', 10, 10, 10, 679, 'Laptop Slim Bag 13.3 - Grey', '3000', '2000', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Slim Bag 13.3 - Grey', 'Description:\n\nLaptop Bags for 13 inch Soft Cover - Grey\n\nCompatible: All Laptop Display 13\'\'\n\nPROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage\n\nWATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain.\n\nSHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop.\n\nLIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.', '2019-08-07', '12:39:53'),
(180, '72.255.40.171', 1, 1, 'Laptop Slim Bag 15.6 - Black', 'laptop-slim-bag-156---black-', '<p>Description: Laptop Bags for&nbsp;15 inch Soft Cover - Black Compatible: All Laptop Display 15&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', '<p>Description: Laptop Bags for&nbsp;15 inch Soft Cover - Black Compatible: All Laptop Display 15&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', 7, '1 x Laptop Slim Bag 15.6 - Black', '0.4', 10, 10, 10, 679, 'Laptop Slim Bag 15.6 - Black', '3100', '2100', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Slim Bag 15.6 - Black', 'Description:\n\nLaptop Bags for 15 inch Soft Cover - Black\n\nCompatible: All Laptop Display 15\'\'\n\nPROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage\n\nWATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain.\n\nSHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop.\n\nLIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.', '2019-08-07', '12:39:53'),
(181, '72.255.40.171', 1, 1, 'Aspor Anti-Interference Hi-Speed Charging&Data Cable For Android A107 - Blue', 'aspor-anti-interference-hi-speed-chargingdata-cable-for-android-a107---blue-', '<p>Specification Fast charging Color: Blue Premium quality Compatible with all android devices</p>', '<p>Description Aspor Micro USB Cable A-107 is desined for charging battery and transferring information to Android-equipped device, other device that support Micro USB.</p>', 7, '1 x Aspor Anti-Interference Hi-Speed Charging&Data Cable For Android A107 - Blue', '0.1', 10, 10, 10, 679, 'Aspor Charging&Data Cable Android A107 - Blue', '350', '250', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Aspor Anti-Interference Hi-Speed Charging&Data Cable For Android A107 - Blue', 'Specification\n\nFast charging\n\nColor: Blue\n\nPremium quality\n\nCompatible with all android devices', '2019-08-07', '12:39:53'),
(182, '72.255.40.171', 1, 1, 'Laptop Slim Bag 15.6 - Grey', 'laptop-slim-bag-156---grey-', '<p>Description: Laptop Bags for 15 inch Soft Cover - Grey Compatible: All Laptop Display 15&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', '<p>Description: Laptop Bags for 15 inch Soft Cover - Grey Compatible: All Laptop Display 15&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', 7, '1 x Laptop Slim Bag 15.6 - Grey', '0.4', 10, 10, 10, 679, 'Laptop Slim Bag 15.6 - Grey', '3100', '2100', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Slim Bag 15.6 - Grey', 'Description:\n\nLaptop Bags for 15 inch Soft Cover - Grey\n\nCompatible: All Laptop Display 15\'\'\n\nPROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage\n\nWATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain.\n\nSHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop.\n\nLIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.', '2019-08-07', '12:39:53'),
(183, '72.255.40.171', 1, 1, 'Aspor Anti-Interference Hi-Speed Charging&Data Cable For Android A107 - Red', 'aspor-anti-interference-hi-speed-chargingdata-cable-for-android-a107---red-', '<p>Specification Fast charging Color: Red Premium quality Compatible with all android devices</p>', '<p>Description Aspor Micro USB Cable A-107 is desined for charging battery and transferring information to Android-equipped device, other device that support Micro USB.</p>', 7, '1 x Aspor Anti-Interference Hi-Speed Charging&Data Cable For Android A107 - Red', '0.1', 10, 10, 10, 679, 'Aspor Charging&Data Cable Android A107 - Red', '350', '250', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Aspor Anti-Interference Hi-Speed Charging&Data Cable For Android A107 - Red', 'Specification\n\nFast charging\n\nColor: Red\n\nPremium quality\n\nCompatible with all android devices', '2019-08-07', '12:39:53'),
(184, '72.255.40.171', 1, 1, 'Remax Smooth Like Silk Kellen Series Case For Apple iPhone 7plus - Black', 'remax-smooth-like-silk-kellen-series-case-for-apple-iphone-7plus---black-', '<p>Specification: Brand: REMAX Name: Kellen Series Case Model: For iPhone 7 / 7Plus Materials: Silicone-jel + PC Features: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection Color: Black</p>', '<p>Specification: Brand: REMAX Name: Kellen Series Case Model: For iPhone 7 / 7Plus Materials: Silicone-jel + PC Features: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection Color: Black</p>', 7, '1 x Remax Smooth Like Silk Kellen Series Case For Apple iPhone 7plus - Black', '0.1', 10, 10, 10, 679, 'Remax Kellen Case For iPhone 7plus - Black', '1450', '900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Smooth Like Silk Kellen Series Case For Apple iPhone 7plus - Black', 'Specification:\n\nBrand: REMAX\n\nName: Kellen Series Case\n\nModel: For iPhone 7 / 7Plus\n\nMaterials: Silicone-jel + PC\n\nFeatures: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection\n\nColor: Black', '2019-08-07', '12:39:53'),
(185, '72.255.40.171', 2, 1, 'Remax Desktop Smart Mobile Holder C-23 - Silver', 'remax-desktop-smart-mobile-holder-c-23---silver-rabi-collections', '<p>Specification: Brand: Remax Model: C-23 Color: Silver Weight: 260g Rotation: 360 &amp; 270 Degree Material: Aluminium Alloy</p>', '<p>Discription: Remax Desktop Smart Mobile Holder C-23 - Silver The Power-Grip suction cup ensures it will stay securely attached. Easy installation. Multi angle rotating chuck with damping effect. Uitable for the 3 inch to 6.3 inch mainstream mobile phones. An multi-purpose,you could use it on the desktop or in your car. Alloy polishing focus on the edge creates the fancy hand feelings</p>', 7, '1 x Remax Desktop Smart Mobile Holder C-23 - Silver', '0.2', 10, 10, 10, 679, 'Remax Desktop Mobile Holder C-23 - Silver', '1450', '900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Desktop Smart Mobile Holder C-23 - Silver', 'Specification:\n\nBrand: Remax\n\nModel: C-23\n\nColor: Silver\n\nWeight: 260g\n\nRotation: 360 & 270 Degree\n\nMaterial: Aluminium Alloy', '2019-08-07', '12:39:53'),
(186, '72.255.40.171', 1, 1, 'Gorilla Camera And Mobile Tripod Stand 813 - Black', 'gorilla-camera-and-mobile-tripod-stand-813---black-', '<p>Specification: Name: Gorilla Tripod Color: Black&amp;White Capacity: Camera &amp; Mobile Weight: 225g Weight Capacity: 3000g Size: 250 x 60 x 60mm</p>', '<p>Discription: Joby Gorilla Camera And Mobile Tripod Stand Get crisper shots with this durable, lightweight tripod. The rubberized foot grips and wrappable legs will secure professional cameras up to 6.6lbs. as they hold their stance to any viable surface. CAPTURE SUPERIOR PERSPECTIVES. Look at life from a different point of view with the GorillaPod SLR Zoom Tripod. Easy maneuverability and precise positioning with 360 panning, to expand the range of shots you can capture. Get ultra-stable and find your grounding with over two dozen leg joints and German TPE joins, so you&rsquo;ll never have a shaky shot. The GorillaPod SLR Zoom can fiercely secure equipment up to 6.6 lbs., making the impossible shot, possible. Take this lightweight SLR and mirrorless camera tripod anywhere. The quick release plate simply stays connected to your camera, so you can interchange with ease. Hold on tight with the 1/4&rdquo;-20 standard tripod mount and 3/8&rdquo; adapter. Made of durable Japanese medical-grade ABS plastic, stainless steel, and German TPE, it&rsquo;s made for the wear and tear of everyday life, or the rigor of adventure. Pair it with your mirrorless camera or SLR to capture the worthy moments of life.</p>', 7, '1 x Gorilla Camera And Mobile Tripod Stand 813 - Black', '0.2', 10, 10, 10, 679, 'Gorilla Camera And Mobile Tripod 813 - Black', '1900', '800', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Gorilla Camera And Mobile Tripod Stand 813 - Black', 'Specification:\n\nName: Gorilla Tripod \n\nColor: Black&White\n\nCapacity: Camera & Mobile\n\nWeight: 225g\n\nWeight Capacity: 3000g\n\nSize: 250 x 60 x 60mm', '2019-08-07', '12:39:53'),
(187, '72.255.40.171', 2, 1, 'Jmary Professional Tripod and Monopod Stand KP-2264 - Black', 'jmary-professional-tripod-and-monopod-stand-kp-2264---black-rabi-collections', '<p>Specification: Brand: Jmary Model: KP-2264 Item Weight: 1.9kg Item Model Number: 2264 Compatible Device: All Professional &amp; DSLR Cameras, Digital cameras &amp; Mobile Phones Additional Features: 176 CM height Monopod with Tripod, High Quality Aluminium Legs Included Components: Monopod , Tripod , Mobile Phone Holder, Bag</p>', '<p>Discription: JMARY 2264 - TRIPOD &amp; MONO-POD COMBO FOR ALL PROFESSIONAL &amp; DSLR CAMERAS - 26.5MM ALUMINIUM LEGS Tripod Jmary KP-2264 - a lightweight but robust tripod for digital cameras and camcorders. Durable, stable, three-section tripod KP-2264, designed for use with cameras weighing up to 4 kg. Equipped with a tripod head with the smooth running and comfortable grip allows smooth filming various objects and panoramas. Tripod legs are equipped with reliable grip clips. A tripod can be transformed into a monopod. Maximum height tripod Jmary KP-2264 - 176.5 cm. Jmary Brand Professional High quality Tripod+Monopod with Maximum load: 4 kg 3 way head pan . The maximum height of: 176.5 cm.folded height is 57cm. Integrated rubber feet - non Slip and durable . High Quality Aluminium Profiling giving tripod a robust look and marvelous finishing. 165cm height stand alone monopod with integrated rubber feet , High quality aluminium leg. Light weight and easy to carry. Bottom have attached hook to hang the camera to rest. the total unit of tripod and monopod Weight is 1.65 kgs</p>', 7, '1 x Jmary Professional Tripod and Monopod Stand KP-2264 - Black', '0.4', 10, 10, 10, 679, 'Jmary Tripod Stand KP-2264 - Black', '6000', '4700', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Jmary Professional Tripod and Monopod Stand KP-2264 - Black', 'Specification:\n\nBrand: Jmary \n\nModel: KP-2264\n\nItem Weight: 1.9kg\n\nItem Model Number: 2264\n\nCompatible Device: All Professional & DSLR Cameras, Digital cameras & Mobile Phones\n\nAdditional Features: 176 CM height Monopod with Tripod, High Quality Aluminium Legs\n\nIncluded Components: Monopod , Tripod , Mobile Phone Holder, Bag', '2019-08-07', '12:39:53'),
(188, '72.255.40.171', 1, 1, 'Weifeng Professional Camera Tripod Wt-3520 - Black', 'weifeng-professional-camera-tripod-wt-3520---black-', '<p>Specification: Brand: Weifeng Model: WF3520 Head type: Fluid damping tripod head Material: Aluminum + ABS Tripod Sections: 3 Largest Diameter Range: 21.2mm Maximum height: 1680mm Minimum height: 550mm Storage Height: 575mm Load bearing: 3KG Total weight:0.92KG</p>', '<p>Discription: Weifeng Professional Camera Tripod Wt-3520 - Black Bubble Level Indicator With plastic hook Axial hand system Universal type non-slip feet adjust your angle precisely, keeps your tripod steady on any surface Incredible portability and flexibility 3-Section Aluminum Legs For maximum versatility and light weight Quick-Release Photo/Video Platform, change your equitment whatever you want 3-Way, 360-Degree Swivel Panhead for shooting at any angle Gearless Center Column for fast, precise column adjustment Quick-Release Leg Locks for quick, easy maneuverability Includes Nylon Carrying Case with Shoulder Strap Convenient, lightweight protection and mobility</p>', 7, '1 x Package Box1 x Carry Bag1 x Tripod', '0.4', 10, 10, 10, 679, 'Weifeng Camera Tripod Wt-3520 - Black', '2650', '2150', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Weifeng Professional Camera Tripod Wt-3520 - Black', 'Specification:\n\nBrand: Weifeng\n\nModel: WF3520\n\nHead type: Fluid damping tripod head\n\nMaterial: Aluminum + ABS\n\nTripod Sections: 3\n\nLargest Diameter Range: 21.2mm\n\nMaximum height: 1680mm\n\nMinimum height: 550mm\n\nStorage Height: 575mm\n\nLoad bearing: 3KG\n\nTotal weight:0.92KG', '2019-08-07', '12:39:53'),
(189, '72.255.40.171', 1, 1, 'Baseus Type-C Video Functional Notebook Cable C to C - C 10T', 'baseus-type-c-video-functional-notebook-cable-c-to-c---c-10t-', '<p>Specification: C-Video - Functional Notebook Cable C To C Premium Quality Plug and play synchronously Support 87W PD Quick charge Product weight: 0.0230 kg Package weight: 0.0760 kg Package Size(L x W x H): 21.00 x 10.00 x 1.70 cm / 8.27 x 3.94 x 0.67 inches</p>', '<p>Discription: Baseus Type-C Video Functional Notebook Cable C to C - C 10T Perfectly fits for HUAWEI, Dell and Xiaomi notebooks to connect the mobile phone to transfer data Reversible interface, plug and play, both sides can be inserted Make one interface to connect the Type-C device, and make the another interface to connect the TV, projector and other display devices Enjoy the two same or different screens, one screen for work, another screen for entertainment. The system will automatically recognize the display device and then display synchronously If no mirror image is shown, enter the display settings and select &quot;mirror image&quot; to display the synchronized picture of the phone and the reality Support 87W PD quick charging with 20.2V / 4.3A, and you just need about 2 hours to make your tablet ( for MacBook ) full of electricity The interface conforms to the Type-C 3.1 specification. Built-in safe and intelligent chip, 10 Gbit/s super speed transfer It can support the high-definition output of 4K and the sharpness intelligibility is four times as clear as 1080P No rust, reduces resistance to ensure the plug is long-lasting, durable and no deformation Prevent cable from winding, soft and flexible, not easy to break</p>', 7, '1 x Baseus Type-C Video Functional Notebook Cable C to C - C 10T', '0.1', 10, 10, 10, 679, 'Baseus Type-C Notebook Cable C to C - C 10T', '3600', '2600', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Baseus Type-C Video Functional Notebook Cable C to C - C 10T', 'Specification:\nC-Video - Functional Notebook Cable C To C\n\nPremium Quality\n\nPlug and play synchronously\n\nSupport 87W PD Quick charge\n\nProduct weight: 0.0230 kg \n\nPackage weight: 0.0760 kg \n\nPackage Size(L x W x H): 21.00 x 10.00 x 1.70 cm / 8.27 x 3.94 x 0.67 inches', '2019-08-07', '12:39:53'),
(190, '72.255.40.171', 1, 1, 'Aspor 3.0A Output 20000mAh Power Bank A398 - Black', 'aspor-30a-output-20000mah-power-bank-a398---black-', '<p>Specification: Aspor 3.0A Output 20000mAh Power Bank A398 - Black Brand Name:Aspor Color Black Material: Gradual bumps surface Capacity: 20000mAh Input:DC 5.1V / 2A max Input I.phone:5V /2Amax Input Type-C:5V / 2A max Output 1: 9V / 2A Outout 2:12V / 1.5A Fast Charging Compatible with Macbook , Other Type-C Laptops and Universal Mobiles Real Capacity Air Series Power Bank</p>', '<p>Specification: Aspor 3.0A Output 20000mAh Power Bank A398 - Black Brand Name:Aspor Color Black Material: Gradual bumps surface Capacity: 20000mAh Input:DC 5.1V / 2A max Input I.phone:5V /2Amax Input Type-C:5V / 2A max Output 1: 9V / 2A Outout 2:12V / 1.5A Fast Charging Compatible with Macbook , Other Type-C Laptops and Universal Mobiles Real Capacity Air Series Power Bank</p>', 7, '1 x Aspor 3.0A Output 20000mAh Power Bank A398 - Black', '0.2', 10, 10, 10, 679, 'Aspor 20000mAh Power Bank A398 - Black', '5500', '3900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Aspor 3.0A Output 20000mAh Power Bank A398 - Black', 'Specification:\n\nAspor 3.0A Output 20000mAh Power Bank A398 - Black\n\nBrand Name:Aspor\n\nColor Black\n\nMaterial: Gradual bumps surface\n\nCapacity: 20000mAh\n\nInput:DC 5.1V / 2A max\n\nInput I.phone:5V /2Amax\n\nInput Type-C:5V / 2A max Output 1: 9V / 2A\n\nOutout 2:12V / 1.5A\n\nFast Charging\n\nCompatible with Macbook , Other Type-C Laptops and Universal Mobiles\nReal Capacity\n\nAir Series Power Bank', '2019-08-07', '12:39:54'),
(191, '72.255.40.171', 2, 1, 'Aspor Dream Series 10000mAh Power Bank With 2USB-Ports - A341', 'aspor-dream-series-10000mah-power-bank-with-2usb-ports---a341-rabi-collections', '<p>Specification: Aspor Dream Series 10000mAh Power Bank With 2USB-Ports - A341 Compatibility - iOS, Android and other platforms. The capacity is 10 000 mAh. Battery type - Li-Polymer. The USB port is 2. Output USB1 - 1 A. The USB2 output is 2 A. The voltage is 5 V. The dimensions are 149 x 70 x 15 mm. Weight - 226 g. Includes Micro USB cable.</p>', '<p>Specification: Aspor Dream Series 10000mAh Power Bank With 2USB-Ports - A341 Compatibility - iOS, Android and other platforms. The capacity is 10 000 mAh. Battery type - Li-Polymer. The USB port is 2. Output USB1 - 1 A. The USB2 output is 2 A. The voltage is 5 V. The dimensions are 149 x 70 x 15 mm. Weight - 226 g. Includes Micro USB cable.</p>', 7, '1 x Aspor Dream Series 10000mAh Power Bank With 2USB-Ports - A341', '0.2', 10, 10, 10, 679, 'Aspor 10000mAh Power Bank A341', '1900', '1450', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Aspor Dream Series 10000mAh Power Bank With 2USB-Ports - A341', 'Specification:\n\nAspor Dream Series 10000mAh Power Bank With 2USB-Ports - A341\n\nCompatibility - iOS, Android and other platforms.\n\nThe capacity is 10 000 mAh.\n\nBattery type - Li-Polymer.\n\nThe USB port is 2.\n\nOutput USB1 - 1 A.\n\nThe USB2 output is 2 A.\n\nThe voltage is 5 V.\n\nThe dimensions are 149 x 70 x 15 mm.\n\nWeight - 226 g.\n\nIncludes Micro USB cable.', '2019-08-07', '12:39:54'),
(192, '72.255.40.171', 1, 1, 'Aspor Intelligent Output 12000mAh Power Bank A386 - Black', 'aspor-intelligent-output-12000mah-power-bank-a386---black-', '<p>Specification: Aspor Intelligent Output 12000mAh Power Bank A386 - Black Intelligent Output 12000mAh Power Bank A386 - White Good quality Material: Gradual bumps surface Capacity: 12000mAh Weight:338g Input:DC 5.1V / 2A max Output 1: 9V / 2A Outout 2:12V /1.5A Real Capacity</p>', '<p>Specification: Aspor Intelligent Output 12000mAh Power Bank A386 - Black Intelligent Output 12000mAh Power Bank A386 - White Good quality Material: Gradual bumps surface Capacity: 12000mAh Weight:338g Input:DC 5.1V / 2A max Output 1: 9V / 2A Outout 2:12V /1.5A Real Capacity</p>', 7, '1 x Aspor Intelligent Output 12000mAh Power Bank A386 - Black', '0.2', 10, 10, 10, 679, 'Aspor 12000mAh Power Bank A386 - Black', '3500', '2050', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Aspor Intelligent Output 12000mAh Power Bank A386 - Black', 'Specification:\n\n Aspor Intelligent Output 12000mAh Power Bank A386 - Black\n\nIntelligent Output 12000mAh Power Bank A386 - White\n\nGood quality \n\nMaterial: Gradual bumps surface\n\nCapacity: 12000mAh\n\nWeight:338g\n\nInput:DC 5.1V / 2A max\n\nOutput 1: 9V / 2A\n\nOutout 2:12V /1.5A\n\nReal Capacity', '2019-08-07', '12:39:54'),
(193, '72.255.40.171', 1, 1, 'Boya Universal Cardioid Shotgun Microphone BY-MM1 - Black', 'boya-universal-cardioid-shotgun-microphone-by-mm1---black-', '<p>Specification: Polar Pattern : Cardrioid Frequency Response : 35-18KHz +/- 3bD Sensitivity : -42dB +/- 1dB / 0dB Signal to Noise Ratio : 76dB SPL Plug ; 3.5mm TRS and TRRS Connector Dimensions : 22*81mm Weight : 86g</p>', '<p>Discription: Boya Universal Cardioid Shotgun Microphone BY-MM1 - Black Boya BY MM1 comes out in compact size and light weight aluminium constructure , it will not be a heavy burden while shooting. Plug and play design, no need to worry the battery status. Included inside with a anti-shock mount, which can effectively reduce unwanted vibration, cable and handling noise. Also included a furry windproof shield, which specially used for minimizing the wind and environmental noise for outdoor recording, make sure the sound crystal clear. Compact on-camera microphone Compatiable with smartphones, DSLR Cameras, Consumer Camcorders, PCs etc Rugged metal construction No battery required Professional furry windshield included</p>', 7, '1 x Boya Universal Cardioid Shotgun Microphone BY-MM1 - Black', '0.3', 10, 10, 10, 679, 'Boya Microphone BY-MM1 - Black', '3900', '3225', 24, '2019-07-16', '2019-07-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Boya Universal Cardioid Shotgun Microphone BY-MM1 - Black', 'Specification:\n\nPolar Pattern : Cardrioid\n\nFrequency Response : 35-18KHz +/- 3bD\n\nSensitivity : -42dB +/- 1dB / 0dB \n\nSignal to Noise Ratio : 76dB SPL\n\nPlug ; 3.5mm TRS and TRRS Connector\n\nDimensions : 22*81mm\n\nWeight : 86g', '2019-08-07', '12:39:54');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(194, '72.255.40.171', 1, 1, 'Laptop Slim Bag 13.3 - Black', 'laptop-slim-bag-133---black-', '<p>Laptop Slim Bag 13.3 - Black Discription: Laptop Bags for 13 inch Soft Cover - Black Compatible: All Laptop Display 13&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', '<p>Laptop Slim Bag 13.3 - Black Discription: Laptop Bags for 13 inch Soft Cover - Black Compatible: All Laptop Display 13&#39;&#39; PROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage WATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain. SHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop. LIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.</p>', 7, '1 x Laptop Slim Bag 13.3 - Black', '0.4', 10, 10, 10, 679, 'Laptop Slim Bag 13.3 - Black', '3000', '2000', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Slim Bag 13.3 - Black', 'Laptop Slim Bag 13.3 - Black\nDiscription:\n\nLaptop Bags for 13 inch Soft Cover - Black\n\nCompatible: All Laptop Display 13\'\'\n\nPROTECTION: Protect your Laptop with this Neoprene soft sleeve, which features a neoprene exterior and a cushioned polyester interior for protection against damage\n\nWATER RESISTANT: This Neoprene material is designed to protect you Laptop from all those accidental spills and if your caught out in the rain.\n\nSHOCK ABSORBING: For protection the Neoprene material absorbs shocks, and prevents bumps, scrapes, and scratches to your laptop.\n\nLIGHTWEIGHT: The Neoprene Soft Sleeve is portable and lightweight to shield your device wherever you take it. To make carrying easier it also comes with two handles should you need them.', '2019-08-07', '12:39:54'),
(195, '72.255.40.171', 2, 1, 'Macbook Sleeve Air&Retina Pro 13.3 Inch - Black', 'macbook-sleeve-airretina-pro-133-inch---black-rabi-collections', '<p>Specification: Simple envelop sleeve design, classic and sleek appearance Manufactured from premium poly urethane leather, glossy and textured, excellent shock absorber, scratch-resistance and durable Built-in strong magnetic closure, feel easy to access to the sleeve case and keep your macbook air 13 safty Ultra-fit for Macbook Air 13.3 inch and Macbook Pro 13.3 with Retina display Version [Not support Macbook 13 Pro with CD/DVD-ROM], slim and lightweight no more bulky feeling when holding it</p>', '<p>Specification: Simple envelop sleeve design, classic and sleek appearance Manufactured from premium poly urethane leather, glossy and textured, excellent shock absorber, scratch-resistance and durable Built-in strong magnetic closure, feel easy to access to the sleeve case and keep your macbook air 13 safty Ultra-fit for Macbook Air 13.3 inch and Macbook Pro 13.3 with Retina display Version [Not support Macbook 13 Pro with CD/DVD-ROM], slim and lightweight no more bulky feeling when holding it</p>', 7, '1 x Macbook Sleeve Air&Retina Pro 13.3 Inch - Black', '0.1', 10, 10, 10, 679, 'Macbook Sleeve Air&Retina Pro 13.3\"-BK', '1900', '1450', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Macbook Sleeve Air&Retina Pro 13.3 Inch - Black', 'Specification:\n\nSimple envelop sleeve design, classic and sleek appearance\n\nManufactured from premium poly urethane leather, glossy and textured, excellent shock absorber, scratch-resistance and durable\n\nBuilt-in strong magnetic closure, feel easy to access to the sleeve case and keep your macbook air 13 safty\n\nUltra-fit for Macbook Air 13.3 inch and Macbook Pro 13.3 with Retina display Version [Not support Macbook 13 Pro with CD/DVD-ROM], slim and lightweight no more bulky feeling when holding it', '2019-08-07', '12:39:54'),
(196, '72.255.40.171', 1, 1, 'Machenike Blade Runner Wing Series 15.6 Shoulder Bag - Grey', 'machenike-blade-runner-wing-series-156-shoulder-bag---grey-', '<p>Specification: Brand Name:MACHENIKE Closure Type:Zipper Pattern Type:Solid Type:Laptop Briefcase Style:Portable KUMON Material:Cotton Fabric Gender:Unisex Style:Business Model Number:Silver Wing Series Applicable Models:15.6 Inch Type:Blade Runner Pack - Silver Wing Series Applicable Model:15.6 Inch Gaming Laptop Style:Simple Color:Silver-gray Main materials:Pure cotton canvas Structure:Main Pocket, mesh pockets, notebook pocket, etc Dimensions:48*35*25 Net Weight:0.55kg Discription: Machenike Blade Runner Wing Series 15.6 Shoulder Bag - Grey</p>', '<p>Specification: Brand Name:MACHENIKE Closure Type:Zipper Pattern Type:Solid Type:Laptop Briefcase Style:Portable KUMON Material:Cotton Fabric Gender:Unisex Style:Business Model Number:Silver Wing Series Applicable Models:15.6 Inch Type:Blade Runner Pack - Silver Wing Series Applicable Model:15.6 Inch Gaming Laptop Style:Simple Color:Silver-gray Main materials:Pure cotton canvas Structure:Main Pocket, mesh pockets, notebook pocket, etc Dimensions:48*35*25 Net Weight:0.55kg Discription: Machenike Blade Runner Wing Series 15.6 Shoulder Bag - Grey</p>', 7, '1 x Machenike Blade Runner Wing Series 15.6 Shoulder Bag - Grey', '0.4', 10, 10, 10, 679, 'Machenike 15.6 Shoulder Bag - Grey', '3600', '2400', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Machenike Blade Runner Wing Series 15.6 Shoulder Bag - Grey', 'Specification:\n\nBrand Name:MACHENIKE\n\nClosure Type:Zipper\n\nPattern Type:Solid\n\nType:Laptop Briefcase\n\nStyle:Portable KUMON\n\nMaterial:Cotton Fabric\n\nGender:Unisex\n\nStyle:Business\n\nModel Number:Silver Wing Series\n\nApplicable Models:15.6 Inch\n\nType:Blade Runner Pack - Silver Wing Series\n\nApplicable Model:15.6 Inch Gaming Laptop\n\nStyle:Simple\n\nColor:Silver-gray\n\nMain materials:Pure cotton canvas\n\nStructure:Main Pocket, mesh pockets, notebook pocket, etc\n\nDimensions:48*35*25\n\nNet Weight:0.55kg\n\nDiscription:\n\nMachenike Blade Runner Wing Series 15.6 Shoulder Bag - Grey', '2019-08-07', '12:39:54'),
(197, '72.255.40.171', 1, 1, 'Remax Lightning Cable 2m For Iphone RC-06i - White', 'remax-lightning-cable-2m-for-iphone-rc-06i---white-', '<p>Specification: This cable can be used to charge iPhone battery and transfer data. Cable is made of quality materials that make this cable is not easily damaged and can transmit data with high speed. Compatible for all iPhone and iPod using lightning port.</p>', '<p>Description: Lightning Light Speed Cable from Remax with quality cable material that is durable and not easily damaged. This cable can be used to charge iPhone battery and also transfer data.</p>', 7, '1 x Remax Lightning Cable 2m For Iphone RC-06i - White', '0.1', 10, 10, 10, 679, 'Remax Lightning Cable Iphone RC-06i', '450', '300', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Lightning Cable 2m For Iphone RC-06i - White', 'Specification:\n\nThis cable can be used to charge iPhone battery and transfer data.\n\nCable is made of quality materials that make this cable is not easily damaged and can transmit data with high speed.\n\nCompatible for all iPhone and iPod using lightning port.', '2019-08-07', '12:39:54'),
(198, '72.255.40.171', 1, 1, 'Remax Alien Micro USB Cable RC-030m - Black', 'remax-alien-micro-usb-cable-rc-030m---black-', '<p>Specification: Gender: Unisex Length: 1.0 Model: RC-030m Size (L x W x H ): 100 x 0.5 x 1cm Product warranty: 7 days replacement Weight: 0.03Kg Type Cable: Micro USB</p>', '<p>Discription: REMAX RC-030m Alien Micro USB 1m The Remax RC-030m Alien 1m Alien Micro USB Cable is flat, strong, environment friendly and has a tangle free design. It is made with TPE (ROHS) and high purity copper wire for fast and stable transmission speed.</p>', 7, '1 x Remax Alien Micro USB Cable RC-030m - Black', '0.1', 10, 10, 10, 679, 'Remax USB Cable RC-030m - Black', '525', '300', 24, '2019-07-07', '2019-07-10', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Alien Micro USB Cable RC-030m - Black', 'Specification:\n\nGender: Unisex\n\nLength: 1.0\n\nModel: RC-030m\n\nSize (L x W x H ): 100 x 0.5 x 1cm\n\nProduct warranty: 7 days replacement\n\nWeight: 0.03Kg\n\nType Cable: Micro USB', '2019-08-07', '12:39:54'),
(199, '72.255.40.171', 1, 1, 'Laptop Red Line Sleeves 17 Inch - Black', 'laptop-red-line-sleeves-17-inch---black-', '<p>Laptop Red Line Sleeves 17 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your XPS safely covered. A soft inner lining cushions the cover of your XPS from scratches and scuffs. Lightweight, yet durable, with a slim design, the Dell Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your XPS 13 when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', '<p>Laptop Red Line Sleeves 17 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your XPS safely covered. A soft inner lining cushions the cover of your XPS from scratches and scuffs. Lightweight, yet durable, with a slim design, the Dell Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your XPS 13 when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', 7, '1 x Laptop Red Line Sleeves 17 Inch - Black', '0.2', 10, 10, 10, 679, 'Laptop Red Line Sleeves 17 Inch - Black', '800', '570', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Red Line Sleeves 17 Inch - Black', 'Laptop Red Line Sleeves 17 Inch - Black\nSturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your XPS safely covered. A soft inner lining cushions the cover of your XPS from scratches and scuffs.\n\nLightweight, yet durable, with a slim design, the Dell Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience.\n\nDurable materials protect your XPS 13 when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.', '2019-08-07', '12:39:54'),
(200, '72.255.40.171', 1, 1, 'Laptop Side Sleeves 13 Inch - Black', 'laptop-side-sleeves-13-inch---black-', '<p>Laptop Side Sleeves 15.6 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. A soft inner lining cushions the cover of your machine from scratches and scuffs, 14&quot;, 15&quot; Lightweight, yet durable, with a slim design, the Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', '<p>Laptop Side Sleeves 15.6 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. A soft inner lining cushions the cover of your machine from scratches and scuffs, 14&quot;, 15&quot; Lightweight, yet durable, with a slim design, the Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', 7, '1 x Laptop Side Sleeves 13 Inch - Black', '0.2', 10, 10, 10, 679, 'Laptop Side Sleeves 13 Inch - Black', '750', '450', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Side Sleeves 13 Inch - Black', 'Laptop Side Sleeves 15.6 Inch - Black\nSturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. \n\nA soft inner lining cushions the cover of your machine from scratches and scuffs, 14\", 15\"\n\nLightweight, yet durable, with a slim design, the  Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience.\n\nDurable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.', '2019-08-07', '12:39:54'),
(201, '72.255.40.171', 1, 1, 'Laptop Side Sleeves 14 Inch - Black', 'laptop-side-sleeves-14-inch---black-', '<p>Laptop Side Sleeves 14 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. A soft inner lining cushions the cover of your machine from scratches and scuffs, 14&quot; Lightweight, yet durable, with a slim design, the Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', '<p>Laptop Side Sleeves 14 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. A soft inner lining cushions the cover of your machine from scratches and scuffs, 14&quot; Lightweight, yet durable, with a slim design, the Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', 7, '1 x Laptop Side Sleeves 14 Inch - Black', '0.1', 10, 10, 10, 679, 'Laptop Side Sleeves 14 Inch - Black', '900', '525', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Side Sleeves 14 Inch - Black', 'Laptop Side Sleeves 14 Inch - Black\nSturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. \n\nA soft inner lining cushions the cover of your machine from scratches and scuffs, 14\"\n\nLightweight, yet durable, with a slim design, the  Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience.\n\nDurable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.', '2019-08-07', '12:39:54'),
(202, '72.255.40.171', 2, 1, 'Laptop Red Line Sleeves 13 Inch - Black', 'laptop-red-line-sleeves-13-inch---black-rabi-collections', '<p>Laptop Red Line Sleeves 13 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your XPS safely covered. A soft inner lining cushions the cover of your XPS from scratches and scuffs. Lightweight, yet durable, with a slim design, the Dell Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your XPS 13 when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', '<p>Laptop Red Line Sleeves 13 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your XPS safely covered. A soft inner lining cushions the cover of your XPS from scratches and scuffs. Lightweight, yet durable, with a slim design, the Dell Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your XPS 13 when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', 7, '1 x Laptop Red Line Sleeves 13 Inch - Black', '0.1', 10, 10, 10, 679, 'Laptop Red Line Sleeves 13 Inch - Black', '600', '450', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Red Line Sleeves 13 Inch - Black', 'Laptop Red Line Sleeves 13 Inch - Black\nSturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your XPS safely covered. A soft inner lining cushions the cover of your XPS from scratches and scuffs.\n\nLightweight, yet durable, with a slim design, the Dell Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience.\n\nDurable materials protect your XPS 13 when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.', '2019-08-07', '12:39:54'),
(203, '72.255.40.171', 1, 1, 'Laptop Side Sleeves 17 Inch - Black', 'laptop-side-sleeves-17-inch---black-', '<p>Laptop Side Sleeves 17.6 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. A soft inner lining cushions the cover of your machine from scratches and scuffs, 17&quot; Lightweight, yet durable, with a slim design, the Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', '<p>Laptop Side Sleeves 17.6 Inch - Black Sturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. A soft inner lining cushions the cover of your machine from scratches and scuffs, 17&quot; Lightweight, yet durable, with a slim design, the Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience. Durable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.</p>', 7, '1 x Laptop Side Sleeves 17 Inch - Black', '0.2', 10, 10, 10, 679, 'Laptop Side Sleeves 17 Inch - Black', '1000', '700', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Laptop Side Sleeves 17 Inch - Black', 'Laptop Side Sleeves 17.6 Inch - Black\nSturdy tarpaulin and other durable, high-quality materials, with a rugged zipper, keep your laptop safely covered. \n\nA soft inner lining cushions the cover of your machine from scratches and scuffs, 17\"\n\nLightweight, yet durable, with a slim design, the  Premier Sleeve (S) is a sleek, essential accessory that helps enable your mobile office experience.\n\nDurable materials protect your laptop when you are en route to a meeting, heading to the office or going anywhere your mobile lifestyle takes you.', '2019-08-07', '12:39:54'),
(204, '72.255.40.171', 2, 1, 'Brinch Laptop Shoulder Bag 228 - Black', 'brinch-laptop-shoulder-bag-228---black-rabi-collections', '<p>Made of quality anti-tear lightweight fabric, Features a thick foam padded laptop sleeve with velcro strap in main compartment, that protects your laptop from accidental bump, shock, scratch. 2 non-zippered pockets can hold mouse,adapter, and middle is very roomy for big items, such as books. Zippered front compartment with 2 small pockets and 2 pen pockets inside is ideal for your phone,pens etc. A back belt is designed on the back, that is easily fixed to trolley suitcase firmly on travel. Comes with a removeable and adjustable PU padded shoulder strap, and dual sturdy handles for long time comfortably Carrying Sizes: Exterior-43x31x8CM/16.9x12.2x3.1Inch, Laptop Sleeve-40.5x28CM/15.9x11Inch, fits most 15 - 15.6 inch Laptop / Notebooks / MacBook / Ultrabook /Chromebook (Apple Macbook / Acer / Asus / Dell / Fujitsu / Lenovo / HP / Samsung / Sony / Toshiba etc.). May not snugly fit all computers due to variations in the sizes of different models.</p>', '<p>Made of quality anti-tear lightweight fabric, Features a thick foam padded laptop sleeve with velcro strap in main compartment, that protects your laptop from accidental bump, shock, scratch. 2 non-zippered pockets can hold mouse,adapter, and middle is very roomy for big items, such as books. Zippered front compartment with 2 small pockets and 2 pen pockets inside is ideal for your phone,pens etc. A back belt is designed on the back, that is easily fixed to trolley suitcase firmly on travel. Comes with a removeable and adjustable PU padded shoulder strap, and dual sturdy handles for long time comfortably Carrying Sizes: Exterior-43x31x8CM/16.9x12.2x3.1Inch, Laptop Sleeve-40.5x28CM/15.9x11Inch, fits most 15 - 15.6 inch Laptop / Notebooks / MacBook / Ultrabook /Chromebook (Apple Macbook / Acer / Asus / Dell / Fujitsu / Lenovo / HP / Samsung / Sony / Toshiba etc.). May not snugly fit all computers due to variations in the sizes of different models.</p>', 7, '1 x Brinch Laptop Shoulder Bag 228 - Black', '0.4', 10, 10, 10, 679, 'Brinch Laptop Shoulder Bag 228 - Black', '3500', '3200', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Brinch Laptop Shoulder Bag 228 - Black', 'Made of quality anti-tear lightweight fabric, Features a thick foam padded laptop sleeve with velcro strap in main compartment, that protects your laptop from accidental bump, shock, scratch.\n\n2 non-zippered pockets can hold mouse,adapter, and middle is very roomy for big items, such as books.\n\nZippered front compartment with 2 small pockets and 2 pen pockets inside is ideal for your phone,pens etc.\n\nA back belt is designed on the back, that is easily fixed to trolley suitcase firmly on travel.\n\nComes with a removeable and adjustable PU padded shoulder strap, and dual sturdy handles for long time comfortably\n\nCarrying Sizes: Exterior-43x31x8CM/16.9x12.2x3.1Inch,\n\nLaptop Sleeve-40.5x28CM/15.9x11Inch, fits most 15 - 15.6 inch Laptop / Notebooks / MacBook / Ultrabook /Chromebook (Apple Macbook / Acer / Asus / Dell / Fujitsu / Lenovo / HP / Samsung / Sony / Toshiba etc.).\n\nMay not snugly fit all computers due to variations in the sizes of different models.', '2019-08-07', '12:39:54'),
(205, '72.255.40.171', 1, 1, 'Remax Xii Zone Gaming Mouse V3501 - Black', 'remax-xii-zone-gaming-mouse-v3501---black-', '<p>Specification: Remax gaming mouse has a body mouse with a quality material that is strong and ergonomic so comfortable to use. Suitable for various mouse grip styles like palm, claw and fingertip. Egnormic Design.</p>', '<p>Discription: Remax gaming mouse comes with a gigant body mouse design like a gaming mouse in general. Ergonomic design makes this mouse very convenient to use, coupled with an accurate mouse sensor then your gaming performance will increase.</p>', 7, '1 x Remax Xii Zone Gaming Mouse V3501 - Black', '0.1', 10, 10, 10, 679, 'Remax Gaming Mouse V3501 - Black', '3800', '2400', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Xii Zone Gaming Mouse V3501 - Black', 'Specification:\n\nRemax gaming mouse has a body mouse with a quality material that is strong and ergonomic so comfortable to use. \n\nSuitable for various mouse grip styles like palm, claw and fingertip.\n\nEgnormic Design.', '2019-08-07', '12:39:54'),
(206, '72.255.40.171', 1, 1, 'Flanneret 7010 Laptop Backpack 17', 'flanneret-7010-laptop-backpack-17-', '<p>Color classification: Grey Style Double shoulder Material Oxford Cloth Size 15.6&quot; Style Europe Brand Flanneret Can Support Upto 17&quot; Size</p>', '<p>Color classification: Grey Style Double shoulder Material Oxford Cloth Size 15.6&quot; Style Europe Brand Flanneret Can Support Upto 17&quot; Size</p>', 7, '1 x Flanneret 7010 Laptop Backpack 17', '0.4', 10, 10, 10, 679, 'Flanneret 7010 Laptop Backpack 17', '7000', '3900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Flanneret 7010 Laptop Backpack 17', 'Color classification: Grey\n\nStyle Double shoulder\n\nMaterial Oxford Cloth\n\nSize 15.6\"\n\nStyle Europe\n\nBrand Flanneret\n\nCan Support Upto 17\" Size', '2019-08-07', '12:39:54'),
(207, '72.255.40.171', 1, 1, 'REMAX RP1 8GB Professional Audio Recorder Portable Digital Voice Recorder - Black', 'remax-rp1-8gb-professional-audio-recorder-portable-digital-voice-recorder---black-', '<p>Specification Brand: Remax Name: RP1 Voice Recorder Model: RP1 Memory: 8G Battery: 260mAh Lithium Battery Screen: OLED Display Screen Size: 91 x 29 x 8mm Color: Black</p>', '<p>Description Remax USA Support MP3 music playback and MAV sound recording Can record for a long time and also have telephone recording function With Line-in audio direct recording function Can record the recording date With A-B repeating function With built-in Mic With external high power speaker Built-in Lithium battery, can record continuously for 13 hours</p>', 7, '1 x REMAX RP1 8GB Professional Audio Recorder Portable Digital Voice Recorder - Black', '0.1', 10, 10, 10, 679, 'REMAX RP1 8GB Voice Recorder-Black', '4500', '3900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'REMAX RP1 8GB Professional Audio Recorder Portable Digital Voice Recorder - Black', 'Specification\n\nBrand: Remax\n\nName: RP1 Voice Recorder\n\nModel: RP1\n\nMemory: 8G\n\nBattery: 260mAh Lithium Battery\n\nScreen: OLED Display Screen\n\nSize: 91 x 29 x 8mm\n\nColor: Black', '2019-08-07', '12:39:54'),
(208, '72.255.40.171', 1, 1, 'Remax Wired Music Earphone RM-910', 'remax-wired-music-earphone-rm-910-', '<p>Wired Music Earphone RM-910 - Black Remax Earphone RM-910 Remax is ideal for listening to music, watching movies or chatting on the phone Comes with a microphone on the strap. Compatible with devices running iOS and Android operating systems for ease of use Headphone jack is suitable for use with music players, tablets, computers or smartphones with 3.5 mm jack.</p>', '<p>Wired Music Earphone RM-910 - Black Remax Earphone RM-910 Remax is ideal for listening to music, watching movies or chatting on the phone Comes with a microphone on the strap. Compatible with devices running iOS and Android operating systems for ease of use Headphone jack is suitable for use with music players, tablets, computers or smartphones with 3.5 mm jack.</p>', 7, '1 x Victory Aluminium Professional Tripod 2011 - Silver', '0.1', 10, 10, 10, 679, 'Remax Wired Music Earphone RM-910', '2000', '1400', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Wired Music Earphone RM-910', 'Wired Music Earphone RM-910 - Black\n\nRemax Earphone RM-910\n\nRemax  is ideal for listening to music, watching movies or chatting on the phone\n\nComes with a microphone on the strap.\n\nCompatible with devices running iOS and Android operating systems for ease of use\n\nHeadphone jack is suitable for use with music players, tablets, computers or smartphones with 3.5 mm jack.', '2019-08-07', '12:39:54'),
(209, '72.255.40.171', 1, 1, 'Remax Newest Stereo Wired Music Earphone with Microphone RM-512 - Black', 'remax-newest-stereo-wired-music-earphone-with-microphone-rm-512---black-', '<p>Specification: Brand: REMAX Model:RM-512 Material:ABS+Aluminium alloy Frequency Response:20Hz-20kHz Sensitivity(SPL): 95db&plusmn;4db Impedance:32&Omega; Rated power: 3mW Plug: :￠3.5mm Cord Length: 1.2meters</p>', '<p>Feature: Our material use High elastic TPE wire,Not easy to wound,Durable for a long time and Collect convenient. We use 3.5mm Gold-plated plug,Strong antioxidant,Good conductance insure audio signal is transmitted effectively</p>', 7, '1 x Remax Newest Stereo Wired Music Earphone with Microphone RM-512 - Black', '0.1', 10, 10, 10, 679, 'Remax Wired Earphone RM-512 - Black', '500', '450', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Newest Stereo Wired Music Earphone with Microphone RM-512 - Black', 'Specification:\n\nBrand: REMAX\n\nModel:RM-512\n\nMaterial:ABS+Aluminium alloy\n\nFrequency Response:20Hz-20kHz\n\nSensitivity(SPL): 95db±4db\n\nImpedance:32Ω\n\nRated power: 3mW\n\nPlug: :￠3.5mm\n\nCord Length: 1.2meters', '2019-08-07', '12:39:54'),
(210, '72.255.40.171', 1, 1, 'Macbook Screen Protector Pro-Retina 15 Inch - Transparent', 'macbook-screen-protector-pro-retina-15-inch---transparent-', '<p>Anti-glare matte technology which Removes glare and resists fingerprints Made from the highest quality Japanese PET Film with 100% Bubble-Free Adhesives for easy installation and no residue when removed Pre-cut to fit your screen exactly . Scratch resistant coating. Real Touch Sensitivity for a natural feel that provides flawless touch screen accuracy</p>', '<p>Anti-glare matte technology which Removes glare and resists fingerprints Made from the highest quality Japanese PET Film with 100% Bubble-Free Adhesives for easy installation and no residue when removed Pre-cut to fit your screen exactly . Scratch resistant coating. Real Touch Sensitivity for a natural feel that provides flawless touch screen accuracy</p>', 7, '1 x Macbook Screen Protector Pro-Retina 15 Inch - Transparent', '0.1', 10, 10, 10, 679, 'Macbook Screen Protector PR 15\"', '850', '500', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Macbook Screen Protector Pro-Retina 15 Inch - Transparent', 'Anti-glare matte technology which Removes glare and resists fingerprints\n\nMade from the highest quality Japanese PET Film with 100% Bubble-Free Adhesives for easy installation and no residue when removed\n\nPre-cut to fit your screen exactly .\n\nScratch resistant coating.\n\nReal Touch Sensitivity for a natural feel that provides flawless touch screen accuracy', '2019-08-07', '12:39:54'),
(211, '72.255.40.171', 1, 1, 'Remax RL-L200 - 3.5 AUX Audio Cable 2meter - Black', 'remax-rl-l200---35-aux-audio-cable-2meter---black-', '<p>Brand: Remax Name: RL-L 200 Smart Audio Cable Model: RL-L 200 Material: Eco-friendly TPE cable Compatibility: iOS &amp; Android Features: High Quality Sound / More Convenience with Smart Control Cable Length : 2000mm Color: Black</p>', '<p>Brand: Remax Name: RL-L 200 Smart Audio Cable Model: RL-L 200 Material: Eco-friendly TPE cable Compatibility: iOS &amp; Android Features: High Quality Sound / More Convenience with Smart Control Cable Length : 2000mm Color: Black</p>', 7, '1 x Remax RL-L200 - 3.5 AUX Audio Cable 2meter - Black', '0.1', 10, 10, 10, 679, 'Remax RL-L200 - AUX Cable Black', '550', '350', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax RL-L200 - 3.5 AUX Audio Cable 2meter - Black', 'Brand: Remax\n\nName: RL-L 200 Smart Audio Cable\n\nModel: RL-L 200\n\nMaterial: Eco-friendly TPE cable\n\nCompatibility: iOS & Android\n\nFeatures: High Quality Sound / More Convenience with Smart Control\n\nCable Length : 2000mm\n\nColor: Black', '2019-08-07', '12:39:54'),
(212, '72.255.40.171', 1, 1, 'Remax TPU Crystal Transparent Case For iPhone 7', 'remax-tpu-crystal-transparent-case-for-iphone-7-', '<p>Brand Name:Remax Size:For iPhone 7 Mobile Phone Case Function:Anti-knock Compatible iPhone Model:iphone 7 Compatible Brand:Apple iPhones Type:Case</p>', '<p>Brand Name:Remax Size:For iPhone 7 Mobile Phone Case Function:Anti-knock Compatible iPhone Model:iphone 7 Compatible Brand:Apple iPhones Type:Case Package:Environmental protection sealing bag Compatible:For Apple iPhone 7 Material:TPU Soft Cell Phone Case Cover for Apple iphone7 Style:TPU Soft Case Clear Cover Case For iPhone 7 Feature 1:Coque Pour Etui CasoFunda Para Phone Crystal TPU Case Feature 2:Super Soft Clear Cover For Iphone 7</p>', 7, '1 x Remax TPU Crystal Transparent Case For iPhone 7', '0.1', 10, 10, 10, 679, 'Remax TPU Transparent Case iPhone 7', '950', '550', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax TPU Crystal Transparent Case For iPhone 7', 'Brand Name:Remax\n\nSize:For iPhone 7 Mobile Phone Case\n\nFunction:Anti-knock\n\nCompatible iPhone Model:iphone 7\n\nCompatible Brand:Apple iPhones\n\nType:Case', '2019-08-07', '12:39:54'),
(213, '72.255.40.171', 1, 1, 'Remax Balance Series Case For iPhone 7 & 7 Plus', 'remax-balance-series-case-for-iphone-7--7-plus-', '<p>Brand: REMAX Name: Balance Series Case Model: For iPhone 7 / 7Plus Thickness:0.88mm</p>', '<p>Brand: REMAX Name: Balance Series Case Model: For iPhone 7 / 7Plus Thickness:0.88mm Process: Eco-friendly PC+TPU Feature: Universal hole design, compatible with iPhone 7 &amp; 7plus Color: Gold / Silver</p>', 7, '1 x Remax Balance Series Case For iPhone 7 & 7 Plus', '0.1', 10, 10, 10, 679, 'Remax Balance Sr Case iPhone 7&7Plus', '1250', '750', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Balance Series Case For iPhone 7 & 7 Plus', 'Brand: REMAX\n\nName: Balance Series Case\n\nModel: For iPhone 7 / 7Plus\n\nThickness:0.88mm', '2019-08-07', '12:39:54'),
(214, '72.255.40.171', 1, 1, 'Remax Jerry Series Creative Case For iPhone 7 & 7 Plus', 'remax-jerry-series-creative-case-for-iphone-7--7-plus-', '<p>Brand: REMAX Name: Jerry Series Case Model: For iPhone 7 / 7Plus Color: Gold Features: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection</p>', '<p>Brand: REMAX Name: Jerry Series Case Model: For iPhone 7 / 7Plus Color: Gold Features: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection</p>', 7, '1 x Remax Jerry Series Creative Case For iPhone 7 & 7 Plus', '0.1', 10, 10, 10, 679, 'Remax Jerry Series Case For iPhone 7 & 7 Plus', '1800', '800', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Jerry Series Creative Case For iPhone 7 & 7 Plus', 'Brand: REMAX\n\nName: Jerry Series Case\n\nModel: For iPhone 7 / 7Plus\n\nColor:  Gold\n\nFeatures: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection', '2019-08-07', '12:39:54'),
(215, '72.255.40.171', 1, 1, 'Remax Smooth Like Silk Kellen Series Case For Apple iPhone 7 (Black)', 'remax-smooth-like-silk-kellen-series-case-for-apple-iphone-7-black-', '<p>Brand: REMAX Name: Kellen Series Case Model: For iPhone 7 / 7Plus Materials: Silicone-jel + PC Features: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection Color: Black</p>', '<p>Brand: REMAX Name: Kellen Series Case Model: For iPhone 7 / 7Plus Materials: Silicone-jel + PC Features: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection Color: Black</p>', 7, '1 x Remax Smooth Like Silk Kellen Series Case For Apple iPhone 7 (Black)', '0.1', 10, 10, 10, 679, 'Remax Silk Kellen Case For iPhone 7 (Black)', '1500', '900', 24, '2019-04-16', '2019-06-16', 0, 0, 1, '00:00:00', '00:00:00', NULL, 'Remax Smooth Like Silk Kellen Series Case For Apple iPhone 7 (Black)', 'Brand: REMAX\n\nName: Kellen Series Case\n\nModel: For iPhone 7 / 7Plus\n\nMaterials: Silicone-jel + PC\n\nFeatures: Soft touch / Fingerprint-proof / Oil-proof / Elastic Protection\n\nColor: Black', '2019-08-07', '12:39:54'),
(216, '72.255.40.171', 1, 1, 'Yunteng Selfie Stick 1288 - Black', 'yunteng-selfie-stick-1288---black-504', '<ul>\r\n	<li>Lightweight aluminum for easy mobility&nbsp;</li>\r\n	<li>Grooved monopod poles increase structural stability&nbsp;</li>\r\n	<li>Retractable spike rubber feet&nbsp;</li>\r\n	<li>NBR grip on top of monopod for increase handling&nbsp;</li>\r\n	<li>Built-in wrist strap prevents monopod from falling from hand&nbsp;</li>\r\n	<li>Perfect for SLR, digital camera, Gopro camera, DV, a small camera, mobile phone, Smart Phones.&nbsp;</li>\r\n</ul>', '<ul>\r\n	<li>Lightweight aluminum for easy mobility&nbsp;</li>\r\n	<li>Grooved monopod poles increase structural stability&nbsp;</li>\r\n	<li>Retractable spike rubber feet&nbsp;</li>\r\n	<li>NBR grip on top of monopod for increase handling&nbsp;</li>\r\n	<li>Built-in wrist strap prevents monopod from falling from hand&nbsp;</li>\r\n	<li>Perfect for SLR, digital camera, Gopro camera, DV, a small camera, mobile phone, Smart Phones.&nbsp;</li>\r\n</ul>', 0, 'Yunteng Selfie Stick 1288 - Black', '0.5', 10, 10, 10, 504, 'Yunteng Selfie Stick 1288 - Black', '999', '850', 48, '2019-08-23', '2019-08-26', 0, 0, 0, '17:00:00', '20:00:00', 'https://www.youtube.com/watch?v=k6Eefabi6wc', 'Yunteng Selfie Stick 1288 - Black', 'Yunteng Selfie Stick 1288 - Black', '2019-08-07', '12:48:39'),
(218, '72.255.40.171', 1, 1, 'Tablet Bubble Pouch 7 \'inch\'', 'tablet-bubble-pouch-7-\'inch\'-504', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable);Type:Non-OEM /Aftermarket itemsAccessory ONLY; Lenovo Dell HP does not endorse use of these products.. Leegoal bulk packing with good quality warranty..</p>', '<p>Made from lightweight soft neoprence material. Slim-fit but enough padding / cushions to protect your Tablet PC from Damage and Scratch.. Washable. Do not worry about it getting dirty. Always keeping it new.. Size:Approx. 20.5x14.5cm (Extendable);Type:Non-OEM /Aftermarket itemsAccessory ONLY; Lenovo Dell HP does not endorse use of these products.. Leegoal bulk packing with good quality warranty..</p>', 7, 'Tablet Bubble Pouch 7 \'inch\'', '0.2', NULL, NULL, NULL, 504, 'Tablet Bubble Pouch 7 \'inch\'', '420', '300', 20, '2019-08-30', '2019-09-25', 0, 0, 0, '19:00:00', '18:46:00', 'https://www.youtube.com/embed/kd5KqlmcHNo', 'tablet pouch , pouch pouch for 7 inch tablet ,', NULL, '2019-08-07', '12:47:53'),
(222, '72.255.40.171', 1, 1, 'Dell Laptop Backpack - Black', 'dell-laptop-backpack---black-504', '<p>Stable Quality Economical Model Multi Zipper Spacious Dell Log Padded Compartment Rain Proof Inside Strap and pocket</p>', '<p>Stable Quality Economical Model Multi Zipper Spacious Dell Log Padded Compartment Rain Proof Inside Strap and pocket</p>', 7, '1 x Dell Laptop Backpack - Black', '0.4', NULL, NULL, NULL, 504, 'Dell Laptop Backpack - Black', '1750', '1000', 20, '2019-08-30', '2019-09-04', 0, 0, 0, '19:00:00', '18:46:00', 'https://www.youtube.com/embed/kd5KqlmcHNo', 'bags , laptop bags , laptop bag for 15', NULL, '2019-08-07', '12:47:13'),
(223, '72.255.40.171', 2, 1, 'Laptop 3in1 leather Type PU Bag - Black', 'laptop-3in1-leather-type-pu-bag---black-rabi-collections', 'Laptop 3in1 leather Type PU Bag - Black\n\nMade from water-repellent 1680D Ballistic Nylon\n\n', 'Laptop 3in1 leather Type PU Bag - Black\n\nMade from water-repellent 1680D Ballistic Nylon\n\nThree-way carry system (Backpack, Messenger, Tote)\n\n13-15.6 Macbook/Laptop compartment\n\niPad and iPhone compatible\n\nFront organiser pockets\n\nSecure travel documents pouch\n\nElasticated side bottle cage\n\nH43cm x W31cm x D15cm (Fits up to 15.6 inch laptop)\n\nCapacity: 10 Litres\n\nWeight 1.66kg\n\n', 7, '1 x Laptop 3in1 leather Type PU Bag - Black', '0.4', NULL, NULL, NULL, 504, 'Laptop 3in1 leather Type PU Bag - Black', '2200', '1300', 24, '2019-08-30', '2019-09-05', 0, 0, 0, '18:00:00', '19:00:00', 'https://www.youtube.com/embed/kd5KqlmcHNo', 'bags , laptop bags , leather bags , leather laptop bag , laptop bag for 15', NULL, '2019-08-07', '12:39:54'),
(224, '72.255.40.171', 1, 1, 'Gaba Laptop Screen Cleaning Kit', 'gaba-laptop-screen-cleaning-kit-504', '<p>Gaba Laptop Screen Cleaning Kit Ex-Pro&reg; LCD/SCREEN Complete Cleaning Kit 60ml of Cleaning Fluid specifically for LCD/TFT Type screens. .</p>', '<p>Gaba Laptop Screen Cleaning Kit Ex-Pro&reg; LCD/SCREEN Complete Cleaning Kit 60ml of Cleaning Fluid specifically for LCD/TFT Type screens. . Anti Static Cleaning Brush with cover case, great for keyboards, keypads, buttons and hard dust collecting places. Micro Fibre non scratch cleaning cloth, very soft wipes away dust and dirt, can be washed and re-used. Includes packaway bag to keep all items neat &amp; tidy. Suitable for all types of LCD Type Screens including TV&#39;s and Laptops,Monitors, Cameras, Games consoles etc...</p>', 7, '1 x Gaba Laptop Screen Cleaning Kit', '0.2', NULL, NULL, NULL, 504, 'Gaba Laptop Screen Cleaning Kit', '550', '350', 20, '2019-04-09', '2019-05-31', 0, 0, 1, '00:00:00', '00:00:00', 'https://www.youtube.com/embed/kd5KqlmcHNo', 'cleaning kit , laptop cleaning kit , laptop universal cleaning kit ,', NULL, '2019-08-07', '12:46:32'),
(225, '72.255.40.171', 1, 1, 'Handboss Universal Foam Cleaning Agent', 'handboss-universal-foam-cleaning-agent-504', '<p>Handboss Universal Foam Cleaning Agent Made of Natural Surface Active Agent</p>', '<p>Handboss Universal Foam Cleaning Agent Made of Natural Surface Active Agent Contains Plant Essence with powerful cleaning properties refined by scientific processing Environment friendly, sterilized, non-toxic, anti-microbial and deodorizing Volume: 650ml</p>', 7, 'Handboss Universal Foam Cleaning Agent', '0.2', NULL, NULL, NULL, 504, 'Handboss Universal Foam Cleaning Agent', '900', '600', 24, '2019-08-09', '2019-08-09', 0, 0, 0, '18:00:00', '20:00:00', 'https://www.youtube.com/embed/kd5KqlmcHNo', 'cleaning kit , cleaning kit , cleaning foam , universal cleaner', NULL, '2019-08-07', '12:44:15'),
(227, '103.217.178.23', 17, 1, 'Pack Of 100 - Latex Free Gloves - White', 'pack-of-100---latex-free-gloves---white-shopker', '<ul>\n	<li>Pack of 100</li>\n	<li>Latex Free</li>\n	<li>For Home/Bathroom Cleaning</li>\n	<li>Color: White</li>\n</ul>', '<ul>\n	<li>Pack of 100</li>\n	<li>Latex Free</li>\n	<li>For Home/Bathroom Cleaning</li>\n	<li>Color: White</li>\n</ul>', 7, 'Pack Of 100 - Latex Free Gloves - White', '1', NULL, NULL, NULL, 679, 'Pack Of 100 - Latex Free Gloves - White', '999', '750', 12, '2019-08-23', '2019-08-23', 0, 0, 0, '17:00:00', '18:00:00', NULL, 'Pack Of 100 - Latex Free Gloves - White', 'Pack Of 100 - Latex Free Gloves - White', '2019-08-07', '04:13:18'),
(233, '103.217.178.23', 17, 1, 'Silicone Moisturising Soft Gel Heel Socks Anti-slip Maintenance Cracked Foot', 'silicone-moisturising-soft-gel-heel-socks-anti-slip-maintenance-cracked-foot-shopker', '<ul>\n	<li>Silicone Moisturizing Soft Gel Heel Socks</li>\n	<li>Anti-slip Maintenance Cracked Foot</li>\n	<li>Dry Skin Care Protector Foot Care Tools</li>\n</ul>', '<ul>\n	<li>Silicone Moisturizing Soft Gel Heel Socks</li>\n	<li>Anti-slip Maintenance Cracked Foot</li>\n	<li>Dry Skin Care Protector Foot Care Tools</li>\n</ul>', 7, 'Silicone Moisturising Soft Gel Heel Socks Anti-slip Maintenance Cracked Foot', '0.3', NULL, NULL, NULL, 689, 'Silicone Moisturising Soft Gel Heel Socks Anti-slip Maintenance Cracked Foot', '750', '450', 6, '2019-08-30', '2019-08-30', 0, 0, 0, '18:00:00', '23:00:00', NULL, 'Silicone Moisturising Soft Gel Heel Socks Anti-slip Maintenance Cracked Foot', 'Silicone Moisturising Soft Gel Heel Socks Anti-slip Maintenance Cracked Foot', '2019-08-07', '04:13:19'),
(236, '103.217.178.23', 17, 1, 'Car Paint Damage Testing Digital Gun', 'car-paint-damage-testing-digital-gun-shopker', '<ul>\n	<li>Car Paint Damage Testing Digital Gun</li>\n	<li>portable ,Fast side</li>\n	<li>Fool type return to zero operation mode</li>\n	<li>Micro power consumption</li>\n	<li>Compact and beautiful</li>\n	<li>Technology features:</li>\n	<li>Measurement range: 0~1250um (Can be customized0~3000)</li>\n	<li>Resolution:0.1/1</li>\n	<li>Use environment:</li>\n	<li>Temperature:0-40&deg; , humidity:10-85%RH</li>\n	<li>Metric / inch:Convertible</li>\n	<li>Body size:102mm x 66mm x24mm</li>\n	<li>Instrument appearance size:102&times;62&times;28mm</li>\n	<li>weight :99g(Battery containing)</li>\n	<li>Power Supply:1.5V*2</li>\n</ul>', '<ul>\n	<li>Car Paint Damage Testing Digital Gun</li>\n	<li>portable ,Fast side</li>\n	<li>Fool type return to zero operation mode</li>\n	<li>Micro power consumption</li>\n	<li>Compact and beautiful</li>\n	<li>Technology features:</li>\n	<li>Measurement range: 0~1250um (Can be customized0~3000)</li>\n	<li>Resolution:0.1/1</li>\n	<li>Use environment:</li>\n	<li>Temperature:0-40&deg; , humidity:10-85%RH</li>\n	<li>Metric / inch:Convertible</li>\n	<li>Body size:102mm x 66mm x24mm</li>\n	<li>Instrument appearance size:102&times;62&times;28mm</li>\n	<li>weight :99g(Battery containing)</li>\n	<li>Power Supply:1.5V*2</li>\n</ul>', 7, 'Car Paint Damage Testing Digital Gun', '0.3', NULL, NULL, NULL, 766, 'Car Paint Damage Testing Digital Gun', '4500', '2999', 3, '2019-08-23', '2019-08-23', 0, 0, 0, '17:00:00', '22:00:00', NULL, 'Car Paint Damage Testing Digital Gun', 'Car Paint Damage Testing Digital Gun', '2019-08-07', '04:13:45'),
(248, '182.185.148.66', 17, 1, 'Brinch Laptop Shoulder Bag 228 - Black', 'brinch-laptop-shoulder-bag-228---black-689', '<ul>\r\n	<li>\r\n	<p>Made of quality anti-tear lightweight fabric, Features a thick foam padded laptop sleeve with velcro strap in main compartment, that protects your laptop from accidental bump, shock, scratch.</p>\r\n	</li>\r\n	<li>\r\n	<p>2 non-zippered pockets can hold mouse,adapter, and middle is very roomy for big items, such as books.</p>\r\n	</li>\r\n	<li>\r\n	<p>Zippered front compartment with 2 small pockets and 2 pen pockets inside is ideal for your phone,pens etc.</p>\r\n	</li>\r\n	<li>\r\n	<p>A back belt is designed on the back, that is easily fixed to trolley suitcase firmly on travel.</p>\r\n	</li>\r\n	<li>\r\n	<p>Comes with a removeable and adjustable PU padded shoulder strap, and dual sturdy handles for long time comfortably</p>\r\n	</li>\r\n	<li>\r\n	<p>Carrying Sizes: Exterior-43x31x8CM/16.9x12.2x3.1Inch,</p>\r\n	</li>\r\n	<li>\r\n	<p>Laptop Sleeve-40.5x28CM/15.9x11Inch, fits most 15 - 15.6 inch Laptop / Notebooks / MacBook / Ultrabook /Chromebook (Apple Macbook / Acer / Asus / Dell / Fujitsu / Lenovo / HP / Samsung / Sony / Toshiba etc.).</p>\r\n	</li>\r\n	<li>\r\n	<p>May not snugly fit all computers due to variations in the sizes of different models.</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>Made of quality anti-tear lightweight fabric, Features a thick foam padded laptop sleeve with velcro strap in main compartment, that protects your laptop from accidental bump, shock, scratch.</p>\r\n	</li>\r\n	<li>\r\n	<p>2 non-zippered pockets can hold mouse,adapter, and middle is very roomy for big items, such as books.</p>\r\n	</li>\r\n	<li>\r\n	<p>Zippered front compartment with 2 small pockets and 2 pen pockets inside is ideal for your phone,pens etc.</p>\r\n	</li>\r\n	<li>\r\n	<p>A back belt is designed on the back, that is easily fixed to trolley suitcase firmly on travel.</p>\r\n	</li>\r\n	<li>\r\n	<p>Comes with a removeable and adjustable PU padded shoulder strap, and dual sturdy handles for long time comfortably</p>\r\n	</li>\r\n	<li>\r\n	<p>Carrying Sizes: Exterior-43x31x8CM/16.9x12.2x3.1Inch,</p>\r\n	</li>\r\n	<li>\r\n	<p>Laptop Sleeve-40.5x28CM/15.9x11Inch, fits most 15 - 15.6 inch Laptop / Notebooks / MacBook / Ultrabook /Chromebook (Apple Macbook / Acer / Asus / Dell / Fujitsu / Lenovo / HP / Samsung / Sony / Toshiba etc.).</p>\r\n	</li>\r\n	<li>\r\n	<p>May not snugly fit all computers due to variations in the sizes of different models.</p>\r\n	</li>\r\n</ul>', 7, 'Brinch Laptop Shoulder Bag 228 - Black', '1', NULL, NULL, NULL, 689, 'Brinch Laptop Shoulder Bag 228 - Black', '4500', '2850', 12, '2019-08-31', '2019-08-23', 0, 0, 0, '19:00:00', '18:00:00', NULL, 'Brinch Laptop Shoulder Bag 228 - Black', 'Brinch Laptop Shoulder Bag 228 - Black', '2019-08-09', '08:10:09');
INSERT INTO `tbl_products` (`id`, `ip_address`, `user_id`, `admin_id`, `name`, `slug`, `high_light`, `description`, `warranty_type`, `what_in_the_box`, `weight`, `length`, `width`, `height`, `variation_id`, `sku_code`, `regural_price`, `sale_price`, `quantity`, `from_date`, `to_date`, `status`, `is_approved`, `is_daily_deal`, `deal_start_time`, `deal_end_time`, `video_url`, `meta_keywords`, `meta_description`, `created_date`, `created_time`) VALUES
(254, '103.255.4.96', 17, 1, 'Remax CX-05 Blade Car Dashcam Recorder Dashboard Camera Car DVR - Black', 'remax-cx-05-blade-car-dashcam-recorder-dashboard-camera-car-dvr---black-689', '<ul>\r\n	<li>\r\n	<p>Remax Blade Car Recorder</p>\r\n	</li>\r\n	<li>\r\n	<p>Model: CX-05</p>\r\n	</li>\r\n	<li>\r\n	<p>Colour: Black</p>\r\n	</li>\r\n	<li>\r\n	<p>Screen size: 3.0&quot; LCD</p>\r\n	</li>\r\n	<li>\r\n	<p>Lens: 140 degree A+ high resolution super wide angle lens</p>\r\n	</li>\r\n	<li>\r\n	<p>Language: Russian, Japanese, French, Italian, German, Western, English, Chinese (Simplified) Chinese (Traditional), Korean, etc.</p>\r\n	</li>\r\n	<li>\r\n	<p>File format: AVI</p>\r\n	</li>\r\n	<li>\r\n	<p>Video format: PAL/NTSC</p>\r\n	</li>\r\n	<li>\r\n	<p>Current frequency: 50HZ/60Hz</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>Night mode with HD camera,1080P full HD and loop recording</p>\r\n	</li>\r\n	<li>\r\n	<p>Ultra thin build</p>\r\n	</li>\r\n	<li>\r\n	<p>140 degrees wide view angle</p>\r\n	</li>\r\n	<li>\r\n	<p>Gravity sensor and motion detector</p>\r\n	</li>\r\n	<li>\r\n	<p>Multi languages included</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>What&#39;s in the Box:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>1 x Remax Car Recorder</p>\r\n	</li>\r\n	<li>\r\n	<p>1 x Car Charger</p>\r\n	</li>\r\n	<li>\r\n	<p>1 x USB Cable</p>\r\n	</li>\r\n	<li>\r\n	<p>1 x Mount</p>\r\n	</li>\r\n	<li>\r\n	<p>1 x User Manual</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Product Size:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Product Size: 0.92 x 0.50 x 0.10cm</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://www.bdonix.com/uploads/carrecorder/remax-cx-05-cx05-dvr-car-camera-dashcam-1080p-fullhd-140-u00b0-visiongadgetry-1809-26-F1264693_4.jpg\" style=\"height:1001px; width:1001px\" /><img alt=\"\" src=\"http://www.bdonix.com/uploads/carrecorder/remax-cx-05-cx05-dvr-car-camera-dashcam-1080p-fullhd-140-u00b0-visiongadgetry-1809-26-F1264693_5.jpg\" style=\"height:1001px; width:1001px\" /><img alt=\"\" src=\"http://www.bdonix.com/uploads/carrecorder/remax-cx-05-cx05-dvr-car-camera-dashcam-1080p-fullhd-140-u00b0-visiongadgetry-1809-26-F1264693_6.jpg\" style=\"height:1001px; width:1001px\" /><img alt=\"\" src=\"http://www.bdonix.com/uploads/carrecorder/remax-cx-05-cx05-dvr-car-camera-dashcam-1080p-fullhd-140-u00b0-visiongadgetry-1809-26-F1264693_7.jpg\" style=\"height:1001px; width:1001px\" /><img alt=\"\" src=\"http://www.bdonix.com/uploads/carrecorder/remax-cx-05-cx05-dvr-car-camera-dashcam-1080p-fullhd-140-u00b0-visiongadgetry-1809-26-F1264693_9.jpg\" style=\"height:1001px; width:1001px\" /></p>', 7, '1 x Remax Car Recorder  1 x Car Charger  1 x USB Cable  1 x Mount  1 x User Manual', '0.5', NULL, NULL, NULL, 689, 'Remax CX-05 Blade Car Dashcam', '7500', '4999', 25, '2019-09-10', '2019-12-31', 0, 0, 0, '20:00:00', '00:00:00', NULL, 'Remax CX-05 Blade Car Dashcam Recorder Dashboard Camera Car DVR - Black', 'Remax CX-05 Blade Car Dashcam Recorder Dashboard Camera Car DVR - Black', '2019-08-30', '06:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_featured_images`
--

CREATE TABLE `tbl_products_featured_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `featured_image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products_featured_images`
--

INSERT INTO `tbl_products_featured_images` (`id`, `ip_address`, `user_id`, `featured_image`, `product_id`) VALUES
(1, '72.255.40.171', 17, '5d49d7839615d.jpeg', 1),
(2, '72.255.40.171', 17, '5d49d7839eda5.jpeg', 2),
(3, '72.255.40.171', 17, '5d49d783adc72.jpeg', 3),
(4, '72.255.40.171', 17, '5d49d783b56d3.jpeg', 4),
(5, '72.255.40.171', 17, '5d49d783bc285.jpeg', 5),
(6, '72.255.40.171', 17, '5d49d783c19f0.jpeg', 6),
(7, '72.255.40.171', 17, '5d49d783c7be3.jpeg', 7),
(8, '72.255.40.171', 17, '5d49d783d0545.jpeg', 8),
(9, '72.255.40.171', 17, '5d49d783d7210.jpeg', 9),
(10, '72.255.40.171', 17, '5d49d783e34b0.jpeg', 10),
(11, '72.255.40.171', 17, '5d49d783eb04f.jpeg', 11),
(12, '72.255.40.171', 17, '5d49d783f1f65.jpeg', 12),
(13, '72.255.40.171', 17, '5d49d78404b17.jpeg', 13),
(14, '72.255.40.171', 17, '5d49d7840dc9b.jpeg', 14),
(15, '72.255.40.171', 17, '5d49d78415ed9.jpeg', 15),
(16, '72.255.40.171', 17, '5d49d7841f860.jpeg', 16),
(17, '72.255.40.171', 17, '5d49d7842ef24.jpeg', 17),
(18, '72.255.40.171', 17, '5d49d784357df.jpeg', 18),
(19, '72.255.40.171', 17, '5d49d7843b838.jpeg', 19),
(20, '72.255.40.171', 17, '5d49d78443114.jpeg', 20),
(21, '72.255.40.171', 17, '5d49d7844d8ac.jpeg', 21),
(22, '72.255.40.171', 17, '5d49d784566fa.jpeg', 22),
(23, '72.255.40.171', 17, '5d49d7845eeec.jpeg', 23),
(24, '72.255.40.171', 17, '5d49d78465d2c.jpeg', 24),
(25, '72.255.40.171', 17, '5d49d7846f0c7.jpeg', 25),
(26, '72.255.40.171', 17, '5d49d78477e06.jpeg', 26),
(27, '72.255.40.171', 17, '5d49d7847d355.jpeg', 27),
(28, '72.255.40.171', 17, '5d49d784873ae.jpeg', 28),
(29, '72.255.40.171', 17, '5d49d784937f0.jpeg', 29),
(30, '72.255.40.171', 17, '5d49d78498de0.jpeg', 30),
(31, '72.255.40.171', 17, '5d49d7849edd2.jpeg', 31),
(32, '72.255.40.171', 17, '5d49d784a880f.jpeg', 32),
(33, '72.255.40.171', 17, '5d49d784b582d.jpeg', 33),
(34, '72.255.40.171', 17, '5d49d784c1cd6.jpeg', 34),
(35, '72.255.40.171', 17, '5d49d784ca5fd.jpeg', 35),
(36, '72.255.40.171', 17, '5d49d784d45f1.jpeg', 36),
(37, '72.255.40.171', 17, '5d49d784ddcfd.jpeg', 37),
(38, '72.255.40.171', 17, '5d49d784e82f0.jpeg', 38),
(39, '72.255.40.171', 17, '5d49d784f17b9.jpeg', 39),
(40, '72.255.40.171', 17, '5d49d78505a74.jpeg', 40),
(41, '72.255.40.171', 17, '5d49d7850bffa.jpeg', 41),
(42, '72.255.40.171', 17, '5d49d785155dd.jpeg', 42),
(43, '72.255.40.171', 17, '5d49d78522902.jpeg', 43),
(44, '72.255.40.171', 17, '5d49d7852a717.jpeg', 44),
(45, '72.255.40.171', 17, '5d49d78532c9c.jpeg', 45),
(46, '72.255.40.171', 17, '5d49d7853d087.jpeg', 46),
(47, '72.255.40.171', 17, '5d49d78545419.jpeg', 47),
(48, '72.255.40.171', 17, '5d49d7854aea7.jpeg', 48),
(49, '72.255.40.171', 17, '5d49d78551b55.jpeg', 49),
(50, '72.255.40.171', 17, '5d49d78559eb4.jpeg', 50),
(51, '72.255.40.171', 17, '5d49d78561df9.jpeg', 51),
(52, '72.255.40.171', 17, '5d49d785769b4.jpeg', 52),
(53, '72.255.40.171', 17, '5d49d7857ca14.jpeg', 53),
(54, '72.255.40.171', 17, '5d49d7858240d.jpeg', 54),
(55, '72.255.40.171', 17, '5d49d7858928f.jpeg', 55),
(56, '72.255.40.171', 17, '5d49d7858efe2.jpeg', 56),
(57, '72.255.40.171', 17, '5d49d78596e6e.jpeg', 57),
(58, '72.255.40.171', 17, '5d49d7859fa84.jpeg', 58),
(59, '72.255.40.171', 17, '5d49d785a6fc4.jpeg', 59),
(60, '72.255.40.171', 17, '5d49d785af403.jpeg', 60),
(61, '72.255.40.171', 17, '5d49d785b76dc.jpeg', 61),
(62, '72.255.40.171', 17, '5d49d785c825a.jpeg', 62),
(63, '72.255.40.171', 17, '5d49d785cec00.jpeg', 63),
(64, '72.255.40.171', 17, '5d49d785d5b36.jpeg', 64),
(65, '72.255.40.171', 17, '5d49d785e2112.jpeg', 65),
(66, '72.255.40.171', 17, '5d49d785e8fce.jpeg', 66),
(67, '72.255.40.171', 17, '5d49d7860116a.jpeg', 67),
(68, '72.255.40.171', 17, '5d49d7860880f.jpeg', 68),
(69, '72.255.40.171', 17, '5d49d786102f3.jpeg', 69),
(70, '72.255.40.171', 17, '5d49d78617908.jpeg', 70),
(71, '72.255.40.171', 17, '5d49d78620faf.jpeg', 71),
(72, '72.255.40.171', 17, '5d49d786276c2.jpeg', 72),
(73, '72.255.40.171', 17, '5d49d7863348c.jpeg', 73),
(74, '72.255.40.171', 17, '5d49d7863a681.jpeg', 74),
(75, '72.255.40.171', 17, '5d49d78645129.jpeg', 75),
(76, '72.255.40.171', 17, '5d49d7868492e.jpeg', 76),
(77, '72.255.40.171', 17, '5d49d78690bab.jpeg', 77),
(78, '72.255.40.171', 17, '5d49d78696e56.jpeg', 78),
(79, '72.255.40.171', 17, '5d49d7869d42a.jpeg', 79),
(80, '72.255.40.171', 17, '5d49d786a3fb0.jpeg', 80),
(81, '72.255.40.171', 17, '5d49d786a986e.jpeg', 81),
(82, '72.255.40.171', 17, '5d49d786af727.jpeg', 82),
(83, '72.255.40.171', 17, '5d49d786b5f9f.jpeg', 83),
(84, '103.255.5.79', 17, '5d4bfacc879ee.jpeg', 84),
(85, '72.255.40.171', 17, '5d49d786c2eef.jpeg', 85),
(86, '72.255.40.171', 17, '5d49d786ca808.jpeg', 86),
(87, '72.255.40.171', 17, '5d49d786d2fc7.jpeg', 87),
(88, '72.255.40.171', 17, '5d49d786db985.jpeg', 88),
(89, '72.255.40.171', 17, '5d49d786e71e9.jpeg', 89),
(90, '72.255.40.171', 17, '5d49d7870c960.jpeg', 90),
(91, '72.255.40.171', 17, '5d49d78712326.jpeg', 91),
(92, '72.255.40.171', 17, '5d49d78717a02.jpeg', 92),
(93, '72.255.40.171', 17, '5d49d7871f8b2.jpeg', 93),
(94, '72.255.40.171', 17, '5d49d78725580.jpeg', 94),
(95, '72.255.40.171', 17, '5d49d787306b7.jpeg', 95),
(96, '72.255.40.171', 17, '5d49d78739f30.jpeg', 96),
(97, '72.255.40.171', 17, '5d49d7873f624.jpeg', 97),
(98, '72.255.40.171', 17, '5d49d78745225.jpeg', 98),
(99, '72.255.40.171', 17, '5d49d7874bfa9.jpeg', 99),
(100, '72.255.40.171', 17, '5d49d78754087.jpeg', 100),
(101, '72.255.40.171', 17, '5d49d787622b4.jpeg', 101),
(102, '72.255.40.171', 17, '5d49d78769ea5.jpeg', 102),
(103, '72.255.40.171', 17, '5d49d78770cd8.jpeg', 103),
(104, '72.255.40.171', 17, '5d49d7877a8c6.jpeg', 104),
(105, '72.255.40.171', 1, '5d49d787823dd.jpeg', 105),
(106, '72.255.40.171', 1, '5d49d78789313.jpeg', 106),
(107, '72.255.40.171', 1, '5d49d78794037.jpeg', 107),
(108, '72.255.40.171', 1, '5d49d7879f69c.jpeg', 108),
(109, '72.255.40.171', 1, '5d49d787aa4ed.jpeg', 109),
(110, '72.255.40.171', 1, '5d49d787b06f2.jpeg', 110),
(111, '72.255.40.171', 1, '5d49d787b6d84.jpeg', 111),
(112, '72.255.40.171', 1, '5d49d787be79c.jpeg', 112),
(113, '72.255.40.171', 1, '5d49d787c4c4d.jpeg', 113),
(114, '72.255.40.171', 1, '5d49d787cbb0f.jpeg', 114),
(115, '72.255.40.171', 1, '5d49d787d48e5.jpeg', 115),
(116, '72.255.40.171', 1, '5d49d787dcb12.jpeg', 116),
(117, '72.255.40.171', 1, '5d49d787e6822.jpeg', 117),
(118, '72.255.40.171', 1, '5d49d787f2c2b.jpeg', 118),
(119, '72.255.40.171', 1, '5d49d78804b21.jpeg', 119),
(120, '72.255.40.171', 1, '5d49d7880ee12.jpeg', 120),
(121, '72.255.40.171', 1, '5d49d78815f35.jpeg', 121),
(122, '72.255.40.171', 1, '5d49d7881c146.jpeg', 122),
(123, '72.255.40.171', 1, '5d49d78821cd4.jpeg', 123),
(124, '72.255.40.171', 1, '5d49d78827a78.jpeg', 124),
(125, '72.255.40.171', 1, '5d49d78833d97.jpeg', 125),
(126, '72.255.40.171', 1, '5d49d7883d616.jpeg', 126),
(127, '72.255.40.171', 1, '5d49d788489c8.jpeg', 127),
(128, '72.255.40.171', 1, '5d49d78853202.jpeg', 128),
(129, '72.255.40.171', 1, '5d49d7885fcbb.jpeg', 129),
(130, '72.255.40.171', 1, '5d49d78866f2f.jpeg', 130),
(131, '72.255.40.171', 1, '5d49d78871d2e.jpeg', 131),
(132, '72.255.40.171', 1, '5d49d78878713.jpeg', 132),
(133, '72.255.40.171', 1, '5d49d78881e94.jpeg', 133),
(134, '72.255.40.171', 1, '5d49d78887627.jpeg', 134),
(135, '72.255.40.171', 1, '5d49d78890cf6.jpeg', 135),
(136, '72.255.40.171', 1, '5d49d7889625c.jpeg', 136),
(137, '72.255.40.171', 1, '5d49d7889b7cb.jpeg', 137),
(138, '72.255.40.171', 1, '5d49d788a0a0d.jpeg', 138),
(139, '72.255.40.171', 1, '5d49d788a681c.jpeg', 139),
(140, '72.255.40.171', 1, '5d49d788acbe2.jpeg', 140),
(141, '72.255.40.171', 1, '5d49d788b2343.jpeg', 141),
(142, '72.255.40.171', 1, '5d49d788b7de5.jpeg', 142),
(143, '72.255.40.171', 1, '5d49d788bff75.jpeg', 143),
(144, '72.255.40.171', 1, '5d49d788c5699.jpeg', 144),
(145, '72.255.40.171', 1, '5d49d788cafd6.jpeg', 145),
(146, '72.255.40.171', 1, '5d49d788d0394.jpeg', 146),
(147, '72.255.40.171', 1, '5d49d788d625d.jpeg', 147),
(148, '72.255.40.171', 1, '5d49d788dcde3.jpeg', 148),
(149, '72.255.40.171', 1, '5d49d788e2f09.jpeg', 149),
(150, '72.255.40.171', 1, '5d49d788e8f6b.jpeg', 150),
(151, '72.255.40.171', 1, '5d49d9df043c0.jpeg', 151),
(152, '72.255.40.171', 1, '5d49d78902f88.jpeg', 152),
(153, '72.255.40.171', 1, '5d49d78909b5e.jpeg', 153),
(154, '72.255.40.171', 1, '5d49d78912a2e.jpeg', 154),
(155, '72.255.40.171', 1, '5d49d78917195.jpeg', 155),
(156, '72.255.40.171', 1, '5d49d7891ce27.jpeg', 156),
(157, '72.255.40.171', 17, '5d49d78924107.jpeg', 157),
(158, '72.255.40.171', 1, '5d49d7892b4f9.jpeg', 158),
(159, '72.255.40.171', 1, '5d49d789324c7.jpeg', 159),
(160, '72.255.40.171', 1, '5d49d78945b17.jpeg', 160),
(161, '72.255.40.171', 1, '5d49d7894ad77.jpeg', 161),
(162, '72.255.40.171', 1, '5d49d789519af.jpeg', 162),
(163, '72.255.40.171', 1, '5d49d7895708e.jpeg', 163),
(164, '72.255.40.171', 1, '5d49d7895c68d.jpeg', 164),
(165, '72.255.40.171', 1, '5d49d7896bf62.jpeg', 165),
(166, '72.255.40.171', 1, '5d49d78972356.jpeg', 166),
(167, '72.255.40.171', 1, '5d49d78977043.jpeg', 167),
(168, '72.255.40.171', 1, '5d49d7897bd62.jpeg', 168),
(169, '72.255.40.171', 1, '5d49d789818fd.jpeg', 169),
(170, '72.255.40.171', 1, '5d49d789899a8.jpeg', 170),
(171, '72.255.40.171', 1, '5d49d7898f0f4.jpeg', 171),
(172, '72.255.40.171', 1, '5d49d7899430d.jpeg', 172),
(173, '72.255.40.171', 1, '5d49d7899aba9.jpeg', 173),
(174, '72.255.40.171', 1, '5d49d7899fa99.jpeg', 174),
(175, '72.255.40.171', 1, '5d49d789a50a1.jpeg', 175),
(176, '72.255.40.171', 1, '5d49d789ab56c.jpeg', 176),
(177, '72.255.40.171', 1, '5d49d789b074e.jpeg', 177),
(178, '72.255.40.171', 1, '5d49d789b5d77.jpeg', 178),
(179, '72.255.40.171', 1, '5d49d789bb43a.jpeg', 179),
(180, '72.255.40.171', 1, '5d49d789bffb9.jpeg', 180),
(181, '72.255.40.171', 1, '5d49d789c5bff.jpeg', 181),
(182, '72.255.40.171', 1, '5d49d789cae0f.jpeg', 182),
(183, '72.255.40.171', 1, '5d49d789cfa3f.jpeg', 183),
(184, '72.255.40.171', 1, '5d49d789d51e0.jpeg', 184),
(185, '72.255.40.171', 2, '5d49d789db0a7.jpeg', 185),
(186, '72.255.40.171', 1, '5d49d789dfcd4.jpeg', 186),
(187, '72.255.40.171', 2, '5d49d789e6091.jpeg', 187),
(188, '72.255.40.171', 1, '5d49d789ed80b.jpeg', 188),
(189, '72.255.40.171', 1, '5d49d789f3552.jpeg', 189),
(190, '72.255.40.171', 1, '5d49d78a04ae4.jpeg', 190),
(191, '72.255.40.171', 2, '5d49d78a09a7d.jpeg', 191),
(192, '72.255.40.171', 1, '5d49d78a12ce0.jpeg', 192),
(193, '72.255.40.171', 1, '5d49d78a1c9e4.jpeg', 193),
(194, '72.255.40.171', 1, '5d49d78a27c44.jpeg', 194),
(195, '72.255.40.171', 2, '5d49d78a2e360.jpeg', 195),
(196, '72.255.40.171', 1, '5d49d78a33de7.jpeg', 196),
(197, '72.255.40.171', 1, '5d49d78a396ba.jpeg', 197),
(198, '72.255.40.171', 1, '5d49d78a40f69.jpeg', 198),
(199, '72.255.40.171', 1, '5d49d78a45ecf.jpeg', 199),
(200, '72.255.40.171', 1, '5d49d78a4eec4.jpeg', 200),
(201, '72.255.40.171', 1, '5d49d78a54bfb.jpeg', 201),
(202, '72.255.40.171', 2, '5d49d78a5a803.jpeg', 202),
(203, '72.255.40.171', 1, '5d49d78a621b0.jpeg', 203),
(204, '72.255.40.171', 2, '5d49d78a69308.jpeg', 204),
(205, '72.255.40.171', 1, '5d49d78a6ee99.jpeg', 205),
(206, '72.255.40.171', 1, '5d49d78a75d7c.jpeg', 206),
(207, '72.255.40.171', 1, '5d49d78a7da6b.jpeg', 207),
(208, '72.255.40.171', 1, '5d49d78a8397a.jpeg', 208),
(209, '72.255.40.171', 1, '5d49d78a8833b.jpeg', 209),
(210, '72.255.40.171', 1, '5d49d78a8d70f.jpeg', 210),
(211, '72.255.40.171', 1, '5d49d78a93f45.jpeg', 211),
(212, '72.255.40.171', 1, '5d49d78a98c6b.jpeg', 212),
(213, '72.255.40.171', 1, '5d49d78a9de11.jpeg', 213),
(214, '72.255.40.171', 1, '5d49d78aa3775.jpeg', 214),
(215, '72.255.40.171', 1, '5d49d78aac23e.jpeg', 215),
(216, '72.255.40.171', 1, '5d49d9972027f.jpeg', 216),
(217, '72.255.40.171', 2, '5d49d78ab6fb9.jpeg', 217),
(218, '72.255.40.171', 1, '5d49d96933c44.jpeg', 218),
(219, '72.255.40.171', 2, '5d49d78ac5014.jpeg', 219),
(220, '72.255.40.171', 1, '5d49d839b1a9c.jpeg', 220),
(221, '72.255.40.171', 2, '5d49d78acf949.jpeg', 221),
(222, '72.255.40.171', 1, '5d49d941e30fc.jpeg', 222),
(223, '72.255.40.171', 2, '5d49d78ad90a7.jpeg', 223),
(224, '72.255.40.171', 1, '5d49d918f30bb.jpeg', 224),
(225, '72.255.40.171', 1, '5d49d88f654d5.jpeg', 225),
(226, '103.217.178.23', 17, '5d4ab24e6213f.jpeg', 227),
(227, '103.217.178.23', 17, '5d4ab24ea307a.jpeg', 228),
(228, '103.217.178.23', 17, '5d4ab24f4cf07.jpeg', 229),
(229, '103.217.178.23', 17, '5d4ab24f6e2ad.jpeg', 230),
(230, '103.217.178.23', 17, '5d4ab24f77fc6.jpeg', 231),
(231, '103.217.178.23', 17, '5d4ab24f8221f.jpeg', 232),
(232, '103.217.178.23', 17, '5d4ab24f8aeda.jpeg', 233),
(233, '103.217.178.23', 17, '5d4ab26957762.jpeg', 234),
(234, '103.217.178.23', 17, '5d4ab2695e156.jpeg', 235),
(235, '103.217.178.23', 17, '5d4ab269690e2.jpeg', 236),
(236, '103.217.178.23', 17, '5d4ab2696f4a7.jpeg', 237),
(237, '103.217.178.23', 17, '5d4ab2697673b.jpeg', 238),
(238, '103.217.178.23', 17, '5d4ab2697c41d.jpeg', 239),
(239, '103.217.178.23', 17, '5d4ab2698240f.jpeg', 240),
(240, '103.255.5.79', 17, '5d4bf19ba5e3e.jpeg', 241),
(241, '', 0, '5d4bf421794f5.jpeg', 242),
(242, '', 0, '5d4d8bc6403a8.jpeg', 244),
(243, '', 0, '5d4d8c20c64ce.jpeg', 245),
(244, '', 0, '5d4d8c6a53682.jpeg', 246),
(245, '', 0, '5d4d8c781f159.jpeg', 247),
(246, '', 0, '5d4d8cd1eedf6.jpeg', 248),
(247, '', 0, '5d4d8ea529c0b.jpeg', 249),
(248, '', 0, '5d5ab5d7c3992.jpeg', 250),
(249, '103.255.4.55', 17, '5d5ab6e51ddd5.jpeg', 251),
(250, '', 0, '5d5d43cc31bc2.jpeg', 252),
(251, '', 0, '5d6548d1793ea.jpeg', 253),
(252, '', 0, '5d69200b8bc6a.jpeg', 254),
(253, '', 0, '5d692097b2ad1.jpeg', 255),
(254, '', 0, '5d692115731a7.jpeg', 256),
(255, '', 0, '5d692125d013d.jpeg', 257);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_images`
--

CREATE TABLE `tbl_products_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products_images`
--

INSERT INTO `tbl_products_images` (`id`, `ip_address`, `user_id`, `product_id`, `image`) VALUES
(3, '72.255.40.171', 17, 2, '5d49d783a0854.jpeg'),
(4, '72.255.40.171', 17, 2, '5d49d783a2e24.jpeg'),
(7, '72.255.40.171', 17, 4, '5d49d783b74dd.jpeg'),
(8, '72.255.40.171', 17, 4, '5d49d783b82ce.jpeg'),
(9, '72.255.40.171', 17, 5, '5d49d783bd038.jpeg'),
(10, '72.255.40.171', 17, 5, '5d49d783bddaa.jpeg'),
(11, '72.255.40.171', 17, 6, '5d49d783c2769.jpeg'),
(12, '72.255.40.171', 17, 6, '5d49d783c4391.jpeg'),
(15, '72.255.40.171', 17, 8, '5d49d783d1a80.jpeg'),
(16, '72.255.40.171', 17, 8, '5d49d783d2b8f.jpeg'),
(17, '72.255.40.171', 17, 9, '5d49d783db150.jpeg'),
(18, '72.255.40.171', 17, 9, '5d49d783dc2ea.jpeg'),
(19, '72.255.40.171', 17, 10, '5d49d783e568f.jpeg'),
(20, '72.255.40.171', 17, 10, '5d49d783e68cc.jpeg'),
(21, '72.255.40.171', 17, 11, '5d49d783ece32.jpeg'),
(22, '72.255.40.171', 17, 11, '5d49d783ee0bb.jpeg'),
(23, '72.255.40.171', 17, 12, '5d49d783f35d8.jpeg'),
(24, '72.255.40.171', 17, 12, '5d49d78400a42.jpeg'),
(25, '72.255.40.171', 17, 13, '5d49d78405dc7.jpeg'),
(26, '72.255.40.171', 17, 13, '5d49d784095be.jpeg'),
(27, '72.255.40.171', 17, 14, '5d49d7840f7c1.jpeg'),
(28, '72.255.40.171', 17, 14, '5d49d784109e4.jpeg'),
(29, '72.255.40.171', 17, 15, '5d49d78417219.jpeg'),
(30, '72.255.40.171', 17, 15, '5d49d784182fd.jpeg'),
(31, '72.255.40.171', 17, 16, '5d49d7842073c.jpeg'),
(32, '72.255.40.171', 17, 16, '5d49d78421015.jpeg'),
(33, '72.255.40.171', 17, 17, '5d49d7843012c.jpeg'),
(34, '72.255.40.171', 17, 17, '5d49d78430736.jpeg'),
(35, '72.255.40.171', 17, 18, '5d49d78436462.jpeg'),
(36, '72.255.40.171', 17, 18, '5d49d784370f4.jpeg'),
(37, '72.255.40.171', 17, 19, '5d49d7843c66b.jpeg'),
(38, '72.255.40.171', 17, 19, '5d49d7843d57e.jpeg'),
(39, '72.255.40.171', 17, 20, '5d49d78443a7e.jpeg'),
(40, '72.255.40.171', 17, 20, '5d49d784441ab.jpeg'),
(41, '72.255.40.171', 17, 21, '5d49d7844fe13.jpeg'),
(42, '72.255.40.171', 17, 21, '5d49d78450d70.jpeg'),
(43, '72.255.40.171', 17, 22, '5d49d7845741a.jpeg'),
(44, '72.255.40.171', 17, 22, '5d49d78457f42.jpeg'),
(45, '72.255.40.171', 17, 23, '5d49d78460225.jpeg'),
(46, '72.255.40.171', 17, 23, '5d49d784611fa.jpeg'),
(47, '72.255.40.171', 17, 24, '5d49d78468460.jpeg'),
(48, '72.255.40.171', 17, 24, '5d49d7846aae7.jpeg'),
(49, '72.255.40.171', 17, 25, '5d49d784734f8.jpeg'),
(50, '72.255.40.171', 17, 25, '5d49d7847417f.jpeg'),
(51, '72.255.40.171', 17, 26, '5d49d78478d64.jpeg'),
(52, '72.255.40.171', 17, 26, '5d49d78479a25.jpeg'),
(53, '72.255.40.171', 17, 27, '5d49d7847e3aa.jpeg'),
(54, '72.255.40.171', 17, 27, '5d49d7848109c.jpeg'),
(55, '72.255.40.171', 17, 28, '5d49d7848848e.jpeg'),
(56, '72.255.40.171', 17, 28, '5d49d7848d578.jpeg'),
(57, '72.255.40.171', 17, 29, '5d49d7849454e.jpeg'),
(58, '72.255.40.171', 17, 29, '5d49d7849528c.jpeg'),
(59, '72.255.40.171', 17, 30, '5d49d78499c4a.jpeg'),
(60, '72.255.40.171', 17, 30, '5d49d7849aaa3.jpeg'),
(61, '72.255.40.171', 17, 31, '5d49d7849fbb0.jpeg'),
(62, '72.255.40.171', 17, 31, '5d49d784a2090.jpeg'),
(63, '72.255.40.171', 17, 32, '5d49d784aaf5b.jpeg'),
(64, '72.255.40.171', 17, 32, '5d49d784acb31.jpeg'),
(65, '72.255.40.171', 17, 33, '5d49d784b66bd.jpeg'),
(66, '72.255.40.171', 17, 33, '5d49d784b73c4.jpeg'),
(67, '72.255.40.171', 17, 34, '5d49d784c4a19.jpeg'),
(68, '72.255.40.171', 17, 34, '5d49d784c5c3f.jpeg'),
(69, '72.255.40.171', 17, 35, '5d49d784cc044.jpeg'),
(70, '72.255.40.171', 17, 35, '5d49d784cd231.jpeg'),
(71, '72.255.40.171', 17, 36, '5d49d784d5829.jpeg'),
(72, '72.255.40.171', 17, 36, '5d49d784d6adb.jpeg'),
(73, '72.255.40.171', 17, 37, '5d49d784de487.jpeg'),
(74, '72.255.40.171', 17, 37, '5d49d784df2e6.jpeg'),
(75, '72.255.40.171', 17, 38, '5d49d784ea1bc.jpeg'),
(76, '72.255.40.171', 17, 38, '5d49d784eb1fe.jpeg'),
(77, '72.255.40.171', 17, 39, '5d49d784f27df.jpeg'),
(78, '72.255.40.171', 17, 39, '5d49d784f316e.jpeg'),
(79, '72.255.40.171', 17, 40, '5d49d785068ca.jpeg'),
(80, '72.255.40.171', 17, 40, '5d49d78507d9d.jpeg'),
(81, '72.255.40.171', 17, 41, '5d49d7850cd4b.jpeg'),
(82, '72.255.40.171', 17, 41, '5d49d7850da8a.jpeg'),
(83, '72.255.40.171', 17, 42, '5d49d78517edc.jpeg'),
(84, '72.255.40.171', 17, 42, '5d49d78518d61.jpeg'),
(85, '72.255.40.171', 17, 43, '5d49d78523edd.jpeg'),
(86, '72.255.40.171', 17, 43, '5d49d78525ff1.jpeg'),
(87, '72.255.40.171', 17, 44, '5d49d7852b65c.jpeg'),
(88, '72.255.40.171', 17, 44, '5d49d7852c4e9.jpeg'),
(89, '72.255.40.171', 17, 45, '5d49d78533a9a.jpeg'),
(90, '72.255.40.171', 17, 45, '5d49d7853484d.jpeg'),
(91, '72.255.40.171', 17, 46, '5d49d7853de82.jpeg'),
(92, '72.255.40.171', 17, 46, '5d49d7853e5aa.jpeg'),
(93, '72.255.40.171', 17, 47, '5d49d78545bc4.jpeg'),
(94, '72.255.40.171', 17, 47, '5d49d7854622c.jpeg'),
(95, '72.255.40.171', 17, 48, '5d49d7854bc79.jpeg'),
(96, '72.255.40.171', 17, 48, '5d49d7854caeb.jpeg'),
(97, '72.255.40.171', 17, 49, '5d49d78552a2a.jpeg'),
(98, '72.255.40.171', 17, 49, '5d49d785538d6.jpeg'),
(99, '72.255.40.171', 17, 50, '5d49d7855ad4a.jpeg'),
(100, '72.255.40.171', 17, 50, '5d49d7855bbd0.jpeg'),
(101, '72.255.40.171', 17, 51, '5d49d78562bc5.jpeg'),
(102, '72.255.40.171', 17, 51, '5d49d78563a55.jpeg'),
(103, '72.255.40.171', 17, 52, '5d49d78578403.jpeg'),
(104, '72.255.40.171', 17, 52, '5d49d78579192.jpeg'),
(105, '72.255.40.171', 17, 53, '5d49d7857d5d9.jpeg'),
(106, '72.255.40.171', 17, 53, '5d49d7857dbff.jpeg'),
(107, '72.255.40.171', 17, 54, '5d49d78582a95.jpeg'),
(108, '72.255.40.171', 17, 54, '5d49d78584d06.jpeg'),
(109, '72.255.40.171', 17, 55, '5d49d7858a25e.jpeg'),
(110, '72.255.40.171', 17, 55, '5d49d7858b19b.jpeg'),
(111, '72.255.40.171', 17, 56, '5d49d7858f64a.jpeg'),
(112, '72.255.40.171', 17, 56, '5d49d785901a6.jpeg'),
(113, '72.255.40.171', 17, 57, '5d49d78597c7e.jpeg'),
(114, '72.255.40.171', 17, 57, '5d49d78598a89.jpeg'),
(115, '72.255.40.171', 17, 58, '5d49d785a0802.jpeg'),
(116, '72.255.40.171', 17, 58, '5d49d785a0e6d.jpeg'),
(117, '72.255.40.171', 17, 59, '5d49d785a7e27.jpeg'),
(118, '72.255.40.171', 17, 59, '5d49d785a8ca0.jpeg'),
(119, '72.255.40.171', 17, 60, '5d49d785b01da.jpeg'),
(120, '72.255.40.171', 17, 60, '5d49d785b08dc.jpeg'),
(121, '72.255.40.171', 17, 61, '5d49d785b8481.jpeg'),
(122, '72.255.40.171', 17, 61, '5d49d785bc89c.jpeg'),
(123, '72.255.40.171', 17, 62, '5d49d785c91be.jpeg'),
(124, '72.255.40.171', 17, 62, '5d49d785ca11e.jpeg'),
(125, '72.255.40.171', 17, 63, '5d49d785cfa30.jpeg'),
(126, '72.255.40.171', 17, 63, '5d49d785d17b0.jpeg'),
(127, '72.255.40.171', 17, 64, '5d49d785d69b2.jpeg'),
(128, '72.255.40.171', 17, 64, '5d49d785d775f.jpeg'),
(129, '72.255.40.171', 17, 65, '5d49d785e4330.jpeg'),
(130, '72.255.40.171', 17, 65, '5d49d785e5436.jpeg'),
(131, '72.255.40.171', 17, 66, '5d49d785ea430.jpeg'),
(132, '72.255.40.171', 17, 66, '5d49d785ebf69.jpeg'),
(133, '72.255.40.171', 17, 67, '5d49d78602046.jpeg'),
(134, '72.255.40.171', 17, 67, '5d49d78602810.jpeg'),
(135, '72.255.40.171', 17, 68, '5d49d7860a0cb.jpeg'),
(136, '72.255.40.171', 17, 68, '5d49d7860b852.jpeg'),
(137, '72.255.40.171', 17, 69, '5d49d7861110e.jpeg'),
(138, '72.255.40.171', 17, 69, '5d49d78611e85.jpeg'),
(139, '72.255.40.171', 17, 70, '5d49d786183f2.jpeg'),
(140, '72.255.40.171', 17, 70, '5d49d7861ab38.jpeg'),
(141, '72.255.40.171', 17, 71, '5d49d786220d3.jpeg'),
(142, '72.255.40.171', 17, 71, '5d49d78623295.jpeg'),
(143, '72.255.40.171', 17, 72, '5d49d7862a076.jpeg'),
(144, '72.255.40.171', 17, 72, '5d49d7862b241.jpeg'),
(145, '72.255.40.171', 17, 73, '5d49d786342b8.jpeg'),
(146, '72.255.40.171', 17, 73, '5d49d78635062.jpeg'),
(147, '72.255.40.171', 17, 74, '5d49d7863b8ed.jpeg'),
(148, '72.255.40.171', 17, 74, '5d49d7863c69e.jpeg'),
(149, '72.255.40.171', 17, 75, '5d49d78645dec.jpeg'),
(150, '72.255.40.171', 17, 75, '5d49d78647a7b.jpeg'),
(151, '72.255.40.171', 17, 76, '5d49d78685e8e.jpeg'),
(152, '72.255.40.171', 17, 76, '5d49d78686fb9.jpeg'),
(153, '72.255.40.171', 17, 77, '5d49d7869206e.jpeg'),
(154, '72.255.40.171', 17, 77, '5d49d78692e17.jpeg'),
(155, '72.255.40.171', 17, 78, '5d49d78698191.jpeg'),
(156, '72.255.40.171', 17, 78, '5d49d78698f66.jpeg'),
(157, '72.255.40.171', 17, 79, '5d49d7869e2d3.jpeg'),
(158, '72.255.40.171', 17, 79, '5d49d7869f0c9.jpeg'),
(159, '72.255.40.171', 17, 80, '5d49d786a4af6.jpeg'),
(160, '72.255.40.171', 17, 80, '5d49d786a584e.jpeg'),
(161, '72.255.40.171', 17, 81, '5d49d786aa604.jpeg'),
(162, '72.255.40.171', 17, 81, '5d49d786ab3cb.jpeg'),
(163, '72.255.40.171', 17, 82, '5d49d786b087e.jpeg'),
(164, '72.255.40.171', 17, 82, '5d49d786b19b0.jpeg'),
(165, '72.255.40.171', 17, 83, '5d49d786b6e8d.jpeg'),
(166, '72.255.40.171', 17, 83, '5d49d786b813a.jpeg'),
(169, '72.255.40.171', 17, 85, '5d49d786c3b83.jpeg'),
(170, '72.255.40.171', 17, 85, '5d49d786c42b7.jpeg'),
(171, '72.255.40.171', 17, 86, '5d49d786cbaa8.jpeg'),
(172, '72.255.40.171', 17, 86, '5d49d786cd2bb.jpeg'),
(173, '72.255.40.171', 17, 87, '5d49d786d573d.jpeg'),
(174, '72.255.40.171', 17, 87, '5d49d786d663b.jpeg'),
(175, '72.255.40.171', 17, 88, '5d49d786dd464.jpeg'),
(176, '72.255.40.171', 17, 88, '5d49d786df25f.jpeg'),
(177, '72.255.40.171', 17, 89, '5d49d786e88e3.jpeg'),
(178, '72.255.40.171', 17, 89, '5d49d786f40ec.jpeg'),
(179, '72.255.40.171', 17, 90, '5d49d7870d67b.jpeg'),
(180, '72.255.40.171', 17, 90, '5d49d7870e3ae.jpeg'),
(181, '72.255.40.171', 17, 91, '5d49d7871302a.jpeg'),
(182, '72.255.40.171', 17, 91, '5d49d78713e79.jpeg'),
(183, '72.255.40.171', 17, 92, '5d49d7871882e.jpeg'),
(184, '72.255.40.171', 17, 92, '5d49d78719987.jpeg'),
(185, '72.255.40.171', 17, 93, '5d49d787200b9.jpeg'),
(186, '72.255.40.171', 17, 93, '5d49d78721268.jpeg'),
(187, '72.255.40.171', 17, 94, '5d49d78725aad.jpeg'),
(188, '72.255.40.171', 17, 94, '5d49d78726932.jpeg'),
(189, '72.255.40.171', 17, 95, '5d49d78731800.jpeg'),
(190, '72.255.40.171', 17, 95, '5d49d787326d6.jpeg'),
(191, '72.255.40.171', 17, 96, '5d49d7873af55.jpeg'),
(192, '72.255.40.171', 17, 96, '5d49d7873beed.jpeg'),
(193, '72.255.40.171', 17, 97, '5d49d7874053e.jpeg'),
(194, '72.255.40.171', 17, 97, '5d49d787413f6.jpeg'),
(195, '72.255.40.171', 17, 98, '5d49d78747782.jpeg'),
(196, '72.255.40.171', 17, 98, '5d49d787485d8.jpeg'),
(197, '72.255.40.171', 17, 99, '5d49d7874cf87.jpeg'),
(198, '72.255.40.171', 17, 99, '5d49d7874f547.jpeg'),
(199, '72.255.40.171', 17, 100, '5d49d78754e20.jpeg'),
(200, '72.255.40.171', 17, 100, '5d49d78755c02.jpeg'),
(201, '72.255.40.171', 17, 101, '5d49d787638c5.jpeg'),
(202, '72.255.40.171', 17, 101, '5d49d78764d74.jpeg'),
(203, '72.255.40.171', 17, 102, '5d49d7876aee8.jpeg'),
(204, '72.255.40.171', 17, 102, '5d49d7876bd94.jpeg'),
(205, '72.255.40.171', 17, 103, '5d49d78771ab2.jpeg'),
(206, '72.255.40.171', 17, 103, '5d49d787744f6.jpeg'),
(207, '72.255.40.171', 17, 104, '5d49d7877bdd5.jpeg'),
(208, '72.255.40.171', 17, 104, '5d49d7877d121.jpeg'),
(209, '72.255.40.171', 1, 105, '5d49d787833c2.jpeg'),
(210, '72.255.40.171', 1, 105, '5d49d78785235.jpeg'),
(211, '72.255.40.171', 1, 106, '5d49d7878a7c1.jpeg'),
(212, '72.255.40.171', 1, 106, '5d49d7878ba8d.jpeg'),
(213, '72.255.40.171', 1, 107, '5d49d7879520a.jpeg'),
(214, '72.255.40.171', 1, 107, '5d49d787965ef.jpeg'),
(215, '72.255.40.171', 1, 108, '5d49d787a06ff.jpeg'),
(216, '72.255.40.171', 1, 108, '5d49d787a383f.jpeg'),
(217, '72.255.40.171', 1, 109, '5d49d787ab457.jpeg'),
(218, '72.255.40.171', 1, 109, '5d49d787aca0b.jpeg'),
(219, '72.255.40.171', 1, 110, '5d49d787b15a1.jpeg'),
(220, '72.255.40.171', 1, 110, '5d49d787b2294.jpeg'),
(221, '72.255.40.171', 1, 111, '5d49d787b8582.jpeg'),
(222, '72.255.40.171', 1, 111, '5d49d787b9a0f.jpeg'),
(223, '72.255.40.171', 1, 112, '5d49d787bf85a.jpeg'),
(224, '72.255.40.171', 1, 112, '5d49d787c067e.jpeg'),
(225, '72.255.40.171', 1, 113, '5d49d787c59bd.jpeg'),
(226, '72.255.40.171', 1, 113, '5d49d787c612c.jpeg'),
(227, '72.255.40.171', 1, 114, '5d49d787ce8a1.jpeg'),
(228, '72.255.40.171', 1, 114, '5d49d787cf9b9.jpeg'),
(229, '72.255.40.171', 1, 115, '5d49d787d6613.jpeg'),
(230, '72.255.40.171', 1, 115, '5d49d787d87fa.jpeg'),
(231, '72.255.40.171', 1, 116, '5d49d787e09c3.jpeg'),
(232, '72.255.40.171', 1, 116, '5d49d787e1a93.jpeg'),
(233, '72.255.40.171', 1, 117, '5d49d787e9494.jpeg'),
(234, '72.255.40.171', 1, 117, '5d49d787e9d0d.jpeg'),
(235, '72.255.40.171', 1, 118, '5d49d787f3a05.jpeg'),
(236, '72.255.40.171', 1, 118, '5d49d7880079c.jpeg'),
(237, '72.255.40.171', 1, 119, '5d49d78808083.jpeg'),
(238, '72.255.40.171', 1, 119, '5d49d7880938d.jpeg'),
(239, '72.255.40.171', 1, 120, '5d49d78810ffa.jpeg'),
(240, '72.255.40.171', 1, 120, '5d49d78811f54.jpeg'),
(241, '72.255.40.171', 1, 121, '5d49d7881702b.jpeg'),
(242, '72.255.40.171', 1, 121, '5d49d78818131.jpeg'),
(243, '72.255.40.171', 1, 122, '5d49d7881d1e1.jpeg'),
(244, '72.255.40.171', 1, 122, '5d49d7881df9d.jpeg'),
(245, '72.255.40.171', 1, 123, '5d49d788229eb.jpeg'),
(246, '72.255.40.171', 1, 123, '5d49d7882384e.jpeg'),
(247, '72.255.40.171', 1, 124, '5d49d78828db9.jpeg'),
(248, '72.255.40.171', 1, 124, '5d49d78829da9.jpeg'),
(249, '72.255.40.171', 1, 125, '5d49d78835d5d.jpeg'),
(250, '72.255.40.171', 1, 125, '5d49d78839139.jpeg'),
(251, '72.255.40.171', 1, 126, '5d49d7883e676.jpeg'),
(252, '72.255.40.171', 1, 126, '5d49d7883fac3.jpeg'),
(253, '72.255.40.171', 1, 127, '5d49d7884b92b.jpeg'),
(254, '72.255.40.171', 1, 127, '5d49d7884c843.jpeg'),
(255, '72.255.40.171', 1, 128, '5d49d78854383.jpeg'),
(256, '72.255.40.171', 1, 128, '5d49d788596da.jpeg'),
(257, '72.255.40.171', 1, 129, '5d49d788610a8.jpeg'),
(258, '72.255.40.171', 1, 129, '5d49d7886273b.jpeg'),
(259, '72.255.40.171', 1, 130, '5d49d78867f34.jpeg'),
(260, '72.255.40.171', 1, 130, '5d49d7886b00e.jpeg'),
(261, '72.255.40.171', 1, 131, '5d49d78872cea.jpeg'),
(262, '72.255.40.171', 1, 131, '5d49d78873994.jpeg'),
(263, '72.255.40.171', 1, 132, '5d49d78879775.jpeg'),
(264, '72.255.40.171', 1, 132, '5d49d7887bd75.jpeg'),
(265, '72.255.40.171', 1, 133, '5d49d78882d34.jpeg'),
(266, '72.255.40.171', 1, 133, '5d49d78883b30.jpeg'),
(267, '72.255.40.171', 1, 134, '5d49d78889d90.jpeg'),
(268, '72.255.40.171', 1, 134, '5d49d7888adb8.jpeg'),
(269, '72.255.40.171', 1, 135, '5d49d78891432.jpeg'),
(270, '72.255.40.171', 1, 135, '5d49d7889219b.jpeg'),
(271, '72.255.40.171', 1, 136, '5d49d78896f51.jpeg'),
(272, '72.255.40.171', 1, 136, '5d49d78897ed0.jpeg'),
(273, '72.255.40.171', 1, 137, '5d49d7889c31e.jpeg'),
(274, '72.255.40.171', 1, 137, '5d49d7889cf26.jpeg'),
(275, '72.255.40.171', 1, 138, '5d49d788a1923.jpeg'),
(276, '72.255.40.171', 1, 138, '5d49d788a299e.jpeg'),
(279, '72.255.40.171', 1, 140, '5d49d788ad934.jpeg'),
(280, '72.255.40.171', 1, 140, '5d49d788ae8d1.jpeg'),
(281, '72.255.40.171', 1, 141, '5d49d788b32c2.jpeg'),
(282, '72.255.40.171', 1, 141, '5d49d788b464a.jpeg'),
(283, '72.255.40.171', 1, 142, '5d49d788b8fc1.jpeg'),
(284, '72.255.40.171', 1, 142, '5d49d788bb734.jpeg'),
(285, '72.255.40.171', 1, 143, '5d49d788c0c73.jpeg'),
(286, '72.255.40.171', 1, 143, '5d49d788c13c7.jpeg'),
(287, '72.255.40.171', 1, 144, '5d49d788c672d.jpeg'),
(288, '72.255.40.171', 1, 144, '5d49d788c76e7.jpeg'),
(289, '72.255.40.171', 1, 145, '5d49d788cbbe5.jpeg'),
(290, '72.255.40.171', 1, 145, '5d49d788cc884.jpeg'),
(291, '72.255.40.171', 1, 146, '5d49d788d0923.jpeg'),
(292, '72.255.40.171', 1, 146, '5d49d788d1577.jpeg'),
(293, '72.255.40.171', 1, 147, '5d49d788d6af4.jpeg'),
(294, '72.255.40.171', 1, 147, '5d49d788d84cf.jpeg'),
(295, '72.255.40.171', 1, 148, '5d49d788dd8ce.jpeg'),
(296, '72.255.40.171', 1, 148, '5d49d788de529.jpeg'),
(297, '72.255.40.171', 1, 149, '5d49d788e41ca.jpeg'),
(298, '72.255.40.171', 1, 149, '5d49d788e4ebb.jpeg'),
(299, '72.255.40.171', 1, 150, '5d49d788e9ba5.jpeg'),
(300, '72.255.40.171', 1, 150, '5d49d788ea26d.jpeg'),
(303, '72.255.40.171', 1, 152, '5d49d789040c5.jpeg'),
(304, '72.255.40.171', 1, 152, '5d49d78904f44.jpeg'),
(305, '72.255.40.171', 1, 153, '5d49d7890b043.jpeg'),
(306, '72.255.40.171', 1, 153, '5d49d7890beab.jpeg'),
(307, '72.255.40.171', 1, 154, '5d49d7891301b.jpeg'),
(308, '72.255.40.171', 1, 154, '5d49d78913550.jpeg'),
(309, '72.255.40.171', 1, 155, '5d49d78917ed1.jpeg'),
(310, '72.255.40.171', 1, 155, '5d49d78918d8c.jpeg'),
(311, '72.255.40.171', 1, 156, '5d49d7891e439.jpeg'),
(312, '72.255.40.171', 1, 156, '5d49d7891f46e.jpeg'),
(313, '72.255.40.171', 17, 157, '5d49d789253f4.jpeg'),
(314, '72.255.40.171', 17, 157, '5d49d78926469.jpeg'),
(315, '72.255.40.171', 1, 158, '5d49d7892c9ae.jpeg'),
(316, '72.255.40.171', 1, 158, '5d49d7892dca8.jpeg'),
(317, '72.255.40.171', 1, 159, '5d49d789330ab.jpeg'),
(318, '72.255.40.171', 1, 159, '5d49d789336bf.jpeg'),
(319, '72.255.40.171', 1, 160, '5d49d789469dd.jpeg'),
(320, '72.255.40.171', 1, 160, '5d49d789471ff.jpeg'),
(321, '72.255.40.171', 1, 161, '5d49d7894bda7.jpeg'),
(322, '72.255.40.171', 1, 161, '5d49d7894cc14.jpeg'),
(323, '72.255.40.171', 1, 162, '5d49d789528b0.jpeg'),
(324, '72.255.40.171', 1, 162, '5d49d789537dc.jpeg'),
(325, '72.255.40.171', 1, 163, '5d49d78957d5d.jpeg'),
(326, '72.255.40.171', 1, 163, '5d49d78958bea.jpeg'),
(327, '72.255.40.171', 1, 164, '5d49d7895d24c.jpeg'),
(328, '72.255.40.171', 1, 164, '5d49d7895dae0.jpeg'),
(329, '72.255.40.171', 1, 165, '5d49d7896cd36.jpeg'),
(330, '72.255.40.171', 1, 165, '5d49d7896d99c.jpeg'),
(331, '72.255.40.171', 1, 166, '5d49d78972fcc.jpeg'),
(332, '72.255.40.171', 1, 166, '5d49d78973ca5.jpeg'),
(333, '72.255.40.171', 1, 167, '5d49d78977e1a.jpeg'),
(334, '72.255.40.171', 1, 167, '5d49d78978b7d.jpeg'),
(335, '72.255.40.171', 1, 168, '5d49d7897c801.jpeg'),
(336, '72.255.40.171', 1, 168, '5d49d7897d38e.jpeg'),
(337, '72.255.40.171', 1, 169, '5d49d7898249a.jpeg'),
(338, '72.255.40.171', 1, 169, '5d49d789829c6.jpeg'),
(339, '72.255.40.171', 1, 170, '5d49d7898a648.jpeg'),
(340, '72.255.40.171', 1, 170, '5d49d7898b2d9.jpeg'),
(341, '72.255.40.171', 1, 171, '5d49d7898fc8a.jpeg'),
(342, '72.255.40.171', 1, 171, '5d49d789902a2.jpeg'),
(343, '72.255.40.171', 1, 172, '5d49d78994fd9.jpeg'),
(344, '72.255.40.171', 1, 172, '5d49d78996d26.jpeg'),
(345, '72.255.40.171', 1, 173, '5d49d7899b7ed.jpeg'),
(346, '72.255.40.171', 1, 173, '5d49d7899bdba.jpeg'),
(347, '72.255.40.171', 1, 174, '5d49d789a08f1.jpeg'),
(348, '72.255.40.171', 1, 174, '5d49d789a1125.jpeg'),
(349, '72.255.40.171', 1, 175, '5d49d789a60b1.jpeg'),
(350, '72.255.40.171', 1, 175, '5d49d789a70e4.jpeg'),
(351, '72.255.40.171', 1, 176, '5d49d789ac24b.jpeg'),
(352, '72.255.40.171', 1, 176, '5d49d789ac9b0.jpeg'),
(353, '72.255.40.171', 1, 177, '5d49d789b136a.jpeg'),
(354, '72.255.40.171', 1, 177, '5d49d789b1f73.jpeg'),
(355, '72.255.40.171', 1, 178, '5d49d789b6a79.jpeg'),
(356, '72.255.40.171', 1, 178, '5d49d789b7684.jpeg'),
(357, '72.255.40.171', 1, 179, '5d49d789bbfab.jpeg'),
(358, '72.255.40.171', 1, 179, '5d49d789bcae1.jpeg'),
(359, '72.255.40.171', 1, 180, '5d49d789c0c39.jpeg'),
(360, '72.255.40.171', 1, 180, '5d49d789c22ba.jpeg'),
(361, '72.255.40.171', 1, 181, '5d49d789c6876.jpeg'),
(362, '72.255.40.171', 1, 181, '5d49d789c6ec3.jpeg'),
(363, '72.255.40.171', 1, 182, '5d49d789cb9c4.jpeg'),
(364, '72.255.40.171', 1, 182, '5d49d789cc680.jpeg'),
(365, '72.255.40.171', 1, 183, '5d49d789d0875.jpeg'),
(366, '72.255.40.171', 1, 183, '5d49d789d1686.jpeg'),
(367, '72.255.40.171', 1, 184, '5d49d789d5f4c.jpeg'),
(368, '72.255.40.171', 1, 184, '5d49d789d6c59.jpeg'),
(369, '72.255.40.171', 2, 185, '5d49d789dbf30.jpeg'),
(370, '72.255.40.171', 2, 185, '5d49d789dc6f4.jpeg'),
(371, '72.255.40.171', 1, 186, '5d49d789e0bfa.jpeg'),
(372, '72.255.40.171', 1, 186, '5d49d789e1a37.jpeg'),
(373, '72.255.40.171', 2, 187, '5d49d789e6f5c.jpeg'),
(374, '72.255.40.171', 2, 187, '5d49d789e7dd3.jpeg'),
(375, '72.255.40.171', 1, 188, '5d49d789ee738.jpeg'),
(376, '72.255.40.171', 1, 188, '5d49d789ef62c.jpeg'),
(377, '72.255.40.171', 1, 189, '5d49d789f415c.jpeg'),
(378, '72.255.40.171', 1, 189, '5d49d78a00af8.jpeg'),
(379, '72.255.40.171', 1, 190, '5d49d78a0572f.jpeg'),
(380, '72.255.40.171', 1, 190, '5d49d78a062b7.jpeg'),
(381, '72.255.40.171', 2, 191, '5d49d78a0a8bb.jpeg'),
(382, '72.255.40.171', 2, 191, '5d49d78a0b700.jpeg'),
(383, '72.255.40.171', 1, 192, '5d49d78a1397a.jpeg'),
(384, '72.255.40.171', 1, 192, '5d49d78a14735.jpeg'),
(385, '72.255.40.171', 1, 193, '5d49d78a1dc6e.jpeg'),
(386, '72.255.40.171', 1, 193, '5d49d78a1ece0.jpeg'),
(387, '72.255.40.171', 1, 194, '5d49d78a29437.jpeg'),
(388, '72.255.40.171', 1, 194, '5d49d78a2a20d.jpeg'),
(389, '72.255.40.171', 2, 195, '5d49d78a2e9bd.jpeg'),
(390, '72.255.40.171', 2, 195, '5d49d78a2ff98.jpeg'),
(391, '72.255.40.171', 1, 196, '5d49d78a34bf0.jpeg'),
(392, '72.255.40.171', 1, 196, '5d49d78a358f0.jpeg'),
(393, '72.255.40.171', 1, 197, '5d49d78a3c1a0.jpeg'),
(394, '72.255.40.171', 1, 197, '5d49d78a3d0b3.jpeg'),
(395, '72.255.40.171', 1, 198, '5d49d78a41af6.jpeg'),
(396, '72.255.40.171', 1, 198, '5d49d78a41fed.jpeg'),
(397, '72.255.40.171', 1, 199, '5d49d78a46b69.jpeg'),
(398, '72.255.40.171', 1, 199, '5d49d78a4795b.jpeg'),
(399, '72.255.40.171', 1, 200, '5d49d78a4fc5f.jpeg'),
(400, '72.255.40.171', 1, 200, '5d49d78a50995.jpeg'),
(401, '72.255.40.171', 1, 201, '5d49d78a557a6.jpeg'),
(402, '72.255.40.171', 1, 201, '5d49d78a563d5.jpeg'),
(403, '72.255.40.171', 2, 202, '5d49d78a5b3d1.jpeg'),
(404, '72.255.40.171', 2, 202, '5d49d78a5ba5a.jpeg'),
(405, '72.255.40.171', 1, 203, '5d49d78a62f33.jpeg'),
(406, '72.255.40.171', 1, 203, '5d49d78a63615.jpeg'),
(407, '72.255.40.171', 2, 204, '5d49d78a6a0d4.jpeg'),
(408, '72.255.40.171', 2, 204, '5d49d78a6adf9.jpeg'),
(409, '72.255.40.171', 1, 205, '5d49d78a708fc.jpeg'),
(410, '72.255.40.171', 1, 205, '5d49d78a7151c.jpeg'),
(411, '72.255.40.171', 1, 206, '5d49d78a76a96.jpeg'),
(412, '72.255.40.171', 1, 206, '5d49d78a7790a.jpeg'),
(413, '72.255.40.171', 1, 207, '5d49d78a7ea16.jpeg'),
(414, '72.255.40.171', 1, 207, '5d49d78a7f7fb.jpeg'),
(415, '72.255.40.171', 1, 208, '5d49d78a84624.jpeg'),
(416, '72.255.40.171', 1, 208, '5d49d78a851d7.jpeg'),
(417, '72.255.40.171', 1, 209, '5d49d78a8905e.jpeg'),
(418, '72.255.40.171', 1, 209, '5d49d78a897f1.jpeg'),
(419, '72.255.40.171', 1, 210, '5d49d78a8e496.jpeg'),
(420, '72.255.40.171', 1, 210, '5d49d78a8f0a6.jpeg'),
(421, '72.255.40.171', 1, 211, '5d49d78a94c61.jpeg'),
(422, '72.255.40.171', 1, 211, '5d49d78a95212.jpeg'),
(423, '72.255.40.171', 1, 212, '5d49d78a99ae8.jpeg'),
(424, '72.255.40.171', 1, 212, '5d49d78a9a8b9.jpeg'),
(425, '72.255.40.171', 1, 213, '5d49d78a9ebf7.jpeg'),
(426, '72.255.40.171', 1, 213, '5d49d78a9f8f9.jpeg'),
(427, '72.255.40.171', 1, 214, '5d49d78aa635a.jpeg'),
(428, '72.255.40.171', 1, 214, '5d49d78aa72f8.jpeg'),
(429, '72.255.40.171', 1, 215, '5d49d78aad0ca.jpeg'),
(430, '72.255.40.171', 1, 215, '5d49d78aad93e.jpeg'),
(445, '72.255.40.171', 2, 223, '5d49d78ad97e2.jpeg'),
(446, '72.255.40.171', 2, 223, '5d49d78ada650.jpeg'),
(452, '72.255.40.171', 1, 225, '5d49d88f654d5.jpeg'),
(453, '72.255.40.171', 1, 224, '5d49d918f30bb.jpeg'),
(454, '72.255.40.171', 1, 222, '5d49d941e30fc.jpeg'),
(455, '72.255.40.171', 1, 222, '5d49d941e417b.jpeg'),
(456, '72.255.40.171', 1, 222, '5d49d941e74e3.jpeg'),
(457, '72.255.40.171', 1, 218, '5d49d96933c44.jpeg'),
(458, '72.255.40.171', 1, 216, '5d49d9972027f.jpeg'),
(459, '72.255.40.171', 1, 216, '5d49d997250b3.jpeg'),
(460, '72.255.40.171', 1, 216, '5d49d9972678f.jpeg'),
(461, '72.255.40.171', 1, 216, '5d49d997284af.jpeg'),
(462, '72.255.40.171', 1, 216, '5d49d99729f4d.jpeg'),
(463, '72.255.40.171', 1, 151, '5d49d9df043c0.jpeg'),
(464, '72.255.40.171', 1, 151, '5d49d9df05be0.jpeg'),
(465, '72.255.40.171', 1, 151, '5d49d9df09018.jpeg'),
(466, '72.255.40.171', 1, 151, '5d49d9df0f09b.jpeg'),
(467, '103.217.178.23', 17, 227, '5d4ab24e6acc3.jpeg'),
(468, '103.217.178.23', 17, 227, '5d4ab24e75475.jpeg'),
(479, '103.217.178.23', 17, 233, '5d4ab24f8c4c7.jpeg'),
(480, '103.217.178.23', 17, 233, '5d4ab24f8ebb2.jpeg'),
(485, '103.217.178.23', 17, 236, '5d4ab2696a2e8.jpeg'),
(486, '103.217.178.23', 17, 236, '5d4ab2696b40e.jpeg'),
(497, '103.217.177.27', 23, 243, '5d4bf47eba9db.jpeg'),
(498, '103.255.5.79', 17, 84, '5d4bfacc879ee.jpeg'),
(499, '103.255.5.79', 17, 84, '5d4bfaceccc71.jpeg'),
(512, '182.185.148.66', 17, 248, '5d4d8cd1eedf6.jpeg'),
(513, '182.185.148.66', 17, 248, '5d4d8cd1f10d8.jpeg'),
(514, '182.185.148.66', 17, 248, '5d4d8cd1f3bb3.jpeg'),
(515, '182.185.148.66', 17, 248, '5d4d8cd20196b.jpeg'),
(516, '182.185.148.66', 17, 248, '5d4d8cd202f46.jpeg'),
(524, '103.255.4.96', 17, 254, '5d69200b8bc6a.jpeg'),
(525, '103.255.4.96', 17, 254, '5d69200b8c916.jpeg'),
(526, '103.255.4.96', 17, 254, '5d69200b8d942.jpeg'),
(527, '103.255.4.96', 17, 254, '5d69200b8e8dc.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_reviews`
--

CREATE TABLE `tbl_products_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `buyer_ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_stars` int(11) DEFAULT NULL,
  `vendor_stars` int(11) DEFAULT NULL,
  `buyer_comment` longtext COLLATE utf8_unicode_ci,
  `vendor_comment` longtext COLLATE utf8_unicode_ci,
  `buyer_review_created_date` date NOT NULL,
  `buyer_review_created_time` time NOT NULL,
  `vendor_review_created_date` date DEFAULT NULL,
  `vendor_review_created_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_brands`
--

CREATE TABLE `tbl_product_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_brands`
--

INSERT INTO `tbl_product_brands` (`id`, `ip_address`, `user_id`, `product_id`, `brand_id`) VALUES
(2, '72.255.40.171', 17, 2, 6),
(4, '72.255.40.171', 17, 4, 6),
(5, '72.255.40.171', 17, 5, 6),
(6, '72.255.40.171', 17, 6, 6),
(8, '72.255.40.171', 17, 8, 6),
(9, '72.255.40.171', 17, 9, 6),
(10, '72.255.40.171', 17, 10, 6),
(11, '72.255.40.171', 17, 11, 6),
(12, '72.255.40.171', 17, 12, 6),
(13, '72.255.40.171', 17, 13, 6),
(14, '72.255.40.171', 17, 14, 6),
(15, '72.255.40.171', 17, 15, 6),
(16, '72.255.40.171', 17, 16, 6),
(17, '72.255.40.171', 17, 17, 6),
(18, '72.255.40.171', 17, 18, 6),
(19, '72.255.40.171', 17, 19, 6),
(20, '72.255.40.171', 17, 20, 6),
(21, '72.255.40.171', 17, 21, 6),
(22, '72.255.40.171', 17, 22, 6),
(23, '72.255.40.171', 17, 23, 6),
(24, '72.255.40.171', 17, 24, 6),
(25, '72.255.40.171', 17, 25, 6),
(26, '72.255.40.171', 17, 26, 6),
(27, '72.255.40.171', 17, 27, 6),
(28, '72.255.40.171', 17, 28, 6),
(29, '72.255.40.171', 17, 29, 6),
(30, '72.255.40.171', 17, 30, 6),
(31, '72.255.40.171', 17, 31, 6),
(32, '72.255.40.171', 17, 32, 6),
(33, '72.255.40.171', 17, 33, 6),
(34, '72.255.40.171', 17, 34, 6),
(35, '72.255.40.171', 17, 35, 6),
(36, '72.255.40.171', 17, 36, 6),
(37, '72.255.40.171', 17, 37, 6),
(38, '72.255.40.171', 17, 38, 6),
(39, '72.255.40.171', 17, 39, 6),
(40, '72.255.40.171', 17, 40, 6),
(41, '72.255.40.171', 17, 41, 6),
(42, '72.255.40.171', 17, 42, 6),
(43, '72.255.40.171', 17, 43, 6),
(44, '72.255.40.171', 17, 44, 6),
(45, '72.255.40.171', 17, 45, 6),
(46, '72.255.40.171', 17, 46, 6),
(47, '72.255.40.171', 17, 47, 12),
(48, '72.255.40.171', 17, 48, 12),
(49, '72.255.40.171', 17, 49, 6),
(50, '72.255.40.171', 17, 50, 6),
(51, '72.255.40.171', 17, 51, 6),
(52, '72.255.40.171', 17, 52, 6),
(53, '72.255.40.171', 17, 53, 6),
(54, '72.255.40.171', 17, 54, 6),
(55, '72.255.40.171', 17, 55, 12),
(56, '72.255.40.171', 17, 56, 12),
(57, '72.255.40.171', 17, 57, 12),
(58, '72.255.40.171', 17, 58, 12),
(59, '72.255.40.171', 17, 59, 12),
(60, '72.255.40.171', 17, 60, 6),
(61, '72.255.40.171', 17, 61, 6),
(62, '72.255.40.171', 17, 62, 6),
(63, '72.255.40.171', 17, 63, 6),
(64, '72.255.40.171', 17, 64, 6),
(65, '72.255.40.171', 17, 65, 6),
(66, '72.255.40.171', 17, 66, 6),
(67, '72.255.40.171', 17, 67, 6),
(68, '72.255.40.171', 17, 68, 6),
(69, '72.255.40.171', 17, 69, 6),
(70, '72.255.40.171', 17, 70, 6),
(71, '72.255.40.171', 17, 71, 6),
(72, '72.255.40.171', 17, 72, 6),
(73, '72.255.40.171', 17, 73, 6),
(74, '72.255.40.171', 17, 74, 6),
(75, '72.255.40.171', 17, 75, 6),
(76, '72.255.40.171', 17, 76, 6),
(77, '72.255.40.171', 17, 77, 6),
(78, '72.255.40.171', 17, 78, 6),
(79, '72.255.40.171', 17, 79, 6),
(80, '72.255.40.171', 17, 80, 6),
(81, '72.255.40.171', 17, 81, 6),
(82, '72.255.40.171', 17, 82, 6),
(83, '72.255.40.171', 17, 83, 6),
(84, '103.255.5.79', 17, 84, 6),
(85, '72.255.40.171', 17, 85, 6),
(86, '72.255.40.171', 17, 86, 12),
(87, '72.255.40.171', 17, 87, 6),
(88, '72.255.40.171', 17, 88, 6),
(89, '72.255.40.171', 17, 89, 6),
(90, '72.255.40.171', 17, 90, 6),
(91, '72.255.40.171', 17, 91, 6),
(92, '72.255.40.171', 17, 92, 6),
(93, '72.255.40.171', 17, 93, 6),
(94, '72.255.40.171', 17, 94, 6),
(95, '72.255.40.171', 17, 95, 6),
(96, '72.255.40.171', 17, 96, 6),
(97, '72.255.40.171', 17, 97, 6),
(98, '72.255.40.171', 17, 98, 6),
(99, '72.255.40.171', 17, 99, 6),
(100, '72.255.40.171', 17, 100, 6),
(101, '72.255.40.171', 17, 101, 12),
(102, '72.255.40.171', 17, 102, 6),
(103, '72.255.40.171', 17, 103, 6),
(104, '72.255.40.171', 17, 104, 6),
(105, '72.255.40.171', 1, 105, 6),
(106, '72.255.40.171', 1, 106, 6),
(107, '72.255.40.171', 1, 107, 6),
(108, '72.255.40.171', 1, 108, 6),
(109, '72.255.40.171', 1, 109, 6),
(110, '72.255.40.171', 1, 110, 12),
(111, '72.255.40.171', 1, 111, 6),
(112, '72.255.40.171', 1, 112, 6),
(113, '72.255.40.171', 1, 113, 6),
(114, '72.255.40.171', 1, 114, 15),
(115, '72.255.40.171', 1, 115, 6),
(116, '72.255.40.171', 1, 116, 6),
(117, '72.255.40.171', 1, 117, 6),
(118, '72.255.40.171', 1, 118, 6),
(119, '72.255.40.171', 1, 119, 6),
(120, '72.255.40.171', 1, 120, 6),
(121, '72.255.40.171', 1, 121, 6),
(122, '72.255.40.171', 1, 122, 6),
(123, '72.255.40.171', 1, 123, 14),
(124, '72.255.40.171', 1, 124, 14),
(125, '72.255.40.171', 1, 125, 6),
(126, '72.255.40.171', 1, 126, 6),
(127, '72.255.40.171', 1, 127, 6),
(128, '72.255.40.171', 1, 128, 6),
(129, '72.255.40.171', 1, 129, 6),
(130, '72.255.40.171', 1, 130, 6),
(131, '72.255.40.171', 1, 131, 6),
(132, '72.255.40.171', 1, 132, 11),
(133, '72.255.40.171', 1, 133, 11),
(134, '72.255.40.171', 1, 134, 11),
(135, '72.255.40.171', 1, 135, 6),
(136, '72.255.40.171', 1, 136, 11),
(137, '72.255.40.171', 1, 137, 11),
(138, '72.255.40.171', 1, 138, 11),
(140, '72.255.40.171', 1, 140, 11),
(141, '72.255.40.171', 1, 141, 11),
(142, '72.255.40.171', 1, 142, 11),
(143, '72.255.40.171', 1, 143, 11),
(144, '72.255.40.171', 1, 144, 11),
(145, '72.255.40.171', 1, 145, 11),
(146, '72.255.40.171', 1, 146, 11),
(147, '72.255.40.171', 1, 147, 11),
(148, '72.255.40.171', 1, 148, 11),
(149, '72.255.40.171', 1, 149, 11),
(150, '72.255.40.171', 1, 150, 11),
(151, '72.255.40.171', 1, 151, 11),
(152, '72.255.40.171', 1, 152, 11),
(153, '72.255.40.171', 1, 153, 11),
(154, '72.255.40.171', 1, 154, 11),
(155, '72.255.40.171', 1, 155, 11),
(156, '72.255.40.171', 1, 156, 11),
(157, '72.255.40.171', 17, 157, 11),
(158, '72.255.40.171', 1, 158, 11),
(159, '72.255.40.171', 1, 159, 11),
(160, '72.255.40.171', 1, 160, 11),
(161, '72.255.40.171', 1, 161, 11),
(162, '72.255.40.171', 1, 162, 11),
(163, '72.255.40.171', 1, 163, 11),
(164, '72.255.40.171', 1, 164, 11),
(165, '72.255.40.171', 1, 165, 11),
(166, '72.255.40.171', 1, 166, 11),
(167, '72.255.40.171', 1, 167, 8),
(168, '72.255.40.171', 1, 168, 8),
(169, '72.255.40.171', 1, 169, 8),
(170, '72.255.40.171', 1, 170, 8),
(171, '72.255.40.171', 1, 171, 8),
(172, '72.255.40.171', 1, 172, 8),
(173, '72.255.40.171', 1, 173, 8),
(174, '72.255.40.171', 1, 174, 6),
(175, '72.255.40.171', 1, 175, 6),
(176, '72.255.40.171', 1, 176, 6),
(177, '72.255.40.171', 1, 177, 6),
(178, '72.255.40.171', 1, 178, 6),
(179, '72.255.40.171', 1, 179, 6),
(180, '72.255.40.171', 1, 180, 6),
(181, '72.255.40.171', 1, 181, 6),
(182, '72.255.40.171', 1, 182, 6),
(183, '72.255.40.171', 1, 183, 6),
(184, '72.255.40.171', 1, 184, 6),
(185, '72.255.40.171', 2, 185, 6),
(186, '72.255.40.171', 1, 186, 6),
(187, '72.255.40.171', 2, 187, 6),
(188, '72.255.40.171', 1, 188, 6),
(189, '72.255.40.171', 1, 189, 6),
(190, '72.255.40.171', 1, 190, 6),
(191, '72.255.40.171', 2, 191, 6),
(192, '72.255.40.171', 1, 192, 6),
(193, '72.255.40.171', 1, 193, 6),
(194, '72.255.40.171', 1, 194, 6),
(195, '72.255.40.171', 2, 195, 6),
(196, '72.255.40.171', 1, 196, 6),
(197, '72.255.40.171', 1, 197, 6),
(198, '72.255.40.171', 1, 198, 6),
(199, '72.255.40.171', 1, 199, 6),
(200, '72.255.40.171', 1, 200, 6),
(201, '72.255.40.171', 1, 201, 6),
(202, '72.255.40.171', 2, 202, 6),
(203, '72.255.40.171', 1, 203, 6),
(204, '72.255.40.171', 2, 204, 6),
(205, '72.255.40.171', 1, 205, 6),
(206, '72.255.40.171', 1, 206, 6),
(207, '72.255.40.171', 1, 207, 6),
(208, '72.255.40.171', 1, 208, 6),
(209, '72.255.40.171', 1, 209, 6),
(210, '72.255.40.171', 1, 210, 6),
(211, '72.255.40.171', 1, 211, 6),
(212, '72.255.40.171', 1, 212, 6),
(213, '72.255.40.171', 1, 213, 6),
(214, '72.255.40.171', 1, 214, 6),
(215, '72.255.40.171', 1, 215, 6),
(216, '72.255.40.171', 1, 216, 8),
(218, '72.255.40.171', 1, 218, 7),
(222, '72.255.40.171', 1, 222, 7),
(223, '72.255.40.171', 2, 223, 7),
(224, '72.255.40.171', 1, 224, 7),
(225, '72.255.40.171', 1, 225, 7),
(226, '103.217.178.23', 17, 227, 6),
(232, '103.217.178.23', 17, 233, 6),
(235, '103.217.178.23', 17, 236, 6),
(247, '182.185.148.66', 17, 248, 16),
(253, '103.255.4.96', 17, 254, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_categories`
--

CREATE TABLE `tbl_product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `sub_child_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_categories`
--

INSERT INTO `tbl_product_categories` (`id`, `ip_address`, `user_id`, `product_id`, `parent_id`, `child_id`, `sub_child_id`) VALUES
(2, '72.255.40.171', 17, 2, 16, 22, 58),
(4, '72.255.40.171', 17, 4, 27, 95, 260),
(5, '72.255.40.171', 17, 5, 19, 27, 12),
(6, '72.255.40.171', 17, 6, 27, 95, 260),
(8, '72.255.40.171', 17, 8, 16, 22, 100),
(9, '72.255.40.171', 17, 9, 16, 22, 100),
(10, '72.255.40.171', 17, 10, 16, 22, 100),
(11, '72.255.40.171', 17, 11, 16, 22, 100),
(12, '72.255.40.171', 17, 12, 16, 22, 100),
(13, '72.255.40.171', 17, 13, 16, 22, 100),
(14, '72.255.40.171', 17, 14, 16, 22, 100),
(15, '72.255.40.171', 17, 15, 16, 22, 100),
(16, '72.255.40.171', 17, 16, 16, 23, 107),
(17, '72.255.40.171', 17, 17, 15, 15, 74),
(18, '72.255.40.171', 17, 18, 25, 94, 86),
(19, '72.255.40.171', 17, 19, 25, 94, 86),
(20, '72.255.40.171', 17, 20, 25, 94, 86),
(21, '72.255.40.171', 17, 21, 25, 94, 86),
(22, '72.255.40.171', 17, 22, 16, 22, 100),
(23, '72.255.40.171', 17, 23, 16, 22, 100),
(24, '72.255.40.171', 17, 24, 16, 22, 100),
(25, '72.255.40.171', 17, 25, 16, 22, 100),
(26, '72.255.40.171', 17, 26, 16, 22, 100),
(27, '72.255.40.171', 17, 27, 16, 22, 100),
(28, '72.255.40.171', 17, 28, 16, 17, 57),
(29, '72.255.40.171', 17, 29, 16, 22, 100),
(30, '72.255.40.171', 17, 30, 16, 22, 100),
(31, '72.255.40.171', 17, 31, 16, 22, 100),
(32, '72.255.40.171', 17, 32, 16, 22, 100),
(33, '72.255.40.171', 17, 33, 25, 94, 253),
(34, '72.255.40.171', 17, 34, 16, 22, 101),
(35, '72.255.40.171', 17, 35, 19, 27, 45),
(36, '72.255.40.171', 17, 36, 23, 81, 250),
(37, '72.255.40.171', 17, 37, 18, 33, 121),
(38, '72.255.40.171', 17, 38, 23, 81, 250),
(39, '72.255.40.171', 17, 39, 18, 33, 258),
(40, '72.255.40.171', 17, 40, 23, 81, 250),
(41, '72.255.40.171', 17, 41, 18, 33, 258),
(42, '72.255.40.171', 17, 42, 16, 22, 58),
(43, '72.255.40.171', 17, 43, 16, 22, 101),
(44, '72.255.40.171', 17, 44, 22, 71, 217),
(45, '72.255.40.171', 17, 45, 27, 93, 252),
(46, '72.255.40.171', 17, 46, 22, 68, 207),
(47, '72.255.40.171', 17, 47, 22, 68, 208),
(48, '72.255.40.171', 17, 48, 22, 68, 208),
(49, '72.255.40.171', 17, 49, 19, 27, 12),
(50, '72.255.40.171', 17, 50, 19, 27, 12),
(51, '72.255.40.171', 17, 51, 16, 22, 58),
(52, '72.255.40.171', 17, 52, 16, 21, 94),
(53, '72.255.40.171', 17, 53, 16, 21, 94),
(54, '72.255.40.171', 17, 54, 16, 17, 81),
(55, '72.255.40.171', 17, 55, 16, 17, 81),
(56, '72.255.40.171', 17, 56, 16, 17, 247),
(57, '72.255.40.171', 17, 57, 16, 17, 79),
(58, '72.255.40.171', 17, 58, 16, 17, 79),
(59, '72.255.40.171', 17, 59, 16, 17, 79),
(60, '72.255.40.171', 17, 60, 15, 15, 73),
(61, '72.255.40.171', 17, 61, 15, 15, 73),
(62, '72.255.40.171', 17, 62, 20, 61, 172),
(63, '72.255.40.171', 17, 63, 15, 15, 73),
(64, '72.255.40.171', 17, 64, 15, 15, 73),
(65, '72.255.40.171', 17, 65, 15, 15, 73),
(66, '72.255.40.171', 17, 66, 15, 15, 73),
(67, '72.255.40.171', 17, 67, 15, 15, 73),
(68, '72.255.40.171', 17, 68, 15, 15, 73),
(69, '72.255.40.171', 17, 69, 15, 15, 73),
(70, '72.255.40.171', 17, 70, 15, 15, 73),
(71, '72.255.40.171', 17, 71, 15, 15, 73),
(72, '72.255.40.171', 17, 72, 15, 15, 73),
(73, '72.255.40.171', 17, 73, 15, 15, 73),
(74, '72.255.40.171', 17, 74, 15, 15, 73),
(75, '72.255.40.171', 17, 75, 16, 21, 95),
(76, '72.255.40.171', 17, 76, 19, 27, 12),
(77, '72.255.40.171', 17, 77, 25, 94, 253),
(78, '72.255.40.171', 17, 78, 16, 22, 101),
(79, '72.255.40.171', 17, 79, 19, 40, 25),
(80, '72.255.40.171', 17, 80, 15, 9, 5),
(81, '72.255.40.171', 17, 81, 16, 22, 101),
(82, '72.255.40.171', 17, 82, 19, 37, 12),
(83, '72.255.40.171', 17, 83, 19, 37, 12),
(84, '103.255.5.79', 17, 84, 18, 33, 121),
(85, '72.255.40.171', 17, 85, 18, 33, 121),
(86, '72.255.40.171', 17, 86, 16, 17, 79),
(87, '72.255.40.171', 17, 87, 25, 94, 253),
(88, '72.255.40.171', 17, 88, 19, 41, 55),
(89, '72.255.40.171', 17, 89, 19, 41, 55),
(90, '72.255.40.171', 17, 90, 16, 22, 100),
(91, '72.255.40.171', 17, 91, 16, 22, 100),
(92, '72.255.40.171', 17, 92, 16, 22, 100),
(93, '72.255.40.171', 17, 93, 16, 22, 100),
(94, '72.255.40.171', 17, 94, 16, 22, 100),
(95, '72.255.40.171', 17, 95, 16, 17, 79),
(96, '72.255.40.171', 17, 96, 16, 17, 242),
(97, '72.255.40.171', 17, 97, 16, 17, 242),
(98, '72.255.40.171', 17, 98, 16, 17, 242),
(99, '72.255.40.171', 17, 99, 16, 17, 242),
(100, '72.255.40.171', 17, 100, 16, 17, 242),
(101, '72.255.40.171', 17, 101, 16, 22, 257),
(102, '72.255.40.171', 17, 102, 16, 22, 244),
(103, '72.255.40.171', 17, 103, 27, 95, 260),
(104, '72.255.40.171', 17, 104, 16, 17, 259),
(105, '72.255.40.171', 1, 105, 16, 17, 259),
(106, '72.255.40.171', 1, 106, 16, 17, 259),
(107, '72.255.40.171', 1, 107, 19, 41, 51),
(108, '72.255.40.171', 1, 108, 20, 61, 172),
(109, '72.255.40.171', 1, 109, 18, 33, 258),
(110, '72.255.40.171', 1, 110, 16, 22, 257),
(111, '72.255.40.171', 1, 111, 23, 75, 256),
(112, '72.255.40.171', 1, 112, 19, 41, 52),
(113, '72.255.40.171', 1, 113, 25, 91, 249),
(114, '72.255.40.171', 1, 114, 19, 41, 50),
(115, '72.255.40.171', 1, 115, 25, 91, 249),
(116, '72.255.40.171', 1, 116, 25, 91, 249),
(117, '72.255.40.171', 1, 117, 16, 20, 69),
(118, '72.255.40.171', 1, 118, 16, 22, 100),
(119, '72.255.40.171', 1, 119, 16, 18, 248),
(120, '72.255.40.171', 1, 120, 27, 92, 251),
(121, '72.255.40.171', 1, 121, 16, 17, 247),
(122, '72.255.40.171', 1, 122, 25, 91, 249),
(123, '72.255.40.171', 1, 123, 25, 94, 253),
(124, '72.255.40.171', 1, 124, 25, 94, 253),
(125, '72.255.40.171', 1, 125, 25, 94, 253),
(126, '72.255.40.171', 1, 126, 19, 27, 45),
(127, '72.255.40.171', 1, 127, 16, 17, 79),
(128, '72.255.40.171', 1, 128, 25, 94, 253),
(129, '72.255.40.171', 1, 129, 27, 93, 252),
(130, '72.255.40.171', 1, 130, 27, 92, 251),
(131, '72.255.40.171', 1, 131, 23, 81, 250),
(132, '72.255.40.171', 1, 132, 25, 91, 249),
(133, '72.255.40.171', 1, 133, 18, 33, 121),
(134, '72.255.40.171', 1, 134, 16, 21, 94),
(135, '72.255.40.171', 1, 135, 16, 21, 94),
(136, '72.255.40.171', 1, 136, 16, 21, 94),
(137, '72.255.40.171', 1, 137, 16, 21, 94),
(138, '72.255.40.171', 1, 138, 16, 21, 94),
(140, '72.255.40.171', 1, 140, 16, 22, 243),
(141, '72.255.40.171', 1, 141, 16, 22, 243),
(142, '72.255.40.171', 1, 142, 16, 17, 242),
(143, '72.255.40.171', 1, 143, 16, 22, 244),
(144, '72.255.40.171', 1, 144, 16, 22, 99),
(145, '72.255.40.171', 1, 145, 16, 21, 94),
(146, '72.255.40.171', 1, 146, 16, 17, 78),
(147, '72.255.40.171', 1, 147, 16, 22, 243),
(148, '72.255.40.171', 1, 148, 16, 22, 243),
(149, '72.255.40.171', 1, 149, 16, 22, 243),
(150, '72.255.40.171', 1, 150, 16, 22, 243),
(151, '72.255.40.171', 1, 151, 16, 22, 243),
(152, '72.255.40.171', 1, 152, 16, 22, 243),
(153, '72.255.40.171', 1, 153, 16, 17, 79),
(154, '72.255.40.171', 1, 154, 16, 17, 79),
(155, '72.255.40.171', 1, 155, 16, 17, 79),
(156, '72.255.40.171', 1, 156, 16, 17, 79),
(157, '72.255.40.171', 17, 157, 17, 30, 140),
(158, '72.255.40.171', 1, 158, 16, 22, 243),
(159, '72.255.40.171', 1, 159, 16, 22, 243),
(160, '72.255.40.171', 1, 160, 16, 17, 77),
(161, '72.255.40.171', 1, 161, 16, 17, 77),
(162, '72.255.40.171', 1, 162, 16, 17, 77),
(163, '72.255.40.171', 1, 163, 16, 17, 77),
(164, '72.255.40.171', 1, 164, 16, 17, 79),
(165, '72.255.40.171', 1, 165, 16, 17, 77),
(166, '72.255.40.171', 1, 166, 16, 17, 79),
(167, '72.255.40.171', 1, 167, 16, 17, 79),
(168, '72.255.40.171', 1, 168, 16, 23, 104),
(169, '72.255.40.171', 1, 169, 16, 23, 104),
(170, '72.255.40.171', 1, 170, 16, 23, 104),
(171, '72.255.40.171', 1, 171, 16, 23, 104),
(172, '72.255.40.171', 1, 172, 16, 17, 79),
(173, '72.255.40.171', 1, 173, 16, 17, 79),
(174, '72.255.40.171', 1, 174, 16, 17, 77),
(175, '72.255.40.171', 1, 175, 16, 17, 79),
(176, '72.255.40.171', 1, 176, 16, 17, 79),
(177, '72.255.40.171', 1, 177, 16, 17, 79),
(178, '72.255.40.171', 1, 178, 16, 17, 78),
(179, '72.255.40.171', 1, 179, 16, 22, 243),
(180, '72.255.40.171', 1, 180, 16, 22, 243),
(181, '72.255.40.171', 1, 181, 16, 17, 79),
(182, '72.255.40.171', 1, 182, 16, 22, 243),
(183, '72.255.40.171', 1, 183, 16, 17, 79),
(184, '72.255.40.171', 1, 184, 16, 17, 77),
(185, '72.255.40.171', 2, 185, 16, 21, 94),
(186, '72.255.40.171', 1, 186, 16, 21, 94),
(187, '72.255.40.171', 2, 187, 16, 21, 94),
(188, '72.255.40.171', 1, 188, 16, 21, 94),
(189, '72.255.40.171', 1, 189, 16, 17, 79),
(190, '72.255.40.171', 1, 190, 16, 17, 78),
(191, '72.255.40.171', 2, 191, 16, 17, 78),
(192, '72.255.40.171', 1, 192, 16, 17, 78),
(193, '72.255.40.171', 1, 193, 16, 22, 99),
(194, '72.255.40.171', 1, 194, 16, 22, 243),
(195, '72.255.40.171', 2, 195, 16, 22, 243),
(196, '72.255.40.171', 1, 196, 16, 22, 243),
(197, '72.255.40.171', 1, 197, 16, 17, 79),
(198, '72.255.40.171', 1, 198, 16, 22, 100),
(199, '72.255.40.171', 1, 199, 16, 22, 243),
(200, '72.255.40.171', 1, 200, 16, 22, 243),
(201, '72.255.40.171', 1, 201, 16, 22, 243),
(202, '72.255.40.171', 2, 202, 16, 22, 243),
(203, '72.255.40.171', 1, 203, 16, 22, 243),
(204, '72.255.40.171', 2, 204, 16, 22, 243),
(205, '72.255.40.171', 1, 205, 16, 22, 102),
(206, '72.255.40.171', 1, 206, 16, 22, 243),
(207, '72.255.40.171', 1, 207, 16, 18, 248),
(208, '72.255.40.171', 1, 208, 16, 18, 83),
(209, '72.255.40.171', 1, 209, 16, 18, 83),
(210, '72.255.40.171', 1, 210, 16, 22, 58),
(211, '72.255.40.171', 1, 211, 16, 17, 79),
(212, '72.255.40.171', 1, 212, 16, 17, 77),
(213, '72.255.40.171', 1, 213, 16, 17, 77),
(214, '72.255.40.171', 1, 214, 16, 17, 77),
(215, '72.255.40.171', 1, 215, 16, 17, 77),
(216, '72.255.40.171', 1, 216, 16, 17, 79),
(218, '72.255.40.171', 1, 218, 16, 17, 78),
(222, '72.255.40.171', 1, 222, 16, 17, 77),
(223, '72.255.40.171', 2, 223, 16, 17, 57),
(224, '72.255.40.171', 1, 224, 16, 17, 57),
(225, '72.255.40.171', 1, 225, 16, 17, 57),
(226, '103.217.178.23', 17, 227, 22, 70, 221),
(232, '103.217.178.23', 17, 233, 19, 27, 12),
(235, '103.217.178.23', 17, 236, 27, 92, 251),
(247, '182.185.148.66', 17, 248, 16, 22, 243),
(253, '103.255.4.96', 17, 254, 27, 93, 252);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_charges`
--

CREATE TABLE `tbl_shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` longtext COLLATE utf8_unicode_ci NOT NULL,
  `charges` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_shipping_charges`
--

INSERT INTO `tbl_shipping_charges` (`id`, `order_no`, `charges`, `order_date`, `order_time`) VALUES
(4, '00001', 375, '2019-04-25', '11:52:22'),
(5, '00002', 275, '2019-04-25', '12:01:19'),
(6, '00001', 375, '2019-04-30', '12:42:13'),
(7, '00002', 200, '2019-04-30', '12:56:31'),
(8, '00003', 375, '2019-05-08', '03:34:09'),
(9, '00004', 375, '2019-05-08', '03:35:13'),
(10, '00005', 150, '2019-05-08', '03:36:57'),
(11, '00006', 150, '2019-05-14', '01:52:08'),
(12, '00007', 375, '2019-05-15', '01:11:15'),
(13, '00008', 375, '2019-07-04', '11:29:50'),
(14, '00009', 550, '2019-07-06', '03:42:02'),
(15, '00010', 275, '2019-07-07', '12:06:56'),
(16, '00011', 125, '2019-07-12', '12:28:42'),
(17, '00012', 125, '2019-08-07', '01:11:55'),
(18, '00013', 125, '2019-08-07', '01:12:38'),
(19, '00014', 125, '2019-08-07', '01:12:51'),
(20, '00015', 125, '2019-08-07', '01:12:55'),
(21, '00016', 149, '2019-08-07', '07:29:09'),
(22, '00017', 149, '2019-08-07', '07:32:49'),
(23, '00018', 149, '2019-08-07', '07:35:38'),
(24, '00019', 149, '2019-08-07', '07:45:42'),
(25, '00020', 149, '2019-08-07', '07:50:55'),
(26, '00021', 125, '2019-08-08', '04:43:07'),
(27, '00022', 149, '2019-08-08', '07:17:59'),
(28, '00023', 149, '2019-08-09', '03:43:22'),
(29, '00024', 149, '2019-08-09', '03:48:20'),
(30, '00025', 149, '2019-08-09', '04:11:17'),
(31, '00026', 125, '2019-08-09', '06:55:46'),
(32, '00027', 199, '2019-08-09', '07:02:52'),
(33, '00028', 199, '2019-08-09', '07:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_details`
--

CREATE TABLE `tbl_shipping_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_no` longtext COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_shipping_details`
--

INSERT INTO `tbl_shipping_details` (`id`, `order_no`, `first_name`, `last_name`, `email`, `phone_no`, `country`, `city`, `area`, `address`, `order_date`, `order_time`) VALUES
(6, '00001', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar', '2019-04-25', '11:52:22'),
(7, '00002', 'Muneer', 'Ahmed', 'munirahmad112@gmail.com', '03362642935', 'PK', '1', '280', 'House No#10, Model Town', '2019-04-25', '12:01:19'),
(8, '00001', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar', '2019-04-30', '12:42:13'),
(9, '00002', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar', '2019-04-30', '12:56:31'),
(10, '00003', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar', '2019-05-08', '03:34:09'),
(11, '00004', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar', '2019-05-08', '03:35:13'),
(12, '00005', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '1', '16', 'Saddar', '2019-05-08', '03:36:57'),
(13, '00006', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '539', 'Saddar  123', '2019-05-14', '01:52:08'),
(14, '00007', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '549', 'Saddar  123', '2019-05-15', '01:11:15'),
(15, '00008', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '601', 'Saddar  123', '2019-07-04', '11:29:50'),
(16, '00009', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '2', '534', 'Asd', '2019-07-06', '03:42:02'),
(17, '00010', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '140', '118d block faisal town', '2019-07-07', '12:06:56'),
(18, '00011', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '52', 'Ajdh', '2019-07-12', '12:28:42'),
(19, '00012', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '140', 'sasdas', '2019-08-07', '01:11:55'),
(20, '00013', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '140', 'asdasd', '2019-08-07', '01:12:38'),
(21, '00014', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '140', 'asdasd', '2019-08-07', '01:12:51'),
(22, '00015', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '140', 'asdasd', '2019-08-07', '01:12:55'),
(23, '00016', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-07', '07:29:09'),
(24, '00017', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-07', '07:32:49'),
(25, '00018', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-07', '07:35:38'),
(26, '00019', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-07', '07:45:42'),
(27, '00020', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-07', '07:50:55'),
(28, '00021', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '3', 'test order', '2019-08-08', '04:43:07'),
(29, '00022', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-08', '07:17:59'),
(30, '00023', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-09', '03:43:22'),
(31, '00024', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '534', 'Saddar  123', '2019-08-09', '03:48:20'),
(32, '00025', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '535', 'Saddar  123', '2019-08-09', '04:11:17'),
(33, '00026', 'Crazy', 'Mart', 'crazymart17@gmail.com', '03225739999', 'PK', '1', '11', 'tst', '2019-08-09', '06:55:46'),
(34, '00027', 'Shahzaib', 'Imran', 'sabeehsultan@gmail.com', '03362642935', 'PK', '2', '536', 'Saddar  123', '2019-08-09', '07:02:52'),
(35, '00028', 'Shahzaib', 'Imran', 'Shahzaiibimran@gmail.com', '03362642935', 'PK', '2', '549', 'Saddar  123', '2019-08-09', '07:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_images`
--

CREATE TABLE `tbl_site_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `header_image` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_image` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon_image` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_site_images`
--

INSERT INTO `tbl_site_images` (`id`, `ip_address`, `admin_id`, `header_image`, `footer_image`, `favicon_image`, `created_date`, `created_time`) VALUES
(1, '::1', 1, '5c6564127301a.png', 'sdasdasdas.png', '5c6564127301a.png', '2019-03-05', '13:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_settings`
--

CREATE TABLE `tbl_site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone_1` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_site_settings`
--

INSERT INTO `tbl_site_settings` (`id`, `ip_address`, `admin_id`, `title`, `address`, `country_id`, `city_id`, `zip_code`, `phone_1`, `phone_2`, `email_1`, `email_2`, `created_date`, `created_time`) VALUES
(1, '103.255.5.79', 1, 'Shopker', 'Gold Center, Liberty Market, Gulberg III, Lahore, Pakistan', 'PK', '2', 74200, '+923004128681', NULL, 'info@shopker.pk', NULL, '2019-08-08', '05:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_shipping_charges`
--

CREATE TABLE `tbl_site_shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `per_kg_0` int(11) DEFAULT NULL,
  `half_kg_0` int(11) DEFAULT NULL,
  `per_kg_1` int(11) DEFAULT NULL,
  `half_kg_1` int(11) DEFAULT NULL,
  `additional_per_kg_0` int(11) DEFAULT NULL,
  `additional_per_kg_1` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_site_shipping_charges`
--

INSERT INTO `tbl_site_shipping_charges` (`id`, `ip_address`, `admin_id`, `per_kg_0`, `half_kg_0`, `per_kg_1`, `half_kg_1`, `additional_per_kg_0`, `additional_per_kg_1`, `created_date`, `created_time`) VALUES
(1, '103.255.5.79', 1, 149, 125, 199, 149, 125, 175, '2019-08-08', '05:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_shipping_settings`
--

CREATE TABLE `tbl_site_shipping_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `shipping_mood` int(11) DEFAULT NULL,
  `international_shipping_mood` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_site_shipping_settings`
--

INSERT INTO `tbl_site_shipping_settings` (`id`, `ip_address`, `admin_id`, `shipping_mood`, `international_shipping_mood`, `created_date`, `created_time`) VALUES
(1, '103.255.5.79', 1, 0, 0, '2019-08-08', '05:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_social_links`
--

CREATE TABLE `tbl_site_social_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleplus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_site_social_links`
--

INSERT INTO `tbl_site_social_links` (`id`, `ip_address`, `admin_id`, `facebook`, `twitter`, `googleplus`, `created_date`, `created_time`) VALUES
(1, '103.255.5.79', 1, 'https://web.facebook.com/shopker.pk/?_rdc=1&_rdr', NULL, NULL, '2019-08-08', '05:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_tax_settings`
--

CREATE TABLE `tbl_site_tax_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `tax_mood` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_site_tax_settings`
--

INSERT INTO `tbl_site_tax_settings` (`id`, `ip_address`, `admin_id`, `tax_mood`, `created_date`, `created_time`) VALUES
(1, '103.255.5.79', 1, 0, '2019-08-08', '05:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stores_bank_details`
--

CREATE TABLE `tbl_stores_bank_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_stores_bank_details`
--

INSERT INTO `tbl_stores_bank_details` (`id`, `ip_address`, `store_id`, `name`, `title`, `account_no`, `branch_code`, `created_date`, `created_time`) VALUES
(1, '103.217.178.39', 1, 'Askari', 'Ahmed', '1000000000001', '10001', '2019-07-10', '11:32:11'),
(2, '::1', 2, 'Meezan Bank', 'Nouman Naseem', '123456789', '006', '2019-04-09', '02:43:50'),
(3, '103.217.178.17', 3, 'dasd', 'asd', '78845615', '546456', '2019-07-08', '03:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_images`
--

CREATE TABLE `tbl_store_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_store_images`
--

INSERT INTO `tbl_store_images` (`id`, `ip_address`, `store_id`, `logo`, `banner`, `cheque`, `created_date`, `created_time`) VALUES
(1, '::1', 1, '5cefb73a97ce2.png', '5cefb73a984b2.jpeg', '5cacafa6a34a2.jpeg', '2019-05-30', '03:58:02'),
(2, '::1', 2, 'sdasdasdas.png', '5cac3e6b6d28b.jpeg', '5cacafa6a34a2.jpeg', '2019-04-09', '02:43:50'),
(3, '103.217.178.17', 3, NULL, NULL, '5d231f50a7242.jpeg', '2019-07-08', '03:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_settings`
--

CREATE TABLE `tbl_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `bussiness_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_email` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_phone_no` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_cell_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ntn_no` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_store_settings`
--

INSERT INTO `tbl_store_settings` (`id`, `ip_address`, `vendor_id`, `bussiness_name`, `store_name`, `store_slug`, `store_email`, `store_phone_no`, `store_cell_no`, `store_address`, `warehouse_address`, `cnic`, `ntn_no`, `country_id`, `city_id`, `created_date`, `created_time`) VALUES
(1, '103.217.178.39', 2, 'Rabi Collection\'s', 'Rabi Collection\'s', 'rabi-collections', 'rabi_collections@gmail.com', '+923225739999', '+923225739998', 'Garden Town, Lahore', 'Iqbal Town, Lahore', '0123456789123', '12345678', 'PK', '2', '2019-07-10', '11:32:11'),
(2, '::1', 10, 'Crazy Mart(Lahore)', 'Crazy Mart(Lahore)', 'crazy-mart-Lahore', 'crazymart17@gmail.com', '03330428517', '03330428517', 'Lahore', 'Lahore', '1234567891234', '123456789', 'PK', '2', '2019-04-09', '02:43:50'),
(3, '103.255.5.74', 17, 'Shopker', 'Shopker', 'shopker', 'shopker18@gmail.com', '03104041455', '03104041455', '03104041455', 'lahore', '8765678764324', '78654367', 'PK', '1', '2019-07-08', '03:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_child_categories`
--

CREATE TABLE `tbl_sub_child_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sub_child_categories`
--

INSERT INTO `tbl_sub_child_categories` (`id`, `ip_address`, `user_id`, `parent_id`, `child_id`, `featured_image`, `name`, `slug`, `meta_keywords`, `meta_description`, `status`, `created_date`, `created_time`) VALUES
(5, '103.255.5.30', 1, 15, 11, NULL, 'Laptops & Notebooks', 'laptops-&-notebooks', 'Laptops & Notebooks', 'Laptops & Notebooks', 0, '2019-02-05', '14:49:31'),
(6, '103.255.5.30', 1, 15, 11, NULL, 'Gaming Laptops', 'gaming-laptops', 'Gaming Laptops', 'Gaming Laptops', 0, '2019-02-05', '14:49:55'),
(7, '103.255.5.30', 1, 15, 11, NULL, 'Macbooks', 'macbooks', 'Macbooks', 'Macbooks', 0, '2019-02-05', '14:50:18'),
(8, '202.163.108.201', 1, 15, 12, NULL, 'All-In-One- Computer', 'all-in-one-computer', 'All-In-One Computer', 'All-In-One Computewr', 0, '2019-02-05', '21:06:48'),
(9, '103.255.5.30', 1, 15, 12, NULL, 'Gaming Desktop Computer', 'gaming-desktop-computer', 'Gaming Desktop Computer', 'Gaming Desktop Computer', 0, '2019-02-05', '21:08:00'),
(10, '182.185.178.120', 1, 19, 37, NULL, 'Body & Massage Oils', 'body-&-massage-oils', 'Body & Massage Oils', 'Body & Massage Oils', 0, '2019-02-05', '23:50:16'),
(11, '182.185.178.120', 1, 19, 37, NULL, 'Body Soaps & Shower Gels', 'Body Soaps & Shower Gels', 'Body Soaps & Shower Gels', 'Body Soaps & Shower Gels', 0, '2019-02-05', '23:50:52'),
(12, '182.185.178.120', 1, 19, 37, NULL, 'Foot Care Products', 'foot-care-products', 'Foot Care Products', 'Foot Care Products', 0, '2019-02-05', '23:51:22'),
(13, '182.185.178.120', 1, 19, 37, NULL, 'Hair Removal', 'hair-removal', 'Hair Removal', 'Hair Removal', 0, '2019-02-05', '23:53:04'),
(14, '182.185.178.120', 1, 19, 37, NULL, 'Hand Care', 'hand-care', 'Hand Care', 'Hand Care', 0, '2019-02-05', '23:53:37'),
(15, '182.185.178.120', 1, 19, 38, NULL, 'Curl Iron', 'curl-iron', 'Curl Iron', 'Curl Iron', 0, '2019-02-05', '23:57:10'),
(16, '182.185.178.120', 1, 19, 38, NULL, 'Flat Irons', 'flat-irons', 'Flat Irons', 'Flat Irons', 0, '2019-02-05', '23:57:35'),
(17, '182.185.178.120', 1, 19, 38, NULL, 'Multi Stylers', 'multi-stylers', 'Multi Stylers', 'Multi Stylers', 0, '2019-02-05', '23:58:09'),
(18, '182.185.178.120', 1, 19, 38, NULL, 'Hair Dryers', 'hair-dryers', 'Hair Dryers', 'Hair Dryers', 0, '2019-02-05', '23:58:47'),
(19, '182.185.178.120', 1, 19, 38, NULL, 'Hair Removal Devices', 'hair-removal-devices', 'Hair Removal Devices', 'Hair Removal Devices', 0, '2019-02-05', '23:59:23'),
(20, '182.185.178.120', 1, 19, 39, NULL, 'Women Fragrances', 'women-fragrances', 'Women Fragrances', 'Women Fragrances', 0, '2019-02-06', '00:00:14'),
(21, '182.185.178.120', 1, 19, 39, NULL, 'Men Fragrances', 'men-fragrances', 'Women Fragrances', 'Women Fragrances', 0, '2019-02-06', '00:00:38'),
(22, '182.185.178.120', 1, 19, 39, NULL, 'Kids Fragrances', 'kids-fragrances', 'Kids Fragrances', 'Kids Fragrances', 0, '2019-02-06', '00:01:09'),
(23, '182.185.178.120', 1, 19, 40, NULL, 'Shampoo', 'shampoo', 'Shampoo', 'Shampoo', 0, '2019-02-06', '00:03:15'),
(24, '182.185.178.120', 1, 19, 40, NULL, 'Hair Treatment', 'hair-treatment', 'Hair Treatment', 'Hair Treatment', 0, '2019-02-06', '00:03:46'),
(25, '182.185.178.120', 1, 19, 40, NULL, 'Hair Accessories', 'hair-accessories', 'Hair Accessories', 'Hair Accessories', 0, '2019-02-06', '00:04:18'),
(26, '182.185.178.120', 1, 19, 40, NULL, 'Hair Brushes & Combs', 'hair-brushes-&-combs', 'Hair Brushes & Combs', 'Hair Brushes & Combs', 0, '2019-02-06', '00:06:13'),
(27, '182.185.178.120', 1, 19, 40, NULL, 'Hair Colors', 'hair-colors', 'Hair Colors', 'Hair Colors', 0, '2019-02-06', '00:07:12'),
(28, '182.185.178.120', 1, 19, 40, NULL, 'Hair Conditioners', 'hair-conditioners', 'Hair Conditioners', 'Hair Conditioners', 0, '2019-02-06', '00:07:41'),
(29, '182.185.178.120', 1, 19, 40, NULL, 'Hair Styling', 'Hair Styling', 'Hair Styling', 'Hair Styling', 0, '2019-02-06', '00:08:00'),
(30, '182.185.178.120', 1, 19, 40, NULL, 'Hair Extensions, Wigs, Pads', 'hair-extensions,-wigs,-pads', 'Hair Extensions, Wigs, Pads', 'Hair Extensions, Wigs, Pads', 0, '2019-02-06', '00:08:58'),
(31, '182.185.178.120', 1, 19, 46, NULL, 'First Aid Products', 'first-aid-products', 'First Aid Products', 'First Aid Products', 0, '2019-02-06', '00:10:07'),
(32, '182.185.178.120', 1, 19, 46, NULL, 'Monitors & Tests', 'monitors-&-tests', 'Monitors & Tests', 'Monitors & Tests', 0, '2019-02-06', '00:12:13'),
(33, '182.185.178.120', 1, 19, 47, NULL, 'OTC Medicine', 'otc-medicine', 'Over The Counter Medicine', 'Over The Counter Medicine', 0, '2019-02-06', '00:13:39'),
(34, '182.185.178.120', 1, 19, 47, NULL, 'Surgical Equipments', 'surgical-equipments', 'Surgical Equipments', 'Surgical Equipments', 0, '2019-02-06', '00:14:06'),
(35, '182.185.178.120', 1, 19, 45, NULL, 'Food Supplements', 'food-supplements', 'Food Supplements', 'Food Supplements', 0, '2019-02-06', '00:15:08'),
(36, '182.185.178.120', 1, 19, 45, NULL, 'Beauty Supplements', 'beauty-supplements', 'Beauty Supplements', 'Beauty Supplements', 0, '2019-02-06', '00:16:17'),
(37, '182.185.178.120', 1, 19, 45, NULL, 'Multivitamins', 'multivitamins', 'Multivitamins', 'Multivitamins', 0, '2019-02-06', '00:16:49'),
(38, '182.185.178.120', 1, 19, 45, NULL, 'Well Being Products', 'well-being-products', 'Well Being Products', 'Well Being Products', 0, '2019-02-06', '00:17:39'),
(39, '182.185.178.120', 1, 19, 45, NULL, 'Weight Loss', 'weight-loss', 'Weight Loss', 'Weight Loss', 0, '2019-02-06', '00:18:11'),
(40, '182.185.178.120', 1, 19, 44, NULL, 'Serum & Essence', 'serum-&-essence', 'Serum & Essence', 'Serum & Essence', 0, '2019-02-06', '00:19:09'),
(41, '182.185.178.120', 1, 19, 44, NULL, 'Dermacare Products', 'dermacare-products', 'Dermacare Products', 'Dermacare Products', 0, '2019-02-06', '00:20:08'),
(42, '182.185.178.120', 1, 19, 44, NULL, 'Face Scrubs', 'face-scrubs', 'Face Scrubs', 'Face Scrubs', 0, '2019-02-06', '00:20:40'),
(43, '182.185.178.120', 1, 19, 44, NULL, 'Facial Cleansers', 'facial-cleansers', 'Facial Cleansers', 'Facial Cleansers', 0, '2019-02-06', '00:21:24'),
(44, '182.185.178.120', 1, 19, 44, NULL, 'Sunblocks', 'Sunblocks', 'Sunblocks', 'Sunblocks', 0, '2019-02-06', '00:23:21'),
(45, '103.255.5.104', 1, 19, 43, NULL, 'Oracle Care Products', 'oracle-care-products', 'Oracle Care Products', 'Oracle Care Products', 0, '2019-02-06', '00:25:17'),
(46, '103.255.5.104', 1, 19, 43, NULL, 'Sexual Wellness', 'sexual-wellness', 'Sexual Wellness', 'Sexual Wellness', 0, '2019-02-06', '00:26:12'),
(47, '103.255.5.104', 1, 19, 42, NULL, 'Bath & Body', 'bath-&-body', 'Bath & Body', 'Bath & Body', 0, '2019-02-06', '00:27:22'),
(48, '103.255.5.104', 1, 19, 42, NULL, 'Hair Care Products', 'hair-care-products', 'Hair Care Products', 'Hair Care Products', 0, '2019-02-06', '00:27:58'),
(49, '103.255.5.104', 1, 19, 42, NULL, 'Shavers', 'shavers', 'Shavers', 'Shavers', 0, '2019-02-06', '00:29:45'),
(50, '103.255.5.104', 1, 19, 41, NULL, 'Makeup Foundation', 'makeup-foundation', 'Makeup Foundation', 'Makeup Foundation', 0, '2019-02-06', '00:30:42'),
(51, '103.255.5.104', 1, 19, 41, NULL, 'Lips Care', 'lips-care', 'Lips Care', 'Lips Care', 0, '2019-02-06', '00:31:09'),
(52, '103.255.5.104', 1, 19, 41, NULL, 'Eyes', 'eyes', 'Eyes', 'Eyes', 0, '2019-02-06', '00:31:40'),
(53, '103.255.5.104', 1, 19, 41, NULL, 'Nails', 'nails', 'Nails', 'Nails', 0, '2019-02-06', '00:32:36'),
(54, '103.255.5.104', 1, 19, 41, NULL, 'Makeup Brushes', 'makeup-brushes', 'Makeup Brushes', 'Makeup Brushes', 0, '2019-02-06', '00:34:18'),
(55, '103.255.5.104', 1, 19, 41, NULL, 'Makeup Accessories', 'makeup-accessories', 'Makeup Accessories', 'Makeup Accessories', 0, '2019-02-06', '00:34:50'),
(56, '103.255.5.104', 1, 19, 41, NULL, 'Makeup Removers', 'makeup-removers', 'Makeup Removers', 'Makeup Removers', 0, '2019-02-06', '00:35:45'),
(57, '103.255.5.104', 1, 16, 17, NULL, 'General Accessories', 'general-accessories', 'General Accessories', 'General Accessories', 0, '2019-02-06', '00:49:21'),
(58, '103.255.5.104', 1, 16, 22, NULL, 'Computer Accessories', 'computer-accessories', 'Computer Accessories', 'Computer Accessories', 0, '2019-02-06', '00:50:03'),
(59, '103.255.5.73', 1, 29, 48, '1554891192.jpeg', 'Salon Deals', 'salon-deals', 'Salon Deals', 'Salon Deals', 0, '2019-04-10', '15:16:26'),
(60, '103.255.5.73', 1, 29, 49, NULL, 'Restaurant Deals', 'restaurant-deals', 'Restaurant Deals', 'Restaurant Deals', 0, '2019-04-10', '15:15:33'),
(61, '103.255.5.73', 1, 15, 9, NULL, 'Apple Iphone', 'apple-iphone', 'Iphone, iphone5, iphone6, iphone7plus, iphone7plus, iphone8, iphone8plus, iphone8, iphone x, iphone xmax, iphone r, iphone, xs', 'Iphone,Iphone, iphone5, iphone6, iphone7plus, iphone7plus, iphone8, iphone8plus, iphone8, iphone x, iphone xmax, iphone r, iphone, xs', 0, '2019-04-10', '15:20:53'),
(62, '103.255.5.73', 1, 15, 9, NULL, 'Samsung', 'samsung', 'Samsung, Samsung s series, Samsung note series, Samsung a series, Samsung jseries, Samsung eseries', 'Samsung, Samsung, Samsung s series, Samsung note series, Samsung a series, Samsung jseries, Samsung eseries', 0, '2019-04-10', '15:22:09'),
(63, '103.255.5.73', 1, 15, 9, NULL, 'Oppo', 'oppo', 'Oppo,', 'Oppo mobile phone, f7, f9', 0, '2019-04-10', '15:22:39'),
(64, '103.255.5.73', 1, 15, 9, NULL, 'Motorola', 'motorola', 'Motorola', 'Motorola', 0, '2019-04-10', '15:22:57'),
(65, '103.255.5.73', 1, 15, 10, NULL, 'Apple Ipad', 'apple-ipad', 'Apple Ipad, ipad mini, ipad air, ipad, ipad pro', 'Apple Ipad, Apple Ipad, ipad mini, ipad air, ipad, ipad pro', 0, '2019-04-10', '15:23:50'),
(66, '103.255.5.73', 1, 15, 10, NULL, 'Samsung Tabs', 'samsung-tabs', 'Samsung, samsung tab, tabs, tab e, tab a', 'Samsung, samsung tab, tabs, tab e, tab a', 0, '2019-04-10', '15:29:08'),
(67, '103.255.5.73', 1, 15, 13, NULL, 'PlayStation  Consoles', 'playstation--consoles', 'PlayStation  Consoles', 'PlayStation  Consoles', 0, '2019-04-10', '15:34:40'),
(68, '103.255.5.73', 1, 15, 13, NULL, 'PlayStation Games', 'playstation-games', 'PlayStation Games', 'PlayStation Games', 0, '2019-04-10', '15:36:28'),
(69, '103.255.5.73', 1, 15, 13, NULL, 'PlayStation Controllers', 'playstation-controllers', 'PlayStation Controllers', 'PlayStation Controllers', 0, '2019-04-10', '15:37:35'),
(70, '103.255.5.73', 1, 15, 13, NULL, 'Xbox Games', 'xbox-games', 'Xbox Games', 'Xbox Games', 0, '2019-04-10', '15:38:00'),
(71, '103.255.5.73', 1, 15, 14, NULL, 'Sports Action Cameras', 'sports-action-cameras', 'Sports Action Cameras', 'Sports Action Cameras', 0, '2019-04-10', '15:39:05'),
(72, '103.255.5.73', 1, 15, 14, NULL, 'Video Cameras', 'video-cameras', 'Video Cameras', 'Video Cameras', 0, '2019-04-10', '15:39:31'),
(73, '103.255.5.73', 1, 15, 15, NULL, 'IP Security Cameras', 'ip-security-cameras', 'IP Security Cameras', 'IP Security Cameras', 0, '2019-04-10', '15:39:54'),
(74, '103.255.5.73', 1, 15, 15, NULL, 'Surveillance Cameras', 'surveillance-cameras', 'Surveillance Cameras', 'Surveillance Cameras', 0, '2019-04-10', '15:40:32'),
(75, '103.255.5.73', 1, 15, 16, NULL, 'DSLR Cameras', 'dslr-cameras', 'DSLR Cameras', 'DSLR Cameras', 0, '2019-04-10', '15:41:50'),
(76, '103.255.5.73', 1, 15, 16, NULL, 'Still Cameras', 'still-cameras', 'Still Cameras', 'Still Cameras', 0, '2019-04-10', '15:42:17'),
(77, '103.255.5.73', 1, 16, 17, NULL, 'Mobile Phone Covers', 'mobile-phone-covers', 'Mobile Phone Covers', 'Mobile Phone Covers', 0, '2019-04-10', '15:44:53'),
(78, '103.255.5.73', 1, 16, 17, NULL, 'Power Banks', 'power-banks', 'Power Banks', 'Power Banks', 0, '2019-04-10', '15:45:16'),
(79, '103.255.5.73', 1, 16, 17, NULL, 'Cables & Converters', 'cables-&-converters', 'Cables & Converters', 'Cables & Converters', 0, '2019-04-10', '15:45:42'),
(80, '103.255.5.73', 1, 16, 17, NULL, 'Electronic Accessories', 'electronic-accessories', 'Mobile Chargers', 'Mobile Chargers', 0, '2019-04-10', '15:46:08'),
(81, '103.255.5.73', 1, 16, 17, NULL, 'Wireless Mobile Chargers', 'wireless-mobile-chargers', 'Wireless Mobile Chargers', 'Wireless Mobile Chargers', 0, '2019-04-10', '15:46:32'),
(82, '103.255.4.60', 1, 16, 17, NULL, 'Tablet Accessories', 'tablet-accessories', 'Tablet Accessories', 'Tablet Accessories', 0, '2019-04-16', '18:04:23'),
(83, '103.255.5.73', 1, 16, 18, NULL, 'Headphone & Headsets', 'headphone-&-headsets', 'Headphone & Headsets', 'Headphone & Headsets', 0, '2019-04-10', '15:47:39'),
(84, '103.255.5.73', 1, 16, 18, NULL, 'Home Entertainment', 'home-entertainment', 'Home Entertainment', 'Home Entertainment', 0, '2019-04-10', '15:47:57'),
(85, '103.255.5.73', 1, 16, 0, NULL, 'Portable Music Players', 'portable-music-players', 'Portable Music Players', 'Portable Music Players', 0, '2019-04-10', '15:48:45'),
(86, '103.255.5.73', 1, 16, 19, NULL, 'Smart Watches', 'smart-watches', 'Smart Watches', 'Smart Watches', 0, '2019-04-10', '15:52:38'),
(87, '103.255.5.73', 1, 16, 19, NULL, 'Fitness Tracker', 'fitness-tracker', 'Fitness Tracker', 'Fitness Tracker', 0, '2019-04-10', '15:55:05'),
(88, '103.255.5.73', 1, 16, 19, NULL, 'VR(Virtual Reality)', 'vr(virtual-reality)', 'VR(Virtual Reality)', 'VR(Virtual Reality)', 0, '2019-04-10', '15:55:34'),
(89, '103.255.5.73', 1, 16, 20, NULL, 'PlayStation Controller', 'playstation-controller', 'PlayStation Controller', 'PlayStation Controller', 0, '2019-04-10', '15:56:49'),
(90, '103.255.5.73', 1, 16, 20, NULL, 'PUBG Controller', 'pubg-controller', 'PUBG Controller', 'PUBG Controller', 0, '2019-04-10', '15:57:10'),
(91, '103.255.5.73', 1, 16, 21, NULL, 'Memory Cards', 'memory-cards', 'Memory Cards', 'Memory Cards', 0, '2019-04-10', '15:57:38'),
(92, '103.255.5.73', 1, 16, 21, NULL, 'Lenses', 'lenses', 'Lenses', 'Lenses', 0, '2019-04-10', '15:58:00'),
(93, '103.255.5.73', 1, 16, 21, NULL, 'Lenses Covers', 'lenses-covers', 'Lenses Covers', 'Lenses Covers', 0, '2019-04-10', '15:58:20'),
(94, '103.255.5.73', 1, 16, 21, NULL, 'Tripods & Monopods', 'tripods-&-monopods', 'Tripods & Monopods', 'Tripods & Monopods', 0, '2019-04-10', '15:58:43'),
(95, '103.255.5.73', 1, 16, 21, NULL, 'Action Cameras Accessories', 'action-cameras-accessories', 'Action Cameras Accessories', 'Action Cameras Accessories', 0, '2019-04-10', '15:59:06'),
(96, '103.255.5.73', 1, 16, 21, NULL, 'Camera Batteries', 'camera-batteries', 'Camera Batteries', 'Camera Batteries', 0, '2019-04-10', '15:59:33'),
(97, '103.255.5.73', 1, 16, 21, NULL, 'Studio Equipments', 'studio-equipments', 'Studio Equipments', 'Studio Equipments', 0, '2019-04-10', '16:00:03'),
(98, '103.255.5.73', 1, 16, 22, NULL, 'Monitors', 'monitors', 'Monitors', 'Monitors', 0, '2019-04-10', '16:00:46'),
(99, '103.255.5.73', 1, 16, 22, NULL, 'Microphones', 'microphones', 'Microphones', 'Microphones', 0, '2019-04-10', '16:01:03'),
(100, '103.255.4.60', 1, 16, 22, NULL, 'Adapter  & Cables', 'adapter--&-cables', 'Adapter  & Cables', 'Adapter  & Cables', 0, '2019-04-16', '18:05:18'),
(101, '103.255.5.73', 1, 16, 22, NULL, 'Keyboards', 'keyboards', 'Keyboards', 'Keyboards', 0, '2019-04-10', '16:01:36'),
(102, '103.255.5.73', 1, 16, 22, NULL, 'Computer Mouse', 'computer-mouse', 'Computer Mouse', 'Computer Mouse', 0, '2019-04-10', '16:02:35'),
(103, '103.255.5.73', 1, 16, 23, NULL, 'Storage For Apple Mac', 'storage-for-apple-mac', 'Storage For Apple Mac', 'Storage For Apple Mac', 0, '2019-04-10', '16:04:11'),
(104, '103.255.5.73', 1, 16, 23, NULL, 'Flash/USB Drives', 'flash/usb-drives', 'Flash/USB Drives', 'Flash/USB Drives', 0, '2019-04-10', '16:04:41'),
(105, '103.255.5.73', 1, 16, 23, NULL, 'OTG Drives', 'otg-drives', 'OTG Drives OTG Drives', 'OTG Drives', 0, '2019-04-10', '16:05:01'),
(106, '103.255.5.73', 1, 16, 23, NULL, 'Internal Hard Drives', 'internal-hard-drives', 'Internal Hard Drives', 'Internal Hard Drives', 0, '2019-04-10', '16:05:29'),
(107, '103.255.5.73', 1, 16, 23, NULL, 'External Hard Drive', 'external-hard-drive', 'External Hard Drive', 'External Hard Drive', 0, '2019-04-10', '16:05:57'),
(108, '103.255.5.73', 1, 16, 24, NULL, 'Printers', 'printers', 'Printers', 'Printers', 0, '2019-04-10', '16:06:33'),
(109, '103.255.4.60', 1, 16, 24, NULL, 'Ink & Toners Refill', 'ink-&-toners-refill', 'Ink & Toners Refill', 'Ink & Toners Refill', 0, '2019-04-16', '18:16:54'),
(110, '103.255.5.73', 1, 16, 25, NULL, 'Graphic Cards', 'graphic-cards', 'Graphic Cards', 'Graphic Cards', 0, '2019-04-10', '16:08:08'),
(111, '103.255.5.73', 1, 16, 25, NULL, 'Desktop Skins', 'desktop-skins', 'Desktop Skins', 'Desktop Skins', 0, '2019-04-10', '16:09:06'),
(112, '103.255.5.73', 1, 16, 25, NULL, 'Motherboards', 'motherboards', 'Motherboards', 'Motherboards', 0, '2019-04-10', '16:09:25'),
(113, '103.255.5.73', 1, 16, 25, NULL, 'Fans & Heat Sinkers', 'fans-&-heat-sinkers', 'Fans & Heat Sinkers', 'Fans & Heat Sinkers', 0, '2019-04-10', '16:10:24'),
(114, '103.255.5.73', 1, 16, 25, NULL, 'RAM', 'ram', 'RAM', 'RAM', 0, '2019-04-10', '16:10:57'),
(115, '103.255.5.73', 1, 18, 35, NULL, 'DVD Players', 'dvd-players', 'DVD Players', 'DVD Players', 0, '2019-04-10', '16:39:24'),
(116, '103.255.5.73', 1, 18, 35, NULL, 'LED TV', 'led-tv', 'LED TV', 'LED TV', 0, '2019-04-10', '16:39:12'),
(117, '103.255.5.73', 1, 18, 35, NULL, 'Smart TV', 'smart-tv', 'Smart TV', 'Smart TV', 0, '2019-04-10', '16:23:24'),
(118, '103.255.5.73', 1, 18, 34, NULL, 'Home Entertainment System', 'home-entertainment-system', 'Home Entertainment System', 'Home Entertainment System', 0, '2019-04-10', '16:40:57'),
(119, '103.255.5.73', 1, 18, 34, NULL, 'Portable Players', 'portable-players', 'Portable Players', 'Portable Players', 0, '2019-04-10', '16:41:43'),
(120, '103.255.5.73', 1, 18, 34, NULL, 'Woofer Speakers', 'woofer-speakers', 'Woofer Speakers', 'Woofer Speakers', 0, '2019-04-10', '16:42:46'),
(121, '103.255.5.73', 1, 18, 33, NULL, 'TV Receiver', 'tv-receiver', 'TV Receiver', 'TV Receiver', 0, '2019-04-10', '16:55:59'),
(122, '103.255.5.73', 1, 18, 33, NULL, 'Wall Mounts & projectors', 'wall-mounts-&-projectors', 'Wall Mounts & projectors', 'Wall Mounts & projectors', 0, '2019-04-10', '16:56:27'),
(123, '103.255.5.73', 1, 17, 32, NULL, 'Washing Machine', 'washing-machine', 'Washing Machine', 'Washing Machine', 0, '2019-04-10', '16:58:56'),
(124, '103.255.5.73', 1, 17, 32, NULL, 'Refrigerator', 'refrigerator', 'Refrigerator', 'Refrigerator', 0, '2019-04-10', '16:59:25'),
(125, '103.255.5.73', 1, 17, 32, NULL, 'Microwave Oven', 'microwave-oven', 'Microwave Oven', 'Microwave Oven', 0, '2019-04-10', '17:00:09'),
(126, '103.255.5.73', 1, 17, 32, NULL, 'Freezer', 'freezer', 'Freezer', 'Freezer', 0, '2019-04-10', '17:00:33'),
(127, '103.255.5.73', 1, 17, 32, NULL, 'Cooking Range', 'cooking-range', 'Cooking Range', 'Cooking Range', 0, '2019-04-10', '17:00:50'),
(128, '103.255.5.73', 1, 17, 32, NULL, 'Water Heater', 'water-heater', 'Water Heater', 'Water Heater', 0, '2019-04-10', '17:01:38'),
(129, '103.255.5.73', 1, 17, 32, NULL, 'Water Cooler', 'water-cooler', 'Water Cooler', 'Water Cooler', 0, '2019-04-10', '17:01:53'),
(130, '103.255.5.73', 1, 17, 31, NULL, 'Rice Cooker', 'rice-cooker', 'Rice Cooker', 'Rice Cooker', 0, '2019-04-10', '17:02:19'),
(131, '103.255.5.73', 1, 17, 31, NULL, 'Juicer, Blender, & Grinder', 'juicer,-blender,-&-grinder', 'Juicer, Blender, & Grinder', 'Juicer, Blender, & Grinder', 0, '2019-04-10', '17:03:13'),
(132, '103.255.5.73', 1, 17, 31, NULL, 'Frayer', 'frayer', 'Frayer', 'Frayer', 0, '2019-04-10', '17:04:16'),
(133, '103.255.5.73', 1, 17, 31, NULL, 'Water Purifier', 'water-purifier', 'Water Purifier', 'Water Purifier', 0, '2019-04-10', '17:04:47'),
(134, '103.255.5.73', 1, 17, 31, NULL, 'Pressure Cooker', 'pressure-cooker', 'Pressure Cooker', 'Pressure Cooker', 0, '2019-04-10', '17:05:20'),
(135, '103.255.5.73', 1, 17, 30, NULL, 'Split AC', 'split-ac', 'Split AC', 'Split AC', 0, '2019-04-10', '17:07:59'),
(136, '103.255.5.73', 1, 17, 30, NULL, 'Inverter AC', 'inverter-ac', 'Inverter AC', 'Inverter AC', 0, '2019-04-10', '17:08:16'),
(137, '103.255.5.73', 1, 17, 30, NULL, 'Window AC', 'window-ac', 'Window AC', 'Window AC', 0, '2019-04-10', '17:08:42'),
(138, '103.255.5.73', 1, 17, 30, NULL, 'Air Cooler', 'air-cooler', 'Air Cooler', 'Air Cooler', 0, '2019-04-10', '17:09:20'),
(139, '103.255.5.73', 1, 17, 30, NULL, 'Air Purifier', 'air-purifier', 'Air Purifier', 'Air Purifier', 0, '2019-04-10', '17:09:39'),
(140, '103.255.5.73', 1, 17, 30, NULL, 'Humidifier', 'humidifier', 'Humidifier', 'Humidifier', 0, '2019-04-10', '17:10:02'),
(141, '103.255.5.73', 1, 17, 29, NULL, 'Vacuum Cleaner', 'vacuum-cleaner', 'Vacuum Cleaner', 'Vacuum Cleaner', 0, '2019-04-10', '17:10:41'),
(142, '103.255.5.73', 1, 17, 29, NULL, 'Floor Polisher', 'floor-polisher', 'Floor Polisher', 'Floor Polisher', 0, '2019-04-10', '17:14:01'),
(143, '103.255.5.73', 1, 17, 28, NULL, 'Iron', 'iron', 'Iron', 'Iron', 0, '2019-04-10', '17:15:05'),
(144, '103.255.5.73', 1, 17, 28, NULL, 'Steam Iron', 'steam-iron', 'Steam Iron', 'Steam Iron', 0, '2019-04-10', '17:15:21'),
(145, '103.255.5.73', 1, 17, 28, NULL, 'Sewing Machine', 'sewing-machine', 'Sewing Machine', 'Sewing Machine', 0, '2019-04-10', '17:16:19'),
(146, '103.255.5.73', 1, 17, 27, NULL, 'Hair Dryers & Styling', 'hair-dryers-&-styling', 'Hair Dryers & Styling', 'Hair Dryers & Styling', 0, '2019-04-10', '17:17:11'),
(147, '103.255.5.73', 1, 17, 27, NULL, 'Grooming Appliances', 'grooming-appliances', 'Grooming Appliances', 'Grooming Appliances', 0, '2019-04-10', '17:17:37'),
(148, '103.255.5.73', 1, 20, 53, NULL, 'Baby Walkers', 'baby-walkers', 'Baby Walkers', 'Baby Walkers', 0, '2019-04-10', '18:09:05'),
(149, '103.255.5.73', 1, 20, 53, NULL, 'Backpack & Carries', 'backpack-&-carries', 'Backpack & Carries', 'Backpack & Carries', 0, '2019-04-10', '18:09:45'),
(150, '103.255.5.73', 1, 20, 53, NULL, 'Car Seats', 'car-seats', 'Car Seats', 'Car Seats', 0, '2019-04-10', '18:10:02'),
(151, '103.255.5.73', 1, 20, 53, NULL, 'Kids Bags', 'kids-bags', 'Kids Bags', 'Kids Bags', 0, '2019-04-10', '18:10:22'),
(152, '103.255.5.73', 1, 20, 53, NULL, 'Baby Strollers', 'baby-strollers', 'Strollers', 'Strollers', 0, '2019-04-10', '18:10:50'),
(153, '103.255.5.73', 1, 20, 53, NULL, 'Jumper, Bouncer, & Swing', 'jumper,-bouncer,-&-swing', 'Jumper, Bouncer, & Swing', 'Jumper, Bouncer, & Swing', 0, '2019-04-10', '18:11:25'),
(154, '103.255.5.73', 1, 20, 54, NULL, 'Baby Bath', 'baby-bath', 'Baby Bath', 'Baby Bath', 0, '2019-04-10', '18:12:27'),
(155, '103.255.5.73', 1, 20, 54, NULL, 'Bathing Tubs & Seats', 'bathing-tubs-&-seats', 'Bathing Tubs & Seats', 'Bathing Tubs & Seats', 0, '2019-04-10', '18:13:10'),
(156, '103.255.5.73', 1, 20, 54, NULL, 'Body Wash, Soaps & Cleaners', 'body-wash,-soaps-&-cleaners', 'Body Wash, Soaps & Cleaners', 'Body Wash, Soaps & Cleaners', 0, '2019-04-10', '18:13:38'),
(157, '103.255.5.73', 1, 20, 55, NULL, 'Girls Clothing', 'girls-clothing', 'Girls Clothing', 'Girls Clothing', 0, '2019-04-10', '18:14:15'),
(158, '103.255.5.73', 1, 20, 55, NULL, 'Girls Shoes', 'girls-shoes', 'Girls Shoes', 'Girls Shoes', 0, '2019-04-10', '18:14:46'),
(159, '103.255.5.73', 1, 20, 55, NULL, 'Boys Clothing', 'boys-clothing', 'Boys Clothing', 'Boys Clothing', 0, '2019-04-10', '18:15:28'),
(160, '103.255.5.73', 1, 20, 61, NULL, 'Dipers', 'dipers', 'Dipers', 'Dipers', 0, '2019-04-10', '18:19:13'),
(161, '103.255.5.73', 1, 21, 57, NULL, 'Wipes', 'wipes', 'Wipes', 'Wipes', 0, '2019-04-10', '18:17:30'),
(162, '103.255.5.73', 1, 20, 57, NULL, 'Potty Chair', 'potty-chair', 'Potty Chair', 'Potty Chair', 0, '2019-04-10', '18:22:50'),
(163, '103.255.5.73', 1, 20, 58, NULL, 'Baby & Toddlers Food', 'baby-&-toddlers-food', 'Baby & Toddlers Food', 'Baby & Toddlers Food', 0, '2019-04-10', '18:23:46'),
(164, '103.255.5.73', 1, 20, 58, NULL, 'Formula Milks', 'formula-milks', 'Formula Milks', 'Formula Milks', 0, '2019-04-10', '18:24:10'),
(165, '103.255.5.73', 1, 20, 58, NULL, 'Kids Utensils', 'kids-utensils', 'Kids Utensils', 'Kids Utensils', 0, '2019-04-10', '18:24:34'),
(166, '103.255.5.73', 1, 20, 59, NULL, 'Mattress & Bedding', 'mattress-&-bedding', 'Mattress & Bedding', 'Mattress & Bedding', 0, '2019-04-10', '18:25:42'),
(167, '103.255.5.73', 1, 20, 60, NULL, 'Activity Gym', 'activity-gym', 'Activity Gym', 'Activity Gym', 0, '2019-04-10', '18:26:32'),
(168, '103.255.5.73', 1, 20, 60, NULL, 'Skills & Learning Toys', 'skills-&-learning-toys', 'Skills & Learning Toys', 'Skills & Learning Toys', 0, '2019-04-10', '18:27:12'),
(169, '103.255.5.73', 1, 20, 60, NULL, 'Bath Toys', 'bath-toys', 'Bath Toys', 'Bath Toys', 0, '2019-04-10', '18:27:50'),
(170, '103.255.5.73', 1, 20, 60, NULL, 'Reading & Writing Toys', 'reading-&-writing-toys', 'Reading & Writing Toys', 'Reading & Writing Toys', 0, '2019-04-10', '18:28:39'),
(171, '103.255.5.73', 1, 20, 61, NULL, 'Remote Control Cars', 'remote-control-cars', 'Remote Control Cars', 'Remote Control Cars', 0, '2019-04-10', '18:29:16'),
(172, '103.255.5.73', 1, 20, 61, NULL, 'Drone & Accessories', 'drone-&-accessories', 'Drone & Accessories', 'Drone & Accessories', 0, '2019-04-10', '18:29:54'),
(173, '103.255.5.73', 1, 20, 61, NULL, 'Boucher', 'boucher', 'Boucher', 'Boucher', 0, '2019-04-10', '18:30:27'),
(174, '103.255.5.73', 1, 20, 61, NULL, 'Swimming Pools', 'swimming-pools', 'Swimming Pools', 'Swimming Pools', 0, '2019-04-10', '18:31:06'),
(175, '103.255.5.73', 1, 20, 61, NULL, 'Water Toys', 'water-toys', 'Water Toys', 'Water Toys', 0, '2019-04-10', '18:32:28'),
(176, '103.255.5.87', 1, 21, 64, NULL, 'Canned Food', 'canned-food', 'Canned Food', 'Canned Food', 0, '2019-04-11', '14:19:19'),
(177, '103.255.5.87', 1, 21, 62, NULL, 'Dairy & Frozen Items', 'dairy-&-frozen-items', 'Dairy & Frozen Items', 'Dairy & Frozen Items', 0, '2019-04-11', '14:19:56'),
(178, '103.255.4.60', 1, 21, 63, NULL, 'Pest Control', 'pest-control', 'Pest Control', 'Pest Control', 0, '2019-04-16', '18:13:42'),
(179, '103.255.5.87', 1, 21, 63, NULL, 'Detergents', 'detergents', 'Detergents', 'Detergents', 0, '2019-04-11', '14:20:43'),
(181, '103.255.5.87', 1, 21, 63, NULL, 'Dishwashing', 'dishwashing', 'Dishwashing', 'Dishwashing', 0, '2019-04-11', '14:21:23'),
(182, '103.255.5.87', 1, 21, 63, NULL, 'Laundry', 'laundry', 'Laundry', 'Laundry', 0, '2019-04-11', '14:21:39'),
(183, '103.255.5.87', 1, 21, 65, NULL, 'Pet Food', 'pet-food', 'Pet Food', 'Pet Food', 0, '2019-04-11', '14:23:15'),
(184, '103.255.5.87', 1, 21, 65, NULL, 'Pet Accessories', 'pet-accessories', 'Pet Accessories', 'Pet Accessories', 0, '2019-04-11', '14:23:45'),
(185, '103.255.5.87', 1, 22, 66, NULL, 'Shower Curtains', 'shower-curtains', 'Shower Curtains', 'Shower Curtains', 0, '2019-04-11', '14:28:56'),
(186, '103.255.5.87', 1, 22, 66, NULL, 'Bathroom Shelves', 'bathroom-shelves', 'Bathroom Shelves', 'Bathroom Shelves', 0, '2019-04-11', '14:29:44'),
(187, '103.255.5.87', 1, 22, 66, NULL, 'Bathrobes', 'bathrobes', 'Bathrobes Bathrobes', 'Bathrobes', 0, '2019-04-11', '14:30:06'),
(188, '103.255.5.87', 1, 22, 66, NULL, 'Bath Towels', 'bath-towels', 'Bath Towels', 'Bath Towels', 0, '2019-04-11', '14:30:24'),
(189, '103.255.5.87', 1, 22, 66, NULL, 'Bath Mats', 'bath-mats', 'Bath Mats', 'Bath Mats', 0, '2019-04-11', '14:30:43'),
(190, '103.255.5.87', 1, 22, 72, NULL, 'Bed Sheets', 'bed-sheets', 'Bed Sheets', 'Bed Sheets', 0, '2019-04-11', '14:31:47'),
(191, '103.255.5.87', 1, 22, 72, NULL, 'Pillows', 'pillows', 'Pillows', 'Pillows', 0, '2019-04-11', '14:32:04'),
(192, '103.255.5.87', 1, 22, 72, NULL, 'Bedding Accessories', 'bedding-accessories', 'Bedding Accessories', 'Bedding Accessories', 0, '2019-04-11', '14:32:29'),
(193, '103.255.5.87', 1, 22, 72, NULL, 'Blankets, Comforters, Quilts', 'blankets,-comforters,-quilts', 'Blankets, Comforters, Quilts', 'Blankets, Comforters, Quilts', 0, '2019-04-11', '14:33:17'),
(194, '103.255.5.87', 1, 22, 72, NULL, 'Mattress Protectors', 'mattress-protectors', 'Mattress Protectors', 'Mattress Protectors', 0, '2019-04-11', '14:33:48'),
(195, '103.255.5.87', 1, 22, 72, NULL, 'Pillow Case', 'pillow-case', 'Pillow Case', 'Pillow Case', 0, '2019-04-11', '14:34:10'),
(196, '103.255.5.87', 1, 22, 71, NULL, 'Bedroom', 'bedroom', 'Bedroom', 'Bedroom', 0, '2019-04-11', '14:35:35'),
(197, '103.255.5.87', 1, 22, 69, NULL, 'Ceiling Lights', 'ceiling-lights', 'Ceiling Lights', 'Ceiling Lights', 0, '2019-04-11', '14:55:48'),
(198, '103.255.5.87', 1, 22, 69, NULL, 'Floor Lamps', 'floor-lamps', 'Floor Lamps', 'Floor Lamps', 0, '2019-04-11', '14:56:10'),
(199, '103.255.5.87', 1, 22, 69, NULL, 'Laps', 'laps', 'Laps', 'Laps', 0, '2019-04-11', '14:56:38'),
(200, '103.255.5.87', 1, 22, 69, NULL, 'Light Bulbs', 'light-bulbs', 'Light Bulbs', 'Light Bulbs', 0, '2019-04-11', '14:57:13'),
(201, '103.255.5.87', 1, 22, 69, NULL, 'Lighting & Fixture Items', 'lighting-&-fixture-items', 'Lighting & Fixture Items', 'Lighting & Fixture Items', 0, '2019-04-11', '15:00:33'),
(202, '103.255.5.87', 1, 22, 69, NULL, 'Outdoor Lighting', 'outdoor-lighting', 'Outdoor Lighting', 'Outdoor Lighting', 0, '2019-04-11', '15:00:55'),
(203, '103.255.5.87', 1, 22, 69, NULL, 'Flashlights & Rechargeable Lights', 'flashlights-&-rechargeable-lights', 'Flashlights & Rechargeable Lights', 'Flashlights & Rechargeable Lights', 0, '2019-04-11', '15:01:29'),
(204, '103.255.5.87', 1, 22, 69, NULL, 'Table Laps', 'table-laps', 'Table Laps', 'Table Laps', 0, '2019-04-11', '15:02:27'),
(205, '103.255.5.87', 1, 22, 68, NULL, 'Power Tools', 'power-tools', 'Power Tools', 'Power Tools', 0, '2019-04-11', '15:03:04'),
(206, '103.255.5.87', 1, 22, 68, NULL, 'Lawn & Gardening', 'lawn-&-gardening', 'Lawn & Gardening', 'Lawn & Gardening', 0, '2019-04-11', '15:03:30'),
(207, '103.255.5.87', 1, 22, 68, NULL, 'Hand Tools', 'hand-tools', 'Hand ToolsHand Tools', 'Hand Tools', 0, '2019-04-11', '15:03:56'),
(208, '103.255.5.87', 1, 22, 68, NULL, 'Electrical', 'electrical', 'Electrical', 'Electrical', 0, '2019-04-11', '15:06:21'),
(209, '103.255.5.87', 1, 22, 67, NULL, 'School & Office Supplies', 'school-&-office-supplies', 'School & Office Supplies', 'School & Office Supplies', 0, '2019-04-11', '15:10:43'),
(210, '103.255.5.87', 1, 22, 67, NULL, 'Paper Products', 'paper-products', 'Paper Products', 'Paper Products', 0, '2019-04-11', '15:11:09'),
(211, '103.255.5.87', 1, 22, 67, NULL, 'Packing Materials', 'packing-materials', 'Packing Materials', 'Packing Materials', 0, '2019-04-11', '15:11:31'),
(212, '103.255.5.87', 1, 22, 67, NULL, 'Rapping & Gifting', 'rapping-&-gifting', 'Rapping & Gifting', 'Rapping & Gifting', 0, '2019-04-11', '15:12:01'),
(213, '103.255.5.87', 1, 22, 67, NULL, 'Art Supplies', 'art-supplies', 'Art Supplies', 'Art Supplies', 0, '2019-04-11', '15:12:17'),
(214, '103.255.5.87', 1, 22, 71, NULL, 'Home Furniture', 'home-furniture', 'Home Furniture', 'Home Furniture', 0, '2019-04-11', '15:18:13'),
(215, '103.255.5.87', 1, 22, 71, NULL, 'Office Furniture', 'office-furniture', 'Office Furniture', 'Office Furniture', 0, '2019-04-11', '15:18:30'),
(216, '103.255.5.87', 1, 22, 71, NULL, 'Kitchen & Dining', 'kitchen-&-dining', 'Kitchen & Dining', 'Kitchen & Dining', 0, '2019-04-11', '15:18:59'),
(217, '103.255.5.87', 1, 22, 71, NULL, 'Living Room', 'living-room', 'Living Room', 'Living Room', 0, '2019-04-11', '15:20:10'),
(218, '103.255.5.87', 1, 22, 70, NULL, 'Knife & Accessories', 'knife-&-accessories', 'Knife & Accessories', 'Knife & Accessories', 0, '2019-04-11', '15:21:23'),
(219, '103.255.5.87', 1, 22, 70, NULL, 'Kitchen Utensils', 'kitchen-utensils', 'Kitchen Utensils', 'Kitchen Utensils', 0, '2019-04-11', '15:21:54'),
(220, '103.255.5.87', 1, 22, 70, NULL, 'Cookware', 'cookware', 'Cookware', 'Cookware', 0, '2019-04-11', '15:26:36'),
(221, '103.255.5.87', 1, 22, 70, NULL, 'Kitchen & Table Line', 'kitchen-&-table-line', 'Kitchen & Table Line', 'Kitchen & Table Line', 0, '2019-04-11', '15:27:54'),
(222, '103.255.5.87', 1, 23, 80, NULL, 'Boots', 'boots', 'Boots', 'Boots', 0, '2019-04-11', '15:32:43'),
(223, '103.255.5.87', 1, 23, 80, NULL, 'Sneakers', 'sneakers', 'Sneakers', 'Sneakers', 0, '2019-04-11', '15:33:02'),
(224, '103.255.5.87', 1, 23, 80, NULL, 'Flip Flops', 'flip-flops', 'Flip Flops', 'Flip Flops', 0, '2019-04-11', '15:33:26'),
(225, '103.255.5.87', 1, 23, 80, NULL, 'Khussa & kohlapuri', 'khussa-&-kohlapuri', 'Khussa & kohlapuri', 'Khussa & kohlapuri', 0, '2019-04-11', '15:34:12'),
(226, '103.255.5.87', 1, 23, 80, NULL, 'Heels', 'heels', 'Heels', NULL, 0, '2019-04-11', '15:34:37'),
(227, '103.255.5.87', 1, 23, 80, NULL, 'Flat Shoes', 'flat-shoes', 'Flat Shoes', 'Flat Shoes', 0, '2019-04-11', '15:34:50'),
(228, '103.255.5.87', 1, 23, 80, NULL, 'Sandels', 'sandels', 'Sandels', 'Sandels', 0, '2019-04-11', '15:35:09'),
(229, '103.255.5.87', 1, 24, 89, NULL, 'T-Shorts', 't-shorts', 'T-Shorts', 'T-Shorts', 0, '2019-04-11', '15:44:09'),
(230, '103.255.5.87', 1, 24, 90, NULL, 'Casual Shirts', 'casual-shirts', 'Casual Shirts', 'Casual Shirts', 0, '2019-04-11', '15:45:19'),
(231, '103.255.5.87', 1, 24, 90, NULL, 'Formal Shirts', 'formal-shirts', 'Formal Shirts', 'Formal Shirts', 0, '2019-04-11', '15:45:36'),
(232, '103.255.5.87', 1, 24, 86, NULL, 'Polo\'s', 'polo\'s', 'Polo\'s', 'Polo\'s', 0, '2019-04-11', '15:45:58'),
(233, '103.255.5.87', 1, 24, 87, NULL, 'Chino', 'chino', 'Chino', 'Chino', 0, '2019-04-11', '15:46:17'),
(234, '103.255.5.87', 1, 24, 87, NULL, 'Cargo', 'cargo', 'Cargo', 'Cargo', 0, '2019-04-11', '15:47:01'),
(235, '103.255.5.87', 1, 24, 87, NULL, 'Dress Pants', 'dress-pants', 'Dress Pants', 'Dress Pants', 0, '2019-04-11', '15:47:33'),
(236, '103.255.5.87', 1, 24, 85, NULL, 'Shorts', 'shorts', 'Shorts', 'Shorts', 0, '2019-04-11', '15:47:55'),
(237, '103.255.5.87', 1, 24, 84, NULL, 'Unstitched Suits', 'unstitched-suits', 'Unstitched Suits', 'Unstitched Suits', 0, '2019-04-11', '15:48:50'),
(238, '103.255.5.87', 1, 24, 84, NULL, 'Kurtas', 'kurtas', 'Kurtas', 'Kurtas', 0, '2019-04-11', '15:49:15'),
(239, '103.255.5.87', 1, 24, 84, NULL, 'Shalwar Kameez', 'shalwar-kameez', 'Shalwar Kameez', 'Shalwar Kameez', 0, '2019-04-11', '15:49:38'),
(240, '103.255.5.87', 1, 24, 83, NULL, 'Jackets & Coats', 'jackets-&-coats', 'Jackets & Coats', 'Jackets & Coats', 0, '2019-04-11', '15:50:25'),
(241, '103.255.4.60', 1, 21, 63, NULL, 'Cleaning', 'cleaning', 'Cleaning', 'Cleaning', 0, '2019-04-16', '15:57:34'),
(242, '103.255.4.60', 1, 16, 17, NULL, 'Fashion Mobile Accessories', 'fashion-mobile-accessories', 'Fashion Mobile Accessories', 'Fashion Mobile Accessories', 0, '2019-04-16', '15:59:35'),
(243, '103.255.4.60', 1, 16, 22, NULL, 'Laptop Bags & Sleeves', 'laptop-bags-&-sleeves', 'Laptop Bags & Sleeves', 'Laptop Bags & Sleeves', 0, '2019-04-16', '16:02:00'),
(244, '103.255.4.60', 1, 16, 22, NULL, 'Cooling Pads/Cooling Stands', 'cooling-pads/cooling-stands', 'Cooling Pads/Cooling Stands', 'Cooling Pads/Cooling Stands', 0, '2019-04-16', '16:03:29'),
(245, '103.255.4.60', 1, 16, 17, NULL, 'Selfie Stick', 'selfie-stick', 'Selfie Stick', 'Selfie Stick', 0, '2019-04-16', '16:17:17'),
(246, '103.255.4.60', 1, 16, 17, NULL, 'Bluetooth Hands Free', 'bluetooth-hands-free', 'Bluetooth Hands Free', 'Bluetooth Hands Free', 0, '2019-04-16', '16:22:11'),
(247, '103.255.4.60', 1, 16, 17, NULL, 'Wall Charger', 'wall-charger', 'Wall Charger', 'Wall Charger', 0, '2019-04-16', '18:15:23'),
(248, '103.255.4.60', 1, 16, 18, NULL, 'Voice Recorder', 'voice-recorder', 'Voice Recorder', 'Voice Recorder', 0, '2019-04-16', '18:28:09'),
(249, '182.185.222.160', 1, 25, 91, NULL, 'Fashion Jewellery', 'fashion-jewellery', 'Fashion Jewellery', 'Fashion Jewellery', 0, '2019-07-06', '23:59:23'),
(250, '103.255.5.74', 1, 24, 81, NULL, 'Wallets', 'wallets', 'Wallets', 'Wallets', 0, '2019-07-08', '17:19:01'),
(251, '182.185.197.64', 1, 27, 92, NULL, 'Diagnostic & Test Tools', 'diagnostic-&-test-tools', 'Diagnostic & Test Tools', 'Diagnostic & Test Tools', 0, '2019-07-09', '00:29:51'),
(252, '182.185.197.64', 1, 27, 93, NULL, 'Steering Wheels & Accessories', 'steering-wheels-&-accessories', 'Steering Wheels & Accessories', 'Steering Wheels & Accessories', 0, '2019-07-09', '00:41:24'),
(253, '182.185.197.64', 1, 25, 94, NULL, 'Women Watches', 'women-watches', 'Women Watches', 'Women Watches', 0, '2019-07-09', '00:52:38'),
(254, '182.185.197.64', 1, 25, 94, NULL, 'Men Watches', 'men-watches', 'Men Watches', 'Men Watches', 0, '2019-07-09', '00:53:09'),
(255, '182.185.184.40', 1, 19, 43, NULL, 'Foot Care', 'foot-care', 'Foot Care', 'Foot Care', 0, '2019-07-11', '21:10:25'),
(256, '103.255.4.58', 1, 23, 75, NULL, 'Leggings', 'leggings', 'Leggings', 'Leggings', 0, '2019-07-12', '18:02:08'),
(257, '103.255.4.58', 1, 16, 22, NULL, 'USB Hub', 'usb-hub', 'USB Hub', 'USB Hub', 0, '2019-07-12', '18:06:49'),
(258, '103.255.4.58', 1, 18, 33, NULL, 'TV Remote Controllers', 'tv-remote-controllers', 'TV Remote Controllers', 'TV Remote Controllers', 0, '2019-07-12', '18:19:03'),
(259, '103.255.4.58', 1, 16, 17, NULL, 'Other Accessories', 'other-accessories', NULL, NULL, 0, '2019-07-12', '18:44:59'),
(260, '103.255.4.58', 1, 27, 95, NULL, 'Car Safety & Security', 'car-safety-&-security', 'Car Safety & Security', 'Car Safety & Security', 0, '2019-07-12', '19:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `varification_code` int(11) NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `phone_no` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `role` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `ip_address`, `varification_code`, `first_name`, `last_name`, `address`, `phone_no`, `email`, `password`, `country_id`, `city_id`, `dob`, `image`, `role`, `status`, `created_date`, `created_time`) VALUES
(1, '103.255.4.55', 123456, 'Super', 'Admin', 'Karachi', '12345678901', 'admin@shopker.pk', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'PK', 2, '2019-01-08', 'avatar.png', 0, 0, '2019-08-08', '05:12:06'),
(2, '103.217.177.249', 317409, 'ABN', 'Traders', 'Karachi', '12345678902', 'abntraders17@gmail.com', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'PK', 2, '0000-00-00', '5cefadd3ba20f.jpeg', 2, 0, '2019-08-20', '04:02:41'),
(10, '::1', 309448, 'Nouman', 'Nouman', 'Nouman', 'Nouman', 'noman@shopker.pk', '6a4e788cccd3533350ff09edbf120ebef0fb207c', 'PK', 2, '0000-00-00', 'avatar.png', 2, 0, '2019-04-09', '02:43:50'),
(17, '103.255.5.34', 858454, 'Shopker', 'Shop', 'Lahore', '03104041455', 'shopker18@gmail.com', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'PK', 2, '0000-00-00', '5d5bb06b4f4c1.jpeg', 2, 0, '2019-08-20', '01:33:47'),
(20, '::1', 772399, 'Shopker', 'Shop', NULL, '03104041456', 'shopker18@gmail.com', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'PK', 2, '2019-08-31', 'avatar.png', 3, 0, '2019-08-31', '11:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_genders`
--

CREATE TABLE `tbl_users_genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users_genders`
--

INSERT INTO `tbl_users_genders` (`id`, `ip_address`, `user_id`, `gender_id`, `created_date`, `created_time`) VALUES
(3, '::1', 1, 0, '2019-04-10', '11:29:55'),
(4, '::1', 2, 0, '2019-04-10', '11:36:33'),
(6, '::1', 10, 0, '2019-04-10', '11:36:33'),
(7, '::1', 17, 0, '2019-04-10', '11:36:33'),
(8, '::1', 20, 1, '2019-08-31', '11:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_news_letter`
--

CREATE TABLE `tbl_users_news_letter` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `news_letter` int(11) NOT NULL DEFAULT '1',
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users_news_letter`
--

INSERT INTO `tbl_users_news_letter` (`id`, `ip_address`, `user_id`, `news_letter`, `created_date`, `created_time`) VALUES
(1, '::1', 20, 1, '2019-08-31', '11:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_variations_for_products`
--

CREATE TABLE `tbl_variations_for_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_variations_for_products`
--

INSERT INTO `tbl_variations_for_products` (`id`, `user_id`, `ip_address`, `label`, `value`, `status`, `created_date`, `created_time`) VALUES
(504, 1, '103.255.5.34', 'size', '1', 0, '2019-02-06', '04:27:28'),
(505, 1, '103.255.5.34', 'size', '2', 0, '2019-02-06', '04:27:28'),
(506, 1, '103.255.5.34', 'size', '3', 0, '2019-02-06', '04:27:28'),
(507, 1, '103.255.5.34', 'size', '4', 0, '2019-02-06', '04:27:28'),
(508, 1, '103.255.5.34', 'size', '5', 0, '2019-02-06', '04:27:28'),
(509, 1, '103.255.5.34', 'size', '6', 0, '2019-02-06', '04:27:28'),
(510, 1, '103.255.5.34', 'size', '7', 0, '2019-02-06', '04:27:28'),
(511, 1, '103.255.5.34', 'size', '8', 0, '2019-02-06', '04:27:28'),
(512, 1, '103.255.5.34', 'size', '9', 0, '2019-02-06', '04:27:29'),
(513, 1, '103.255.5.34', 'size', '10', 0, '2019-02-06', '04:27:29'),
(514, 1, '103.255.5.34', 'size', '11', 0, '2019-02-06', '04:27:29'),
(515, 1, '103.255.5.34', 'size', '12', 0, '2019-02-06', '04:27:29'),
(516, 1, '103.255.5.34', 'size', '13', 0, '2019-02-06', '04:27:29'),
(517, 1, '103.255.5.34', 'size', '14', 0, '2019-02-06', '04:27:29'),
(518, 1, '103.255.5.34', 'size', '15', 0, '2019-02-06', '04:27:29'),
(519, 1, '103.255.5.34', 'size', '16', 0, '2019-02-06', '04:27:29'),
(520, 1, '103.255.5.34', 'size', '17', 0, '2019-02-06', '04:27:29'),
(521, 1, '103.255.5.34', 'size', '18', 0, '2019-02-06', '04:27:29'),
(522, 1, '103.255.5.34', 'size', '19', 0, '2019-02-06', '04:27:29'),
(523, 1, '103.255.5.34', 'size', '20', 0, '2019-02-06', '04:27:29'),
(524, 1, '103.255.5.34', 'size', '21', 0, '2019-02-06', '04:27:29'),
(525, 1, '103.255.5.34', 'size', '22', 0, '2019-02-06', '04:27:29'),
(526, 1, '103.255.5.34', 'size', '23', 0, '2019-02-06', '04:27:29'),
(527, 1, '103.255.5.34', 'size', '24', 0, '2019-02-06', '04:27:29'),
(528, 1, '103.255.5.34', 'size', '25', 0, '2019-02-06', '04:27:29'),
(529, 1, '103.255.5.34', 'size', '26', 0, '2019-02-06', '04:27:29'),
(530, 1, '103.255.5.34', 'size', '27', 0, '2019-02-06', '04:27:30'),
(531, 1, '103.255.5.34', 'size', '28', 0, '2019-02-06', '04:27:30'),
(532, 1, '103.255.5.34', 'size', '29', 0, '2019-02-06', '04:27:30'),
(533, 1, '103.255.5.34', 'size', '30', 0, '2019-02-06', '04:27:30'),
(534, 1, '103.255.5.34', 'size', '31', 0, '2019-02-06', '04:27:30'),
(535, 1, '103.255.5.34', 'size', '32', 0, '2019-02-06', '04:27:30'),
(536, 1, '103.255.5.34', 'size', '33', 0, '2019-02-06', '04:27:30'),
(537, 1, '103.255.5.34', 'size', '34', 0, '2019-02-06', '04:27:30'),
(538, 1, '103.255.5.34', 'size', '35', 0, '2019-02-06', '04:27:30'),
(539, 1, '103.255.5.34', 'size', '36', 0, '2019-02-06', '04:27:30'),
(540, 1, '103.255.5.34', 'size', '37', 0, '2019-02-06', '04:27:30'),
(541, 1, '103.255.5.34', 'size', '38', 0, '2019-02-06', '04:27:30'),
(542, 1, '103.255.5.34', 'size', '39', 0, '2019-02-06', '04:27:30'),
(543, 1, '103.255.5.34', 'size', '40', 0, '2019-02-06', '04:27:30'),
(544, 1, '103.255.5.34', 'size', '41', 0, '2019-02-06', '04:27:30'),
(545, 1, '103.255.5.34', 'size', '42', 0, '2019-02-06', '04:27:30'),
(546, 1, '103.255.5.34', 'size', '43', 0, '2019-02-06', '04:27:30'),
(547, 1, '103.255.5.34', 'size', '44', 0, '2019-02-06', '04:27:30'),
(548, 1, '103.255.5.34', 'size', '45', 0, '2019-02-06', '04:27:30'),
(549, 1, '103.255.5.34', 'size', '46', 0, '2019-02-06', '04:27:31'),
(550, 1, '103.255.5.34', 'size', '47', 0, '2019-02-06', '04:27:31'),
(551, 1, '103.255.5.34', 'size', '48', 0, '2019-02-06', '04:27:31'),
(552, 1, '103.255.5.34', 'size', '49', 0, '2019-02-06', '04:27:31'),
(553, 1, '103.255.5.34', 'size', '50', 0, '2019-02-06', '04:27:31'),
(554, 1, '103.255.5.34', 'size', '51', 0, '2019-02-06', '04:27:31'),
(555, 1, '103.255.5.34', 'size', '52', 0, '2019-02-06', '04:27:31'),
(556, 1, '103.255.5.34', 'size', '53', 0, '2019-02-06', '04:27:31'),
(557, 1, '103.255.5.34', 'size', '54', 0, '2019-02-06', '04:27:31'),
(558, 1, '103.255.5.34', 'size', '55', 0, '2019-02-06', '04:27:31'),
(559, 1, '103.255.5.34', 'size', '56', 0, '2019-02-06', '04:27:31'),
(560, 1, '103.255.5.34', 'size', '57', 0, '2019-02-06', '04:27:31'),
(561, 1, '103.255.5.34', 'size', '58', 0, '2019-02-06', '04:27:31'),
(562, 1, '103.255.5.34', 'size', '59', 0, '2019-02-06', '04:27:31'),
(563, 1, '103.255.5.34', 'size', '60', 0, '2019-02-06', '04:27:31'),
(564, 1, '103.255.5.34', 'size', '61', 0, '2019-02-06', '04:27:31'),
(565, 1, '103.255.5.34', 'size', '62', 0, '2019-02-06', '04:27:32'),
(566, 1, '103.255.5.34', 'size', '63', 0, '2019-02-06', '04:27:32'),
(567, 1, '103.255.5.34', 'size', '64', 0, '2019-02-06', '04:27:32'),
(568, 1, '103.255.5.34', 'size', '65', 0, '2019-02-06', '04:27:32'),
(569, 1, '103.255.5.34', 'size', '66', 0, '2019-02-06', '04:27:32'),
(570, 1, '103.255.5.34', 'size', '67', 0, '2019-02-06', '04:27:32'),
(571, 1, '103.255.5.34', 'size', '68', 0, '2019-02-06', '04:27:32'),
(572, 1, '103.255.5.34', 'size', '69', 0, '2019-02-06', '04:27:32'),
(573, 1, '103.255.5.34', 'size', '70', 0, '2019-02-06', '04:27:32'),
(574, 1, '103.255.5.34', 'size', '71', 0, '2019-02-06', '04:27:32'),
(575, 1, '103.255.5.34', 'size', '72', 0, '2019-02-06', '04:27:32'),
(576, 1, '103.255.5.34', 'size', '73', 0, '2019-02-06', '04:27:32'),
(577, 1, '103.255.5.34', 'size', '74', 0, '2019-02-06', '04:27:32'),
(578, 1, '103.255.5.34', 'size', '75', 0, '2019-02-06', '04:27:32'),
(579, 1, '103.255.5.34', 'size', '76', 0, '2019-02-06', '04:27:32'),
(580, 1, '103.255.5.34', 'size', '77', 0, '2019-02-06', '04:27:32'),
(581, 1, '103.255.5.34', 'size', '78', 0, '2019-02-06', '04:27:32'),
(582, 1, '103.255.5.34', 'size', '79', 0, '2019-02-06', '04:27:32'),
(583, 1, '103.255.5.34', 'size', '80', 0, '2019-02-06', '04:27:33'),
(584, 1, '103.255.5.34', 'size', '81', 0, '2019-02-06', '04:27:33'),
(585, 1, '103.255.5.34', 'size', '82', 0, '2019-02-06', '04:27:33'),
(586, 1, '103.255.5.34', 'size', '83', 0, '2019-02-06', '04:27:33'),
(587, 1, '103.255.5.34', 'size', '84', 0, '2019-02-06', '04:27:33'),
(588, 1, '103.255.5.34', 'size', '85', 0, '2019-02-06', '04:27:33'),
(589, 1, '103.255.5.34', 'size', '86', 0, '2019-02-06', '04:27:33'),
(590, 1, '103.255.5.34', 'size', '87', 0, '2019-02-06', '04:27:33'),
(591, 1, '103.255.5.34', 'size', '88', 0, '2019-02-06', '04:27:33'),
(592, 1, '103.255.5.34', 'size', '89', 0, '2019-02-06', '04:27:33'),
(593, 1, '103.255.5.34', 'size', '90', 0, '2019-02-06', '04:27:33'),
(594, 1, '103.255.5.34', 'size', '91', 0, '2019-02-06', '04:27:33'),
(595, 1, '103.255.5.34', 'size', '92', 0, '2019-02-06', '04:27:33'),
(596, 1, '103.255.5.34', 'size', '93', 0, '2019-02-06', '04:27:33'),
(597, 1, '103.255.5.34', 'size', '94', 0, '2019-02-06', '04:27:33'),
(598, 1, '103.255.5.34', 'size', '95', 0, '2019-02-06', '04:27:33'),
(599, 1, '103.255.5.34', 'size', '96', 0, '2019-02-06', '04:27:33'),
(600, 1, '103.255.5.34', 'size', '97', 0, '2019-02-06', '04:27:33'),
(601, 1, '103.255.5.34', 'size', '98', 0, '2019-02-06', '04:27:33'),
(602, 1, '103.255.5.34', 'size', '99', 0, '2019-02-06', '04:27:34'),
(603, 1, '103.255.5.34', 'size', '100', 0, '2019-02-06', '04:27:34'),
(604, 1, '103.255.5.34', 'size', '1 Month', 0, '2019-02-06', '04:27:34'),
(605, 1, '103.255.5.34', 'size', '2 Months', 0, '2019-02-06', '04:27:34'),
(606, 1, '103.255.5.34', 'size', '3 Months', 0, '2019-02-06', '04:27:34'),
(607, 1, '103.255.5.34', 'size', '4 Months', 0, '2019-02-06', '04:27:34'),
(608, 1, '103.255.5.34', 'size', '5 Months', 0, '2019-02-06', '04:27:34'),
(609, 1, '103.255.5.34', 'size', '6 Months', 0, '2019-02-06', '04:27:34'),
(610, 1, '103.255.5.34', 'size', '7 Months', 0, '2019-02-06', '04:27:34'),
(611, 1, '103.255.5.34', 'size', '8 Months', 0, '2019-02-06', '04:27:34'),
(612, 1, '103.255.5.34', 'size', '9 Months', 0, '2019-02-06', '04:27:34'),
(613, 1, '103.255.5.34', 'size', '10 Months', 0, '2019-02-06', '04:27:34'),
(614, 1, '103.255.5.34', 'size', '11 Months', 0, '2019-02-06', '04:27:34'),
(615, 1, '103.255.5.34', 'size', '12 Months', 0, '2019-02-06', '04:27:34'),
(616, 1, '103.255.5.34', 'size', '1 Year', 0, '2019-02-06', '04:27:34'),
(617, 1, '103.255.5.34', 'size', '2 Years', 0, '2019-02-06', '04:27:34'),
(618, 1, '103.255.5.34', 'size', '3 Years', 0, '2019-02-06', '04:27:34'),
(619, 1, '103.255.5.34', 'size', '4 Years', 0, '2019-02-06', '04:27:34'),
(620, 1, '103.255.5.34', 'size', '5 Years', 0, '2019-02-06', '04:27:34'),
(621, 1, '103.255.5.34', 'size', '6 Years', 0, '2019-02-06', '04:27:34'),
(622, 1, '103.255.5.34', 'size', '7 Years', 0, '2019-02-06', '04:27:35'),
(623, 1, '103.255.5.34', 'size', '8 Years', 0, '2019-02-06', '04:27:35'),
(624, 1, '103.255.5.34', 'size', '9 Years', 0, '2019-02-06', '04:27:35'),
(625, 1, '103.255.5.34', 'size', '10 Years', 0, '2019-02-06', '04:27:35'),
(626, 1, '103.255.5.34', 'size', '11 Years ', 0, '2019-02-06', '04:27:35'),
(627, 1, '103.255.5.34', 'size', '12 Years', 0, '2019-02-06', '04:27:35'),
(628, 1, '103.255.5.34', 'size', '13 Years', 0, '2019-02-06', '04:27:35'),
(629, 1, '103.255.5.34', 'size', '14 Years', 0, '2019-02-06', '04:27:35'),
(630, 1, '103.255.5.34', 'size', '15 Years', 0, '2019-02-06', '04:27:35'),
(631, 1, '103.255.5.34', 'size', '16 Years', 0, '2019-02-06', '04:27:35'),
(632, 1, '103.255.5.34', 'size', '17 Years', 0, '2019-02-06', '04:27:35'),
(633, 1, '103.255.5.34', 'size', '18 Years', 0, '2019-02-06', '04:27:35'),
(634, 1, '103.255.5.34', 'size', '19 Years', 0, '2019-02-06', '04:27:35'),
(635, 1, '103.255.5.34', 'size', '20 Years', 0, '2019-02-06', '04:27:35'),
(636, 1, '103.255.5.34', 'size', 'Extra Small', 0, '2019-02-06', '04:27:35'),
(637, 1, '103.255.5.34', 'size', 'Small', 0, '2019-02-06', '04:27:35'),
(638, 1, '103.255.5.34', 'size', 'Medium ', 0, '2019-02-06', '04:27:35'),
(639, 1, '103.255.5.34', 'size', 'Large', 0, '2019-02-06', '04:27:35'),
(640, 1, '103.255.5.34', 'size', 'Extra Large', 0, '2019-02-06', '04:27:35'),
(641, 1, '103.255.5.34', 'size', 'XS', 0, '2019-02-06', '04:27:35'),
(642, 1, '103.255.5.34', 'size', 'S', 0, '2019-02-06', '04:27:36'),
(643, 1, '103.255.5.34', 'size', 'M', 0, '2019-02-06', '04:27:36'),
(644, 1, '103.255.5.34', 'size', 'L', 0, '2019-02-06', '04:27:36'),
(645, 1, '103.255.5.34', 'size', 'XL', 0, '2019-02-06', '04:27:36'),
(646, 1, '103.255.5.34', 'size', 'XXL', 0, '2019-02-06', '04:27:36'),
(647, 1, '103.255.5.34', 'size', '32', 0, '2019-02-06', '04:27:36'),
(648, 1, '103.255.5.34', 'size', '34', 0, '2019-02-06', '04:27:36'),
(649, 1, '103.255.5.34', 'size', '36', 0, '2019-02-06', '04:27:36'),
(650, 1, '103.255.5.34', 'size', '38', 0, '2019-02-06', '04:27:36'),
(651, 1, '103.255.5.34', 'size', '40', 0, '2019-02-06', '04:27:36'),
(652, 1, '103.255.5.34', 'size', '42', 0, '2019-02-06', '04:27:36'),
(653, 1, '103.255.5.34', 'size', '44', 0, '2019-02-06', '04:27:36'),
(654, 1, '103.255.5.34', 'size', '32A', 0, '2019-02-06', '04:27:36'),
(655, 1, '103.255.5.34', 'size', '32B', 0, '2019-02-06', '04:27:36'),
(656, 1, '103.255.5.34', 'size', '32C', 0, '2019-02-06', '04:27:36'),
(657, 1, '103.255.5.34', 'size', '34A', 0, '2019-02-06', '04:27:36'),
(658, 1, '103.255.5.34', 'size', '34B', 0, '2019-02-06', '04:27:36'),
(659, 1, '103.255.5.34', 'size', '34C', 0, '2019-02-06', '04:27:36'),
(660, 1, '103.255.5.34', 'size', '36A', 0, '2019-02-06', '04:27:36'),
(661, 1, '103.255.5.34', 'size', '36B', 0, '2019-02-06', '04:27:37'),
(662, 1, '103.255.5.34', 'size', '36C', 0, '2019-02-06', '04:27:37'),
(663, 1, '103.255.5.34', 'size', '36D', 0, '2019-02-06', '04:27:37'),
(664, 1, '103.255.5.34', 'size', '38A', 0, '2019-02-06', '04:27:37'),
(665, 1, '103.255.5.34', 'size', '38B', 0, '2019-02-06', '04:27:37'),
(666, 1, '103.255.5.34', 'size', '38C', 0, '2019-02-06', '04:27:37'),
(667, 1, '103.255.5.34', 'size', '38D', 0, '2019-02-06', '04:27:37'),
(668, 1, '103.255.5.34', 'size', '38DD', 0, '2019-02-06', '04:27:37'),
(669, 1, '103.255.5.34', 'size', '40A', 0, '2019-02-06', '04:27:37'),
(670, 1, '103.255.5.34', 'size', '40B', 0, '2019-02-06', '04:27:37'),
(671, 1, '103.255.5.34', 'size', '40C', 0, '2019-02-06', '04:27:37'),
(672, 1, '103.255.5.34', 'size', '40D', 0, '2019-02-06', '04:27:37'),
(673, 1, '103.255.5.34', 'size', '40DD', 0, '2019-02-06', '04:27:37'),
(674, 1, '103.255.5.34', 'size', '42A', 0, '2019-02-06', '04:27:37'),
(675, 1, '103.255.5.34', 'size', '42B', 0, '2019-02-06', '04:27:38'),
(676, 1, '103.255.5.34', 'size', '42C', 0, '2019-02-06', '04:27:38'),
(677, 1, '103.255.5.34', 'size', '42D', 0, '2019-02-06', '04:27:38'),
(678, 1, '103.255.5.34', 'size', '42DD', 0, '2019-02-06', '04:27:38'),
(679, 1, '::1', 'None', 'None', 0, '2019-04-09', '15:54:37'),
(680, 1, '182.185.232.203', 'Colors', 'Green', 0, '2019-07-07', '16:59:33'),
(681, 1, '182.185.232.203', 'Colors', 'Amaranth', 0, '2019-07-07', '16:59:33'),
(682, 1, '182.185.232.203', 'Colors', 'Amber', 0, '2019-07-07', '16:59:33'),
(683, 1, '182.185.232.203', 'Colors', 'Amethyst', 0, '2019-07-07', '16:59:33'),
(684, 1, '182.185.232.203', 'Colors', 'Apricot', 0, '2019-07-07', '16:59:33'),
(685, 1, '182.185.232.203', 'Colors', 'Aquamarine', 0, '2019-07-07', '16:59:33'),
(686, 1, '182.185.232.203', 'Colors', 'Azure', 0, '2019-07-07', '16:59:33'),
(687, 1, '182.185.232.203', 'Colors', 'Baby blue', 0, '2019-07-07', '16:59:33'),
(688, 1, '182.185.232.203', 'Colors', 'Beige', 0, '2019-07-07', '16:59:33'),
(689, 1, '182.185.232.203', 'Colors', 'Black', 0, '2019-07-07', '16:59:33'),
(690, 1, '182.185.232.203', 'Colors', 'Blue', 0, '2019-07-07', '16:59:33'),
(691, 1, '182.185.232.203', 'Colors', 'Blue-green', 0, '2019-07-07', '16:59:33'),
(692, 1, '182.185.232.203', 'Colors', 'Blue-violet', 0, '2019-07-07', '16:59:33'),
(693, 1, '182.185.232.203', 'Colors', 'Blush', 0, '2019-07-07', '16:59:33'),
(694, 1, '182.185.232.203', 'Colors', 'Bronze', 0, '2019-07-07', '16:59:33'),
(695, 1, '182.185.232.203', 'Colors', 'Brown', 0, '2019-07-07', '16:59:33'),
(696, 1, '182.185.232.203', 'Colors', 'Burgundy', 0, '2019-07-07', '16:59:33'),
(697, 1, '182.185.232.203', 'Colors', 'Byzantium', 0, '2019-07-07', '16:59:33'),
(698, 1, '182.185.232.203', 'Colors', 'Carmine', 0, '2019-07-07', '16:59:33'),
(699, 1, '182.185.232.203', 'Colors', 'Cerise', 0, '2019-07-07', '16:59:33'),
(700, 1, '182.185.232.203', 'Colors', 'Cerulean', 0, '2019-07-07', '16:59:33'),
(701, 1, '182.185.232.203', 'Colors', 'Champagne', 0, '2019-07-07', '16:59:33'),
(702, 1, '182.185.232.203', 'Colors', 'Chartreuse green', 0, '2019-07-07', '16:59:33'),
(703, 1, '182.185.232.203', 'Colors', 'Chocolate', 0, '2019-07-07', '16:59:33'),
(704, 1, '182.185.232.203', 'Colors', 'Cobalt blue', 0, '2019-07-07', '16:59:33'),
(705, 1, '182.185.232.203', 'Colors', 'Coffee', 0, '2019-07-07', '16:59:33'),
(706, 1, '182.185.232.203', 'Colors', 'Copper', 0, '2019-07-07', '16:59:33'),
(707, 1, '182.185.232.203', 'Colors', 'Coral', 0, '2019-07-07', '16:59:33'),
(708, 1, '182.185.232.203', 'Colors', 'Crimson', 0, '2019-07-07', '16:59:33'),
(709, 1, '182.185.232.203', 'Colors', 'Cyan', 0, '2019-07-07', '16:59:33'),
(710, 1, '182.185.232.203', 'Colors', 'Desert sand', 0, '2019-07-07', '16:59:33'),
(711, 1, '182.185.232.203', 'Colors', 'Electric blue', 0, '2019-07-07', '16:59:33'),
(712, 1, '182.185.232.203', 'Colors', 'Emerald', 0, '2019-07-07', '16:59:33'),
(713, 1, '182.185.232.203', 'Colors', 'Erin', 0, '2019-07-07', '16:59:33'),
(714, 1, '182.185.232.203', 'Colors', 'Gold', 0, '2019-07-07', '16:59:33'),
(715, 1, '182.185.232.203', 'Colors', 'Gray', 0, '2019-07-07', '16:59:33'),
(716, 1, '182.185.232.203', 'Colors', 'Green', 0, '2019-07-07', '16:59:33'),
(717, 1, '182.185.232.203', 'Colors', 'Harlequin', 0, '2019-07-07', '16:59:33'),
(718, 1, '182.185.232.203', 'Colors', 'Indigo', 0, '2019-07-07', '16:59:33'),
(719, 1, '182.185.232.203', 'Colors', 'Ivory', 0, '2019-07-07', '16:59:33'),
(720, 1, '182.185.232.203', 'Colors', 'Jade', 0, '2019-07-07', '16:59:33'),
(721, 1, '182.185.232.203', 'Colors', 'Jungle green', 0, '2019-07-07', '16:59:33'),
(722, 1, '182.185.232.203', 'Colors', 'Lavender', 0, '2019-07-07', '16:59:33'),
(723, 1, '182.185.232.203', 'Colors', 'Lemon', 0, '2019-07-07', '16:59:33'),
(724, 1, '182.185.232.203', 'Colors', 'Lilac', 0, '2019-07-07', '16:59:33'),
(725, 1, '182.185.232.203', 'Colors', 'Lime', 0, '2019-07-07', '16:59:33'),
(726, 1, '182.185.232.203', 'Colors', 'Magenta', 0, '2019-07-07', '16:59:33'),
(727, 1, '182.185.232.203', 'Colors', 'Magenta rose', 0, '2019-07-07', '16:59:33'),
(728, 1, '182.185.232.203', 'Colors', 'Maroon', 0, '2019-07-07', '16:59:33'),
(729, 1, '182.185.232.203', 'Colors', 'Mauve', 0, '2019-07-07', '16:59:33'),
(730, 1, '182.185.232.203', 'Colors', 'Navy blue', 0, '2019-07-07', '16:59:33'),
(731, 1, '182.185.232.203', 'Colors', 'Ocher', 0, '2019-07-07', '16:59:33'),
(732, 1, '182.185.232.203', 'Colors', 'Olive', 0, '2019-07-07', '16:59:33'),
(733, 1, '182.185.232.203', 'Colors', 'Orange', 0, '2019-07-07', '16:59:33'),
(734, 1, '182.185.232.203', 'Colors', 'Orange-red', 0, '2019-07-07', '16:59:33'),
(735, 1, '182.185.232.203', 'Colors', 'Orchid', 0, '2019-07-07', '16:59:33'),
(736, 1, '182.185.232.203', 'Colors', 'Peach', 0, '2019-07-07', '16:59:33'),
(737, 1, '182.185.232.203', 'Colors', 'Pear', 0, '2019-07-07', '16:59:33'),
(738, 1, '182.185.232.203', 'Colors', 'Periwinkle', 0, '2019-07-07', '16:59:33'),
(739, 1, '182.185.232.203', 'Colors', 'Persian blue', 0, '2019-07-07', '16:59:33'),
(740, 1, '182.185.232.203', 'Colors', 'Pink', 0, '2019-07-07', '16:59:33'),
(741, 1, '182.185.232.203', 'Colors', 'Plum', 0, '2019-07-07', '16:59:33'),
(742, 1, '182.185.232.203', 'Colors', 'Prussian blue', 0, '2019-07-07', '16:59:33'),
(743, 1, '182.185.232.203', 'Colors', 'Puce', 0, '2019-07-07', '16:59:33'),
(744, 1, '182.185.232.203', 'Colors', 'Purple', 0, '2019-07-07', '16:59:33'),
(745, 1, '182.185.232.203', 'Colors', 'Raspberry', 0, '2019-07-07', '16:59:33'),
(746, 1, '182.185.232.203', 'Colors', 'Red', 0, '2019-07-07', '16:59:33'),
(747, 1, '182.185.232.203', 'Colors', 'Red-violet', 0, '2019-07-07', '16:59:33'),
(748, 1, '182.185.232.203', 'Colors', 'Rose', 0, '2019-07-07', '16:59:33'),
(749, 1, '182.185.232.203', 'Colors', 'Ruby', 0, '2019-07-07', '16:59:33'),
(750, 1, '182.185.232.203', 'Colors', 'Salmon', 0, '2019-07-07', '16:59:33'),
(751, 1, '182.185.232.203', 'Colors', 'Sangria', 0, '2019-07-07', '16:59:33'),
(752, 1, '182.185.232.203', 'Colors', 'Sapphire', 0, '2019-07-07', '16:59:33'),
(753, 1, '182.185.232.203', 'Colors', 'Scarlet', 0, '2019-07-07', '16:59:33'),
(754, 1, '182.185.232.203', 'Colors', 'Silver', 0, '2019-07-07', '16:59:33'),
(755, 1, '182.185.232.203', 'Colors', 'Slate gray', 0, '2019-07-07', '16:59:33'),
(756, 1, '182.185.232.203', 'Colors', 'Spring bud', 0, '2019-07-07', '16:59:33'),
(757, 1, '182.185.232.203', 'Colors', 'Spring green', 0, '2019-07-07', '16:59:33'),
(758, 1, '182.185.232.203', 'Colors', 'Tan', 0, '2019-07-07', '16:59:33'),
(759, 1, '182.185.232.203', 'Colors', 'Taupe', 0, '2019-07-07', '16:59:33'),
(760, 1, '182.185.232.203', 'Colors', 'Teal', 0, '2019-07-07', '16:59:33'),
(761, 1, '182.185.232.203', 'Colors', 'Turquoise', 0, '2019-07-07', '16:59:33'),
(762, 1, '182.185.232.203', 'Colors', 'Ultramarine', 0, '2019-07-07', '16:59:33'),
(763, 1, '182.185.232.203', 'Colors', 'Violet', 0, '2019-07-07', '16:59:33'),
(764, 1, '182.185.232.203', 'Colors', 'Viridian', 0, '2019-07-07', '16:59:33'),
(765, 1, '182.185.232.203', 'Colors', 'White', 0, '2019-07-07', '16:59:33'),
(766, 1, '182.185.232.203', 'Colors', 'Yellow', 0, '2019-07-07', '16:59:33'),
(767, 1, '182.185.232.203', 'Colors', 'Multicolor', 0, '2019-07-07', '16:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vendors_commission`
--

CREATE TABLE `tbl_vendors_commission` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_percent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_vendors_commission`
--

INSERT INTO `tbl_vendors_commission` (`id`, `ip_address`, `admin_id`, `vendor_id`, `type`, `category_id`, `total_percent`, `created_date`, `created_time`) VALUES
(12, '::1', 1, 2, 1, 16, '15', '2019-05-08', '11:34:03'),
(13, '182.185.253.149', 1, 2, 0, 0, '15', '2019-07-07', '15:02:53'),
(14, '182.185.197.64', 1, 17, 0, 0, '10', '2019-07-09', '00:23:02'),
(15, '103.255.5.79', 1, 17, 0, 0, '15', '2019-08-08', '16:38:57'),
(16, '103.255.5.79', 1, 17, 0, 0, '15', '2019-08-08', '16:39:10'),
(17, '103.217.177.27', 1, 17, 0, 0, '15%', '2019-08-08', '17:13:57'),
(18, '103.217.177.27', 1, 17, 0, 0, '20', '2019-08-08', '17:21:53'),
(19, '103.217.177.27', 1, 2, 0, 0, '12', '2019-08-08', '17:22:17'),
(20, '103.217.177.27', 1, 17, 0, 0, '15', '2019-08-08', '17:30:59'),
(21, '103.217.178.57', 1, 10, 1, 27, '10', '2019-08-16', '19:45:40'),
(22, '103.217.178.57', 1, 10, 1, 26, '20', '2019-08-16', '19:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlists`
--

CREATE TABLE `tbl_wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_wishlists`
--

INSERT INTO `tbl_wishlists` (`id`, `ip_address`, `user_id`, `product_id`, `created_date`, `created_time`) VALUES
(18, '::1', 13, 99, '2019-04-30', '11:48:38'),
(19, '37.111.130.160', 13, 193, '2019-07-04', '04:53:06'),
(20, '37.111.130.160', 13, 195, '2019-07-04', '04:53:20'),
(25, '103.255.4.69', 16, 199, '2019-07-06', '03:55:00'),
(26, '103.255.5.79', 16, 7, '2019-08-08', '03:43:51'),
(27, '103.255.5.79', 16, 237, '2019-08-08', '03:43:57'),
(28, '103.217.177.27', 13, 208, '2019-08-08', '03:56:15'),
(29, '103.217.177.27', 13, 7, '2019-08-08', '03:56:19'),
(30, '103.217.177.27', 13, 105, '2019-08-08', '07:45:07'),
(31, '182.185.212.80', 16, 236, '2019-08-08', '08:07:56'),
(32, '182.185.212.80', 16, 196, '2019-08-08', '08:07:56'),
(33, '182.185.148.66', 16, 6, '2019-08-09', '03:54:11'),
(34, '182.185.148.66', 16, 189, '2019-08-09', '03:54:16'),
(35, '103.217.178.13', 13, 189, '2019-08-09', '06:16:44'),
(36, '103.217.178.13', 13, 6, '2019-08-09', '06:17:30'),
(37, '182.185.148.66', 16, 225, '2019-08-09', '06:54:48'),
(38, '182.185.225.228', 16, 210, '2019-08-16', '05:54:06'),
(39, '182.185.225.228', 16, 178, '2019-08-16', '05:54:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_permissions`
--
ALTER TABLE `tbl_admin_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner_advertisements`
--
ALTER TABLE `tbl_banner_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brands_for_products`
--
ALTER TABLE `tbl_brands_for_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_careers`
--
ALTER TABLE `tbl_careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_child_categories`
--
ALTER TABLE `tbl_child_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sorting_order` (`sorting_order`);

--
-- Indexes for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries_phone_code`
--
ALTER TABLE `tbl_countries_phone_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_coupons_products`
--
ALTER TABLE `tbl_coupons_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_emails`
--
ALTER TABLE `tbl_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login_activities`
--
ALTER TABLE `tbl_login_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_coupons`
--
ALTER TABLE `tbl_orders_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_invoices`
--
ALTER TABLE `tbl_orders_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_reviews`
--
ALTER TABLE `tbl_orders_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_pages_title_unique` (`title`),
  ADD UNIQUE KEY `tbl_pages_slug_unique` (`slug`);

--
-- Indexes for table `tbl_pages_meta_details`
--
ALTER TABLE `tbl_pages_meta_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_parent_categories`
--
ALTER TABLE `tbl_parent_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products_featured_images`
--
ALTER TABLE `tbl_products_featured_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products_images`
--
ALTER TABLE `tbl_products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products_reviews`
--
ALTER TABLE `tbl_products_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_brands`
--
ALTER TABLE `tbl_product_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_charges`
--
ALTER TABLE `tbl_shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_details`
--
ALTER TABLE `tbl_shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_images`
--
ALTER TABLE `tbl_site_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_settings`
--
ALTER TABLE `tbl_site_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_site_settings_phone_number1_unique` (`phone_1`),
  ADD UNIQUE KEY `tbl_site_settings_phone_number2_unique` (`phone_2`),
  ADD UNIQUE KEY `tbl_site_settings_email1_unique` (`email_1`),
  ADD UNIQUE KEY `tbl_site_settings_email2_unique` (`email_2`);

--
-- Indexes for table `tbl_site_shipping_charges`
--
ALTER TABLE `tbl_site_shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_shipping_settings`
--
ALTER TABLE `tbl_site_shipping_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_social_links`
--
ALTER TABLE `tbl_site_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_tax_settings`
--
ALTER TABLE `tbl_site_tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stores_bank_details`
--
ALTER TABLE `tbl_stores_bank_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_stores_bank_details_title_unique` (`title`),
  ADD UNIQUE KEY `tbl_stores_bank_details_account_no_unique` (`account_no`),
  ADD UNIQUE KEY `tbl_stores_bank_details_branch_code_unique` (`branch_code`);

--
-- Indexes for table `tbl_store_images`
--
ALTER TABLE `tbl_store_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_store_settings`
--
ALTER TABLE `tbl_store_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_store_settings_store_email_unique` (`store_email`),
  ADD UNIQUE KEY `tbl_store_settings_store_phone_no_unique` (`store_phone_no`),
  ADD UNIQUE KEY `tbl_store_settings_cnic_unique` (`cnic`),
  ADD UNIQUE KEY `tbl_store_settings_store_cell_no_unique` (`store_cell_no`),
  ADD UNIQUE KEY `tbl_store_settings_ntn_no_unique` (`ntn_no`);

--
-- Indexes for table `tbl_sub_child_categories`
--
ALTER TABLE `tbl_sub_child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_users_varification_code_unique` (`varification_code`),
  ADD UNIQUE KEY `tbl_users_cell_number1_unique` (`phone_no`);

--
-- Indexes for table `tbl_users_genders`
--
ALTER TABLE `tbl_users_genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_news_letter`
--
ALTER TABLE `tbl_users_news_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_variations_for_products`
--
ALTER TABLE `tbl_variations_for_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vendors_commission`
--
ALTER TABLE `tbl_vendors_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wishlists`
--
ALTER TABLE `tbl_wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tbl_admin_permissions`
--
ALTER TABLE `tbl_admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_banner_advertisements`
--
ALTER TABLE `tbl_banner_advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_brands_for_products`
--
ALTER TABLE `tbl_brands_for_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_careers`
--
ALTER TABLE `tbl_careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_child_categories`
--
ALTER TABLE `tbl_child_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=770;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `tbl_countries_phone_code`
--
ALTER TABLE `tbl_countries_phone_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_coupons`
--
ALTER TABLE `tbl_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_coupons_products`
--
ALTER TABLE `tbl_coupons_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_emails`
--
ALTER TABLE `tbl_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_login_activities`
--
ALTER TABLE `tbl_login_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders_coupons`
--
ALTER TABLE `tbl_orders_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders_invoices`
--
ALTER TABLE `tbl_orders_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders_reviews`
--
ALTER TABLE `tbl_orders_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pages_meta_details`
--
ALTER TABLE `tbl_pages_meta_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_parent_categories`
--
ALTER TABLE `tbl_parent_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `tbl_products_featured_images`
--
ALTER TABLE `tbl_products_featured_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `tbl_products_images`
--
ALTER TABLE `tbl_products_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `tbl_products_reviews`
--
ALTER TABLE `tbl_products_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_brands`
--
ALTER TABLE `tbl_product_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `tbl_product_categories`
--
ALTER TABLE `tbl_product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `tbl_shipping_charges`
--
ALTER TABLE `tbl_shipping_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_shipping_details`
--
ALTER TABLE `tbl_shipping_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_site_images`
--
ALTER TABLE `tbl_site_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_site_settings`
--
ALTER TABLE `tbl_site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_site_shipping_charges`
--
ALTER TABLE `tbl_site_shipping_charges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_site_shipping_settings`
--
ALTER TABLE `tbl_site_shipping_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_site_social_links`
--
ALTER TABLE `tbl_site_social_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_site_tax_settings`
--
ALTER TABLE `tbl_site_tax_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stores_bank_details`
--
ALTER TABLE `tbl_stores_bank_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_store_images`
--
ALTER TABLE `tbl_store_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_store_settings`
--
ALTER TABLE `tbl_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sub_child_categories`
--
ALTER TABLE `tbl_sub_child_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_users_genders`
--
ALTER TABLE `tbl_users_genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_users_news_letter`
--
ALTER TABLE `tbl_users_news_letter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_variations_for_products`
--
ALTER TABLE `tbl_variations_for_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;

--
-- AUTO_INCREMENT for table `tbl_vendors_commission`
--
ALTER TABLE `tbl_vendors_commission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_wishlists`
--
ALTER TABLE `tbl_wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
