-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2024 at 09:27 AM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rkiv_clusterb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `modification_type` varchar(255) DEFAULT NULL,
  `modification_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Philippines', NULL, NULL),
(2, 'USA', NULL, NULL),
(3, 'South Korea', NULL, NULL),
(4, 'China', NULL, NULL),
(5, 'Japan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admission_id` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `upload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g51_calendar_events`
--

CREATE TABLE `g51_calendar_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g51_ch_favorites`
--

CREATE TABLE `g51_ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g51_ch_messages`
--

CREATE TABLE `g51_ch_messages` (
  `id` char(36) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_ch_messages`
--

INSERT INTO `g51_ch_messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
('0da59196-b346-4a03-a69b-b9e83b4297a8', 3, 1, 'k', NULL, 0, '2024-03-04 21:20:41', '2024-03-04 21:20:41'),
('1ab9cb27-9374-46f5-bc03-7090b883c760', 1, 2, 'hi', NULL, 0, '2024-02-28 21:51:12', '2024-02-28 21:51:12'),
('1ff2d644-b3d1-4e0c-b8f4-947076136350', 6, 5, 'ahaha', NULL, 0, '2024-03-05 20:53:27', '2024-03-05 20:53:27'),
('73888402-888a-44cf-a8a6-b8d725222f26', 3, 1, 'yo', NULL, 0, '2024-03-04 19:25:24', '2024-03-04 19:25:24'),
('ccea7ac9-e07a-4cdc-bbee-b0ab8b885243', 3, 1, 'o', NULL, 0, '2024-03-04 20:34:35', '2024-03-04 20:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `g51_events`
--

CREATE TABLE `g51_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_events`
--

INSERT INTO `g51_events` (`id`, `title`, `description`, `start_time`, `end_time`, `created_at`, `updated_at`, `room_id`) VALUES
(4, 'birthday ko', 'fgfgdgfd', '2024-02-09 14:05:00', '2024-02-09 14:05:00', '2024-02-28 22:05:42', '2024-03-03 23:25:55', 1),
(5, 'birthday ko', 'aaaaa', '2024-02-09 14:05:00', '2024-02-09 14:05:00', '2024-02-28 22:08:39', '2024-02-28 22:08:39', 1),
(6, 'birthday ko', 'aaaaa', '2024-02-09 14:05:00', '2024-02-09 14:05:00', '2024-02-28 22:17:03', '2024-02-28 22:17:03', 1),
(7, 'birthday ko', 'aaaaa', '2024-02-09 14:05:00', '2024-02-09 14:05:00', '2024-02-28 22:21:45', '2024-02-28 22:21:45', 1),
(8, 'nyo yer', 'fdsdfdas', '2024-03-08 15:34:00', '2024-03-09 15:34:00', '2024-02-29 23:34:56', '2024-03-02 02:38:37', 1),
(9, 'pasko', 'ddsdsdsdsds', '2024-03-14 16:26:00', '2024-03-27 16:26:00', '2024-03-04 00:26:43', '2024-03-04 00:26:43', 1),
(10, 'meeting', 'meeting code 101', '2024-03-26 13:57:00', '2024-03-26 13:57:00', '2024-03-04 21:58:04', '2024-03-04 21:58:04', 1),
(11, 'birthday', 'd', '2024-03-16 10:14:00', '2024-03-16 10:14:00', '2024-03-07 18:14:42', '2024-03-07 18:14:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `g51_event_item`
--

CREATE TABLE `g51_event_item` (
  `event_id` varchar(50) DEFAULT NULL,
  `item_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_event_item`
--

INSERT INTO `g51_event_item` (`event_id`, `item_id`) VALUES
('6', '1'),
('7', '1'),
('8', '1'),
('4', '1'),
('9', '1'),
('10', '1'),
('11', '1');

-- --------------------------------------------------------

--
-- Table structure for table `g51_event_task`
--

CREATE TABLE `g51_event_task` (
  `event_id` varchar(50) DEFAULT NULL,
  `task_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_event_task`
--

INSERT INTO `g51_event_task` (`event_id`, `task_id`) VALUES
('7', '1'),
('8', '1'),
('4', '1'),
('9', '1'),
('10', '1'),
('11', '1');

-- --------------------------------------------------------

--
-- Table structure for table `g51_items`
--

CREATE TABLE `g51_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_items`
--

INSERT INTO `g51_items` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'BAG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g51_rooms`
--

CREATE TABLE `g51_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_rooms`
--

INSERT INTO `g51_rooms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ROOM1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g51_tasks`
--

CREATE TABLE `g51_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_tasks`
--

INSERT INTO `g51_tasks` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'TASK1', NULL, NULL, NULL),
(2, 'TASK2', 'This is a sample task description', '2022-10-15 00:00:00', '2022-10-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `g51_users`
--

CREATE TABLE `g51_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g51_users`
--

INSERT INTO `g51_users` (`id`, `admin`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 0, 'John Erv', 'liwayervic@gmail.com', NULL, '00000', NULL, '2024-02-28 20:33:54', '2024-02-28 20:33:54', 0, 'avatar.png', 0, NULL),
(2, 0, 'admin', 'admin@admin.com', NULL, 'admin', NULL, NULL, NULL, 0, 'avatar.png', 0, NULL),
(3, 0, 'John E', 'ervicliway@gmail.com', NULL, '$2y$10$mSsYGBtIPhAwILJKWKQLfuqkaYWzh3VTWmu75AqMlWlkZBMnqYW9q', NULL, '2024-03-04 03:28:08', '2024-03-04 03:28:08', 0, 'avatar.png', 0, NULL),
(4, 0, 'john doe', 'johndoe@gmail.com', NULL, '$2y$10$Psgrjo.MZO4sWD5bzoA6JuoXJVOieUPVxqVzL87nvrJDA7BT8Xrzq', NULL, '2024-03-05 18:47:03', '2024-03-05 18:47:03', 0, 'avatar.png', 0, NULL),
(5, 0, 'mina', 'mina@gmail.com', NULL, '$2y$10$w5mw5ShbZWCyCks1Vr8EDe3xbrBsACWCN7s9ZenvjVLHHy1ggSs7O', NULL, '2024-03-05 20:50:57', '2024-03-05 20:50:57', 0, 'avatar.png', 0, NULL),
(6, 0, 'cherryl', 'cherryl@gmail.com', NULL, '$2y$10$7cTRRi7KPkxQboFUdGbB0.lFd.y44vRAh4YtJdK5jq7zNax39wItK', NULL, '2024-03-05 20:52:46', '2024-03-05 20:52:46', 0, 'avatar.png', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g52_assets`
--

CREATE TABLE `g52_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` varchar(255) NOT NULL,
  `asset_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_cost` decimal(10,2) NOT NULL,
  `current_condition` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `assigned_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `maintenance_history` text DEFAULT NULL,
  `depreciation_rate` decimal(5,2) DEFAULT NULL,
  `useful_life` int(11) DEFAULT NULL,
  `depreciation_method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g52_asset_movements`
--

CREATE TABLE `g52_asset_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `from_space_id` bigint(20) UNSIGNED NOT NULL,
  `to_space_id` bigint(20) UNSIGNED NOT NULL,
  `movement_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g52_reservation_records`
--

CREATE TABLE `g52_reservation_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `space_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reservation_date` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g52_rooms`
--

CREATE TABLE `g52_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g52_spaces`
--

CREATE TABLE `g52_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `space_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `dimensions` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `current_occupancy` int(11) NOT NULL DEFAULT 0,
  `allocation_status` varchar(255) NOT NULL DEFAULT 'available',
  `usage_history` text DEFAULT NULL,
  `facility_features` text DEFAULT NULL,
  `floor_plan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g52_space_utilizations`
--

CREATE TABLE `g52_space_utilizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g52_users`
--

CREATE TABLE `g52_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g54_emphistories`
--

CREATE TABLE `g54_emphistories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g54_emphistories`
--

INSERT INTO `g54_emphistories` (`id`, `employee_id`, `job_title`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '1', 'Manager', '2024-03-19', '2024-03-20', '2024-03-05 20:00:31', '2024-03-07 22:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `g54_employees`
--

CREATE TABLE `g54_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `work_status` varchar(255) NOT NULL,
  `work_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g54_employees`
--

INSERT INTO `g54_employees` (`id`, `last_name`, `first_name`, `middle_name`, `date_of_birth`, `age`, `sex`, `civil_status`, `email`, `contact_no`, `address`, `position`, `department`, `work_status`, `work_type`, `created_at`, `updated_at`) VALUES
(1, 'James', 'Lebron', 'Smith', '2024-02-29', '35', 'Male', 'Single', 'lebron@gmail.com', '0923459423', 'Apt. 412 777 Mohr Roads, Port Vernontown, WA 54319-6564', 'Assistant', 'HR', 'Active', 'Full Time', '2024-03-16 00:37:00', '2024-03-16 00:37:00'),
(2, 'Sotto', 'Vic', '', '1995-12-13', '69', 'Male', 'Married', 'vicsot@gmail.com', '0975757574', 'Suite 831 20720 Bogisich Plaza, Strackeburgh, WA 29037', 'Coordinator', 'HR', 'Active', 'Full Time', '2024-03-16 21:27:21', '2024-03-16 21:27:21'),
(3, 'Parker', 'Peter', 'Paker', '2024-02-29', '35', 'Male', 'Married', 'peterparker@gmail.com', '0956899894', 'Apt. 354 8660 Ondricka Stravenue, New Ferdinandburgh, AK 78148', 'Manager', 'HR', 'Active', 'Full Time', '2024-03-20 22:21:04', '2024-03-20 22:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `g54_payrolls`
--

CREATE TABLE `g54_payrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `pay_start` date NOT NULL,
  `pay_end` date NOT NULL,
  `earning` varchar(255) NOT NULL,
  `deductions` varchar(255) NOT NULL,
  `net_pay` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payroll_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g54_positions`
--

CREATE TABLE `g54_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `responsibilities` text NOT NULL,
  `requirements` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g54_positions`
--

INSERT INTO `g54_positions` (`id`, `department_id`, `responsibilities`, `requirements`, `created_at`, `updated_at`) VALUES
(2, 'HR Manager', '- Oversee the recruitment and hiring process. - Develop and implement HR strategies and initiatives. - Manage employee relations and conflict resolution.', '- Bachelor\'s degree in Human Resources or related field. - 5+ years of experience in HR management.', '2024-03-05 08:25:14', '2024-03-08 07:44:33'),
(4, 'HR Coordinator', '- Coordinate HR projects and initiatives. - Assist with recruitment, including job postings and scheduling interviews. - Maintain employee records and HR systems.', '- Bachelor\'s degree in Business Administration or related field. - 2+ years of experience in HR or related role.', '2024-03-08 07:44:02', '2024-03-08 07:44:02'),
(5, 'HR Assistant', '- Provide administrative support to the HR team. - Assist with onboarding and orientation of new employees. - Handle employee inquiries and requests.', '- High school diploma or equivalent. - Strong organizational and communication skills.', '2024-03-08 07:45:32', '2024-03-08 07:45:32'),
(6, 'Recruitment Specialist', '- Source and attract candidates through various channels. - Screen resumes and conduct initial interviews. - Coordinate hiring process with hiring managers.', '- Bachelor\'s degree in Human Resources, Business Administration, or related field. - 2+ years of experience in recruitment.', '2024-03-08 07:47:33', '2024-03-08 07:47:33'),
(7, 'HR Generalist', '- Administer HR policies and procedures. - Conduct employee performance evaluations. - Provide guidance on employee relations issues.', '- Bachelor\'s degree in Human Resources, Business Administration, or related field. - 3+ years of HR experience.', '2024-03-08 07:47:55', '2024-03-08 07:47:55'),
(8, 'Compensation Analyst', '- Analyze compensation data and trends. - Develop and administer compensation programs. - Ensure compliance with compensation regulations.', '- Bachelor\'s degree in Human Resources, Finance, or related field. - Proficiency in Microsoft Excel and HRIS software.', '2024-03-08 07:48:15', '2024-03-08 07:48:15'),
(9, 'Training Coordinator', '- Coordinate employee training programs. - Evaluate training effectiveness and recommend improvements. - Maintain training records and schedules.', '- Bachelor\'s degree in Training and Development, Human Resources, or related field. - 2+ years of experience in training coordination.', '2024-03-08 07:48:33', '2024-03-08 07:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `g54_schedules`
--

CREATE TABLE `g54_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` time NOT NULL,
  `out_time` time NOT NULL,
  `attendance_status` varchar(255) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g54_schedules`
--

INSERT INTO `g54_schedules` (`id`, `employee_id`, `attendance_date`, `in_time`, `out_time`, `attendance_status`, `total_hours`, `created_at`, `updated_at`) VALUES
(1, '1', '2024-03-15', '03:38:00', '15:38:00', 'Present', '9', '2024-03-14 23:38:49', '2024-03-14 23:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `g54_skills_and_qualifications`
--

CREATE TABLE `g54_skills_and_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `certification` date NOT NULL,
  `experience` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `other_skills` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g54_users`
--

CREATE TABLE `g54_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g54_users`
--

INSERT INTO `g54_users` (`id`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, 'admin@gmail.com', NULL, '$2y$10$RZ3fm24.9QOfSupYkvC2Ue09VGG/y92dNbcHnJvIAfMcL5Y1ZgJVS', NULL, NULL, NULL, 'admin', NULL, '2024-03-01 19:16:43', '2024-03-01 19:16:43'),
(2, 'test', 'test', NULL, 'test@gmail.com', NULL, '$2y$10$m5onyG9XnfOVLgVQxQ/vI.zQL7ikNX.1JGiZwZyaYz4rVQSIDyHm.', NULL, NULL, NULL, 'user', NULL, '2024-03-01 19:29:25', '2024-03-01 19:29:25'),
(3, 'Test', 'Test', NULL, 'test13@gmail.com', NULL, '$2y$10$e6rXEOYpcq3IxnNDZXeluOfKNu5wH5BxxhUH4kwRNjbnXAp6a049u', NULL, NULL, NULL, 'user', NULL, '2024-03-02 19:55:04', '2024-03-02 19:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `g55_contract`
--

CREATE TABLE `g55_contract` (
  `contract_id` int(11) NOT NULL COMMENT 'Unique identifier for each contract',
  `contract_title` varchar(255) NOT NULL COMMENT 'Title of the contract',
  `contract_description` text DEFAULT NULL COMMENT 'Description of the contract',
  `contract_type` varchar(50) NOT NULL COMMENT 'Type or category of the contract',
  `contract_status` varchar(50) DEFAULT NULL COMMENT 'Status of the contract (e.g., active, expired)',
  `start_date` date NOT NULL COMMENT 'Start date of the contract',
  `end_date` date NOT NULL COMMENT ' End date of the contract',
  `created_at` date NOT NULL COMMENT ' Timestamp for when the contract was created',
  `updated_at` date NOT NULL COMMENT 'Timestamp for when the contract was last updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g55_contract_document`
--

CREATE TABLE `g55_contract_document` (
  `document_id` int(11) NOT NULL COMMENT 'Unique identifier for each document',
  `contract_id` int(11) NOT NULL COMMENT 'Foreign key referencing the contract',
  `document_name` varchar(255) NOT NULL COMMENT 'Descriptive name or title of the document associated with a contract.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g55_contract_parties`
--

CREATE TABLE `g55_contract_parties` (
  `contract_id` int(11) NOT NULL COMMENT 'Foreign key referencing the contract',
  `party_id` int(11) NOT NULL COMMENT ' Foreign key referencing the party'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g55_document`
--

CREATE TABLE `g55_document` (
  `document_id` int(11) NOT NULL COMMENT 'Unique identifier for each document',
  `document_name` varchar(255) NOT NULL COMMENT 'Name of the document',
  `document_type` varchar(55) NOT NULL COMMENT 'Type or format of the document',
  `document_size` int(11) NOT NULL COMMENT 'Size of the document in bytes',
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Date and time when the document was uploaded',
  `uploader_id` int(11) DEFAULT NULL COMMENT 'Foreign key referencing the user who uploaded the document'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g55_document_tags`
--

CREATE TABLE `g55_document_tags` (
  `tag_id` int(11) NOT NULL COMMENT 'Unique identifier for each tag',
  `tag_name` varchar(50) NOT NULL COMMENT 'Name of the tag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g55_document_tag_map`
--

CREATE TABLE `g55_document_tag_map` (
  `document_id` int(11) NOT NULL COMMENT 'Foreign key referencing the document',
  `tag_id` int(11) NOT NULL COMMENT 'Foreign key referencing the tag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g55_parties`
--

CREATE TABLE `g55_parties` (
  `party_id` int(11) NOT NULL COMMENT 'Unique identifier for each party',
  `party_name` varchar(100) NOT NULL COMMENT 'Name of the party',
  `party_type` varchar(50) DEFAULT NULL COMMENT 'Type or category of the party',
  `contact_name` varchar(100) DEFAULT NULL COMMENT 'Email address of the contact person for the party',
  `contact_email` varchar(100) DEFAULT NULL COMMENT 'Email address of the contact person for the party',
  `address` int(11) DEFAULT NULL COMMENT 'Address of the party',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT 'Phone number of the contact person for the party'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `g55_parties`
--

INSERT INTO `g55_parties` (`party_id`, `party_name`, `party_type`, `contact_name`, `contact_email`, `address`, `contact_phone`) VALUES
(1, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g55_users`
--

CREATE TABLE `g55_users` (
  `user_id` int(11) NOT NULL COMMENT 'Unique identifier for each user',
  `username` varchar(50) NOT NULL COMMENT 'Username of the user',
  `email` varchar(100) NOT NULL COMMENT 'Email address of the user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g56_incident_responses`
--

CREATE TABLE `g56_incident_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `owner` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `importance` varchar(255) NOT NULL,
  `team_personnel_id` varchar(255) DEFAULT NULL,
  `progress` varchar(255) DEFAULT 'Pending',
  `status` varchar(255) DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g56_incident_responses`
--

INSERT INTO `g56_incident_responses` (`id`, `owner`, `title`, `description`, `importance`, `team_personnel_id`, `progress`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ivan Perez', 'Sample', 'Sample', 'High', '2', 'Ongoing', 'Active', '2024-03-28 05:55:30', '2024-03-28 06:03:15'),
(2, 'Ivan Perez', 'Sample 2', 'Sample 2', 'Medium', '3', 'Pending', 'Active', '2024-03-28 06:03:37', '2024-03-28 07:08:33'),
(3, 'Ivan Perez', 'Sample 3', 'Sample 3', 'Low', '4', 'Pending', 'Active', '2024-03-28 06:03:53', '2024-03-28 07:08:41'),
(4, 'Ivan Perez', 'Sample 4', 'Sample 4', 'Low', '5', 'Pending', 'Active', '2024-03-28 06:04:37', '2024-03-28 15:18:47'),
(5, 'RMS - Admin', 'test', 'test', 'Medium', '5', 'Pending', 'Active', '2024-03-28 15:00:59', '2024-03-28 15:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `g56_plan_assessments`
--

CREATE TABLE `g56_plan_assessments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `risk` varchar(255) NOT NULL,
  `impact` varchar(255) NOT NULL,
  `plans` text NOT NULL,
  `team_personnel` varchar(255) NOT NULL,
  `progress` varchar(255) DEFAULT 'Pending',
  `status` varchar(255) DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g56_plan_assessments`
--

INSERT INTO `g56_plan_assessments` (`id`, `risk`, `impact`, `plans`, `team_personnel`, `progress`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Test 1', 'Low', 'Test 1', 'RMS - Ivan', 'Ongoing', 'Active', '2024-03-28 14:28:54', '2024-03-30 06:06:46'),
(6, 'Test 2', 'Medium', 'Test 2', 'RMS - Erica', 'Ongoing', 'Active', '2024-03-28 14:29:04', '2024-03-30 06:24:59'),
(7, 'Test 3', 'High', 'Test 3', 'RMS - Alorro', 'Ongoing', 'Active', '2024-03-28 14:29:14', '2024-03-28 14:31:12'),
(8, '123', 'Low', '123', 'RMS - Ivan', 'Ongoing', 'Active', '2024-03-30 06:28:52', '2024-03-30 06:29:14'),
(9, '123', 'Medium', '123', 'RMS - Ivan', 'Ongoing', 'Active', '2024-03-30 06:29:03', '2024-03-30 06:43:13'),
(10, 'Fire', 'Low', 'sample', 'RMS - Ivan', 'Ongoing', 'Active', '2024-03-30 06:30:03', '2024-03-30 06:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `g56_responses`
--

CREATE TABLE `g56_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_assessment_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `progress` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g56_responses`
--

INSERT INTO `g56_responses` (`id`, `user_id`, `plan_assessment_id`, `description`, `progress`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 7, 'Participated', '0', 'pending', '2024-03-28 14:31:12', '2024-03-28 14:31:12'),
(2, 6, 5, 'Participated', '0', 'pending', '2024-03-30 06:06:46', '2024-03-30 06:06:46'),
(3, 6, 6, 'Participated', '0', 'pending', '2024-03-30 06:24:59', '2024-03-30 06:24:59'),
(4, 5, 8, 'Participated', '0', 'pending', '2024-03-30 06:29:14', '2024-03-30 06:29:14'),
(5, 5, 10, 'Participated', '0', 'pending', '2024-03-30 06:30:33', '2024-03-30 06:30:33'),
(6, 6, 9, 'Participated', '0', 'pending', '2024-03-30 06:43:13', '2024-03-30 06:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `g56_team_personnels`
--

CREATE TABLE `g56_team_personnels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g56_team_personnels`
--

INSERT INTO `g56_team_personnels` (`id`, `name`, `role`, `contact_number`, `status`, `created_at`, `updated_at`) VALUES
(2, 'RMS - Ivan', 'Admin', '09515824331', 'Active', '2024-03-28 05:53:34', '2024-03-28 05:53:34'),
(3, 'RMS - Erica', 'Project Manager', '09068814159', 'Active', '2024-03-28 06:58:48', '2024-03-28 06:58:48'),
(4, 'RMS - Alorro', 'Network Admin / Docu Specialist', '09393186867', 'Active', '2024-03-28 06:59:43', '2024-03-28 06:59:43'),
(5, 'RMS - Ian', 'Network Admin / Docu Specialist', '09663767348', 'Active', '2024-03-28 07:00:05', '2024-03-28 07:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `g56_users`
--

CREATE TABLE `g56_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'images/default.png',
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g56_users`
--

INSERT INTO `g56_users` (`id`, `name`, `image`, `address`, `contact_number`, `birthday`, `username`, `email`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'RMS - Admin', 'images/1711637715.jpg', 'Quezon city', '09515824331', '2001-10-20', 'Ivan', 'admin@rms.com', 'Admin', 'Active', NULL, '$2y$10$yvgicFtqTxFD7UenOaYJIO65QypbYFWX04UGErKIvsgJRLpPZ40Ou', NULL, '2024-03-28 06:51:42', '2024-03-28 14:58:58'),
(5, 'RMS - User', 'images/1711609410.jpg', 'N/A', '09515824331', '2001-10-20', NULL, 'user@rms.com', 'User', 'Active', NULL, '$2y$10$2HScmNdAysBaqBhojkH.OeQ8y7XLExD7oj4Hz0IO3Xn2wJgm1epSi', NULL, '2024-03-28 07:03:30', '2024-03-28 07:03:30'),
(6, 'RMS - Erica', 'images/1711609465.jpg', 'N/A', '09068814159', '2001-10-20', NULL, 'erica@gmail.com', 'Admin', 'Active', NULL, '$2y$10$6oelI6sYh2tvVSoTRgrUnePPFtayqOB/RjLvv5tgD3Sz1R6/CpHS6', NULL, '2024-03-28 07:04:25', '2024-03-28 07:04:25'),
(7, 'RMS - Alorro', 'images/1711609545.jpg', 'N/A', '09393186867', '0001-01-01', NULL, 'alorro@gmail.com', 'Admin', 'Active', NULL, '$2y$10$5vsA9iXI3ACy3kbO076g5up2uQf.xUdm3otMzAqlks4ZOsXwvOVei', NULL, '2024-03-28 07:05:45', '2024-03-28 07:05:45'),
(8, 'RMS - Ian', 'images/1711609577.jpg', 'N/A', '09663767348', '0001-01-01', NULL, 'ian@gmail.com', 'Admin', 'Active', NULL, '$2y$10$0Fmourfv4GaH0gKsxqx5ZeWjIa7NFZO/OA94w3niq9Qs63biPIeLG', NULL, '2024-03-28 07:06:17', '2024-03-28 07:06:17'),
(9, 'Testedit', 'images/1711635526.png', 'Test address edited', '0912345648', '2024-03-28', 'testing', 'edittest@gmail.com', 'Admin', 'Active', NULL, '$2y$10$IlwR68105Hu1HxbRG7BZmeN5OcU5u8oq/U7aTpOH8bEOnpYOdWztq', NULL, '2024-03-28 14:18:46', '2024-03-28 14:19:03'),
(11, 'Juan Dela Cruz', 'images/1711636989.png', 'San Juan, Manila, Philippines', '09756656325', '2015-06-28', 'juandelacruz', 'juandelacruz@gmail.com', 'Admin', 'Active', NULL, '$2y$10$RvDm6EymlzS.iIq5TRNvW.I/aEp3rmr0xXOwKJt7ujFcvTpI99Kl2', NULL, '2024-03-28 14:43:09', '2024-03-28 14:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `g57_first_steps`
--

CREATE TABLE `g57_first_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g57_projects`
--

CREATE TABLE `g57_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projectTitle` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactNumber` bigint(20) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g57_projects`
--

INSERT INTO `g57_projects` (`id`, `projectTitle`, `name`, `email`, `contactNumber`, `budget`, `deadline`, `location`, `other`, `created_at`, `updated_at`, `is_active`) VALUES
(18, 'Project Management System', 'Bestlink College of the Philippines', 'bcp.edu@gmail.com', 9123456789, '50,000.00', '2024-04-15', 'Quezon, City', 'A Project Management System (PMS) is a set of tools, processes, and methodologies designed to facilitate the planning, execution, and monitoring of projects. Its primary purpose is to help teams and individuals organize tasks, collaborate effectively, and', '2024-03-08 23:33:30', '2024-03-08 23:34:20', 1),
(19, 'cicada', 'Diverse IT', 'diverseIT@gmail.com', 9120027883, '1', '2024-03-22', 'Manila Philippines', 'some details', '2024-03-09 00:28:11', '2024-03-09 00:28:11', 0),
(21, 'Nesciunt ullamco pe', 'Ina Dickson', 'foxowud@mailinator.com', 9, 'Sint nostrud quasi e', '1998-06-25', 'Voluptatum enim pers', 'Voluptatem tempore', '2024-03-09 00:35:56', '2024-03-09 00:35:56', 0),
(28, 'Borland', 'ABC Corp', 'abc@company.com', 123, '$100,000', '2024-10-20', 'Marilao, Bulacan', '1', '2024-03-09 01:03:15', '2024-03-09 01:03:15', 0),
(29, 'Integrated Business Management System', 'ABC Corp', 'abc@company.com', 123, '$100,000', '2024-10-20', 'Marilao, Bulacan', '1', '2024-03-09 01:23:23', '2024-03-09 01:26:17', 1),
(30, 'Borland Manila Branch', 'testccc', 'test@gmail.coms', 9120027883, '1', '2024-04-10', 'xxx', 'some details', '2024-03-09 02:04:44', '2024-03-09 02:04:44', 0),
(32, 'Borland v1', 'Yoshio Pitts', 'woguno@mailinator.com', 9231392322, '299', '2024-03-09', 'Perferendis laborum', 'Odit quam mollit nih', '2024-03-09 03:22:49', '2024-03-09 03:24:58', 0),
(33, 'Pimp Ur Food', 'Tipsy D', 'abc@company.com', 9333190971, '100000', '2024-10-20', 'Bataan', '1', '2024-03-09 03:26:31', '2024-03-09 03:27:17', 1),
(34, 'Project: Basketball Court', 'Jossiamin Siacor', 'siacor@gmail.com', 9776403581, '100000', '2024-03-06', 'Novaliches, Quezon City', 'details', '2024-03-09 04:19:15', '2024-03-09 04:37:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `g57_send_requests`
--

CREATE TABLE `g57_send_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `supplier_vendor` longtext DEFAULT NULL,
  `asset_inventory` longtext DEFAULT NULL,
  `subcontractor` longtext DEFAULT NULL,
  `budgeting_financial` longtext DEFAULT NULL,
  `facility_management` longtext DEFAULT NULL,
  `legal_contract` longtext DEFAULT NULL,
  `risk` longtext DEFAULT NULL,
  `communication_collab` longtext DEFAULT NULL,
  `meetings_calendar` longtext DEFAULT NULL,
  `can_start_task` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g57_send_requests`
--

INSERT INTO `g57_send_requests` (`id`, `project_id`, `supplier_vendor`, `asset_inventory`, `subcontractor`, `budgeting_financial`, `facility_management`, `legal_contract`, `risk`, `communication_collab`, `meetings_calendar`, `can_start_task`, `created_at`, `updated_at`) VALUES
(30, 18, '123', '	Software, Hardware, Networking ', 'Collaboration Tools, Security Measures, Testing Tools, Issue Tracking', NULL, 'Project is approved by management.', 'legalcontract sample', 'Project Objectives and Goals,\nScope and Features,\nTimeline and Milestones,\nRoles and Responsibilities,\nDevelopment Tools and Technologies,\nInfrastructure and Hosting,\nBudget and Resource Allocation,\nTesting and Quality Assurance,\nSecurity Measures,\nCollaboration and Communication Tools,\nDocumentation,\nTraining and Professional Development,\nContingency Plans,\nClient/Stakeholder Involvement,\nNext Steps and Action Items', '[\"aaa\",\"bbb\"]', 'Tuesday, March 16, 2024 09:45 AM\nWednesday, March 17, 2024 02:00 PM\nThursday, March 18, 2024 05:30 PM', 1, '2024-03-08 23:34:20', '2024-03-09 04:03:06'),
(31, 29, 'Manage relationships with suppliers and vendors', 'Track company assets. resource', 'Monitor subcontractor activities.', '90,000 - 140,00', 'Oversee facility-related tasks and maintenance', 'Tracked and managed legal contracts', 'Identify and mitigate potential project risks', 'Facilitate team communication and collaboration', '11/12/2024', 1, '2024-03-09 01:26:17', '2024-03-09 01:45:49'),
(34, 33, NULL, 'jars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-09 03:27:17', '2024-03-09 03:31:28'),
(35, 34, NULL, 'idolpalaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2024-03-09 04:37:45', '2024-03-30 06:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `g57_tasks`
--

CREATE TABLE `g57_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projectId` int(11) NOT NULL,
  `projectTask` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `assign` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `submitter` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g57_tasks`
--

INSERT INTO `g57_tasks` (`id`, `projectId`, `projectTask`, `priority`, `assign`, `deadline`, `submitter`, `other`, `date`, `status`, `created_at`, `updated_at`) VALUES
(42, 18, 'Define Project Goals', 'Low', 'John Jacobe', '2024-03-17', 'John Jacobe', 'Task Done!', '2024-03-09', 'In Progress', '2024-03-09 00:28:00', '2024-03-09 04:07:01'),
(43, 18, 'Gather Requirements', 'Moderate', 'John Jacobe', '2024-03-18', 'John Jacobe', 'Task Done!', '2024-03-09', 'Completed', '2024-03-09 00:31:49', '2024-03-09 00:40:59'),
(44, 18, 'Develop Project Plan', 'Moderate', 'John Jacobe', '2024-03-12', 'John Jacobe', 'Task Done!', '2024-03-09', 'Completed', '2024-03-09 00:33:27', '2024-03-09 00:41:45'),
(45, 18, 'Design System Architecture', 'Moderate', 'John Mark Anunciado', '2024-03-14', 'John Mark Anunciado', 'Task Done!', '2024-03-09', 'Completed', '2024-03-09 00:38:17', '2024-03-09 00:42:34'),
(57, 29, 'check the security of the web app', 'Moderate', 'John Mark Anunciado', '2024-03-09', 'admin', 'task admin', '2024-03-09', 'Completed', '2024-03-09 03:46:05', '2024-03-09 03:47:09'),
(58, 29, 'advance researching', 'Moderate', 'Dan kevin', '2024-03-10', 'Ian Lloyd Montuya', 'Task done!', '2024-03-09', 'Pending', '2024-03-09 03:57:10', '2024-03-09 04:06:15'),
(59, 29, 'Research the project', 'Moderate', 'Dan kevin', '2024-03-11', 'Ian Lloyd Montuya', 'Task done!', '2024-03-10', 'Completed', '2024-03-09 04:48:09', '2024-03-09 04:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `g57_users`
--

CREATE TABLE `g57_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g57_users`
--

INSERT INTO `g57_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `usertype`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'test update', 'buforavid@mailinator.com', NULL, '$2y$12$DChndA9YHJGpkJWvR6tz.upsC/po2.Y/bN/kY.CzhSgdOfRrxG6CW', 'user', NULL, 'Manila Philipipnes', NULL, '2024-02-27 05:51:06', '2024-02-27 05:57:22'),
(6, 'Admin1', 'admin1@gmail.com', NULL, '$2y$12$DChndA9YHJGpkJWvR6tz.upsC/po2.Y/bN/kY.CzhSgdOfRrxG6CW', 'admin', NULL, NULL, NULL, NULL, NULL),
(7, 'User1', 'user1@gmail.com', NULL, '$2y$12$DChndA9YHJGpkJWvR6tz.upsC/po2.Y/bN/kY.CzhSgdOfRrxG6CW', 'user', NULL, NULL, NULL, NULL, NULL),
(8, 'client1', 'client@gmail.com', NULL, '$2y$12$DChndA9YHJGpkJWvR6tz.upsC/po2.Y/bN/kY.CzhSgdOfRrxG6CW', 'client', NULL, NULL, NULL, NULL, NULL),
(9, 'test', 'test@gmail.com', NULL, '$2y$12$mTO3SIZkDDzQp0.9Qt0w/OcyUvAPCLajpNv8zqpcKwDSxhi4.07EW', 'user', NULL, NULL, NULL, '2024-03-07 20:21:19', '2024-03-07 20:21:19'),
(1111111, 'hulaanmo', 'hulaanmo@gmail.com', '2024-02-27 05:46:47', '$2y$12$TrZlk/h0z3u9zZy8PRCfIO7YEoKm75/8071hTCoxtvnVzaEDCSQGC', 'admin', NULL, NULL, 'LX9IcpynjShIpHytqlScOANICvuN0pM6uX96TjcjZ5TJbjMMSZxZfl12cV6n', '2024-02-27 05:46:47', '2024-02-27 05:46:47'),
(1111112, 'Super Admin', 'superadmin.rbac@gmail.com', NULL, '$2y$12$1/QrqGC0UL3Lq00FZOmEZenHpSIFFO95.a3MBHatXXUZMoe3wzqTe', 'Super Admin', NULL, NULL, NULL, NULL, NULL),
(1111113, 'Rhemae', 'Rheamaemanabat13@gmail.com', NULL, '$2y$12$ZnbeuBGsG8b.rWod2BCJsOxyWAuZvl5zxiGrM/lBaWuZn1447JoGS', 'admin', NULL, NULL, NULL, NULL, NULL),
(1111114, 'Noel Cervantes', 'Cervantesnoel@gmail.com', NULL, '$2y$12$rjO3c7qghASLLUndbMilJemLs3AAaTYQUYXeJrL7rjitvWDDOinZG', 'Employee', NULL, NULL, NULL, NULL, NULL),
(1111115, 'Joshua Zaragoza', 'joshuaZaragoza24@gmail.com', NULL, '$2y$12$5HHVcE2jbxJd4azBjy.Y7.cFiffEIqqEXXYTKDxIXOjWUdnmOtwA6', 'User', NULL, NULL, NULL, NULL, NULL),
(1111116, 'Jessia mae Yup', 'YupJessica.55@gmail.com', NULL, '$2y$12$.eVCh6Em4uKasY75HlIYVualhLwha2E3040l1dPEcbsmeE7kEZXmW', 'Manager', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g57_workers`
--

CREATE TABLE `g57_workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proj_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g57_workers`
--

INSERT INTO `g57_workers` (`id`, `proj_name`, `name`, `email`, `position`, `created_at`, `updated_at`) VALUES
(8, NULL, 'John Mark Anunciado', 'jmarkanunciado@gmail.com', 'Programmer', NULL, NULL),
(9, NULL, 'Ian Lloyd Montuya', 'ian@gmail.com', 'DevOps Engineer', NULL, NULL),
(17, NULL, 'Dan kevin', 'dankevin@gmail.com', 'Graphic Designer', NULL, NULL),
(18, NULL, 'John Jacobe', 'john@gmail.com', 'Project Manager', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g58_compliance_regulatory`
--

CREATE TABLE `g58_compliance_regulatory` (
  `cl_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `modulename` varchar(255) NOT NULL,
  `xdatetime` datetime NOT NULL DEFAULT current_timestamp(),
  `xstat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `g58_compliance_regulatory`
--

INSERT INTO `g58_compliance_regulatory` (`cl_id`, `fullname`, `modulename`, `xdatetime`, `xstat`) VALUES
(1, 'JohnDoe', 'sample system', '2024-03-15 14:00:00', 'Complied'),
(2, 'john smith', 'inventory system', '2024-03-15 14:05:00', 'Complied'),
(6, 'coco martin', 'student information', '2024-03-15 14:21:00', 'Complied'),
(8, 'tanggol', 'BIR', '2024-03-15 14:37:00', 'Complied'),
(10, 'boni', 'engineering', '2024-03-15 18:38:59', 'Complied'),
(11, 'antionio diku', 'Government', '2024-03-15 20:25:25', 'Complied'),
(12, 'abdul', 'computer science', '2024-03-15 21:49:53', 'Complied'),
(13, 'asdsadas', 'asdasddsa', '2024-03-16 13:36:06', 'Complied'),
(14, 'coco martin', 'inventory system', '2024-03-16 13:42:23', 'Complied'),
(15, 'sample', 'sample', '2024-03-16 18:13:34', 'Complied'),
(16, 'anton', 'highskul educ', '2024-03-16 18:25:33', 'Complied'),
(17, 'jmal', 'saufi', '2024-03-16 18:42:05', 'Complied'),
(18, 'abdul', 'Government', '2024-03-16 18:47:11', 'Complied'),
(19, 'abdul', 'highskul educ', '2024-03-16 18:51:12', 'Complied'),
(20, 'juan dela cruz', 'juan module', '2024-03-21 15:43:39', 'Complied');

-- --------------------------------------------------------

--
-- Table structure for table `g58_tbl_events`
--

CREATE TABLE `g58_tbl_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `g58_tbl_events`
--

INSERT INTO `g58_tbl_events` (`id`, `title`, `start`, `end`) VALUES
(1, 'integration', '2024-03-22 00:00:00', '2024-03-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `g58_tbl_user`
--

CREATE TABLE `g58_tbl_user` (
  `tbl_user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verification_code` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `g58_tbl_user`
--

INSERT INTO `g58_tbl_user` (`tbl_user_id`, `first_name`, `last_name`, `contact_number`, `email`, `username`, `password`, `verification_code`) VALUES
(1, 'john', 'w.', '9984561235', 'gerald.ison02@gmail.com', 'admin', 'dcddb75469b4b4875094e14561e573d8', 508874);

-- --------------------------------------------------------

--
-- Table structure for table `g59_accounts_payable`
--

CREATE TABLE `g59_accounts_payable` (
  `payable_code` bigint(20) UNSIGNED NOT NULL,
  `payable_info` varchar(255) NOT NULL,
  `payable_name` varchar(255) NOT NULL,
  `payable_amount` varchar(255) NOT NULL,
  `payable_date` date NOT NULL,
  `payable_type` varchar(255) NOT NULL,
  `payable_department` varchar(255) NOT NULL,
  `payable_category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_accounts_payable`
--

INSERT INTO `g59_accounts_payable` (`payable_code`, `payable_info`, `payable_name`, `payable_amount`, `payable_date`, `payable_type`, `payable_department`, `payable_category`, `created_at`, `updated_at`) VALUES
(1, 'AP001', 'ABC Company', '3000', '2024-01-15', 'T6', '1004', 'AP01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'AP001', 'XYZ Company', '5000', '2023-12-20', 'T6', '1004', 'AP02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'AP001', 'DEF Company', '8000', '2023-11-28', 'T6', '1004', 'AP03', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_accounts_recievable`
--

CREATE TABLE `g59_accounts_recievable` (
  `recievable_code` bigint(20) UNSIGNED NOT NULL,
  `recievable_info` varchar(255) NOT NULL,
  `recievable_name` varchar(255) NOT NULL,
  `recievable_invoice_date` date NOT NULL,
  `recievable_amount` varchar(255) NOT NULL,
  `recievable_due_date` varchar(255) NOT NULL,
  `recievable_type` varchar(255) NOT NULL,
  `recievable_department` varchar(255) NOT NULL,
  `recievable_category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_accounts_recievable`
--

INSERT INTO `g59_accounts_recievable` (`recievable_code`, `recievable_info`, `recievable_name`, `recievable_invoice_date`, `recievable_amount`, `recievable_due_date`, `recievable_type`, `recievable_department`, `recievable_category`, `created_at`, `updated_at`) VALUES
(1, 'AR001', 'ABC Company', '2024-01-10', '5000', '30', 'T7', '1003', 'AR01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'AR001', 'XYZ Company', '2024-02-05', '2000', '15', 'T7', '1003', 'AR02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'AR001', 'DEF Company', '2024-03-15', '10000', '60', 'T7', '1003', 'AR03', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_addbudget_requests`
--

CREATE TABLE `g59_addbudget_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_name` varchar(255) NOT NULL,
  `request_amount` varchar(255) NOT NULL,
  `request_category` varchar(255) NOT NULL,
  `request_type` varchar(255) NOT NULL,
  `request_department` varchar(255) NOT NULL,
  `request_actualSpending` varchar(255) NOT NULL,
  `request_justification` text NOT NULL,
  `request_period` varchar(255) NOT NULL,
  `request_projectDetails` bigint(20) UNSIGNED NOT NULL,
  `request_optional` varchar(255) NOT NULL,
  `request_historicalData` text DEFAULT NULL,
  `request_riskFactorsAndContingencies` text DEFAULT NULL,
  `request_impactOnOperations` text DEFAULT NULL,
  `request_alignmentWithObjectives` text DEFAULT NULL,
  `request_alternativesConsidered` text DEFAULT NULL,
  `request_assumptionsAndMethodology` text DEFAULT NULL,
  `request_supportingDocumentation` text DEFAULT NULL,
  `request_supportingDocumentationName` text DEFAULT NULL,
  `request_status` varchar(255) NOT NULL,
  `request_approvedBy` varchar(255) DEFAULT NULL,
  `request_approvedDate` date DEFAULT NULL,
  `request_approvedAmount` varchar(255) DEFAULT NULL,
  `request_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_addbudget_requests`
--

INSERT INTO `g59_addbudget_requests` (`id`, `request_name`, `request_amount`, `request_category`, `request_type`, `request_department`, `request_actualSpending`, `request_justification`, `request_period`, `request_projectDetails`, `request_optional`, `request_historicalData`, `request_riskFactorsAndContingencies`, `request_impactOnOperations`, `request_alignmentWithObjectives`, `request_alternativesConsidered`, `request_assumptionsAndMethodology`, `request_supportingDocumentation`, `request_supportingDocumentationName`, `request_status`, `request_approvedBy`, `request_approvedDate`, `request_approvedAmount`, `request_notes`, `created_at`, `updated_at`) VALUES
(1, 'Conference', '20000', 'C7', 'T2', '1004', '30000', 'Attend marketing conference in San Angelo', 'SA2', 1, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S1', 'johnrey.miranda', '2023-10-03', '20000', NULL, '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'Old Sales Software', '1000', 'C4', 'T2', '1002', '6000', 'Additional costs for training and implementation', 'A1', 2, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S1', 'jasonryan.odvina', '2023-10-03', '1000', NULL, '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'New Server', '4000', 'C3', 'T2', '1003', '6000', 'Unexpected increase in server costs', 'Q3', 3, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S1', 'jasonryan.odvina', '2023-10-03', '4000', NULL, '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_add_budgets_request`
--

CREATE TABLE `g59_add_budgets_request` (
  `request_code` bigint(20) UNSIGNED NOT NULL,
  `request_name` varchar(255) NOT NULL,
  `request_amount` varchar(255) NOT NULL,
  `request_category` varchar(255) NOT NULL,
  `request_type` varchar(255) NOT NULL,
  `request_department` varchar(255) NOT NULL,
  `request_budget_code` bigint(20) UNSIGNED NOT NULL,
  `request_actualSpending` varchar(255) NOT NULL,
  `request_varianceReason` text NOT NULL,
  `request_status` varchar(255) NOT NULL,
  `request_approvedBy` varchar(255) DEFAULT NULL,
  `request_approvedDate` date DEFAULT NULL,
  `request_approvedAmount` varchar(255) DEFAULT NULL,
  `request_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_add_budgets_request`
--

INSERT INTO `g59_add_budgets_request` (`request_code`, `request_name`, `request_amount`, `request_category`, `request_type`, `request_department`, `request_budget_code`, `request_actualSpending`, `request_varianceReason`, `request_status`, `request_approvedBy`, `request_approvedDate`, `request_approvedAmount`, `request_notes`, `created_at`, `updated_at`) VALUES
(1, 'Conference', '20000', 'C7', 'T2', '1004', 1, '30000', 'Attend marketing conference in San Angelo', 'S1', 'johnrey.miranda', '2023-10-03', '20000', NULL, '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'Old Sales Software', '5000', 'C4', 'T2', '1002', 2, '6000', 'Additional costs for training and implementation', 'S1', 'jasonryan.odvina', '2023-10-03', '5000', NULL, '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'New Server', '5000', 'C3', 'T2', '1003', 3, '6000', 'Unexpected increase in server costs', 'S1', 'jasonryan.odvina', '2023-10-03', '5000', NULL, '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_balance_sheet`
--

CREATE TABLE `g59_balance_sheet` (
  `balance_code` bigint(20) UNSIGNED NOT NULL,
  `balance_info` varchar(255) NOT NULL,
  `balance_name` varchar(255) NOT NULL,
  `balance_amount` varchar(255) NOT NULL,
  `balance_date` date NOT NULL,
  `balance_type` varchar(255) NOT NULL,
  `balance_department` varchar(255) NOT NULL,
  `balance_category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_balance_sheet`
--

INSERT INTO `g59_balance_sheet` (`balance_code`, `balance_info`, `balance_name`, `balance_amount`, `balance_date`, `balance_type`, `balance_department`, `balance_category`, `created_at`, `updated_at`) VALUES
(1, 'BS001', 'Cash', '100000', '2020-01-01', 'T5', '1003', 'BS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'BS001', 'Accounts Receivable', '50000', '2020-01-01', 'T5', '1003', 'BS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'BS001', 'Inventory', '25000', '2020-01-01', 'T5', '1003', 'BS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(4, 'BS001', 'Fixed Assets', '75000', '2020-01-01', 'T5', '1003', 'BS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(5, 'BS001', 'Total Assets', '250000', '2020-01-01', 'T5', '1003', 'BS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(6, 'BS001', 'Total Liabilities', '250000', '2020-01-01', 'T5', '1003', 'BS02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(7, 'BS001', 'Shareholder\'s Equity', '180000', '2020-01-01', 'T5', '1003', 'BS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(8, 'BS001', 'Total Equity', '180000', '2020-01-01', 'T5', '1003', 'BS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(9, 'BS001', 'Total Liabilities and Equity', '250000', '2020-01-01', 'T5', '1003', 'BS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_budgets`
--

CREATE TABLE `g59_budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `budget_name` varchar(255) NOT NULL,
  `budget_amount` varchar(255) NOT NULL,
  `budget_description` text NOT NULL,
  `budget_startDate` date NOT NULL,
  `budget_endDate` date NOT NULL,
  `budget_category` varchar(255) NOT NULL,
  `budget_type` varchar(255) NOT NULL,
  `budget_department` varchar(255) NOT NULL,
  `budget_status` varchar(255) NOT NULL,
  `budget_approvedBy` varchar(255) DEFAULT NULL,
  `budget_approvedDate` date DEFAULT NULL,
  `budget_approvedAmount` varchar(255) DEFAULT NULL,
  `budget_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_budgets`
--

INSERT INTO `g59_budgets` (`id`, `budget_name`, `budget_amount`, `budget_description`, `budget_startDate`, `budget_endDate`, `budget_category`, `budget_type`, `budget_department`, `budget_status`, `budget_approvedBy`, `budget_approvedDate`, `budget_approvedAmount`, `budget_notes`, `created_at`, `updated_at`) VALUES
(1, 'Marketing Conference', '10000', 'Attend marketing conference in San Francisco', '2023-10-04', '2023-10-06', 'C7', 'T1', '1004', 'S1', 'johnrey.miranda', '2023-10-03', '9500', '', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'New Sales Software', '5000', 'Purchase new sales software for the sales team', '2023-10-10', '2023-10-31', 'C4', 'T1', '1002', 'S1', 'jasonryan.odvina', '2023-10-09', '5200', 'Additional costs for training and implementation', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'New Servers', '2000', 'Purchase new servers to support the growing company', '2023-10-17', '2023-11-15', 'C3', 'T1', '1003', 'S1', 'johnrey.miranda', '2023-10-16', '2500', 'Unexpected increase in server costs', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(4, 'Employee Training', '1500', 'Provide employee training on new company policies and procedures', '2023-10-24', '2023-11-30', 'C1', 'T1', '1004', 'S1', 'jasonryan.odvina', '2023-10-23', '1200', 'Fewer employees attended training than expected', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(5, 'Office Supplies', '1000', 'Purchase office supplies for the company', '2023-10-31', '2023-11-30', 'C8', 'T1', '1002', 'S1', 'johnrey.miranda', '2023-10-30', '900', 'Lower-than-expected office supply usage', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_budget_plans`
--

CREATE TABLE `g59_budget_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `budget_period` char(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `creator` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g59_budget_requests`
--

CREATE TABLE `g59_budget_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `budget_name` varchar(255) NOT NULL,
  `budget_amount` varchar(255) NOT NULL,
  `budget_justification` text NOT NULL,
  `budget_period` varchar(255) NOT NULL,
  `budget_optional` varchar(255) NOT NULL,
  `budget_historicalData` text DEFAULT NULL,
  `budget_riskFactorsAndContingencies` text DEFAULT NULL,
  `budget_impactOnOperations` text DEFAULT NULL,
  `budget_alignmentWithObjectives` text DEFAULT NULL,
  `budget_alternativesConsidered` text DEFAULT NULL,
  `budget_category` varchar(255) NOT NULL,
  `budget_type` varchar(255) NOT NULL,
  `budget_department` varchar(255) NOT NULL,
  `budget_supportingDocumentation` text DEFAULT NULL,
  `budget_supportingDocumentationName` text DEFAULT NULL,
  `budget_assumptionsAndMethodology` text DEFAULT NULL,
  `budget_status` varchar(255) NOT NULL,
  `budget_approvedBy` varchar(255) DEFAULT NULL,
  `budget_approvedDate` date DEFAULT NULL,
  `budget_approvedAmount` varchar(255) DEFAULT NULL,
  `budget_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_budget_requests`
--

INSERT INTO `g59_budget_requests` (`id`, `budget_name`, `budget_amount`, `budget_justification`, `budget_period`, `budget_optional`, `budget_historicalData`, `budget_riskFactorsAndContingencies`, `budget_impactOnOperations`, `budget_alignmentWithObjectives`, `budget_alternativesConsidered`, `budget_category`, `budget_type`, `budget_department`, `budget_supportingDocumentation`, `budget_supportingDocumentationName`, `budget_assumptionsAndMethodology`, `budget_status`, `budget_approvedBy`, `budget_approvedDate`, `budget_approvedAmount`, `budget_notes`, `created_at`, `updated_at`) VALUES
(1, 'Marketing Conference', '10000', 'Attend marketing conference in San Francisco', 'Q1', 'N', NULL, NULL, NULL, NULL, NULL, 'C7', 'T1', '1004', NULL, NULL, NULL, 'S1', 'johnrey.miranda', '2023-10-03', '9500', '', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'New Sales Software', '5000', 'Purchase new sales software for the sales team', 'A1', 'N', NULL, NULL, NULL, NULL, NULL, 'C4', 'T1', '1002', NULL, NULL, NULL, 'S1', 'jasonryan.odvina', '2023-10-09', '5200', 'Additional costs for training and implementation', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'New Servers', '2000', 'Purchase new servers to support the growing company', 'SA2', 'N', NULL, NULL, NULL, NULL, NULL, 'C3', 'T1', '1003', NULL, NULL, NULL, 'S1', 'johnrey.miranda', '2023-10-16', '2500', 'Unexpected increase in server costs', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(4, 'Employee Training', '1500', 'Provide employee training on new company policies and procedures', 'Q4', 'N', NULL, NULL, NULL, NULL, NULL, 'C1', 'T1', '1004', NULL, NULL, NULL, 'S1', 'jasonryan.odvina', '2023-10-23', '1200', 'Fewer employees attended training than expected', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(5, 'Office Supplies', '1000', 'Purchase office supplies for the company', 'Q2', 'N', NULL, NULL, NULL, NULL, NULL, 'C8', 'T1', '1002', NULL, NULL, NULL, 'S1', 'johnrey.miranda', '2023-10-30', '900', 'Lower-than-expected office supply usage', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_budget_track`
--

CREATE TABLE `g59_budget_track` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_id` bigint(20) UNSIGNED NOT NULL,
  `track_department` varchar(255) NOT NULL,
  `track_category` varchar(255) NOT NULL,
  `track_amount` int(11) NOT NULL,
  `track_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_budget_track`
--

INSERT INTO `g59_budget_track` (`id`, `track_id`, `track_department`, `track_category`, `track_amount`, `track_date`, `created_at`, `updated_at`) VALUES
(1, 1, '1004', 'C1', 1000, '2024-03-20', '2024-03-21 17:12:15', '2024-03-21 17:12:15'),
(2, 1, '1004', 'C1', 2015, '2024-03-22', '2024-03-21 17:31:05', '2024-03-21 17:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `g59_cashflow_statement`
--

CREATE TABLE `g59_cashflow_statement` (
  `cashflow_code` bigint(20) UNSIGNED NOT NULL,
  `cashflow_info` varchar(255) NOT NULL,
  `cashflow_name` varchar(255) NOT NULL,
  `cashflow_amount` varchar(255) NOT NULL,
  `cashflow_date` date NOT NULL,
  `cashflow_type` varchar(255) NOT NULL,
  `cashflow_department` varchar(255) NOT NULL,
  `cashflow_category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_cashflow_statement`
--

INSERT INTO `g59_cashflow_statement` (`cashflow_code`, `cashflow_info`, `cashflow_name`, `cashflow_amount`, `cashflow_date`, `cashflow_type`, `cashflow_department`, `cashflow_category`, `created_at`, `updated_at`) VALUES
(1, 'CF001', 'Adjustments for Non-Cash Items', '5000', '2020-01-01', 'T3', '1003', 'CFS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'CF001', 'Changes in Working Capital', '3000', '2020-01-01', 'T3', '1003', 'CFS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'CF001', 'Net Cash Provided by Operating Activities', '28000', '2020-01-01', 'T3', '1003', 'CFS01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(4, 'CF001', 'Purchase of Equipment', '10000', '2020-01-01', 'T3', '1003', 'CFS02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(5, 'CF001', 'Net Cash Used in Investing Activities', '10000', '2020-01-01', 'T3', '1003', 'CFS02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(6, 'CF001', 'Repayment of Loans', '5000', '2020-01-01', 'T3', '1003', 'CFS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(7, 'CF001', 'Net Cash Used in Financing Activities', '5000', '2020-01-01', 'T3', '1003', 'CFS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(8, 'CF001', 'Net Increase in Cash', '13000', '2020-01-01', 'T3', '1003', 'CFS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(9, 'CF001', 'Beginning Cash Balance', '50000', '2020-01-01', 'T3', '1003', 'CFS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(10, 'CF001', 'Ending Cash Balance', '63000', '2020-01-01', 'T3', '1003', 'CFS03', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_categories`
--

CREATE TABLE `g59_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_code` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_categories`
--

INSERT INTO `g59_categories` (`id`, `category_code`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'C1', 'Training', NULL, NULL),
(2, 'C2', 'Support', NULL, NULL),
(3, 'C3', 'Hardware', NULL, NULL),
(4, 'C4', 'Software', NULL, NULL),
(5, 'C5', 'Conference', NULL, NULL),
(6, 'C6', 'Meeting', NULL, NULL),
(7, 'C7', 'Travel', NULL, NULL),
(8, 'C8', 'Expenses', NULL, NULL),
(9, 'C9', 'Other', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_departments`
--

CREATE TABLE `g59_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_departments`
--

INSERT INTO `g59_departments` (`id`, `department_code`, `department_name`, `created_at`, `updated_at`) VALUES
(1, '1001', 'Admin', NULL, NULL),
(2, '1002', 'HR', NULL, NULL),
(3, '1003', 'Logistics', NULL, NULL),
(4, '1004', 'Finance', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_expense_reports`
--

CREATE TABLE `g59_expense_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `budget_plan_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g59_income_statement`
--

CREATE TABLE `g59_income_statement` (
  `income_code` bigint(20) UNSIGNED NOT NULL,
  `income_info` varchar(255) NOT NULL,
  `income_name` varchar(255) NOT NULL,
  `income_amount` varchar(255) NOT NULL,
  `income_date` date NOT NULL,
  `income_type` varchar(255) NOT NULL,
  `income_department` varchar(255) NOT NULL,
  `income_category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_income_statement`
--

INSERT INTO `g59_income_statement` (`income_code`, `income_info`, `income_name`, `income_amount`, `income_date`, `income_type`, `income_department`, `income_category`, `created_at`, `updated_at`) VALUES
(1, 'IN001', 'Sales Revenue', '150000', '2020-01-01', 'T4', '1002', 'INC01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'IN001', 'Cost of Goods Sold', '75000', '2020-01-01', 'T4', '1002', 'INC01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'IN001', 'Gross Profit', '75000', '2020-01-01', 'T4', '1002', 'INC01', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(4, 'IN001', 'Salaries and Wages', '40000', '2020-01-01', 'T4', '1002', 'INC02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(5, 'IN001', 'Rent Expense', '10000', '2020-01-01', 'T4', '1002', 'INC02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(6, 'IN001', 'Marketing expenses', '5000', '2020-01-01', 'T4', '1002', 'INC02', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_inventory_turnover`
--

CREATE TABLE `g59_inventory_turnover` (
  `turnover_code` bigint(20) UNSIGNED NOT NULL,
  `turnover_info` varchar(255) NOT NULL,
  `turnover_product_name` varchar(255) NOT NULL,
  `turnover_cost_of_goods_sold` varchar(255) NOT NULL,
  `turnover_inventory_turnover_ratio` varchar(255) NOT NULL,
  `turnover_date` date NOT NULL,
  `turnover_type` varchar(255) NOT NULL,
  `turnover_department` varchar(255) NOT NULL,
  `turnover_category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_inventory_turnover`
--

INSERT INTO `g59_inventory_turnover` (`turnover_code`, `turnover_info`, `turnover_product_name`, `turnover_cost_of_goods_sold`, `turnover_inventory_turnover_ratio`, `turnover_date`, `turnover_type`, `turnover_department`, `turnover_category`, `created_at`, `updated_at`) VALUES
(1, 'IT001', 'Product A', '5000', '5', '2020-01-01', 'T8', '1002', 'IT02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'IT001', 'Product B', '10000', '5', '2020-01-01', 'T8', '1002', 'IT04', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'IT001', 'Product C', '2500', '5', '2020-01-01', 'T8', '1002', 'IT01', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_optional`
--

CREATE TABLE `g59_optional` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `optional_code` varchar(255) NOT NULL,
  `optional_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_optional`
--

INSERT INTO `g59_optional` (`id`, `optional_code`, `optional_name`, `created_at`, `updated_at`) VALUES
(1, 'Y', 'Yes', NULL, NULL),
(2, 'N', 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_periods`
--

CREATE TABLE `g59_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `periods` varchar(255) NOT NULL,
  `period_code` varchar(255) NOT NULL,
  `period_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_periods`
--

INSERT INTO `g59_periods` (`id`, `periods`, `period_code`, `period_name`, `created_at`, `updated_at`) VALUES
(1, 'quarterly', 'Q1', 'Quarter 1', NULL, NULL),
(2, 'quarterly', 'Q2', 'Quarter 2', NULL, NULL),
(3, 'quarterly', 'Q3', 'Quarter 3', NULL, NULL),
(4, 'quarterly', 'Q4', 'Quarter 4', NULL, NULL),
(5, 'annual', 'A1', 'Annual', NULL, NULL),
(6, 'semi-annual', 'SA1', 'Semi-Annual 1', NULL, NULL),
(7, 'semi-annual', 'SA2', 'Semi-Annual 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_plan_categories`
--

CREATE TABLE `g59_plan_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_type` varchar(255) NOT NULL,
  `plan_category_code` varchar(255) NOT NULL,
  `plan_category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_plan_categories`
--

INSERT INTO `g59_plan_categories` (`id`, `category_type`, `plan_category_code`, `plan_category_name`, `created_at`, `updated_at`) VALUES
(1, 'T3', 'CFS01', 'Operating Activities', NULL, NULL),
(2, 'T3', 'CFS02', 'Investing Activities', NULL, NULL),
(3, 'T3', 'CFS03', 'Financing Activities', NULL, NULL),
(4, 'T4', 'INC01', 'Revenue', NULL, NULL),
(5, 'T4', 'INC02', 'Operating Costs', NULL, NULL),
(6, 'T5', 'BS01', 'Assets', NULL, NULL),
(7, 'T5', 'BS02', 'Liabilities', NULL, NULL),
(8, 'T5', 'BS03', 'Equity', NULL, NULL),
(9, 'T6', 'AP01', 'Current', NULL, NULL),
(10, 'T6', 'AP02', '1-30 Days Past Due', NULL, NULL),
(11, 'T6', 'AP03', '30-60 Days Past Due', NULL, NULL),
(12, 'T7', 'AR01', 'Current', NULL, NULL),
(13, 'T7', 'AR02', '1-30 Days Past Due', NULL, NULL),
(14, 'T7', 'AR03', '30-60 Days Past Due', NULL, NULL),
(15, 'T8', 'IT01', '50 Pieces', NULL, NULL),
(16, 'T8', 'IT02', '100 Pieces', NULL, NULL),
(17, 'T8', 'IT03', '150 Pieces', NULL, NULL),
(18, 'T8', 'IT04', '200 Pieces', NULL, NULL),
(19, 'T9', 'SR01', '50 Pieces', NULL, NULL),
(20, 'T9', 'SR02', '100 Pieces', NULL, NULL),
(21, 'T9', 'SR03', '150 Pieces', NULL, NULL),
(22, 'T9', 'SR04', '200 Pieces', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_roles`
--

CREATE TABLE `g59_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_code` varchar(255) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_roles`
--

INSERT INTO `g59_roles` (`id`, `role_code`, `role_name`, `created_at`, `updated_at`) VALUES
(1, '101', 'Developer', NULL, NULL),
(2, '102', 'Admin', NULL, NULL),
(3, '103', 'Employee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_sales_report`
--

CREATE TABLE `g59_sales_report` (
  `sales_code` bigint(20) UNSIGNED NOT NULL,
  `sales_info` varchar(255) NOT NULL,
  `sales_product_name` varchar(255) NOT NULL,
  `sales_revenue` varchar(255) NOT NULL,
  `sales_date` date NOT NULL,
  `sales_type` varchar(255) NOT NULL,
  `sales_department` varchar(255) NOT NULL,
  `sales_category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_sales_report`
--

INSERT INTO `g59_sales_report` (`sales_code`, `sales_info`, `sales_product_name`, `sales_revenue`, `sales_date`, `sales_type`, `sales_department`, `sales_category`, `created_at`, `updated_at`) VALUES
(1, 'SR001', 'Product A', '5000', '2020-01-01', 'T9', '1002', 'SR02', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(2, 'SR001', 'Product B', '10000', '2020-01-01', 'T9', '1002', 'SR04', '2024-03-21 16:20:59', '2024-03-21 16:20:59'),
(3, 'SR001', 'Product C', '2500', '2020-01-01', 'T9', '1002', 'SR01', '2024-03-21 16:20:59', '2024-03-21 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `g59_statuses`
--

CREATE TABLE `g59_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` varchar(255) NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_statuses`
--

INSERT INTO `g59_statuses` (`id`, `status_code`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'S1', 'Approved', NULL, NULL),
(2, 'S2', 'Pending', NULL, NULL),
(3, 'S3', 'Rejected', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_travel_expenses`
--

CREATE TABLE `g59_travel_expenses` (
  `expense_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `travel_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tr_track_no` varchar(255) NOT NULL,
  `transportation` decimal(10,2) NOT NULL,
  `accommodation` decimal(10,2) NOT NULL,
  `meal` decimal(10,2) NOT NULL,
  `other_expenses_amount` decimal(10,2) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `other_expenses` varchar(255) NOT NULL,
  `attachments` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g59_travel_requests`
--

CREATE TABLE `g59_travel_requests` (
  `travel_request_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `destination` varchar(255) NOT NULL,
  `project_title` varchar(50) DEFAULT NULL,
  `start_date` varchar(50) NOT NULL DEFAULT '',
  `end_date` varchar(50) NOT NULL DEFAULT '',
  `purpose` text NOT NULL,
  `estimated_amount` decimal(8,2) NOT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `tr_track_no` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `approver` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g59_types`
--

CREATE TABLE `g59_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_code` varchar(255) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_types`
--

INSERT INTO `g59_types` (`id`, `type_code`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'T1', 'Request Budget Plan ', NULL, NULL),
(2, 'T2', 'Request Additional Budget', NULL, NULL),
(3, 'T3', 'Cash Flow Statement', NULL, NULL),
(4, 'T4', 'Income Statement', NULL, NULL),
(5, 'T5', 'Balance Sheet', NULL, NULL),
(6, 'T6', 'Accounts Payable', NULL, NULL),
(7, 'T7', 'Accounts Receivable', NULL, NULL),
(8, 'T8', 'Inventory Turnover', NULL, NULL),
(9, 'T9', 'Sales Statement', NULL, NULL),
(10, 'R1', 'Budget Plan', NULL, NULL),
(11, 'R2', 'Additional Budget', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g59_users`
--

CREATE TABLE `g59_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `role_code` varchar(255) NOT NULL,
  `department_code` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g59_users`
--

INSERT INTO `g59_users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `userpassword`, `role_code`, `department_code`, `profile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rkive', 'Developer', 'dev@rkive.com', 'dev', '$2y$10$B6gf9ayqkORvHPD8Yu/zNOn6TUjtVvLTzhg1be.HqBREVteB8g1tO', 'dev', '101', '1001', 'uploads/category/profile\\65fc2dd52f3e9.png', 'lvAwLyjk3o', '2024-03-21 16:20:58', '2024-03-21 16:20:58'),
(2, 'John Rey', 'Miranda', 'johnrey.miranda@rkive.com', 'johnrey.miranda', '$2y$10$ASmTO1vPqfxT6.CpydE.buuW1mWnZ0l34SSppxJRnAQkdI7pY61rq', 'admin', '102', '1002', 'uploads/category/profile\\65fc2ae9a622e.jpg', '8EyUe2NSi9QV02zzEbgFk7dmFNxFfTv1ynlQBXwuUEXM7QmTltOOttBXJGt1', '2024-03-21 16:20:58', '2024-03-21 16:44:46'),
(3, 'Jason Ryan', 'Odvina', 'jasonryan.odvina@rkive.com', 'jasonryan.odvina', '$2y$10$ndX6hybyFACrfqxRFfGpXer2BJ2DPGUM5tD60I1MGfMiXWRkK.vRC', 'user', '103', '1003', 'uploads/category/profile\\65fc2d244cbf5.jpg', 'OEG470JGBs2FE1A5Xl8R06rPxXix6xf2FkWOMgFxEu88mk3M1Dsy7zz2DzEG', '2024-03-21 16:20:58', '2024-03-21 16:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `g60_tickets`
--

CREATE TABLE `g60_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_code` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `concern` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `priority` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g60_tickets`
--

INSERT INTO `g60_tickets` (`id`, `tracking_code`, `name`, `email`, `company`, `department`, `concern`, `comments`, `priority`, `created_at`, `updated_at`) VALUES
(1, 68454, 'dadadd', 'nathaniel@gmail.com', 'cluster f', 'it department', 'dwasdada', 'awdasdadawdadssADASDASDsdadawd', 'High', '2024-03-08 04:58:57', '2024-03-08 05:17:08'),
(2, 35087, 'nathaniel@gmail.com', 'nathaniel@gmail.com', 'cluster f', 'it department', 'qweqeqeqweq', NULL, 'High', '2024-03-08 06:20:41', '2024-03-08 06:20:41'),
(3, 68915, 'nathaniel@gmail.com', 'nathaniel@gmail.com', 'cluster f', 'it department', 'bh v', NULL, 'Low', '2024-03-08 07:04:24', '2024-03-08 07:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `g60_ticket_attachments`
--

CREATE TABLE `g60_ticket_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `attachments` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g60_ticket_attachments`
--

INSERT INTO `g60_ticket_attachments` (`id`, `ticket_id`, `attachments`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/attachments/17099027371.pptx', '2024-03-08 04:58:57', '2024-03-08 04:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `g60_users`
--

CREATE TABLE `g60_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g60_users`
--

INSERT INTO `g60_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel', 'daniel@gmail.com', NULL, '$2y$10$MQgqF088vkONhfcw88yAs.2TJ61w5MGtyaXpTbo1LdKDvwP6fmMqu', NULL, '2024-02-13 00:53:47', '2024-02-13 00:53:47'),
(2, 'nathaniel', 'nathaniel@gmail.com', NULL, '$2y$10$aYTnTHYw1i2JfMOoXeGY1u3CUUwQZpB9RRIzjihlrhfbyW.1LCH9G', NULL, '2024-02-24 06:56:18', '2024-02-24 06:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_27_160647_create_plans_and_assessments_table', 1),
(6, '2024_02_27_160807_create_incidents_responses_table', 1),
(7, '2024_02_27_160945_create_team_personnels_table', 1),
(8, '2024_03_06_074146_create_responses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 2),
(11, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `validity` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL DEFAULT 'web',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'access-to-employee-mgt', 'web', 'access to employees sidebar', '2024-03-18 05:44:04', '2024-03-18 05:44:04'),
(2, 'access-to-user-mgt', 'web', 'access to user management sidebar', '2024-03-18 05:44:21', '2024-03-18 05:44:21'),
(3, 'RYAN LLOYD SIDMANAO COMBO', 'web', 'RYAN LLOYD SIDMANAO COMBO', '2024-03-30 09:20:37', '2024-03-30 09:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Employee', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(2, 'Normal User', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(3, 'Admin', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(4, 'Super Admin', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(5, 'System Administrator', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(6, 'Account Manager', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(7, 'Executive Manager', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(8, 'Department Manager', 'web', '2024-03-14 22:25:17', '2024-03-14 22:25:17'),
(11, 'John-cena', 'web', '2024-03-15 00:26:35', '2024-03-15 00:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 6),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Super Admin', NULL, NULL),
(3, 'Normal User', NULL, NULL),
(4, 'Student', NULL, NULL),
(5, 'Manager', NULL, NULL),
(6, 'Driver', NULL, NULL),
(7, 'LGU Staff', NULL, NULL),
(8, 'Inspector', NULL, NULL),
(9, 'Executive Manager', NULL, NULL),
(10, 'Department Manager', NULL, NULL),
(11, 'Administrative Manager', NULL, NULL),
(12, 'Health Administrator', NULL, NULL),
(13, 'Health Service Provider', NULL, NULL),
(14, 'Health Service Staff', NULL, NULL),
(15, 'Hotel Manager', NULL, NULL),
(16, 'Receptionist', NULL, NULL),
(17, 'Housekeeper', NULL, NULL),
(18, 'Server', NULL, NULL),
(19, 'Service Crew', NULL, NULL),
(20, 'Restaurant Manager', NULL, NULL),
(21, 'Room Boy', NULL, NULL),
(22, 'Cleaner', NULL, NULL),
(23, 'Account Manager', NULL, NULL),
(24, 'System Administrator', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `security_questions`
--

CREATE TABLE `security_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `security_questions`
--

INSERT INTO `security_questions` (`id`, `question`, `created_at`, `updated_at`) VALUES
(1, 'What is the destination of your dream vacation?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(2, 'What is your favorite color?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(3, 'What is your favorite musical artist or band?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(4, 'What is your dream job?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(5, 'What is your course?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(6, 'What was your favorite subject in college?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(7, 'What is your favorite hobby?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(8, 'What is your favorite book?', '2024-03-14 22:25:16', '2024-03-14 22:25:16'),
(9, 'What was the name of your favorite teacher?', '2024-03-14 22:25:16', '2024-03-14 22:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `sequence_tbl`
--

CREATE TABLE `sequence_tbl` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sequence_tbl`
--

INSERT INTO `sequence_tbl` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `admission_id` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `upload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `join_date` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `security_question_id` varchar(255) DEFAULT NULL,
  `security_answer` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_id`, `email`, `join_date`, `phone_number`, `status`, `role_name`, `avatar`, `position`, `department`, `employee_id`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `security_question_id`, `security_answer`, `remember_token`, `reset_token`, `created_at`, `updated_at`) VALUES
(1, 'Riel', 'Codilla', '00001', 'yungriel666@gmail.com', 'Thu, Mar 14, 2024 9:56 AM', '09603753205', 'Active', 'Super Admin', '937584518.png', 'Web Dev', 'Cluster B', '7894542314', NULL, '$2y$10$Vv.hvCE.2oT4nqDk52W0vue/bAJ5aZU8kxRlDtRuWpvsn3T4r2I9q', NULL, NULL, NULL, '1', '12345', NULL, NULL, '2024-03-14 01:56:26', '2024-03-30 07:24:03'),
(2, 'Ericsson', 'Buban', '00002', 'ericssonbuban@hotmail.com', 'Thu, Mar 14, 2024 10:13 AM', '09162998225', 'Active', 'Account Manager', 'http://127.0.0.1:8000/images/photo.png', 'Software Engineer', 'Cluster A', '7845123215', NULL, '$2y$10$Dh1QexRpvLoEYluPjvpGcu3PG3CZwKPQs5by6.3bFszPOvZ.59u.W', NULL, NULL, NULL, '1', '12345', NULL, NULL, '2024-03-14 02:13:15', '2024-03-30 09:17:48'),
(6, 'John', 'Cena', '00006', 'johncena@gmail.com', 'Sat, Mar 30, 2024 9:14 AM', '09123412556', NULL, 'Admin', 'images/photo.png', 'Secret', 'Wew', '1324123214', NULL, '$2y$10$G5Qsi4r1vkcAE8sQL5OzcurcEbw0OA3z7I5E3/H82GNchzGVdIZFK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-30 09:14:17', '2024-03-30 09:14:17');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `id_store` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
                INSERT INTO sequence_tbl VALUES (NULL);
                SET NEW.user_id = CONCAT("0", LPAD(LAST_INSERT_ID(), 4, "0"));
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_me` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `home_city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Inactive', NULL, NULL),
(3, 'Disable', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modification` (`modification_type`,`modification_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `g51_calendar_events`
--
ALTER TABLE `g51_calendar_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g51_ch_favorites`
--
ALTER TABLE `g51_ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g51_ch_messages`
--
ALTER TABLE `g51_ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g51_events`
--
ALTER TABLE `g51_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_room_id_foreign` (`room_id`);

--
-- Indexes for table `g51_items`
--
ALTER TABLE `g51_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g51_rooms`
--
ALTER TABLE `g51_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g51_tasks`
--
ALTER TABLE `g51_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g51_users`
--
ALTER TABLE `g51_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `g52_assets`
--
ALTER TABLE `g52_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g52_asset_movements`
--
ALTER TABLE `g52_asset_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_movements_asset_id_foreign` (`asset_id`),
  ADD KEY `asset_movements_from_space_id_foreign` (`from_space_id`),
  ADD KEY `asset_movements_to_space_id_foreign` (`to_space_id`);

--
-- Indexes for table `g52_reservation_records`
--
ALTER TABLE `g52_reservation_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_records_space_id_foreign` (`space_id`),
  ADD KEY `reservation_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `g52_rooms`
--
ALTER TABLE `g52_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g52_spaces`
--
ALTER TABLE `g52_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g52_space_utilizations`
--
ALTER TABLE `g52_space_utilizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g52_users`
--
ALTER TABLE `g52_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `g54_emphistories`
--
ALTER TABLE `g54_emphistories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g54_employees`
--
ALTER TABLE `g54_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g54_payrolls`
--
ALTER TABLE `g54_payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g54_positions`
--
ALTER TABLE `g54_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g54_schedules`
--
ALTER TABLE `g54_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g54_skills_and_qualifications`
--
ALTER TABLE `g54_skills_and_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g54_users`
--
ALTER TABLE `g54_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `g55_contract`
--
ALTER TABLE `g55_contract`
  ADD PRIMARY KEY (`contract_id`);

--
-- Indexes for table `g55_contract_document`
--
ALTER TABLE `g55_contract_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `g55_document`
--
ALTER TABLE `g55_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `g55_document_tags`
--
ALTER TABLE `g55_document_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `g55_parties`
--
ALTER TABLE `g55_parties`
  ADD PRIMARY KEY (`party_id`);

--
-- Indexes for table `g55_users`
--
ALTER TABLE `g55_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `g56_incident_responses`
--
ALTER TABLE `g56_incident_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g56_plan_assessments`
--
ALTER TABLE `g56_plan_assessments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g56_responses`
--
ALTER TABLE `g56_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responses_plan_assessment_id_foreign` (`plan_assessment_id`);

--
-- Indexes for table `g56_team_personnels`
--
ALTER TABLE `g56_team_personnels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g56_users`
--
ALTER TABLE `g56_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `g57_first_steps`
--
ALTER TABLE `g57_first_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g57_projects`
--
ALTER TABLE `g57_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g57_send_requests`
--
ALTER TABLE `g57_send_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g57_tasks`
--
ALTER TABLE `g57_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g57_users`
--
ALTER TABLE `g57_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `g57_workers`
--
ALTER TABLE `g57_workers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g58_compliance_regulatory`
--
ALTER TABLE `g58_compliance_regulatory`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `g58_tbl_events`
--
ALTER TABLE `g58_tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g58_tbl_user`
--
ALTER TABLE `g58_tbl_user`
  ADD PRIMARY KEY (`tbl_user_id`);

--
-- Indexes for table `g59_accounts_payable`
--
ALTER TABLE `g59_accounts_payable`
  ADD PRIMARY KEY (`payable_code`),
  ADD KEY `g59_accounts_payable_payable_type_foreign` (`payable_type`),
  ADD KEY `g59_accounts_payable_payable_department_foreign` (`payable_department`),
  ADD KEY `g59_accounts_payable_payable_category_foreign` (`payable_category`),
  ADD KEY `g59_accounts_payable_payable_info_index` (`payable_info`);

--
-- Indexes for table `g59_accounts_recievable`
--
ALTER TABLE `g59_accounts_recievable`
  ADD PRIMARY KEY (`recievable_code`),
  ADD KEY `g59_accounts_recievable_recievable_type_foreign` (`recievable_type`),
  ADD KEY `g59_accounts_recievable_recievable_department_foreign` (`recievable_department`),
  ADD KEY `g59_accounts_recievable_recievable_category_foreign` (`recievable_category`),
  ADD KEY `g59_accounts_recievable_recievable_info_index` (`recievable_info`);

--
-- Indexes for table `g59_addbudget_requests`
--
ALTER TABLE `g59_addbudget_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_addbudget_requests_request_name_unique` (`request_name`),
  ADD KEY `g59_addbudget_requests_request_projectdetails_foreign` (`request_projectDetails`),
  ADD KEY `g59_addbudget_requests_request_category_foreign` (`request_category`),
  ADD KEY `g59_addbudget_requests_request_type_foreign` (`request_type`),
  ADD KEY `g59_addbudget_requests_request_department_foreign` (`request_department`),
  ADD KEY `g59_addbudget_requests_request_status_foreign` (`request_status`),
  ADD KEY `g59_addbudget_requests_request_approvedby_foreign` (`request_approvedBy`),
  ADD KEY `g59_addbudget_requests_request_period_foreign` (`request_period`),
  ADD KEY `g59_addbudget_requests_request_optional_foreign` (`request_optional`);

--
-- Indexes for table `g59_add_budgets_request`
--
ALTER TABLE `g59_add_budgets_request`
  ADD PRIMARY KEY (`request_code`),
  ADD UNIQUE KEY `g59_add_budgets_request_request_name_unique` (`request_name`),
  ADD KEY `g59_add_budgets_request_request_budget_code_foreign` (`request_budget_code`),
  ADD KEY `g59_add_budgets_request_request_category_foreign` (`request_category`),
  ADD KEY `g59_add_budgets_request_request_type_foreign` (`request_type`),
  ADD KEY `g59_add_budgets_request_request_department_foreign` (`request_department`),
  ADD KEY `g59_add_budgets_request_request_status_foreign` (`request_status`),
  ADD KEY `g59_add_budgets_request_request_approvedby_foreign` (`request_approvedBy`);

--
-- Indexes for table `g59_balance_sheet`
--
ALTER TABLE `g59_balance_sheet`
  ADD PRIMARY KEY (`balance_code`),
  ADD KEY `g59_balance_sheet_balance_type_foreign` (`balance_type`),
  ADD KEY `g59_balance_sheet_balance_department_foreign` (`balance_department`),
  ADD KEY `g59_balance_sheet_balance_category_foreign` (`balance_category`),
  ADD KEY `g59_balance_sheet_balance_info_index` (`balance_info`);

--
-- Indexes for table `g59_budgets`
--
ALTER TABLE `g59_budgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_budgets_budget_name_unique` (`budget_name`),
  ADD KEY `g59_budgets_budget_category_foreign` (`budget_category`),
  ADD KEY `g59_budgets_budget_type_foreign` (`budget_type`),
  ADD KEY `g59_budgets_budget_department_foreign` (`budget_department`),
  ADD KEY `g59_budgets_budget_status_foreign` (`budget_status`),
  ADD KEY `g59_budgets_budget_approvedby_foreign` (`budget_approvedBy`);

--
-- Indexes for table `g59_budget_plans`
--
ALTER TABLE `g59_budget_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `g59_budget_plans_department_id_foreign` (`department_id`),
  ADD KEY `g59_budget_plans_user_id_foreign` (`user_id`);

--
-- Indexes for table `g59_budget_requests`
--
ALTER TABLE `g59_budget_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_budget_requests_budget_name_unique` (`budget_name`),
  ADD KEY `g59_budget_requests_budget_category_foreign` (`budget_category`),
  ADD KEY `g59_budget_requests_budget_type_foreign` (`budget_type`),
  ADD KEY `g59_budget_requests_budget_department_foreign` (`budget_department`),
  ADD KEY `g59_budget_requests_budget_status_foreign` (`budget_status`),
  ADD KEY `g59_budget_requests_budget_approvedby_foreign` (`budget_approvedBy`),
  ADD KEY `g59_budget_requests_budget_period_foreign` (`budget_period`),
  ADD KEY `g59_budget_requests_budget_optional_foreign` (`budget_optional`);

--
-- Indexes for table `g59_budget_track`
--
ALTER TABLE `g59_budget_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `g59_budget_track_track_id_foreign` (`track_id`),
  ADD KEY `g59_budget_track_track_department_foreign` (`track_department`);

--
-- Indexes for table `g59_cashflow_statement`
--
ALTER TABLE `g59_cashflow_statement`
  ADD PRIMARY KEY (`cashflow_code`),
  ADD KEY `g59_cashflow_statement_cashflow_department_foreign` (`cashflow_department`),
  ADD KEY `g59_cashflow_statement_cashflow_category_foreign` (`cashflow_category`),
  ADD KEY `g59_cashflow_statement_cashflow_type_foreign` (`cashflow_type`),
  ADD KEY `g59_cashflow_statement_cashflow_info_index` (`cashflow_info`);

--
-- Indexes for table `g59_categories`
--
ALTER TABLE `g59_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_categories_category_code_unique` (`category_code`),
  ADD UNIQUE KEY `g59_categories_category_name_unique` (`category_name`),
  ADD KEY `g59_categories_category_code_index` (`category_code`);

--
-- Indexes for table `g59_departments`
--
ALTER TABLE `g59_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_departments_department_code_unique` (`department_code`),
  ADD UNIQUE KEY `g59_departments_department_name_unique` (`department_name`),
  ADD KEY `g59_departments_department_code_index` (`department_code`);

--
-- Indexes for table `g59_expense_reports`
--
ALTER TABLE `g59_expense_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `g59_expense_reports_budget_plan_id_foreign` (`budget_plan_id`),
  ADD KEY `g59_expense_reports_department_id_foreign` (`department_id`);

--
-- Indexes for table `g59_income_statement`
--
ALTER TABLE `g59_income_statement`
  ADD PRIMARY KEY (`income_code`),
  ADD KEY `g59_income_statement_income_department_foreign` (`income_department`),
  ADD KEY `g59_income_statement_income_category_foreign` (`income_category`),
  ADD KEY `g59_income_statement_income_type_foreign` (`income_type`),
  ADD KEY `g59_income_statement_income_info_index` (`income_info`);

--
-- Indexes for table `g59_inventory_turnover`
--
ALTER TABLE `g59_inventory_turnover`
  ADD PRIMARY KEY (`turnover_code`),
  ADD KEY `g59_inventory_turnover_turnover_type_foreign` (`turnover_type`),
  ADD KEY `g59_inventory_turnover_turnover_department_foreign` (`turnover_department`),
  ADD KEY `g59_inventory_turnover_turnover_category_foreign` (`turnover_category`),
  ADD KEY `g59_inventory_turnover_turnover_info_index` (`turnover_info`);

--
-- Indexes for table `g59_optional`
--
ALTER TABLE `g59_optional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `g59_optional_optional_code_index` (`optional_code`);

--
-- Indexes for table `g59_periods`
--
ALTER TABLE `g59_periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_periods_period_code_unique` (`period_code`),
  ADD KEY `g59_periods_period_code_index` (`period_code`);

--
-- Indexes for table `g59_plan_categories`
--
ALTER TABLE `g59_plan_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_plan_categories_plan_category_code_unique` (`plan_category_code`),
  ADD KEY `g59_plan_categories_category_type_foreign` (`category_type`),
  ADD KEY `g59_plan_categories_plan_category_code_index` (`plan_category_code`);

--
-- Indexes for table `g59_roles`
--
ALTER TABLE `g59_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_roles_role_code_unique` (`role_code`),
  ADD UNIQUE KEY `g59_roles_role_name_unique` (`role_name`),
  ADD KEY `g59_roles_role_code_index` (`role_code`);

--
-- Indexes for table `g59_sales_report`
--
ALTER TABLE `g59_sales_report`
  ADD PRIMARY KEY (`sales_code`),
  ADD KEY `g59_sales_report_sales_type_foreign` (`sales_type`),
  ADD KEY `g59_sales_report_sales_department_foreign` (`sales_department`),
  ADD KEY `g59_sales_report_sales_category_foreign` (`sales_category`),
  ADD KEY `g59_sales_report_sales_info_index` (`sales_info`);

--
-- Indexes for table `g59_statuses`
--
ALTER TABLE `g59_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_statuses_status_code_unique` (`status_code`),
  ADD UNIQUE KEY `g59_statuses_status_name_unique` (`status_name`),
  ADD KEY `g59_statuses_status_code_index` (`status_code`);

--
-- Indexes for table `g59_travel_expenses`
--
ALTER TABLE `g59_travel_expenses`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `g59_travel_expenses_user_id_foreign` (`user_id`),
  ADD KEY `g59_travel_expenses_tr_track_no_foreign` (`tr_track_no`),
  ADD KEY `g59_travel_expenses_travel_request_id_foreign` (`travel_request_id`);

--
-- Indexes for table `g59_travel_requests`
--
ALTER TABLE `g59_travel_requests`
  ADD PRIMARY KEY (`travel_request_id`),
  ADD KEY `g59_travel_requests_tr_track_no_index` (`tr_track_no`),
  ADD KEY `g59_travel_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `g59_types`
--
ALTER TABLE `g59_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_types_type_code_unique` (`type_code`),
  ADD UNIQUE KEY `g59_types_type_name_unique` (`type_name`),
  ADD KEY `g59_types_type_code_index` (`type_code`);

--
-- Indexes for table `g59_users`
--
ALTER TABLE `g59_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g59_users_email_unique` (`email`),
  ADD UNIQUE KEY `g59_users_username_unique` (`username`),
  ADD KEY `g59_users_role_code_foreign` (`role_code`),
  ADD KEY `g59_users_department_code_foreign` (`department_code`),
  ADD KEY `g59_users_username_index` (`username`);

--
-- Indexes for table `g60_tickets`
--
ALTER TABLE `g60_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g60_ticket_attachments`
--
ALTER TABLE `g60_ticket_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_attachments_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `g60_users`
--
ALTER TABLE `g60_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_id_index` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security_questions`
--
ALTER TABLE `security_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_tbl`
--
ALTER TABLE `sequence_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g51_calendar_events`
--
ALTER TABLE `g51_calendar_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g51_events`
--
ALTER TABLE `g51_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `g51_items`
--
ALTER TABLE `g51_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g51_rooms`
--
ALTER TABLE `g51_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g51_tasks`
--
ALTER TABLE `g51_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `g51_users`
--
ALTER TABLE `g51_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `g52_assets`
--
ALTER TABLE `g52_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g52_asset_movements`
--
ALTER TABLE `g52_asset_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g52_reservation_records`
--
ALTER TABLE `g52_reservation_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g52_rooms`
--
ALTER TABLE `g52_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g52_spaces`
--
ALTER TABLE `g52_spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g52_space_utilizations`
--
ALTER TABLE `g52_space_utilizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g52_users`
--
ALTER TABLE `g52_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g54_emphistories`
--
ALTER TABLE `g54_emphistories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g54_employees`
--
ALTER TABLE `g54_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g54_payrolls`
--
ALTER TABLE `g54_payrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g54_positions`
--
ALTER TABLE `g54_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `g54_schedules`
--
ALTER TABLE `g54_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g54_skills_and_qualifications`
--
ALTER TABLE `g54_skills_and_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g54_users`
--
ALTER TABLE `g54_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g55_contract`
--
ALTER TABLE `g55_contract`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each contract';

--
-- AUTO_INCREMENT for table `g55_contract_document`
--
ALTER TABLE `g55_contract_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each document';

--
-- AUTO_INCREMENT for table `g55_document`
--
ALTER TABLE `g55_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each document';

--
-- AUTO_INCREMENT for table `g55_document_tags`
--
ALTER TABLE `g55_document_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each tag';

--
-- AUTO_INCREMENT for table `g55_parties`
--
ALTER TABLE `g55_parties`
  MODIFY `party_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each party', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g55_users`
--
ALTER TABLE `g55_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each user';

--
-- AUTO_INCREMENT for table `g56_incident_responses`
--
ALTER TABLE `g56_incident_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `g56_plan_assessments`
--
ALTER TABLE `g56_plan_assessments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `g56_responses`
--
ALTER TABLE `g56_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `g56_team_personnels`
--
ALTER TABLE `g56_team_personnels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `g56_users`
--
ALTER TABLE `g56_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `g57_first_steps`
--
ALTER TABLE `g57_first_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g57_projects`
--
ALTER TABLE `g57_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `g57_send_requests`
--
ALTER TABLE `g57_send_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `g57_tasks`
--
ALTER TABLE `g57_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `g57_users`
--
ALTER TABLE `g57_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111117;

--
-- AUTO_INCREMENT for table `g57_workers`
--
ALTER TABLE `g57_workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `g58_compliance_regulatory`
--
ALTER TABLE `g58_compliance_regulatory`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `g58_tbl_events`
--
ALTER TABLE `g58_tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g58_tbl_user`
--
ALTER TABLE `g58_tbl_user`
  MODIFY `tbl_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g59_accounts_payable`
--
ALTER TABLE `g59_accounts_payable`
  MODIFY `payable_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_accounts_recievable`
--
ALTER TABLE `g59_accounts_recievable`
  MODIFY `recievable_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_addbudget_requests`
--
ALTER TABLE `g59_addbudget_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_add_budgets_request`
--
ALTER TABLE `g59_add_budgets_request`
  MODIFY `request_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_balance_sheet`
--
ALTER TABLE `g59_balance_sheet`
  MODIFY `balance_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `g59_budgets`
--
ALTER TABLE `g59_budgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `g59_budget_plans`
--
ALTER TABLE `g59_budget_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g59_budget_requests`
--
ALTER TABLE `g59_budget_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `g59_budget_track`
--
ALTER TABLE `g59_budget_track`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `g59_cashflow_statement`
--
ALTER TABLE `g59_cashflow_statement`
  MODIFY `cashflow_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `g59_categories`
--
ALTER TABLE `g59_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `g59_departments`
--
ALTER TABLE `g59_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `g59_expense_reports`
--
ALTER TABLE `g59_expense_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g59_income_statement`
--
ALTER TABLE `g59_income_statement`
  MODIFY `income_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `g59_inventory_turnover`
--
ALTER TABLE `g59_inventory_turnover`
  MODIFY `turnover_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_optional`
--
ALTER TABLE `g59_optional`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `g59_periods`
--
ALTER TABLE `g59_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `g59_plan_categories`
--
ALTER TABLE `g59_plan_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `g59_roles`
--
ALTER TABLE `g59_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_sales_report`
--
ALTER TABLE `g59_sales_report`
  MODIFY `sales_code` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_statuses`
--
ALTER TABLE `g59_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g59_travel_expenses`
--
ALTER TABLE `g59_travel_expenses`
  MODIFY `expense_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g59_travel_requests`
--
ALTER TABLE `g59_travel_requests`
  MODIFY `travel_request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g59_types`
--
ALTER TABLE `g59_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `g59_users`
--
ALTER TABLE `g59_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g60_tickets`
--
ALTER TABLE `g60_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `g60_ticket_attachments`
--
ALTER TABLE `g60_ticket_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `g60_users`
--
ALTER TABLE `g60_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `security_questions`
--
ALTER TABLE `security_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sequence_tbl`
--
ALTER TABLE `sequence_tbl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `g51_events`
--
ALTER TABLE `g51_events`
  ADD CONSTRAINT `events_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `g51_rooms` (`id`);

--
-- Constraints for table `g52_asset_movements`
--
ALTER TABLE `g52_asset_movements`
  ADD CONSTRAINT `asset_movements_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `g52_assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asset_movements_from_space_id_foreign` FOREIGN KEY (`from_space_id`) REFERENCES `g52_spaces` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asset_movements_to_space_id_foreign` FOREIGN KEY (`to_space_id`) REFERENCES `g52_spaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `g52_reservation_records`
--
ALTER TABLE `g52_reservation_records`
  ADD CONSTRAINT `reservation_records_space_id_foreign` FOREIGN KEY (`space_id`) REFERENCES `g52_spaces` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservation_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `g52_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `g56_responses`
--
ALTER TABLE `g56_responses`
  ADD CONSTRAINT `responses_plan_assessment_id_foreign` FOREIGN KEY (`plan_assessment_id`) REFERENCES `g56_plan_assessments` (`id`);

--
-- Constraints for table `g59_accounts_payable`
--
ALTER TABLE `g59_accounts_payable`
  ADD CONSTRAINT `g59_accounts_payable_payable_category_foreign` FOREIGN KEY (`payable_category`) REFERENCES `g59_plan_categories` (`plan_category_code`),
  ADD CONSTRAINT `g59_accounts_payable_payable_department_foreign` FOREIGN KEY (`payable_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_accounts_payable_payable_type_foreign` FOREIGN KEY (`payable_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_accounts_recievable`
--
ALTER TABLE `g59_accounts_recievable`
  ADD CONSTRAINT `g59_accounts_recievable_recievable_category_foreign` FOREIGN KEY (`recievable_category`) REFERENCES `g59_plan_categories` (`plan_category_code`),
  ADD CONSTRAINT `g59_accounts_recievable_recievable_department_foreign` FOREIGN KEY (`recievable_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_accounts_recievable_recievable_type_foreign` FOREIGN KEY (`recievable_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_addbudget_requests`
--
ALTER TABLE `g59_addbudget_requests`
  ADD CONSTRAINT `g59_addbudget_requests_request_approvedby_foreign` FOREIGN KEY (`request_approvedBy`) REFERENCES `g59_users` (`username`),
  ADD CONSTRAINT `g59_addbudget_requests_request_category_foreign` FOREIGN KEY (`request_category`) REFERENCES `g59_categories` (`category_code`),
  ADD CONSTRAINT `g59_addbudget_requests_request_department_foreign` FOREIGN KEY (`request_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_addbudget_requests_request_optional_foreign` FOREIGN KEY (`request_optional`) REFERENCES `g59_optional` (`optional_code`),
  ADD CONSTRAINT `g59_addbudget_requests_request_period_foreign` FOREIGN KEY (`request_period`) REFERENCES `g59_periods` (`period_code`),
  ADD CONSTRAINT `g59_addbudget_requests_request_projectdetails_foreign` FOREIGN KEY (`request_projectDetails`) REFERENCES `g59_budget_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `g59_addbudget_requests_request_status_foreign` FOREIGN KEY (`request_status`) REFERENCES `g59_statuses` (`status_code`),
  ADD CONSTRAINT `g59_addbudget_requests_request_type_foreign` FOREIGN KEY (`request_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_add_budgets_request`
--
ALTER TABLE `g59_add_budgets_request`
  ADD CONSTRAINT `g59_add_budgets_request_request_approvedby_foreign` FOREIGN KEY (`request_approvedBy`) REFERENCES `g59_users` (`username`),
  ADD CONSTRAINT `g59_add_budgets_request_request_budget_code_foreign` FOREIGN KEY (`request_budget_code`) REFERENCES `g59_budgets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `g59_add_budgets_request_request_category_foreign` FOREIGN KEY (`request_category`) REFERENCES `g59_categories` (`category_code`),
  ADD CONSTRAINT `g59_add_budgets_request_request_department_foreign` FOREIGN KEY (`request_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_add_budgets_request_request_status_foreign` FOREIGN KEY (`request_status`) REFERENCES `g59_statuses` (`status_code`),
  ADD CONSTRAINT `g59_add_budgets_request_request_type_foreign` FOREIGN KEY (`request_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_balance_sheet`
--
ALTER TABLE `g59_balance_sheet`
  ADD CONSTRAINT `g59_balance_sheet_balance_category_foreign` FOREIGN KEY (`balance_category`) REFERENCES `g59_plan_categories` (`plan_category_code`),
  ADD CONSTRAINT `g59_balance_sheet_balance_department_foreign` FOREIGN KEY (`balance_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_balance_sheet_balance_type_foreign` FOREIGN KEY (`balance_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_budgets`
--
ALTER TABLE `g59_budgets`
  ADD CONSTRAINT `g59_budgets_budget_approvedby_foreign` FOREIGN KEY (`budget_approvedBy`) REFERENCES `g59_users` (`username`),
  ADD CONSTRAINT `g59_budgets_budget_category_foreign` FOREIGN KEY (`budget_category`) REFERENCES `g59_categories` (`category_code`),
  ADD CONSTRAINT `g59_budgets_budget_department_foreign` FOREIGN KEY (`budget_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_budgets_budget_status_foreign` FOREIGN KEY (`budget_status`) REFERENCES `g59_statuses` (`status_code`),
  ADD CONSTRAINT `g59_budgets_budget_type_foreign` FOREIGN KEY (`budget_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_budget_plans`
--
ALTER TABLE `g59_budget_plans`
  ADD CONSTRAINT `g59_budget_plans_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `g59_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `g59_budget_plans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `g59_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `g59_budget_requests`
--
ALTER TABLE `g59_budget_requests`
  ADD CONSTRAINT `g59_budget_requests_budget_approvedby_foreign` FOREIGN KEY (`budget_approvedBy`) REFERENCES `g59_users` (`username`),
  ADD CONSTRAINT `g59_budget_requests_budget_category_foreign` FOREIGN KEY (`budget_category`) REFERENCES `g59_categories` (`category_code`),
  ADD CONSTRAINT `g59_budget_requests_budget_department_foreign` FOREIGN KEY (`budget_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_budget_requests_budget_optional_foreign` FOREIGN KEY (`budget_optional`) REFERENCES `g59_optional` (`optional_code`),
  ADD CONSTRAINT `g59_budget_requests_budget_period_foreign` FOREIGN KEY (`budget_period`) REFERENCES `g59_periods` (`period_code`),
  ADD CONSTRAINT `g59_budget_requests_budget_status_foreign` FOREIGN KEY (`budget_status`) REFERENCES `g59_statuses` (`status_code`),
  ADD CONSTRAINT `g59_budget_requests_budget_type_foreign` FOREIGN KEY (`budget_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_budget_track`
--
ALTER TABLE `g59_budget_track`
  ADD CONSTRAINT `g59_budget_track_track_department_foreign` FOREIGN KEY (`track_department`) REFERENCES `g59_budgets` (`budget_department`) ON DELETE CASCADE,
  ADD CONSTRAINT `g59_budget_track_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `g59_budgets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `g59_cashflow_statement`
--
ALTER TABLE `g59_cashflow_statement`
  ADD CONSTRAINT `g59_cashflow_statement_cashflow_category_foreign` FOREIGN KEY (`cashflow_category`) REFERENCES `g59_plan_categories` (`plan_category_code`),
  ADD CONSTRAINT `g59_cashflow_statement_cashflow_department_foreign` FOREIGN KEY (`cashflow_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_cashflow_statement_cashflow_type_foreign` FOREIGN KEY (`cashflow_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_expense_reports`
--
ALTER TABLE `g59_expense_reports`
  ADD CONSTRAINT `g59_expense_reports_budget_plan_id_foreign` FOREIGN KEY (`budget_plan_id`) REFERENCES `g59_budget_plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `g59_expense_reports_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `g59_departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `g59_income_statement`
--
ALTER TABLE `g59_income_statement`
  ADD CONSTRAINT `g59_income_statement_income_category_foreign` FOREIGN KEY (`income_category`) REFERENCES `g59_plan_categories` (`plan_category_code`),
  ADD CONSTRAINT `g59_income_statement_income_department_foreign` FOREIGN KEY (`income_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_income_statement_income_type_foreign` FOREIGN KEY (`income_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_inventory_turnover`
--
ALTER TABLE `g59_inventory_turnover`
  ADD CONSTRAINT `g59_inventory_turnover_turnover_category_foreign` FOREIGN KEY (`turnover_category`) REFERENCES `g59_plan_categories` (`plan_category_code`),
  ADD CONSTRAINT `g59_inventory_turnover_turnover_department_foreign` FOREIGN KEY (`turnover_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_inventory_turnover_turnover_type_foreign` FOREIGN KEY (`turnover_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_plan_categories`
--
ALTER TABLE `g59_plan_categories`
  ADD CONSTRAINT `g59_plan_categories_category_type_foreign` FOREIGN KEY (`category_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_sales_report`
--
ALTER TABLE `g59_sales_report`
  ADD CONSTRAINT `g59_sales_report_sales_category_foreign` FOREIGN KEY (`sales_category`) REFERENCES `g59_plan_categories` (`plan_category_code`),
  ADD CONSTRAINT `g59_sales_report_sales_department_foreign` FOREIGN KEY (`sales_department`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_sales_report_sales_type_foreign` FOREIGN KEY (`sales_type`) REFERENCES `g59_types` (`type_code`);

--
-- Constraints for table `g59_travel_expenses`
--
ALTER TABLE `g59_travel_expenses`
  ADD CONSTRAINT `g59_travel_expenses_tr_track_no_foreign` FOREIGN KEY (`tr_track_no`) REFERENCES `g59_travel_requests` (`tr_track_no`),
  ADD CONSTRAINT `g59_travel_expenses_travel_request_id_foreign` FOREIGN KEY (`travel_request_id`) REFERENCES `g59_travel_requests` (`travel_request_id`),
  ADD CONSTRAINT `g59_travel_expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `g59_users` (`id`);

--
-- Constraints for table `g59_travel_requests`
--
ALTER TABLE `g59_travel_requests`
  ADD CONSTRAINT `g59_travel_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `g59_users` (`id`);

--
-- Constraints for table `g59_users`
--
ALTER TABLE `g59_users`
  ADD CONSTRAINT `g59_users_department_code_foreign` FOREIGN KEY (`department_code`) REFERENCES `g59_departments` (`department_code`),
  ADD CONSTRAINT `g59_users_role_code_foreign` FOREIGN KEY (`role_code`) REFERENCES `g59_roles` (`role_code`);

--
-- Constraints for table `g60_ticket_attachments`
--
ALTER TABLE `g60_ticket_attachments`
  ADD CONSTRAINT `ticket_attachments_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `g60_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
