-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2018 at 02:32 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoryprovider`
--

CREATE TABLE `categoryprovider` (
  `providerId` int(11) NOT NULL,
  `providerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryprovider`
--

INSERT INTO `categoryprovider` (`providerId`, `providerName`) VALUES
(1, 'nike'),
(2, 'adidas'),
(3, 'ANTONI FERNANDO'),
(4, 'ALDO'),
(5, 'EVEREST'),
(6, 'Geox'),
(7, 'Vina-Giầy'),
(8, 'Vũ Chầm'),
(9, 'converse'),
(10, 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `categorytype`
--

CREATE TABLE `categorytype` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorytype`
--

INSERT INTO `categorytype` (`typeId`, `typeName`) VALUES
(1, 'Giày thể thao'),
(2, 'Giày lười'),
(3, 'Sandal-Dép'),
(4, 'Giày Rọ'),
(5, 'Giày Mọi'),
(6, 'Giày SABO'),
(7, 'Giày Tây'),
(8, 'Boot Da'),
(9, 'Giày cổ điển'),
(10, 'Boot');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `productId`, `name`, `email`, `comment`) VALUES
(1, 20, 'phan xuan nam', 'nam.14dl1@gmail.com', 'Sản phẩm tốt!!! <3'),
(2, 16, 'Nam', 'ntshoeshop@gmail.com', 'Sản phẩm tốt'),
(3, 16, 'Nam', 'khachhang@gmail.com', 'Đẹp, bền, giả cả phải chăng'),
(4, 20, 'nam', 'nam@gmail.com', 'Đẹp'),
(5, 20, '2121swedsd', 'aaaa@gmail.com', 'aaaaaaaaaaaaaaaaa'),
(6, 7, 'nam', 'nam123@gmail.com', 'san pham tot'),
(7, 20, 'sdsdsdss', 'aaaaaaaaa@gmail.com', 'aaaaaaaaaaaaaaaaaa'),
(8, 7, 'aaaaaaaaaaaa', 'nam@gmail.com', 'aaaaaaaaa'),
(9, 7, 'aaaaaaaaaaaa', 'nam@gmail.com', 'aaaaaaaaa'),
(10, 7, 'Tung', 'aaaaaaaa@gmail.com', 'san pham tot. kha hai long'),
(11, 16, 'nam', 'nam@gmail.com', 'san pham tot, ung ho shop'),
(12, 16, 'aaaaaaaaaa', 'aaaaa@gmail.com', 'aaaaaaaaaaaaaaaaaaa'),
(13, 7, 'aaaaaaaaaaaa', 'aaaaa@gmail.com', 'aaaaaaaaaaa'),
(14, 7, 'dsdsdsdsd', 'aaabbbb@gmail.com', 'nâmmananamam'),
(15, 15, 'assss', 'aaa@gmail.com', 'san pham tot'),
(16, 15, 'assss', 'aaa@gmail.com', 'san pham chat luong'),
(17, 15, 'assss', 'aaa@gmail.com', 'ddddddd'),
(18, 15, 'khach hang', 'khachhang@gmail.com', 'san pham dep , chat luong , gia ca phai chang <3'),
(19, 15, 'abc', 'email@gmail.com', 'san pham dep , chat luong , gia ca phai chang '),
(20, 7, 'qqqq', 'qqq@gmail.com', 'wwwwwwwwwwwwqwqw'),
(21, 10, 'nam', 'Nam@gmail.com', 'san pham tot'),
(22, 10, 'aaaaaaa', 'aaaa@gmail.com', 'san pham tot'),
(23, 6, 'khach hang a', '123@gmail.com', 'san pham dep, gia re. 1 like'),
(24, 6, 'khach hang b', 'dsdsd@gmail.com', 'san pham dep, gia re. 1 like'),
(25, 16, 'khách hàng A', 'abc@gmail.com', 'Sản phẩm đẹp, tốt, giá cả phải chăng'),
(26, 16, 'khách Hàng C', 'aaaa@gmail.com', 'Đẹp, Rẻ, Chất lượng '),
(27, 11, 'Nam', 'aaa@gmail.com', 'sản Phẩm đẹp, giá cả phải chăng .'),
(28, 11, 'khách hàng A', 'khachHanga@gmail.com', 'Sản phẩm đẹp, mang vào khá êm, không bị đau chân. 5 sao'),
(29, 11, 'dsdsds á', 'ssss@gmail.com', 'sản Phẩm đẹp, giá cả phải chăng .'),
(30, 7, 'Khách hàng A', 'khachhanga@gmail.com', 'Sản phẩm tốt, đẹp, giá cả phải chăng'),
(31, 10, 'Khách hàng C', 'aaa@gmail.com', 'Sản phẩm tốt, Đẹp , rẽ'),
(32, 10, 'dsdsadsdad', 'sdsads@gmail.com', 'Sản phẩm tốt, Đẹp , rẽ'),
(33, 10, 'dsdsadsdad', 'sdsads@gmail.com', 'Sản phẩm tốt, Đẹp , rẽ'),
(34, 10, 'aaaaaa', 'aaaa@gmail.com', 'Sản phẩm tốt, Đẹp , rẽ'),
(35, 10, 'Khách Hàng', 'aaa@gmail.com', 'Sản phẩm tốt, Đẹp , rẽ'),
(36, 15, 'khách hàng', 'aaa@gmail.com', 'tốt đẹp rẽ'),
(37, 7, 'Khách hàng c', 'aaaa@gmail.com', 'sản phẩm tốt, đẹp'),
(38, 7, 'Khách hàng c', 'aaaa@gmail.com', 'sản phẩm tốt, đẹp'),
(39, 1, 'aaaaaaaaaa', 'aaa@gmail.com', 'aaaaaaaaaaaaa'),
(40, 1, 'aaaaaaaaaa', 'aaa@gmail.com', 'aaaaaaaaaaaaa'),
(41, 14, 'aaaaaaaaaaaaa', 'aaaaaaaa@gmail.com', 'aaaaaaaaaaaa'),
(42, 10, 'aaaa', 'aaaaaa@gmail.com', 'Sản phẩm tốt'),
(43, 7, 'xnam', 'nam.14dl1@gmail.com', 'đẹp');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderDetailId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productDetailId` int(11) NOT NULL,
  `unitprice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotionId` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderDetailId`, `orderId`, `productDetailId`, `unitprice`, `promotionId`, `quantity`) VALUES
(2, 7, 113, '1.650.000', 1, 1),
(3, 8, 114, '1.650.000', 1, 1),
(4, 8, 90, '400.000', 1, 1),
(5, 9, 150, '664.000', 1, 4),
(6, 9, 120, '750.000', 1, 1),
(7, 10, 148, '664.000', 1, 3),
(8, 10, 89, '400.000', 1, 1),
(9, 11, 113, '1.650.000', 1, 3),
(10, 11, 96, '400.000', 1, 1),
(11, 12, 113, '1.650.000', 1, 3),
(12, 12, 149, '664.000', 1, 2),
(13, 13, 119, '750.000', 1, 3),
(14, 14, 113, '1.650.000', 1, 3),
(15, 14, 149, '664.000', 1, 1),
(16, 14, 102, '630.000', 1, 1),
(17, 14, 14, '192.000', 1, 1),
(18, 15, 149, '664.000', 1, 1),
(19, 15, 78, '350.000', 1, 1),
(20, 15, 59, '1.480.000', 1, 1),
(21, 15, 17, '680.000', 1, 1),
(22, 16, 155, '1.350.000', 1, 1),
(23, 16, 144, '1.680.000', 1, 1),
(24, 16, 132, '720.000', 1, 1),
(25, 18, 143, '1.680.000', 1, 1),
(26, 18, 156, '1.350.000', 1, 1),
(27, 18, 90, '400.000', 1, 1),
(28, 19, 101, '630.000', 1, 5),
(29, 19, 54, '520.000', 1, 1),
(30, 19, 19, '680.000', 1, 3),
(31, 20, 155, '1.350.000', 1, 1),
(32, 20, 149, '664.000', 1, 1),
(33, 21, 113, '1.650.000', NULL, 3),
(34, 21, 48, '520.000', NULL, 1),
(35, 22, 156, '1.350.000', NULL, 1),
(36, 22, 113, '136.000', NULL, 1),
(37, 20, 113, '1.350.000', NULL, 1),
(38, 23, 113, '1.650.000', NULL, 1),
(39, 24, 14, '192.000', NULL, 1),
(40, 25, 47, '520.000', NULL, 3),
(41, 25, 132, '720.000', NULL, 2),
(42, 26, 48, '520.000', NULL, 3),
(43, 26, 115, '1.650.000', NULL, 2),
(44, 27, 89, '400.000', NULL, 2),
(45, 27, 60, '1.480.000', NULL, 5),
(46, 27, 114, '1.650.000', NULL, 1),
(47, 28, 18, '680.000', NULL, 3),
(48, 28, 115, '1.650.000', NULL, 1),
(49, 28, 12, '1.789.000', NULL, 1),
(50, 29, 12, '1.789.000', NULL, 1),
(51, 30, 18, '680.000', NULL, 1),
(52, 30, 77, '350.000', NULL, 2),
(53, 31, 48, '520.000', NULL, 1),
(54, 31, 59, '1.480.000', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `customerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `customerName`, `email`, `address`, `phone`, `date`) VALUES
(5, 'nam', '', '123456', '123456789', '22/11/2018'),
(6, 'phan xuan nam', '', 'quang tri', '01254567700', '22/11/2018'),
(7, 'phan xuan nam', '', 'fgfg', '01254567700', '22/11/2018'),
(8, 'em Buu Tin', '', 'Trieu Long', '01254567700', '22/11/2018'),
(9, 'em Buu Tin', '', '1231212121', '01254567700', '22/11/2018'),
(10, 'phan xuan nam', '', '123 xyz', '0854567700', '23/11/2018'),
(11, 'em Buu Tin', '', 'ton duc thang', '0854567700', '23/11/2018'),
(12, 'Ngo buu tin', '', 'dsdsadsds', '0854567700', '23/11/2018'),
(13, 'phan xuan nam', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(14, 'phan dong', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(15, 'nhat quynh', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(16, 'phan dong', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(17, 'phan dong', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(18, 'nhat quynh', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(19, 'phan xuan nam', 'nam.14dl1@gmail.com', '566', '0854567700', '23/11/2018'),
(20, 'phan xuan nam', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(21, 'nhat quynh', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(22, 'vo dinh kiet', 'nam.14dl1@gmail.com', '26', '0854567700', '23/11/2018'),
(23, 'Nam nam', 'xnam134@gmail.com', '32', '0854567700', '23/11/2018'),
(24, 'phan xuan nam', 'xnam134@gmail.com', '887 Tôn Đức Thắng, Đà Nẵng', '0854567700', '01/12/2018'),
(25, 'Nhật Quỳnh', 'xnam134@gmail.com', '126 Phạm Như Xương, Đà Nẵng', '0854567700', '01/12/2018'),
(26, 'phan dong', 'xnam134@gmail.com', 'Tôn Đức Thắng', '0854567700', '01/12/2018'),
(27, 'Võ Đình Kiệt', 'xnam134@gmail.com', '82 Nam Cao', '0854567700', '01/12/2018'),
(28, 'Ngô Bữu Tín', 'xnam134@gmail.com', 'Tôn Đức Thắng', '0854567700', '01/12/2018'),
(29, 'xnam', 'nam.14dl1@gmail.com', 'Quảng Trị', '123456789', '04/12/2018'),
(30, 'xnam', 'nam.14dl1@gmail.com', 'Quảng Trị', '123456789', '05/12/2018'),
(31, 'xnam', 'nam.14dl1@gmail.com', 'Quảng Trị', '123456789', '05/12/2018');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeId` int(11) NOT NULL,
  `providerId` int(11) NOT NULL,
  `unitprice` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `typeId`, `providerId`, `unitprice`, `description`, `image1`, `image2`, `image3`) VALUES
(1, 'Sandals Nam U S.Strada C', 3, 6, '215.000', 'Giày Sandals Nam U S.STRADA C sở hữu kiểu dáng thời trang nhưng không kém phần hiện đại. Với chất liệu cao cấp kết hợp đế nhẹ, đàn hồi tốt tạo sự ma sát tốt, ổn định hơn và chống tình trạng trơn trượt. Trọng lượng giày nhẹ giúp bạn di chuyển dễ dàng', 'Giay-Sandals-Nam-US-Strada-C-2.jpg', 'Giay-Sandals-Nam-US-Strada-C-1.jpg', 'Giay-Sandals-Nam-US-Strada-C-3.jpg'),
(2, 'GMN Da Bò Cao Cấp', 2, 3, '2.199.000', 'Chất liệu da bò nhập khẩu Châu Âu, da mềm.- Lót da cừu, đệm lót da bò.- Thiết kế nhẹ nhàng êm ái, hút mồ hôi, ngăn ngừa hôi chân.- Đế cao su cao cấp, gầm krep chống trơn, chống mòn cao.- Đóng thủ công 100%', 'giay-nam-da-bo-cao-cap-GCL2292D42-1.jpg', 'giay-nam-da-bo-cao-cap-GCL2292D42-1.jpg', 'giay-nam-da-bo-cao-cap-GCL2292D42-1.jpg'),
(3, 'GTT Nam Lite Racer Bb9774\r\n', 1, 2, '1.425.000', 'Giày Thể Thao Adidas LITE RACER. Chất liệu: vải, cao su. Dòng sản phẩm: Casual', 'adidas-8203-634818-1.jpg', 'adidas-8204-634818-2.jpg', 'adidas-8206-634818-3.jpg'),
(4, 'Giày Da Bò Vân Cá Sấu\r\n', 2, 4, '2.685.000', 'Được làm từ da bò thật cao cấp chống nhăn, chống xước.\r\n- Đế cao 4,5 cm.\r\n- Đế cao su đúc nguyên khối chống trơn, chống trượt, giảm áp lực tác động lên bàn chân để bạn có bước đi tự do và thoải mái.', 'giay-da-van-ca-sau-gd290-01.jpg', 'giay-da-van-ca-sau-gd290-02.jpg', 'giay-da-van-ca-sau-gd290-03.jpg'),
(5, 'Nike Footwear Mens', 1, 1, '1.789.000', 'Hiện đại và thời trang khi diện item mới của Nike. Màu sắc lạ mắt, chất liệu thoáng mát, nhẹ nhàng, phù hợp với những chàng trai yêu phong cách sports.', 'Giày-chạy-bộ-Nike-Footwear-Mens-1.jpg', 'Giày-chạy-bộ-Nike-Footwear-Mens-2.jpg', 'Giày-chạy-bộ-Nike-Footwear-Mens-3.jpg'),
(6, 'Sandal Nam Everest', 3, 6, '192.000', 'Thiết kế tinh tế thời trang mang đến phong cách trẻ trung, năng động. Màu sắc trẻ trung, cá tính thể hiện lên được đẳng cấp thời trang riêng. Thích hợp sử dụng hằng ngày, đa năng. Có nhiều size cho bạn lựa chọn.', 'giay-sandal-nam-everest-1.jpg', 'giay-sandal-nam-everest-1.jpg', 'giay-sandal-nam-everest-1.jpg'),
(7, 'GRN ARO.H0001', 4, 7, '850.000', 'Giày rọ nam Vina-Giầy ARO.H0001 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '129721521101124.jpg', '129701521101124.jpg', '129741521101124.jpg'),
(8, 'GRN ARO.H0002', 4, 7, '850.000', 'Giày rọ nam Vina-Giầy ARO.H0002 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '128921521077259.jpg', '128931521077259.jpg', '128941521077259.jpg'),
(9, 'GRN ARO.H0003', 4, 7, '750.000', 'Giày rọ nam Vina-Giầy ARO.H0003 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '92821500347963.jpg', '92831500347963.jpg', '128831521000105.jpg'),
(10, 'GMN AMO.H0001CL-KM', 5, 7, '650.000', 'Giày mọi nam Vina-Giầy AMO.H0001CL-KM được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '153731541232596.jpg', '153771541232596.jpg', '153711541232596.jpg'),
(11, 'GMN C.O.M039', 5, 7, '1.850.000', 'Giày mọi nam C.O.M039\r\nđược làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.\r\n', '95501501036727.jpg', '95521501036727.jpg', '95561501036727.jpg'),
(12, 'GMN C.O.M0015N', 5, 7, '1.150.000', 'Giày mọi nam C.O.M0015N\r\nđược làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.\r\n', '68611490948209.jpg', '68631490948209.jpg', '68601490948209.jpg'),
(13, 'GTN AGT.I0029', 7, 7, '350.000', 'GIẦY TÂY NAM AGT.I0029 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '153311541214233.jpg', '153361541214233.jpg', '153381541214233.jpg'),
(14, 'GTN AGT.H0016', 7, 7, '400.000', 'GIẦY TÂY NAM AGT.H0016 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '111251511248627.jpg', '111231511248627.jpg', '111201511248627.jpg'),
(15, 'GTN AGT.I0039', 7, 7, '630.000', 'GIẦY TÂY NAM AGT.I0039được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '153821541235288.jpg', '153841541235288.jpg', '153871541235288.jpg'),
(16, 'GTN C.O.T019', 7, 8, '1.650.000', 'GIẦY TÂY NAM C.O.T019 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '144701533973489.jpg', '144711533973489.jpg', '144761533973490.jpg'),
(17, 'SABO NAM 1239ST-1109', 6, 8, '750.000', 'GIẦY SABO NAM 1239ST-1109 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '77111493803660.jpg', '77131493803660.jpg', '77141493803660.jpg'),
(18, 'SABO NAM 1240ST-549', 6, 7, '900.000', 'GIẦY SABO NAM 1240ST-549 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '76331493794256.jpg', '76341493794256.jpg', '76301493794255.jpg'),
(19, 'GMN ACF.I0032', 5, 7, '2.100.000', 'GIẦY MỌI NAM ACF.I0032 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '140411529722064.jpg', '140431529722064.jpg', '140441529722064.jpg'),
(20, 'GMN ACF.H0026', 5, 7, '830.000', 'GIẦY MỌI NAM ACF.H0026 được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '127601520565003.jpg', '127651520565004.jpg', '127621520565003.jpg'),
(21, 'GMN C.O.M0007N', 5, 8, '1.350.000', 'GIẦY MỌI NAM C.O.M0007N được làm từ da bò cao cấp, tạo cảm giác êm ái, thoải mái, dễ chịu khi sử dụng. Đế giầy được làm bằng cao su dày dặn, chắc chắn, giúp chống trượt hiệu quả khi di chuyển. Là mẫu giày năng động, mang lịch lãm mà phái mạnh không thể bỏ qua.', '67911490933728.jpg', '11490933728_color.jpg', '67921490933728.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `productcolor`
--

CREATE TABLE `productcolor` (
  `colorId` int(11) NOT NULL,
  `colorName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolor`
--

INSERT INTO `productcolor` (`colorId`, `colorName`) VALUES
(1, 'Đỏ'),
(2, 'Trắng'),
(3, 'Đen'),
(4, 'Xám'),
(5, 'Xám Xanh'),
(6, 'Xanh - Da cam\r\n'),
(7, 'Xanh'),
(8, 'Nâu Đen'),
(9, 'Vàng bò'),
(10, 'Nâu Xậm'),
(11, 'Đen da rấn'),
(12, 'Xanh rêu');

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `productDetailId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `colorId` int(11) NOT NULL,
  `sizeId` int(11) NOT NULL,
  `inputDate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`productDetailId`, `productId`, `colorId`, `sizeId`, `inputDate`, `quantity`) VALUES
(1, 3, 4, 5, '2/8/2018', 86),
(2, 4, 1, 4, '5/1/2018', 78),
(11, 1, 5, 3, '17/5/2018', 50),
(12, 5, 6, 6, '22/7/2018', 77),
(13, 2, 7, 7, '3/2/2018', 48),
(14, 6, 3, 1, '11/2/2018', 61),
(15, 7, 3, 3, '07/11/2018', 0),
(16, 7, 3, 4, '07/11/2018', 50),
(17, 7, 3, 5, '07/11/2018', 50),
(18, 7, 3, 6, '07/11/2018', 46),
(19, 7, 3, 7, '07/11/2018', 50),
(20, 7, 3, 8, '07/11/2018', 50),
(21, 7, 8, 3, '07/11/2018', 50),
(22, 7, 8, 4, '07/11/2018', 0),
(23, 7, 8, 5, '07/11/2018', 50),
(24, 7, 8, 6, '07/11/2018', 50),
(25, 7, 8, 7, '07/11/2018', 50),
(26, 7, 8, 8, '07/11/2018', 50),
(27, 8, 3, 3, '07/11/2018', 70),
(28, 8, 3, 3, '07/11/2018', 70),
(29, 8, 3, 4, '07/11/2018', 70),
(30, 8, 3, 5, '07/11/2018', 70),
(31, 8, 3, 6, '07/11/2018', 70),
(32, 8, 3, 7, '07/11/2018', 70),
(33, 8, 3, 8, '07/11/2018', 70),
(34, 9, 3, 3, '07/11/2018', 70),
(35, 9, 3, 4, '07/11/2018', 70),
(36, 9, 3, 5, '07/11/2018', 70),
(37, 9, 3, 6, '07/11/2018', 70),
(38, 9, 3, 7, '07/11/2018', 70),
(39, 9, 3, 8, '07/11/2018', 70),
(40, 9, 8, 3, '07/11/2018', 70),
(41, 9, 8, 4, '07/11/2018', 70),
(42, 9, 8, 5, '07/11/2018', 70),
(43, 9, 8, 6, '07/11/2018', 70),
(44, 9, 8, 7, '07/11/2018', 70),
(45, 9, 8, 8, '07/11/2018', 70),
(46, 10, 4, 3, '07/11/2018', 70),
(47, 10, 4, 4, '07/11/2018', 67),
(48, 10, 4, 5, '07/11/2018', 65),
(49, 10, 4, 6, '07/11/2018', 70),
(50, 10, 4, 7, '07/11/2018', 70),
(51, 10, 4, 8, '07/11/2018', 70),
(52, 10, 8, 3, '07/11/2018', 70),
(53, 10, 8, 4, '07/11/2018', 70),
(54, 10, 8, 5, '07/11/2018', 70),
(55, 10, 8, 6, '07/11/2018', 70),
(56, 10, 8, 7, '07/11/2018', 70),
(57, 10, 8, 8, '07/11/2018', 70),
(58, 11, 9, 3, '07/11/2018', 70),
(59, 11, 9, 4, '07/11/2018', 69),
(60, 11, 9, 5, '07/11/2018', 65),
(61, 11, 9, 6, '07/11/2018', 70),
(62, 11, 9, 7, '07/11/2018', 70),
(63, 11, 9, 8, '07/11/2018', 70),
(64, 12, 9, 3, '07/11/2018', 70),
(65, 12, 9, 4, '07/11/2018', 70),
(66, 12, 9, 5, '07/11/2018', 70),
(67, 12, 9, 6, '07/11/2018', 70),
(68, 12, 9, 7, '07/11/2018', 70),
(69, 12, 9, 8, '07/11/2018', 70),
(70, 12, 3, 3, '07/11/2018', 70),
(71, 12, 3, 4, '07/11/2018', 70),
(72, 12, 3, 5, '07/11/2018', 70),
(73, 12, 3, 6, '07/11/2018', 70),
(74, 12, 3, 7, '07/11/2018', 70),
(75, 12, 3, 8, '07/11/2018', 70),
(76, 13, 3, 3, '07/11/2018', 70),
(77, 13, 3, 4, '07/11/2018', 68),
(78, 13, 3, 5, '07/11/2018', 70),
(79, 13, 3, 6, '07/11/2018', 70),
(80, 13, 3, 7, '07/11/2018', 70),
(81, 13, 3, 8, '07/11/2018', 70),
(82, 13, 8, 3, '07/11/2018', 70),
(83, 13, 8, 4, '07/11/2018', 70),
(84, 13, 8, 5, '07/11/2018', 70),
(85, 13, 8, 6, '07/11/2018', 70),
(86, 13, 8, 7, '07/11/2018', 70),
(87, 13, 8, 8, '07/11/2018', 70),
(88, 14, 3, 3, '07/11/2018', 70),
(89, 14, 3, 4, '07/11/2018', 68),
(90, 14, 3, 5, '07/11/2018', 70),
(91, 14, 3, 6, '07/11/2018', 70),
(92, 14, 3, 7, '07/11/2018', 70),
(93, 14, 3, 8, '07/11/2018', 70),
(94, 14, 10, 3, '07/11/2018', 70),
(95, 14, 10, 4, '07/11/2018', 70),
(96, 14, 10, 5, '07/11/2018', 70),
(97, 14, 10, 6, '07/11/2018', 70),
(98, 14, 10, 7, '07/11/2018', 70),
(99, 14, 10, 8, '07/11/2018', 70),
(100, 15, 3, 3, '07/11/2018', 70),
(101, 15, 3, 4, '07/11/2018', 70),
(102, 15, 3, 5, '07/11/2018', 70),
(103, 15, 3, 6, '07/11/2018', 70),
(104, 15, 3, 7, '07/11/2018', 70),
(105, 15, 3, 8, '07/11/2018', 70),
(106, 15, 10, 3, '07/11/2018', 70),
(107, 15, 10, 4, '07/11/2018', 70),
(108, 15, 10, 5, '07/11/2018', 70),
(109, 15, 10, 6, '07/11/2018', 70),
(110, 15, 10, 7, '07/11/2018', 70),
(111, 15, 10, 8, '07/11/2018', 70),
(112, 16, 11, 3, '07/11/2018', 70),
(113, 16, 11, 4, '07/11/2018', 66),
(114, 16, 11, 5, '07/11/2018', 69),
(115, 16, 11, 6, '07/11/2018', 67),
(116, 16, 11, 7, '07/11/2018', 70),
(117, 16, 11, 8, '07/11/2018', 70),
(118, 17, 3, 3, '07/11/2018', 70),
(119, 17, 3, 4, '07/11/2018', 70),
(120, 17, 3, 5, '07/11/2018', 70),
(121, 17, 3, 6, '07/11/2018', 70),
(122, 17, 3, 7, '07/11/2018', 70),
(123, 17, 3, 8, '07/11/2018', 70),
(124, 17, 8, 3, '07/11/2018', 70),
(125, 17, 8, 4, '07/11/2018', 70),
(126, 17, 8, 5, '07/11/2018', 70),
(127, 17, 8, 6, '07/11/2018', 70),
(128, 17, 8, 7, '07/11/2018', 70),
(129, 17, 8, 8, '07/11/2018', 70),
(130, 18, 3, 3, '07/11/2018', 70),
(131, 18, 3, 4, '07/11/2018', 70),
(132, 18, 3, 5, '07/11/2018', 68),
(133, 18, 3, 6, '07/11/2018', 70),
(134, 18, 3, 7, '07/11/2018', 70),
(135, 18, 3, 8, '07/11/2018', 70),
(136, 18, 8, 3, '07/11/2018', 70),
(137, 18, 8, 4, '07/11/2018', 70),
(138, 18, 8, 5, '07/11/2018', 70),
(139, 18, 8, 6, '07/11/2018', 70),
(140, 18, 8, 7, '07/11/2018', 70),
(141, 18, 8, 8, '07/11/2018', 70),
(142, 19, 12, 3, '07/11/2018', 70),
(143, 19, 12, 4, '07/11/2018', 70),
(144, 19, 12, 5, '07/11/2018', 70),
(145, 19, 12, 6, '07/11/2018', 70),
(146, 19, 12, 7, '07/11/2018', 70),
(147, 19, 12, 8, '07/11/2018', 70),
(148, 20, 9, 3, '07/11/2018', 70),
(149, 20, 9, 4, '07/11/2018', 69),
(150, 20, 9, 5, '07/11/2018', 70),
(151, 20, 9, 6, '07/11/2018', 70),
(152, 20, 9, 7, '07/11/2018', 70),
(153, 20, 9, 8, '07/11/2018', 70),
(154, 21, 3, 3, '07/11/2018', 70),
(155, 21, 3, 4, '07/11/2018', 69),
(156, 21, 3, 5, '07/11/2018', 69),
(157, 21, 3, 6, '07/11/2018', 70),
(158, 21, 3, 7, '07/11/2018', 70),
(159, 21, 3, 8, '07/11/2018', 70),
(160, 21, 8, 3, '07/11/2018', 70),
(161, 21, 8, 4, '07/11/2018', 70),
(162, 21, 8, 5, '07/11/2018', 70),
(163, 21, 8, 6, '07/11/2018', 70),
(164, 21, 8, 7, '07/11/2018', 70),
(165, 21, 8, 8, '07/11/2018', 70);

-- --------------------------------------------------------

--
-- Table structure for table `productsize`
--

CREATE TABLE `productsize` (
  `sizeId` int(11) NOT NULL,
  `sizeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsize`
--

INSERT INTO `productsize` (`sizeId`, `sizeName`) VALUES
(1, '36'),
(2, '37'),
(3, '38'),
(4, '39'),
(5, '40'),
(6, '41'),
(7, '42'),
(8, '43');

-- --------------------------------------------------------

--
-- Table structure for table `product_promotiondetails`
--

CREATE TABLE `product_promotiondetails` (
  `ProductEntity_productId` int(11) NOT NULL,
  `listPromotionDetails_promotionDetailsId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotiondetails`
--

CREATE TABLE `promotiondetails` (
  `promotionDetailsId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `promotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotiondetails`
--

INSERT INTO `promotiondetails` (`promotionDetailsId`, `productId`, `promotionId`) VALUES
(4, 20, 1),
(5, 19, 1),
(6, 18, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotionId` int(11) NOT NULL,
  `promotionName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateStart` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateClose` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`promotionId`, `promotionName`, `amount`, `description`, `image`, `dateStart`, `dateClose`) VALUES
(1, 'giảm giá 20%', '20', 'mừng sinh shop', '', '01/11/2018', '30/12/2018'),
(2, 'Giảm giá 30%', '30', 'mừng giải phóng đất nước', '', '1/10/2018', '20/10/2018'),
(3, 'giảm giá 50%', '50', 'sale off', '', '01/09/2018', '25/09/2018');

-- --------------------------------------------------------

--
-- Table structure for table `promotions_promotiondetails`
--

CREATE TABLE `promotions_promotiondetails` (
  `PromotionsEntity_promotionId` int(11) NOT NULL,
  `listPromotionDetails_promotionDetailsId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratting`
--

CREATE TABLE `ratting` (
  `rateId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `commentId` int(11) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratting`
--

INSERT INTO `ratting` (`rateId`, `productId`, `commentId`, `rate`) VALUES
(15, 16, 2, 4),
(16, 16, 3, 5),
(17, 20, 4, 4),
(18, 20, 5, 4),
(19, 7, 6, 4),
(20, 20, 7, 5),
(21, 7, 9, 4),
(22, 16, 11, 4),
(23, 15, 16, 4),
(24, 15, 18, 3),
(25, 10, 21, 5),
(26, 6, 23, 5),
(27, 11, 28, 5),
(28, 11, 29, 4),
(29, 7, 30, 5),
(30, 10, 31, 5),
(31, 10, 33, 5),
(32, 10, 34, 3),
(33, 10, 35, 4),
(34, 15, 36, 5),
(35, 7, 37, 5),
(36, 7, 38, 5),
(37, 14, 41, 5),
(38, 7, 43, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `password`, `name`, `birthday`, `roleId`, `email`, `address`, `phonenumber`) VALUES
(1, '123456', 'tung', '1/10/1995', 2, 'huynhtung@gmail.com', 'Đà Nẵng', '123123123'),
(2, '123123', 'xnam', '25/6/1996', 1, 'nam.14dl1@gmail.com', 'Quảng Trị', '123456789'),
(3, '123456', 'tnam', '5/5/1996', 2, 'thanhnam@gmail.com', 'Quận 3', '12345646'),
(4, 'aaaaaaaaaaaaaa', 'aaaaaaaaa', 'aaaaa', 2, 'aaaaaaaaaaaaaa', 'Huế', '4564654564'),
(5, '123123123', 'khách hàng B', '1998-02-08', 1, 'user@gmail.com', 'Đà Nẵng', '1212121345'),
(6, '123123123', 'khách hàng C', '1992-07-13', 1, 'khachhangc@gmail.com', 'Quảng Nam', '111122223'),
(7, '123456', 'Khach hang D', '1987-04-13', 1, 'user2@gmail.com', 'TP. HCM', '113114115');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`roleId`, `roleName`) VALUES
(1, 'admin'),
(2, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_user`
--

CREATE TABLE `user_roles_user` (
  `UserRoleEntity_roleId` int(11) NOT NULL,
  `user_userId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoryprovider`
--
ALTER TABLE `categoryprovider`
  ADD PRIMARY KEY (`providerId`);

--
-- Indexes for table `categorytype`
--
ALTER TABLE `categorytype`
  ADD PRIMARY KEY (`typeId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderDetailId`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `productDetailId` (`productDetailId`),
  ADD KEY `promotionId` (`promotionId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `typeId` (`typeId`),
  ADD KEY `providerId` (`providerId`);

--
-- Indexes for table `productcolor`
--
ALTER TABLE `productcolor`
  ADD PRIMARY KEY (`colorId`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`productDetailId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `colorId` (`colorId`),
  ADD KEY `sizeId` (`sizeId`);

--
-- Indexes for table `productsize`
--
ALTER TABLE `productsize`
  ADD PRIMARY KEY (`sizeId`);

--
-- Indexes for table `product_promotiondetails`
--
ALTER TABLE `product_promotiondetails`
  ADD KEY `FKl7tj9nrcvfck1eus5uf7ay4rk` (`listPromotionDetails_promotionDetailsId`),
  ADD KEY `FKc9hcoiexu8r6ieubkmlfnllao` (`ProductEntity_productId`);

--
-- Indexes for table `promotiondetails`
--
ALTER TABLE `promotiondetails`
  ADD PRIMARY KEY (`promotionDetailsId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `promotionId` (`promotionId`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotionId`);

--
-- Indexes for table `promotions_promotiondetails`
--
ALTER TABLE `promotions_promotiondetails`
  ADD KEY `FKg7b6y4y3sdxl5x9q79tctk42q` (`listPromotionDetails_promotionDetailsId`),
  ADD KEY `FK1vtg2u21mkmekvebtwgl2sjky` (`PromotionsEntity_promotionId`);

--
-- Indexes for table `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`rateId`),
  ADD KEY `fk_product` (`productId`),
  ADD KEY `commentId` (`commentId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `roleId` (`roleId`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `user_roles_user`
--
ALTER TABLE `user_roles_user`
  ADD UNIQUE KEY `UK_ets16arbybpe7sf0b0w79b807` (`user_userId`),
  ADD KEY `FKaiml2m1m5meb7d0aefg2g52mu` (`UserRoleEntity_roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoryprovider`
--
ALTER TABLE `categoryprovider`
  MODIFY `providerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categorytype`
--
ALTER TABLE `categorytype`
  MODIFY `typeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `productcolor`
--
ALTER TABLE `productcolor`
  MODIFY `colorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `productdetails`
--
ALTER TABLE `productdetails`
  MODIFY `productDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `productsize`
--
ALTER TABLE `productsize`
  MODIFY `sizeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promotiondetails`
--
ALTER TABLE `promotiondetails`
  MODIFY `promotionDetailsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ratting`
--
ALTER TABLE `ratting`
  MODIFY `rateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FKeuygnry1m2rbsg09rgb8lyl3b` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  ADD CONSTRAINT `orderdetails_ibfk_5` FOREIGN KEY (`promotionId`) REFERENCES `promotions` (`promotionId`),
  ADD CONSTRAINT `orderdetails_ibfk_6` FOREIGN KEY (`productDetailId`) REFERENCES `productdetails` (`productDetailId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1d3cmc8saly059x77j97c6qma` FOREIGN KEY (`typeId`) REFERENCES `categorytype` (`typeId`),
  ADD CONSTRAINT `FKnwvruvc8a86piy9w1pau39qnv` FOREIGN KEY (`providerId`) REFERENCES `categoryprovider` (`providerId`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`providerId`) REFERENCES `categoryprovider` (`providerId`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`typeId`) REFERENCES `categorytype` (`typeId`);

--
-- Constraints for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD CONSTRAINT `FK63xo3vhybt7m97a9yjgqf311y` FOREIGN KEY (`colorId`) REFERENCES `productcolor` (`colorId`),
  ADD CONSTRAINT `FKhyr99qrsvqnr577iasqa0e3br` FOREIGN KEY (`sizeId`) REFERENCES `productsize` (`sizeId`),
  ADD CONSTRAINT `FKiqbl6ge9lc97ns82su7kunkxo` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  ADD CONSTRAINT `productdetails_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  ADD CONSTRAINT `productdetails_ibfk_2` FOREIGN KEY (`sizeId`) REFERENCES `productsize` (`sizeId`),
  ADD CONSTRAINT `productdetails_ibfk_3` FOREIGN KEY (`colorId`) REFERENCES `productcolor` (`colorId`);

--
-- Constraints for table `promotiondetails`
--
ALTER TABLE `promotiondetails`
  ADD CONSTRAINT `FKf5600mxakt0sn9qagaywa3os` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  ADD CONSTRAINT `FKhwbn94fhvso1husn3mx6iitxb` FOREIGN KEY (`promotionId`) REFERENCES `promotions` (`promotionId`),
  ADD CONSTRAINT `promotiondetails_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  ADD CONSTRAINT `promotiondetails_ibfk_2` FOREIGN KEY (`promotionId`) REFERENCES `promotions` (`promotionId`);

--
-- Constraints for table `ratting`
--
ALTER TABLE `ratting`
  ADD CONSTRAINT `FKlsceuli0vmh7unco9yvqssgh4` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  ADD CONSTRAINT `ratting_ibfk_1` FOREIGN KEY (`commentId`) REFERENCES `comments` (`commentId`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKomqyvpcrpgfkbfiymlccpatot` FOREIGN KEY (`roleId`) REFERENCES `user_roles` (`roleId`),
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `user_roles` (`roleId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
