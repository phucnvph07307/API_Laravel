-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 07:37 PM
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
(1, 'Un Category', NULL, '<p><strong>Đây là danh mục mặc định</strong></p>', '2020-08-11 06:59:40', '2020-08-11 07:01:01', -1),
(31, 'Men', NULL, '<p><strong>Các sản phẩm dành cho nam giới ạ</strong></p>', '2020-08-09 07:26:14', '2020-08-09 10:15:02', -1),
(32, 'WOMEN', NULL, '<p><strong>Các sản phẩm danhc cho nữ giới</strong></p>', '2020-08-09 07:26:41', '2020-08-09 07:26:41', -1),
(33, 'Children', NULL, '<p>Dành cho trẻ em</p>', '2020-08-09 07:27:21', '2020-08-09 07:27:21', -1),
(34, 'Kids', NULL, '<p>Trẻ em&nbsp;</p>', '2020-08-09 07:27:39', '2020-08-09 07:27:39', -1),
(35, 'Quan Nu', NULL, '<p>cách loại <strong>quần nữ giới</strong></p>', '2020-08-09 07:28:35', '2020-08-09 07:29:32', -1),
(36, 'Ao', NULL, '<p>Các loại váy</p>', '2020-08-09 07:28:48', '2020-08-09 07:28:48', -1),
(37, 'Quan Nam', NULL, '<p>CÁC LẠI QUAN NAM</p>', '2020-08-09 07:29:10', '2020-08-09 07:29:10', -1),
(41, 'My Pham', NULL, '<p>Các loại mỹ phẩm cao cấp</p>', '2020-08-09 07:32:28', '2020-08-09 07:32:28', -1),
(43, 'Giay', NULL, '<p>GIẦY THỂ THAO</p>', '2020-08-09 07:33:17', '2020-08-09 07:33:17', -1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `message`, `created_at`, `updated_at`) VALUES
(13, 'admin@gmail.com', 'liên hệ 09851013322', '2020-08-11 08:20:23', '2020-08-11 08:20:23'),
(14, 'phuc@gmail.com', 'ok bạn', '2020-08-11 08:20:38', '2020-08-11 08:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) UNSIGNED NOT NULL,
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
(7, 'Nguyen Van Phuc', '0342525777', 'phucnv@gmal.com', 'hanoi, viet nam', 'cảm ơn shop !', 2283, 1, '2020-08-09 09:46:57', '2020-08-09 09:46:57'),
(8, 'Hieu Pham', '0985101322', 'admin@gmail.com', 'hanoi, viet nam', 'ok ạ', 2190, 1, '2020-08-09 09:48:13', '2020-08-09 09:48:13'),
(9, 'Long Nguyen', '0342525777', 'long@gmail.com', 'hanoi, viet nam', 'ok ạ', 99, 1, '2020-08-09 10:02:51', '2020-08-09 10:02:51'),
(10, 'Nam Nguyen', '0985101322', 'nam@gmail.com', 'hanoi, viet nam', 'ok ạ', 99, 1, '2020-08-09 19:35:22', '2020-08-09 19:35:22');

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
(7, 141, 3, 99, '2020-08-09 09:47:10', '2020-08-09 09:47:10'),
(7, 142, 4, 99, '2020-08-09 09:47:14', '2020-08-09 09:47:14'),
(7, 143, 3, 150, '2020-08-09 09:47:16', '2020-08-09 09:47:16'),
(7, 144, 2, 80, '2020-08-09 09:47:19', '2020-08-09 09:47:19'),
(7, 146, 2, 150, '2020-08-09 09:47:23', '2020-08-09 09:47:23'),
(7, 150, 2, 190, '2020-08-09 09:47:28', '2020-08-09 09:47:28'),
(7, 153, 3, 100, '2020-08-09 09:47:32', '2020-08-09 09:47:32'),
(8, 154, 1, 190, '2020-08-09 09:48:14', '2020-08-09 09:48:14'),
(8, 155, 1, 2000, '2020-08-09 09:48:18', '2020-08-09 09:48:18'),
(9, 142, 1, 99, '2020-08-09 10:02:52', '2020-08-09 10:02:52'),
(10, 141, 1, 99, '2020-08-09 19:35:23', '2020-08-09 19:35:23');

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
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `description`, `detail`, `created_at`, `updated_at`) VALUES
(1, '8 Inspiring Ways to Wear Dresses in the Winter', 'data:image/png;base64,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', 'fghf', 'Người hâm mộ không ngại chi nhiều tiền để có thể diện đồ đôi cùng các thành viên nhóm BTS.\r\nJungKook mac ao Louis Vuitton anh 1\r\nTối 10/8 lúc 22h (giờ Việt Nam), BTS đăng tải bộ hình teaser cho sản phẩm mới. Đúng như tên gọi \"thánh sold out\", chiếc áo khoác Denim Zip Through Hoodie của thương hiệu Louis Vuitton mà Jungkook diện nhanh chóng được bán hết chỉ sau hơn 2 giờ. Sản phẩm có giá 2.350 USD hết tất cả size tại 16 quốc gia. Điều này một lần nữa chứng minh mức độ nổi tiếng của em út BTS là \"không phải dạng vừa\". Ảnh: @bts.wearing.\r\nJungKook mac ao Louis Vuitton anh 2\r\nPhụ kiện tạo nên điểm nhấn cho trang phục denim của Jungkook chính là vòng cổ với họa tiết lạ mắt có giá bán hơn 202 USD. Ảnh: @bangtan_outfit.\r\nJungKook mac ao Louis Vuitton anh 3\r\nCũng diện set denim nhưng giọng ca chính của BTS chọn gam màu nhạt hơn với điểm nhấn màu sắc nổi bật ở túi áo, cổ áo và thân quần. Để tổng thể hài hòa, không bị chói mắt, Jimin kết hợp cùng áo phông loang màu trắng xanh cùng dây chuyền bản nhỏ. Tổng set đồ của anh được bán với giá hơn 1.454 USD. Ảnh: @bangtan_outfit.\r\nJungKook mac ao Louis Vuitton anh 4\r\nSuga cũng \"rơi vào trường hợp tương tự\" em út JungKook khi sản phẩm lập tức sold out ngay khi bộ ảnh tung ra. Chiếc áo 1.280 USD có tên Leaf Denim Baseball Shirt được ARMY (tên fanclub của BTS) nhanh chóng săn lùng và đặt hàng hết các size. Ảnh: @bts.wearing.\r\nJungKook mac ao Louis Vuitton anh 5\r\nThuộc top 5 gương mặt đẹp trai nhất thế giới, V không làm người hâm mộ thất vọng khi xuất hiện với hình ảnh lãng tử cùng kiểu tóc mullet nâu vàng. Những món phụ kiện được giọng ca sinh năm 1995 diện thường có họa tiết cách điệu, độc đáo. Trên hình, vòng cổ và hoa tai có màu sắc rực rỡ với giá thành 91 USD là minh chứng cho điều đó. Ảnh: @bangtan_outfit.\r\nJungKook mac ao Louis Vuitton anh 6\r\nSau khi bức ảnh teaser được đăng tải, từ khóa tìm kiếm về RM và màu tóc của anh nhanh chóng lên top thịnh hành. Nam thần tượng chia tóc theo tỷ lệ 7:3, vuốt ngược ra phía sau, đồng thời giữ một phần tóc phía trước tạo điểm nhấn lịch lãm. Món phụ kiện vòng cổ màu bạc nhóm trưởng BTS đeo có giá 150 USD đơn giản nhưng không kém phần sành điệu. Ảnh: @bangtan_outfit.', '2020-08-11 17:00:00', NULL),
(2, 'Áo khoác Louis Vuitton 2.350 USD cháy hàng nhờ Jungkook', 'data:image/jpeg;base64,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', 'fds', 'Người hâm mộ không ngại chi nhiều tiền để có thể diện đồ đôi cùng các thành viên nhóm BTS.\r\nJungKook mac ao Louis Vuitton anh 1\r\nTối 10/8 lúc 22h (giờ Việt Nam), BTS đăng tải bộ hình teaser cho sản phẩm mới. Đúng như tên gọi \"thánh sold out\", chiếc áo khoác Denim Zip Through Hoodie của thương hiệu Louis Vuitton mà Jungkook diện nhanh chóng được bán hết chỉ sau hơn 2 giờ. Sản phẩm có giá 2.350 USD hết tất cả size tại 16 quốc gia. Điều này một lần nữa chứng minh mức độ nổi tiếng của em út BTS là \"không phải dạng vừa\". Ảnh: @bts.wearing.\r\nJungKook mac ao Louis Vuitton anh 2\r\nPhụ kiện tạo nên điểm nhấn cho trang phục denim của Jungkook chính là vòng cổ với họa tiết lạ mắt có giá bán hơn 202 USD. Ảnh: @bangtan_outfit.\r\nJungKook mac ao Louis Vuitton anh 3\r\nCũng diện set denim nhưng giọng ca chính của BTS chọn gam màu nhạt hơn với điểm nhấn màu sắc nổi bật ở túi áo, cổ áo và thân quần. Để tổng thể hài hòa, không bị chói mắt, Jimin kết hợp cùng áo phông loang màu trắng xanh cùng dây chuyền bản nhỏ. Tổng set đồ của anh được bán với giá hơn 1.454 USD. Ảnh: @bangtan_outfit.\r\nJungKook mac ao Louis Vuitton anh 4\r\nSuga cũng \"rơi vào trường hợp tương tự\" em út JungKook khi sản phẩm lập tức sold out ngay khi bộ ảnh tung ra. Chiếc áo 1.280 USD có tên Leaf Denim Baseball Shirt được ARMY (tên fanclub của BTS) nhanh chóng săn lùng và đặt hàng hết các size. Ảnh: @bts.wearing.\r\nJungKook mac ao Louis Vuitton anh 5\r\nThuộc top 5 gương mặt đẹp trai nhất thế giới, V không làm người hâm mộ thất vọng khi xuất hiện với hình ảnh lãng tử cùng kiểu tóc mullet nâu vàng. Những món phụ kiện được giọng ca sinh năm 1995 diện thường có họa tiết cách điệu, độc đáo. Trên hình, vòng cổ và hoa tai có màu sắc rực rỡ với giá thành 91 USD là minh chứng cho điều đó. Ảnh: @bangtan_outfit.\r\nJungKook mac ao Louis Vuitton anh 6\r\nSau khi bức ảnh teaser được đăng tải, từ khóa tìm kiếm về RM và màu tóc của anh nhanh chóng lên top thịnh hành. Nam thần tượng chia tóc theo tỷ lệ 7:3, vuốt ngược ra phía sau, đồng thời giữ một phần tóc phía trước tạo điểm nhấn lịch lãm. Món phụ kiện vòng cổ màu bạc nhóm trưởng BTS đeo có giá 150 USD đơn giản nhưng không kém phần sành điệu. Ảnh: @bangtan_outfit.', '2020-08-04 17:00:00', NULL);

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
  `quantity` int(11) DEFAULT '0',
  `price_sale` int(11) NOT NULL DEFAULT '0',
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `star` double(8,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `cate_id`, `price`, `quantity`, `price_sale`, `short_desc`, `detail`, `star`, `status`, `created_at`, `updated_at`, `views`) VALUES
(141, 'Ao Phong Unisex', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F5ts20s005-sk010-m-.jpg?alt=media&token=7a093167-e454-484e-bb93-8d22994105c5', 36, 100, 4000, 99, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/catalog/product/view/id/211005/s/ao-phong-unisex-nguoi-lon-5ts20s005/category/164/#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông unisex người lớn</p><p><a href=\"https://canifa.com/catalog/product/view/id/211005/s/ao-phong-unisex-nguoi-lon-5ts20s005/category/164/#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 178cm<br>Cân nặng: 72kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 07:46:42', '2020-08-09 07:46:42', 1),
(142, 'Ao Phong Red', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F8ts19s076-sr133-m-4.jpg?alt=media&token=95aaedeb-dab6-4465-b4fe-2edbda27adf9', 32, 123, 200, 99, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 07:47:54', '2020-08-09 08:02:51', 1),
(143, 'Ao Phong Nu 03', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F6ts19a003-sy126-33_-_copy.jpg?alt=media&token=95126a79-a9eb-48d7-9fd0-96747d21d9d6', 32, 200, 200, 150, '<p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 07:49:23', '2020-08-09 08:08:51', 1),
(144, 'Ao Phong Unisex 2', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F5ts20s005-sk010-m-.jpg?alt=media&token=e69f1a6c-78b3-4bf8-9809-91540500240d', 33, 150, 300, 80, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 07:50:36', '2020-08-09 08:09:58', 1),
(145, 'Ao Phong Unisex 1', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F8ts20s041-sw001-m-.jpg?alt=media&token=e800f106-57fa-4dc2-aff3-b5567172a576', 36, 120, 2000, 100, '<p><strong>Phù hợp mặc mùa hè. Kiểu dáng đơn giản, năng động&nbsp;</strong></p>', '<p><a href=\"https://canifa.com/catalog/product/view/id/192560/s/ao-phong-unisex-nguoi-lon-8ts19s076/category/99/#product-detail-tab-content-1\">MÔ TẢ</a></p><p>- Áo phông chất liệu cotton trơn.<br>&nbsp;</p><p><a href=\"https://canifa.com/catalog/product/view/id/192560/s/ao-phong-unisex-nguoi-lon-8ts19s076/category/99/#product-detail-tab-content-5\">HOÀN CẢNH SỬ DỤNG</a></p><p>Phù hợp mặc mùa hè. Kiểu dáng đơn giản, năng động . Thích hợp mặc nhiều hoàn cảnh. Kết hợp với quần sóoc, jeans…với giày thể thao<br>&nbsp;</p><p><a href=\"https://canifa.com/catalog/product/view/id/192560/s/ao-phong-unisex-nguoi-lon-8ts19s076/category/99/#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p>100% cotton<br>&nbsp;</p><p><a href=\"https://canifa.com/catalog/product/view/id/192560/s/ao-phong-unisex-nguoi-lon-8ts19s076/category/99/#product-detail-tab-content-3\">HƯỚNG DẪN SỬ DỤNG</a></p><p>Giặt máy chế độ nhẹ nhàng, ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát<br>Sấy thùng, chế độ nhẹ nhàng.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</p>', 0.00, 1, '2020-08-09 07:52:43', '2020-08-09 08:09:48', 1),
(146, 'Ao Phong White', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F8ts19s076-sy122--2.jpg?alt=media&token=4085747e-aaa6-45aa-a9f0-942d699f5547', 36, 200, 200, 150, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 07:58:33', '2020-08-09 08:03:55', 1),
(147, 'Ao Phong Nu 01', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F6ts19a001-sr014-34.jpg?alt=media&token=2c0996a0-c01f-4a49-9798-9ee37b29720e', 32, 100, 200, 90, '<p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 08:06:55', '2020-08-09 08:06:55', 1),
(148, 'Ao Phong Nu 02', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F6ts19a002-sb066-34.jpg?alt=media&token=1d20ea46-d8fb-402d-a67a-7162d2cbf29b', 32, 120, 300, 100, '<p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 08:07:48', '2020-08-09 08:07:48', 1),
(149, 'Quan Short', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F8bs20s002-sj420-30-.jpg?alt=media&token=6d973962-8dc2-4fbf-b361-ef1ab1e8b71d', 31, 200, 2000, 199, '<p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p>', '<p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Quần sóoc trơn, chất liệu cotton pha.<br>Phom regular, dáng lửng.<br>Túi chéo.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-5\">HOÀN CẢNH SỬ DỤNG</a></p><p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p>55% linen 45% cotton.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-3\">HƯỚNG DẪN SỬ DỤNG</a></p><p>Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mátSấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc quần size: 30</p>', 0.00, 1, '2020-08-09 08:12:59', '2020-08-09 08:12:59', 1),
(150, 'Quan Short Kaki', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F8bs20s011-sg072-l-.jpg?alt=media&token=a5f6a0db-b84f-49e9-8062-137f712f7d8e', 31, 200, 800, 190, '<p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p>', '<p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Quần sóoc trơn, chất liệu cotton pha.<br>Phom regular, dáng lửng.<br>Túi chéo.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-5\">HOÀN CẢNH SỬ DỤNG</a></p><p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p>55% linen 45% cotton.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-3\">HƯỚNG DẪN SỬ DỤNG</a></p><p>Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mátSấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc quần size: 30</p>', 0.00, 1, '2020-08-09 08:13:42', '2020-08-09 08:13:42', 1),
(151, 'Quan Short Kaki 01', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F8bs20s015-sg265-m-12.jpg?alt=media&token=54ee27af-a711-4d13-8b15-dbb650e5c7ae', 31, 200, 2222, 180, '<p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p>', '<p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Quần sóoc trơn, chất liệu cotton pha.<br>Phom regular, dáng lửng.<br>Túi chéo.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-5\">HOÀN CẢNH SỬ DỤNG</a></p><p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p>55% linen 45% cotton.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-3\">HƯỚNG DẪN SỬ DỤNG</a></p><p>Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mátSấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc quần size: 30</p>', 0.00, 1, '2020-08-09 08:14:50', '2020-08-09 08:14:50', 1),
(152, 'Quan Short Kaki 02', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2F8bs20s020-sj109-30-.jpg?alt=media&token=8a18d8d2-b5d8-4ccb-af44-38e0a575b814', 31, 300, 200, 280, '<p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p>', '<p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Quần sóoc trơn, chất liệu cotton pha.<br>Phom regular, dáng lửng.<br>Túi chéo.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-5\">HOÀN CẢNH SỬ DỤNG</a></p><p>Đơn giản, thoải mái, phù hợp nhiều hoàn cảnh.<br>Thích hợp mặc quanh năm.<br>Có thể kết hợp với áo phông…với sandal, giày thể thao…</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p>55% linen 45% cotton.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-3\">HƯỚNG DẪN SỬ DỤNG</a></p><p>Giặt máy ở nhiệt độ thường.<br>Không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mátSấy khô ở nhiệt độ thấp.<br>Là ở nhiệt độ trung bình 150 độ C.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí.</p><p><a href=\"https://canifa.com/catalog/product/view/id/209111/s/quan-shorts-nam-8bs20s015/category/581/#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 182cm<br>Cân nặng: 71kg<br>Mặc quần size: 30</p>', 0.00, 1, '2020-08-09 08:15:21', '2020-08-09 08:15:21', 1),
(153, 'Product S', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2Fitem-cart-02.jpg?alt=media&token=5bb2b0fe-c967-4525-9896-9823f7b38240', 43, 200, 1111, 100, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 08:36:32', '2020-08-09 08:36:32', 1),
(154, 'Dong Ho', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2Fproduct-15.jpg?alt=media&token=50e2855c-75ff-4cd7-b28d-8c9d25dec81d', 1, 200, 2000, 190, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 08:37:50', '2020-08-11 07:12:30', 1),
(155, 'Dong Ho XF', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2Fproduct-06.jpg?alt=media&token=baa4aab5-07f9-40bd-a2e3-3bef1e1e24d1', 1, 3000, 20, 2000, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 08:39:30', '2020-08-11 07:12:30', 1),
(156, 'That Lung', 'https://firebasestorage.googleapis.com/v0/b/reactjs-8c7de.appspot.com/o/images%2Fbanner-07.jpg?alt=media&token=f87c373b-2d94-4c5b-b9e0-51b958baad15', 1, 50, 100, 40, '<p>Hiện sản phẩm chỉ còn ở cửa hàng</p>', '<p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-1\">MÔ TẢ</a></p><p>Áo phông chất liệuSingle 95% cotton 5% spandex.<br>Phom dáng Regular fit, cổ tròn, tay ngắn.<br>Hàng basic. Phù hợp mặc quanh năm, thoải mái, dễ dàng.<br>Dễ kết hợp&nbsp; với chân váy, quần denim, khaki, giày thể thao</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-2\">CHẤT LIỆU</a></p><p><strong>95% cotton 5% spandex</strong></p><p>HƯỚNG DẪN SỬ DỤNG</p><p>Giặt máy ở chế độ nhẹ, nhiệt độ thường.<br>không sử dụng hóa chất tẩy có chứa clo.<br>Phơi trong bóng mát.<br>Sấy khô ở nhiệt độ thường.<br>Là ở nhiệt độ thấp 110 độ c.<br>Giặt với sản phẩm cùng màu.<br>Không là lên chi tiết trang trí</p><p><a href=\"https://canifa.com/nu/danh-muc-san-pham/ao-phong-khong-co/ao-phong-nu-co-ban-co-tron-6ts19a001.html#product-detail-tab-content-4\">THÔNG SỐ NGƯỜI MẪU</a></p><p>Chiều cao: 174cm<br>Cân nặng: 48kg<br>Mặc áo size: M</p>', 0.00, 1, '2020-08-09 08:40:23', '2020-08-11 07:12:30', 1);

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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` int(11) DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `role`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'thienth', '', 'admin@gmail.com', NULL, 1, '$2y$10$nqckGqzjiEP7BP59WM5oJO6R16EanVVG561vJqxOb6X8WiMo4PJ7K', 1, 'itISWu9O0Y0DxIiYU7t9W4ARsgpkrqrJ2FTGtDEVPMZuW9ChLciMtohAHNXQ', NULL, NULL),
(2, 'chungcc', '', 'moderator@gmail.com', NULL, 700, '$2y$10$r3Mp1VwBhp/HsxpB3VK8yOtw8FwpGskT4vcpPOf4jiv52xcJfVjwe', 1, 'pASVtJ9LtlAX6f6uFgRL9AEgI3p7KkiqVv6eWJekpRKMlULsUkAgG93E1zuQ', NULL, NULL),
(3, 'member', '', 'member@gmail.com', NULL, 1, '$2y$10$uy21.IAUibmlW1l68bVqxOoNiIrqECbTkdXufUqihT8LMNoe3GIqa', 1, NULL, NULL, NULL),
(4, NULL, NULL, 'phuc@gmail.com', NULL, 1, '$2y$10$.5.oV3HqsIFmHFQDfKmGauec5nUPbs3U2y5a0s.LL0NG9Hw2Ggfry', 1, NULL, '2020-08-03 11:16:19', '2020-08-03 11:16:19');

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
