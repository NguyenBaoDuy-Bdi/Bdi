-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 27, 2022 lúc 01:47 AM
-- Phiên bản máy phục vụ: 10.3.35-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btshxuct_abc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `stk` text NOT NULL,
  `name` text NOT NULL,
  `bank_name` text NOT NULL,
  `chi_nhanh` text NOT NULL,
  `logo` text DEFAULT NULL,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `tid` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `cusum_balance` int(11) DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `bank_sub_acc_id` varchar(64) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `block_callback`
--

CREATE TABLE `block_callback` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `thoigian` varchar(255) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `card_auto`
--

CREATE TABLE `card_auto` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `loaithe` varchar(255) DEFAULT NULL,
  `menhgia` int(11) DEFAULT NULL,
  `thucnhan` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL,
  `trangthai` varchar(255) DEFAULT NULL,
  `ghichu` text DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `seri` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `request_id` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyentien`
--

CREATE TABLE `chuyentien` (
  `id` int(11) NOT NULL,
  `nguoinhan` varchar(255) DEFAULT NULL,
  `nguoichuyen` varchar(255) DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `lydo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ck_card_auto`
--

CREATE TABLE `ck_card_auto` (
  `id` int(11) NOT NULL,
  `loaithe` varchar(255) DEFAULT NULL,
  `menhgia` int(11) DEFAULT NULL,
  `ck` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ck_card_auto`
--

INSERT INTO `ck_card_auto` (`id`, `loaithe`, `menhgia`, `ck`) VALUES
(1, 'VIETTEL', 10000, 16.35),
(2, 'VIETTEL', 20000, 16.35),
(3, 'VIETTEL', 30000, 16.35),
(4, 'VIETTEL', 50000, 14.75),
(5, 'VIETTEL', 100000, 14.75),
(6, 'VIETTEL', 200000, 14.75),
(7, 'VIETTEL', 300000, 14.75),
(8, 'VIETTEL', 500000, 17),
(9, 'VIETTEL', 1000000, 17),
(10, 'VINAPHONE', 10000, 19.5),
(11, 'VINAPHONE', 20000, 19.5),
(12, 'VINAPHONE', 30000, 19.5),
(13, 'VINAPHONE', 50000, 19.5),
(14, 'VINAPHONE', 100000, 19.5),
(15, 'VINAPHONE', 200000, 19.5),
(16, 'VINAPHONE', 300000, 19.5),
(17, 'VINAPHONE', 500000, 19.5),
(18, 'VINAPHONE', 1000000, 19.5),
(19, 'MOBIFONE', 10000, 21.5),
(20, 'MOBIFONE', 20000, 21.5),
(21, 'MOBIFONE', 30000, 21.5),
(22, 'MOBIFONE', 50000, 21.5),
(23, 'MOBIFONE', 100000, 21.5),
(24, 'MOBIFONE', 200000, 21.5),
(25, 'MOBIFONE', 300000, 21.5),
(26, 'MOBIFONE', 500000, 21.5),
(27, 'MOBIFONE', 1000000, 21.5),
(28, 'ZING', 10000, 16.5),
(29, 'ZING', 20000, 16.5),
(30, 'ZING', 30000, 16.5),
(31, 'ZING', 50000, 16.5),
(32, 'ZING', 100000, 16.5),
(33, 'ZING', 200000, 16.5),
(34, 'ZING', 300000, 16.5),
(35, 'ZING', 500000, 16.5),
(36, 'ZING', 1000000, 16.5),
(37, 'VNMOBI', 10000, 14),
(38, 'VNMOBI', 20000, 14),
(39, 'VNMOBI', 30000, 14),
(40, 'VNMOBI', 50000, 14),
(41, 'VNMOBI', 100000, 14),
(42, 'VNMOBI', 200000, 14),
(43, 'VNMOBI', 300000, 14),
(44, 'VNMOBI', 500000, 14),
(45, 'VNMOBI', 1000000, 14),
(46, 'GARENA', 10000, 0),
(47, 'GARENA', 20000, 22.5),
(48, 'GARENA', 30000, 0),
(49, 'GARENA', 50000, 22.5),
(50, 'GARENA', 100000, 22.5),
(51, 'GARENA', 200000, 22.5),
(52, 'GARENA', 300000, 0),
(53, 'GARENA', 500000, 22.5),
(54, 'GARENA', 1000000, 0),
(55, 'GATE', 10000, 25.5),
(56, 'GATE', 20000, 25.5),
(57, 'GATE', 30000, 0),
(58, 'GATE', 50000, 25.5),
(59, 'GATE', 100000, 25.5),
(60, 'GATE', 200000, 25.5),
(61, 'GATE', 300000, 25.5),
(62, 'GATE', 500000, 25.5),
(63, 'GATE', 1000000, 25.5),
(64, 'VCOIN', 10000, 26),
(65, 'VCOIN', 20000, 26),
(66, 'VCOIN', 30000, 0),
(67, 'VCOIN', 50000, 26),
(68, 'VCOIN', 100000, 26),
(69, 'VCOIN', 200000, 26),
(70, 'VCOIN', 300000, 26),
(71, 'VCOIN', 500000, 26),
(72, 'VCOIN', 1000000, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ck_card_auto_diamond`
--

CREATE TABLE `ck_card_auto_diamond` (
  `id` int(11) NOT NULL,
  `loaithe` varchar(255) DEFAULT NULL,
  `menhgia` int(11) NOT NULL DEFAULT 0,
  `ck` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ck_card_auto_diamond`
--

INSERT INTO `ck_card_auto_diamond` (`id`, `loaithe`, `menhgia`, `ck`) VALUES
(1, 'VIETTEL', 10000, 16.15),
(2, 'VIETTEL', 20000, 16.15),
(3, 'VIETTEL', 30000, 16.15),
(4, 'VIETTEL', 50000, 16.35),
(5, 'VIETTEL', 100000, 16.35),
(6, 'VIETTEL', 200000, 16.35),
(7, 'VIETTEL', 300000, 16.35),
(8, 'VIETTEL', 500000, 16.85),
(9, 'VIETTEL', 1000000, 16.85),
(10, 'VINAPHONE', 10000, 17),
(11, 'VINAPHONE', 20000, 17),
(12, 'VINAPHONE', 30000, 17),
(13, 'VINAPHONE', 50000, 17),
(14, 'VINAPHONE', 100000, 17),
(15, 'VINAPHONE', 200000, 17),
(16, 'VINAPHONE', 300000, 17),
(17, 'VINAPHONE', 500000, 17),
(18, 'VINAPHONE', 1000000, 17),
(19, 'MOBIFONE', 10000, 20.5),
(20, 'MOBIFONE', 20000, 20.5),
(21, 'MOBIFONE', 30000, 20.5),
(22, 'MOBIFONE', 50000, 20.5),
(23, 'MOBIFONE', 100000, 20.5),
(24, 'MOBIFONE', 200000, 20.5),
(25, 'MOBIFONE', 300000, 20.5),
(26, 'MOBIFONE', 500000, 20.5),
(27, 'MOBIFONE', 1000000, 20.5),
(28, 'ZING', 10000, 15),
(29, 'ZING', 20000, 15),
(30, 'ZING', 30000, 15),
(31, 'ZING', 50000, 15),
(32, 'ZING', 100000, 15),
(33, 'ZING', 200000, 15),
(34, 'ZING', 300000, 15),
(35, 'ZING', 500000, 15),
(36, 'ZING', 1000000, 15),
(37, 'VNMOBI', 10000, 13),
(38, 'VNMOBI', 20000, 13),
(39, 'VNMOBI', 30000, 13),
(40, 'VNMOBI', 50000, 13),
(41, 'VNMOBI', 100000, 13),
(42, 'VNMOBI', 200000, 13),
(43, 'VNMOBI', 300000, 13),
(44, 'VNMOBI', 500000, 13),
(45, 'VNMOBI', 1000000, 13),
(46, 'GARENA', 10000, 0),
(47, 'GARENA', 20000, 20.5),
(48, 'GARENA', 30000, 0),
(49, 'GARENA', 50000, 20.5),
(50, 'GARENA', 100000, 20.5),
(51, 'GARENA', 200000, 20.5),
(52, 'GARENA', 300000, 0),
(53, 'GARENA', 500000, 20.5),
(54, 'GARENA', 1000000, 0),
(55, 'GATE', 10000, 24.25),
(56, 'GATE', 20000, 24.25),
(57, 'GATE', 30000, 0),
(58, 'GATE', 50000, 24.25),
(59, 'GATE', 100000, 24.25),
(60, 'GATE', 200000, 24.25),
(61, 'GATE', 300000, 24.25),
(62, 'GATE', 500000, 24.25),
(63, 'GATE', 1000000, 24.25),
(64, 'VCOIN', 10000, 25.25),
(65, 'VCOIN', 20000, 25.25),
(66, 'VCOIN', 30000, 0),
(67, 'VCOIN', 50000, 25.25),
(68, 'VCOIN', 100000, 25.25),
(69, 'VCOIN', 200000, 25.25),
(70, 'VCOIN', 300000, 25.25),
(71, 'VCOIN', 500000, 25.25),
(72, 'VCOIN', 1000000, 25.25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ck_card_auto_platinum`
--

CREATE TABLE `ck_card_auto_platinum` (
  `id` int(11) NOT NULL,
  `loaithe` varchar(255) DEFAULT NULL,
  `menhgia` int(11) NOT NULL DEFAULT 0,
  `ck` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ck_card_auto_platinum`
--

INSERT INTO `ck_card_auto_platinum` (`id`, `loaithe`, `menhgia`, `ck`) VALUES
(1, 'VIETTEL', 10000, 16.25),
(2, 'VIETTEL', 20000, 16.25),
(3, 'VIETTEL', 30000, 16.25),
(4, 'VIETTEL', 50000, 14.45),
(5, 'VIETTEL', 100000, 14.45),
(6, 'VIETTEL', 200000, 14.45),
(7, 'VIETTEL', 300000, 14.45),
(8, 'VIETTEL', 500000, 16.96),
(9, 'VIETTEL', 1000000, 16.95),
(10, 'VINAPHONE', 10000, 18),
(11, 'VINAPHONE', 20000, 18),
(12, 'VINAPHONE', 30000, 18),
(13, 'VINAPHONE', 50000, 18),
(14, 'VINAPHONE', 100000, 18),
(15, 'VINAPHONE', 200000, 18),
(16, 'VINAPHONE', 300000, 18),
(17, 'VINAPHONE', 500000, 18),
(18, 'VINAPHONE', 1000000, 18),
(19, 'MOBIFONE', 10000, 21),
(20, 'MOBIFONE', 20000, 21),
(21, 'MOBIFONE', 30000, 21),
(22, 'MOBIFONE', 50000, 21),
(23, 'MOBIFONE', 100000, 21),
(24, 'MOBIFONE', 200000, 21),
(25, 'MOBIFONE', 300000, 21),
(26, 'MOBIFONE', 500000, 21),
(27, 'MOBIFONE', 1000000, 21),
(28, 'ZING', 10000, 15.5),
(29, 'ZING', 20000, 15.5),
(30, 'ZING', 30000, 15.5),
(31, 'ZING', 50000, 15.5),
(32, 'ZING', 100000, 15.5),
(33, 'ZING', 200000, 15.5),
(34, 'ZING', 300000, 15.5),
(35, 'ZING', 500000, 15.5),
(36, 'ZING', 1000000, 15.5),
(37, 'VNMOBI', 10000, 13.5),
(38, 'VNMOBI', 20000, 13.5),
(39, 'VNMOBI', 30000, 13.5),
(40, 'VNMOBI', 50000, 13.5),
(41, 'VNMOBI', 100000, 13.5),
(42, 'VNMOBI', 200000, 13.5),
(43, 'VNMOBI', 300000, 13.5),
(44, 'VNMOBI', 500000, 13.5),
(45, 'VNMOBI', 1000000, 13.5),
(46, 'GARENA', 10000, 0),
(47, 'GARENA', 20000, 21.5),
(48, 'GARENA', 30000, 0),
(49, 'GARENA', 50000, 21.5),
(50, 'GARENA', 100000, 21.5),
(51, 'GARENA', 200000, 21.5),
(52, 'GARENA', 300000, 0),
(53, 'GARENA', 500000, 21.5),
(54, 'GARENA', 1000000, 0),
(55, 'GATE', 10000, 0),
(56, 'GATE', 20000, 24.5),
(57, 'GATE', 30000, 0),
(58, 'GATE', 50000, 24.5),
(59, 'GATE', 100000, 24.5),
(60, 'GATE', 200000, 24.5),
(61, 'GATE', 300000, 24.5),
(62, 'GATE', 500000, 24.5),
(63, 'GATE', 1000000, 0),
(64, 'VCOIN', 10000, 22.5),
(65, 'VCOIN', 20000, 22.5),
(66, 'VCOIN', 30000, 0),
(67, 'VCOIN', 50000, 22.5),
(68, 'VCOIN', 100000, 22.5),
(69, 'VCOIN', 200000, 22.5),
(70, 'VCOIN', 300000, 22.5),
(71, 'VCOIN', 500000, 22.5),
(72, 'VCOIN', 1000000, 22.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listbank`
--

CREATE TABLE `listbank` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `sotaikhoan` varchar(255) DEFAULT NULL,
  `chutaikhoan` varchar(255) DEFAULT NULL,
  `nganhang` varchar(255) DEFAULT NULL,
  `chinhanh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `listbank`
--

INSERT INTO `listbank` (`id`, `username`, `sotaikhoan`, `chutaikhoan`, `nganhang`, `chinhanh`) VALUES
(51, 'admin', '0907376977', 'THAI NGUYEN', 'MBBANK', 'Dong Thap'),
(52, 'nguyenhuyanh', '0369208001', 'Nguyễn Huy Anh', 'MOMO', 'Quảng Ninh'),
(53, 'Chithanh', '0366923567', 'Nguyễn Chí Thành', 'MOMO', ''),
(54, 'admin', '0907376977', 'THAI NGUYEN', 'SHB', 'Dong Thap'),
(55, 'Anhhoa007', '0389462155', 'LE THI THU HA', 'MBBANK', ''),
(56, 'Trung2222', '0354397619', 'Nguyễn Văn trung', 'MOMO', ''),
(57, 'Trung2222', '0354397619', 'Nguyễn Văn trung', 'MBBANK', 'Ha noi'),
(58, 'Anhhoa007', '0389462155', 'Lê Thị Thu Hà', 'MOMO', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaithe`
--

CREATE TABLE `loaithe` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ck` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaithe`
--

INSERT INTO `loaithe` (`id`, `type`, `ck`, `status`) VALUES
(1, 'VIETTEL', 21, 1),
(2, 'VINAPHONE', 21, 1),
(3, 'MOBIFONE', 23, 1),
(4, 'GATE', 31, 1),
(5, 'ZING', 18, 1),
(6, 'VNMOBI', 20, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(11) NOT NULL,
  `request_id` varchar(64) DEFAULT NULL,
  `tranId` text DEFAULT NULL,
  `partnerId` text DEFAULT NULL,
  `partnerName` text DEFAULT NULL,
  `amount` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `status` varchar(32) DEFAULT 'xuly'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `muathe`
--

CREATE TABLE `muathe` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `Telco` varchar(255) DEFAULT NULL,
  `Serial` varchar(255) DEFAULT NULL,
  `PinCode` varchar(255) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Trace` int(11) DEFAULT NULL,
  `gettime` datetime DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'tenweb', 'TUANORI.VN'),
(2, 'mota', 'Hệ thống đổi thẻ cào sang tiền mặt phí tốt nhất thị trường - tự động xử lý thẻ trong vài giây!'),
(3, 'tukhoa', 'thesieusao, doi the, trum the, đổi thẻ cào sang tiền mặt, doi the sieu nhanh, the sieu re, doi the nhanh, doi the cao sang tien mat, card24, card exchange, tst, tsr, tsn, doicardnhanh, doi thẻ cào, trum the cào, đổi thẻ giá rẻ, mua thẻ cào giá rẻ, mua thẻ cào, card online, card giá rẻ'),
(4, 'logo', 'https://i.imgur.com/hZtJSf2.png'),
(5, 'email', 'tuanori@gmail.com'),
(6, 'pass_email', 'tuanori'),
(11, 'noidung_naptien', 'tuan'),
(12, 'thongbao', '<strong>► ADMIN NHẬN GDTG VÀ ĐỔI TIỀN FREE PHÍ HẾT THÁNG tại <a href=\"https://www.facebook.com/phamhoangtuan.ytb\">Facebook </a><img alt=\"\" src=\"https://card5s.vn/assets/anh/new.gif\"></strong><p style=\"margin-top: 10px; margin-bottom: 10px; line-height: 1.8; text-size-adjust: 100%;\"></p><p style=\"margin-top: 10px; margin-bottom: 10px; line-height: 1.8; text-size-adjust: 100%;\"></p><ul></ul><p></p><p style=\"margin-bottom: 10px; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; caret-color: rgb(51, 51, 51); margin-right: 0px; text-size-adjust: none;\"><b><span style=\"color: rgb(51, 51, 51);\">►</span><font color=\"#ff0000\">THỬ VẬN MAY:</font>&nbsp;<a href=\"https://card5s.vn/thuvanmay/luatchoi\" target=\"_blank\">LUẬT CHƠI</a>&nbsp;|&nbsp;<a href=\"https://card5s.vn/thuvanmay\" target=\"_blank\">CHƠI KIẾM TIỀN</a><img src=\"https://card5s.vn/assets/anh/new1.gif\" style=\"width: 22.9883px;\"></b><span style=\"color: rgb(51, 51, 51); font-weight: 700;\"><br></span></p><p style=\"margin-bottom: 10px; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; caret-color: rgb(51, 51, 51); margin-right: 0px; text-size-adjust: none;\"><b><span style=\"color: rgb(51, 51, 51);\">►</span><span style=\"color: inherit;\">NHÓM THÔNG BÁO:&nbsp;&nbsp;</span><a href=\"https://zalo.me/g/kbkiwn610\" target=\"_blank\" style=\"\">NHÓM ZALO 1</a></b><br></p><p style=\"margin-bottom: 10px; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; caret-color: rgb(51, 51, 51); margin-right: 0px; text-size-adjust: none;\"><span style=\"color: rgb(51, 51, 51); font-weight: 700;\">►Nạp thẻ cần điền đúng thông tin seri, sai seri không thể hỗ trợ nhé.</span></p><p style=\"margin-bottom: 10px; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; caret-color: rgb(51, 51, 51); margin-right: 0px; text-size-adjust: none;\"><span style=\"color: rgb(51, 51, 51); font-weight: 700;\">►</span><span style=\"font-weight: bolder;\">Nhập sai mệnh giá xem:&nbsp;<a href=\"https://card5s.vn/Blog/3\" target=\"_blank\">Tại đâ</a></span><span style=\"font-weight: bolder;\"><a href=\"https://card5s.vn/Blog/3\" target=\"_blank\">y!</a>&nbsp;</span></p><p style=\"margin-bottom: 10px; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; caret-color: rgb(51, 51, 51); margin-right: 0px; text-size-adjust: none;\"><span style=\"color: rgb(51, 51, 51); font-weight: 700;\">►</span><span style=\"font-weight: bolder;\">Điều kiện lên cấp bậc chiết khấu:&nbsp;<a href=\"https://card5s.vn/Blog/1\" target=\"_blank\">Xem tại đây!</a></span><br></p><p style=\"margin-bottom: 10px; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; caret-color: rgb(51, 51, 51); margin-right: 0px; text-size-adjust: none;\"><span style=\"color: rgb(51, 51, 51); font-weight: 700;\">►</span><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">HIỆN TẠI ĐANG FREE PHÍ TẠO WEB CON:</font>&nbsp;</span><a href=\"https://dichvu.card5s.vn/\" target=\"_blank\"><span style=\"font-weight: bolder;\">Xem tại đây!</span></a>&nbsp;&nbsp;<img src=\"https://card5s.vn/assets/anh/new1.gif\" style=\"width: 22.9883px;\"></p><p style=\"margin-bottom: 10px; font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px; caret-color: rgb(51, 51, 51); margin-right: 0px; text-size-adjust: none;\"><span style=\"color: rgb(51, 51, 51); font-weight: 700;\">►</span><span style=\"font-weight: bolder;\">Min rút Momo là 5.000đ, min rút ATM là 10.000đ,&nbsp; Hệ thống rút tiền thanh toán tự động tiền về trong vài s.</span></p>'),
(13, 'anhbia', 'https://i.imgur.com/hZtJSf2.png'),
(14, 'favicon', 'https://i.imgur.com/MZJ2PlS.jpg'),
(17, 'baotri', 'ON'),
(18, 'chinhsach', '<p>BẰNG VIỆC SỬ DỤNG C&Aacute;C DỊCH VỤ HOẶC MỞ MỘT T&Agrave;I KHOẢN, BẠN CHO BIẾT RẰNG BẠN CHẤP NHẬN, KH&Ocirc;NG R&Uacute;T LẠI, C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y. NẾU BẠN KH&Ocirc;NG ĐỒNG &Yacute; VỚI C&Aacute;C ĐIỀU KHOẢN N&Agrave;Y, VUI L&Ograve;NG KH&Ocirc;NG SỬ DỤNG C&Aacute;C DỊCH VỤ CỦA CH&Uacute;NG T&Ocirc;I HAY TRUY CẬP TRANG WEB. NẾU BẠN DƯỚI 18 TUỔI HOẶC &quot;ĐỘ TUỔI TRƯỞNG TH&Agrave;NH&quot;PH&Ugrave; HỢP Ở NƠI BẠN SỐNG, BẠN PHẢI XIN PH&Eacute;P CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P ĐỂ MỞ MỘT T&Agrave;I KHOẢN V&Agrave; CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P PHẢI ĐỒNG &Yacute; VỚI C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y. NẾU BẠN KH&Ocirc;NG BIẾT BẠN C&Oacute; THUỘC &quot;ĐỘ TUỔI TRƯỞNG TH&Agrave;NH&quot; Ở NƠI BẠN SỐNG HAY KH&Ocirc;NG, HOẶC KH&Ocirc;NG HIỂU PHẦN N&Agrave;Y, VUI L&Ograve;NG KH&Ocirc;NG TẠO T&Agrave;I KHOẢN CHO ĐẾN KHI BẠN Đ&Atilde; NHỜ CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P CỦA BẠN GI&Uacute;P ĐỠ. NẾU BẠN L&Agrave; CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P CỦA MỘT TRẺ VỊ TH&Agrave;NH NI&Ecirc;N MUỐN TẠO MỘT T&Agrave;I KHOẢN, BẠN PHẢI CHẤP NHẬN C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y THAY MẶT CHO TRẺ VỊ TH&Agrave;NH NI&Ecirc;N Đ&Oacute; V&Agrave; BẠN SẼ CHỊU TR&Aacute;CH NHIỆM ĐỐI VỚI TẤT CẢ HOẠT ĐỘNG SỬ DỤNG T&Agrave;I KHOẢN HAY C&Aacute;C DỊCH VỤ, BAO GỒM C&Aacute;C GIAO DỊCH MUA H&Agrave;NG DO TRẺ VỊ TH&Agrave;NH NI&Ecirc;N THỰC HIỆN, CHO D&Ugrave; T&Agrave;I KHOẢN CỦA TRẺ VỊ TH&Agrave;NH NI&Ecirc;N Đ&Oacute; ĐƯỢC MỞ V&Agrave;O L&Uacute;C N&Agrave;Y HAY ĐƯỢC TẠO SAU N&Agrave;Y V&Agrave; CHO D&Ugrave; TRẺ VỊ TH&Agrave;NH NI&Ecirc;N C&Oacute; ĐƯỢC BẠN GI&Aacute;M S&Aacute;T TRONG GIAO DỊCH MUA H&Agrave;NG Đ&Oacute; HAY KH&Ocirc;NG.</p>\r\n'),
(27, 'min_ruttien', '1000'),
(28, 'ck_con', '3'),
(29, 'phi_chuyentien', '100'),
(30, 'status_chuyentien', 'ON'),
(31, 'hotline', '0812665001'),
(32, 'facebook', 'https://www.facebook.com/phamhoangtuan.ytb'),
(33, 'theme_color', '#0875AC'),
(34, 'modal_thongbao', '<p><br></p>'),
(35, 'tk_banthe247', ''),
(36, 'mk_banthe247', ''),
(37, 'status_muathe', 'OFF'),
(38, 'status_napdt', 'OFF'),
(39, 'ck_500', '3'),
(42, 'api_bank', ''),
(43, 'status_napbank', 'OFF'),
(44, 'status_demo', 'OFF'),
(45, 'api_momo', NULL),
(46, 'email_admin', 'tuanori@gmail.com'),
(47, 'display_carousel', 'OFF'),
(48, 'phi_rut_tien', '0'),
(49, 'script_live_chat', ''),
(50, 'token_momo', ''),
(51, 'password_momo', NULL),
(52, 'check_time_cron_pay_momo', '1656740284'),
(53, 'check_time_cron_momo', '1656742505'),
(54, 'security_banthe247', ''),
(55, 'dieu_khoan', '<p><span style=\"font-weight: 700; color: rgb(51, 51, 51); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 14px;\"><font color=\"#ff0000\">CHÚ Ý: </font>Mọi hành vi đổi tiền, rửa tiền lạm dụng web, nạp vào xong rút ra sẽ bị xử lý, giam tiền vĩnh viễn,khóa tài khoản.</span><br></p>'),
(56, 'status_blog', 'ON'),
(57, 'status_ref', 'ON'),
(58, 'ck_ref', '1'),
(60, 'luuy_ref', '<ul>\r\n    <li>Những tài khoản được hệ thống xác định là tài khoản sao chép của các tài\r\n        khoản khác sẽ không được dùng để tính hoa hồng.</li>\r\n    <li>Hoa hồng chỉ được tính khi bạn bè của bạn thực hiện đổi thẻ thành công.</li>\r\n    <li>Việc xác định xem ai là người giới thiệu của một người dùng phụ thuộc hoàn\r\n        toàn vào link giới thiệu. Nếu một người dùng nhấp vào nhiều link ref khác\r\n        nhau thì chỉ có link ref cuối cùng họ nhấp vào trước khi tạo tài khoản là có\r\n        hiệu lực.</li>\r\n    <li>Chúng tôi sẽ từ chối trả hoa hồng khi phát hiện bạn cố tình sao chép tài\r\n        khoản để giảm chiết khấu thẻ.</li>\r\n</ul>'),
(64, 'status_cardv2', 'ON'),
(65, 'api_cardv2', 'Npir0PhwA3zb49WKRYZ51yeDscaHlJX7'),
(66, 'domain_cardv2', 'nhanthecao.vn'),
(69, 'license_key', 'd98f95640687d09ef7f7a68836dc582d'),
(70, 'btnSaveLicense', ''),
(76, 'api_dtsr11', ''),
(77, 'withdrawal_fee', '0'),
(78, 'border_radius', '6'),
(79, 'phi_rut_tien_ck', '0'),
(90, 'server_buycard', '0'),
(91, 'notice_buycard', ''),
(101, 'tenchunhan', 'PHAM HOANG TUAN'),
(102, 'bot_tele', ''),
(103, 'id_chat_tele', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ruttien`
--

CREATE TABLE `ruttien` (
  `id` int(11) NOT NULL,
  `magd` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thanhtoan` int(11) NOT NULL DEFAULT 0,
  `nganhang` varchar(255) DEFAULT NULL,
  `sotaikhoan` varchar(255) DEFAULT NULL,
  `chutaikhoan` varchar(255) DEFAULT NULL,
  `chinhanh` varchar(255) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `trangthai` varchar(255) DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL,
  `ghichu` text DEFAULT NULL,
  `response` text DEFAULT NULL,
  `noidung` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sellcards`
--

CREATE TABLE `sellcards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sellcard_id` int(11) NOT NULL DEFAULT 0,
  `ck` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `storecards`
--

CREATE TABLE `storecards` (
  `id` int(11) NOT NULL,
  `sellcard_id` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `card` mediumtext DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topup`
--

CREATE TABLE `topup` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `loai` varchar(255) DEFAULT NULL,
  `transaction` varchar(255) DEFAULT NULL,
  `time` varchar(0) DEFAULT NULL,
  `gettime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_muathe`
--

CREATE TABLE `type_muathe` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `type_muathe`
--

INSERT INTO `type_muathe` (`id`, `type`, `name`) VALUES
(1, 'ZING', 'Zing'),
(2, 'VTT', 'Viettel'),
(3, 'VNP', 'Vinaphone'),
(4, 'GAR', 'Garena'),
(5, 'VNM', 'Vietnammobie'),
(6, 'VMS', 'Mobifone'),
(7, 'VTC', 'Vcoin'),
(8, 'FPT', 'Fpt Gate'),
(9, 'DBM', 'Mobi Data');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password2` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `level` varchar(255) DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT 0,
  `createdate` datetime DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `ref_click` int(11) DEFAULT 0,
  `reason_banned` text DEFAULT NULL,
  `agency` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `used_money` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `group_excard` varchar(255) DEFAULT 'Thành viên'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `password2`, `token`, `money`, `level`, `banned`, `createdate`, `email`, `ref`, `ref_click`, `reason_banned`, `agency`, `otp`, `ip`, `time`, `used_money`, `total_money`, `phone`, `fullname`, `group_excard`) VALUES
(1, 'tuanori', '8be9afa4ac293015623c5711cccbf30f', NULL, 'NjcwRnVUrfKeqWYMbzdgGvEPQOBtxHiAIhXLoZDkypJmlsauCSTF', 0, 'admin', 0, '2022-08-27 01:15:24', 'tuanori@gmail.com', '', 0, NULL, 0, NULL, '171.234.13.124', '1661537724', 0, 0, NULL, NULL, 'Thành viên');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `block_callback`
--
ALTER TABLE `block_callback`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `card_auto`
--
ALTER TABLE `card_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ck_card_auto`
--
ALTER TABLE `ck_card_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ck_card_auto_diamond`
--
ALTER TABLE `ck_card_auto_diamond`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ck_card_auto_platinum`
--
ALTER TABLE `ck_card_auto_platinum`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `listbank`
--
ALTER TABLE `listbank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `loaithe`
--
ALTER TABLE `loaithe`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `muathe`
--
ALTER TABLE `muathe`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `sellcards`
--
ALTER TABLE `sellcards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `storecards`
--
ALTER TABLE `storecards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `type_muathe`
--
ALTER TABLE `type_muathe`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `block_callback`
--
ALTER TABLE `block_callback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `card_auto`
--
ALTER TABLE `card_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ck_card_auto`
--
ALTER TABLE `ck_card_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `ck_card_auto_diamond`
--
ALTER TABLE `ck_card_auto_diamond`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `ck_card_auto_platinum`
--
ALTER TABLE `ck_card_auto_platinum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `listbank`
--
ALTER TABLE `listbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `loaithe`
--
ALTER TABLE `loaithe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `muathe`
--
ALTER TABLE `muathe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sellcards`
--
ALTER TABLE `sellcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `storecards`
--
ALTER TABLE `storecards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `type_muathe`
--
ALTER TABLE `type_muathe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
