-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 12:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exps12`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` bigint(20) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `city_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `area_name`, `city_id`) VALUES
(1, 'Nikol', 1),
(2, 'C G road', 1),
(3, 'S G Highway', 1),
(4, 'Borivali', 2);

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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add area', 7, 'add_area'),
(26, 'Can change area', 7, 'change_area'),
(27, 'Can delete area', 7, 'delete_area'),
(28, 'Can view area', 7, 'view_area'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add city', 9, 'add_city'),
(34, 'Can change city', 9, 'change_city'),
(35, 'Can delete city', 9, 'delete_city'),
(36, 'Can view city', 9, 'view_city'),
(37, 'Can add customer', 10, 'add_customer'),
(38, 'Can change customer', 10, 'change_customer'),
(39, 'Can delete customer', 10, 'delete_customer'),
(40, 'Can view customer', 10, 'view_customer'),
(41, 'Can add inquiry', 11, 'add_inquiry'),
(42, 'Can change inquiry', 11, 'change_inquiry'),
(43, 'Can delete inquiry', 11, 'delete_inquiry'),
(44, 'Can view inquiry', 11, 'view_inquiry'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add payment_ details', 13, 'add_payment_details'),
(50, 'Can change payment_ details', 13, 'change_payment_details'),
(51, 'Can delete payment_ details', 13, 'delete_payment_details'),
(52, 'Can view payment_ details', 13, 'view_payment_details'),
(53, 'Can add state', 14, 'add_state'),
(54, 'Can change state', 14, 'change_state'),
(55, 'Can delete state', 14, 'delete_state'),
(56, 'Can view state', 14, 'view_state'),
(57, 'Can add subcategory', 15, 'add_subcategory'),
(58, 'Can change subcategory', 15, 'change_subcategory'),
(59, 'Can delete subcategory', 15, 'delete_subcategory'),
(60, 'Can view subcategory', 15, 'view_subcategory'),
(61, 'Can add shipping', 16, 'add_shipping'),
(62, 'Can change shipping', 16, 'change_shipping'),
(63, 'Can delete shipping', 16, 'delete_shipping'),
(64, 'Can view shipping', 16, 'view_shipping'),
(65, 'Can add seller', 17, 'add_seller'),
(66, 'Can change seller', 17, 'change_seller'),
(67, 'Can delete seller', 17, 'delete_seller'),
(68, 'Can view seller', 17, 'view_seller'),
(69, 'Can add product', 18, 'add_product'),
(70, 'Can change product', 18, 'change_product'),
(71, 'Can delete product', 18, 'delete_product'),
(72, 'Can view product', 18, 'view_product'),
(73, 'Can add order_details', 19, 'add_order_details'),
(74, 'Can change order_details', 19, 'change_order_details'),
(75, 'Can delete order_details', 19, 'delete_order_details'),
(76, 'Can view order_details', 19, 'view_order_details'),
(77, 'Can add feedback', 20, 'add_feedback'),
(78, 'Can change feedback', 20, 'change_feedback'),
(79, 'Can delete feedback', 20, 'delete_feedback'),
(80, 'Can view feedback', 20, 'view_feedback'),
(81, 'Can add cart', 21, 'add_cart'),
(82, 'Can change cart', 21, 'change_cart'),
(83, 'Can delete cart', 21, 'delete_cart'),
(84, 'Can view cart', 21, 'view_cart'),
(85, 'Can add billing', 22, 'add_billing'),
(86, 'Can change billing', 22, 'change_billing'),
(87, 'Can delete billing', 22, 'delete_billing'),
(88, 'Can view billing', 22, 'view_billing');

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
(1, 'pbkdf2_sha256$320000$1WnbX8xYKqiBmBKS882JhE$fYKiVE5SHIneaEbMxVa7B740BgCYqcKFKYe5jaofeuI=', '2023-04-08 08:07:38.234052', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-03-13 11:30:20.605523'),
(2, 'pbkdf2_sha256$600000$vg0cXzyf5DwLntCFoGp78k$hNrwbFk7DjTlMqf1yeik5AwAtxqitiD+a/z/LDi1Gvc=', '2023-04-08 09:06:50.402327', 0, 'abhi', 'abhi', 'patoliya', 'patoliyabhi17@gmail.com', 0, 1, '2023-03-13 11:36:27.286350'),
(3, 'pbkdf2_sha256$320000$xl3hxTBWaZ6Zn8I9dg0Pce$Qky+3TKBfxD+JGxU//neOEF2uCa04yJRKIenHMdknSA=', '2023-04-08 09:05:40.162110', 0, 'rajesh', 'rajesh', 'patel', 'rajesh@gmail.com', 0, 1, '2023-03-13 11:38:07.239971'),
(6, 'pbkdf2_sha256$320000$GsmSSaCLa1b51zENMRRg3y$gNRV9lCWKJEKovTehLfXX4i6xN0I8i36zUlPXVcX4As=', '2023-04-07 07:03:38.417388', 0, 'om', 'Om', 'Patel', 'om@gmail.com', 0, 1, '2023-03-14 07:40:35.819264'),
(7, 'pbkdf2_sha256$600000$84FLA6VTnalORYxTX99faS$PG2tQUXtbNCi1u9R+QfGqRviHvVEw9cYPdEffxjIr/w=', '2023-04-21 12:05:10.813024', 1, 'nensi', '', '', 'nensi@gmail.com', 1, 1, '2023-04-19 10:30:30.139366'),
(8, 'pbkdf2_sha256$600000$bl6AcIgFK6WM1roITOng4L$B9qcltZz0qN7c/g8OvpGp/qCuQRKgZlSoCdv9975lsY=', '2023-04-21 11:06:55.585461', 0, 'jeck', 'jeck', 'pamella', 'jeck@gmail.com', 0, 1, '2023-04-19 11:32:19.185368'),
(9, 'pbkdf2_sha256$600000$Av3cUiUyPdcMQimyEZvpNt$syPjtDcEXDKMZkfYT0V+Uf3bSZ0uF5eWE3Khj7lbVVg=', '2023-04-22 08:30:24.412671', 0, 'khushi', 'Khushi', 'Hirpara', 'khushi@gmail.com', 0, 1, '2023-04-20 09:51:36.541690'),
(10, 'pbkdf2_sha256$600000$scsZKUPCH7Zr12IWv4EwZL$xyDovPh50WIKMS14ErlulI20AbCXM6wOmKFILZ/5wGI=', '2023-04-20 10:31:01.182418', 0, 'riya', 'riya', 'rajpurohit', 'riya@gmail.com', 0, 1, '2023-04-20 10:29:56.953440'),
(15, 'pbkdf2_sha256$600000$R4i55lbiViKEbsGGs2Kn8D$NsVnl+Iks/2GNzP7SN+mMuuNjSKj4A0F+mYjUNJF6Z0=', '2023-04-21 09:46:57.268718', 0, 'tanishq12', 'Bhanubhai', 'Patel', 'tanishq@gmail.com', 0, 1, '2023-04-21 09:41:35.547093'),
(16, 'pbkdf2_sha256$600000$yJRmxsci5USrcv4nokoszk$GKotKwNb77Yuk4y/Skqb23YoA5JenREVJtqWKAA6zro=', '2023-04-22 08:20:39.472231', 0, 'malabar', 'Khushi', 'patel', 'khushi@gmail.com', 0, 1, '2023-04-21 09:52:19.548832'),
(17, 'pbkdf2_sha256$600000$hxYPVihArd0iH3PxiNVF8B$KJT/eqXqRreusuWnaKrorjSyI3H0p2nUOeCu7OSSKls=', '2023-04-22 06:55:13.113278', 1, 'harsh', '', '', 'harsh@gmail.com', 1, 1, '2023-04-22 06:54:56.568379');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_details_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `customer_id`, `product_id`) VALUES
(9, 2, 3, 4),
(10, 1, 3, 5),
(14, 5, 2, 16),
(15, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(3, 'Necklace'),
(4, 'Ring'),
(5, 'Earring'),
(6, 'Coin'),
(9, 'kandoro');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`, `state_id`) VALUES
(1, 'Ahmedabad', 1),
(2, 'Mumbai', 2),
(3, 'Amrutsir', 3),
(4, 'Jaipur', 4),
(5, 'Delhi', 5),
(6, 'Surat', 1),
(7, 'Gandinagar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `gender` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `contact`, `address`, `gender`, `date`, `area_id`, `city_id`, `state_id`, `user_id`) VALUES
(1, 8980203030, 'B/501 Shivam Casa\r\nNr. Akshar Heights, Nikol', 'male', '2023-03-13', 1, 1, 1, 2),
(2, 8086232333, '34,karnavati park,near tirth bhumi,nikolgam road ,ahmedabad', 'female', '2023-04-20', 1, 1, 1, 9),
(3, 4512378945, 'satadhar near sunstep club', 'female', '2023-04-20', 1, 1, 1, 10);

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
(7, 'myadmin', 'area'),
(22, 'myadmin', 'billing'),
(21, 'myadmin', 'cart'),
(8, 'myadmin', 'category'),
(9, 'myadmin', 'city'),
(10, 'myadmin', 'customer'),
(20, 'myadmin', 'feedback'),
(11, 'myadmin', 'inquiry'),
(12, 'myadmin', 'order'),
(19, 'myadmin', 'order_details'),
(13, 'myadmin', 'payment_details'),
(18, 'myadmin', 'product'),
(17, 'myadmin', 'seller'),
(16, 'myadmin', 'shipping'),
(14, 'myadmin', 'state'),
(15, 'myadmin', 'subcategory'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-13 11:28:49.933064'),
(2, 'auth', '0001_initial', '2023-03-13 11:28:51.549515'),
(3, 'admin', '0001_initial', '2023-03-13 11:28:52.251688'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-13 11:28:52.275422'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-13 11:28:52.358649'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-13 11:28:52.569037'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-13 11:28:52.766578'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-13 11:28:52.836036'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-13 11:28:52.860050'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-13 11:28:52.943148'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-13 11:28:52.950123'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-13 11:28:52.978888'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-13 11:28:53.025276'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-13 11:28:53.068014'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-13 11:28:53.119683'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-13 11:28:53.143179'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-13 11:28:53.209097'),
(18, 'myadmin', '0001_initial', '2023-03-13 11:28:59.300009'),
(19, 'myadmin', '0002_alter_customer_date', '2023-03-13 11:28:59.393542'),
(20, 'sessions', '0001_initial', '2023-03-13 11:28:59.625323'),
(21, 'myadmin', '0003_rename_author_product_company', '2023-03-13 11:41:20.733655'),
(22, 'myadmin', '0004_order_area_order_city_order_fname_order_lname_and_more', '2023-03-13 12:30:03.413797'),
(23, 'myadmin', '0005_order_time_alter_order_date', '2023-03-13 12:32:59.462746'),
(24, 'myadmin', '0006_order_orderdate', '2023-03-13 12:34:52.131643'),
(25, 'myadmin', '0007_rename_date_order_ddate', '2023-03-13 12:38:26.950269'),
(26, 'myadmin', '0008_rename_owner_name_seller_showroom_name_and_more', '2023-03-14 07:18:35.577472'),
(27, 'myadmin', '0009_order_description', '2023-03-14 09:57:49.150763'),
(28, 'myadmin', '0010_alter_order_description', '2023-03-14 09:59:33.518114'),
(29, 'myadmin', '0011_remove_product_seller_alter_customer_date', '2023-04-07 06:39:04.189884');

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
('56qrunklsxvkfh6sqg7paregjdbx8yut', '.eJxVjDEOwjAMRe-SGUWxU0LKyM4ZKttxaAElUtNOiLtDpQ6w_vfef5mB1mUc1qbzMCVzNr05_G5M8tCygXSncqtWalnmie2m2J02e61Jn5fd_TsYqY3f-uQFOQSQ0CMfgUKIiJQVIwSKqOozZemE2BE4db2PLNgBdBGyy2reH-CiN-0:1pq8dU:fvPCAjL7TyjYTog2QdctN8HjJQDtYq-vIxCklUYawjY', '2023-05-06 08:30:24.456742'),
('b91hugoptz6hjdg3bfslvqoczj20hgl2', '.eJxVjMsOwiAQRf-FtSEMj0JduvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3dlAAwpitNmAAMYBVlvRQAgFp7w1b47wmMOzyQDxiVg6TtqygpMDi_QG1_zdW:1pl4X4:HOi91neopwVEcVPOVYS7FbUiZH0Twb845h1gRJgeaFQ', '2023-04-22 09:06:50.406334'),
('btlkz21hk7nglda0q69gmob1rdyqv5cw', '.eJxVjMsOwiAQRf-FtSEMj0JduvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZnocXpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3dlAAwpitNmAAMYBVlvRQAgFp7w1b47wmMOzyQDxiVg6TtqygpMDi_QG1_zdW:1pkfBY:KO1iwFtGLw-V-v8Ivyw6Ox5vZqxkvrV0hpUvE6V-oI8', '2023-04-21 06:02:56.159540'),
('vxy44g7x7o6z3xnsen0kc7kn1lq9um81', '.eJxVjDsOwyAQRO9CHSG8_EzK9D4DWhYITiKQjF1FuXtsyUXSjea9mTfzuK3Fbz0tfo7syiy7_HYB6ZnqAeID671xanVd5sAPhZ-086nF9Lqd7t9BwV72tSAwKJESOTMQ2T2DikoRQQhSRTHmKOXgtM4YBGiBpFTWI4EQYJxlny_9IDfh:1pppVm:PTgbx152uOMvYC3ZxZzDfhdRubSSP7395q045mTLvLc', '2023-05-05 12:05:10.835010'),
('zmxmlliw5gf6rxkr9mb4fgd1w5gmztzu', '.eJxVjDsOwjAQBe_iGllm119K-pwh8q43OIASKU4qxN0hUgpo38y8l-rzttZ-a7L0Y1EXher0u1Hmh0w7KPc83WbN87QuI-ld0QdtupuLPK-H-3dQc6vfmigMGCChAxC0cnYeYhFGIBxKtNmgsYicHZnA7HhwNiY0IOAJklfvD9HFNzc:1pc25J:VWmeFydMKqQ9f-m-idgaWItavCe5Qr0Icyzbi6QCThA', '2023-03-28 10:40:49.658028');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `rating` varchar(30) NOT NULL,
  `comment` longtext NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `rating`, `comment`, `date`, `user_id`) VALUES
(1, '5', 'superb', '2023-04-08', 2),
(4, '4', 'good', '2023-04-20', 10);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `contact`, `subject`, `message`, `date`) VALUES
(1, 'abhi patoliya', 'patoliyabhi17@gmail.com', 6764646456, 'need help', 'need help', '2023-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `ddate` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `time` longtext NOT NULL,
  `orderdate` date NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `amount`, `ddate`, `status`, `customer_id`, `seller_id`, `area_id`, `city_id`, `fname`, `lname`, `phone`, `time`, `orderdate`, `description`) VALUES
(15, '15800.00', '16-03-2023', 'visited', 2, 3, 1, 1, 'Khushi', 'Hirpara', 8086232333, '', '2023-04-20', 'ok'),
(16, '115800.00', '16-03-2023', 'pending', 2, 3, 1, 1, 'Khushi', 'Hirpara', 8086232333, '', '2023-04-20', ' '),
(17, '171800.00', '16-03-2023', 'cancelled', 2, 3, 1, 1, 'Khushi', 'Hirpara', 8086232333, '', '2023-04-20', ' '),
(18, '56000.00', '13-03-2023', 'pending', 2, 3, 1, 1, 'Khushi', 'Hirpara', 8086232333, '9AM-10AM', '2023-04-20', ' '),
(19, '142000.00', '13-03-2023', 'cancelled', 2, 3, 1, 1, 'Khushi', 'Hirpara', 8086232333, '9AM-10AM', '2023-04-20', ' '),
(20, '56000.00', '14-03-2023', 'pending', 2, 3, 1, 1, 'Khushi', 'Hirpara', 8086232333, '19PM-20PM', '2023-04-20', ' '),
(21, '142000.00', '14-03-2023', 'pending', 2, 3, 1, 1, 'Khushi', 'Hirpara', 8086232333, '19PM-20PM', '2023-04-20', ' '),
(22, '5360000.00', '', 'pending', 2, 3, 3, 1, 'Khushi', 'Hirpara', 8086232333, '', '2023-04-21', ' '),
(23, '3350000.00', '2023-04-21', 'pending', 2, 4, 4, 2, 'Khushi', 'Hirpara', 8086232333, '9AM-10AM', '2023-04-22', ' '),
(24, '3433000.00', '2023-04-21', 'pending', 2, 4, 4, 2, 'Khushi', 'Hirpara', 8086232333, '9AM-10AM', '2023-04-22', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `quantity`, `price`, `order_id`, `product_id`, `seller_id`) VALUES
(13, 2, '15800.00', 17, 9, 3),
(14, 1, '100000.00', 17, 6, 3),
(15, 1, '56000.00', 17, 7, 3),
(16, 1, '56000.00', 19, 7, 3),
(17, 1, '86000.00', 19, 5, 3),
(18, 1, '56000.00', 21, 7, 3),
(19, 1, '86000.00', 21, 5, 3),
(20, 8, '5360000.00', 22, 16, 3),
(21, 5, '3350000.00', 24, 16, 4),
(22, 1, '83000.00', 24, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `payment_id` longtext NOT NULL,
  `signature` longtext NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `price`, `quantity`, `description`, `image`, `size`, `company`, `category_id`, `subcategory_id`) VALUES
(4, 'Swirl Diamond Necklace', '83000.00', '10', 'A breath-taking 18 Karat yellow gold necklace, studded with diamonds is all you need for the grand occasion. Stone Clarity', '50D1D2NJUAA09_2.jpg', 'm', 'Tanishq', 3, 5),
(5, 'Sparkling Floral Diamond Necklace', '86000.00', '10', 'breath-taking 18 Karat yellow gold necklace, studded with diamonds is all you need for the grand occasion. Stone Clarity', '50D2A1NIEAA02_2.jpg', 'm', 'Tanishq', 3, 5),
(6, 'Pristine Gold Necklace Set With Stones', '100000.00', '5', 'Exude hypnotic allure when you adorn this sleek contemporary Necklace set thali crafted in 22 Karat Yellow Gold with dazzling stones.', '5111782OTABAP3_2.jpg', 'm', 'Tanishq', 3, 6),
(7, 'Bruz Diamond Ring For Men', '56000.00', '3', 'ring', '50F1KPFRZAA02_1.jpg', 'm', 'caratlane', 4, 8),
(8, 'Mukund Diamond Ring', '40000.00', '13', 'ring', '50F1KPFRZAA02_1.jpg', 'm', 'caratlane', 4, 9),
(9, 'Dainty Beaded Gold Hoop Earrings', '7900.00', '15', 'the classic sheen of gold to your outfit and look stunning with this pair of hoop earrings crafted in 18 Karat Yellow Gold.', '503013HZHAAA00_2.jpg', 'm', 'Tanishq', 5, 10),
(10, 'Diamond Drop Earrings', '40000.00', '9', 'earring', '50F1D1DGAAGA02_2.jpg', 'm', 'Tanishq', 5, 10),
(11, 'Ashtalakshmi 22 Karat Gold Coin', '26000.00', '23', 'gold coin', '600735ZAAAAP00_2.jpg', 'm', 'Tanishq', 6, 12),
(12, '10gm Sacred Tulsi Leaf Silver Coin', '10000.00', '10', 'silver coin', '802821ZWUAAA00_2.jpg', 'm', 'Tanishq', 6, 13),
(16, 'Kandoro', '670000.00', '100', 'good design , 916 wholemark ,22 caret pure gold', 'kandora2.jpg', '', 'kalyan', 9, 16),
(17, 'Silver Necklace', '650000.00', '70', 'Inspire the wonders nestled into you with the magical collection of Necklace & Pendants. Make dressing up effortless with the sparkling collection of Pendants and Necklaces.', 'silver_necklace1.jpg', '', 'tanishq', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` bigint(20) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `showroom_name` varchar(30) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `contact`, `address`, `showroom_name`, `photo`, `about`, `area_id`, `city_id`, `state_id`, `user_id`) VALUES
(3, 4815889615, 'C G road', 'kalyan jewllers', '1.jpg', 'bgshcjsd', 1, 1, 1, 8),
(4, 4565145684, ' Shanti chock ,Borivali west  ,Mumbai', 'Tanishq', 'tanishq.jpeg', 'Tanishq is an Indian jewellery brand and a division of Titan Company. Founded in 1994, Tanishq is headquartered in Bangalore, and has 410 retail stores across more than 240 cities', 4, 2, 2, 15),
(5, 8956231478, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Malabar', 'tanishq.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 2, 1, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_details_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` bigint(20) NOT NULL,
  `state_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`) VALUES
(1, 'Gujarat'),
(2, 'Maharastra'),
(3, 'Punjab'),
(4, 'Rajasthan'),
(5, 'Utter pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` bigint(20) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `subcat_name`, `category_id`) VALUES
(5, 'Diamond Necklace', 3),
(6, 'Gold Necklace', 3),
(7, 'Silver Necklace', 3),
(8, 'Diamond Ring', 4),
(9, 'Gold Ring', 4),
(10, 'Diamond Earring', 5),
(11, 'Gold Earring', 5),
(12, 'Gold Coin', 6),
(13, 'Silver Coin', 6),
(16, 'Gold kandoro', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_city_id_6c07a4b7_fk_city_id` (`city_id`);

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
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_area_id_29f6b82a_fk_area_id` (`area_id`),
  ADD KEY `billing_city_id_848d4a2c_fk_city_id` (`city_id`),
  ADD KEY `billing_customer_id_e385dcd5_fk_customer_id` (`customer_id`),
  ADD KEY `billing_order_id_60886b31_fk_order_id` (`order_id`),
  ADD KEY `billing_payment_details_id_769adc83_fk_Payment_Details_id` (`payment_details_id`),
  ADD KEY `billing_state_id_fb26b84f_fk_state_id` (`state_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_29e92815_fk_customer_id` (`customer_id`),
  ADD KEY `cart_product_id_508e72da_fk_product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_state_id_b686921b_fk_state_id` (`state_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `customer_state_id_bb047267_fk_state_id` (`state_id`),
  ADD KEY `customer_area_id_916acf30_fk_area_id` (`area_id`),
  ADD KEY `customer_city_id_f1096d59_fk_city_id` (`city_id`);

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_0104a377_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_seller_id_48ec66ac_fk_seller_id` (`seller_id`),
  ADD KEY `order_customer_id_9da9253f_fk_customer_id` (`customer_id`),
  ADD KEY `order_area_id_7a50e12c_fk_area_id` (`area_id`),
  ADD KEY `order_city_id_ba7b0287_fk_city_id` (`city_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_details_order_id_54fca8f6_fk_order_id` (`order_id`),
  ADD KEY `Order_details_product_id_b3e730da_fk_product_id` (`product_id`),
  ADD KEY `Order_details_seller_id_881a98a0_fk_seller_id` (`seller_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Payment_Details_order_id_303907f5_fk_order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id_640030a0_fk_category_id` (`category_id`),
  ADD KEY `product_subcategory_id_5651b678_fk_subcategory_id` (`subcategory_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `seller_area_id_1fda800e_fk_area_id` (`area_id`),
  ADD KEY `seller_city_id_2e3de8a6_fk_city_id` (`city_id`),
  ADD KEY `seller_state_id_7c7eb780_fk_state_id` (`state_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_area_id_f46fdcae_fk_area_id` (`area_id`),
  ADD KEY `shipping_city_id_0d30cbeb_fk_city_id` (`city_id`),
  ADD KEY `shipping_customer_id_ef7f4bc5_fk_customer_id` (`customer_id`),
  ADD KEY `shipping_order_id_fadc1339_fk_order_id` (`order_id`),
  ADD KEY `shipping_payment_details_id_a2918ec4_fk_Payment_Details_id` (`payment_details_id`),
  ADD KEY `shipping_state_id_74912c3f_fk_state_id` (`state_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_category_id_4b55556d_fk_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_city_id_6c07a4b7_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`);

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
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_area_id_29f6b82a_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `billing_city_id_848d4a2c_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `billing_customer_id_e385dcd5_fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `billing_order_id_60886b31_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `billing_payment_details_id_769adc83_fk_Payment_Details_id` FOREIGN KEY (`payment_details_id`) REFERENCES `payment_details` (`id`),
  ADD CONSTRAINT `billing_state_id_fb26b84f_fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_customer_id_29e92815_fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `cart_product_id_508e72da_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_state_id_b686921b_fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_area_id_916acf30_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `customer_city_id_f1096d59_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `customer_state_id_bb047267_fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`),
  ADD CONSTRAINT `customer_user_id_fde49d68_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_user_id_0104a377_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_area_id_7a50e12c_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `order_city_id_ba7b0287_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `order_customer_id_9da9253f_fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `order_seller_id_48ec66ac_fk_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `Order_details_order_id_54fca8f6_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `Order_details_product_id_b3e730da_fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `Order_details_seller_id_881a98a0_fk_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `Payment_Details_order_id_303907f5_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_640030a0_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_subcategory_id_5651b678_fk_subcategory_id` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`);

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_area_id_1fda800e_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `seller_city_id_2e3de8a6_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `seller_state_id_7c7eb780_fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`),
  ADD CONSTRAINT `seller_user_id_2915e6aa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `shipping_area_id_f46fdcae_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `shipping_city_id_0d30cbeb_fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `shipping_customer_id_ef7f4bc5_fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `shipping_order_id_fadc1339_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `shipping_payment_details_id_a2918ec4_fk_Payment_Details_id` FOREIGN KEY (`payment_details_id`) REFERENCES `payment_details` (`id`),
  ADD CONSTRAINT `shipping_state_id_74912c3f_fk_state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_category_id_4b55556d_fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
