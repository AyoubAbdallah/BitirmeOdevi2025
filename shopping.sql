-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Nis 2025, 11:37:36
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `shopping`
--
-- You might also want to ensure the database itself has the correct default charset:
-- ALTER DATABASE `shopping` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- (Run this command separately if needed, before importing this dump to a fresh DB)

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-04-02 13:21:18', '03-05-2024 08:27:55 PM');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryDescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'ERKEK', '', '2024-04-18 16:17:37', NULL),
(4, 'KADIN', '', '2024-04-18 16:17:37', ''),
(5, 'ÇOCUK', '', '2024-04-18 16:17:37', ''),
(6, 'Elektronik', '', '2024-04-18 16:17:37', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderStatus` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 2, '2024-05-22 03:01:35', 'Debit / Credit card', 'Delivered'),
(2, 1, '16', 2, '2024-05-22 03:01:35', 'Debit / Credit card', NULL),
(3, 4, '15', 1, '2024-05-23 10:31:52', 'COD', 'in Process'),
(4, 5, '15', 1, '2024-06-04 22:04:45', 'COD', 'Delivered'),
(5, 6, '2', 1, '2025-03-31 16:31:02', 'PayPal', NULL),
(6, 6, '3', 1, '2025-03-31 17:04:47', 'Debit / Credit card', NULL),
(7, 6, '2', 1, '2025-03-31 19:21:50', 'COD', NULL),
(8, 6, '2', 2, '2025-03-31 19:52:49', 'COD', NULL),
(9, 6, '3', 1, '2025-03-31 19:52:49', 'COD', NULL),
(10, 6, '2', 1, '2025-03-31 19:55:59', 'CreditCard', NULL),
(11, 6, '2', 1, '2025-03-31 19:58:36', 'CreditCard', NULL),
(12, 6, '18', 1, '2025-03-31 19:58:36', 'CreditCard', NULL),
(13, 6, '2', 1, '2025-04-01 04:07:19', 'CreditCard', NULL),
(14, 6, '2', 1, '2025-04-01 04:57:22', 'CreditCard', NULL),
(15, 6, '2', 1, '2025-04-01 09:49:50', 'CreditCard', NULL),
(16, 6, '11', 1, '2025-04-01 09:49:50', 'CreditCard', NULL),
(17, 6, '1', 1, '2025-04-01 10:44:12', 'CreditCard', NULL),
(18, 6, '2', 1, '2025-04-01 10:44:12', 'CreditCard', NULL),
(19, 6, '11', 1, '2025-04-01 10:44:12', 'CreditCard', NULL),
(20, 6, '1', 1, '2025-04-01 10:44:22', 'CreditCard', NULL),
(21, 6, '2', 1, '2025-04-01 10:44:22', 'CreditCard', NULL),
(22, 6, '11', 1, '2025-04-01 10:44:22', 'CreditCard', NULL),
(23, 6, '12', 1, '2025-04-01 10:45:06', 'CreditCard', NULL),
(24, 6, '9', 1, '2025-04-01 10:45:47', 'CreditCard', NULL),
(25, 1, '22', 1, '2025-04-01 17:02:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'in Process', 'Item is packed. Ready for dispatched.', '2024-05-22 03:32:29'),
(2, 1, 'Delivered', 'Product is delivered to the customer.', '2024-05-22 03:32:53'),
(3, 3, 'in Process', 'Product is packed. Dispactched soon', '2024-05-23 10:50:53'),
(4, 3, 'in Process', 'Product is in transit.\r\n', '2024-05-23 10:51:13'),
(5, 4, 'in Process', 'Item is packed', '2024-06-04 22:05:26'),
(6, 4, 'in Process', 'In Transit', '2024-06-04 22:05:34'),
(7, 4, 'Delivered', 'Delivered to the customer', '2024-06-04 22:05:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 2, 1, 3, 1, 'ayoubabdallah', 'fdsf', '3123', '2025-04-01 10:15:28'),
(2, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:16:16'),
(3, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:19:42'),
(4, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:20:21'),
(5, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:25:24'),
(6, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:25:47'),
(7, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:26:03'),
(8, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:26:29'),
(9, 3, 5, 1, 4, '123123', '123123', '123123', '2025-04-01 10:42:34'),
(10, 2, 1, 1, 1, 'Ayoub', '123', '123', '2025-04-01 11:42:45'),
(11, 13, 1, 1, 1, 'ayoubabdallah', '123', '123', '2025-04-02 05:14:54'),
(12, 13, 1, 1, 1, 'ayoubabdallah', '123', '123', '2025-04-02 05:14:59'),
(13, 13, 1, 1, 1, 'ayoubabdallah', '123', '123', '2025-04-02 05:16:00'),
(14, 11, 2, 1, 5, '2', '2', '2', '2025-04-02 05:16:49'),
(15, 11, 5, 5, 5, '213', '123', '12312', '2025-04-02 05:17:00'),
(16, 11, 5, 5, 5, '213', '123', '12312', '2025-04-02 05:18:43'),
(17, 11, 5, 5, 5, '213', '123', '12312', '2025-04-02 05:19:08'),
(18, 11, 5, 5, 5, '213', '123', '12312', '2025-04-02 05:19:37'),
(19, 30, 5, 5, 5, 'ayoubabdallah', '123', '213', '2025-04-02 05:21:04'),
(20, 30, 5, 5, 5, 'ayoubabdallah', '123', '213', '2025-04-02 05:22:18'),
(21, 30, 5, 5, 5, 'ayoubabdallah', '123', '213', '2025-04-02 05:24:53'),
(22, 30, 5, 5, 5, 'ayoubabdallah', '123', '213', '2025-04-02 05:25:49');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productCompany` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productImage1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productImage2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productImage3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--
-- (INSERT statements remain the same as provided in the original)
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(11, 6, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2024-04-21 13:54:35', ''),
(13, 6, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">  (15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2024-04-21 13:54:35', ''),
(22, 3, 8, 'ERKEK T-Shirt', 'FullaModa', 200, 250, '<p data-start=\"41\" data-end=\"231\" class=\"\">Bu ti-?irt, gün boyu konfor sunan yumu?ak ve nefes alabilir kuma??yla vazgeçilmez parçan?z olacak! Modern kesimi ve ??k tasar?m?yla hem günlük kullan?ma hem de özel kombinlere uyum sa?lar.</p>\r\n<p data-start=\"233\" data-end=\"363\" class=\"\">? %100 pamuk / yüksek kaliteli kuma?<br data-start=\"269\" data-end=\"272\">\r\n? Nefes alabilir ve terletmez<br data-start=\"301\" data-end=\"304\">\r\n? Unisex, rahat ve ??k tasar?m<br data-start=\"334\" data-end=\"337\">\r\n? Günlük kullan?ma uygun</p>\r\n<p data-start=\"365\" data-end=\"411\" class=\"\">?imdi sipari? verin, tarz?n?z? tamamlay?n! ?????</p>', '1206_1.png', '1448_1.png', 'images (3).png', 50, 'In Stock', '2025-04-01 12:13:16', NULL),
(23, 6, 4, 'i phone 16 pro Max', 'Apple', 90000, 95000, '<p data-start=\"54\" data-end=\"294\" class=\"\">Apple’?n en yeni amiral gemisi <strong data-start=\"85\" data-end=\"106\">iPhone 16 Pro Max</strong>, üstün performans? ve yenilikçi teknolojileriyle fark yarat?yor. Güçlü A18 Bionic çipi, geli?mi? kamera sistemi ve kusursuz tasar?m?yla her an? en iyi ?ekilde ya?aman?z için tasarland?.</p>\r\n<h3 data-start=\"296\" data-end=\"330\" class=\"\">???? <strong data-start=\"303\" data-end=\"328\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"331\" data-end=\"758\" class=\"\">? <strong data-start=\"333\" data-end=\"365\">6.9 inç ProMotion OLED Ekran</strong> – Canl? renkler ve ak?c? deneyim<br data-start=\"398\" data-end=\"401\">\r\n? <strong data-start=\"403\" data-end=\"421\">A18 Bionic Çip</strong> – Üstün h?z ve verimlilik<br data-start=\"447\" data-end=\"450\" data-is-only-node=\"\">\r\n? <strong data-start=\"452\" data-end=\"481\">48 MP Üçlü Kamera Sistemi</strong> – Profesyonel düzeyde foto?raf ve video çekimi<br data-start=\"528\" data-end=\"531\">\r\n? <strong data-start=\"533\" data-end=\"551\">Titanyum Gövde</strong> – ??kl?k ve dayan?kl?l??? bir arada sunar<br data-start=\"593\" data-end=\"596\">\r\n? <strong data-start=\"598\" data-end=\"623\">1 TB’a Kadar Depolama</strong> – Daha fazla alan, daha fazla özgürlük<br data-start=\"662\" data-end=\"665\">\r\n? <strong data-start=\"667\" data-end=\"688\">Geli?mi? Pil Ömrü</strong> – Gün boyu kesintisiz kullan?m<br data-start=\"719\" data-end=\"722\">\r\n? <strong data-start=\"724\" data-end=\"756\">iOS 18 ile Yenilikçi Deneyim</strong></p>\r\n<p data-start=\"760\" data-end=\"829\" class=\"\">?imdi <strong data-start=\"766\" data-end=\"787\">iPhone 16 Pro Max</strong> ile teknolojiye yeni bir boyut kat?n! ?????</p>', 'Apple-iPhone-16-Pro-hero-240909_inline.jpg.large.PNG', 'images.PNG', 'iPhone-16-Side-2-Feature.PNG', 600, 'In Stock', '2025-04-01 12:16:09', NULL),
(24, 6, 7, 'Turbox Tx5194 i5 750 16GB Ram 256GB SSD 4GB', 'Turbox', 6000, 6200, '<p data-start=\"53\" data-end=\"261\" class=\"\">Yüksek performans?, dayan?kl? yap?s? ve modern tasar?m?yla <strong data-start=\"112\" data-end=\"122\">Turbox</strong>, teknoloji tutkunlar?n?n vazgeçilmezi! Günlük i?lerinizden en zorlu görevlerinize kadar her an yan?n?zda olacak güçlü bir deneyim sunar.</p>\r\n<h3 data-start=\"263\" data-end=\"297\" class=\"\">???? <strong data-start=\"270\" data-end=\"295\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"298\" data-end=\"600\" class=\"\">? <strong data-start=\"300\" data-end=\"317\">Güçlü ??lemci</strong> – H?zl? ve ak?c? performans<br data-start=\"345\" data-end=\"348\">\r\n? <strong data-start=\"350\" data-end=\"379\">Yüksek Çözünürlüklü Ekran</strong> – Canl? ve net görüntü kalitesi<br data-start=\"411\" data-end=\"414\" data-is-only-node=\"\">\r\n? <strong data-start=\"416\" data-end=\"444\">Dayan?kl? ve ??k Tasar?m</strong> – Uzun ömürlü kullan?m<br data-start=\"467\" data-end=\"470\">\r\n? <strong data-start=\"472\" data-end=\"500\">Geli?mi? So?utma Sistemi</strong> – Kesintisiz performans<br data-start=\"524\" data-end=\"527\">\r\n? <strong data-start=\"529\" data-end=\"559\">Yüksek Depolama Kapasitesi</strong> – Daha fazla alan, daha fazla özgürlük</p>\r\n<p data-start=\"602\" data-end=\"707\" class=\"\">?ster oyun oynay?n, ister profesyonel çal??malar yap?n, <strong data-start=\"658\" data-end=\"668\">Turbox</strong> size ihtiyac?n?z olan gücü sunar! ????????</p>', 'shopping (3).png', 'shopping (4).png', 'shopping (5).png', 200, 'In Stock', '2025-04-01 12:21:16', NULL),
(25, 6, 4, 'Samsung 25 Ultra', 'Samsung ', 92000, 95000, '<p data-start=\"56\" data-end=\"323\" class=\"\">Samsung’un en yeni amiral gemisi <strong data-start=\"89\" data-end=\"109\">Galaxy S25 Ultra</strong>, s?n?rlar? zorlayan performans?, ola?anüstü kamera sistemi ve yenilikçi tasar?m?yla fark yarat?yor. Hem profesyoneller hem de teknoloji tutkunlar? için geli?tirilen bu cihaz, en üst düzey mobil deneyimi sunuyor.</p>\r\n<h3 data-start=\"325\" data-end=\"359\" class=\"\">???? <strong data-start=\"332\" data-end=\"357\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"360\" data-end=\"892\" class=\"\">? <strong data-start=\"362\" data-end=\"397\">6.9 inç Dynamic AMOLED 2X Ekran</strong> – 120Hz yenileme h?z?yla ultra ak?c? görüntüler<br data-start=\"445\" data-end=\"448\">\r\n? <strong data-start=\"450\" data-end=\"494\">Exynos 2500 / Snapdragon 8 Gen 4 ??lemci</strong> – Üst düzey h?z ve verimlilik<br data-start=\"524\" data-end=\"527\" data-is-only-node=\"\">\r\n? <strong data-start=\"529\" data-end=\"563\">200 MP Geli?mi? Kamera Sistemi</strong> – Profesyonel düzeyde foto?raf ve video çekimi<br data-start=\"610\" data-end=\"613\">\r\n? <strong data-start=\"615\" data-end=\"641\">Periskop Telefoto Lens</strong> – 10x optik zoom ile inan?lmaz detaylar<br data-start=\"681\" data-end=\"684\">\r\n? <strong data-start=\"686\" data-end=\"719\">5000 mAh Pil & 65W H?zl? ?arj</strong> – Gün boyu kesintisiz kullan?m<br data-start=\"750\" data-end=\"753\">\r\n? <strong data-start=\"755\" data-end=\"772\">S Pen Deste?i</strong> – Üretkenli?i en üst seviyeye ç?kar?n<br data-start=\"810\" data-end=\"813\">\r\n? <strong data-start=\"815\" data-end=\"852\">Geli?mi? Yapay Zeka ve One UI 7.0</strong> – Daha ak?ll? ve sezgisel bir deneyim</p>\r\n<p data-start=\"894\" data-end=\"973\" class=\"\"><strong data-start=\"894\" data-end=\"922\">Samsung Galaxy S25 Ultra</strong> ile gücünüzü art?r?n, fark?n?z? ortaya koyun! ????????</p>', 's25-ultra-one-ui-7-img.png', '20251221810-00RRFH-13_600x450.png', 'Samsung-galaxy-S25-Ultra-official-images-1.png', 500, 'In Stock', '2025-04-01 12:24:16', NULL),
(26, 6, 4, 'Redmi Note 14', 'Xiaomi', 6300, 6700, '<p data-start=\"51\" data-end=\"282\" class=\"\">Xiaomi’nin en yeni modeli <strong data-start=\"77\" data-end=\"94\">Redmi Note 14</strong>, güçlü donan?m?, ??k tasar?m? ve geli?mi? özellikleriyle sizi bir üst seviyeye ta??yor. Günlük kullan?mda ak?c?l???, oyun ve multimedya deneyiminde üstün performans? ile fark yarat?yor.</p>\r\n<h3 data-start=\"284\" data-end=\"317\" class=\"\">? <strong data-start=\"290\" data-end=\"315\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"318\" data-end=\"753\" class=\"\">? <strong data-start=\"320\" data-end=\"344\">6.7 inç AMOLED Ekran</strong> – Full HD+ çözünürlük ve 120Hz yenileme h?z?<br data-start=\"389\" data-end=\"392\">\r\n? <strong data-start=\"394\" data-end=\"437\">MediaTek Dimensity / Snapdragon ??lemci</strong> – H?zl? ve ak?c? performans<br data-start=\"465\" data-end=\"468\" data-is-only-node=\"\">\r\n? <strong data-start=\"470\" data-end=\"506\">50 MP Yapay Zeka Destekli Kamera</strong> – Net ve detayl? foto?raflar<br data-start=\"535\" data-end=\"538\">\r\n? <strong data-start=\"540\" data-end=\"583\">5000 mAh Büyük Batarya & 67W H?zl? ?arj</strong> – Gün boyu kullan?m, k?sa sürede ?arj<br data-start=\"621\" data-end=\"624\">\r\n? <strong data-start=\"626\" data-end=\"662\">Android 14 & MIUI Güncellemeleri</strong> – Daha ak?ll? ve sezgisel arayüz<br data-start=\"695\" data-end=\"698\">\r\n? <strong data-start=\"700\" data-end=\"723\">??k ve ?nce Tasar?m</strong> – Estetik ve ergonomik yap?</p>\r\n<p data-start=\"755\" data-end=\"854\" class=\"\">Yüksek performans? uygun fiyatla bulu?turan <strong data-start=\"799\" data-end=\"816\">Redmi Note 14</strong> ile teknolojinin tad?n? ç?kar?n! ????????</p>', '39585-1200x1200.png', '939701583_.png', 'xiaomi-redmi-note-14-pro-5g-2.png', 400, 'In Stock', '2025-04-01 12:26:15', NULL),
(27, 6, 4, 'Redmi Note 14 Pro', 'Xiaomi', 6800, 7000, '<p data-start=\"59\" data-end=\"288\" class=\"\"><strong data-start=\"59\" data-end=\"80\">Redmi Note 14 Pro</strong>, geli?mi? donan?m?, yüksek performans? ve ??k tasar?m?yla dikkat çekiyor. Güçlü i?lemcisi, üstün kamera sistemi ve uzun pil ömrü ile günlük kullan?mdan oyun deneyimine kadar her ihtiyac?n?za cevap veriyor.</p>\r\n<h3 data-start=\"290\" data-end=\"324\" class=\"\">???? <strong data-start=\"297\" data-end=\"322\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"325\" data-end=\"805\" class=\"\">? <strong data-start=\"327\" data-end=\"351\">6.7 inç AMOLED Ekran</strong> – 120Hz yenileme h?z?yla ultra ak?c? deneyim<br data-start=\"396\" data-end=\"399\">\r\n? <strong data-start=\"401\" data-end=\"453\">Snapdragon 7+ Gen 2 / MediaTek Dimensity ??lemci</strong> – Güçlü ve verimli performans<br data-start=\"483\" data-end=\"486\" data-is-only-node=\"\">\r\n? <strong data-start=\"488\" data-end=\"522\">200 MP OIS Destekli Ana Kamera</strong> – Profesyonel düzeyde foto?raf ve video çekimi<br data-start=\"569\" data-end=\"572\">\r\n? <strong data-start=\"574\" data-end=\"612\">5000 mAh Batarya & 120W H?zl? ?arj</strong> – Uzun süre kullan?m, k?sa sürede ?arj<br data-start=\"651\" data-end=\"654\">\r\n? <strong data-start=\"656\" data-end=\"692\">Android 14 & MIUI Güncellemeleri</strong> – Daha ak?ll? ve sezgisel kullan?c? deneyimi<br data-start=\"737\" data-end=\"740\">\r\n? <strong data-start=\"742\" data-end=\"774\">Premium Cam ve Metal Tasar?m</strong> – Hem ??k hem dayan?kl? yap?</p>\r\n<p data-start=\"807\" data-end=\"882\" class=\"\"><strong data-start=\"807\" data-end=\"828\">Redmi Note 14 Pro</strong> ile s?n?rlar? zorlay?n, en iyisini deneyimleyin! ????????</p>', '939707607_.png', 'f08a34061c7580e116112c14faa8374a.png', '962eea644e75d704af5222f7ac9ef1da.png', 400, 'In Stock', '2025-04-01 12:27:32', NULL),
(28, 6, 4, 'i phone 15 pro Max', 'Apple', 80000, 90000, '<p data-start=\"68\" data-end=\"360\" class=\"\">Apple’?n en geli?mi? ak?ll? telefonu <strong data-start=\"105\" data-end=\"126\">iPhone 15 Pro Max</strong>, titanyum gövdesi, güçlü A17 Pro çipi ve profesyonel kamera sistemiyle benzersiz bir deneyim sunuyor. Hem performans? hem de dayan?kl?l???yla fark yaratan bu model, üst düzey bir iPhone deneyimi arayanlar için mükemmel bir seçenek!</p>\r\n<h3 data-start=\"362\" data-end=\"396\" class=\"\">???? <strong data-start=\"369\" data-end=\"394\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"397\" data-end=\"913\" class=\"\">? <strong data-start=\"399\" data-end=\"433\">6.7 inç Super Retina XDR Ekran</strong> – 120Hz ProMotion teknolojisiyle ultra ak?c? görüntüler<br data-start=\"489\" data-end=\"492\">\r\n? <strong data-start=\"494\" data-end=\"509\">A17 Pro Çip</strong> – En güçlü mobil i?lemci ile üst düzey h?z ve verimlilik<br data-start=\"566\" data-end=\"569\" data-is-only-node=\"\">\r\n? <strong data-start=\"571\" data-end=\"610\">48 MP Ana Kamera & 5x Telefoto Lens</strong> – Profesyonel kalitede foto?raf ve video çekimi<br data-start=\"658\" data-end=\"661\">\r\n? <strong data-start=\"663\" data-end=\"681\">Titanyum Gövde</strong> – Daha hafif, daha dayan?kl?, daha ??k<br data-start=\"720\" data-end=\"723\">\r\n? <strong data-start=\"725\" data-end=\"745\">USB-C Ba?lant?s?</strong> – Daha h?zl? veri aktar?m? ve ?arj<br data-start=\"780\" data-end=\"783\">\r\n? <strong data-start=\"785\" data-end=\"806\">Geli?mi? Pil Ömrü</strong> – Gün boyu kesintisiz kullan?m<br data-start=\"837\" data-end=\"840\">\r\n? <strong data-start=\"842\" data-end=\"874\">iOS 17 ile Yenilikçi Deneyim</strong> – Daha ak?ll? ve sezgisel özellikler</p>\r\n<p data-start=\"915\" data-end=\"982\" class=\"\"><strong data-start=\"915\" data-end=\"936\">iPhone 15 Pro Max</strong> ile gücü ve yenili?i avuçlar?n?za al?n! ?????????</p>', 'Apple-iPhone-15-Pro-lineup-hero-230912.jpg.news_app_ed.png', '49084.png', 'iphone-15-pro-gray.png', 500, 'In Stock', '2025-04-01 12:28:58', NULL),
(29, 6, 3, 'AXEN 32 inç 80 Ekran HD', 'AXEN', 2800, 3000, '<p data-start=\"56\" data-end=\"274\" class=\"\"><strong data-start=\"56\" data-end=\"81\">AXEN 32 inç HD LED TV</strong>, uygun fiyat? ve kaliteli görüntü performans?yla ev e?lencesini bir üst seviyeye ta??yor. Kompakt tasar?m?yla oturma odas?, yatak odas? veya mutfak gibi her alanda rahatl?kla kullan?labilir.</p>\r\n<h3 data-start=\"276\" data-end=\"310\" class=\"\">???? <strong data-start=\"283\" data-end=\"308\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"311\" data-end=\"671\" class=\"\">? <strong data-start=\"313\" data-end=\"340\">32 inç (80 cm) HD Ekran</strong> – Net ve canl? görüntü kalitesi<br data-start=\"372\" data-end=\"375\">\r\n? <strong data-start=\"377\" data-end=\"403\">1366x768 HD Çözünürlük</strong> – Daha gerçekçi renkler ve keskin detaylar<br data-start=\"446\" data-end=\"449\" data-is-only-node=\"\">\r\n? <strong data-start=\"451\" data-end=\"476\">LED Panel Teknolojisi</strong> – Daha dü?ük enerji tüketimi ve uzun ömür<br data-start=\"518\" data-end=\"521\">\r\n? <strong data-start=\"523\" data-end=\"555\">Çe?itli Ba?lant? Seçenekleri</strong> – HDMI, USB ve AV giri?leri ile geni? uyumluluk<br data-start=\"603\" data-end=\"606\">\r\n? <strong data-start=\"608\" data-end=\"631\">Dahili Uydu Al?c?s?</strong> – Ekstra cihaz gerektirmeden TV keyfi</p>\r\n<p data-start=\"673\" data-end=\"823\" class=\"\">Kompakt boyutlar?, ??k tasar?m? ve güçlü özellikleriyle <strong data-start=\"729\" data-end=\"751\">AXEN 32” HD LED TV</strong>, hem uygun fiyatl? hem de kaliteli bir televizyon deneyimi sunuyor! ?????</p>', '32-axen-webos.png', 'images (2).png', 'SUNNY-32-FHD-WEBOS-2.0.png', 200, 'In Stock', '2025-04-01 12:31:18', NULL),
(30, 6, 6, 'Acer Aspire 3 A315-24P AMD Ryzen 5 7520 8GB 512GB SSD', 'Acer', 6150, 6500, '<p data-start=\"63\" data-end=\"265\" class=\"\"><strong data-start=\"63\" data-end=\"89\">Acer Aspire 3 A315-24P</strong>, günlük kullan?m, i? ve e?lence için ideal bir dizüstü bilgisayar! Güçlü <strong data-start=\"163\" data-end=\"184\">AMD Ryzen 5 7520U</strong> i?lemcisi, h?zl? <strong data-start=\"202\" data-end=\"215\">512GB SSD</strong> depolamas? ve ??k tasar?m?yla her an yan?n?zda.</p>\r\n<h3 data-start=\"267\" data-end=\"300\" class=\"\">? <strong data-start=\"273\" data-end=\"298\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"301\" data-end=\"699\" class=\"\">? <strong data-start=\"303\" data-end=\"332\">AMD Ryzen 5 7520U ??lemci</strong> – Yüksek performans ve enerji verimlili?i<br data-start=\"374\" data-end=\"377\">\r\n? <strong data-start=\"379\" data-end=\"395\">8GB DDR5 RAM</strong> – H?zl? ve ak?c? çoklu görev deneyimi<br data-start=\"433\" data-end=\"436\" data-is-only-node=\"\">\r\n? <strong data-start=\"438\" data-end=\"456\">512GB NVMe SSD</strong> – H?zl? aç?l?? süreleri ve geni? depolama alan?<br data-start=\"504\" data-end=\"507\">\r\n? <strong data-start=\"509\" data-end=\"535\">15.6 inç Full HD Ekran</strong> – Net ve canl? görüntü kalitesi<br data-start=\"567\" data-end=\"570\">\r\n? <strong data-start=\"572\" data-end=\"597\">?nce ve Hafif Tasar?m</strong> – Kolay ta??nabilirlik, modern görünüm<br data-start=\"636\" data-end=\"639\">\r\n? <strong data-start=\"641\" data-end=\"663\">Windows 11 Deste?i</strong> – Güncel ve ak?c? i?letim sistemi</p>\r\n<p data-start=\"701\" data-end=\"786\" class=\"\">?ster ofiste ister evde, <strong data-start=\"726\" data-end=\"752\">Acer Aspire 3 A315-24P</strong> ile verimlili?inizi art?r?n! ????????</p>', 'shopping (2).png', 'shopping.png', 'shopping3.png', 0, 'In Stock', '2025-04-01 12:32:56', NULL),
(31, 6, 6, 'HP Core i7 10. Nesil', 'HP', 8400, 9500, '<p data-start=\"59\" data-end=\"341\" class=\"\">HP’nin <strong data-start=\"66\" data-end=\"93\">10. Nesil Intel Core i5</strong> i?lemcili dizüstü bilgisayar?, günlük i?lerinizden profesyonel kullan?m?n?za kadar her ihtiyac?n?z? kar??lamak için tasarland?. ??k ve dayan?kl? yap?s?yla uzun ömürlü bir kullan?m sunarken, güçlü donan?m? sayesinde ak?c? bir performans sa?l?yor.</p>\r\n<h3 data-start=\"343\" data-end=\"377\" class=\"\">???? <strong data-start=\"350\" data-end=\"375\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"378\" data-end=\"799\" class=\"\">? <strong data-start=\"380\" data-end=\"415\">Intel Core i5 10. Nesil ??lemci</strong> – Güçlü ve verimli performans<br data-start=\"445\" data-end=\"448\">\r\n? <strong data-start=\"450\" data-end=\"480\">8GB / 16GB RAM Seçenekleri</strong> – Ak?c? ve h?zl? çoklu görev deneyimi<br data-start=\"518\" data-end=\"521\" data-is-only-node=\"\">\r\n? <strong data-start=\"523\" data-end=\"553\">256GB / 512GB SSD Depolama</strong> – H?zl? aç?l?? ve geni? depolama alan?<br data-start=\"592\" data-end=\"595\">\r\n? <strong data-start=\"597\" data-end=\"623\">15.6 inç Full HD Ekran</strong> – Net ve canl? görüntü kalitesi<br data-start=\"655\" data-end=\"658\">\r\n? <strong data-start=\"660\" data-end=\"685\">?nce ve Hafif Tasar?m</strong> – ??k görünüm, kolay ta??nabilirlik<br data-start=\"721\" data-end=\"724\">\r\n? <strong data-start=\"726\" data-end=\"761\">Windows 10 / Windows 11 Deste?i</strong> – Güncel ve güvenli i?letim sistemi</p>\r\n<p data-start=\"801\" data-end=\"902\" class=\"\">Günlük i?leriniz, e?itim veya ofis kullan?m? için <strong data-start=\"851\" data-end=\"875\">HP Core i5 10. Nesil</strong> ile h?z?n?z? art?r?n! ????????</p>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 300, 'In Stock', '2025-04-01 12:48:19', NULL),
(32, 6, 6, 'HP Core i5 7. Nesil', 'HP', 4500, 4700, '<p data-start=\"66\" data-end=\"322\" class=\"\"><strong data-start=\"66\" data-end=\"89\">HP Core i5 7. Nesil</strong> dizüstü bilgisayar?, güçlü i?lemci ve uzun süreli kullan?m için tasarlanm?? dayan?kl? yap?s? ile verimlili?inizi art?r?r. Günlük i?lerinizden multimedya deneyimlerinize kadar tüm ihtiyaçlar?n?za rahatl?kla yan?t verecek bir cihaz.</p>\r\n<h3 data-start=\"324\" data-end=\"357\" class=\"\">? <strong data-start=\"330\" data-end=\"355\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"358\" data-end=\"776\" class=\"\">? <strong data-start=\"360\" data-end=\"394\">Intel Core i5 7. Nesil ??lemci</strong> – Yüksek performans, güçlü çoklu görev yönetimi<br data-start=\"442\" data-end=\"445\">\r\n? <strong data-start=\"447\" data-end=\"458\">8GB RAM</strong> – Ak?c? ve h?zl? çal??ma deneyimi<br data-start=\"492\" data-end=\"495\" data-is-only-node=\"\">\r\n? <strong data-start=\"497\" data-end=\"519\">256GB SSD Depolama</strong> – H?zl? aç?l??lar ve verimli depolama alan?<br data-start=\"563\" data-end=\"566\">\r\n? <strong data-start=\"568\" data-end=\"599\">15.6 inç HD / Full HD Ekran</strong> – Net ve canl? görüntü kalitesi<br data-start=\"631\" data-end=\"634\">\r\n? <strong data-start=\"636\" data-end=\"664\">Dayan?kl? ve ??k Tasar?m</strong> – Uzun ömürlü, ta??nabilir ve ??k<br data-start=\"698\" data-end=\"701\">\r\n? <strong data-start=\"703\" data-end=\"738\">Windows 10 / Windows 11 Deste?i</strong> – Güncel ve güvenli i?letim sistemi</p>\r\n<p data-start=\"778\" data-end=\"843\" class=\"\"><strong data-start=\"778\" data-end=\"801\">HP Core i5 7. Nesil</strong> ile her zaman h?zl? ve verimli olun! ????????</p>', 'lenovo-ideapad-notebook-3.jpeg', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 300, 'In Stock', '2025-04-01 12:49:43', NULL),
(33, 6, 6, 'Acer Aspire 3 A315-24P AMD Ryzen 7 7520 8GB 512GB SSD', 'Acer', 80000, 90000, '<p data-start=\"69\" data-end=\"390\" class=\"\"><strong data-start=\"69\" data-end=\"95\">Acer Aspire 3 A315-24P</strong>, <strong data-start=\"97\" data-end=\"118\">AMD Ryzen 7 7520U</strong> i?lemcisi, <strong data-start=\"130\" data-end=\"142\">32GB RAM</strong> ve <strong data-start=\"146\" data-end=\"157\">2TB SSD</strong> depolama kapasitesi ile en zorlu görevlerde bile kesintisiz bir performans sunuyor. ?ster profesyonel i?ler, ister multimedya içerikleriyle yo?un çal??malar yap?n, bu dizüstü bilgisayar her ihtiyac?n?z? kar??lamak için tasarland?.</p>\r\n<h3 data-start=\"392\" data-end=\"426\" class=\"\">???? <strong data-start=\"399\" data-end=\"424\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"427\" data-end=\"860\" class=\"\">? <strong data-start=\"429\" data-end=\"458\">AMD Ryzen 7 7520U ??lemci</strong> – Yüksek h?z ve güçlü i?lemci ile ak?c? performans<br data-start=\"509\" data-end=\"512\">\r\n? <strong data-start=\"514\" data-end=\"531\">32GB DDR5 RAM</strong> – H?zl? ve çoklu görevlerde üstün verimlilik<br data-start=\"576\" data-end=\"579\" data-is-only-node=\"\">\r\n? <strong data-start=\"581\" data-end=\"601\">2TB SSD Depolama</strong> – Büyük dosyalar, projeler ve oyunlar için devasa alan<br data-start=\"656\" data-end=\"659\">\r\n? <strong data-start=\"661\" data-end=\"687\">15.6 inç Full HD Ekran</strong> – Canl? renkler ve net görüntü kalitesi<br data-start=\"727\" data-end=\"730\">\r\n? <strong data-start=\"732\" data-end=\"755\">?nce ve ??k Tasar?m</strong> – Hafif, ta??nabilir ve ??k d?? görünüm<br data-start=\"795\" data-end=\"798\">\r\n? <strong data-start=\"800\" data-end=\"822\">Windows 11 Deste?i</strong> – Modern ve güvenli i?letim sistemi</p>\r\n<p data-start=\"862\" data-end=\"982\" class=\"\"><strong data-start=\"862\" data-end=\"888\">Acer Aspire 3 A315-24P</strong> ile h?z?n?z? art?r?n, her türlü i?inizi rahatl?kla yap?n ve yüksek performans? ke?fedin! ????????</p>', 'fff8d95ba1b19847668486d6f8d04538 - Kopya.jpg', '8f35abc6d345c30454ddce5a5f10736e.jpg', 'fff8d95ba1b19847668486d6f8d04538.jpg', 600, 'In Stock', '2025-04-01 12:52:35', NULL),
(35, 3, 18, 'Koyu Lacivert Spor Pamuk Denim Ceket Mont', 'Kigili', 2499, 0, '<div>K??ILI PROJECT KOLEKS?YONU</div><div><br></div><div>Klasik denim stilini s?cak kürk dokusuyla bulu?turan Ki??l?, ??kl?k ve konforu bir arada sunuyor. Dayan?kl? denim kuma?? ile zamans?z bir stil sunan Ki??l? Project erkek ceket mont tasar?mlar?, yaka k?sm?ndaki kürk detay? ile serin havalarda ekstra koruma sa?l?yor. Siz de genç ve dinamik bir ??kl?k için Ki??l? Project koleksiyonuna göz gezdirebilirsiniz.</div><div>Kürk yaka ç?kar?labilir.</div><div><br></div><div><br></div><div>Aksesuarlar ürüne dahil de?ildir.</div><div>:%98 Pamuk %2 Elastan</div><div>Yaka Tipi: Kürklü Yaka</div><div>Kuma? Deseni Detayl?: Düz</div><div>Astar Tipi: Astars?z</div><div>Cep Bilgisi: Yandan Cep</div><div>Y?rtmaç Bilgisi: Y?rtmaçs?z</div><div>Pile: Pilesiz</div><div>Kol Özelli?i: Takma Kol</div><div>Tasar?m Özelli?i: ?çi Kürklü</div><div>Kuma? Türü: Dokuma</div><div>Kuma? Zemin Rengi: Koyu Lacivert</div><div>Kuma? Desen Rengi: Koyu Lacivert</div><div>Üretim Yeri: TÜRK?YE</div>', 'f0fccca1-6314-4ae8-b534-9a178d769385_size555x830_quality90_cropCenter.jpg', 'a32c9a59-e565-49c9-84e6-08b350e61469_size350x525_quality90_cropCenter.jpg', '721ea6ee-a992-4a05-99f0-077670cebb49_size350x525_quality90_cropCenter.jpg', 50, 'In Stock', '2025-04-01 13:03:25', NULL),
(36, 3, 16, 'Koyu Antrasit Uzun Kol Bisiklet Yaka 2\'li Modal E?ofman Tak?m?', 'Kigili', 3500, 3700, '<p data-start=\"98\" data-end=\"374\" class=\"\">Yumu?ak modal kuma?? ve modern tasar?m?yla <strong data-start=\"141\" data-end=\"207\">Koyu Antrasit Uzun Kol Bisiklet Yaka 2\'li Modal E?ofman Tak?m?</strong>, hem evde rahatl?kla giyebilece?iniz hem de d??ar?da ??k bir ?ekilde kombinleyebilece?iniz mükemmel bir seçenek. Günlük kullan?mda maksimum rahatl?k ve ??kl??? sunar.</p>\r\n<h3 data-start=\"376\" data-end=\"408\" class=\"\">???? <strong data-start=\"383\" data-end=\"408\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"409\" data-end=\"850\" class=\"\">? <strong data-start=\"411\" data-end=\"434\">Yumu?ak Modal Kuma?</strong> – Hafif, nefes alabilir ve cilde dost<br data-start=\"472\" data-end=\"475\">\r\n? <strong data-start=\"477\" data-end=\"512\">Uzun Kol Bisiklet Yaka Tasar?m?</strong> – ??k ve rahat, her vücut tipine uyum sa?lar<br data-start=\"557\" data-end=\"560\" data-is-only-node=\"\">\r\n? <strong data-start=\"562\" data-end=\"576\">2\'li Tak?m</strong> – Kombin yapman?za gerek kalmadan ??kl??? yakalay?n<br data-start=\"628\" data-end=\"631\">\r\n? <strong data-start=\"633\" data-end=\"655\">Koyu Antrasit Renk</strong> – Zarif ve her tarza uyum sa?layan renk<br data-start=\"695\" data-end=\"698\">\r\n? <strong data-start=\"700\" data-end=\"727\">Esnek Belli Bel Bölgesi</strong> – Gün boyu rahatl?k, hareket özgürlü?ü<br data-start=\"766\" data-end=\"769\">\r\n? <strong data-start=\"771\" data-end=\"793\">??k ve Fonksiyonel</strong> – Hem spor aktiviteleri hem günlük kullan?m için ideal</p>\r\n<p data-start=\"852\" data-end=\"967\" class=\"\"><strong data-start=\"852\" data-end=\"918\">Koyu Antrasit Uzun Kol Bisiklet Yaka 2\'li Modal E?ofman Tak?m?</strong> ile rahatl??? ve ??kl??? bir arada ya?ay?n! ????????</p>', '211248c9-dc23-456b-9913-80ee1dca16e5_size555x830_quality90_cropCenter.jpg', '4a4d9025-0794-47ff-a724-bf7031cfbb75_size350x525_quality90_cropCenter.jpg', '2f86eb6c-2407-45cf-8321-33c3bb9f397a_size350x525_quality90_cropCenter.jpg', 50, 'In Stock', '2025-04-01 13:09:50', NULL),
(37, 3, 30, 'Orta Lacivert Bisiklet Yaka Slim Fit Dar Kesim Desenli Yünlü Triko Kazak', 'Kigili', 650, 800, '<p data-start=\"109\" data-end=\"456\" class=\"\">So?uk havalarda hem ??kl???n?z? hem de rahatl???n?z? koruyabilece?iniz <strong data-start=\"180\" data-end=\"256\">Orta Lacivert Bisiklet Yaka Slim Fit Dar Kesim Desenli Yünlü Triko Kazak</strong>, ince i?çilikle tasarlanm??, kaliteli yünlü kuma?? ile vücudu sararak mükemmel bir fit sunar. Desenli yap?s?, her kombine zarif bir dokunu? katarken, bisiklet yaka tasar?m?yla rahatl?kla giyilebilir.</p>\r\n<h3 data-start=\"458\" data-end=\"490\" class=\"\">???? <strong data-start=\"465\" data-end=\"490\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"491\" data-end=\"850\" class=\"\">? <strong data-start=\"493\" data-end=\"515\">Slim Fit Dar Kesim</strong> – Vücuda oturan ??k bir görünüm<br data-start=\"547\" data-end=\"550\">\r\n? <strong data-start=\"552\" data-end=\"574\">Orta Lacivert Renk</strong> – Her türlü kombinle uyum sa?layan modern renk<br data-start=\"621\" data-end=\"624\" data-is-only-node=\"\">\r\n? <strong data-start=\"626\" data-end=\"652\">Bisiklet Yaka Tasar?m?</strong> – Konforlu, ??k ve pratik kullan?m<br data-start=\"687\" data-end=\"690\">\r\n? <strong data-start=\"692\" data-end=\"715\">Desenli Yünlü Kuma?</strong> – So?uk havalarda s?cak tutan kaliteli ve nefes alabilir yap?<br data-start=\"777\" data-end=\"780\">\r\n? <strong data-start=\"782\" data-end=\"807\">Zarif ve ??k Detaylar</strong> – Hem günlük hem ofis ??kl??? için ideal</p>\r\n<p data-start=\"852\" data-end=\"999\" class=\"\"><strong data-start=\"852\" data-end=\"928\">Orta Lacivert Bisiklet Yaka Slim Fit Dar Kesim Desenli Yünlü Triko Kazak</strong> ile so?uk havalarda hem ??kl???n?z? hem de rahatl???n?z? art?r?n! ????????</p>', '8277a295-b455-4f46-bcc6-2048edae5998_size555x830_quality90_cropCenter.jpg', '55e48e87-0629-4e61-89b0-0f54ee24bb03_size350x525_quality90_cropCenter.jpg', 'f172ccbc-e53a-4c5d-8712-0bca65e72b76_size350x525_quality90_cropCenter.jpg', 70, 'In Stock', '2025-04-01 13:14:12', NULL),
(38, 3, 32, 'Siyah Klasik Tak?m Elbise', 'Kigili', 4500, 5000, '<p data-start=\"62\" data-end=\"325\" class=\"\">Özel günlerden i? hayat?na kadar her ortamda stilinizi tamamlayacak <strong data-start=\"130\" data-end=\"159\">Siyah Klasik Tak?m Elbise</strong>, modern kesimi ve kaliteli kuma??yla fark yarat?yor. ??kl??? ve rahatl??? bir arada sunan bu tak?m elbise, her erke?in dolab?nda olmas? gereken zamans?z bir parça.</p>\r\n<h3 data-start=\"327\" data-end=\"361\" class=\"\">???? <strong data-start=\"334\" data-end=\"359\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"362\" data-end=\"764\" class=\"\">? <strong data-start=\"364\" data-end=\"389\">Klasik ve ??k Tasar?m</strong> – Her ortama uyum sa?layan zarif görünüm<br data-start=\"430\" data-end=\"433\">\r\n? <strong data-start=\"435\" data-end=\"473\">Slim Fit / Regular Fit Seçenekleri</strong> – Vücuda tam oturan kesimlerle kusursuz duru?<br data-start=\"519\" data-end=\"522\" data-is-only-node=\"\">\r\n? <strong data-start=\"524\" data-end=\"555\">Kaliteli ve Dayan?kl? Kuma?</strong> – Uzun ömürlü kullan?m, konforlu giyim deneyimi<br data-start=\"603\" data-end=\"606\">\r\n? <strong data-start=\"608\" data-end=\"646\">Tek Dü?me / Çift Dü?me Seçenekleri</strong> – Kendi tarz?n?za uygun ??k detaylar<br data-start=\"683\" data-end=\"686\">\r\n? <strong data-start=\"688\" data-end=\"714\">Pantolon & Ceket Uyumu</strong> – Profesyonel ve göz al?c? kombinler için ideal</p>\r\n<p data-start=\"766\" data-end=\"861\" class=\"\"><strong data-start=\"766\" data-end=\"795\">Siyah Klasik Tak?m Elbise</strong> ile stilinizi tamamlay?n, her ortamda fark?n?z? ortaya koyun! ?????</p>', 'cd8f6e67-e5fb-4985-885f-bc5d36f8e1d3_size555x830_quality90_cropCenter.jpg', '62394f13-9cd6-4bd9-9061-4ed9ad8f0e73_size350x525_quality90_cropCenter.jpg', 'c56807cf-004a-46c0-a35d-b3511cf1c972_size350x525_quality90_cropCenter.jpg', 250, 'In Stock', '2025-04-01 13:18:38', NULL),
(39, 3, 19, 'Siyah Slim Fit Dar Kesim Likral? Denim Pantolon', 'Kigili', 600, 800, '<p data-start=\"93\" data-end=\"353\" class=\"\">Modern ve ??k tasar?m?yla <strong data-start=\"119\" data-end=\"170\">Siyah Slim Fit Dar Kesim Likral? Denim Pantolon</strong>, hem günlük kullan?m hem de özel kombinler için mükemmel bir seçim! Esnek likral? yap?s? sayesinde gün boyu rahatl?k sunarken, slim fit kesimiyle vücudu kusursuz bir ?ekilde sarar.</p>\r\n<h3 data-start=\"355\" data-end=\"389\" class=\"\">???? <strong data-start=\"362\" data-end=\"387\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"390\" data-end=\"783\" class=\"\">? <strong data-start=\"392\" data-end=\"414\">Slim Fit Dar Kesim</strong> – ??k ve modern bir görünüm sa?lar<br data-start=\"449\" data-end=\"452\">\r\n? <strong data-start=\"454\" data-end=\"477\">Likral? Esnek Kuma?</strong> – Hareket özgürlü?ü sunar, gün boyu konfor sa?lar<br data-start=\"527\" data-end=\"530\" data-is-only-node=\"\">\r\n? <strong data-start=\"532\" data-end=\"556\">Dayan?kl? Denim Yap?</strong> – Uzun ömürlü kullan?m için kaliteli malzeme<br data-start=\"601\" data-end=\"604\">\r\n? <strong data-start=\"606\" data-end=\"620\">Siyah Renk</strong> – Her tarza ve kombine uyum sa?layan zamans?z renk<br data-start=\"671\" data-end=\"674\">\r\n? <strong data-start=\"676\" data-end=\"710\">Günlük ve ??k Kombinlere Uygun</strong> – Spor ayakkab?dan klasik ayakkab?ya kadar her stil ile tamamlanabilir</p>\r\n<p data-start=\"785\" data-end=\"906\" class=\"\">Hem konforlu hem de ??k bir pantolon ar?yorsan?z, <strong data-start=\"835\" data-end=\"886\">Siyah Slim Fit Dar Kesim Likral? Denim Pantolon</strong> tam size göre! ????????</p>', 'c777493d-12d6-4830-b269-b79d5d560cd0_size555x830_quality90_cropCenter.jpg', '142881c5-f249-4b66-839d-98424c2c23ea_size350x525_quality90_cropCenter.jpg', 'fedd674d-f26e-4990-a154-3ce17ac6b253_size350x525_quality90_cropCenter.jpg', 40, 'In Stock', '2025-04-01 13:21:45', NULL),
(40, 3, 19, 'Orta Gri Melanj Slim Fit Dar Kesim Yünlü Beli Lastikli ?pli Çizgili Klasik Kuma? Pantolon', 'Kigili', 400, 500, '<p data-start=\"136\" data-end=\"461\" class=\"\">Modern kesimi, yünlü dokusu ve çizgili tasar?m?yla öne ç?kan <strong data-start=\"197\" data-end=\"290\">Orta Gri Melanj Slim Fit Dar Kesim Yünlü Beli Lastikli ?pli Çizgili Klasik Kuma? Pantolon</strong>, hem klasik hem de sportif kombinlerle mükemmel uyum sa?lar. Esnek beli ve ip detay? sayesinde rahat bir kullan?m sunarken, slim fit kesimiyle ??k bir duru? kazand?r?r.</p>\r\n<h3 data-start=\"463\" data-end=\"497\" class=\"\">???? <strong data-start=\"470\" data-end=\"495\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"498\" data-end=\"960\" class=\"\">? <strong data-start=\"500\" data-end=\"522\">Slim Fit Dar Kesim</strong> – Modern ve zarif bir görünüm sa?lar<br data-start=\"559\" data-end=\"562\">\r\n? <strong data-start=\"564\" data-end=\"579\">Yünlü Kuma?</strong> – So?uk havalarda s?cak tutan, kaliteli ve dayan?kl? yap?<br data-start=\"637\" data-end=\"640\" data-is-only-node=\"\">\r\n? <strong data-start=\"642\" data-end=\"675\">Beli Lastikli ve ?pli Tasar?m</strong> – Maksimum konfor ve ayarlanabilir bel yap?s?<br data-start=\"721\" data-end=\"724\">\r\n? <strong data-start=\"726\" data-end=\"743\">Çizgili Desen</strong> – Klasik ??kl??a hareket katan zarif detay<br data-start=\"786\" data-end=\"789\">\r\n? <strong data-start=\"791\" data-end=\"815\">Orta Gri Melanj Renk</strong> – Her kombine uyum sa?layan ??k ve zamans?z renk<br data-start=\"864\" data-end=\"867\">\r\n? <strong data-start=\"869\" data-end=\"903\">Günlük ve ??k Kombinlere Uygun</strong> – Spor ayakkab? veya klasik ayakkab?yla tamamlanabilir</p>\r\n<p data-start=\"962\" data-end=\"1090\" class=\"\">Hem rahatl??? hem de ??kl??? bir arada arayanlar için <strong data-start=\"1016\" data-end=\"1065\">Orta Gri Melanj Slim Fit Yünlü Kuma? Pantolon</strong> mükemmel bir tercih! ?????</p>', 'dbcfc648-cb5c-4328-be7b-61332e52cf1a_size555x830_quality90_cropCenter.jpg', '23d6113f-e43c-4335-86e7-a3a5bc077b3f_size350x525_quality90_cropCenter.jpg', '6a748897-0476-40e6-b74b-9f2f3419c2f1_size350x525_quality90_cropCenter.jpg', 50, 'In Stock', '2025-04-01 13:26:24', NULL),
(41, 3, 30, 'Orta Bej Bal?kç? Yaka Regular Fit Pamuklu Triko Kazak', 'Kigili', 750, 850, '<p data-start=\"90\" data-end=\"389\" class=\"\">Minimal ve ??k tasar?m?yla dikkat çeken <strong data-start=\"130\" data-end=\"187\">Orta Bej Bal?kç? Yaka Regular Fit Pamuklu Triko Kazak</strong>, so?uk havalarda hem s?cak tutan hem de stilinizi tamamlayan mükemmel bir parçad?r. Yumu?ak pamuklu dokusu sayesinde gün boyu konfor sunarken, bal?kç? yaka detay?yla sofistike bir görünüm kazand?r?r.</p>\r\n<h3 data-start=\"391\" data-end=\"425\" class=\"\">???? <strong data-start=\"398\" data-end=\"423\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"426\" data-end=\"808\" class=\"\">? <strong data-start=\"428\" data-end=\"449\">Regular Fit Kesim</strong> – Rahat ve klasik bir duru? sa?lar<br data-start=\"484\" data-end=\"487\">\r\n? <strong data-start=\"489\" data-end=\"513\">Bal?kç? Yaka Tasar?m</strong> – So?uk havalarda s?cak ve ??k bir stil sunar<br data-start=\"559\" data-end=\"562\" data-is-only-node=\"\">\r\n? <strong data-start=\"564\" data-end=\"587\">Pamuklu Triko Kuma?</strong> – Nefes alabilen, yumu?ak ve konforlu yap?<br data-start=\"630\" data-end=\"633\">\r\n? <strong data-start=\"635\" data-end=\"652\">Orta Bej Renk</strong> – Zamans?z ve her kombine uyum sa?layan do?al ton<br data-start=\"702\" data-end=\"705\">\r\n? <strong data-start=\"707\" data-end=\"753\">Hem Günlük Hem Klasik Kombinler ?çin Uygun</strong> – Jean, chino veya kuma? pantolonlarla mükemmel uyum</p>\r\n<p data-start=\"810\" data-end=\"934\" class=\"\">Rahatl??? ve ??kl??? bir arada sunan <strong data-start=\"847\" data-end=\"892\">Orta Bej Bal?kç? Yaka Pamuklu Triko Kazak</strong> ile stilinizi bir ad?m öteye ta??y?n! ?????</p>', 'a8e2bb1b-e831-4c4c-8893-b539b6552e1f_size555x830_quality90_cropCenter.jpg', 'b4664c39-ca02-442e-bfcb-59c028e72969_size350x525_quality90_cropCenter.jpg', 'dbee89da-8ecc-4cd7-a45a-8da8e4824d68_size350x525_quality90_cropCenter.jpg', 50, 'In Stock', '2025-04-01 13:27:57', NULL),
(42, 3, 17, 'Siyah Deri Spor Ayakkabi', 'Kigili', 670, 850, '<p data-start=\"69\" data-end=\"367\" class=\"\">Günlük stilinize hem rahatl?k hem de zarif bir dokunu? katacak <strong data-start=\"132\" data-end=\"160\">Siyah Deri Spor Ayakkab?</strong>, ??k tasar?m? ve kaliteli malzemesiyle her ortamda fark yaratman?z? sa?lar. Esnek yap?s? ve dayan?kl? taban? sayesinde gün boyu konfor sunarken, deri dokusu ile modern ve sofistike bir görünüm kazand?r?r.</p>\r\n<h3 data-start=\"369\" data-end=\"403\" class=\"\">???? <strong data-start=\"376\" data-end=\"401\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"404\" data-end=\"837\" class=\"\">? <strong data-start=\"406\" data-end=\"438\">Gerçek / Suni Deri Üst Yüzey</strong> – ??k ve dayan?kl? malzeme<br data-start=\"465\" data-end=\"468\">\r\n? <strong data-start=\"470\" data-end=\"500\">Ergonomik ve Hafif Tasar?m</strong> – Gün boyu rahat kullan?m<br data-start=\"526\" data-end=\"529\" data-is-only-node=\"\">\r\n? <strong data-start=\"531\" data-end=\"556\">Kaymaz ve Esnek Taban</strong> – Güvenli ad?mlar, üstün konfor<br data-start=\"588\" data-end=\"591\">\r\n? <strong data-start=\"593\" data-end=\"628\">Ba?c?kl? / Ba?c?ks?z Seçenekler</strong> – Kendi tarz?n?za uygun alternatifler<br data-start=\"666\" data-end=\"669\">\r\n? <strong data-start=\"671\" data-end=\"685\">Siyah Renk</strong> – Zamans?z ve her kombine uyum sa?layan klasik stil<br data-start=\"737\" data-end=\"740\">\r\n? <strong data-start=\"742\" data-end=\"780\">Günlük ve ??k Kombinler ?çin Uygun</strong> – Spor, casual ve smart casual tarzlarla mükemmel uyum</p>\r\n<p data-start=\"839\" data-end=\"947\" class=\"\">Hem rahatl??? hem de zarafeti bir arada arayanlar için <strong data-start=\"894\" data-end=\"922\">Siyah Deri Spor Ayakkab?</strong> mükemmel bir tercih! ?????</p>', 'b7396d4d-e4c5-4ee7-9413-a573fa8fb47f_size555x830_quality90_cropCenter.jpg', '8272b8b3-4709-4fee-8f7e-b334999745d8_size350x525_quality90_cropCenter.jpg', '0359d1dd-0fc1-406d-8a26-deaca0bb53ad_size350x525_quality90_cropCenter.jpg', 60, 'In Stock', '2025-04-01 13:29:09', NULL),
(43, 3, 18, 'Koyu Lacivert Slim Fit Dar Kesim Kapü?onlu Vinil ?i?me Mont', 'Kigili', 1500, 1700, '<p data-start=\"103\" data-end=\"401\" class=\"\">Modern ve dikkat çekici tasar?m?yla <strong data-start=\"139\" data-end=\"202\">Koyu Lacivert Slim Fit Dar Kesim Kapü?onlu Vinil ?i?me Mont</strong>, so?uk havalarda sizi s?cak tutarken stilinizi de tamaml?yor. Parlak vinil yüzeyi, slim fit kesimi ve hafif dolgulu yap?s?yla hem günlük hem de sportif kombinler için mükemmel bir seçenek sunuyor.</p>\r\n<h3 data-start=\"403\" data-end=\"437\" class=\"\">???? <strong data-start=\"410\" data-end=\"435\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"438\" data-end=\"932\" class=\"\">? <strong data-start=\"440\" data-end=\"462\">Slim Fit Dar Kesim</strong> – Vücuda oturan modern ve ??k görünüm<br data-start=\"500\" data-end=\"503\">\r\n? <strong data-start=\"505\" data-end=\"531\">Parlak Vinil D?? Yüzey</strong> – Trend ve dikkat çekici tasar?m<br data-start=\"564\" data-end=\"567\" data-is-only-node=\"\">\r\n? <strong data-start=\"569\" data-end=\"590\">Kapü?onlu Tasar?m</strong> – So?uk ve rüzgarl? havalarda ekstra koruma<br data-start=\"634\" data-end=\"637\">\r\n? <strong data-start=\"639\" data-end=\"661\">?i?me Dolgulu Yap?</strong> – Hafif ama etkili ?s? yal?t?m?<br data-start=\"693\" data-end=\"696\">\r\n? <strong data-start=\"698\" data-end=\"720\">Koyu Lacivert Renk</strong> – Her kombinle uyum sa?layan zamans?z ve ??k ton<br data-start=\"769\" data-end=\"772\">\r\n? <strong data-start=\"774\" data-end=\"804\">Fermuarl? ve Cepli Tasar?m</strong> – Fonksiyonel ve pratik kullan?m<br data-start=\"837\" data-end=\"840\">\r\n? <strong data-start=\"842\" data-end=\"883\">Günlük ve Sportif Kullan?m ?çin Uygun</strong> – Jean, jogger veya e?ofmanlarla mükemmel uyum</p>\r\n<p data-start=\"934\" data-end=\"1085\" class=\"\">So?uk havalarda hem s?cak kalmak hem de tarz?n?z? ön plana ç?karmak için <strong data-start=\"1007\" data-end=\"1060\">Koyu Lacivert Slim Fit Kapü?onlu Vinil ?i?me Mont</strong> mükemmel bir seçim! ??????</p>', 'e4fa01f5-2ef3-4458-a20f-91810e9b9541_size555x830_quality90_cropCenter.jpg', 'bfb93dc3-a551-451b-ace7-8af982520754_size350x525_quality90_cropCenter.jpg', '771b6891-37d9-4824-9c57-c81fd51a67ac_size350x525_quality90_cropCenter.jpg', 50, 'In Stock', '2025-04-01 13:37:17', NULL),
(44, 3, 33, 'Kiremit Uzun Kol Oversize Oduncu Ekose Pamuklu Gömlek için', 'Kigili', 350, 400, '<p data-start=\"99\" data-end=\"445\" class=\"\">Geni? ve rahat kesimiyle sokak modas?n?n vazgeçilmez parçalar?ndan biri olan <strong data-start=\"176\" data-end=\"233\">Kiremit Uzun Kol Oversize Oduncu Ekose Pamuklu Gömlek</strong>, s?cak tutan pamuklu dokusu ve trend ekose deseniyle stilinizi tamaml?yor. ?ster tek ba??na ister katmanl? kombinlerle kullanabilece?iniz bu gömlek, günlük hayatta hem ??kl??? hem de konforu bir arada sunuyor.</p>\r\n<h3 data-start=\"447\" data-end=\"481\" class=\"\">???? <strong data-start=\"454\" data-end=\"479\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"482\" data-end=\"943\" class=\"\">? <strong data-start=\"484\" data-end=\"508\">Oversize Rahat Kesim</strong> – Geni? ve sala? duru?uyla cool bir görünüm<br data-start=\"552\" data-end=\"555\">\r\n? <strong data-start=\"557\" data-end=\"572\">Ekose Desen</strong> – Oduncu tarz?n?n klasik ve zamans?z modeli<br data-start=\"616\" data-end=\"619\" data-is-only-node=\"\">\r\n? <strong data-start=\"621\" data-end=\"643\">%100 Pamuklu Kuma?</strong> – Yumu?ak, nefes alabilir ve s?cak tutan yap?<br data-start=\"689\" data-end=\"692\">\r\n? <strong data-start=\"694\" data-end=\"727\">Uzun Kollu ve Dü?meli Tasar?m</strong> – Rahat kullan?m ve çok yönlü kombin imkan?<br data-start=\"771\" data-end=\"774\">\r\n? <strong data-start=\"776\" data-end=\"797\">Kiremit Renk Tonu</strong> – Sonbahar ve k?? kombinlerine s?cak bir hava katar<br data-start=\"849\" data-end=\"852\">\r\n? <strong data-start=\"854\" data-end=\"885\">Katmanl? Stiller ?çin Uygun</strong> – Ti?ört veya sweatshirt üzerine rahatl?kla giyilebilir</p>\r\n<p data-start=\"945\" data-end=\"1084\" class=\"\">Günlük kombinlerinize hem ??kl?k hem de rahatl?k katmak için <strong data-start=\"1006\" data-end=\"1063\">Kiremit Uzun Kol Oversize Oduncu Ekose Pamuklu Gömlek</strong> tam size göre! ?????????</p>', 'c86b8b2c-7ada-473b-a65b-32d1dacc4c21_size555x830_quality90_cropCenter.jpg', 'deef6b5b-b8f2-4dce-aee4-35a8119d82e9_size350x525_quality90_cropCenter.jpg', 'a06d0b92-839c-486d-a8bd-7b9df131c67e_size350x525_quality90_cropCenter.jpg', 40, 'In Stock', '2025-04-01 13:38:05', NULL),
(45, 3, 33, 'Uçuk Mavi Uzun Kol Slim Fit Dar Kesim Non Iron Ütü Gerektirmeyen Pamuklu', 'Kigili', 900, 1000, '<p data-start=\"126\" data-end=\"458\" class=\"\">Hem ??k hem de pratik bir gömlek arayanlar için mükemmel bir seçim olan <strong data-start=\"198\" data-end=\"281\">Uçuk Mavi Uzun Kol Slim Fit Dar Kesim Non-Iron Ütü Gerektirmeyen Pamuklu Gömlek</strong>, gün boyu kusursuz görünüm sunar. Non-Iron teknolojisi sayesinde ütü gerektirmeyen yap?s?yla zahmetsiz bir kullan?m sa?larken, slim fit kesimiyle modern bir duru? kazand?r?r.</p>\r\n<h3 data-start=\"460\" data-end=\"494\" class=\"\">???? <strong data-start=\"467\" data-end=\"492\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"495\" data-end=\"968\" class=\"\">? <strong data-start=\"497\" data-end=\"519\">Slim Fit Dar Kesim</strong> – Vücuda oturan ??k ve modern tasar?m<br data-start=\"557\" data-end=\"560\">\r\n? <strong data-start=\"562\" data-end=\"598\">Ütü Gerektirmeyen Non-Iron Kuma?</strong> – K?r??maya kar?? dayan?kl?, zahmetsiz bak?m<br data-start=\"643\" data-end=\"646\" data-is-only-node=\"\">\r\n? <strong data-start=\"648\" data-end=\"670\">%100 Pamuklu Kuma?</strong> – Nefes alabilen, yumu?ak ve konforlu yap?<br data-start=\"713\" data-end=\"716\">\r\n? <strong data-start=\"718\" data-end=\"736\">Uçuk Mavi Renk</strong> – Zamans?z, her kombine uyum sa?layan ??k ton<br data-start=\"782\" data-end=\"785\">\r\n? <strong data-start=\"787\" data-end=\"823\">Uzun Kol ve Klasik Yaka Tasar?m?</strong> – Günlük ve özel kullan?mlar için ideal<br data-start=\"863\" data-end=\"866\">\r\n? <strong data-start=\"868\" data-end=\"906\">??, Ofis ve Özel Günler ?çin Uygun</strong> – Hem klasik hem smart casual kombinler için mükemmel seçim</p>\r\n<p data-start=\"970\" data-end=\"1075\" class=\"\"><strong data-start=\"970\" data-end=\"1007\">Uçuk Mavi Non-Iron Pamuklu Gömlek</strong> ile gün boyu ??kl???n?z? koruyun, k?r???kl?k derdine veda edin! ?????</p>', '64059860-7981-4eb4-8828-c281677981f5_size555x830_quality90_cropCenter.jpg', '11032688-ba7d-4c11-83f2-185661f8dd6b_size350x525_quality90_cropCenter.jpg', 'a7de4d93-29a9-43a6-bb53-31cf8e908627_size350x525_quality90_cropCenter.jpg', 50, 'In Stock', '2025-04-01 13:38:55', NULL),
(46, 3, 32, 'Siyah Klasik Tak?m Elbise', 'Kigili', 6000, 6200, '<p data-start=\"62\" data-end=\"322\" class=\"\">Özel davetlerden i? hayat?na kadar her ortamda tarz?n?z? tamamlayacak <strong data-start=\"132\" data-end=\"161\">Siyah Klasik Tak?m Elbise</strong>, modern kesimi ve kaliteli kuma??yla fark yarat?yor. Hem ??k hem de rahat bir kullan?m sunan bu tak?m elbise, stil sahibi erkekler için vazgeçilmez bir seçim!</p>\r\n<h3 data-start=\"324\" data-end=\"358\" class=\"\">???? <strong data-start=\"331\" data-end=\"356\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"359\" data-end=\"844\" class=\"\">? <strong data-start=\"361\" data-end=\"386\">Klasik ve ??k Tasar?m</strong> – Her ortamda zarif ve iddial? bir duru?<br data-start=\"427\" data-end=\"430\">\r\n? <strong data-start=\"432\" data-end=\"476\">Slim Fit / Regular Fit Kesim Seçenekleri</strong> – Vücuda tam oturan, kusursuz görünüm<br data-start=\"514\" data-end=\"517\" data-is-only-node=\"\">\r\n? <strong data-start=\"519\" data-end=\"550\">Dayan?kl? ve Konforlu Kuma?</strong> – Uzun ömürlü kullan?m ve rahat hareket imkân?<br data-start=\"597\" data-end=\"600\">\r\n? <strong data-start=\"602\" data-end=\"640\">Tek Dü?me / Çift Dü?me Seçenekleri</strong> – Kendi tarz?n?za uygun modeller<br data-start=\"673\" data-end=\"676\">\r\n? <strong data-start=\"678\" data-end=\"704\">Pantolon & Ceket Uyumu</strong> – Profesyonel ve ??k kombinler için ideal<br data-start=\"746\" data-end=\"749\">\r\n? <strong data-start=\"751\" data-end=\"787\">Günlük ve Özel Günlerde Kullan?m</strong> – Dü?ün, toplant? ve özel davetler için mükemmel seçim</p>\r\n<p data-start=\"846\" data-end=\"960\" class=\"\">Zamans?z ve asil bir tarz arayanlar için <strong data-start=\"887\" data-end=\"916\">Siyah Klasik Tak?m Elbise</strong> ile her ortamda fark?n?z? ortaya koyun! ?????</p>', '4194d86f-d77d-4114-930e-b81a31d8cd95_size555x830_quality90_cropCenter.jpg', '62394f13-9cd6-4bd9-9061-4ed9ad8f0e73_size350x525_quality90_cropCenter.jpg', '18a492d2-247e-4d88-936c-39cbfe15238d_size350x525_quality90_cropCenter.jpg', 200, 'In Stock', '2025-04-01 13:40:34', NULL),
(47, 3, 18, 'Orta Lacivert Yünlü Oversize Desenli Klasik Palto', '8000', 450, 7450, '<p data-start=\"92\" data-end=\"449\" class=\"\">??kl??? ve s?cak tutan yap?s?yla öne ç?kan <strong data-start=\"135\" data-end=\"188\">Orta Lacivert Yünlü Oversize Desenli Klasik Palto</strong>, hem günlük hem de özel günlerde tarz?n?z? tamamlayacak mükemmel bir seçim! Oversize kesimi sayesinde rahat bir kullan?m sunarken, yünlü dokusu ile so?uk havalarda maksimum koruma sa?lar. Desenli yüzeyi ise klasik palto stiline sofistike bir dokunu? kat?yor.</p>\r\n<h3 data-start=\"451\" data-end=\"485\" class=\"\">???? <strong data-start=\"458\" data-end=\"483\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"486\" data-end=\"987\" class=\"\">? <strong data-start=\"488\" data-end=\"512\">Oversize Rahat Kesim</strong> – Geni? ve modern bir duru? sa?lar<br data-start=\"547\" data-end=\"550\">\r\n? <strong data-start=\"552\" data-end=\"567\">Yünlü Kuma?</strong> – S?cak tutan, nefes alabilir ve dayan?kl? yap?<br data-start=\"615\" data-end=\"618\" data-is-only-node=\"\">\r\n? <strong data-start=\"620\" data-end=\"638\">Desenli Dokuma</strong> – Klasik tarza hareket katan ??k detay<br data-start=\"677\" data-end=\"680\">\r\n? <strong data-start=\"682\" data-end=\"704\">Orta Lacivert Renk</strong> – Her kombinle uyum sa?layan zamans?z ve asil ton<br data-start=\"754\" data-end=\"757\">\r\n? <strong data-start=\"759\" data-end=\"781\">Dü?meli Ön Kapan??</strong> – Klasik ve sofistike görünüm<br data-start=\"811\" data-end=\"814\">\r\n? <strong data-start=\"816\" data-end=\"833\">Cep Detaylar?</strong> – Hem fonksiyonel hem de ??k kullan?m<br data-start=\"871\" data-end=\"874\">\r\n? <strong data-start=\"876\" data-end=\"916\">??, Günlük ve Özel Günler ?çin Uygun</strong> – Tak?m elbiseden casual kombinlere kadar her stil ile mükemmel uyum</p>\r\n<p data-start=\"989\" data-end=\"1125\" class=\"\">So?uk havalarda hem ??kl???n?z? hem de konforunuzu korumak için <strong data-start=\"1053\" data-end=\"1106\">Orta Lacivert Yünlü Oversize Desenli Klasik Palto</strong> tam size göre! ?????</p>', 'c33e1e0c-7804-472b-8399-9c6b0b625c0a_size555x830_quality90_cropCenter.jpg', '60b88dfe-77c7-4474-aaa3-9cdf79ac71ae_size350x525_quality90_cropCenter.jpg', 'b2ed33d9-f0a6-456b-8133-dd28882d93d7_size350x525_quality90_cropCenter.jpg', 500, 'In Stock', '2025-04-01 13:42:35', NULL),
(48, 3, 8, 'Siyah Bisiklet Yaka Regular Fit Süprem Pamuk Ti?ört', 'Kigili', 270, 350, '<p data-start=\"101\" data-end=\"407\" class=\"\">Gard?robun olmazsa olmaz parçalar?ndan biri olan <strong data-start=\"150\" data-end=\"205\">Siyah Bisiklet Yaka Regular Fit Süprem Pamuk Ti?ört</strong>, hem günlük hem de spor kombinlerinizde mükemmel bir tamamlay?c?d?r. Yumu?ak ve nefes alabilen süprem pamuk kuma?? sayesinde gün boyu konfor sunarken, regular fit kesimiyle rahat bir kullan?m sa?lar.</p>\r\n<h3 data-start=\"409\" data-end=\"443\" class=\"\">???? <strong data-start=\"416\" data-end=\"441\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"444\" data-end=\"919\" class=\"\">? <strong data-start=\"446\" data-end=\"467\">Regular Fit Kesim</strong> – Vücuda tam oturan ama s?kmayan rahat kesim<br data-start=\"512\" data-end=\"515\">\r\n? <strong data-start=\"517\" data-end=\"539\">Süprem Pamuk Kuma?</strong> – Nefes alabilen, yumu?ak ve terletmeyen yap?<br data-start=\"585\" data-end=\"588\" data-is-only-node=\"\">\r\n? <strong data-start=\"590\" data-end=\"615\">Bisiklet Yaka Tasar?m</strong> – Klasik ve zamans?z görünüm<br data-start=\"644\" data-end=\"647\">\r\n? <strong data-start=\"649\" data-end=\"663\">Siyah Renk</strong> – Her tarza uyum sa?layan, kombinlemesi kolay zamans?z ton<br data-start=\"722\" data-end=\"725\">\r\n? <strong data-start=\"727\" data-end=\"776\">Günlük, Spor ve Katmanl? Kombinler ?çin Uygun</strong> – Ceket, sweatshirt veya gömlek alt?na rahatl?kla giyilebilir<br data-start=\"838\" data-end=\"841\">\r\n? <strong data-start=\"843\" data-end=\"871\">Dayan?kl? ve Kolay Bak?m</strong> – Uzun ömürlü kullan?m için kaliteli diki?ler</p>\r\n<p data-start=\"921\" data-end=\"1073\" class=\"\">Hem rahatl??? hem de ??kl??? bir arada sunan <strong data-start=\"966\" data-end=\"1021\">Siyah Bisiklet Yaka Regular Fit Süprem Pamuk Ti?ört</strong>, stilinizi tamamlamak için mükemmel bir tercih! ?????</p>', '42229a4e-01e5-40f8-b0f4-d9ee7532fca0_size555x830_quality90_cropCenter.jpg', '0fc56aeb-968d-4315-a570-b4e6805adffc_size350x525_quality90_cropCenter.jpg', '963cadca-740e-4a39-9e8e-32f5e1aaaef1_size350x525_quality90_cropCenter.jpg', 30, 'In Stock', '2025-04-01 13:45:29', NULL),
(49, 3, 33, 'Beyaz Uzun Kol Slim Fit Dar Kesim Non Iron Ütü Gerektirmeyen Pamuklu Gömlek', 'Kigili', 450, 600, '<p data-start=\"103\" data-end=\"479\" class=\"\">Klasik ve modern stilin mükemmel birle?imi olan <strong data-start=\"151\" data-end=\"230\">Beyaz Uzun Kol Slim Fit Dar Kesim Non-Iron Ütü Gerektirmeyen Pamuklu Gömlek</strong>, ??kl???n?za zahmetsiz bir dokunu? kat?yor. Non-Iron teknolojisi sayesinde k?r??maya kar?? dayan?kl? yap?s? ile ütü gerektirmez, böylece her zaman kusursuz bir görünüm sunar. Slim fit kesimi ile vücuda tam oturarak ??k ve modern bir duru? sa?lar.</p>\r\n<h3 data-start=\"481\" data-end=\"515\" class=\"\">???? <strong data-start=\"488\" data-end=\"513\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"516\" data-end=\"1015\" class=\"\">? <strong data-start=\"518\" data-end=\"540\">Slim Fit Dar Kesim</strong> – Vücuda tam oturan modern ve zarif tasar?m<br data-start=\"584\" data-end=\"587\">\r\n? <strong data-start=\"589\" data-end=\"625\">Ütü Gerektirmeyen Non-Iron Kuma?</strong> – Zahmetsiz kullan?m, k?r???kl?klara kar?? dayan?kl?l?k<br data-start=\"681\" data-end=\"684\" data-is-only-node=\"\">\r\n? <strong data-start=\"686\" data-end=\"708\">%100 Pamuklu Kuma?</strong> – Nefes alabilen, yumu?ak ve konforlu yap?<br data-start=\"751\" data-end=\"754\">\r\n? <strong data-start=\"756\" data-end=\"770\">Beyaz Renk</strong> – Zamans?z, her kombine uyum sa?layan klasik stil<br data-start=\"820\" data-end=\"823\">\r\n? <strong data-start=\"825\" data-end=\"852\">Uzun Kol ve Klasik Yaka</strong> – Günlük, ofis ve özel günler için mükemmel seçim<br data-start=\"902\" data-end=\"905\">\r\n? <strong data-start=\"907\" data-end=\"939\">Çok Yönlü Kombin Seçenekleri</strong> – Tak?m elbiseyle ??k, kot pantolonla casual bir görünüm yaratabilirsiniz</p>\r\n<p data-start=\"1017\" data-end=\"1149\" class=\"\">Gün boyu konfor ve kusursuz bir stil için <strong data-start=\"1059\" data-end=\"1101\">Beyaz Non-Iron Slim Fit Pamuklu Gömlek</strong>, gard?robunuzun vazgeçilmez parças? olacak! ?????</p>', '88e5800f-76c5-4573-ab4d-0a55dcc02b75_size555x830_quality90_cropCenter.jpg', '14fa28d5-641b-4398-9d0e-92562e4641b2_size350x525_quality90_cropCenter.jpg', '284c3e18-9e75-418d-8928-e4ebb42fed75_size350x525_quality90_cropCenter.jpg', 50, 'In Stock', '2025-04-01 13:50:32', NULL),
(50, 4, 34, 'Kad?n Ekru Ay?c?k ??lemeli Pamuklu Örme T-Shirt', 'Kigili', 420, 450, '<p data-start=\"85\" data-end=\"376\" class=\"\">Yumu?ak dokusu ve ?irin tasar?m?yla öne ç?kan <strong data-start=\"131\" data-end=\"182\">Kad?n Ekru Ay?c?k ??lemeli Pamuklu Örme T-Shirt</strong>, günlük kombinlerinize tatl? bir hava kat?yor. Hafif ve nefes alabilen pamuklu kuma?? sayesinde gün boyu konfor sa?larken, zarif ay?c?k i?lemeli detay?yla stilinize özgün bir dokunu? ekliyor.</p>\r\n<h3 data-start=\"378\" data-end=\"412\" class=\"\">???? <strong data-start=\"385\" data-end=\"410\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"413\" data-end=\"863\" class=\"\">? <strong data-start=\"415\" data-end=\"458\">Yumu?ak ve Nefes Alabilen Pamuklu Kuma?</strong> – Konforlu ve hafif yap?<br data-start=\"483\" data-end=\"486\">\r\n? <strong data-start=\"488\" data-end=\"520\">Sevimli Ay?c?k ??leme Detay?</strong> – Günlük stilinize tatl? bir dokunu?<br data-start=\"557\" data-end=\"560\" data-is-only-node=\"\">\r\n? <strong data-start=\"562\" data-end=\"575\">Ekru Renk</strong> – Do?al ve soft tonuyla her kombine uyum sa?lar<br data-start=\"623\" data-end=\"626\">\r\n? <strong data-start=\"628\" data-end=\"649\">Regular Fit Kesim</strong> – Rahat ve ??k bir duru? sunar<br data-start=\"680\" data-end=\"683\">\r\n? <strong data-start=\"685\" data-end=\"722\">Bisiklet Yaka ve K?sa Kol Tasar?m</strong> – Günlük ve sportif kombinler için ideal<br data-start=\"763\" data-end=\"766\">\r\n? <strong data-start=\"768\" data-end=\"809\">Jean, ?ort ve Eteklerle Mükemmel Uyum</strong> – Hem rahat hem de ??k kombinler olu?turabilirsiniz</p>\r\n<p data-start=\"865\" data-end=\"975\" class=\"\">Sevimli ve ??k bir t-shirt ar?yorsan?z, <strong data-start=\"905\" data-end=\"956\">Kad?n Ekru Ay?c?k ??lemeli Pamuklu Örme T-Shirt</strong> tam size göre! ?????</p>', '1_org_zoom.jpg', '1_org_zoom_2.jpg', '1_org_zoom_3.jpg', 50, 'In Stock', '2025-04-01 13:57:48', NULL),
(51, 4, 34, 'Beyaz Vintage Bask?l? T-shirt', 'Kigili', 330, 350, '<p data-start=\"68\" data-end=\"395\" class=\"\">Retro esintiler ta??yan tasar?m?yla <strong data-start=\"104\" data-end=\"137\">Beyaz Vintage Bask?l? T-Shirt</strong>, günlük kombinlerinize nostaljik ve cool bir hava kat?yor. Yumu?ak pamuklu kuma?? sayesinde gün boyu konfor sunarken, vintage tarz? bask?s? ile özgün ve dikkat çekici bir görünüm sa?lar. Hem spor hem de casual kombinlerinizde rahatl?kla kullanabilirsiniz.</p>\r\n<h3 data-start=\"397\" data-end=\"431\" class=\"\">???? <strong data-start=\"404\" data-end=\"429\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"432\" data-end=\"848\" class=\"\">? <strong data-start=\"434\" data-end=\"456\">Vintage Tarz Bask?</strong> – Retro ve haval? bir görünüm<br data-start=\"486\" data-end=\"489\">\r\n? <strong data-start=\"491\" data-end=\"513\">%100 Pamuklu Kuma?</strong> – Nefes alabilen, yumu?ak ve rahat yap?<br data-start=\"553\" data-end=\"556\" data-is-only-node=\"\">\r\n? <strong data-start=\"558\" data-end=\"579\">Regular Fit Kesim</strong> – Konforlu ve rahat bir kullan?m sunar<br data-start=\"618\" data-end=\"621\">\r\n? <strong data-start=\"623\" data-end=\"660\">Bisiklet Yaka ve K?sa Kol Tasar?m</strong> – Günlük kullan?m için ideal<br data-start=\"689\" data-end=\"692\">\r\n? <strong data-start=\"694\" data-end=\"708\">Beyaz Renk</strong> – Her kombine uyum sa?layan zamans?z stil<br data-start=\"750\" data-end=\"753\">\r\n? <strong data-start=\"755\" data-end=\"803\">Jean, ?ort, Ceket ve Eteklerle Mükemmel Uyum</strong> – Farkl? tarzlarla kolayca kombinlenebilir</p>\r\n<p data-start=\"850\" data-end=\"975\" class=\"\">Nostaljik dokunu?lar? sevenler için <strong data-start=\"886\" data-end=\"919\">Beyaz Vintage Bask?l? T-Shirt</strong>, tarz?n?z? yans?tman?n en keyifli yollar?ndan biri! ?????</p>', '1_org_zoom_4.jpg', '1_org_zoom_5.jpg', '1_org_zoom_6.jpg', 20, 'In Stock', '2025-04-01 14:01:01', NULL),
(53, 4, 34, 'Unisex Oversize Yamaha MT-09 T-shirt', 'Kigili', 420, 450, '<p data-start=\"89\" data-end=\"491\" class=\"\">Motosiklet ruhunu yans?tan güçlü tasar?m?yla <strong data-start=\"134\" data-end=\"174\">Unisex Oversize Yamaha MT-09 T-Shirt</strong>, h?z ve özgürlü?ü stilinize ta??yor! Geni? ve rahat kesimi sayesinde gün boyu konfor sunarken, Yamaha MT-09\'un ikonik detaylar?n? ta??yan bask?s?yla fark yarat?yor. Günlük kombinlerde ve motosiklet sürü?lerinde hem ??kl??? hem de rahatl??? bir arada sunan bu ti?ört, motosiklet severler için vazgeçilmez bir parça!</p>\r\n<h3 data-start=\"493\" data-end=\"527\" class=\"\">???? <strong data-start=\"500\" data-end=\"525\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"528\" data-end=\"996\" class=\"\">? <strong data-start=\"530\" data-end=\"554\">Oversize Rahat Kesim</strong> – Geni? ve sala? duru?uyla modern ve cool bir stil<br data-start=\"605\" data-end=\"608\">\r\n? <strong data-start=\"610\" data-end=\"641\">Yamaha MT-09 Temal? Tasar?m</strong> – Motosiklet tutkunlar?na özel bask?<br data-start=\"678\" data-end=\"681\" data-is-only-node=\"\">\r\n? <strong data-start=\"683\" data-end=\"705\">%100 Pamuklu Kuma?</strong> – Nefes alabilen, yumu?ak ve konforlu yap?<br data-start=\"748\" data-end=\"751\">\r\n? <strong data-start=\"753\" data-end=\"790\">Bisiklet Yaka ve K?sa Kol Tasar?m</strong> – Günlük ve sportif kullan?ma uygun<br data-start=\"826\" data-end=\"829\">\r\n? <strong data-start=\"831\" data-end=\"849\">Unisex Tasar?m</strong> – Hem erkek hem kad?nlar için rahat kullan?m<br data-start=\"894\" data-end=\"897\">\r\n? <strong data-start=\"899\" data-end=\"946\">Jean, ?ort ve Deri Ceketlerle Mükemmel Uyum</strong> – Casual ve motosiklet kombinleriniz için ideal</p>\r\n<p data-start=\"998\" data-end=\"1126\" class=\"\">Yamaha MT-09’un ruhunu hissetmek ve stilinize dinamizm katmak için <strong data-start=\"1065\" data-end=\"1105\">Unisex Oversize Yamaha MT-09 T-Shirt</strong> tam size göre! </p>', '1_org_zoom_8.jpg', '1_org_zoom_7.jpg', '1_org_zoom_9.jpg', 50, 'In Stock', '2025-04-01 14:04:42', NULL),
(54, 4, 22, 'Kahve Yüksek Bel Pilili Kad?n Pantolon', 'Kigili', 880, 990, '<p data-start=\"77\" data-end=\"452\" class=\"\">??kl??? ve rahatl??? bir araya getiren <strong data-start=\"116\" data-end=\"158\">Kahve Yüksek Bel Pilili Kad?n Pantolon</strong>, klasik ve modern tarz? mükemmel ?ekilde harmanl?yor. Yüksek bel tasar?m?yla vücut hatlar?n? güzelce vurgularken, pilili yap?s?yla sofistike bir duru? kazand?r?yor. Günlük, ofis veya özel davetlerde kolayca kombinlenebilecek bu pantolon, gard?robunuzun en ??k parçalar?ndan biri olmaya aday!</p>\r\n<h3 data-start=\"454\" data-end=\"488\" class=\"\">???? <strong data-start=\"461\" data-end=\"486\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"489\" data-end=\"956\" class=\"\">? <strong data-start=\"491\" data-end=\"513\">Yüksek Bel Tasar?m</strong> – Beli vurgulayan ??k ve zarif duru?<br data-start=\"550\" data-end=\"553\">\r\n? <strong data-start=\"555\" data-end=\"574\">Pilili Detaylar</strong> – Hareketli ve modern bir görünüm sa?lar<br data-start=\"615\" data-end=\"618\" data-is-only-node=\"\">\r\n? <strong data-start=\"620\" data-end=\"642\">Rahat ve ??k Kesim</strong> – Gün boyu konfor sunan geni? ve ak?c? yap?<br data-start=\"686\" data-end=\"689\">\r\n? <strong data-start=\"691\" data-end=\"705\">Kahve Renk</strong> – Do?al ve s?cak tonuyla her kombine uyum sa?lar<br data-start=\"754\" data-end=\"757\">\r\n? <strong data-start=\"759\" data-end=\"801\">Günlük, Ofis ve Özel Günler ?çin Uygun</strong> – Bluz, gömlek veya basic ti?örtlerle kolayca kombinlenebilir<br data-start=\"863\" data-end=\"866\">\r\n? <strong data-start=\"868\" data-end=\"920\">Topuklu Ayakkab?, Loafer veya Sneaker ile Uyumlu</strong> – Farkl? tarzlarla tamamlanabilir</p>\r\n<p data-start=\"958\" data-end=\"1093\" class=\"\">Zarif, rahat ve ??k bir pantolon ar?yorsan?z <strong data-start=\"1003\" data-end=\"1045\">Kahve Yüksek Bel Pilili Kad?n Pantolon</strong>, stilinizi tamamlayacak mükemmel bir seçim! ?????</p>', '1_org_zoom_11.jpg', '1_org_zoom_10.jpg', '1_org_zoom_12.jpg', 70, 'In Stock', '2025-04-01 14:13:45', NULL),
(55, 4, 22, 'Antrasit Duble Paça Pensli Kad?n Pantolon', 'Kigili', 500, 600, '<p data-start=\"86\" data-end=\"466\" class=\"\">Zamans?z ??kl???n anahtar parçalar?ndan biri olan <strong data-start=\"136\" data-end=\"181\">Antrasit Duble Paça Pensli Kad?n Pantolon</strong>, klasik ve sofistike tarz? günlük rahatl?kla bulu?turuyor. Pens detaylar? ile kusursuz bir duru? sunarken, duble paça kesimiyle modern ve ??k bir hava kat?yor. Hem ofis kombinlerinde hem de günlük stilinizde rahatl?kla kullanabilece?iniz bu pantolon, kombinlerinize zarafet katacak!</p>\r\n<h3 data-start=\"468\" data-end=\"501\" class=\"\">? <strong data-start=\"474\" data-end=\"499\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"502\" data-end=\"952\" class=\"\">? <strong data-start=\"504\" data-end=\"526\">Duble Paça Tasar?m</strong> – Modern ve ??k bir duru? sa?lar<br data-start=\"559\" data-end=\"562\">\r\n? <strong data-start=\"564\" data-end=\"582\">Pens Detaylar?</strong> – Kusursuz bir siluet için ideal yap?<br data-start=\"620\" data-end=\"623\" data-is-only-node=\"\">\r\n? <strong data-start=\"625\" data-end=\"647\">Rahat ve ??k Kesim</strong> – Gün boyu konfor sunan fit kal?p<br data-start=\"681\" data-end=\"684\">\r\n? <strong data-start=\"686\" data-end=\"703\">Antrasit Renk</strong> – Klasik ve her kombine uyum sa?layan zamans?z ton<br data-start=\"754\" data-end=\"757\">\r\n? <strong data-start=\"759\" data-end=\"801\">Ofis, Günlük ve Özel Günler ?çin Uygun</strong> – Gömlek, bluz veya basic ti?örtlerle kombinlenebilir<br data-start=\"855\" data-end=\"858\">\r\n? <strong data-start=\"860\" data-end=\"912\">Topuklu Ayakkab?, Loafer veya Sneaker ile Uyumlu</strong> – Farkl? tarzlara kolayca adapte olur</p>\r\n<p data-start=\"954\" data-end=\"1098\" class=\"\">Hem klasik hem modern bir stil yaratmak için <strong data-start=\"999\" data-end=\"1044\">Antrasit Duble Paça Pensli Kad?n Pantolon</strong>, gard?robunuzun favori parçalar?ndan biri olacak! ?????</p>', '1_org_zoom_14.jpg', '1_org_zoom_13.jpg', '1_org_zoom_15.jpg', 60, 'In Stock', '2025-04-01 14:16:00', NULL),
(56, 4, 21, 'Kad?n Siyah-beyaz Pamuklu Dü?meli Pijama', 'Kigili', 275, 300, '<p data-start=\"111\" data-end=\"545\" class=\"\">Rahatl??? ve ??kl??? bir araya getiren <strong data-start=\"150\" data-end=\"219\">Kad?n Siyah-Beyaz K?sa Kollu Pamuklu Dü?meli Biyeli Pijama Tak?m?</strong>, uyku saatlerinizi daha konforlu ve keyifli hale getiriyor. Yumu?ak pamuklu kuma?? sayesinde cildinize nazik bir dokunu? sunarken, zarif biyeli detaylar?yla klasik ve ??k bir görünüm sa?lar. Dü?meli tasar?m?yla hem pratik hem de stil sahibi bir tercih sunan bu pijama tak?m?, rahat uyku ve ev keyfi için mükemmel bir seçim!</p>\r\n<h3 data-start=\"547\" data-end=\"581\" class=\"\">???? <strong data-start=\"554\" data-end=\"579\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"582\" data-end=\"1009\" class=\"\">? <strong data-start=\"584\" data-end=\"606\">%100 Pamuklu Kuma?</strong> – Nefes alabilen, yumu?ak ve rahat yap?<br data-start=\"646\" data-end=\"649\">\r\n? <strong data-start=\"651\" data-end=\"677\">K?sa Kollu Dü?meli Üst</strong> – Klasik ve ??k görünüm, kolay kullan?m<br data-start=\"717\" data-end=\"720\" data-is-only-node=\"\">\r\n? <strong data-start=\"722\" data-end=\"748\">Biyeli ?erit Detaylar?</strong> – Zarif ve sofistike dokunu?<br data-start=\"777\" data-end=\"780\">\r\n? <strong data-start=\"782\" data-end=\"808\">Elastik Belli Pantolon</strong> – Gün boyu konfor ve rahat hareket imkan?<br data-start=\"850\" data-end=\"853\">\r\n? <strong data-start=\"855\" data-end=\"888\">Siyah-Beyaz Renk Kombinasyonu</strong> – Zamans?z ve ??k görünüm<br data-start=\"914\" data-end=\"917\">\r\n? <strong data-start=\"919\" data-end=\"953\">Evde Rahat Kullan?m ?çin ?deal</strong> – Uyku, dinlenme ve sabah kahvesi keyfi için mükemmel</p>\r\n<p data-start=\"1011\" data-end=\"1165\" class=\"\">??kl?k ve rahatl??? bir arada arayanlar için <strong data-start=\"1056\" data-end=\"1125\">Kad?n Siyah-Beyaz K?sa Kollu Pamuklu Dü?meli Biyeli Pijama Tak?m?</strong>, dolab?n?z?n vazgeçilmezi olacak! ?????????</p>', '1_org_zoom_16.jpg', '1_org_zoom_17.jpg', '1_org_zoom_18.jpg', 30, 'In Stock', '2025-04-01 14:18:36', NULL),
(57, 5, 25, 'Pembe Bisiklet Yaka Nak??l? T-shirt Bebek - Çocuk', 'Kigili', 250, 350, '<p data-start=\"90\" data-end=\"456\" class=\"\">Yumu?ac?k dokusu ve tatl? tasar?m?yla <strong data-start=\"128\" data-end=\"176\">Pembe Bisiklet Yaka Nak??l? Oversize T-Shirt</strong>, bebek ve çocuklar için hem konforlu hem de ??k bir seçenek sunuyor. Oversize kesimi sayesinde rahat hareket imkan? sa?larken, sevimli nak?? detay?yla miniklerin tarz?na ?irin bir dokunu? kat?yor. Günlük kullan?ma uygun bu t-shirt, nefes alabilen kuma?? sayesinde cildin dostu!</p>\r\n<h3 data-start=\"458\" data-end=\"494\" class=\"\">???????? <strong data-start=\"467\" data-end=\"492\">Öne Ç?kan Özellikler:</strong></h3>\r\n<p data-start=\"495\" data-end=\"911\" class=\"\">? <strong data-start=\"497\" data-end=\"532\">Yumu?ak ve Nefes Alabilen Kuma?</strong> – Hassas ciltler için konforlu ve sa?l?kl? kullan?m<br data-start=\"584\" data-end=\"587\">\r\n? <strong data-start=\"589\" data-end=\"607\">Oversize Kesim</strong> – Rahat hareket etmeye uygun bol kesim<br data-start=\"646\" data-end=\"649\" data-is-only-node=\"\">\r\n? <strong data-start=\"651\" data-end=\"676\">Bisiklet Yaka Tasar?m</strong> – Günlük kullan?m için ideal<br data-start=\"705\" data-end=\"708\">\r\n? <strong data-start=\"710\" data-end=\"734\">Sevimli Nak?? Detay?</strong> – Çocuklar?n stiline tatl? bir dokunu?<br data-start=\"773\" data-end=\"776\">\r\n? <strong data-start=\"778\" data-end=\"792\">Pembe Renk</strong> – Canl? ve enerjik görünüm<br data-start=\"819\" data-end=\"822\">\r\n? <strong data-start=\"824\" data-end=\"865\">Jean, ?ort ve Taytlarla Mükemmel Uyum</strong> – Hem ??k hem de rahat kombinler için ideal</p>\r\n<p data-start=\"913\" data-end=\"1042\" class=\"\">Minikler için hem rahat hem de tatl? bir t-shirt ar?yorsan?z, <strong data-start=\"975\" data-end=\"1023\">Pembe Bisiklet Yaka Nak??l? Oversize T-Shirt</strong> tam size göre! ?????</p>', '1_org_zoom_19.jpg', '1_org_zoom_20.jpg', '1_org_zoom_21.jpg', 50, 'In Stock', '2025-04-01 14:20:28', NULL);


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 6, 'Televizyon', '2024-01-20 13:24:52', '01-04-2025 05:29:33 PM'),
(4, 6, 'Mobiller', '2024-01-20 13:24:52', '01-04-2025 05:29:26 PM'),
(5, 6, 'Mobil Aksesuarlar', '2024-01-20 13:24:52', '01-04-2025 05:28:58 PM'),
(6, 6, 'Dizüstü bilgisayarlar', '2024-01-20 13:24:52', '01-04-2025 05:29:43 PM'),
(7, 6, 'Bilgisayarlar', '2024-01-20 13:24:52', '01-04-2025 05:29:51 PM'),
(8, 3, 'T-Shirt	', '2025-04-01 11:50:33', '01-04-2025 05:30:42 PM'),
(11, 9, 'tak?m elbise', '2025-04-01 11:51:44', NULL),
(16, 3, 'Pijama', '2025-04-01 11:56:58', NULL),
(17, 3, 'Ayakkabi', '2025-04-01 11:57:15', NULL),
(18, 3, 'Mont', '2025-04-01 11:57:19', '01-04-2025 06:30:09 PM'),
(19, 3, 'Pantolon', '2025-04-01 11:57:32', NULL),
(20, 4, 'Elbise', '2025-04-01 11:57:37', NULL),
(21, 4, 'Pijama', '2025-04-01 11:57:42', NULL),
(22, 4, 'Pantolon', '2025-04-01 11:57:47', NULL),
(23, 4, 'Ayakkabi', '2025-04-01 11:57:52', '01-04-2025 06:41:41 PM'),
(25, 5, 'T-Shirt	', '2025-04-01 11:58:07', NULL),
(26, 5, 'Pantolon', '2025-04-01 11:58:13', NULL),
(27, 5, 'Pijama', '2025-04-01 11:58:17', NULL),
(28, 5, 'Ayakkabi', '2025-04-01 11:58:21', NULL),
(29, 6, 'Akilli Saat', '2025-04-01 12:55:37', '01-04-2025 06:25:54 PM'),
(30, 3, 'Kazak', '2025-04-01 13:11:57', NULL),
(31, 4, 'Kazak', '2025-04-01 13:12:02', NULL),
(32, 3, 'TAKIM Elbise', '2025-04-01 13:16:48', NULL),
(33, 3, 'Gömlek', '2025-04-01 13:33:52', NULL),
(34, 4, 'T-Shirt	', '2025-04-01 13:56:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.k@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-22 03:01:21', '22-05-2024 11:34:34 AM', 1),
(2, 'johndeo@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-23 10:30:40', NULL, 1),
(3, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2024-06-04 22:03:33', '05-06-2024 06:39:31 AM', 1),
(4, 'ayoubabdullah053@gmail.com', 0x3a3a3100000000000000000000000000, '2025-03-31 09:51:18', NULL, 0),
(5, 'ayoubabdullah2@aol.com', 0x3a3a3100000000000000000000000000, '2025-03-31 16:29:53', NULL, 1),
(6, 'ayoubabdullah2@aol.com', 0x3a3a3100000000000000000000000000, '2025-04-01 04:05:37', NULL, 1),
(7, 'ayoubabdullah2@aol.com', 0x3a3a3100000000000000000000000000, '2025-04-01 09:49:44', '01-04-2025 04:23:31 PM', 1),
(8, 'ayoubabdullah2@aol.com', 0x3a3a3100000000000000000000000000, '2025-04-01 15:17:35', '01-04-2025 08:49:16 PM', 1),
(9, 'ayoubabdullah2@aol.com', 0x3a3a3100000000000000000000000000, '2025-04-01 15:19:36', '01-04-2025 08:53:00 PM', 1),
(10, 'ayoubabdullah2@aol.com', 0x3a3a3100000000000000000000000000, '2025-04-01 15:23:07', NULL, 1),
(11, 'ayoubabdullah2@aol.com', 0x3a3a3100000000000000000000000000, '2025-04-02 04:33:31', NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingAddress` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingState` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingCity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billingState` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billingCity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.k@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2024-04-21 16:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2024-04-21 16:30:50', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2024-04-21 16:30:50', ''),
(4, 'John Doe', 'johndeo@gmail.com', 4564566554, 'f925916e2754e5e03f75dd58a5733251', 'A 12323 XYZ Apartment ', 'Delhi', 'New Delhi', 110092, 'A 12323 XYZ Apartment ', 'Delhi', 'New Delhi', 110092, '2024-05-23 10:30:34', NULL),
(5, 'Amit kumar', 'amit12@gmail.com', 1414253625, 'f925916e2754e5e03f75dd58a5733251', 'A 123 XYZ Apartment', 'Delhi', 'new Delhi', 110023, 'A 123 XYZ Apartment', 'Delhi', 'new Delhi', 110023, '2024-06-04 22:03:24', NULL),
(6, 'Ayoub', 'ayoubabdullah2@aol.com', 905346352, '202cb962ac59075b964b07152d234b70', '123', '123', '123', 123, '123', '123', '123', 123, '2025-03-31 16:29:47', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 6, 22, '2025-04-01 15:17:48');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Tablo için AUTO_INCREMENT değeri `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;