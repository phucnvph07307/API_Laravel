-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 05:29 AM
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
-- Database: `shopao`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `slug`, `description`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Men', NULL, 'Đây là chi tiết danh mục Men !!', '2020-03-02 13:47:39', '2020-03-04 05:51:41', -1),
(2, 'Women', NULL, 'Đây là danh mục Women !!', '2020-03-03 17:00:00', '2020-03-04 05:51:32', -1),
(3, 'Quần', NULL, 'Đây là danh mục Quần', '2020-03-02 13:47:39', '2020-03-04 05:50:19', -1),
(4, 'Áo', NULL, 'Mô tả chi tiết danh mục Áo', '2020-03-02 13:47:39', '2020-03-04 05:50:37', -1),
(6, 'Giày', NULL, 'ĐÂY LÀ DANH MỤC Giày', '2020-03-04 05:36:16', '2020-03-04 05:51:21', -1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT '0',
  `payment_method` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `customer_phone_number`, `customer_email`, `customer_address`, `message`, `total_price`, `payment_method`, `created_at`, `updated_at`) VALUES
(6, 'Văn Phúc Nguyễn', '0342525777', 'phucnvph07307@fpt.edu.vn', 'hanoi', 'oke', 433333, 1, '2020-03-04 08:21:14', NULL),
(7, 'Văn', '0342525777', 'phucnvph07307@fpt.edu.vn', 'hanoi', 'hhahaa', 666666, 1, '2020-03-04 08:21:54', NULL),
(8, 'hahahha', '0342525777', 'hhahahah@gmail.com', 'hanoi', 'ahahahha', 200000, 1, '2020-03-04 08:23:29', NULL),
(9, 'Văn Phúc Nguyễn', '0342525777', 'phucnvph07307@fpt.edu.vn', 'hanoi', 'okaaaaaaaaaaaaaaa', 500000, 1, '2020-03-06 08:56:57', NULL),
(10, 'haha', '0342525777', 'hhahahah@gmail.com', 'haha', 'haha', 333333, 1, '2020-04-06 05:30:20', NULL),
(11, 'Văn Phúc Nguyễn', '0342525777', 'phuc@fpt.edu.vn', 'hanoi', 'cảm ơn', 600000, 1, '2020-04-08 08:00:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`invoice_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(6, 126, 1, 333333, '2020-03-04 08:21:14', NULL),
(6, 127, 1, 100000, '2020-03-04 08:21:14', NULL),
(7, 126, 2, 666666, '2020-03-04 08:21:54', NULL),
(8, 133, 2, 200000, '2020-03-04 08:23:29', NULL),
(9, 128, 1, 500000, '2020-03-06 08:56:57', NULL),
(10, 131, 1, 333333, '2020-04-06 05:30:20', NULL),
(11, 127, 1, 100000, '2020-04-08 08:00:10', NULL),
(11, 128, 1, 500000, '2020-04-08 08:00:10', NULL);

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
(3, '2019_01_05_070735_create_categories_table', 2),
(5, '2019_01_05_072544_alter_table_categories_update_column', 3),
(6, '2019_01_05_074643_create_products_table', 3),
(7, '2019_01_05_075227_create_invoices_table', 4),
(8, '2019_01_05_075449_create_invoice_detail_table', 4),
(9, '2019_01_12_014833_alter_table_products_add_views_column', 5),
(10, '2019_01_12_021523_create_table_product_galleries', 6);

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `cate_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL DEFAULT '0',
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `star` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `cate_id`, `price`, `short_desc`, `detail`, `star`, `created_at`, `updated_at`, `views`) VALUES
(160, 'IP 11 PRO MAX', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT7mL58lFwZV7AGjMbUCAthf4eTNrfABlT96Q&usqp=CAU', 1, 10000, NULL, NULL, 0.00, '2020-07-26 19:36:41', '2020-07-26 19:36:41', 1),
(161, 'Samsung s89', 'data:image/jpeg;base64,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', 1, 20003, NULL, NULL, 0.00, '2020-07-26 19:44:00', '2020-07-26 20:22:55', 1),
(162, 'Bphone', 'data:image/jpeg;base64,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', 1, 3000, NULL, NULL, 0.00, '2020-07-26 19:44:23', '2020-07-26 19:44:23', 1),
(163, 'OK NHÉ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRx8pLxB641Y25r-3xgMAZQTE99gRXRPU-OFw&usqp=CAU', 1, 300044, NULL, NULL, 0.00, '2020-07-26 19:45:30', '2020-07-26 20:25:45', 1),
(164, 'Nokia', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR7R7CgYnhkfTSMRJk073mcDSLsS-jnSkkqEA&usqp=CAU', 1, 3000, NULL, NULL, 0.00, '2020-07-26 19:46:33', '2020-07-26 19:46:33', 1),
(165, 'IP12 PRO', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTazCmqXD1ykI4FTAUkwp_UMcXgHsAtuFC7-g&usqp=CAU', 1, 3000, NULL, NULL, 0.00, '2020-07-26 19:47:30', '2020-07-26 19:47:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `img_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://lorempixel.com/640/480/cats/?10546', NULL, NULL),
(2, 1, 'https://lorempixel.com/640/480/cats/?23905', NULL, NULL),
(3, 1, 'https://lorempixel.com/640/480/cats/?66813', NULL, NULL),
(4, 2, 'https://lorempixel.com/640/480/cats/?67185', NULL, NULL),
(5, 2, 'https://lorempixel.com/640/480/cats/?24575', NULL, NULL),
(6, 2, 'https://lorempixel.com/640/480/cats/?15621', NULL, NULL),
(7, 2, 'https://lorempixel.com/640/480/cats/?69292', NULL, NULL),
(8, 3, 'https://lorempixel.com/640/480/cats/?25547', NULL, NULL),
(9, 3, 'https://lorempixel.com/640/480/cats/?71965', NULL, NULL),
(10, 3, 'https://lorempixel.com/640/480/cats/?31612', NULL, NULL),
(11, 4, 'https://lorempixel.com/640/480/cats/?10227', NULL, NULL),
(12, 4, 'https://lorempixel.com/640/480/cats/?87389', NULL, NULL),
(13, 4, 'https://lorempixel.com/640/480/cats/?33849', NULL, NULL),
(14, 4, 'https://lorempixel.com/640/480/cats/?98511', NULL, NULL),
(15, 5, 'https://lorempixel.com/640/480/cats/?44170', NULL, NULL),
(16, 5, 'https://lorempixel.com/640/480/cats/?26460', NULL, NULL),
(17, 5, 'https://lorempixel.com/640/480/cats/?41734', NULL, NULL),
(18, 6, 'https://lorempixel.com/640/480/cats/?86850', NULL, NULL),
(19, 6, 'https://lorempixel.com/640/480/cats/?29948', NULL, NULL),
(20, 6, 'https://lorempixel.com/640/480/cats/?52631', NULL, NULL),
(21, 7, 'https://lorempixel.com/640/480/cats/?16016', NULL, NULL),
(22, 7, 'https://lorempixel.com/640/480/cats/?80666', NULL, NULL),
(23, 7, 'https://lorempixel.com/640/480/cats/?71484', NULL, NULL),
(24, 7, 'https://lorempixel.com/640/480/cats/?37459', NULL, NULL),
(25, 7, 'https://lorempixel.com/640/480/cats/?25810', NULL, NULL),
(26, 8, 'https://lorempixel.com/640/480/cats/?63687', NULL, NULL),
(27, 8, 'https://lorempixel.com/640/480/cats/?41774', NULL, NULL),
(28, 8, 'https://lorempixel.com/640/480/cats/?53737', NULL, NULL),
(29, 8, 'https://lorempixel.com/640/480/cats/?19013', NULL, NULL),
(30, 8, 'https://lorempixel.com/640/480/cats/?77785', NULL, NULL),
(31, 9, 'https://lorempixel.com/640/480/cats/?44243', NULL, NULL),
(32, 9, 'https://lorempixel.com/640/480/cats/?47469', NULL, NULL),
(33, 9, 'https://lorempixel.com/640/480/cats/?47198', NULL, NULL),
(34, 9, 'https://lorempixel.com/640/480/cats/?51295', NULL, NULL),
(35, 9, 'https://lorempixel.com/640/480/cats/?15267', NULL, NULL),
(36, 10, 'https://lorempixel.com/640/480/cats/?55076', NULL, NULL),
(37, 10, 'https://lorempixel.com/640/480/cats/?56526', NULL, NULL),
(38, 10, 'https://lorempixel.com/640/480/cats/?47395', NULL, NULL),
(39, 10, 'https://lorempixel.com/640/480/cats/?28764', NULL, NULL),
(40, 11, 'https://lorempixel.com/640/480/cats/?37310', NULL, NULL),
(41, 11, 'https://lorempixel.com/640/480/cats/?30736', NULL, NULL),
(42, 11, 'https://lorempixel.com/640/480/cats/?25207', NULL, NULL),
(43, 11, 'https://lorempixel.com/640/480/cats/?51950', NULL, NULL),
(44, 11, 'https://lorempixel.com/640/480/cats/?12853', NULL, NULL),
(45, 12, 'https://lorempixel.com/640/480/cats/?30453', NULL, NULL),
(46, 12, 'https://lorempixel.com/640/480/cats/?58005', NULL, NULL),
(47, 12, 'https://lorempixel.com/640/480/cats/?56907', NULL, NULL),
(48, 13, 'https://lorempixel.com/640/480/cats/?75762', NULL, NULL),
(49, 13, 'https://lorempixel.com/640/480/cats/?18853', NULL, NULL),
(50, 13, 'https://lorempixel.com/640/480/cats/?46606', NULL, NULL),
(51, 14, 'https://lorempixel.com/640/480/cats/?28151', NULL, NULL),
(52, 14, 'https://lorempixel.com/640/480/cats/?12919', NULL, NULL),
(53, 14, 'https://lorempixel.com/640/480/cats/?46318', NULL, NULL),
(54, 15, 'https://lorempixel.com/640/480/cats/?96128', NULL, NULL),
(55, 15, 'https://lorempixel.com/640/480/cats/?29842', NULL, NULL),
(56, 15, 'https://lorempixel.com/640/480/cats/?17676', NULL, NULL),
(57, 15, 'https://lorempixel.com/640/480/cats/?41467', NULL, NULL),
(58, 16, 'https://lorempixel.com/640/480/cats/?23140', NULL, NULL),
(59, 16, 'https://lorempixel.com/640/480/cats/?84316', NULL, NULL),
(60, 16, 'https://lorempixel.com/640/480/cats/?55984', NULL, NULL),
(61, 17, 'https://lorempixel.com/640/480/cats/?46900', NULL, NULL),
(62, 17, 'https://lorempixel.com/640/480/cats/?49131', NULL, NULL),
(63, 17, 'https://lorempixel.com/640/480/cats/?57927', NULL, NULL),
(64, 18, 'https://lorempixel.com/640/480/cats/?16479', NULL, NULL),
(65, 18, 'https://lorempixel.com/640/480/cats/?32847', NULL, NULL),
(66, 18, 'https://lorempixel.com/640/480/cats/?57846', NULL, NULL),
(67, 18, 'https://lorempixel.com/640/480/cats/?77881', NULL, NULL),
(68, 19, 'https://lorempixel.com/640/480/cats/?10022', NULL, NULL),
(69, 19, 'https://lorempixel.com/640/480/cats/?43867', NULL, NULL),
(70, 19, 'https://lorempixel.com/640/480/cats/?38764', NULL, NULL),
(71, 19, 'https://lorempixel.com/640/480/cats/?39340', NULL, NULL),
(72, 19, 'https://lorempixel.com/640/480/cats/?18785', NULL, NULL),
(73, 20, 'https://lorempixel.com/640/480/cats/?32524', NULL, NULL),
(74, 20, 'https://lorempixel.com/640/480/cats/?72784', NULL, NULL),
(75, 20, 'https://lorempixel.com/640/480/cats/?88463', NULL, NULL),
(76, 20, 'https://lorempixel.com/640/480/cats/?96818', NULL, NULL),
(77, 21, 'https://lorempixel.com/640/480/cats/?82362', NULL, NULL),
(78, 21, 'https://lorempixel.com/640/480/cats/?36685', NULL, NULL),
(79, 21, 'https://lorempixel.com/640/480/cats/?31232', NULL, NULL),
(80, 21, 'https://lorempixel.com/640/480/cats/?67896', NULL, NULL),
(81, 22, 'https://lorempixel.com/640/480/cats/?96932', NULL, NULL),
(82, 22, 'https://lorempixel.com/640/480/cats/?57154', NULL, NULL),
(83, 22, 'https://lorempixel.com/640/480/cats/?97056', NULL, NULL),
(84, 22, 'https://lorempixel.com/640/480/cats/?41302', NULL, NULL),
(85, 22, 'https://lorempixel.com/640/480/cats/?37458', NULL, NULL),
(86, 23, 'https://lorempixel.com/640/480/cats/?85766', NULL, NULL),
(87, 23, 'https://lorempixel.com/640/480/cats/?58748', NULL, NULL),
(88, 23, 'https://lorempixel.com/640/480/cats/?35805', NULL, NULL),
(89, 24, 'https://lorempixel.com/640/480/cats/?53471', NULL, NULL),
(90, 24, 'https://lorempixel.com/640/480/cats/?23126', NULL, NULL),
(91, 24, 'https://lorempixel.com/640/480/cats/?11787', NULL, NULL),
(92, 24, 'https://lorempixel.com/640/480/cats/?60390', NULL, NULL),
(93, 24, 'https://lorempixel.com/640/480/cats/?19663', NULL, NULL),
(94, 25, 'https://lorempixel.com/640/480/cats/?33367', NULL, NULL),
(95, 25, 'https://lorempixel.com/640/480/cats/?98762', NULL, NULL),
(96, 25, 'https://lorempixel.com/640/480/cats/?87512', NULL, NULL),
(97, 25, 'https://lorempixel.com/640/480/cats/?61615', NULL, NULL),
(98, 26, 'https://lorempixel.com/640/480/cats/?11866', NULL, NULL),
(99, 26, 'https://lorempixel.com/640/480/cats/?53197', NULL, NULL),
(100, 26, 'https://lorempixel.com/640/480/cats/?28940', NULL, NULL),
(101, 26, 'https://lorempixel.com/640/480/cats/?24319', NULL, NULL),
(102, 26, 'https://lorempixel.com/640/480/cats/?96222', NULL, NULL),
(103, 27, 'https://lorempixel.com/640/480/cats/?51850', NULL, NULL),
(104, 27, 'https://lorempixel.com/640/480/cats/?76288', NULL, NULL),
(105, 27, 'https://lorempixel.com/640/480/cats/?61211', NULL, NULL),
(106, 27, 'https://lorempixel.com/640/480/cats/?27911', NULL, NULL),
(107, 28, 'https://lorempixel.com/640/480/cats/?20731', NULL, NULL),
(108, 28, 'https://lorempixel.com/640/480/cats/?51063', NULL, NULL),
(109, 28, 'https://lorempixel.com/640/480/cats/?82564', NULL, NULL),
(110, 29, 'https://lorempixel.com/640/480/cats/?89182', NULL, NULL),
(111, 29, 'https://lorempixel.com/640/480/cats/?59597', NULL, NULL),
(112, 29, 'https://lorempixel.com/640/480/cats/?97357', NULL, NULL),
(113, 30, 'https://lorempixel.com/640/480/cats/?23119', NULL, NULL),
(114, 30, 'https://lorempixel.com/640/480/cats/?47740', NULL, NULL),
(115, 30, 'https://lorempixel.com/640/480/cats/?35375', NULL, NULL),
(116, 31, 'https://lorempixel.com/640/480/cats/?85442', NULL, NULL),
(117, 31, 'https://lorempixel.com/640/480/cats/?75400', NULL, NULL),
(118, 31, 'https://lorempixel.com/640/480/cats/?92437', NULL, NULL),
(119, 32, 'https://lorempixel.com/640/480/cats/?51217', NULL, NULL),
(120, 32, 'https://lorempixel.com/640/480/cats/?84632', NULL, NULL),
(121, 32, 'https://lorempixel.com/640/480/cats/?19840', NULL, NULL),
(122, 33, 'https://lorempixel.com/640/480/cats/?66297', NULL, NULL),
(123, 33, 'https://lorempixel.com/640/480/cats/?76125', NULL, NULL),
(124, 33, 'https://lorempixel.com/640/480/cats/?48280', NULL, NULL),
(125, 34, 'https://lorempixel.com/640/480/cats/?10008', NULL, NULL),
(126, 34, 'https://lorempixel.com/640/480/cats/?56069', NULL, NULL),
(127, 34, 'https://lorempixel.com/640/480/cats/?33208', NULL, NULL),
(128, 34, 'https://lorempixel.com/640/480/cats/?50674', NULL, NULL),
(129, 35, 'https://lorempixel.com/640/480/cats/?30989', NULL, NULL),
(130, 35, 'https://lorempixel.com/640/480/cats/?67180', NULL, NULL),
(131, 35, 'https://lorempixel.com/640/480/cats/?62204', NULL, NULL),
(132, 35, 'https://lorempixel.com/640/480/cats/?94888', NULL, NULL),
(133, 35, 'https://lorempixel.com/640/480/cats/?40690', NULL, NULL),
(134, 36, 'https://lorempixel.com/640/480/cats/?72384', NULL, NULL),
(135, 36, 'https://lorempixel.com/640/480/cats/?47333', NULL, NULL),
(136, 36, 'https://lorempixel.com/640/480/cats/?34049', NULL, NULL),
(137, 36, 'https://lorempixel.com/640/480/cats/?23086', NULL, NULL),
(138, 36, 'https://lorempixel.com/640/480/cats/?53368', NULL, NULL),
(139, 37, 'https://lorempixel.com/640/480/cats/?97320', NULL, NULL),
(140, 37, 'https://lorempixel.com/640/480/cats/?15688', NULL, NULL),
(141, 37, 'https://lorempixel.com/640/480/cats/?19290', NULL, NULL),
(142, 37, 'https://lorempixel.com/640/480/cats/?14295', NULL, NULL),
(143, 37, 'https://lorempixel.com/640/480/cats/?90872', NULL, NULL),
(144, 38, 'https://lorempixel.com/640/480/cats/?96203', NULL, NULL),
(145, 38, 'https://lorempixel.com/640/480/cats/?59453', NULL, NULL),
(146, 38, 'https://lorempixel.com/640/480/cats/?66525', NULL, NULL),
(147, 38, 'https://lorempixel.com/640/480/cats/?77968', NULL, NULL),
(148, 39, 'https://lorempixel.com/640/480/cats/?42720', NULL, NULL),
(149, 39, 'https://lorempixel.com/640/480/cats/?61860', NULL, NULL),
(150, 39, 'https://lorempixel.com/640/480/cats/?56031', NULL, NULL),
(151, 40, 'https://lorempixel.com/640/480/cats/?43305', NULL, NULL),
(152, 40, 'https://lorempixel.com/640/480/cats/?77715', NULL, NULL),
(153, 40, 'https://lorempixel.com/640/480/cats/?96875', NULL, NULL),
(154, 40, 'https://lorempixel.com/640/480/cats/?79975', NULL, NULL),
(155, 41, 'https://lorempixel.com/640/480/cats/?65481', NULL, NULL),
(156, 41, 'https://lorempixel.com/640/480/cats/?77041', NULL, NULL),
(157, 41, 'https://lorempixel.com/640/480/cats/?79734', NULL, NULL),
(158, 42, 'https://lorempixel.com/640/480/cats/?42028', NULL, NULL),
(159, 42, 'https://lorempixel.com/640/480/cats/?97900', NULL, NULL),
(160, 42, 'https://lorempixel.com/640/480/cats/?32792', NULL, NULL),
(161, 42, 'https://lorempixel.com/640/480/cats/?96427', NULL, NULL),
(162, 43, 'https://lorempixel.com/640/480/cats/?18404', NULL, NULL),
(163, 43, 'https://lorempixel.com/640/480/cats/?30561', NULL, NULL),
(164, 43, 'https://lorempixel.com/640/480/cats/?82719', NULL, NULL),
(165, 43, 'https://lorempixel.com/640/480/cats/?54915', NULL, NULL),
(166, 43, 'https://lorempixel.com/640/480/cats/?59557', NULL, NULL),
(167, 44, 'https://lorempixel.com/640/480/cats/?13149', NULL, NULL),
(168, 44, 'https://lorempixel.com/640/480/cats/?62382', NULL, NULL),
(169, 44, 'https://lorempixel.com/640/480/cats/?65684', NULL, NULL),
(170, 44, 'https://lorempixel.com/640/480/cats/?63440', NULL, NULL),
(171, 45, 'https://lorempixel.com/640/480/cats/?70977', NULL, NULL),
(172, 45, 'https://lorempixel.com/640/480/cats/?64695', NULL, NULL),
(173, 45, 'https://lorempixel.com/640/480/cats/?98096', NULL, NULL),
(174, 45, 'https://lorempixel.com/640/480/cats/?99658', NULL, NULL),
(175, 45, 'https://lorempixel.com/640/480/cats/?28580', NULL, NULL),
(176, 46, 'https://lorempixel.com/640/480/cats/?41240', NULL, NULL),
(177, 46, 'https://lorempixel.com/640/480/cats/?26337', NULL, NULL),
(178, 46, 'https://lorempixel.com/640/480/cats/?93630', NULL, NULL),
(179, 46, 'https://lorempixel.com/640/480/cats/?84024', NULL, NULL),
(180, 47, 'https://lorempixel.com/640/480/cats/?99428', NULL, NULL),
(181, 47, 'https://lorempixel.com/640/480/cats/?26891', NULL, NULL),
(182, 47, 'https://lorempixel.com/640/480/cats/?81523', NULL, NULL),
(183, 47, 'https://lorempixel.com/640/480/cats/?85579', NULL, NULL),
(184, 47, 'https://lorempixel.com/640/480/cats/?91038', NULL, NULL),
(185, 48, 'https://lorempixel.com/640/480/cats/?82464', NULL, NULL),
(186, 48, 'https://lorempixel.com/640/480/cats/?89880', NULL, NULL),
(187, 48, 'https://lorempixel.com/640/480/cats/?96576', NULL, NULL),
(188, 49, 'https://lorempixel.com/640/480/cats/?57634', NULL, NULL),
(189, 49, 'https://lorempixel.com/640/480/cats/?56556', NULL, NULL),
(190, 49, 'https://lorempixel.com/640/480/cats/?93115', NULL, NULL),
(191, 49, 'https://lorempixel.com/640/480/cats/?13609', NULL, NULL),
(192, 50, 'https://lorempixel.com/640/480/cats/?98587', NULL, NULL),
(193, 50, 'https://lorempixel.com/640/480/cats/?52770', NULL, NULL),
(194, 50, 'https://lorempixel.com/640/480/cats/?66402', NULL, NULL),
(195, 51, 'https://lorempixel.com/640/480/cats/?85831', NULL, NULL),
(196, 51, 'https://lorempixel.com/640/480/cats/?76195', NULL, NULL),
(197, 51, 'https://lorempixel.com/640/480/cats/?72317', NULL, NULL),
(198, 52, 'https://lorempixel.com/640/480/cats/?19033', NULL, NULL),
(199, 52, 'https://lorempixel.com/640/480/cats/?87591', NULL, NULL),
(200, 52, 'https://lorempixel.com/640/480/cats/?60897', NULL, NULL),
(201, 52, 'https://lorempixel.com/640/480/cats/?54972', NULL, NULL),
(202, 53, 'https://lorempixel.com/640/480/cats/?69178', NULL, NULL),
(203, 53, 'https://lorempixel.com/640/480/cats/?29671', NULL, NULL),
(204, 53, 'https://lorempixel.com/640/480/cats/?91658', NULL, NULL),
(205, 54, 'https://lorempixel.com/640/480/cats/?76412', NULL, NULL),
(206, 54, 'https://lorempixel.com/640/480/cats/?24867', NULL, NULL),
(207, 54, 'https://lorempixel.com/640/480/cats/?54658', NULL, NULL),
(208, 55, 'https://lorempixel.com/640/480/cats/?54009', NULL, NULL),
(209, 55, 'https://lorempixel.com/640/480/cats/?41465', NULL, NULL),
(210, 55, 'https://lorempixel.com/640/480/cats/?51223', NULL, NULL),
(211, 55, 'https://lorempixel.com/640/480/cats/?90484', NULL, NULL),
(212, 56, 'https://lorempixel.com/640/480/cats/?67326', NULL, NULL),
(213, 56, 'https://lorempixel.com/640/480/cats/?61444', NULL, NULL),
(214, 56, 'https://lorempixel.com/640/480/cats/?69381', NULL, NULL),
(215, 57, 'https://lorempixel.com/640/480/cats/?59653', NULL, NULL),
(216, 57, 'https://lorempixel.com/640/480/cats/?77492', NULL, NULL),
(217, 57, 'https://lorempixel.com/640/480/cats/?29601', NULL, NULL),
(218, 57, 'https://lorempixel.com/640/480/cats/?33522', NULL, NULL),
(219, 57, 'https://lorempixel.com/640/480/cats/?96833', NULL, NULL),
(220, 58, 'https://lorempixel.com/640/480/cats/?31175', NULL, NULL),
(221, 58, 'https://lorempixel.com/640/480/cats/?87020', NULL, NULL),
(222, 58, 'https://lorempixel.com/640/480/cats/?29338', NULL, NULL),
(223, 58, 'https://lorempixel.com/640/480/cats/?97502', NULL, NULL),
(224, 58, 'https://lorempixel.com/640/480/cats/?17065', NULL, NULL),
(225, 59, 'https://lorempixel.com/640/480/cats/?36711', NULL, NULL),
(226, 59, 'https://lorempixel.com/640/480/cats/?23487', NULL, NULL),
(227, 59, 'https://lorempixel.com/640/480/cats/?52090', NULL, NULL),
(228, 59, 'https://lorempixel.com/640/480/cats/?25114', NULL, NULL),
(229, 60, 'https://lorempixel.com/640/480/cats/?94806', NULL, NULL),
(230, 60, 'https://lorempixel.com/640/480/cats/?65979', NULL, NULL),
(231, 60, 'https://lorempixel.com/640/480/cats/?16462', NULL, NULL),
(232, 60, 'https://lorempixel.com/640/480/cats/?58719', NULL, NULL),
(233, 60, 'https://lorempixel.com/640/480/cats/?38888', NULL, NULL),
(234, 61, 'https://lorempixel.com/640/480/cats/?43706', NULL, NULL),
(235, 61, 'https://lorempixel.com/640/480/cats/?49139', NULL, NULL),
(236, 61, 'https://lorempixel.com/640/480/cats/?72622', NULL, NULL),
(237, 62, 'https://lorempixel.com/640/480/cats/?91536', NULL, NULL),
(238, 62, 'https://lorempixel.com/640/480/cats/?27182', NULL, NULL),
(239, 62, 'https://lorempixel.com/640/480/cats/?39972', NULL, NULL),
(240, 62, 'https://lorempixel.com/640/480/cats/?97179', NULL, NULL),
(241, 63, 'https://lorempixel.com/640/480/cats/?95300', NULL, NULL),
(242, 63, 'https://lorempixel.com/640/480/cats/?73870', NULL, NULL),
(243, 63, 'https://lorempixel.com/640/480/cats/?76734', NULL, NULL),
(244, 63, 'https://lorempixel.com/640/480/cats/?52520', NULL, NULL),
(245, 63, 'https://lorempixel.com/640/480/cats/?71973', NULL, NULL),
(246, 64, 'https://lorempixel.com/640/480/cats/?71530', NULL, NULL),
(247, 64, 'https://lorempixel.com/640/480/cats/?64561', NULL, NULL),
(248, 64, 'https://lorempixel.com/640/480/cats/?13452', NULL, NULL),
(249, 65, 'https://lorempixel.com/640/480/cats/?15601', NULL, NULL),
(250, 65, 'https://lorempixel.com/640/480/cats/?87968', NULL, NULL),
(251, 65, 'https://lorempixel.com/640/480/cats/?88828', NULL, NULL),
(252, 65, 'https://lorempixel.com/640/480/cats/?89200', NULL, NULL),
(253, 66, 'https://lorempixel.com/640/480/cats/?51062', NULL, NULL),
(254, 66, 'https://lorempixel.com/640/480/cats/?92177', NULL, NULL),
(255, 66, 'https://lorempixel.com/640/480/cats/?48145', NULL, NULL),
(256, 67, 'https://lorempixel.com/640/480/cats/?29025', NULL, NULL),
(257, 67, 'https://lorempixel.com/640/480/cats/?37588', NULL, NULL),
(258, 67, 'https://lorempixel.com/640/480/cats/?47573', NULL, NULL),
(259, 68, 'https://lorempixel.com/640/480/cats/?62921', NULL, NULL),
(260, 68, 'https://lorempixel.com/640/480/cats/?42596', NULL, NULL),
(261, 68, 'https://lorempixel.com/640/480/cats/?24186', NULL, NULL),
(262, 68, 'https://lorempixel.com/640/480/cats/?15940', NULL, NULL),
(263, 69, 'https://lorempixel.com/640/480/cats/?17788', NULL, NULL),
(264, 69, 'https://lorempixel.com/640/480/cats/?10763', NULL, NULL),
(265, 69, 'https://lorempixel.com/640/480/cats/?83058', NULL, NULL),
(266, 69, 'https://lorempixel.com/640/480/cats/?95174', NULL, NULL),
(267, 69, 'https://lorempixel.com/640/480/cats/?86660', NULL, NULL),
(268, 70, 'https://lorempixel.com/640/480/cats/?91763', NULL, NULL),
(269, 70, 'https://lorempixel.com/640/480/cats/?94007', NULL, NULL),
(270, 70, 'https://lorempixel.com/640/480/cats/?28914', NULL, NULL),
(271, 71, 'https://lorempixel.com/640/480/cats/?56913', NULL, NULL),
(272, 71, 'https://lorempixel.com/640/480/cats/?83906', NULL, NULL),
(273, 71, 'https://lorempixel.com/640/480/cats/?67868', NULL, NULL),
(274, 72, 'https://lorempixel.com/640/480/cats/?22942', NULL, NULL),
(275, 72, 'https://lorempixel.com/640/480/cats/?72215', NULL, NULL),
(276, 72, 'https://lorempixel.com/640/480/cats/?17840', NULL, NULL),
(277, 73, 'https://lorempixel.com/640/480/cats/?49262', NULL, NULL),
(278, 73, 'https://lorempixel.com/640/480/cats/?83690', NULL, NULL),
(279, 73, 'https://lorempixel.com/640/480/cats/?80454', NULL, NULL),
(280, 73, 'https://lorempixel.com/640/480/cats/?93506', NULL, NULL),
(281, 74, 'https://lorempixel.com/640/480/cats/?60060', NULL, NULL),
(282, 74, 'https://lorempixel.com/640/480/cats/?76305', NULL, NULL),
(283, 74, 'https://lorempixel.com/640/480/cats/?26573', NULL, NULL),
(284, 74, 'https://lorempixel.com/640/480/cats/?41199', NULL, NULL),
(285, 74, 'https://lorempixel.com/640/480/cats/?92334', NULL, NULL),
(286, 75, 'https://lorempixel.com/640/480/cats/?50670', NULL, NULL),
(287, 75, 'https://lorempixel.com/640/480/cats/?64812', NULL, NULL),
(288, 75, 'https://lorempixel.com/640/480/cats/?78308', NULL, NULL),
(289, 76, 'https://lorempixel.com/640/480/cats/?62819', NULL, NULL),
(290, 76, 'https://lorempixel.com/640/480/cats/?83129', NULL, NULL),
(291, 76, 'https://lorempixel.com/640/480/cats/?32736', NULL, NULL),
(292, 76, 'https://lorempixel.com/640/480/cats/?55558', NULL, NULL),
(293, 77, 'https://lorempixel.com/640/480/cats/?70344', NULL, NULL),
(294, 77, 'https://lorempixel.com/640/480/cats/?89445', NULL, NULL),
(295, 77, 'https://lorempixel.com/640/480/cats/?77880', NULL, NULL),
(296, 77, 'https://lorempixel.com/640/480/cats/?28495', NULL, NULL),
(297, 78, 'https://lorempixel.com/640/480/cats/?49993', NULL, NULL),
(298, 78, 'https://lorempixel.com/640/480/cats/?88527', NULL, NULL),
(299, 78, 'https://lorempixel.com/640/480/cats/?26314', NULL, NULL),
(300, 79, 'https://lorempixel.com/640/480/cats/?32978', NULL, NULL),
(301, 79, 'https://lorempixel.com/640/480/cats/?28861', NULL, NULL),
(302, 79, 'https://lorempixel.com/640/480/cats/?22483', NULL, NULL),
(303, 79, 'https://lorempixel.com/640/480/cats/?22837', NULL, NULL),
(304, 80, 'https://lorempixel.com/640/480/cats/?36945', NULL, NULL),
(305, 80, 'https://lorempixel.com/640/480/cats/?78182', NULL, NULL),
(306, 80, 'https://lorempixel.com/640/480/cats/?35643', NULL, NULL),
(307, 80, 'https://lorempixel.com/640/480/cats/?56801', NULL, NULL),
(308, 81, 'https://lorempixel.com/640/480/cats/?35066', NULL, NULL),
(309, 81, 'https://lorempixel.com/640/480/cats/?56994', NULL, NULL),
(310, 81, 'https://lorempixel.com/640/480/cats/?72359', NULL, NULL),
(311, 81, 'https://lorempixel.com/640/480/cats/?75484', NULL, NULL),
(312, 81, 'https://lorempixel.com/640/480/cats/?36072', NULL, NULL),
(313, 82, 'https://lorempixel.com/640/480/cats/?69415', NULL, NULL),
(314, 82, 'https://lorempixel.com/640/480/cats/?32684', NULL, NULL),
(315, 82, 'https://lorempixel.com/640/480/cats/?83509', NULL, NULL),
(316, 82, 'https://lorempixel.com/640/480/cats/?68163', NULL, NULL),
(317, 83, 'https://lorempixel.com/640/480/cats/?34439', NULL, NULL),
(318, 83, 'https://lorempixel.com/640/480/cats/?12321', NULL, NULL),
(319, 83, 'https://lorempixel.com/640/480/cats/?99543', NULL, NULL),
(320, 84, 'https://lorempixel.com/640/480/cats/?83179', NULL, NULL),
(321, 84, 'https://lorempixel.com/640/480/cats/?37380', NULL, NULL),
(322, 84, 'https://lorempixel.com/640/480/cats/?84763', NULL, NULL),
(323, 85, 'https://lorempixel.com/640/480/cats/?61238', NULL, NULL),
(324, 85, 'https://lorempixel.com/640/480/cats/?63909', NULL, NULL),
(325, 85, 'https://lorempixel.com/640/480/cats/?77036', NULL, NULL),
(326, 85, 'https://lorempixel.com/640/480/cats/?33796', NULL, NULL),
(327, 85, 'https://lorempixel.com/640/480/cats/?58483', NULL, NULL),
(328, 86, 'https://lorempixel.com/640/480/cats/?10900', NULL, NULL),
(329, 86, 'https://lorempixel.com/640/480/cats/?98306', NULL, NULL),
(330, 86, 'https://lorempixel.com/640/480/cats/?52197', NULL, NULL),
(331, 86, 'https://lorempixel.com/640/480/cats/?95751', NULL, NULL),
(332, 87, 'https://lorempixel.com/640/480/cats/?41875', NULL, NULL),
(333, 87, 'https://lorempixel.com/640/480/cats/?41472', NULL, NULL),
(334, 87, 'https://lorempixel.com/640/480/cats/?84127', NULL, NULL),
(335, 87, 'https://lorempixel.com/640/480/cats/?34285', NULL, NULL),
(336, 88, 'https://lorempixel.com/640/480/cats/?39336', NULL, NULL),
(337, 88, 'https://lorempixel.com/640/480/cats/?64044', NULL, NULL),
(338, 88, 'https://lorempixel.com/640/480/cats/?22783', NULL, NULL),
(339, 89, 'https://lorempixel.com/640/480/cats/?29636', NULL, NULL),
(340, 89, 'https://lorempixel.com/640/480/cats/?43731', NULL, NULL),
(341, 89, 'https://lorempixel.com/640/480/cats/?19978', NULL, NULL),
(342, 89, 'https://lorempixel.com/640/480/cats/?88288', NULL, NULL),
(343, 89, 'https://lorempixel.com/640/480/cats/?83141', NULL, NULL),
(344, 90, 'https://lorempixel.com/640/480/cats/?73346', NULL, NULL),
(345, 90, 'https://lorempixel.com/640/480/cats/?96721', NULL, NULL),
(346, 90, 'https://lorempixel.com/640/480/cats/?76491', NULL, NULL),
(347, 90, 'https://lorempixel.com/640/480/cats/?41459', NULL, NULL),
(348, 90, 'https://lorempixel.com/640/480/cats/?21570', NULL, NULL),
(349, 91, 'https://lorempixel.com/640/480/cats/?28548', NULL, NULL),
(350, 91, 'https://lorempixel.com/640/480/cats/?67578', NULL, NULL),
(351, 91, 'https://lorempixel.com/640/480/cats/?28660', NULL, NULL),
(352, 91, 'https://lorempixel.com/640/480/cats/?63472', NULL, NULL),
(353, 92, 'https://lorempixel.com/640/480/cats/?30587', NULL, NULL),
(354, 92, 'https://lorempixel.com/640/480/cats/?79295', NULL, NULL),
(355, 92, 'https://lorempixel.com/640/480/cats/?75003', NULL, NULL),
(356, 92, 'https://lorempixel.com/640/480/cats/?84365', NULL, NULL),
(357, 93, 'https://lorempixel.com/640/480/cats/?69509', NULL, NULL),
(358, 93, 'https://lorempixel.com/640/480/cats/?83933', NULL, NULL),
(359, 93, 'https://lorempixel.com/640/480/cats/?19892', NULL, NULL),
(360, 93, 'https://lorempixel.com/640/480/cats/?41532', NULL, NULL),
(361, 94, 'https://lorempixel.com/640/480/cats/?67116', NULL, NULL),
(362, 94, 'https://lorempixel.com/640/480/cats/?36441', NULL, NULL),
(363, 94, 'https://lorempixel.com/640/480/cats/?16388', NULL, NULL),
(364, 94, 'https://lorempixel.com/640/480/cats/?30963', NULL, NULL),
(365, 95, 'https://lorempixel.com/640/480/cats/?85888', NULL, NULL),
(366, 95, 'https://lorempixel.com/640/480/cats/?22352', NULL, NULL),
(367, 95, 'https://lorempixel.com/640/480/cats/?42291', NULL, NULL),
(368, 95, 'https://lorempixel.com/640/480/cats/?91372', NULL, NULL),
(369, 96, 'https://lorempixel.com/640/480/cats/?59349', NULL, NULL),
(370, 96, 'https://lorempixel.com/640/480/cats/?83747', NULL, NULL),
(371, 96, 'https://lorempixel.com/640/480/cats/?32735', NULL, NULL),
(372, 97, 'https://lorempixel.com/640/480/cats/?87529', NULL, NULL),
(373, 97, 'https://lorempixel.com/640/480/cats/?42776', NULL, NULL),
(374, 97, 'https://lorempixel.com/640/480/cats/?24658', NULL, NULL),
(375, 97, 'https://lorempixel.com/640/480/cats/?36707', NULL, NULL),
(376, 97, 'https://lorempixel.com/640/480/cats/?74194', NULL, NULL),
(377, 98, 'https://lorempixel.com/640/480/cats/?77399', NULL, NULL),
(378, 98, 'https://lorempixel.com/640/480/cats/?61915', NULL, NULL),
(379, 98, 'https://lorempixel.com/640/480/cats/?50838', NULL, NULL),
(380, 98, 'https://lorempixel.com/640/480/cats/?23918', NULL, NULL),
(381, 98, 'https://lorempixel.com/640/480/cats/?25714', NULL, NULL),
(382, 99, 'https://lorempixel.com/640/480/cats/?92140', NULL, NULL),
(383, 99, 'https://lorempixel.com/640/480/cats/?82045', NULL, NULL),
(384, 99, 'https://lorempixel.com/640/480/cats/?35338', NULL, NULL),
(385, 99, 'https://lorempixel.com/640/480/cats/?10732', NULL, NULL),
(386, 99, 'https://lorempixel.com/640/480/cats/?28363', NULL, NULL),
(387, 100, 'https://lorempixel.com/640/480/cats/?70770', NULL, NULL),
(388, 100, 'https://lorempixel.com/640/480/cats/?38965', NULL, NULL),
(389, 100, 'https://lorempixel.com/640/480/cats/?15945', NULL, NULL),
(392, 104, 'images/galleries/pro_104/5c3ab409d5c66.png', '2019-01-12 20:44:09', '2019-01-12 20:44:09'),
(395, 104, 'images/galleries/pro_104/5c3adfaf21275.png', '2019-01-12 23:50:23', '2019-01-12 23:50:23'),
(397, 104, 'images/galleries/pro_104/5c3ae29f408fa.png', '2019-01-13 00:02:55', '2019-01-13 00:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'phucnv', '', 'admin@gmail.com', NULL, 1, '$2y$10$nqckGqzjiEP7BP59WM5oJO6R16EanVVG561vJqxOb6X8WiMo4PJ7K', 'itISWu9O0Y0DxIiYU7t9W4ARsgpkrqrJ2FTGtDEVPMZuW9ChLciMtohAHNXQ', NULL, NULL),
(2, 'chungcc', '', 'moderator@gmail.com', NULL, 2, '$2y$10$r3Mp1VwBhp/HsxpB3VK8yOtw8FwpGskT4vcpPOf4jiv52xcJfVjwe', 'pASVtJ9LtlAX6f6uFgRL9AEgI3p7KkiqVv6eWJekpRKMlULsUkAgG93E1zuQ', NULL, NULL),
(4, 'abc', '', 'abc@gmail.com', NULL, 2, '$2y$10$nqckGqzjiEP7BP59WM5oJO6R16EanVVG561vJqxOb6X8WiMo4PJ7K', NULL, NULL, NULL),
(5, 'member', '', 'member@gmail.com', NULL, 2, '$2y$10$nqckGqzjiEP7BP59WM5oJO6R16EanVVG561vJqxOb6X8WiMo4PJ7K', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`cate_name`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`invoice_id`,`product_id`);

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
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
