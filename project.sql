-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 10:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'devansheerupabheda@yahoo.com', 0, 1, 5),
(2, 'dhyey@gmail.com', 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('33ee2a97ae14fa9ec283a60db55e2d37aa4c3085', '2021-01-16 14:50:31.435782', 4),
('8b0244f18aa2374cd13a282b6f61e8f73fef4757', '2021-01-17 18:30:41.163167', 5),
('e279d5ab24e3911a8401e4d36ba1f366ad96b88b', '2021-01-16 14:49:59.171314', 3),
('f2a0207c079ddfddd49afbac9915e15ef5f2b9ab', '2021-01-18 15:40:26.731744', 6);

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
(25, 'Can add project', 7, 'add_project'),
(26, 'Can change project', 7, 'change_project'),
(27, 'Can delete project', 7, 'delete_project'),
(28, 'Can view project', 7, 'view_project'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add task', 9, 'add_task'),
(34, 'Can change task', 9, 'change_task'),
(35, 'Can delete task', 9, 'delete_task'),
(36, 'Can view task', 9, 'view_task'),
(37, 'Can add Token', 10, 'add_token'),
(38, 'Can change Token', 10, 'change_token'),
(39, 'Can delete Token', 10, 'delete_token'),
(40, 'Can view Token', 10, 'view_token'),
(41, 'Can add token', 11, 'add_tokenproxy'),
(42, 'Can change token', 11, 'change_tokenproxy'),
(43, 'Can delete token', 11, 'delete_tokenproxy'),
(44, 'Can view token', 11, 'view_tokenproxy'),
(45, 'Can add site', 12, 'add_site'),
(46, 'Can change site', 12, 'change_site'),
(47, 'Can delete site', 12, 'delete_site'),
(48, 'Can view site', 12, 'view_site'),
(49, 'Can add social application', 13, 'add_socialapp'),
(50, 'Can change social application', 13, 'change_socialapp'),
(51, 'Can delete social application', 13, 'delete_socialapp'),
(52, 'Can view social application', 13, 'view_socialapp'),
(53, 'Can add social account', 14, 'add_socialaccount'),
(54, 'Can change social account', 14, 'change_socialaccount'),
(55, 'Can delete social account', 14, 'delete_socialaccount'),
(56, 'Can view social account', 14, 'view_socialaccount'),
(57, 'Can add social application token', 15, 'add_socialtoken'),
(58, 'Can change social application token', 15, 'change_socialtoken'),
(59, 'Can delete social application token', 15, 'delete_socialtoken'),
(60, 'Can view social application token', 15, 'view_socialtoken'),
(61, 'Can add email address', 16, 'add_emailaddress'),
(62, 'Can change email address', 16, 'change_emailaddress'),
(63, 'Can delete email address', 16, 'delete_emailaddress'),
(64, 'Can view email address', 16, 'view_emailaddress'),
(65, 'Can add email confirmation', 17, 'add_emailconfirmation'),
(66, 'Can change email confirmation', 17, 'change_emailconfirmation'),
(67, 'Can delete email confirmation', 17, 'delete_emailconfirmation'),
(68, 'Can view email confirmation', 17, 'view_emailconfirmation');

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
  `first_name` varchar(150) NOT NULL,
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
(1, 'pbkdf2_sha256$216000$Ba08DMIdWnv5$w3P9xgGSugzTymMGUHH+3rjyabB4bPk2r/P8nPQW2+g=', '2021-01-18 12:37:10.346269', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2021-01-16 14:46:22.740586'),
(2, 'pbkdf2_sha256$216000$tvOXqJu5uu21$ICv3NBu+fvyZKr+5kD+0z1r3F3QA738ImN5ZDYuuU6A=', '2021-01-18 12:12:02.491656', 0, 'user1', '', '', '', 0, 1, '2021-01-16 14:48:58.290090'),
(3, 'pbkdf2_sha256$216000$3qPNq3Bg47zf$SCBmLhjvfmyW0zk/zSopv0zfV25J1icWLi64OBy/Hec=', '2021-01-18 10:40:14.563251', 0, 'user2', '', '', '', 0, 1, '2021-01-16 14:49:58.727170'),
(4, 'pbkdf2_sha256$216000$wCM2pFfi6d9F$E3Goz1G19sFkrOoYZbxIgo8uWx0kE/A8sasv/Kssm18=', '2021-01-18 06:30:41.720968', 0, 'user3', '', '', '', 0, 1, '2021-01-16 14:50:31.039421'),
(5, 'pbkdf2_sha256$216000$mzPTPbsGOzWK$tcWdWodZ7froEouKZONcyh1nWVuE6FcaKjH1ZWI8Gk8=', '2021-01-18 15:45:34.595560', 0, 'Devanshi', '', '', 'devansheerupabheda@yahoo.com', 0, 1, '2021-01-17 18:30:33.994151'),
(6, 'pbkdf2_sha256$216000$h9r5P45zE5oT$Y0he/Z81W8jRgEo0TMOCYPFOWx5PI6K0gioLGwjMikU=', '2021-01-18 15:41:33.326580', 0, 'Dhyey', '', '', 'dhyey@gmail.com', 0, 1, '2021-01-18 15:40:26.152428');

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
(1, '2021-01-18 11:40:19.610805', '10', 'Task 1 user 1', 2, '[{\"changed\": {\"fields\": [\"Task permission\"]}}]', 9, 1),
(2, '2021-01-18 12:37:34.829206', '8', 'latest devanshi task', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 9, 1),
(3, '2021-01-18 12:37:53.652870', '9', 'latest devanshi task', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 9, 1),
(4, '2021-01-18 12:38:02.498180', '10', 'Task 1 user 1', 2, '[{\"changed\": {\"fields\": [\"User\"]}}]', 9, 1),
(5, '2021-01-18 14:15:43.728936', '3', 'project 1 devanshi 1', 2, '[{\"changed\": {\"fields\": [\"Task permission\"]}}]', 9, 1),
(6, '2021-01-18 14:15:52.934903', '4', 'task 2 devanshi', 2, '[{\"changed\": {\"fields\": [\"Task permission\"]}}]', 9, 1),
(7, '2021-01-18 14:16:09.174753', '6', 'task 3 devanshi', 2, '[{\"changed\": {\"fields\": [\"Task permission\"]}}]', 9, 1),
(8, '2021-01-18 14:47:19.578523', '2', 'project 2 user 1', 2, '[{\"changed\": {\"fields\": [\"Project name\"]}}]', 7, 1),
(9, '2021-01-18 14:47:35.467256', '3', 'project 3 user 1', 2, '[{\"changed\": {\"fields\": [\"Project name\"]}}]', 7, 1),
(10, '2021-01-18 14:47:43.727995', '4', 'project 4 user 1', 2, '[{\"changed\": {\"fields\": [\"Project name\"]}}]', 7, 1),
(11, '2021-01-18 14:47:54.070369', '5', 'project 5 user 1', 2, '[{\"changed\": {\"fields\": [\"Project name\"]}}]', 7, 1),
(12, '2021-01-18 14:48:09.729847', '6', 'project 1 use 2', 2, '[{\"changed\": {\"fields\": [\"Project name\"]}}]', 7, 1);

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
(16, 'account', 'emailaddress'),
(17, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(14, 'allauth', 'socialaccount'),
(13, 'allauth', 'socialapp'),
(15, 'allauth', 'socialtoken'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'authtoken', 'token'),
(11, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(8, 'myapi', 'permission'),
(7, 'myapi', 'project'),
(9, 'myapi', 'task'),
(6, 'sessions', 'session'),
(12, 'sites', 'site');

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
(1, 'contenttypes', '0001_initial', '2021-01-16 14:39:21.680665'),
(2, 'auth', '0001_initial', '2021-01-16 14:39:24.977347'),
(3, 'account', '0001_initial', '2021-01-16 14:39:36.982353'),
(4, 'account', '0002_email_max_length', '2021-01-16 14:39:39.310871'),
(5, 'admin', '0001_initial', '2021-01-16 14:39:39.909124'),
(6, 'admin', '0002_logentry_remove_auto_add', '2021-01-16 14:39:43.640201'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-16 14:39:43.734055'),
(8, 'contenttypes', '0002_remove_content_type_name', '2021-01-16 14:39:45.087161'),
(9, 'auth', '0002_alter_permission_name_max_length', '2021-01-16 14:39:46.644282'),
(10, 'auth', '0003_alter_user_email_max_length', '2021-01-16 14:39:46.856687'),
(11, 'auth', '0004_alter_user_username_opts', '2021-01-16 14:39:46.954197'),
(12, 'auth', '0005_alter_user_last_login_null', '2021-01-16 14:39:48.760421'),
(13, 'auth', '0006_require_contenttypes_0002', '2021-01-16 14:39:48.840936'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2021-01-16 14:39:48.941430'),
(15, 'auth', '0008_alter_user_username_max_length', '2021-01-16 14:39:49.253099'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2021-01-16 14:39:49.453990'),
(17, 'auth', '0010_alter_group_name_max_length', '2021-01-16 14:39:49.761392'),
(18, 'auth', '0011_update_proxy_permissions', '2021-01-16 14:39:49.951026'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2021-01-16 14:39:50.248159'),
(20, 'authtoken', '0001_initial', '2021-01-16 14:39:50.998318'),
(21, 'authtoken', '0002_auto_20160226_1747', '2021-01-16 14:39:55.562760'),
(22, 'authtoken', '0003_tokenproxy', '2021-01-16 14:39:55.698327'),
(23, 'myapi', '0001_initial', '2021-01-16 14:39:56.144840'),
(24, 'myapi', '0002_auto_20210115_1634', '2021-01-16 14:39:59.321119'),
(25, 'myapi', '0003_auto_20210115_1639', '2021-01-16 14:40:00.849283'),
(26, 'myapi', '0004_auto_20210115_1641', '2021-01-16 14:40:00.923665'),
(27, 'myapi', '0005_auto_20210115_1641', '2021-01-16 14:40:01.030259'),
(28, 'myapi', '0006_auto_20210115_1708', '2021-01-16 14:40:02.731586'),
(29, 'myapi', '0007_auto_20210115_1710', '2021-01-16 14:40:02.893828'),
(30, 'myapi', '0008_auto_20210115_1713', '2021-01-16 14:40:02.951758'),
(31, 'myapi', '0009_auto_20210115_1714', '2021-01-16 14:40:04.391397'),
(32, 'myapi', '0010_auto_20210115_1716', '2021-01-16 14:40:05.567947'),
(33, 'myapi', '0011_auto_20210115_1857', '2021-01-16 14:40:08.327012'),
(34, 'myapi', '0012_auto_20210115_1932', '2021-01-16 14:40:16.011837'),
(35, 'myapi', '0013_auto_20210115_1937', '2021-01-16 14:40:18.055667'),
(36, 'myapi', '0014_auto_20210116_2009', '2021-01-16 14:40:22.238005'),
(37, 'sessions', '0001_initial', '2021-01-16 14:40:22.800397'),
(38, 'sites', '0001_initial', '2021-01-16 14:40:23.709322'),
(39, 'sites', '0002_alter_domain_unique', '2021-01-16 14:40:24.140726'),
(40, 'myapi', '0015_auto_20210118_1113', '2021-01-18 05:43:30.104909');

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
('506ffsqlxzs1fkmy9fwlxn1lan44h3cv', '.eJxVjEEOwiAQRe_C2hAonTK6dN8zkGEYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IX5dTpd4vED6k7SHeqt1nzXNdlinpX9EGbHuckz-vh_h0UauVb94N4YGCH0FkghDwkAJE4gED2BMTYIWfnLEf0Lp87dAaTydJbMVm9P9-gN-k:1l19Kr:IuR60aPnp4UXGwTrsBsJJRg9WJxaT3lGhslt2NPj-sI', '2021-01-31 14:47:21.068815'),
('5og5p0gtt2docu8v1cwqstvduxhbnzw4', '.eJxVjEsOAiEQBe_C2hBgaD4u3XsG0t2AjJohmc_KeHedZBa6fVX1XiLhtra0LWVOYxZnAeL0uxHyo0w7yHecbl1yn9Z5JLkr8qCLvPZcnpfD_TtouLRv7a1zYFXkEBhjBRV9HiqQMeShBJ0hexPsoFUBjQapekeekZlRF0fi_QHKzTgI:1l1WPO:pNO8dputwre_X9vYS4bw_Ep-Kl1SGKmZR2FIGvdX7vs', '2021-02-01 15:25:34.301533'),
('6wn1sj8pk8y7qlh4nltgmfjnimce3o1g', '.eJxVjEEOwiAQRe_C2hAKg4wu3XuGZoYBqRpISrsy3l2bdKHb_977LzXSupRx7WkeJ1FnZdXhd2OKj1Q3IHeqt6Zjq8s8sd4UvdOur03S87K7fweFevnWAQAzZ3QBHFnAAJIyhsw-MqA_Gu9osMTiEyTHJjg7iLGQETHacFLvD9akN1I:1l18yb:LSMiO0djxsmBd7p1sSwVLkoTwvp8DDfmyDMb8IRHEdY', '2021-01-31 14:24:21.349553'),
('b7r7zp0659361918ilergibxoh6g66vi', '.eJxVjEEOwiAQRe_C2hAonTK6dN8zkGEYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IX5dTpd4vED6k7SHeqt1nzXNdlinpX9EGbHuckz-vh_h0UauVb94N4YGCH0FkghDwkAJE4gED2BMTYIWfnLEf0Lp87dAaTydJbMVm9P9-gN-k:1l1D1k:vYcC46Vlzoyly_3pTw3xcIKJAgZzqdjjDUs3HdF3olE', '2021-01-31 18:43:52.352252'),
('e6bt470yyxj16uivwr74klg3c7w2xfvh', '.eJxVjEEOwiAQRe_C2hAKg4wu3XuGZoYBqRpISrsy3l2bdKHb_977LzXSupRx7WkeJ1FnZdXhd2OKj1Q3IHeqt6Zjq8s8sd4UvdOur03S87K7fweFevnWAQAzZ3QBHFnAAJIyhsw-MqA_Gu9osMTiEyTHJjg7iLGQETHacFLvD9akN1I:1l190q:zSWR8z7HYkP8bSQub8udMl3oN7cZSOhBY1QHy4f9s1Y', '2021-01-31 14:26:40.751344'),
('e6fj2d0vd2nj52dw0ieqt1slztd8vy49', '.eJxljMEOgjAQRP-lZ9JQWmzr0bvfQHa7i1SxTYB6Mf67YIiJcY7z3sxTQAi5pKV78BT7yNTxHeIojqmMY_WlZeZJHIURleigLMOn6CL9dwjhxmkDdIV0yTLktEwR5abInc7ynInH0-7-HAwwD-uag7LKtkYRAJJvkLCuudeuYVDo2NQmeGhIe0eaoF0DVnuFNdrGH5x4vQGP9EmK:1l0muN:3dEypiZOUaxDAdINtwmmPXmauEATxSDqNsmrC87jN5g', '2021-01-30 14:50:31.637741'),
('ex1fbvmp8x2qlzx7hkcf0dkapmjh2nwi', '.eJxVjEEOwiAUBe_C2hBoKQGX7j0D4cP7UjWQlHZlvLs26UK3b2beS4S4rSVsHUuYszgLLU6_G8X0QN1Bvsd6azK1ui4zyV2RB-3y2jKel8P9Oyixl2_NOZrRIKlBaZ60AgGG45TgFbxjl5wiS0YbgD2cAfPIox-cspYzifcHC9E5AA:1l1Daa:zhiZ5gPOLmPr-_ZxPwh0G83kMkTXyGRGh41CRiRO_3Y', '2021-01-31 19:19:52.118673'),
('fng7ki9wa4pmhr7xche0k8yn45s04oe3', '.eJxVjEEOwiAQRe_C2hAKg4wu3XuGZoYBqRpISrsy3l2bdKHb_977LzXSupRx7WkeJ1FnZdXhd2OKj1Q3IHeqt6Zjq8s8sd4UvdOur03S87K7fweFevnWAQAzZ3QBHFnAAJIyhsw-MqA_Gu9osMTiEyTHJjg7iLGQETHacFLvD9akN1I:1l0mwR:wlMA4H0ZNpGV9bZEJlNcH8Gl1Weo1Q8jFLOm26dyevY', '2021-01-30 14:52:39.736358'),
('hnxxpy4grd6uklkj4cg9mz1fygiac9im', '.eJxVjEEOwiAQRe_C2hAonTK6dN8zkGEYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IX5dTpd4vED6k7SHeqt1nzXNdlinpX9EGbHuckz-vh_h0UauVb94N4YGCH0FkghDwkAJE4gED2BMTYIWfnLEf0Lp87dAaTydJbMVm9P9-gN-k:1l1D3E:AfOXGEsVzKJOQht2emGaAD9eGoPGf0GhS-2U5-HXMD8', '2021-01-31 18:45:24.473062'),
('o6gfh0vldpin1t8af4oevphklux6qipy', '.eJxVjEEOwiAQRe_C2hAonTK6dN8zkGEYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IX5dTpd4vED6k7SHeqt1nzXNdlinpX9EGbHuckz-vh_h0UauVb94N4YGCH0FkghDwkAJE4gED2BMTYIWfnLEf0Lp87dAaTydJbMVm9P9-gN-k:1l19iq:xQPsJNy2SJvZfsbY6ArOXVSLKXbVADhDr9H1Yhgw3is', '2021-01-31 15:12:08.252952'),
('oe06tl0q65mg4p848rx4py9axvsmf5ik', '.eJxVjEEOwiAQRe_C2hAKg4wu3XuGZoYBqRpISrsy3l2bdKHb_977LzXSupRx7WkeJ1FnZdXhd2OKj1Q3IHeqt6Zjq8s8sd4UvdOur03S87K7fweFevnWAQAzZ3QBHFnAAJIyhsw-MqA_Gu9osMTiEyTHJjg7iLGQETHacFLvD9akN1I:1l1977:4FlOI6E1blp3sY0NZyKDMwDDDtn2gKLca4YuT9YndEY', '2021-01-31 14:33:09.991607'),
('p3ahgz19nm25huyworeh5o8lpjghf8qs', '.eJxljEEOgjAQRe_SNWmAMlBZuvcMzXQ6lWptE6BujHdXDDExbt97_z8EEuWSVnPnOfjAzvANQxRjKjFWX1sWnsUolKiEwbJOH2CC-2cW6cppE-6C6Zwl5bTOwcotkbtd5Ck7jse9_TmYcJne667nAQhIaWgbQA2-dwDMtgcGPyAg6VaTV6ohqwflD61WtXa1567h2ovnC3PSSXs:1l0mtr:07GxnzDMzihy9RoIUyNj0RH93HO0CqoAkq2YktbFIwM', '2021-01-30 14:49:59.724037'),
('pgfc149hyxefyi9z2uh8jj4cl543t7or', '.eJxVjEEOwiAQRe_C2hAonTK6dN8zkGEYpGpoUtqV8e7apAvd_vfef6lA21rC1mQJU1IX5dTpd4vED6k7SHeqt1nzXNdlinpX9EGbHuckz-vh_h0UauVb94N4YGCH0FkghDwkAJE4gED2BMTYIWfnLEf0Lp87dAaTydJbMVm9P9-gN-k:1l19cI:FRheke93l_7PvbG9qcKtxkAaI1yI9EoIsS0ZlTvAzGU', '2021-01-31 15:05:22.614438'),
('r7agxjd0dj3o09mzqd9h2w06ftkx1sca', '.eJxVjEEOwiAQRe_C2hAKg4wu3XuGZoYBqRpISrsy3l2bdKHb_977LzXSupRx7WkeJ1FnZdXhd2OKj1Q3IHeqt6Zjq8s8sd4UvdOur03S87K7fweFevnWAQAzZ3QBHFnAAJIyhsw-MqA_Gu9osMTiEyTHJjg7iLGQETHacFLvD9akN1I:1l195r:pLi93LWdQ2F5j6DhpHAfAQ542fO5oRuLdNBfqEOhIDw', '2021-01-31 14:31:51.328799'),
('s85ydf7uxhipws6w5o9e5lgo8t6t0hf5', '.eJxVjEsOAiEQBe_C2hBgaD4u3XsG0t2AjJohmc_KeHedZBa6fVX1XiLhtra0LWVOYxZnAeL0uxHyo0w7yHecbl1yn9Z5JLkr8qCLvPZcnpfD_TtouLRv7a1zYFXkEBhjBRV9HiqQMeShBJ0hexPsoFUBjQapekeekZlRF0fi_QHKzTgI:1l1Wik:Z4LUenckgZx63is0l8pbQ3KTq3rMqLmwDJc83HdhLF4', '2021-02-01 15:45:34.630611'),
('t7ds4u0n5hmsn5dr8oda3o9hejtf6xxx', '.eJxljMEOwiAQBf-Fc0NaWAQ9evcbyAKLRRGStngx_rvWNCbG68y892DofW1lsXeaUkwULN0wZXYoLefua9tMEzswwTpmsS3jB9gU_plDf6WyinDBcq7c17JMyfE14Zud-akGyset_TkYcR7faw1gootGapAowGgIFI2OTnkHRu16JXEQ6IIiIOl6LcUQegHRGOOF3rPnC2opSOM:1l0mst:GZ4dlvq8n_4gBsjC0ENSGsBZ8wuzGUon1RWqlNaeE4U', '2021-01-30 14:48:59.093257');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `myapi_permission`
--

CREATE TABLE `myapi_permission` (
  `id` int(11) NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `permission_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapi_permission`
--

INSERT INTO `myapi_permission` (`id`, `permission_name`, `permission_desc`) VALUES
(1, 'Can Edit', 'Edit content'),
(2, 'Can View', 'Can view contents'),
(3, 'Can Delete', 'Can delete content');

-- --------------------------------------------------------

--
-- Table structure for table `myapi_project`
--

CREATE TABLE `myapi_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(30) NOT NULL,
  `project_description` longtext NOT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapi_project`
--

INSERT INTO `myapi_project` (`id`, `project_name`, `project_description`, `created_at`, `user_id`) VALUES
(1, 'project 1 user 1', 'dndffg', '2021-01-18', 2),
(2, 'project 2 user 1', 'dndffg', '2021-01-18', 2),
(3, 'project 3 user 1', 'dndffg', '2021-01-18', 2),
(4, 'project 4 user 1', 'dndffg', '2021-01-18', 2),
(5, 'project 5 user 1', 'dndffg', '2021-01-18', 2),
(6, 'project 1 use 2', 'dfugfgfg', '2021-01-18', 3),
(7, 'Project Management System', 'APIs :\r\n- Manage users (Register/login)\r\n- Manage projects (CRUD)\r\n- Manage tasks (CRUD)\r\n- Owner of the project can share that project with other users(if user is active) based on permission (Edit, Delete, View)\r\n- Only Project owner should be able to create tasks', '2021-01-13', 6),
(8, 'Project Management System', 'APIs :\r\nManage users (Register/login), Manage projects (CRUD), Manage tasks (CRUD), Owner of the project can share that project with other users(if user is active) based on permission (Edit, Delete, View),Only Project owner should be able to create tasks', '2021-01-13', 6);

-- --------------------------------------------------------

--
-- Table structure for table `myapi_task`
--

CREATE TABLE `myapi_task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(30) NOT NULL,
  `task_description` longtext NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapi_task`
--

INSERT INTO `myapi_task` (`id`, `task_name`, `task_description`, `project_id`, `task_permission_id`, `user_id`) VALUES
(3, 'project 1 devanshi 1', 'vvvcvccvcv', 1, 3, 1),
(4, 'task 2 devanshi', 'osdfdn', 1, 2, 1),
(5, 'task 2 devnashi', 'fddgf', 1, 1, 1),
(6, 'task 3 devanshiiiiiiii', 'bvvvvbvvbvvbbbdfgfggggggggggggg', 6, 2, 1),
(7, 'TASK 34', 'GFDGFGFD', 1, 1, 1),
(11, 'shi new taskkk', 'new task of devu  dgfgfgfgfggdvcv', 1, 2, 5),
(13, 'Create Login/registration api', 'create api for login and registration in given project in flask or django of python framework', 7, 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `myapi_permission`
--
ALTER TABLE `myapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapi_project`
--
ALTER TABLE `myapi_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapi_project_user_id_ed71e175_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `myapi_task`
--
ALTER TABLE `myapi_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapi_task_task_permission_id_2a8450e5_fk_myapi_permission_id` (`task_permission_id`),
  ADD KEY `myapi_task_project_id_175bd1f9_fk_myapi_project_id` (`project_id`),
  ADD KEY `myapi_task_user_id_66300661_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myapi_permission`
--
ALTER TABLE `myapi_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myapi_project`
--
ALTER TABLE `myapi_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myapi_task`
--
ALTER TABLE `myapi_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `myapi_project`
--
ALTER TABLE `myapi_project`
  ADD CONSTRAINT `myapi_project_user_id_ed71e175_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myapi_task`
--
ALTER TABLE `myapi_task`
  ADD CONSTRAINT `myapi_task_project_id_175bd1f9_fk_myapi_project_id` FOREIGN KEY (`project_id`) REFERENCES `myapi_project` (`id`),
  ADD CONSTRAINT `myapi_task_task_permission_id_2a8450e5_fk_myapi_permission_id` FOREIGN KEY (`task_permission_id`) REFERENCES `myapi_permission` (`id`),
  ADD CONSTRAINT `myapi_task_user_id_66300661_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
