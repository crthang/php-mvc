-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 10, 2020 lúc 04:50 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên chuyên mục',
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên chuyên mục không dấu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề bài viết',
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề không dấu',
  `view_number` int(11) NOT NULL COMMENT 'lượt xem',
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ảnh',
  `summary` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'tóm tắt',
  `content` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `category_id` int(11) NOT NULL COMMENT 'id chuyên mục',
  `user_id` int(11) NOT NULL COMMENT 'id thành viên',
  `date` date NOT NULL COMMENT 'thời gian đăng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên đăng nhập',
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'mật khẩu',
  `full_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'tên đầy đủ',
  `level` int(11) NOT NULL DEFAULT 0 COMMENT 'quyền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
