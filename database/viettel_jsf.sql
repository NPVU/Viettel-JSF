-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2018 lúc 09:27 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `viettel_jsf`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `baiviet_id` bigint(20) NOT NULL,
  `baiviet_tieude` text COLLATE utf8_unicode_ci,
  `baiviet_icon_url` text COLLATE utf8_unicode_ci,
  `baiviet_noidung` text COLLATE utf8_unicode_ci,
  `baiviet_tacgia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baiviet_ngaytao` date DEFAULT NULL,
  `baiviet_ngayxuatban` date DEFAULT NULL,
  `baiviet_xuatban` tinyint(1) DEFAULT NULL,
  `danhmuc_baiviet_id` int(11) DEFAULT NULL,
  `taikhoan_id` bigint(20) DEFAULT NULL,
  `taptin_id` bigint(20) DEFAULT NULL,
  `baiviet_hienthi_trangchu` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`baiviet_id`, `baiviet_tieude`, `baiviet_icon_url`, `baiviet_noidung`, `baiviet_tacgia`, `baiviet_ngaytao`, `baiviet_ngayxuatban`, `baiviet_xuatban`, `danhmuc_baiviet_id`, `taikhoan_id`, `taptin_id`, `baiviet_hienthi_trangchu`) VALUES
(1, 'Internet Cáp Quang', NULL, '<div class=\"entry\">\r\n<p style=\"text-align:center\"><span style=\"color:#000080; font-size:14pt\"><strong><strong>Lắp Internet&nbsp;C&aacute;p Quang, Truyền H&igrave;nh Số&nbsp;tại&nbsp;Cần Thơ</strong></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#008000; font-size:24pt\"><strong><strong>VIETTEL CẦN THƠ</strong></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#ff0000\"><strong><strong>Hotline: 01688 100 100 &ndash; 0985 555 352</strong></strong></span></p>\r\n\r\n<p>(<strong><strong>C&aacute;p quang Viettel&nbsp;Cần Thơ</strong></strong>)&nbsp;&ndash;&nbsp;<strong><strong>Hotline&nbsp;<span style=\"color:#000000\">01688 100 100 &ndash; 0985 555 352 </span></strong></strong>Dịch vụ Internet&nbsp;c&aacute;p quang&nbsp;hiện nay c&oacute; chi ph&iacute; thấp&nbsp;v&agrave; phổ biến đến mọi&nbsp;gia đ&igrave;nh. Tại th&agrave;nh phố Cần Thơ th&igrave; chi ph&iacute; lắp&nbsp;c&aacute;p quang Viettel&nbsp;cũng đ&atilde; rẻ hơn rất nhiều so với trước kia, thời gian lắp đặt&nbsp;rất nhanh, tối đa trong&nbsp;24h&nbsp;sau khi h&ograve;a mạng, kh&aacute;ch h&agrave;ng đ&atilde; c&oacute; thể sử dụng dịch vụ.</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"fasc-button fasc-size-large fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">Bấm gọi ngay: 01688 100 100</a></p>\r\n\r\n<p><img alt=\"\" class=\"tie-appear\" src=\"https://i.imgur.com/vcs4HuL.jpg\" style=\"height:339px\" /></p>\r\n\r\n<table class=\" aligncenter\" style=\"font-weight:400; width:611.5px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"6\" style=\"width:603px\">\r\n			<p style=\"text-align:center\"><span style=\"color:#ff0000\"><strong><strong>CH&Iacute;NH S&Aacute;CH H&Ograve;A MẠNG INTERNET ĐƠN LẺ</strong></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:70px\"><span style=\"font-size:10pt\"><strong><strong>G&oacute;i sản phẩm</strong></strong></span></td>\r\n			<td style=\"text-align:center; width:62px\"><span style=\"font-size:10pt\"><strong><strong>Đặc điểm</strong></strong></span></td>\r\n			<td style=\"text-align:center; width:91px\"><span style=\"font-size:13.3333px\"><strong>Gi&aacute; ni&ecirc;m yết</strong></span></td>\r\n			<td style=\"text-align:center; width:96px\"><span style=\"font-size:10pt\"><strong><strong>Gi&aacute; khuyến m&atilde;i</strong></strong></span></td>\r\n			<td style=\"text-align:center; width:126px\"><span style=\"font-size:10pt\">&nbsp;<strong>Hotline</strong></span></td>\r\n			<td style=\"text-align:center; width:128px\"><strong><span style=\"font-size:13.3333px\">Ưu Đ&atilde;i</span></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:70px\"><strong><strong>Net 1</strong></strong></td>\r\n			<td style=\"text-align:center; width:62px\">15 Mbps</td>\r\n			<td style=\"text-align:center; width:91px\">250.000</td>\r\n			<td style=\"text-align:center; width:96px\">165.000</td>\r\n			<td style=\"text-align:center; width:126px\"><a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n			<td rowspan=\"6\" style=\"text-align:center; width:128px\"><span style=\"color:#ff0000\">Tặng 1 đến 6 th&aacute;ng cước. Đặc biệt: Tặng 6 th&aacute;ng xem Viettel TV tr&ecirc;n smartphone</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:70px\"><strong><strong>Net 2</strong></strong></td>\r\n			<td style=\"text-align:center; width:62px\">20 Mbps</td>\r\n			<td style=\"text-align:center; width:91px\">300.000</td>\r\n			<td style=\"text-align:center; width:96px\">180.000</td>\r\n			<td style=\"text-align:center; width:126px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:70px\"><strong><strong>Net 3</strong></strong></td>\r\n			<td style=\"text-align:center; width:62px\">25 Mbps</td>\r\n			<td style=\"text-align:center; width:91px\">350.000</td>\r\n			<td style=\"text-align:center; width:96px\">200.000</td>\r\n			<td style=\"text-align:center; width:126px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:70px\"><strong><strong>Net 4</strong></strong></td>\r\n			<td style=\"text-align:center; width:62px\">30 Mbps</td>\r\n			<td style=\"text-align:center; width:91px\">400.000</td>\r\n			<td style=\"text-align:center; width:96px\">220.000</td>\r\n			<td style=\"text-align:center; width:126px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:70px\"><strong><strong>Net 5</strong></strong></td>\r\n			<td style=\"text-align:center; width:62px\">35 Mbps</td>\r\n			<td style=\"text-align:center; width:91px\">450.000</td>\r\n			<td style=\"text-align:center; width:96px\">250.000</td>\r\n			<td style=\"text-align:center; width:126px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:70px\"><strong><strong>Net 6</strong></strong></td>\r\n			<td style=\"text-align:center; width:62px\">40 Mbps</td>\r\n			<td style=\"text-align:center; width:91px\">550.000</td>\r\n			<td style=\"text-align:center; width:96px\">350.000</td>\r\n			<td style=\"text-align:center; width:126px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"divider divider-solid\" style=\"margin-bottom:20px; margin-top:20px\">&nbsp;</div>\r\n\r\n<table class=\" aligncenter\" style=\"font-weight:400; width:603.875px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"7\" style=\"width:590.875px\">\r\n			<p style=\"text-align:center\"><span style=\"color:#ff0000\"><strong><strong>CH&Iacute;NH S&Aacute;CH H&Ograve;A MẠNG COMBO INTERNET V&Agrave; TRUYỀN H&Igrave;NH</strong></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\" style=\"text-align:center; width:61px\"><strong><span style=\"font-size:13.3333px\">G&oacute;i cước</span></strong></td>\r\n			<td rowspan=\"2\" style=\"text-align:center; width:65px\"><strong><span style=\"font-size:10pt\">Tốc độ internet</span></strong></td>\r\n			<td colspan=\"4\" style=\"text-align:center; width:321px\"><span style=\"color:#0000ff; font-size:10pt\"><strong>Gi&aacute; cước khuyến m&atilde;i theo g&oacute;i truyền h&igrave;nh đi k&egrave;m (VNĐ(</strong></span></td>\r\n			<td style=\"text-align:center; width:143.875px\"><strong><span style=\"font-size:10pt\">&nbsp;Hotline</span></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:41px\"><span style=\"font-size:10pt\"><strong>Flexi/Fun/Next TV</strong></span></td>\r\n			<td style=\"text-align:center; width:106px\"><span style=\"font-size:10pt\"><strong>Family 1/Eco</strong></span></td>\r\n			<td style=\"text-align:center; width:65px\"><span style=\"font-size:10pt\"><strong>Family 2</strong></span></td>\r\n			<td style=\"text-align:center; width:109px\"><span style=\"font-size:10pt\"><strong>Family 3</strong></span></td>\r\n			<td style=\"text-align:center; width:143.875px\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:61px\"><strong>Net 1</strong></td>\r\n			<td style=\"text-align:center; width:65px\">15 Mbps</td>\r\n			<td style=\"text-align:center; width:41px\">215.000</td>\r\n			<td style=\"text-align:center; width:106px\">230.000</td>\r\n			<td style=\"text-align:center; width:65px\">260.000</td>\r\n			<td style=\"text-align:center; width:109px\">250.000</td>\r\n			<td style=\"text-align:center; width:143.875px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:61px\"><strong>Net 2</strong></td>\r\n			<td style=\"text-align:center; width:65px\">20&nbsp;Mbps</td>\r\n			<td style=\"text-align:center; width:41px\">230.000</td>\r\n			<td style=\"text-align:center; width:106px\">245.000</td>\r\n			<td style=\"text-align:center; width:65px\">275.000</td>\r\n			<td style=\"text-align:center; width:109px\">265.000</td>\r\n			<td style=\"text-align:center; width:143.875px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:61px\"><strong>Net 3</strong></td>\r\n			<td style=\"text-align:center; width:65px\">25&nbsp;Mbps</td>\r\n			<td style=\"text-align:center; width:41px\">250.000</td>\r\n			<td style=\"text-align:center; width:106px\">265.000</td>\r\n			<td style=\"text-align:center; width:65px\">295.000</td>\r\n			<td style=\"text-align:center; width:109px\">285.000</td>\r\n			<td style=\"text-align:center; width:143.875px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:61px\"><strong>Net 4</strong></td>\r\n			<td style=\"text-align:center; width:65px\">30&nbsp;Mbps</td>\r\n			<td style=\"text-align:center; width:41px\">270.000</td>\r\n			<td style=\"text-align:center; width:106px\">285.000</td>\r\n			<td style=\"text-align:center; width:65px\">315.000</td>\r\n			<td style=\"text-align:center; width:109px\">305.000</td>\r\n			<td style=\"text-align:center; width:143.875px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:61px\"><strong>Net 5</strong></td>\r\n			<td style=\"text-align:center; width:65px\">35&nbsp;Mbps</td>\r\n			<td style=\"text-align:center; width:41px\">300.000</td>\r\n			<td style=\"text-align:center; width:106px\">315.000</td>\r\n			<td style=\"text-align:center; width:65px\">345.000</td>\r\n			<td style=\"text-align:center; width:109px\">335.000</td>\r\n			<td style=\"text-align:center; width:143.875px\">&nbsp;<a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:61px\"><strong>Net 6</strong></td>\r\n			<td style=\"text-align:center; width:65px\">40 Mbps</td>\r\n			<td style=\"text-align:center; width:41px\">400.000</td>\r\n			<td style=\"text-align:center; width:106px\">415.000</td>\r\n			<td style=\"text-align:center; width:65px\">445.000</td>\r\n			<td style=\"text-align:center; width:109px\">435.000</td>\r\n			<td style=\"text-align:center; width:143.875px\"><a class=\"fasc-button fasc-size-small fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">01688.100.100</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\"><strong><strong>Khuyến m&atilde;i:&nbsp;<span style=\"color:#ff0000\">Tặng 1 đến 6 th&aacute;ng cước. Đặc biệt: Tặng 6 th&aacute;ng xem Viettel TV tr&ecirc;n smartphone</span></strong></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"divider divider-solid\" style=\"margin-bottom:20px; margin-top:20px\">&nbsp;</div>\r\n<strong><strong>►</strong></strong><strong><strong>&nbsp;Hotline tư vấn v&agrave; hỗ trợ dịch vụ:&nbsp;</strong></strong><strong><strong> <span style=\"color:#000000\">01688 100 100 &ndash; 0985 555 352</span></strong></strong>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"fasc-button fasc-size-large fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">Bấm gọi ngay: 01688 100 100</a></p>\r\n\r\n<p style=\"text-align:center\"><strong>ƯU ĐIỂM KHI LẮP ĐẶT C&Aacute;P QUANG INETERNET VIETTEL</strong></p>\r\n\r\n<p><img alt=\"\" class=\"aligncenter tie-appear\" src=\"https://i.imgur.com/XDKqMib.jpg\" style=\"height:415px; width:600px\" /></p>\r\n\r\n<h3><strong><strong>QUY TR&Igrave;NH CUNG CẤP DỊCH VỤ:</strong></strong></h3>\r\n\r\n<h3 style=\"text-align:left\"><strong><strong>Tối đa kh&ocirc;ng qu&aacute; 24h</strong></strong></h3>\r\n\r\n<p style=\"text-align:left\">B1. Kh&aacute;ch h&agrave;ng c&oacute; nhu cầu li&ecirc;n hệ hotline</p>\r\n\r\n<p style=\"text-align:left\">B2. Bộ phận tiếp nhận tư vấn, giải đ&aacute;p, thống nhất phương &aacute;n h&ograve;a mạng</p>\r\n\r\n<p style=\"text-align:left\">B3. Bộ phận b&aacute;n h&agrave;ng nhập y&ecirc;u cầu hệ thống</p>\r\n\r\n<p style=\"text-align:left\">B4. Bộ phận kỹ thuật triển khai, ho&agrave;n tất qu&aacute; tr&igrave;nh</p>\r\n\r\n<p style=\"text-align:left\"><strong><strong>ƯU Đ&Atilde;I KH&Aacute;C:</strong></strong></p>\r\n\r\n<p style=\"text-align:left\">Miễn ph&iacute; lắp đặt cho tất cả đối tượng kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p style=\"text-align:left\">Cho mượn thiết bị (modem wifi, settopbox) trong suốt qu&aacute; tr&igrave;nh sử dụng</p>\r\n\r\n<h3><strong><strong>TH&Ocirc;NG TIN DỊCH VỤ TRUYỀN H&Igrave;NH SỐ</strong></strong></h3>\r\n\r\n<p>Để đ&aacute;p ứng nhu cầu giải tr&iacute; tr&ecirc;n TV của kh&aacute;ch h&agrave;ng, đặc biệt l&agrave; c&aacute;c hộ gia đ&igrave;nh trong thời gian qu&acirc;y quần sau giờ l&agrave;m việc; Viettel cung cấp dịch truyền h&igrave;nh số tr&ecirc;n đường d&acirc;y c&aacute;p quang. Với sự kết hợp n&agrave;y, kh&aacute;ch h&agrave;ng c&oacute; cơ hội thưởng thức hơn 140 k&ecirc;nh truyền h&igrave;nh chất lượng, từ c&aacute;c k&ecirc;nh phim, ca nhạc, thể thao trong nước đến c&aacute;c k&ecirc;nh quốc tế được y&ecirc;u th&iacute;ch (Cinemax, HBO, Star Movie&hellip;) với chi ph&iacute; tiết kiệm nhất. Đặc biệt t&iacute;nh năng XEM&nbsp;LẠI trong 7 ng&agrave;y chỉ c&oacute; tr&ecirc;n Internet TV</p>\r\n\r\n<p>Sử dụng dịch vụ truyền h&igrave;nh số tr&ecirc;n nền Internet&nbsp;của Viettel, kh&aacute;ch h&agrave;ng chỉ ph&aacute;t sinh th&ecirc;m 50.000đ/th&aacute;ng. Đặt biệt, từ TV thứ 2 trở đi chỉ 33.000đ</p>\r\n\r\n<h3><em><span style=\"color:#ff0000; font-size:12pt\">T&iacute;nh đến thời điểm hiện tại, hạ tầng Internet c&aacute;p quang của Viettel đ&atilde; phủ đến hầu hết khu vực đ&ocirc;ng d&acirc;n cư tại 9/9 quận, huyện thuộc TP Cần Thơ, sẵn s&agrave;ng đ&aacute;p ứng nhu cầu đang ng&agrave;y c&agrave;ng gia tăng của nhiều đối tượng kh&aacute;ch h&agrave;ng</span></em></h3>\r\n\r\n<p style=\"text-align:center\"><a class=\"fasc-button fasc-size-large fasc-type-flat fasc-rounded-medium ico-fa fasc-ico-before fa-phone\" href=\"tel:01688100100\" style=\"background-color: #008480; color: #ffffff;\">Bấm gọi ngay: 01688 100 100</a></p>\r\n\r\n<p><span style=\"color:#000000\"><strong><strong>Viettel Cần Thơ rất h&acirc;n hạnh được hỗ trợ qu&yacute; kh&aacute;ch !</strong></strong></span></p>\r\n</div>\r\n', 'Sunny', '2018-05-17', '2018-05-17', 1, 1, 0, 10, 1),
(2, 'Internet Wifi', NULL, '', 'Sunny', '2018-05-19', '2018-05-19', 1, 1, 0, 11, 0),
(3, '3G', NULL, '', 'Sunny', '2018-05-19', '2018-05-19', 1, 1, 0, 0, 0),
(4, '4G', NULL, '', 'Sunny', '2018-05-19', '2018-05-19', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_website`
--

CREATE TABLE `config_website` (
  `config_website_id` int(1) NOT NULL,
  `taptin_id` bigint(20) NOT NULL DEFAULT '0',
  `config_website_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_website_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `config_website_phone` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `config_website_address` text COLLATE utf8_unicode_ci NOT NULL,
  `config_website_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_website_facebook` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_website`
--

INSERT INTO `config_website` (`config_website_id`, `taptin_id`, `config_website_name`, `config_website_title`, `config_website_phone`, `config_website_address`, `config_website_email`, `config_website_facebook`) VALUES
(1, 14, 'DỊCH VỤ INTERNET VIETTEL', 'LẮP ĐẶT INTERNET CÁP QUANG VIETTEL', '19007700', '359/23 Nguyễn Văn Cừ, P.An Hòa, Q.Ninh Kiều, TP.Cần Thơ', 'npvucusc@gmail.com', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_baiviet`
--

CREATE TABLE `danhmuc_baiviet` (
  `danhmuc_baiviet_id` int(11) NOT NULL,
  `danhmuc_baiviet_ten` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc_baiviet_trangthai` tinyint(1) DEFAULT '1',
  `danhmuc_baiviet_ngaytao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_baiviet`
--

INSERT INTO `danhmuc_baiviet` (`danhmuc_baiviet_id`, `danhmuc_baiviet_ten`, `danhmuc_baiviet_trangthai`, `danhmuc_baiviet_ngaytao`) VALUES
(1, 'Internet', 1, '2018-05-07'),
(2, 'Camera', 1, '2018-05-07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_ten` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_mota` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`role_id`, `role_ten`, `role_mota`) VALUES
(1, 'FULL', NULL),
(2, 'ADMIN_TAIKHOAN', NULL),
(3, 'ADMIN_BAIVIET', NULL),
(4, 'ADMIN_HETHONG', NULL),
(100, 'GUEST', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_taikhoan`
--

CREATE TABLE `roles_taikhoan` (
  `roles_taikhoan_id` bigint(20) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `taikhoan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles_taikhoan`
--

INSERT INTO `roles_taikhoan` (`roles_taikhoan_id`, `role_id`, `taikhoan_id`) VALUES
(1, 1, 1),
(2, 100, 2),
(4, 3, 3),
(5, 4, 3),
(6, 100, 3),
(7, 100, 4),
(8, 4, 5),
(9, 100, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `taikhoan_id` bigint(20) NOT NULL,
  `taikhoan_tenhienthi` text COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan_tendangnhap` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan_matkhau` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan_hoten` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taikhoan_ngaysinh` date DEFAULT NULL,
  `taikhoan_gioitinh` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taikhoan_diachi` text COLLATE utf8_unicode_ci,
  `taikhoan_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taikhoan_ngaytao` date NOT NULL,
  `taikhoan_nguoitao` bigint(20) NOT NULL,
  `taikhoan_hoatdong` tinyint(1) NOT NULL DEFAULT '1',
  `taikhoan_sodienthoai` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taikhoan_ngaykhoa` date DEFAULT NULL,
  `taikhoan_ngaymokhoa` date DEFAULT NULL,
  `taptin_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`taikhoan_id`, `taikhoan_tenhienthi`, `taikhoan_tendangnhap`, `taikhoan_matkhau`, `taikhoan_hoten`, `taikhoan_ngaysinh`, `taikhoan_gioitinh`, `taikhoan_diachi`, `taikhoan_email`, `taikhoan_ngaytao`, `taikhoan_nguoitao`, `taikhoan_hoatdong`, `taikhoan_sodienthoai`, `taikhoan_ngaykhoa`, `taikhoan_ngaymokhoa`, `taptin_id`) VALUES
(1, 'Sunny', 'nphivucusc', 'e10adc3949ba59abbe56e057f20f883e', 'Sunny', '2018-05-07', 'Nam', '', '', '2018-05-07', 0, 1, '', NULL, NULL, 3),
(2, 'user01', 'user01', '25d55ad283aa400af464c76d713c07ad', '', NULL, 'Nam', '', '', '2018-05-07', 0, 0, '', NULL, NULL, 0),
(3, 'user02', 'user02', '25d55ad283aa400af464c76d713c07ad', '', NULL, '', '', '', '2018-05-07', 0, 0, '', NULL, NULL, 0),
(4, 'user01', 'user03', '25d55ad283aa400af464c76d713c07ad', '', NULL, '', '', '', '2018-05-07', 0, 1, '', NULL, NULL, 0),
(5, 'Quản trị hệ thống', 'adminsystem', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, '', '', '', '2018-05-13', 0, 1, '', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taptin`
--

CREATE TABLE `taptin` (
  `taptin_id` bigint(20) NOT NULL,
  `taptin_ten` text COLLATE utf8_unicode_ci,
  `taptin_path` text COLLATE utf8_unicode_ci,
  `taptin_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taptin_size` bigint(20) DEFAULT NULL,
  `taptin_ngaytao` date DEFAULT NULL,
  `taptin_extension` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taptin_tenluu` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taptin`
--

INSERT INTO `taptin` (`taptin_id`, `taptin_ten`, `taptin_path`, `taptin_type`, `taptin_size`, `taptin_ngaytao`, `taptin_extension`, `taptin_tenluu`) VALUES
(1, '7Z4AX17.jpg', 'D:\\PROJECT\\RESEARCH\\Viettel-JSF\\build\\web\\resources\\data\\upload\\avatar\\1525657464554_7Z4AX17.jpg', NULL, 1574004, '2018-05-07', '.jpg', '1525657464554_7Z4AX17.jpg'),
(2, 'images.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\avatar\\1525702607185_images.jpg', NULL, 21787, '2018-05-07', '.jpg', '1525702607185_images.jpg'),
(3, 'download.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\avatar\\1526139380338_download.jpg', NULL, 6079, '2018-05-12', '.jpg', '1526139380338_download.jpg'),
(4, 'images.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526221129769_images.jpg', NULL, 21787, '2018-05-13', '.jpg', '1526221129769_images.jpg'),
(5, 'images.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526222360401_images.jpg', NULL, 21787, '2018-05-13', '.jpg', '1526222360401_images.jpg'),
(6, 'images.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526223368911_images.jpg', NULL, 21787, '2018-05-13', '.jpg', '1526223368911_images.jpg'),
(7, 'download.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\avatar\\1526224409742_download.jpg', NULL, 6079, '2018-05-13', '.jpg', '1526224409742_download.jpg'),
(8, 'Capture001.png', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526712181801_Capture001.png', NULL, 96560, '2018-05-19', '.png', '1526712181801_Capture001.png'),
(9, 'IOC65in.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526712726400_IOC65in.jpg', NULL, 99343, '2018-05-19', '.jpg', '1526712726400_IOC65in.jpg'),
(10, 'IOC65in.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526713103246_IOC65in.jpg', NULL, 99343, '2018-05-19', '.jpg', '1526713103246_IOC65in.jpg'),
(11, 'Capture001.png', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526713159405_Capture001.png', NULL, 96560, '2018-05-19', '.png', '1526713159405_Capture001.png'),
(12, 'IOC65in.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526714284055_IOC65in.jpg', NULL, 99343, '2018-05-19', '.jpg', '1526714284055_IOC65in.jpg'),
(13, 'accordion1.png', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526714488324_accordion1.png', NULL, 39104, '2018-05-19', '.png', '1526714488324_accordion1.png'),
(14, 'IOC65in.jpg', 'E:\\NPVU_PROJECT\\NPVU-GitHub\\Viettel-JSF\\build\\web\\resources\\data\\upload\\images\\1526714525549_IOC65in.jpg', NULL, 99343, '2018-05-19', '.jpg', '1526714525549_IOC65in.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `config_website`
--
ALTER TABLE `config_website`
  ADD PRIMARY KEY (`config_website_id`);

--
-- Chỉ mục cho bảng `danhmuc_baiviet`
--
ALTER TABLE `danhmuc_baiviet`
  ADD PRIMARY KEY (`danhmuc_baiviet_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `roles_taikhoan`
--
ALTER TABLE `roles_taikhoan`
  ADD PRIMARY KEY (`roles_taikhoan_id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`taikhoan_id`);

--
-- Chỉ mục cho bảng `taptin`
--
ALTER TABLE `taptin`
  ADD PRIMARY KEY (`taptin_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `baiviet_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `config_website`
--
ALTER TABLE `config_website`
  MODIFY `config_website_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `danhmuc_baiviet`
--
ALTER TABLE `danhmuc_baiviet`
  MODIFY `danhmuc_baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `roles_taikhoan`
--
ALTER TABLE `roles_taikhoan`
  MODIFY `roles_taikhoan_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `taikhoan_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `taptin`
--
ALTER TABLE `taptin`
  MODIFY `taptin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
