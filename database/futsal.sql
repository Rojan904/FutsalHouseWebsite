-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 08:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add carousel img', 7, 'add_carouselimg'),
(26, 'Can change carousel img', 7, 'change_carouselimg'),
(27, 'Can delete carousel img', 7, 'delete_carouselimg'),
(28, 'Can view carousel img', 7, 'view_carouselimg'),
(29, 'Can add indexheading', 8, 'add_indexheading'),
(30, 'Can change indexheading', 8, 'change_indexheading'),
(31, 'Can delete indexheading', 8, 'delete_indexheading'),
(32, 'Can view indexheading', 8, 'view_indexheading'),
(33, 'Can add heading', 9, 'add_heading'),
(34, 'Can change heading', 9, 'change_heading'),
(35, 'Can delete heading', 9, 'delete_heading'),
(36, 'Can view heading', 9, 'view_heading'),
(37, 'Can add sliderimg', 10, 'add_sliderimg'),
(38, 'Can change sliderimg', 10, 'change_sliderimg'),
(39, 'Can delete sliderimg', 10, 'delete_sliderimg'),
(40, 'Can view sliderimg', 10, 'view_sliderimg'),
(41, 'Can add indeximg', 11, 'add_indeximg'),
(42, 'Can change indeximg', 11, 'change_indeximg'),
(43, 'Can delete indeximg', 11, 'delete_indeximg'),
(44, 'Can view indeximg', 11, 'view_indeximg'),
(45, 'Can add index2', 12, 'add_index2'),
(46, 'Can change index2', 12, 'change_index2'),
(47, 'Can delete index2', 12, 'delete_index2'),
(48, 'Can view index2', 12, 'view_index2'),
(49, 'Can add index3', 13, 'add_index3'),
(50, 'Can change index3', 13, 'change_index3'),
(51, 'Can delete index3', 13, 'delete_index3'),
(52, 'Can view index3', 13, 'view_index3'),
(53, 'Can add trainingimg', 14, 'add_trainingimg'),
(54, 'Can change trainingimg', 14, 'change_trainingimg'),
(55, 'Can delete trainingimg', 14, 'delete_trainingimg'),
(56, 'Can view trainingimg', 14, 'view_trainingimg'),
(57, 'Can add trainingtext', 15, 'add_trainingtext'),
(58, 'Can change trainingtext', 15, 'change_trainingtext'),
(59, 'Can delete trainingtext', 15, 'delete_trainingtext'),
(60, 'Can view trainingtext', 15, 'view_trainingtext'),
(61, 'Can add galleryimg', 16, 'add_galleryimg'),
(62, 'Can change galleryimg', 16, 'change_galleryimg'),
(63, 'Can delete galleryimg', 16, 'delete_galleryimg'),
(64, 'Can view galleryimg', 16, 'view_galleryimg'),
(65, 'Can add book', 17, 'add_book'),
(66, 'Can change book', 17, 'change_book'),
(67, 'Can delete book', 17, 'delete_book'),
(68, 'Can view book', 17, 'view_book');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$k7ZMFugHdXSb$Y5Ip8TDH3qgM1dFwwcXqnoDJy+K3nJBzaC9C7Fxgo8w=', '2020-02-12 05:55:01.941977', 1, 'Rojan', '', '', 'rozan.cresta28@gmail.com', 1, 1, '2020-02-02 10:36:34.686473'),
(2, 'pbkdf2_sha256$180000$NFMGIdkI6UIK$eHdOHZrvFc6PmsolEUAwW1OQCX4YB0OLWxSVAtwizYE=', '2020-02-15 11:02:26.373355', 0, '180298', 'rojan', 'shyal', 'shyalrojan@gmail.com', 0, 1, '2020-02-10 07:34:18.746780'),
(3, 'pbkdf2_sha256$180000$w7ff8imt1kmF$Nfh78cHoLWN5endKlAAy48DnZPFEKDHkpZYSHxEeAI8=', '2020-02-13 06:44:03.975208', 0, 'Rojan123', 'rojan', 'shyal', 'shyalrojan1@gmail.com', 0, 1, '2020-02-10 07:36:13.239581'),
(4, 'pbkdf2_sha256$180000$6yojy2DQvMEV$k37h/1lrgvn3FRppOCZTBAo9gp/NZtCsSwy4zCC/8kc=', NULL, 0, 'rojanshyal1', 'rojan', 'shyal', 'shyalrojan1@gmail.com', 0, 1, '2020-02-10 07:40:05.806847'),
(5, 'pbkdf2_sha256$180000$DJhhGB9368rb$4iH2TClymji6vaWA0Fr1Ou1NIQeEniyq9v5xATA6CkQ=', NULL, 0, 'rojanshyal2', 'rojan', 'shyal', 'rozan.cresta281@gmail.com', 0, 1, '2020-02-10 08:25:31.480545'),
(6, 'pbkdf2_sha256$180000$kyvjVlAMk8jP$YTLJb/8VUvJ+BT12HX1P2yAmd86Jt/tAU+fKST+9PPc=', '2020-02-10 11:53:44.553402', 0, 'depen', 'dependra', 'khatiwoda', 'depen@gmail.com', 0, 1, '2020-02-10 11:53:31.097482'),
(7, 'pbkdf2_sha256$180000$lGsJ8qvVTT2V$zpv965Ce43adyAe2twmBy+LjBPxvmwJaJs5cTpN0FV8=', '2020-02-14 09:17:22.486119', 0, 'sujit', 'Sujit Prasad', 'Kushwaha', 'sujit@gmail.com', 0, 1, '2020-02-14 07:42:53.292725');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-02 11:29:59.083476', '1', 'heading object (1)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-02-02 11:36:15.828322', '1', 'heading object (1)', 2, '[{\"changed\": {\"fields\": [\"Para1\"]}}]', 9, 1),
(3, '2020-02-02 11:36:45.359329', '1', 'heading object (1)', 2, '[{\"changed\": {\"fields\": [\"Para1\"]}}]', 9, 1),
(4, '2020-02-10 07:15:35.837990', '1', 'sliderimg object (1)', 1, '[{\"added\": {}}]', 10, 1),
(5, '2020-02-10 07:17:17.026473', '2', 'sliderimg object (2)', 1, '[{\"added\": {}}]', 10, 1),
(6, '2020-02-10 17:26:35.679025', '1', 'indeximg object (1)', 1, '[{\"added\": {}}]', 11, 1),
(7, '2020-02-10 17:36:33.583163', '2', 'indeximg object (2)', 1, '[{\"added\": {}}]', 11, 1),
(8, '2020-02-10 17:52:52.889179', '3', 'sliderimg object (3)', 1, '[{\"added\": {}}]', 10, 1),
(9, '2020-02-10 17:54:02.082672', '4', 'sliderimg object (4)', 1, '[{\"added\": {}}]', 10, 1),
(10, '2020-02-10 17:54:23.658530', '5', 'sliderimg object (5)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2020-02-10 18:32:08.518916', '1', 'index2 object (1)', 1, '[{\"added\": {}}]', 12, 1),
(12, '2020-02-10 18:45:56.120976', '1', 'index3 object (1)', 1, '[{\"added\": {}}]', 13, 1),
(13, '2020-02-11 18:00:09.561831', '1', 'trainingimg object (1)', 1, '[{\"added\": {}}]', 14, 1),
(14, '2020-02-11 18:08:43.244925', '1', 'trainingtext object (1)', 1, '[{\"added\": {}}]', 15, 1),
(15, '2020-02-12 05:58:55.982862', '1', 'galleryimg object (1)', 1, '[{\"added\": {}}]', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(17, 'server', 'book'),
(7, 'server', 'carouselimg'),
(16, 'server', 'galleryimg'),
(9, 'server', 'heading'),
(12, 'server', 'index2'),
(13, 'server', 'index3'),
(8, 'server', 'indexheading'),
(11, 'server', 'indeximg'),
(10, 'server', 'sliderimg'),
(14, 'server', 'trainingimg'),
(15, 'server', 'trainingtext'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-02 10:08:56.873806'),
(2, 'auth', '0001_initial', '2020-02-02 10:08:59.581841'),
(3, 'admin', '0001_initial', '2020-02-02 10:09:10.466732'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-02 10:09:12.753402'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-02 10:09:12.805593'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-02 10:09:13.798577'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-02 10:09:15.087255'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-02 10:09:15.375993'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-02 10:09:15.475272'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-02 10:09:16.457631'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-02 10:09:16.549537'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-02 10:09:16.643700'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-02 10:09:16.843933'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-02 10:09:17.044377'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-02 10:09:17.220103'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-02 10:09:17.344672'),
(17, 'server', '0001_initial', '2020-02-02 10:09:18.013343'),
(18, 'sessions', '0001_initial', '2020-02-02 10:09:18.418727'),
(19, 'server', '0002_heading', '2020-02-02 10:35:11.151923'),
(20, 'server', '0003_sliderimg', '2020-02-10 07:06:06.423535'),
(21, 'server', '0004_indeximg', '2020-02-10 17:23:41.435537'),
(22, 'server', '0005_index2', '2020-02-10 18:28:41.404318'),
(23, 'server', '0006_index3', '2020-02-10 18:44:42.337069'),
(24, 'server', '0007_trainingimg', '2020-02-11 17:47:10.094674'),
(25, 'server', '0008_trainingtext', '2020-02-11 17:57:53.798191'),
(26, 'server', '0009_galleryimg', '2020-02-12 05:54:24.888794'),
(27, 'server', '0010_book', '2020-02-12 06:42:23.861239'),
(28, 'server', '0011_auto_20200212_1811', '2020-02-12 12:26:31.985423'),
(29, 'server', '0012_book_user', '2020-02-13 06:22:25.597427');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0yrrb0p4akfka5rxmh8guk41ouz9h5eh', 'OTY3NWY5NzlmYmNmYzQ0Y2U2NWViYjcxYWRlNWIxOTNkYTZmNWZkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2I1YTJiMjhiODJlYzgyODU1NDM5NDg0OWY0Mzg5NjgxODQ5ZWYxIn0=', '2020-02-27 18:19:49.971859'),
('5u56s29h3ttu63lo7tbhq6alburtt7q2', 'OTY3NWY5NzlmYmNmYzQ0Y2U2NWViYjcxYWRlNWIxOTNkYTZmNWZkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2I1YTJiMjhiODJlYzgyODU1NDM5NDg0OWY0Mzg5NjgxODQ5ZWYxIn0=', '2020-02-26 11:39:29.219849'),
('bhr5g44vjf8dh47a759yi8qbwm8j1m3v', 'OTY3NWY5NzlmYmNmYzQ0Y2U2NWViYjcxYWRlNWIxOTNkYTZmNWZkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2I1YTJiMjhiODJlYzgyODU1NDM5NDg0OWY0Mzg5NjgxODQ5ZWYxIn0=', '2020-02-26 15:54:57.712688'),
('ey8w0u1jjesyb72zlhrj5ddqqrhhvbta', 'OTY3NWY5NzlmYmNmYzQ0Y2U2NWViYjcxYWRlNWIxOTNkYTZmNWZkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2I1YTJiMjhiODJlYzgyODU1NDM5NDg0OWY0Mzg5NjgxODQ5ZWYxIn0=', '2020-02-27 17:24:17.295486'),
('jmpubl8284q1p69mdbhprez9jom9e0tl', 'OTY3NWY5NzlmYmNmYzQ0Y2U2NWViYjcxYWRlNWIxOTNkYTZmNWZkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2I1YTJiMjhiODJlYzgyODU1NDM5NDg0OWY0Mzg5NjgxODQ5ZWYxIn0=', '2020-02-25 05:20:25.450159'),
('kajlh4ovazq3ii1bj8gsard6r2dz7wl7', 'Yjk4MDEyODhkZGExNTY2NWEwODliZTBkNGZiMGVlNjZhMzliMDM3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxODE0ZjFjNGQ1OTBmNTQ5MDAxZWY4ODQwNzQ0ZDc5M2JmMTE2MmU0In0=', '2020-02-22 10:33:22.889051'),
('pukmg36jf5czruvm5fojujs8kvy7ncos', 'Yjk4MDEyODhkZGExNTY2NWEwODliZTBkNGZiMGVlNjZhMzliMDM3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxODE0ZjFjNGQ1OTBmNTQ5MDAxZWY4ODQwNzQ0ZDc5M2JmMTE2MmU0In0=', '2020-02-24 17:24:32.266936'),
('pzoi9laxkbk1vd22f1iluxvtobv6ssl5', 'Yjk4MDEyODhkZGExNTY2NWEwODliZTBkNGZiMGVlNjZhMzliMDM3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxODE0ZjFjNGQ1OTBmNTQ5MDAxZWY4ODQwNzQ0ZDc5M2JmMTE2MmU0In0=', '2020-02-16 10:37:03.468053'),
('txnl4np2debrn6wsikbq5xnh3206borm', 'MmM2YzNiYTM4MTQwNTE1ZmZjN2VmZTRlOTFiYzg3YmI1MDM2YWNhMTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTkwMWIzZTY5OGNiYjEwYzdhNTQwOWNjMGE5OGY1YTU5MDUwYTAzIn0=', '2020-02-27 06:44:04.081971'),
('vxpmtvloi3pn2fe2eew4blapfasgb688', 'OTY3NWY5NzlmYmNmYzQ0Y2U2NWViYjcxYWRlNWIxOTNkYTZmNWZkMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2I1YTJiMjhiODJlYzgyODU1NDM5NDg0OWY0Mzg5NjgxODQ5ZWYxIn0=', '2020-02-28 09:49:34.626474');

-- --------------------------------------------------------

--
-- Table structure for table `server_book`
--

CREATE TABLE `server_book` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_book`
--

INSERT INTO `server_book` (`id`, `name`, `email`, `contact`, `date`, `time`, `user_id`) VALUES
(13, 'Rojan', 'rozan.cresta28@gmail.com', '9861432303', '2020-02-28', 7, 2),
(14, 'motu', 'motu@gmail.com', '98787654', '2020-01-29', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `server_carouselimg`
--

CREATE TABLE `server_carouselimg` (
  `id` int(11) NOT NULL,
  `slideimg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `server_galleryimg`
--

CREATE TABLE `server_galleryimg` (
  `id` int(11) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL,
  `img6` varchar(100) NOT NULL,
  `img7` varchar(100) NOT NULL,
  `img8` varchar(100) NOT NULL,
  `img9` varchar(100) NOT NULL,
  `img10` varchar(100) NOT NULL,
  `img11` varchar(100) NOT NULL,
  `img12` varchar(100) NOT NULL,
  `img13` varchar(100) NOT NULL,
  `img14` varchar(100) NOT NULL,
  `img15` varchar(100) NOT NULL,
  `img16` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_galleryimg`
--

INSERT INTO `server_galleryimg` (`id`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `img9`, `img10`, `img11`, `img12`, `img13`, `img14`, `img15`, `img16`) VALUES
(1, 'people.jpg', 'step.jpg', 'girlcup.jpg', 'winner.jpg', 'futsal1.jpg', 'kick.jpg', 'trophy.jpg', 'man.jpg', 'cup.jpg', 'kick1.jpg', 'girls.jpg', 'court.jpg', 'messi.jpg', 'jersey.jpg', 'win.jpg', 'boy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `server_heading`
--

CREATE TABLE `server_heading` (
  `id` int(11) NOT NULL,
  `para1` longtext NOT NULL,
  `para2` longtext NOT NULL,
  `para3` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_heading`
--

INSERT INTO `server_heading` (`id`, `para1`, `para2`, `para3`) VALUES
(1, 'WELCOME TO FUTSAL HOUSE', 'We heartily welcome you to Futsal House. It has been providing quality service since its establishment in 2018 A.D.', 'Futsal House holds a small area at the heart of the country i.e Kathmandu. The motto of the organization \"COME PLAY\" is provided by the owner to encourage all Nepalese football lovers to join indoor football.');

-- --------------------------------------------------------

--
-- Table structure for table `server_index2`
--

CREATE TABLE `server_index2` (
  `id` int(11) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `text1` varchar(5) NOT NULL,
  `head1` longtext NOT NULL,
  `para1` longtext NOT NULL,
  `img2` varchar(100) NOT NULL,
  `text2` varchar(5) NOT NULL,
  `head2` longtext NOT NULL,
  `para2` longtext NOT NULL,
  `img3` varchar(100) NOT NULL,
  `text3` varchar(5) NOT NULL,
  `head3` longtext NOT NULL,
  `para3` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_index2`
--

INSERT INTO `server_index2` (`id`, `img1`, `text1`, `head1`, `para1`, `img2`, `text2`, `head2`, `para2`, `img3`, `text3`, `head3`, `para3`) VALUES
(1, 'pics/cup_iIaYfL6.jpg', 'cup', 'FUTSAL KINGS', 'Futsal Kings 2020 is going to be organized by Futsal House. This is an upcoming event going to be held in Futsal House. Stay tuned!!!', 'pics/book.jpg', 'book', 'BOOK NOW', 'Futsal House has now opened online booking. Get 10% off by booking online now. Hurry Up and place your bookings.', 'pics/train.jpg', 'train', 'TRAINING SESSION', 'Training is now available in Futsal House. Football Star Jumanu Rai will train you to become a great futsal player.');

-- --------------------------------------------------------

--
-- Table structure for table `server_index3`
--

CREATE TABLE `server_index3` (
  `id` int(11) NOT NULL,
  `head` longtext NOT NULL,
  `para` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_index3`
--

INSERT INTO `server_index3` (`id`, `head`, `para`) VALUES
(1, 'Free Registration!!!', 'Futsal House has opened free registration for you. You can register using your Gmail account. Register your account now and later you can login to book your playtime. If you register you can apply for membership account. Be a permanent member of Futsal House to experience better facilities provided by our team.');

-- --------------------------------------------------------

--
-- Table structure for table `server_indeximg`
--

CREATE TABLE `server_indeximg` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `text` varchar(5) NOT NULL,
  `head` longtext NOT NULL,
  `para` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_indeximg`
--

INSERT INTO `server_indeximg` (`id`, `img`, `text`, `head`, `para`) VALUES
(1, 'pics/champion_sVsR3pK.jpg', 'champ', 'FIRST NJFA RUNNING CUP 2020', 'Nepal Japan Football Association(NJFA) is organizing 1st NJFA running cup futsal tournament on February 9 in Tokyo.');

-- --------------------------------------------------------

--
-- Table structure for table `server_sliderimg`
--

CREATE TABLE `server_sliderimg` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `text` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_sliderimg`
--

INSERT INTO `server_sliderimg` (`id`, `img`, `text`) VALUES
(3, 'pics/futsal1_baK40d6.jpg', 'fut1'),
(4, 'pics/futsal2.jpg', 'fut2'),
(5, 'pics/futsal3.jpg', 'fut3');

-- --------------------------------------------------------

--
-- Table structure for table `server_trainingimg`
--

CREATE TABLE `server_trainingimg` (
  `id` int(11) NOT NULL,
  `imgfirst` varchar(100) NOT NULL,
  `textfirst` varchar(5) NOT NULL,
  `imgsec` varchar(100) NOT NULL,
  `textsec` varchar(5) NOT NULL,
  `imgthird` varchar(100) NOT NULL,
  `textthird` varchar(5) NOT NULL,
  `imgfour` varchar(100) NOT NULL,
  `textfour` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_trainingimg`
--

INSERT INTO `server_trainingimg` (`id`, `imgfirst`, `textfirst`, `imgsec`, `textsec`, `imgthird`, `textthird`, `imgfour`, `textfour`) VALUES
(1, 'pics/sport.jpg', 'sport', 'pics/school.jpg', 'sch', 'pics/shot.jpg', 'shot', 'pics/water.jpg', 'water');

-- --------------------------------------------------------

--
-- Table structure for table `server_trainingtext`
--

CREATE TABLE `server_trainingtext` (
  `id` int(11) NOT NULL,
  `head1` longtext NOT NULL,
  `paraf1` longtext NOT NULL,
  `paraf2` longtext NOT NULL,
  `paraf3` longtext NOT NULL,
  `head2` longtext NOT NULL,
  `paras1` longtext NOT NULL,
  `paras2` longtext NOT NULL,
  `paras3` longtext NOT NULL,
  `head3` longtext NOT NULL,
  `parat1` longtext NOT NULL,
  `parat2` longtext NOT NULL,
  `parat3` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_trainingtext`
--

INSERT INTO `server_trainingtext` (`id`, `head1`, `paraf1`, `paraf2`, `paraf3`, `head2`, `paras1`, `paras2`, `paras3`, `head3`, `parat1`, `parat2`, `parat3`) VALUES
(1, '3 months package', 'Try a new 3-month package in the limited fee. Develop your physical fitness and basic skills.', 'Fee: NRs. 5000', 'Time: Morning(6-11) and Evening(4-8)', '6 months package', 'Be a part of Futsal House and get a chance to play tournaments being a team member.', 'Fee: NRs. 9000', 'Time: Morning(6-11) and Evening(4-8)', 'Yearly package', 'Be a permanent member of the organization and train with professionals to play for the National team.', 'Fee: NRs. 16000', 'Time: Morning(6-11) and Evening(4-8)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `server_book`
--
ALTER TABLE `server_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `server_book_user_id_c940f1a6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `server_carouselimg`
--
ALTER TABLE `server_carouselimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_galleryimg`
--
ALTER TABLE `server_galleryimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_heading`
--
ALTER TABLE `server_heading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_index2`
--
ALTER TABLE `server_index2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_index3`
--
ALTER TABLE `server_index3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_indeximg`
--
ALTER TABLE `server_indeximg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_sliderimg`
--
ALTER TABLE `server_sliderimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_trainingimg`
--
ALTER TABLE `server_trainingimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_trainingtext`
--
ALTER TABLE `server_trainingtext`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `server_book`
--
ALTER TABLE `server_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `server_carouselimg`
--
ALTER TABLE `server_carouselimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_galleryimg`
--
ALTER TABLE `server_galleryimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_heading`
--
ALTER TABLE `server_heading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_index2`
--
ALTER TABLE `server_index2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_index3`
--
ALTER TABLE `server_index3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_indeximg`
--
ALTER TABLE `server_indeximg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `server_sliderimg`
--
ALTER TABLE `server_sliderimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `server_trainingimg`
--
ALTER TABLE `server_trainingimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `server_trainingtext`
--
ALTER TABLE `server_trainingtext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `server_book`
--
ALTER TABLE `server_book`
  ADD CONSTRAINT `server_book_user_id_c940f1a6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
