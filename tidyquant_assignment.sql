-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2021 at 10:56 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tidyquant_assignment`
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
(24, 'Can view session', 6, 'view_session');

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
(1, 'pbkdf2_sha256$260000$lPUjKJL0PTajB5mLvSc8Ww$CKnz3UOfSynMQ9SAajgJzJIBVqDjUSJv39RkDowp2Og=', '2021-10-20 08:55:35.640335', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2021-09-10 12:14:17.387423'),
(2, 'pbkdf2_sha256$260000$BBGSwhANkcYII9H4d1l0XV$Bb4kLFcTHvtG5BDMGq9DHIa3ROSBl6rs9aGwi1TSpGM=', NULL, 0, 'test', '', '', 'test@gmail.com', 0, 1, '2021-09-10 13:01:30.935271'),
(3, 'pbkdf2_sha256$260000$ayjDXAf6DbWP6MFKzMinGe$aixEIq13jSYHbFfiw7aV2+k+NMlG2y3e2s15UOQFxCo=', '2021-09-12 10:37:09.479050', 0, 'test1', '', '', 'test1@gmail.com', 0, 1, '2021-09-10 13:09:36.867728'),
(4, 'pbkdf2_sha256$260000$g6G9hSIchG5a5jgqny6BQ3$V5lIbsW+9jUsFT7vfA2joFkIlMvGC2316GSi1sHWksk=', NULL, 0, 'test3', '', '', 'test346@gmail.com', 0, 1, '2021-09-10 13:10:28.125814'),
(5, 'pbkdf2_sha256$260000$Asqo9WiSER3auG4uq3juHB$dHsvQZX1EJNKe1WL55U5X/Sg9L/0PNUZ3K5hiWJzzYk=', '2021-09-12 08:45:49.748908', 0, 'test4', '', '', 'test4@gmail.com', 0, 1, '2021-09-10 13:11:27.395157'),
(6, 'pbkdf2_sha256$260000$HNBNiHGbQK3ygpb9TAw5c8$SE0WNQeTCxpy5omzajHDNHQ0HZ+k5Ssk4au46ULGUxU=', NULL, 0, 'test5', '', '', 'test5@gmail.com', 0, 1, '2021-09-10 13:12:16.188889'),
(7, 'pbkdf2_sha256$260000$u40QV4Gm6sXcorHdA2a0PX$0ZDo1kNbPtlG1FTevKEOWVQuYGz56YKsoB0v4r7tH+A=', NULL, 0, 'test6', '', '', 'test6@gmail.com', 0, 1, '2021-09-10 13:13:08.401037'),
(8, 'pbkdf2_sha256$260000$OaAn8Ys3G2ktP6kyXGWHuN$q7BRjfo/4ebW+7/22RM+ByoLNpAwUBgmIqDwSVfqCS8=', '2021-09-11 14:23:51.929762', 0, 'HackDeus', '', '', 'h4ckd3u5@gmail.com', 0, 1, '2021-09-10 17:13:07.666591'),
(9, 'pbkdf2_sha256$260000$sAxVPjNLa2qVzOPItJ2QWf$3e0FvUTR910mwqDXuOKEVZRWgYiwEm7/iEgofv5S4QE=', '2021-09-11 11:29:25.783232', 0, 'jadu', '', '', 'jadu@gmail.com', 0, 1, '2021-09-11 11:29:00.988579');

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
(1, 'contenttypes', '0001_initial', '2021-09-10 10:16:45.864163'),
(2, 'auth', '0001_initial', '2021-09-10 10:17:15.671712'),
(3, 'admin', '0001_initial', '2021-09-10 10:17:28.971033'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-09-10 10:17:29.189836'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-10 10:17:29.483723'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-09-10 10:17:32.332056'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-09-10 10:17:35.660692'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-09-10 10:17:36.391118'),
(9, 'auth', '0004_alter_user_username_opts', '2021-09-10 10:17:36.503286'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-09-10 10:17:38.693125'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-09-10 10:17:38.770917'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-09-10 10:17:38.887359'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-09-10 10:17:39.167969'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-09-10 10:17:40.149260'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-09-10 10:17:40.751079'),
(16, 'auth', '0011_update_proxy_permissions', '2021-09-10 10:17:40.978993'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-09-10 10:17:41.554990'),
(18, 'sessions', '0001_initial', '2021-09-10 10:17:44.568961');

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
('17gcnx4x81w7s2jreujeakiouam3eqh5', '.eJxVjDsOwjAQBe_iGlnrLzElPWew1t41DiBHipMKcXcSKQW0b2beW0RclxrXznMcSVyEEqffLWF-ctsBPbDdJ5mntsxjkrsiD9rlbSJ-XQ_376Bir1vNQzE6UEEgC847C0UxM4A2zqWMlMGHpOicjdcDF-u9MmGTwBjWEMTnC-TWN18:1mP0Bp:ovdSPv_-oHc1wmEzq_DtIhw69Gk7KzPUpNHfoLMRDYU', '2021-09-25 10:24:53.905647'),
('2ab779ait7hikfmoyclec3vzx3wig2kt', 'e30:1mPMjC:2Jn__P4gF9ewwp5o-7cLBE1VO-5H7_13PcdZIrK1udI', '2021-09-26 10:28:50.146546'),
('2wy6x7qspswdccxxxlosm6gtprmv0zsv', '.eJxVjMsOwiAQRf-FtSE8hkdduvcbyMCAVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CTOzMNDv9bhHTI7cd0B3brfPU27rMke8KP-jg1075eTncv4OKo35rYRXkgqZIG9GBSiCEU56i82BLBIJJ-EhSyyLJaCcnA0m4LCFRRvTs_QHR6DeX:1mOirl:5EEMfZ4G51oRLPRfmUi6laAMDdolDxPzx2M601xKDLU', '2021-09-24 15:55:01.166818'),
('65ehoe7sj70grfe4yuenjq4t8d3sodbl', '.eJxVjDsOwjAQBe_iGlm2N_5R0ucM0e7a4ACypTipEHeHSCmgfTPzXmLCbS3T1vMyzUmcBYjT70bIj1x3kO5Yb01yq-syk9wVedAux5by83K4fwcFe_nWwYMBsC6mAVNiTejRm0BsQSuiwUUTTABlM0er2BnIWjNbvir0Sgfx_gDLODcv:1mOgvL:YIS9IOyoj4c2ieLBJop8vlOYWEk6AlW_fgVK0RqMC0Q', '2021-09-24 13:50:35.494126'),
('750yrmvm3sbhpnrqyakpailn8c1ljqe9', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w1kZgCpGkhKuzL-uzbpQrf3nHNfLMK21riNvMQ5sTPT7PS7IdAjtx2kO7Rb59TbuszId4UfdPBrT_l5Ody_gwqjfmuniKQpkwvCGacDCPAlK1-kpIJIYFA6oXwAJKRSrAVwKMjbNCkZNHt_AOxNOFc:1mPMrF:zE6DeGkKz-0IrODEDysdLkt-86kvhBbjbZaJf5ld7TQ', '2021-09-26 10:37:09.523392'),
('bc7cq0zn8s1guy8vpssakdsh8ouac60z', '.eJxVjDsOwjAQBe_iGlm2N_5R0ucM0e7a4ACypTipEHeHSCmgfTPzXmLCbS3T1vMyzUmcBYjT70bIj1x3kO5Yb01yq-syk9wVedAux5by83K4fwcFe_nWwYMBsC6mAVNiTejRm0BsQSuiwUUTTABlM0er2BnIWjNbvir0Sgfx_gDLODcv:1mOguR:mIpG5xFqTFAXeOxoCzU5wL5toalbhS9aVwtqjX7Odzg', '2021-09-24 13:49:39.976934'),
('euxgy23f42m7k679o904fpqhbyf4r0j8', '.eJxVjDsOwjAQBe_iGlm2N_5R0ucM0e7a4ACypTipEHeHSCmgfTPzXmLCbS3T1vMyzUmcBYjT70bIj1x3kO5Yb01yq-syk9wVedAux5by83K4fwcFe_nWwYMBsC6mAVNiTejRm0BsQSuiwUUTTABlM0er2BnIWjNbvir0Sgfx_gDLODcv:1mOifb:HHMPrDQyP0eABGyCqJsRPW1QH89yL3pBb4zB6Rac9VM', '2021-09-24 15:42:27.411730'),
('oawv8732w4mwnms9l1lc5ekjmuebtom5', '.eJxVjDsOwjAQBe_iGlnrLzElPWew1t41DiBHipMKcXcSKQW0b2beW0RclxrXznMcSVyEEqffLWF-ctsBPbDdJ5mntsxjkrsiD9rlbSJ-XQ_376Bir1vNQzE6UEEgC847C0UxM4A2zqWMlMGHpOicjdcDF-u9MmGTwBjWEMTnC-TWN18:1mP0AY:05c61o4iGq0n2U6Z9V07R_m6NX7pvdgtABE3q7kZQ2E', '2021-09-25 10:23:34.008503'),
('ypnt6qgmu14j8n67z3pi5hgy977tkorc', '.eJxVjDsOwyAQBe9CHSHMTzhl-pwBLSwbnEQgGbuycvdgyYXdzsx7G_OwLtmvLc1-QnZnit3OLED8pLILfEN5VR5rWeYp8D3hh238WTF9H0d7OcjQcl-7ESgBiEjGChMSqDFKQgFdoLQdWGMGq0k5hVIHVFI7EkhAg0OU7PcHENQ46w:1mOiwi:mqxFyTGkNUrFazYhFL_YcJ4eHS0OKqV_qsU5u1lKR9Y', '2021-09-24 16:00:08.597789'),
('zx55jh9qpes0ae698ikvhb5wk52uiurj', '.eJxVjDsOwjAQBe_iGlnEnzhLSZ8zRLteLw4gW4qTCnF3iJQC2jcz76Um3NY8bS0t08zqoqw6_W6E8ZHKDviO5VZ1rGVdZtK7og_a9Fg5Pa-H-3eQseVv7VgMRSSDvQObwASJ3ol4BwaG0AdhEuhYbET2Z3YmAHBnOQQSSoN6fwABxDi4:1mOizC:Wyx5TMv3a3OWmIc-DMve3GWsckHf4UuH45Zjn_qNgCc', '2021-09-24 16:02:42.609365');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
