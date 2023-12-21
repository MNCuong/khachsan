-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2023 lúc 03:39 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel_booking`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admins`
--

CREATE TABLE `tb_admins` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_fullname` varchar(255) NOT NULL,
  `admin_mobile` varchar(12) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admins`
--

INSERT INTO `tb_admins` (`admin_id`, `admin_name`, `admin_fullname`, `admin_mobile`, `admin_email`, `admin_pass`, `role`) VALUES
(14, 'cuongll', 'Mai Ngọc Cường', '0231234563', 'cuongll912003@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1'),
(17, 'hanhluu', '', '0865062601', 'lth1922003@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2'),
(18, 'cuongh', 'Mai Ngọc Cường', '0965509515', 'cuongll9103@gmail.com', '067d4932ed156fd2c3cb8afeae9f6601', '2'),
(19, '1', 'Việt Anh', '1', '1@example.com', 'c4ca4238a0b923820dcc509a6f75849b', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_customers`
--

CREATE TABLE `tb_customers` (
  `cus_id` int(10) UNSIGNED NOT NULL,
  `cus_name` varchar(50) NOT NULL,
  `cus_mobile` varchar(12) NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  `cus_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_customers`
--

INSERT INTO `tb_customers` (`cus_id`, `cus_name`, `cus_mobile`, `cus_email`, `cus_pass`) VALUES
(25, '1', '0965509515', 'cuongll912003@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(26, '2', '2', 'cuo9@gmail.com', 'c81e728d9d4c2f636f067f89cc14862c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_rooms`
--

CREATE TABLE `tb_order_rooms` (
  `ordroom_id` int(10) UNSIGNED NOT NULL,
  `ordroom_total` int(10) NOT NULL,
  `ordroom_total_day` date NOT NULL,
  `ordroom_start` date NOT NULL,
  `ordroom_end` date NOT NULL,
  `ordroom_status` varchar(30) NOT NULL DEFAULT 'Chờ xác nhận',
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `cus_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_rooms`
--

INSERT INTO `tb_order_rooms` (`ordroom_id`, `ordroom_total`, `ordroom_total_day`, `ordroom_start`, `ordroom_end`, `ordroom_status`, `room_id`, `cus_id`) VALUES
(9, 0, '0000-00-00', '0000-00-00', '0000-00-00', 'Chờ xác nhận', 1, 25),
(10, 1, '0000-00-00', '2003-11-11', '2003-02-22', 'Xác nhận', 1, 26),
(12, 2, '0000-00-00', '2023-12-17', '2023-12-18', 'Đã hủy', 6, 26),
(13, 2222, '2023-12-14', '2023-12-06', '2023-12-24', 'Xác nhận', 6, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_services`
--

CREATE TABLE `tb_order_services` (
  `ordser_id` int(10) UNSIGNED NOT NULL,
  `ordser_total` int(10) NOT NULL,
  `ordser_total_day` int(10) NOT NULL,
  `ordser_start` date NOT NULL,
  `ordser_end` date NOT NULL,
  `ordser_status` varchar(30) NOT NULL DEFAULT 'Chờ xác nhận',
  `ser_id` int(10) UNSIGNED NOT NULL,
  `cus_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_services`
--

INSERT INTO `tb_order_services` (`ordser_id`, `ordser_total`, `ordser_total_day`, `ordser_start`, `ordser_end`, `ordser_status`, `ser_id`, `cus_id`) VALUES
(10, 1000, 0, '2023-12-15', '2023-12-15', 'Đã hủy', 2, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_rooms`
--

CREATE TABLE `tb_rooms` (
  `room_id` int(10) UNSIGNED NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_size` varchar(10) NOT NULL,
  `room_description` varchar(255) NOT NULL,
  `room_price` int(11) NOT NULL,
  `room_amount_people` int(10) NOT NULL,
  `room_image` varchar(255) NOT NULL,
  `room_image1` varchar(255) NOT NULL,
  `room_image2` varchar(255) NOT NULL,
  `room_image3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_rooms`
--

INSERT INTO `tb_rooms` (`room_id`, `room_type`, `room_size`, `room_description`, `room_price`, `room_amount_people`, `room_image`, `room_image1`, `room_image2`, `room_image3`) VALUES
(1, 'Superior Single Room', '28m2', 'Được thiết kế theo phong cách đương đại và trang bị nhiều tiện nghi cao cấp, phòng Superior là lựa chọn tuyệt vời cho khách du lịch một mình hay cặp đôi.', 2000000, 2, '1-01.jpg', '1-01.jpg', '1-02.jpg', '1-03.jpg'),
(2, 'Luxury Single Room Art', '30m2', 'Luxury Single Room Art có kích thước giường đôi thoải mái, khu vực tiếp khách, bàn làm việc và phòng tắm riêng biệt với bồn tắm và vòi sen cùng nghệ thuật hiện đại và màu sắc trung tính.', 900000, 2, 'luxury-single.jpg', '1-01.jpg', '1-02.jpg', '1-03.jpg'),
(6, 'Superior Single Room', '28m2', 'Được thiết kế theo phong cách đương đại và trang bị nhiều tiện nghi cao cấp, phòng Superior là lựa chọn tuyệt vời cho khách du lịch một mình hay cặp đôi.', 2000000, 2, 'single_room.jpg', '1-03.jpg', '1-02.jpg', '1-01.jpg'),
(7, 'Deluxe Double Room', '35m2', ' Yên bình và riêng tư, phòng Deluxe rộng 35 m2 mang lại không gian nghỉ dưỡng thư thái và tiện nghi. Balcony rộng rãi nhìn ra thung lũng tạo thêm một điểm nhấn lãng mạn cho kì nghỉ của bạn.', 2500000, 3, 'double_room.jpg', '1-02.jpg', '1-03.jpg', '1-01.jpg'),
(8, 'Luxury Family Room Suite', '59m2', ' Không gian rộng với 2 phòng ngủ riêng biệt, 1 phòng khách sang trọng, ấm áp, Family Suite sở hữu diện tích 59m2 mang lại sự tiện nghi và thoải mái nhất cho cả gia đình, đồng thời các thành viên đều có một không gian riêng. ', 3500000, 4, 'family_room.jpg', '1-03.jpg', '1-02.jpg', '1-01.jpg'),
(9, 'Luxury Single Room Art', '30m2', ' Luxury Single Room Art có kích thước giường đôi thoải mái, khu vực tiếp khách, bàn làm việc và phòng tắm riêng biệt với bồn tắm và vòi sen cùng nghệ thuật hiện đại và màu sắc trung tính.', 900000, 1, 'single_room2.jpg', '1-02.jpg', '1-01.jpg', '1-03.jpg'),
(10, 'Prenium Deluxe Double Room', '43m2', ' Premium Deluxe là lựa chọn tuyệt vời cho du khách yêu thích sự thoải mái và tiện nghi chuẩn quốc tế. Thiết kế đương đại cùng trang thiết bị đẳng cấp phù hợp cho một chuyến công tác kết hợp nghỉ dưỡng hay đơn giản chỉ là tận hưởng kì nghỉ bên cạnh người t', 3000000, 2, 'single_room3.jpg', '1-03.jpg', '1-01.jpg', '1-02.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_services`
--

CREATE TABLE `tb_services` (
  `ser_ID` int(10) UNSIGNED NOT NULL,
  `ser_name` varchar(50) NOT NULL,
  `ser_room_size` varchar(10) NOT NULL,
  `ser_description` varchar(255) NOT NULL,
  `ser_price` int(10) NOT NULL,
  `ser_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_services`
--

INSERT INTO `tb_services` (`ser_ID`, `ser_name`, `ser_room_size`, `ser_description`, `ser_price`, `ser_image`) VALUES
(1, 'Superior Single Room', '100', 'Được thiết kế theo phong cách đương đại và trang bị nhiều tiện nghi cao cấp, phòng Superior là lựa chọn tuyệt vời cho khách du lịch một mình hay cặp đôi.', 2000000, 'restaurant.jpg'),
(2, 'Phòng họp', '50', 'Phòng họp với số lượng tối đa 50 người, không gian thoáng đãng tràn ngập ánh mặt trời với một bên là tường kính nhìn ra mặt biển.', 200000, 'meeting-room.jpg'),
(3, 'Đám cưới', '400', 'Khách sạn cung cấp dịch vụ tổ chức đám cưới phù hợp tùy nhu cầu của từng cặp đôi. Chúng tôi có một phòng đám cưới nhỏ hoặc các cặp đôi lựa chọn tổ chức đám cưới ở biển.', 1000000, 'wedding.jpg'),
(4, 'Massage', '30', 'Đến với chúng tôi, khách hàng sẽ được trải nghiệm những phút giây yên bình, thư giãn. Cơ thể và tâm trí được thả lỏng, cảm nhận sự chậm rãi của tự nhiên..', 150000, 'massage.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_admins`
--
ALTER TABLE `tb_admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tb_customers`
--
ALTER TABLE `tb_customers`
  ADD PRIMARY KEY (`cus_id`);

--
-- Chỉ mục cho bảng `tb_order_rooms`
--
ALTER TABLE `tb_order_rooms`
  ADD PRIMARY KEY (`ordroom_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `tb_order_services`
--
ALTER TABLE `tb_order_services`
  ADD PRIMARY KEY (`ordser_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `ser_id` (`ser_id`);

--
-- Chỉ mục cho bảng `tb_rooms`
--
ALTER TABLE `tb_rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Chỉ mục cho bảng `tb_services`
--
ALTER TABLE `tb_services`
  ADD PRIMARY KEY (`ser_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_admins`
--
ALTER TABLE `tb_admins`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tb_customers`
--
ALTER TABLE `tb_customers`
  MODIFY `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tb_order_rooms`
--
ALTER TABLE `tb_order_rooms`
  MODIFY `ordroom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tb_order_services`
--
ALTER TABLE `tb_order_services`
  MODIFY `ordser_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tb_rooms`
--
ALTER TABLE `tb_rooms`
  MODIFY `room_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tb_services`
--
ALTER TABLE `tb_services`
  MODIFY `ser_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tb_order_rooms`
--
ALTER TABLE `tb_order_rooms`
  ADD CONSTRAINT `tb_order_rooms_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `tb_customers` (`cus_id`),
  ADD CONSTRAINT `tb_order_rooms_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `tb_rooms` (`room_id`);

--
-- Các ràng buộc cho bảng `tb_order_services`
--
ALTER TABLE `tb_order_services`
  ADD CONSTRAINT `tb_order_services_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `tb_customers` (`cus_id`),
  ADD CONSTRAINT `tb_order_services_ibfk_2` FOREIGN KEY (`ser_id`) REFERENCES `tb_services` (`ser_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
