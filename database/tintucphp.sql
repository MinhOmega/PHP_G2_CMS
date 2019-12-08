-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 08, 2019 lúc 05:49 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintucphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `tenloai`) VALUES
(1, 'Bóng đá'),
(2, 'Thời sự'),
(3, 'Pháp luật'),
(4, 'Công nghệ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tieude` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay` datetime NOT NULL DEFAULT current_timestamp(),
  `id_loaitin` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `tieude`, `noidung`, `anh`, `tacgia`, `ngay`, `id_loaitin`, `created_at`, `updated_at`) VALUES
(1, 'Lê Tú Chinh vượt 2 đối thủ, giành HCV nội dung 100 m', '<p><strong>Chiều 8/12, L&ecirc; T&uacute; Chinh xuất sắc gi&agrave;nh tấm HCV điền kinh nội dung 100 m nữ tại SEA Games 30 khi hơn đối thủ nhập tịch đến từ Philippines đ&uacute;ng 1% gi&acirc;y.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong phần thi chung kết, T&uacute; Chinh đối mặt với hai đối thủ nhập tịch đến từ Philippines, trong đ&oacute; c&oacute; Kristina Marie Knott. &quot;C&ocirc; g&aacute;i v&agrave;ng&quot; ở cự ly ngắn của điền kinh Việt Nam cho thấy nỗ lực tuyệt vời ở đợt chạy chung kết khi vươn l&ecirc;n dẫn đầu ngay những m&eacute;t thi đấu đầu ti&ecirc;n.</p>\r\n\r\n<p>T&uacute; Chinh duy tr&igrave; lợi thế n&agrave;y trong suốt đường đua bất chấp sự vươn l&ecirc;n mạnh mẽ của đối thủ nhập tịch. Đ&acirc;y l&agrave; vận động vi&ecirc;n rất giỏi với những c&uacute; bứt tốc mạnh mẽ ở 50 m cuối c&ugrave;ng, nhưng lần n&agrave;y chị đ&atilde; thất bại trước L&ecirc; T&uacute; Chinh.</p>\r\n\r\n<p>Ở gần vạch đ&iacute;ch l&agrave; cuộc so k&egrave; giữa T&uacute; Chinh v&agrave; Marie Knott. Động lực từ thất bại ở nội dung 200 m v&agrave; mục ti&ecirc;u mang vinh quang về cho Đo&agrave;n thể thao Việt Nam đ&atilde; gi&uacute;p T&uacute; Chinh gi&agrave;nh được tấm HCV.</p>\r\n\r\n<p>Chiến thắng gọi t&ecirc;n vận động vi&ecirc;n Việt Nam với th&agrave;nh t&iacute;ch 11 gi&acirc;y 54, hơn đối thủ 1% gi&acirc;y. Đặc biệt đ&acirc;y l&agrave; phần thưởng xứng đ&aacute;ng khi T&uacute; Chinh v&agrave; HLV Thanh Hương đ&atilde; vượt qua &quot;chi&ecirc;u tr&ograve;&quot; nhập tịch vận động vi&ecirc;n của Philippines.</p>\r\n\r\n<p>Th&agrave;nh t&iacute;ch n&agrave;y cũng gi&uacute;p T&uacute; Chinh thiết lập kỷ lục thi đấu c&aacute; nh&acirc;n trong năm nay. Ng&agrave;y 7/12, vận động vi&ecirc;n TP.HCM đ&atilde; thua ch&iacute;nh Knott tại chung kết nội dung 200 m nữ khi c&aacute;n đ&iacute;ch với kết quả 23 gi&acirc;y 45.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; tấm HCV đầu ti&ecirc;n của T&uacute; Chinh tại đại hội năm nay. Th&agrave;nh t&iacute;ch n&agrave;y ấn tượng hơn khi đến từ nội dung danh gi&aacute; 100 m của m&ocirc;n điền kinh. Chiến thắng n&agrave;y sẽ gi&uacute;p T&uacute; Chinh v&agrave; đồng đội c&oacute; th&ecirc;m động lực v&agrave; tự tin để hướng tới c&aacute;c nội dung thi đấu tiếp theo.</p>\r\n', 'anh1.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 22:57:07', 1, '2019-12-08 19:08:57', '2019-12-08 19:08:57'),
(2, 'Lý Hoàng Nam nhận 5.000 USD sau HCV lịch sử ở SEA Games 30', '<p>Tại SEA Games 30, L&yacute; Ho&agrave;ng Nam đ&aacute;nh bại Daniel Cao Nguyễn gi&agrave;nh HCV. Lần đầu ti&ecirc;n quần vợt Việt Nam c&oacute; HCV tại Đại hội Thể thao Đ&ocirc;ng Nam &Aacute;. Đ&acirc;y cũng l&agrave; chiến c&ocirc;ng đầu của Ho&agrave;ng Nam sau nhiều lần thất bại tại SEA Games.</p>\r\n\r\n<p>&quot;Trước SEA Games 30, t&ocirc;i kh&ocirc;ng may bị chấn thương cổ tay, chỉ tập luyện được 7 ng&agrave;y trước khi sang Philippines. Trong qu&aacute; tr&igrave;nh thi đấu, ban huấn luyện đ&atilde; l&agrave;m mọi c&aacute;ch để t&ocirc;i được ra s&acirc;n. Khi thi đấu, sự căng thẳng v&agrave; &aacute;p lực gi&uacute;p t&ocirc;i qu&ecirc;n cơn đau để đạt mục ti&ecirc;u cuối c&ugrave;ng&quot;, Ho&agrave;ng Nam kể lại.</p>\r\n\r\n<p>Daniel Cao Nguyễn nhận&nbsp;2.500 USD&nbsp;cho tấm HCB ngay lần đầu dự SEA Games. VĐV Việt kiều đặt tham vọng lớn v&agrave;o năm 2020 khi muốn trở lại top 200 ATP. &quot;Nếu Li&ecirc;n đo&agrave;n Quần vợt muốn c&oacute; sự phục vụ của t&ocirc;i trong năm tới, t&ocirc;i sẽ thu xếp để trở về cống hiến cho sự ph&aacute;t triển thể thao nước nh&agrave; v&agrave; tạo cơ hội cho c&aacute;c đồng đội được cọ x&aacute;t&quot;, Daniel Cao Nguyễn chia sẻ.</p>\r\n\r\n<p>Đội tuyển quần vợt kh&eacute;p lại SEA Games 30 với 1 HCV, 2 HCB v&agrave; 3 HCĐ. Đ&acirc;y l&agrave; th&agrave;nh t&iacute;ch tốt nhất lịch sử, gi&uacute;p Việt Nam vượt Th&aacute;i Lan đứng nh&igrave; trong c&aacute;c đội tuyển quần vợt dự SEA Games 30.</p>\r\n\r\n<p>Trưa 8/12, đội tuyển quần vợt Việt Nam về tới TP.HCM sau kỳ SEA Games 30 th&agrave;nh c&ocirc;ng ngo&agrave;i mong đợi.<br />\r\nLy Hoang Nam nhan 5.000 USD sau HCV lich su o SEA Games 30 hinh anh 1&nbsp;<br />\r\nTại s&acirc;n bay T&acirc;n Sơn Nhất trưa 8/12, Chủ tịch Nguyễn Quốc Kỳ dẫn đầu Li&ecirc;n đo&agrave;n Quần vợt Việt Nam đ&oacute;n đội tuyển trở về từ Philippines. L&yacute; Ho&agrave;ng Nam bước ra đầu ti&ecirc;n v&agrave; thu h&uacute;t sự ch&uacute; &yacute; của người h&acirc;m mộ.<br />\r\nLy Hoang Nam nhan 5.000 USD sau HCV lich su o SEA Games 30 hinh anh 2&nbsp;<br />\r\nTại SEA Games 30, L&yacute; Ho&agrave;ng Nam đ&aacute;nh bại Daniel Cao Nguyễn gi&agrave;nh HCV. Lần đầu ti&ecirc;n quần vợt Việt Nam c&oacute; HCV tại Đại hội Thể thao Đ&ocirc;ng Nam &Aacute;. Đ&acirc;y cũng l&agrave; chiến c&ocirc;ng đầu của Ho&agrave;ng Nam sau nhiều lần thất bại tại SEA Games.<br />\r\nLy Hoang Nam nhan 5.000 USD sau HCV lich su o SEA Games 30 hinh anh 3&nbsp;<br />\r\nĐội tuyển nam quần vợt Việt Nam dưới sự dẫn dắt của HLV Ivan Miranda (thứ 3 từ tr&aacute;i sang) gi&agrave;nh cả HCV, HCB v&agrave; HCĐ tại SEA Games 30. Tấm HCĐ ở nội dung đ&aacute;nh đ&ocirc;i của cặp L&yacute; Ho&agrave;ng Nam - L&ecirc; Quốc Kh&aacute;nh. Daniel Cao Nguyễn (thứ 2 từ phải sang) được dự đo&aacute;n gi&agrave;nh HCV, song thất bại trước Ho&agrave;ng Nam.<br />\r\nLy Hoang Nam nhan 5.000 USD sau HCV lich su o SEA Games 30 hinh anh 4&nbsp;<br />\r\nVới tấm HCV, Ho&agrave;ng Nam được Li&ecirc;n đo&agrave;n Quần vợt Việt Nam thưởng 5.000 USD. Hướng tới 2020, Ho&agrave;ng Nam đặt mục ti&ecirc;u cải thiện từ top 600 ATP l&ecirc;n 500 hoặc c&oacute; thể l&agrave; 400. Anh đ&atilde; l&ecirc;n kế hoạch sang Mỹ hoặc ch&acirc;u &Acirc;u tập huấn.</p>\r\n\r\n<p><br />\r\nLy Hoang Nam nhan 5.000 USD sau HCV lich su o SEA Games 30 hinh anh 5&nbsp;<br />\r\n&quot;Trước SEA Games 30, t&ocirc;i kh&ocirc;ng may bị chấn thương cổ tay, chỉ tập luyện được 7 ng&agrave;y trước khi sang Philippines. Trong qu&aacute; tr&igrave;nh thi đấu, ban huấn luyện đ&atilde; l&agrave;m mọi c&aacute;ch để t&ocirc;i được ra s&acirc;n. Khi thi đấu, sự căng thẳng v&agrave; &aacute;p lực gi&uacute;p t&ocirc;i qu&ecirc;n cơn đau để đạt mục ti&ecirc;u cuối c&ugrave;ng&quot;, Ho&agrave;ng Nam kể lại.<br />\r\nLy Hoang Nam nhan 5.000 USD sau HCV lich su o SEA Games 30 hinh anh 6&nbsp;<br />\r\nDaniel Cao Nguyễn nhận 2.500 USD cho tấm HCB ngay lần đầu dự SEA Games. VĐV Việt kiều đặt tham vọng lớn v&agrave;o năm 2020 khi muốn trở lại top 200 ATP. &quot;Nếu Li&ecirc;n đo&agrave;n Quần vợt muốn c&oacute; sự phục vụ của t&ocirc;i trong năm tới, t&ocirc;i sẽ thu xếp để trở về cống hiến cho sự ph&aacute;t triển thể thao nước nh&agrave; v&agrave; tạo cơ hội cho c&aacute;c đồng đội được cọ x&aacute;t&quot;, Daniel Cao Nguyễn chia sẻ.<br />\r\nLy Hoang Nam nhan 5.000 USD sau HCV lich su o SEA Games 30 hinh anh 7&nbsp;<br />\r\nĐội tuyển quần vợt kh&eacute;p lại SEA Games 30 với 1 HCV, 2 HCB v&agrave; 3 HCĐ. Đ&acirc;y l&agrave; th&agrave;nh t&iacute;ch tốt nhất lịch sử, gi&uacute;p Việt Nam vượt Th&aacute;i Lan đứng nh&igrave; trong c&aacute;c đội tuyển quần vợt dự SEA Games 30.<br />\r\n<b>L&yacute; Ho&agrave;ng Nam n&oacute;i về tấm HCV lịch sử cho quần vợt Việt Nam</b> S&aacute;ng 6/12, L&yacute; Ho&agrave;ng Nam gi&agrave;nh chiến thắng với tỷ số 6-2, 6-4 trước đồng đội Daniel Cao Nguyễn, qua đ&oacute; đem về tấm HCV lịch sử cho quần vợt Việt Nam.</p>\r\n', 'HN_zing_1.jpg', 'Vo Ngoc Quang Minh', '2019-12-08 21:12:24', 1, '2019-12-08 19:08:57', '2019-12-08 19:08:57'),
(3, 'Cứu hơn 60 người thoát khỏi đám cháy ở BIDV', '<p>Khoảng 12h ng&agrave;y 8/12, vụ hỏa hoạn xảy ra tại Ng&acirc;n h&agrave;ng BIDV ở tầng 1 t&ograve;a cao ốc 71 Nguyễn Ch&iacute; Thanh, quận Đống Đa, H&agrave; Nội. Ngọn lửa sau đ&oacute; lan l&ecirc;n tầng 2 t&ograve;a nh&agrave;.</p>\r\n\r\n<p>Ph&aacute;t hiện đ&aacute;m ch&aacute;y, một số nh&acirc;n vi&ecirc;n nh&agrave; băng đ&atilde; b&aacute;o cảnh s&aacute;t. Ngay sau đ&oacute;, Đội cảnh s&aacute;t PCCC&amp;CNCH C&ocirc;ng an quận Đống Đa điều 7 xe cứu hỏa, xe thang v&agrave; hơn 30 chiến sĩ đến hiện trường.</p>\r\n\r\n<p>Đ&aacute;m ch&aacute;y ở tầng 1 v&agrave; 2 khiến kh&oacute;i bốc l&ecirc;n c&aacute;c tầng tr&ecirc;n cao của t&ograve;a nh&agrave; 25 tầng. H&agrave;ng chục người mắc kẹt do lối l&ecirc;n xuống bị kh&oacute;i bao phủ.</p>\r\n\r\n<p>Đội cứu hộ đ&atilde; sử dụng xe thang kết hợp hướng dẫn hơn 60 người tho&aacute;t nạn bằng thang bộ.</p>\r\n\r\n<p>Đến gần 13h c&ugrave;ng ng&agrave;y, cảnh s&aacute;t PCCC khống chế được ngọn lửa. Tại hiện trường, nhiều đồ đạc trong trụ sở ng&acirc;n h&agrave;ng ở tầng 1 hư hỏng.</p>\r\n\r\n<p>Chỉ huy&nbsp;Đội cảnh s&aacute;t PCCC&amp;CNCH Đống Đa cho biết sự cố kh&ocirc;ng g&acirc;y thiệt hại về người.</p>\r\n\r\n<p>T&ograve;a nh&agrave; xảy ra hỏa hoạn c&oacute; 25 tầng, trong đ&oacute; 2 tầng d&agrave;nh cho c&aacute;c cửa h&agrave;ng b&aacute;n lẻ, 3 tầng d&agrave;nh cho khối văn ph&ograve;ng v&agrave; 20 tầng c&ograve;n lại d&agrave;nh cho căn hộ.</p>\r\n', '79835836_1343508275859409_7674276104550481920_n.jpg', 'Vo Ngoc Quang Minh', '2019-12-08 21:00:04', 2, '2019-12-08 19:08:57', '2019-12-08 19:08:57'),
(4, 'Tuyển nữ Việt Nam 0-0 Thái Lan: Nguyễn Thị Vạn tích cực sút xa', '<p>Số 18 của tuyển nữ Việt Nam li&ecirc;n tục thực hiện những c&uacute; dứt điểm từ xa trong hiệp một v&agrave; g&acirc;y kh&aacute; nhiều kh&oacute; khăn cho h&agrave;ng thủ Th&aacute;i Lan.</p>\r\n', 'aaaaa.jpg', 'Trần Ngọc Ánh', '2019-12-08 20:05:34', 1, '2019-12-08 20:05:34', '2019-12-08 20:05:34'),
(5, 'Báo châu Á: \"Không thể ngăn cản U22 VN\"', '<p><strong>Tờ Fox Sports Asia d&ugrave;ng từ &quot;kh&ocirc;ng thể cản&quot; để mi&ecirc;u tả đội tuyển U22 Việt Nam sau chiến thắng 4-0 trước Campuchia tại b&aacute;n kết m&ocirc;n b&oacute;ng đ&aacute; nam SEA Games 30.</strong></p>\r\n', 'dchinh_zing.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 22:37:20', 1, '2019-12-08 20:13:54', '2019-12-08 20:13:54'),
(6, 'SEA Games 30: Đoàn Việt Nam giành 19 HCV trong ngày 8/12', '<p><strong>Ng&agrave;y 8/12, Đo&agrave;n thể thao Việt Nam đ&atilde; gi&agrave;nh được 19 tấm HCV, qua đ&oacute; n&acirc;ng tổng số HCV l&ecirc;n th&agrave;nh 65 v&agrave; đạt chỉ ti&ecirc;u đề ra d&ugrave; vẫn c&ograve;n những ng&agrave;y tranh t&agrave;i tiếp theo tại đại hội.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Danh s&aacute;ch VĐV gi&agrave;nh huy chương ng&agrave;y 8/12</strong></div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong><em>- HCV</em></strong></div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Phạm Thị Thu Trang (điền kinh, đi bộ 10 km nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Phạm Thị Huệ (điền kinh, chạy 10.000 m nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Đỗ Thị &Aacute;nh Nguyệt, Lộc Thị Đ&agrave;o, Nguyễn Thị Phương (bắn cung, cung 1 d&acirc;y đồng đội nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Ho&agrave;ng Phi Vũ - Lộc Thị Đ&agrave;o (bắn cung, cung 1 d&acirc;y đ&ocirc;i nam nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Lộc Thị Đ&agrave;o (bắn cung, cung 1 d&acirc;y c&aacute; nh&acirc;n nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Thanh Duy (karate, kumite dưới 60 kg nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Thị Phương, Lưu Thị Thu Uy&ecirc;n, L&ecirc; Thị Kh&aacute;nh Ly (karate, kata đồng đội nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Ng&ocirc; Đ&igrave;nh Nại (billiards, carom 1 băng)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">B&ugrave;i Yến Ly (muay, 54 kg nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Phước Đến, Nguyễn Tiến Nhật, Trương Trần Nhật Minh v&agrave; Đặng Anh Tuấn (đấu kiếm, kiếm 3 cạnh đồng đội nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Thị Oanh (điền kinh, 1.500 m nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Dương Văn Th&aacute;i ( điền kinh, 1.500 m nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&ecirc; T&uacute; Chinh (điền kinh, 100 m nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Phạm Thị Thu Hiền (taekwondo, 62 kg nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Trần Hưng Nguy&ecirc;n (bơi, 400 m hỗn hợp c&aacute; nh&acirc;n nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Thị &Aacute;nh Vi&ecirc;n (bơi, 400 m hỗn hợp c&aacute; nh&acirc;n nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Bạc Thị Khi&ecirc;m (taekwondo, 67 kg nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Thị Huyền (điền kinh, 400 m nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Trần Nhật Ho&agrave;ng (điền kinh, 400 m nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><em><strong>- HCB</strong></em></div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Phạm Thị Hồng Lệ (điền kinh, chạy 10.000 m nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&ecirc; Thị Hiền - Phạm Thị Huệ (rowing, thuyền đ&ocirc;i nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Văn H&agrave; - Nhữ Đ&igrave;nh Nam (rowing, thuyền đ&ocirc;i nam hạng nhẹ 2 m&aacute;i ch&egrave;o)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Phạm Cảnh Ph&uacute;c (billiards, carom 1 băng)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">B&ugrave;i Thu H&agrave;, Ph&ugrave;ng Kh&aacute;nh Ly, L&ecirc; Minh Hằng, Đỗ Thị T&acirc;m (đấu kiếm, kiếm ch&eacute;m đồng đội nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&ecirc; Quang Li&ecirc;m (cờ vua, cờ chớp nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Do&atilde;n Long (muay, 57 kg nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&ograve; Thị Ho&agrave;ng (điền kinh, n&eacute;m lao nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Trần Đ&igrave;nh Sơn (điền kinh, 400 m nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong><em>- HCĐ</em></strong></div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&ecirc; Ho&agrave;ng Đức (muay, 45 kg nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&ecirc; Tuấn Minh (cơ vua, cờ chớp nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Ho&agrave;ng Thị Bảo Tr&acirc;m (cờ vua, cờ chớp nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Khuất Phương Anh (điền kinh, 1.500 m nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Đặng Hồng Sơn (karate, 67 kg nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Trang Cẩm L&agrave;nh (karate, 55 kg nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Hồ Thị Thu Hiền (karate, 61 kg nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Vũ Thị Mộng Mơ (điền kinh, nhảy xa nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Hữu Kim Sơn (bơi, 400 m hỗn hợp c&aacute; nh&acirc;n nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Ho&agrave;ng Qu&yacute; Phước (bơi, 100 m tự do nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Qu&aacute;ch Thị Lan (điền kinh, 400 m nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&acirc;m Thị H&agrave; Thanh (taekwondo, tr&ecirc;n 73 kg nữ)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">L&yacute; Hồng Ph&uacute;c (taekwondo, dưới 74 kg nam)</div>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">Nguyễn Văn Duy (taekwondo, dưới 68 kg nam)</div>\r\n', 'entertaiment-06.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 22:51:40', 1, '2019-12-08 20:27:19', '2019-12-08 20:27:19'),
(7, 'Thầy Park đến sân cổ vũ tuyển nữ Việt Nam gặp Thái Lan ở chung kết', '<p><strong>Nh&agrave; cầm qu&acirc;n người H&agrave;n Quốc c&oacute; mặt tr&ecirc;n kh&aacute;n đ&agrave;i s&acirc;n Rizal Memorial để cổ vũ cho thầy tr&ograve; HLV Mai Đức Chung t&aacute;i đấu Th&aacute;i Lan trong trận chung kết b&oacute;ng đ&aacute; nữ tại SEA Games 30.</strong></p>\r\n\r\n<p>Sau khi gi&agrave;nh thắng lợi 4-0 trước U22 Campuchia ở trận b&aacute;n kết SEA Games 30,&nbsp;đội tuyển U22 Việt Nam c&oacute; ng&agrave;y để nghỉ ngơi. Tối 8/12, HLV Park Hang-seo v&agrave; đội ngũ trợ l&yacute; c&oacute; mặt tr&ecirc;n s&acirc;n Rizal Memorial để cổ vũ cho đội tuyển nữ Việt Nam đối đầu Th&aacute;i Lan.</p>\r\n\r\n<p>Trước trận b&aacute;n kết nội dung b&oacute;ng đ&aacute; nữ, thầy Park đ&atilde; đến kh&iacute;ch lệ tinh thần v&agrave; ch&uacute;c may mắn đo&agrave;n qu&acirc;n của HLV Mai Đức Chung. Kết quả, tuyển nữ Việt Nam gi&agrave;nh chiến thắng trước đội chủ nh&agrave; Philippines với tỷ số 2-0 tr&ecirc;n s&acirc;n Binan để bước v&agrave;o chung kết.</p>\r\n\r\n<p>Khi quốc ca Việt Nam vang l&ecirc;n trong trận chung kết, thầy Park đặt tay l&ecirc;n tr&aacute;i tim hướng về l&aacute; cờ đỏ sao v&agrave;ng. Nh&agrave; cầm qu&acirc;n người H&agrave;n Quốc đ&atilde; c&oacute; hơn 2 năm gắn b&oacute; với b&oacute;ng đ&aacute; Việt Nam. Đầu th&aacute;ng 11 năm nay, VFF x&aacute;c nhận đ&agrave;m ph&aacute;n th&agrave;nh c&ocirc;ng gia hạn hợp đồng với thầy Park. Hợp đồng mới sẽ k&eacute;o d&agrave;i 3 năm.</p>\r\n', 'c0fd94682844d11a8855_zing.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 21:16:50', 1, '2019-12-08 21:14:52', '2019-12-08 21:14:52'),
(8, 'Tiền đạo Indonesia: \"U22 Việt Nam có nhiều cầu thủ chất lượng\"', '<p><b>Tiền đạo Osvaldo Haay của Indonesia tỏ r&otilde; quyết t&acirc;m trước trận chung kết SEA Games 30 với U22 Việt Nam diễn ra tối 10/12.</b></p>\r\n\r\n<p>&quot;U22 Myanmar thực sự l&agrave; đối thủ kh&ocirc;ng dễ chơi ch&uacute;t n&agrave;o, họ l&agrave; đội nhất bảng A với mạch trận bất bại. Ch&uacute;ng t&ocirc;i chiến đấu vất vả mới c&oacute; th&agrave;nh quả n&agrave;y&quot;, Osvaldo Haay chia sẻ sau trận b&aacute;n kết b&oacute;ng đ&aacute; nam SEA Games tối 7/12.&nbsp;</p>\r\n\r\n<p>Trong trận gặp Myanmar, U22 Indonesia vươn l&ecirc;n dẫn 2-0 tới ph&uacute;t 71, nhưng lại để đối thủ gỡ h&ograve;a ở những ph&uacute;t cuối. U22 Indonesia ghi liền 2 b&agrave;n thắng trong thời gian thi đấu hiệp phụ để gi&agrave;nh v&eacute; v&agrave;o chung kết. C&aacute; nh&acirc;n Osvaldo đ&oacute;ng g&oacute;p 1 b&agrave;n v&agrave; vươn l&ecirc;n dẫn đầu danh s&aacute;ch cuộc đua vua ph&aacute; lưới m&ocirc;n b&oacute;ng đ&aacute; nam SEA Games (8 b&agrave;n).</p>\r\n', 'hay1_zing.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 21:19:03', 1, '2019-12-08 21:19:03', '2019-12-08 21:19:03'),
(9, 'Áp lực từ sai lầm không thể đánh gục Văn Toản', '<p><b>Cản ph&aacute; được quả phạt đền trước U22 Campuchia, thủ m&ocirc;n Văn Toản như đẩy bay những &aacute;p lực đang bủa v&acirc;y anh.</b></p>\r\n\r\n<p>Pha cản ph&aacute; c&uacute; đ&aacute; phạt đền của Keo Sokpheng của Văn Toản đến chỉ 2 ng&agrave;y sau khi anh mắc sai lầm tai hại khiến U22 Việt Nam su&yacute;t ch&uacute;t nữa bị loại khỏi SEA Games.</p>\r\n\r\n<p>Lịch sử b&oacute;ng đ&aacute; Việt Nam lu&ocirc;n chứng kiến những thủ m&ocirc;n chơi tuyệt vời ở mỗi giải đấu ch&uacute;ng ta gặt h&aacute;i th&agrave;nh c&ocirc;ng. Thủ m&ocirc;n Dương Hồng Sơn với&nbsp;<a href=\"https://news.zing.vn/tieu-diem/aff-cup-giai.html\" title=\"Tin tức AFF Cup\">AFF Cup</a>&nbsp;2008 l&agrave; v&iacute; dụ điển h&igrave;nh. Anh bắt như l&ecirc;n đồng ở 4 trận cuối giải, gi&uacute;p tuyển Việt Nam v&ocirc; địch, v&agrave; anh gi&agrave;nh lu&ocirc;n Quả b&oacute;ng v&agrave;ng Việt Nam.</p>\r\n', 'keo_sokpheng_6_zing.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 21:19:48', 1, '2019-12-08 21:19:48', '2019-12-08 21:19:48'),
(10, 'Thủ môn Campuchia: \"U22 Việt Nam giúp chúng tôi học được nhiều điều\"', '<p><strong>Chia sẻ sau trận thua U22 Việt Nam, thủ m&ocirc;n Keo Soksela cảm thấy thất vọng khi kh&ocirc;ng thể gi&uacute;p Campuchia gi&agrave;nh v&eacute; v&agrave;o chung kết b&oacute;ng đ&aacute; nam SEA Games 30.</strong></p>\r\n\r\n<p>Ở trận b&aacute;n kết b&oacute;ng đ&aacute; nam SEA Games tr&ecirc;n s&acirc;n Rizal Memorial tối 7/12, thủ m&ocirc;n Keo Soksela tiếp tục được trao cơ hội bắt ch&iacute;nh nơi khung th&agrave;nh U22 Campuchia. L&agrave; người phải v&agrave;o lưới nhặt b&oacute;ng 4 lần trước U22 Việt Nam, anh kh&ocirc;ng giấu nổi nỗi thất vọng tr&ecirc;n đường trở về kh&aacute;ch sạn.</p>\r\n\r\n<p>&quot;V&ocirc; c&ugrave;ng tiếc nuối khi ch&uacute;ng t&ocirc;i thi đấu kh&ocirc;ng tốt như kỳ vọng. Hầu hết ch&uacute;ng t&ocirc;i tự mắc lỗi trong những t&igrave;nh huống ph&ograve;ng ngự&quot;, Soksela chia sẻ.</p>\r\n\r\n<p>Ph&uacute;t 19, tiền đạo Nguyễn Tiến Linh l&agrave; người kết th&uacute;c pha phản c&ocirc;ng đến từ ph&iacute;a U22 Việt Nam. C&uacute; đ&aacute;nh đầu trong tư thế thoải m&aacute;i của anh đưa b&oacute;ng đi v&agrave;o g&oacute;c xa khung th&agrave;nh khiến thủ m&ocirc;n U22 Campuchia chỉ biết đứng nh&igrave;n.&nbsp;</p>\r\n\r\n<p>&quot;C&aacute;c b&agrave;n thắng của U22 Việt Nam kh&ocirc;ng hề qu&aacute; kh&oacute; để cản ph&aacute;. N&oacute; đến từ lỗi ph&ograve;ng ngự. Ch&uacute;ng t&ocirc;i mắc sai lầm trong phần lớn thời gian của trận đấu. T&ocirc;i tiếc nuối v&igrave; điều đ&oacute;&quot;, thủ m&ocirc;n đang chơi cho CLB Phnom Penh Crown cho biết.</p>\r\n\r\n<p>Sau trận thua U22 Việt Nam, Campuchia hướng đến trận tranh huy chương đồng với Myanmar, đội b&oacute;ng để thua U22 Indonesia ở trận b&aacute;n kết đầu ti&ecirc;n. Thầy tr&ograve; HLV Felix Dalmas đang hướng đến tấm huy chương đầu ti&ecirc;n trong lịch sử tham dự m&ocirc;n b&oacute;ng đ&aacute; nam qua c&aacute;c kỳ SEA Games.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i vẫn c&ograve;n cơ hội l&agrave;m được điều g&igrave; đ&oacute; ở giải lần n&agrave;y. Ch&uacute;ng t&ocirc;i đ&atilde; học được nhiều điều nhờ trận đấu với U22 Việt Nam. Tất nhi&ecirc;n, ch&uacute;ng t&ocirc;i sẽ qu&ecirc;n đi thất bại v&agrave; đem những kinh nghiệm học được để ph&aacute;t triển tư duy cũng như kỹ thuật của bản th&acirc;n để &aacute;p dụng cho trận đấu sắp tới&quot;, thủ m&ocirc;n U22 Campuchia n&oacute;i.</p>\r\n', '2_zing.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 21:20:55', 1, '2019-12-08 21:20:55', '2019-12-08 21:20:55'),
(11, 'HLV Park: \"Tôi bị đau mắt nhưng không sao đâu\"', '<p><strong>Huấn luyện vi&ecirc;n trưởng U22 Việt Nam Park Hang-seo l&ecirc;n tiếng về việc bản th&acirc;n bị đau mắt trong thời gian SEA Games 30 diễn ra ở Philippines.</strong></p>\r\n\r\n<p>Một ng&agrave;y trước trận đấu với U22 Campuchia ở b&aacute;n kết SEA Games 30, ph&oacute;ng vi&ecirc;n&nbsp;<em>Zing.vn</em>&nbsp;bắt gặp cảnh huấn luyện vi&ecirc;n Park xuất hiện ở buổi tập của U22 Việt Nam với b&ecirc;n mắt bị sưng đỏ, tay c&oacute; cầm theo g&oacute;i thuốc đi tr&ecirc;n đường v&agrave;o s&acirc;n.&nbsp;</p>\r\n\r\n<p>Sau khi gi&agrave;nh chiến thắng trước Campuchia để gi&agrave;nh quyền v&agrave;o chung kết m&ocirc;n b&oacute;ng đ&aacute; nam SEA Games, &ocirc;ng thầy người H&agrave;n đ&iacute;ch th&acirc;n l&ecirc;n tiếng về t&igrave;nh h&igrave;nh sức khoẻ của m&igrave;nh.</p>\r\n\r\n<p>&quot;T&ocirc;i c&oacute; bị đau mắt, nhưng kh&ocirc;ng nặng lắm. Đ&oacute; l&agrave; l&yacute; do t&ocirc;i kh&ocirc;ng muốn đến gần cầu thủ lắm. S&aacute;ng 8/12, t&ocirc;i tiếp tục đi bệnh vi&ecirc;n để kh&aacute;m xem sao. T&ocirc;i nghĩ mọi thứ sẽ ổn th&ocirc;i&quot;, HLV Park chia sẻ tại cuộc họp b&aacute;o sau trận đấu tối 7/12.</p>\r\n', 'p_zing.jpg', 'Võ Ngọc Quang Minh', '2019-12-08 21:21:55', 1, '2019-12-08 21:21:55', '2019-12-08 21:21:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `hoten`, `email`, `matkhau`, `created_at`, `updated_at`) VALUES
(1, 'Võ Ngọc Quang Minh', 'minhvo050298@gmail.com', '123', '2019-12-08 21:04:01', '2019-12-08 21:04:01'),
(2, 'Hoàng Ngọc Thắng', 'thang@gmail.com', '123', '2019-12-08 21:04:01', '2019-12-08 21:04:01'),
(3, 'Trần Ngọc Ánh', 'anh@gmail.com', '123', '2019-12-08 21:04:01', '2019-12-08 21:04:01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
