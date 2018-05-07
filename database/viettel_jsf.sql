-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2018 lúc 03:46 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `taptin_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'Internet', 1, '2018-05-07');

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
(1, 1, 1);

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
(1, 'Sunny', 'nphivucusc', '25d55ad283aa400af464c76d713c07ad', 'Sunny', '2018-05-07', 'Nam', '', '', '2018-05-07', 0, 1, '', NULL, NULL, 1);

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
(1, '7Z4AX17.jpg', 'D:\\PROJECT\\RESEARCH\\Viettel-JSF\\build\\web\\resources\\data\\upload\\avatar\\1525657464554_7Z4AX17.jpg', NULL, 1574004, '2018-05-07', '.jpg', '1525657464554_7Z4AX17.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

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
  MODIFY `baiviet_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `danhmuc_baiviet`
--
ALTER TABLE `danhmuc_baiviet`
  MODIFY `danhmuc_baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT cho bảng `roles_taikhoan`
--
ALTER TABLE `roles_taikhoan`
  MODIFY `roles_taikhoan_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `taikhoan_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `taptin`
--
ALTER TABLE `taptin`
  MODIFY `taptin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
