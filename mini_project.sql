-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2020 at 08:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(6, 'Blackberry'),
(3, 'HTC'),
(1, 'iPhone'),
(4, 'Nokia'),
(7, 'OPPO'),
(2, 'Samsung'),
(5, 'Sony'),
(9, 'Vivo'),
(8, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prd_details` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_warranty`, `prd_accessories`, `prd_promotion`, `prd_details`) VALUES
(1, 1, 'iPhone 7 Plus 32GB Rose Gold', 'iPhone-8-Plus-32GB-Rose-Gold.png', 10000000, '11 Tháng', 'Hộp, sách, loa , tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(2, 3, 'iPhone X 512GB Silver Seedstock', 'iPhone-X-256GB-Silver-Seedstock.png', 20000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 3D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(3, 1, 'iPhone Xr 2 Sim 64GB Yellow', 'iPhone-Xr-2-Sim-64GB-Yellow.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(4, 1, 'iPhone Xr 2 Sim 56GB Red', 'iPhone-Xr-2-Sim-256GB-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(5, 1, 'iPhone Xs 256GB Gold', 'iPhone-Xs-256GB-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(6, 2, 'Samsung Galaxy A9 2018 Black', 'Samsung-Galaxy-A9-2018-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(7, 2, 'Samsung Galaxy J2 Core Gold', 'Samsung-Galaxy-J2-Core-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(8, 2, 'Samsung Galaxy J4 Core Black', 'Samsung-Galaxy-J4-Core-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(9, 2, 'Samsung Galaxy S9 Plus 64GB Orchid Gray', 'Samsung-Galaxy-S9-Plus-64GB-Orchid-Gray.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(10, 2, 'Samsung Galaxy S9 Plus Black 128GB', 'Samsung-Galaxy-S9-Plus-Black-128GB.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(11, 4, 'Nokia 1 red', 'Nokia-1-red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(12, 4, 'Nokia 3.1 Black', 'Nokia-3.1-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(13, 4, 'Nokia 6.1 Plus Blue', 'Nokia-6.1-Plus-Blue.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(14, 4, 'Nokia 6.1 Plus White', 'Nokia-6.1-Plus-White.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(15, 4, 'Nokia 150 White', 'Nokia-150-White.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(16, 7, 'OPPO A3s 16GB Red', 'OPPO-A3s–16GB-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(17, 7, 'OPPO A7 64GB Blue', 'OPPO-A7-64GB-Blue.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(18, 7, 'OPPO F7 128GB Black', 'OPPO-F7-128GB-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(19, 7, 'OPPO F9 Sunrise Red', 'OPPO-F9-Sunrise-Red.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(20, 7, 'OPPO R17 Pro Lavender', 'OPPO-R17-Pro-Lavender.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(21, 8, 'Xiaomi Mi 8 Pro Black', 'Xiaomi-Mi-8-Pro-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(22, 8, 'Xiaomi Mi A1 Black', 'Xiaomi-Mi-A1-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(23, 8, 'Xiaomi Mi A1 Gold', 'Xiaomi-Mi-A1-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(24, 8, 'Xiaomi Mi Max 3 Ram 4 64GB-Black', 'Xiaomi-Mi-Max-3-Ram-4–64GB-Black.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(26, 9, 'Vivo V7 Gold', 'Vivo-V7-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(27, 9, 'Vivo V9 Gold', 'Vivo-V9-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(28, 9, 'Vivo Y53C Gold', 'Vivo-Y53C-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(29, 4, 'Vivo Y69 Gold', 'Vivo-Y69-Gold.png', 10000000, '12 Tháng', 'Hộp, sách, sạc, cáp, tai nghe', 'Dán Màn Hình 4D', 'Sản phẩm này chúng tôi đang cập nhật nội dung chi tiết, các bạn có thể qua trực tiếp cửa hàng để xem sản phẩm, vì hàng chúng tôi luôn có sẵn.'),
(43, 6, 'jhgfds', 'Screenshot from 2020-10-07 10-34-15.png', 65432, 'jhsbdjdabdgsdfgsfd', 'jbjsbdjhdddddddddddddddddddd', '123234', 'olikujyhtgrf'),
(44, 1, '&lt;script&gt;alert (&quot;abc&quot;)&lt;/script&gt;', 'Screenshot from 2020-09-27 21-54-02.png', 2312, 'asdas', 'dasd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(4, 'Nguyễn Van B', 'nguyenvanb@gmail.com', '123456', 2),
(5, 'Nguyễn Van C', 'nguyenvanc@gmail.com', '123456', 2),
(6, 'Nguyễn Van D', 'nguyenvand@gmail.com', '123456', 2),
(1064, 'kien123', 'phamkien20041998@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 1),
(1094, 'hbsjdfbj', 'pahjsd@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 1),
(1116, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 2),
(1121, 'ajnsjdnj', 'kien1234@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 2),
(1122, 'ajhbsdh', 'kien1@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 2),
(1123, 'lam', 'lam@gmail.com', '25d55ad283aa400af464c76d713c07ad', 2),
(1126, 'jhasbhdbashdb', 'kien11@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 2),
(1127, 'asjhdbfjhbf', 'kien111@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 2),
(1128, '&lt;script&gt;alert(&quot;ahbsjdbh&quot;);&lt;/script&gt;', 'kien11111@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 2),
(1129, 'hbsadfhabsd', 'jhsndh@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 2),
(1130, 'ajshbdjasjd', 'kienkien@gmail.com', 'c44a471bd78cc6c2fea32b9fe028d30a', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
