-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2024 at 06:12 PM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u888210524_seziure_deck`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `community_support`
--

CREATE TABLE `community_support` (
  `did` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Comment` text NOT NULL,
  `date_time` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `community_support`
--

INSERT INTO `community_support` (`did`, `name`, `Comment`, `date_time`, `uid`) VALUES
(3, 'TestUser123', 'hi', '2024-01-06 12:41:49', 1),
(4, 'TestUser123', 'bha', '2024-01-06 13:23:40', 1),
(5, 'TestUser123', 'hi', '2024-01-06 13:24:17', 1),
(6, 'hamza', 'hi hamza here', '2024-01-06 13:27:03', 13),
(7, 'hamza', 'hi', '2024-01-06 13:47:40', 13),
(8, 'TestUser123', 'hi', '2024-01-06 14:04:27', 1),
(9, 'TestUser123', 'hi', '2024-01-06 14:05:22', 1),
(10, 'TestUser123', 'gggg', '2024-01-06 14:05:26', 1),
(11, 'TestUser123', 'gggggggggggg', '2024-01-06 14:05:45', 1),
(12, 'TestUser123', 'ho', '2024-01-06 14:08:07', 1),
(13, 'TestUser123', 'hi', '2024-01-07 15:43:02', 1),
(14, 'TestUser123', 'hi', '2024-01-09 12:08:19', 1),
(15, 'hamza', 'hi', '2024-01-12 22:02:22', 13),
(16, 'hamza', 'kese ho', '2024-01-12 22:02:32', 13),
(17, 'hamza', 'hff', '2024-01-13 00:56:39', 13),
(18, 'TestUser123', 'hi', '2024-01-13 11:33:49', 1),
(19, 'TestUser123', 'hi', '2024-01-13 11:33:54', 1),
(20, 'TestUser123', 'hello ', '2024-01-13 11:33:59', 1),
(21, 'TestUser123', 'AOA ', '2024-01-13 11:34:34', 1),
(22, 'TestUser123', 'hi', '2024-01-20 11:28:40', 1),
(23, 'TestUser123', 'hello bhawesh', '2024-01-20 11:28:50', 1),
(24, 'TestUser123', 'hi', '2024-01-20 11:29:04', 1),
(25, 'TestUser123', 'hi', '2024-01-20 11:29:13', 1),
(26, 'TestUser123', 'new', '2024-01-26 12:12:33', 1),
(27, 'TestUser123', 'hi', '2024-01-27 11:56:27', 1),
(28, 'hamza', 'gfcc', '2024-02-02 04:31:55', 13),
(29, 'hamza', 'hello bhawesh', '2024-02-29 19:50:08', 13),
(30, 'hamza', 'seziure', '2024-02-29 19:50:32', 13),
(35, 'TestUser123', 'no ', '2024-03-18 19:44:13', 1),
(36, 'TestUser123', 'hiii', '2024-03-18 23:49:55', 1),
(37, 'TestUser123', 'hi new', '2024-03-19 00:20:49', 1),
(38, 'TestUser123', 'hi', '2024-03-19 00:28:44', 1),
(39, 'TestUser123', 'abc new', '2024-03-19 00:29:13', 1),
(40, 'TestUser123', '', '2024-03-19 00:43:01', 1),
(41, 'TestUser123', 'g', '2024-03-19 00:44:59', 1),
(42, 'TestUser123', 'gh', '2024-03-19 00:46:00', 1),
(43, 'TestUser123', 'gg', '2024-03-19 00:50:29', 1),
(44, 'TestUser123', 'ghj', '2024-03-19 00:57:24', 1),
(45, 'hamza', 'testing', '2024-03-27 01:55:34', 13),
(46, 'TestUser123', '', '2024-03-27 21:02:34', 1),
(47, 'TestUser123', '', '2024-03-27 21:02:35', 1),
(48, 'TestUser123', '', '2024-03-27 21:02:35', 1),
(49, 'TestUser123', '', '2024-03-27 21:02:35', 1),
(50, 'TestUser123', '', '2024-03-27 21:02:36', 1),
(51, 'TestUser123', '', '2024-03-27 21:02:36', 1),
(52, 'TestUser123', '', '2024-03-27 21:02:36', 1),
(53, 'TestUser123', '', '2024-03-27 21:02:35', 1),
(54, 'TestUser123', '', '2024-03-27 21:02:36', 1),
(55, 'TestUser123', '', '2024-03-27 21:02:37', 1),
(56, 'TestUser123', '', '2024-03-27 21:02:36', 1),
(57, 'TestUser123', '', '2024-03-27 21:02:37', 1),
(58, 'TestUser123', '', '2024-03-27 21:02:37', 1),
(59, 'TestUser123', '', '2024-03-27 21:02:37', 1),
(60, 'TestUser123', '', '2024-03-27 21:02:37', 1),
(61, 'TestUser123', '', '2024-03-27 21:02:38', 1),
(62, 'TestUser123', '', '2024-03-27 21:02:38', 1),
(63, 'TestUser123', '', '2024-03-27 21:02:38', 1),
(64, 'TestUser123', '', '2024-03-27 21:02:38', 1),
(65, 'TestUser123', '', '2024-03-27 21:02:39', 1),
(66, 'TestUser123', '', '2024-03-27 21:02:39', 1),
(67, 'TestUser123', '', '2024-03-27 21:02:40', 1),
(68, 'TestUser123', '', '2024-03-27 21:02:40', 1),
(69, 'TestUser123', '', '2024-03-27 21:02:41', 1),
(70, 'TestUser123', '', '2024-03-27 21:02:41', 1),
(71, 'TestUser123', '', '2024-03-27 21:02:42', 1),
(72, 'TestUser123', '', '2024-03-27 21:02:42', 1),
(73, 'TestUser123', '', '2024-03-27 21:02:42', 1),
(74, 'TestUser123', '', '2024-03-27 21:02:43', 1),
(75, 'TestUser123', '', '2024-03-27 21:02:43', 1),
(76, 'TestUser123', '', '2024-03-27 21:02:43', 1),
(77, 'TestUser123', '', '2024-03-27 21:02:44', 1),
(78, 'TestUser123', '', '2024-03-27 21:02:49', 1),
(79, 'TestUser123', '', '2024-03-27 21:02:49', 1),
(80, 'TestUser123', '', '2024-03-27 21:02:49', 1),
(81, 'TestUser123', '', '2024-03-27 21:05:22', 1),
(82, 'TestUser123', '', '2024-03-27 21:05:22', 1),
(83, 'TestUser123', '', '2024-03-27 21:05:22', 1),
(84, 'TestUser123', '', '2024-03-27 21:05:23', 1),
(85, 'TestUser123', '', '2024-03-27 21:05:23', 1),
(86, 'TestUser123', '', '2024-03-27 21:05:23', 1),
(87, 'TestUser123', '', '2024-03-27 21:05:23', 1),
(88, 'TestUser123', '', '2024-03-27 21:05:25', 1),
(89, 'TestUser123', '', '2024-03-27 21:05:46', 1),
(90, 'TestUser123', '', '2024-03-27 21:05:47', 1),
(91, 'TestUser123', '', '2024-03-27 21:05:47', 1),
(92, 'TestUser123', '', '2024-03-27 21:05:50', 1),
(93, 'TestUser123', '', '2024-03-27 21:05:53', 1),
(94, 'TestUser123', '', '2024-03-27 21:05:53', 1),
(95, 'TestUser123', '', '2024-03-27 21:05:53', 1),
(96, 'TestUser123', '', '2024-03-27 21:05:53', 1),
(97, 'TestUser123', '', '2024-03-27 21:05:53', 1),
(98, 'TestUser123', '', '2024-03-27 21:05:54', 1),
(99, 'TestUser123', '', '2024-03-27 21:05:54', 1),
(100, 'TestUser123', '', '2024-03-27 21:05:54', 1),
(101, 'TestUser123', '', '2024-03-27 21:05:58', 1),
(102, 'TestUser123', '', '2024-03-27 21:05:58', 1),
(103, 'TestUser123', '', '2024-03-27 21:05:59', 1),
(104, 'TestUser123', '', '2024-03-27 21:05:59', 1),
(105, 'TestUser123', '', '2024-03-27 21:05:59', 1),
(106, 'TestUser123', '', '2024-03-27 21:05:59', 1),
(107, 'TestUser123', '', '2024-03-27 21:06:00', 1),
(108, 'TestUser123', '', '2024-03-27 21:06:00', 1),
(109, 'TestUser123', '', '2024-03-27 21:06:00', 1),
(110, 'TestUser123', '', '2024-03-27 21:06:01', 1),
(111, 'hamza', 'hello', '2024-06-27 12:36:16', 13),
(112, 'TestUser123', 'hi', '2024-07-02 10:15:55', 1),
(113, 'TestUser123', '1', '2024-07-02 10:16:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pmdc_no` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `availability_days` varchar(255) NOT NULL,
  `availability_time` varchar(255) NOT NULL,
  `working_address` text NOT NULL,
  `optional_working_address` text DEFAULT NULL,
  `cnic` bigint(20) NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `name`, `pmdc_no`, `contact_no`, `email`, `password`, `availability_days`, `availability_time`, `working_address`, `optional_working_address`, `cnic`, `specialization`) VALUES
(3, 'Nofil', 'ABCD-1234', '03222058602', 'nofilraheel1@gmail.com', 'Nofil2019', 'Monday, Wednesday, Friday ', '6.00 to 9.00pm', 'Karachi Admin Society ', '', 42301017699, ''),
(6, 'Hamza', 'ABC123', '03222058602', 'hamza1234@gmail.com', 'Hamza', 'Monday, Wednesday, Friday ', '6.00 to 9.00pm', 'Karachi Admin Society ', '', 12345678901, 'Neurosurgeon ');

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `eid` int(11) NOT NULL,
  `e_name` varchar(255) NOT NULL,
  `Type` enum('Cardio','Tai Chi','Yoga','') NOT NULL,
  `Shoulder` tinyint(1) NOT NULL,
  `Chest` tinyint(1) NOT NULL,
  `Back` tinyint(1) NOT NULL,
  `Arms` tinyint(1) NOT NULL,
  `Abs` tinyint(1) NOT NULL,
  `Legs` tinyint(1) NOT NULL,
  `difficulty` enum('Easy','Moderate','Hard','') NOT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`eid`, `e_name`, `Type`, `Shoulder`, `Chest`, `Back`, `Arms`, `Abs`, `Legs`, `difficulty`, `link`) VALUES
(25, 'Wuji Stance', 'Tai Chi', 0, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/jO0Y8e9phHg?si=6StrjD3VdI_hRUsC'),
(26, 'Bow Stance', 'Tai Chi', 0, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/cjHIo4WZhEg?si=fdqzeboyABMpUgvl'),
(29, 'HorseBack Riding Stance', 'Tai Chi', 0, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/mT8FbCZOyFo?si=WRjxCiEtwee3E2Qt'),
(30, 'Empty Cat Stance', 'Tai Chi', 0, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/g0cZiQYTt2Q?si=XW4RBtwO80Xn2ZT5'),
(31, 'Crane Stance', 'Tai Chi', 0, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/cJV8KHhrOrc?si=M9H1qaTB-tV6fx0U'),
(32, 'Mountain Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/2HTvZp5rPrg?si=CqPiJTyihbd2rNiT'),
(33, 'Chair Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(36, 'Warrior 2', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(37, 'Triangle Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(38, 'Tree Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(39, 'Bridge Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(40, 'Bound Ankle Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(41, 'Seated Forward Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(42, 'Corpse Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Easy', ''),
(43, 'Plank Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(44, 'Four Limbed Staff Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(47, 'Upward Facing Dog Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(48, 'Half Moon Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(49, 'Warrior 1', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(50, 'Warrior 3', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(51, 'Intense Side Stretch', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(52, 'Dolphin Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(53, 'Bow Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(54, 'Camel Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(55, 'Side Plank', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(56, 'Revolved Triangle Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Moderate', ''),
(57, 'Boat Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Hard', ''),
(58, 'Crow Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Hard', ''),
(61, 'Wheel Pose', 'Yoga', 0, 0, 0, 0, 0, 0, 'Hard', ''),
(62, 'Wall Assisted Handstand', 'Yoga', 0, 0, 0, 0, 0, 0, 'Hard', ''),
(63, 'Wall Assisted Forearm Stand', 'Yoga', 0, 0, 0, 0, 0, 0, 'Hard', ''),
(64, 'Headstand', 'Yoga', 0, 0, 0, 0, 0, 0, 'Hard', ''),
(65, 'Shoulder Stand', 'Yoga', 0, 0, 0, 0, 0, 0, 'Hard', ''),
(66, 'Jumping Jacks', 'Cardio', 1, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/nGaXj3kkmrU?feature=shared'),
(67, 'High Knees', 'Cardio', 1, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/ZNDHivUg7vA?feature=shared'),
(68, 'Shadow Boxing', 'Cardio', 1, 0, 0, 1, 0, 0, 'Easy', 'https://youtu.be/J4j3AOVWuHE?feature=shared'),
(69, 'Shoulder Taps', 'Cardio', 1, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/TvZNJ5U0Sjs?feature=shared'),
(70, 'Plank to Alterating Arm Raise', 'Cardio', 1, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/tA0au5tGN6o?feature=shared'),
(71, 'Plank Walkouts', 'Cardio', 1, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/Ao-nV3IdINQ?si=nerMCILAwlMObHry'),
(72, 'Overhead Press', 'Cardio', 1, 0, 0, 0, 0, 0, 'Easy', 'https://youtu.be/nMuOM7OjuA0?si=w-6XIdj7eAvSeYW5'),
(73, 'Mountain Climbers', 'Cardio', 1, 1, 1, 1, 1, 1, 'Easy', 'https://youtu.be/NNk7uJcCZGg?si=7b5PkxmnDD3WbeNs'),
(74, 'Butterfly Stroke', 'Cardio', 0, 0, 1, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(75, 'Rowing', 'Cardio', 1, 0, 1, 1, 0, 1, 'Easy', 'youtube.com/asdjh1'),
(76, 'Deadlifts', 'Cardio', 0, 0, 1, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(77, 'Lat Pulldowns', 'Cardio', 0, 0, 1, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(78, 'Good Morning', 'Cardio', 0, 0, 1, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(79, 'Superman Exercise', 'Cardio', 0, 0, 1, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(80, 'Burpees', 'Cardio', 1, 1, 1, 1, 1, 1, 'Easy', 'https://youtu.be/r6MBg8-FlD4?si=2GndFCjQntBugX2z'),
(81, 'Jogging', 'Cardio', 0, 1, 0, 0, 0, 1, 'Easy', 'youtube.com/asdjh1'),
(82, 'Jump Rope', 'Cardio', 0, 1, 0, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(83, 'Push-up', 'Cardio', 0, 1, 0, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(84, 'Chest flyes', 'Cardio', 0, 1, 0, 0, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(85, 'Medicine Ball Slams', 'Cardio', 0, 1, 0, 0, 0, 0, 'Easy', 'https://youtu.be/QxYhFwMd1Ks?feature=shared'),
(86, 'Battle Ropes', 'Cardio', 0, 0, 0, 1, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(87, 'Kickboxing', 'Cardio', 0, 0, 0, 1, 1, 1, 'Easy', 'youtube.com/asdjh1'),
(88, 'Tricep Dips', 'Cardio', 0, 0, 0, 1, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(89, 'Towel Bicep Curls', 'Cardio', 0, 0, 0, 1, 0, 0, 'Easy', 'youtube.com/asdjh1'),
(90, 'Bicule Crunches', 'Cardio', 0, 0, 0, 0, 1, 0, 'Easy', 'youtube.com/asdjh1'),
(91, 'Plank Jacks', 'Cardio', 0, 0, 0, 0, 1, 0, 'Easy', 'youtube.com/asdjh1'),
(92, 'Russain Twists', 'Cardio', 0, 0, 0, 0, 1, 0, 'Easy', 'https://youtu.be/4zfmnZfw_54?si=NosuzSQWeT0S1kdr'),
(93, 'Leg Raises', 'Cardio', 0, 0, 0, 0, 1, 0, 'Easy', 'youtube.com/asdjh1'),
(94, 'Sit-Ups', 'Cardio', 0, 0, 0, 0, 1, 0, 'Easy', 'youtube.com/asdjh1'),
(95, 'Windshield Wipers', 'Cardio', 0, 0, 0, 0, 1, 0, 'Easy', 'youtube.com/asdjh1'),
(96, 'Side Planks', 'Cardio', 0, 0, 0, 0, 1, 0, 'Easy', 'youtube.com/asdjh1'),
(97, 'Jump Squats', 'Cardio', 0, 0, 0, 0, 0, 1, 'Easy', 'https://youtu.be/odaV3EshuPQ?si=kR4ypW64X5SmjScA'),
(98, 'Lunge Jumps', 'Cardio', 0, 0, 0, 0, 0, 1, 'Easy', 'youtube.com/asdjh1'),
(99, 'Box Jumps', 'Cardio', 0, 0, 0, 0, 0, 1, 'Easy', 'youtube.com/asdjh1'),
(100, 'Cycling', 'Cardio', 0, 0, 0, 0, 0, 1, 'Easy', 'youtube.com/asdjh1'),
(101, 'Jump Squats', 'Cardio', 0, 0, 0, 0, 0, 1, 'Easy', 'youtube.com/asdjh1'),
(102, 'Step-Ups', 'Cardio', 0, 0, 0, 0, 0, 1, 'Easy', 'youtube.com/asdjh1'),
(103, 'Wall Sits', 'Cardio', 0, 0, 0, 0, 0, 1, 'Easy', 'youtube.com/asdjh1');

-- --------------------------------------------------------

--
-- Table structure for table `exercise_plan`
--

CREATE TABLE `exercise_plan` (
  `plan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `exercise_plan`
--

INSERT INTO `exercise_plan` (`plan_id`, `user_id`, `e_id`, `duration`) VALUES
(1001, 1, 25, 3),
(1002, 1, 30, 3),
(1003, 1, 29, 3),
(1004, 1, 26, 3),
(1005, 1, 31, 3),
(1006, 13, 25, 3),
(1007, 13, 31, 3),
(1008, 13, 30, 3),
(1009, 13, 26, 3),
(1010, 13, 29, 3),
(1054, 6, 40, 3),
(1055, 6, 32, 3),
(1056, 6, 41, 3),
(1057, 6, 39, 3),
(1058, 23, 83, 3),
(1059, 23, 78, 3),
(1060, 23, 89, 3),
(1061, 23, 80, 3),
(1062, 23, 90, 3),
(1063, 23, 72, 3),
(1064, 23, 68, 3),
(1065, 23, 73, 3),
(1066, 23, 84, 3),
(1067, 23, 85, 3),
(1068, 23, 97, 3),
(1069, 23, 98, 3),
(1070, 23, 81, 3),
(1071, 23, 69, 3),
(1072, 23, 101, 3),
(1073, 23, 79, 3),
(1074, 23, 91, 3),
(1075, 23, 95, 3),
(1076, 23, 100, 3),
(1077, 23, 87, 3),
(1078, 23, 88, 3),
(1079, 23, 66, 3),
(1080, 23, 76, 3),
(1081, 23, 67, 3),
(1082, 23, 70, 3),
(1083, 23, 71, 3),
(1084, 23, 94, 3),
(1085, 23, 103, 3),
(1086, 23, 82, 3),
(1087, 23, 86, 3),
(1088, 23, 99, 3),
(1089, 23, 74, 3),
(1090, 23, 96, 3),
(1091, 23, 102, 3),
(1092, 23, 93, 3),
(1093, 23, 92, 3),
(1094, 23, 77, 3),
(1095, 23, 75, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_list`
--

CREATE TABLE `hospital_list` (
  `hid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `reviews` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `inid` int(11) NOT NULL,
  `title` text NOT NULL,
  `resource` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`inid`, `title`, `resource`) VALUES
(0, 'First Aid: Choking Child', 'https://www.youtube.com/watch?v=GymXjJJ7Ugo&ab_channel=BritishRedCross'),
(1, 'Epilepsy - first aid and safety', 'https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/epilepsy-first-aid-and-safety'),
(2, 'FirstAid', 'https://www.sja.org.uk/get-advice/first-aid-advice/seizures/seizures-in-adults/'),
(3, 'First Aid', 'https://www.youtube.com/watch?v=yQgih6KAwLU&ab_channel=StJohnAmbulance'),
(4, 'First Aid', 'https://www.youtube.com/watch?v=8kYJughJXbs&ab_channel=RhesusMedicine');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `mid` int(11) NOT NULL,
  `uid` int(50) NOT NULL,
  `mName` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `time` datetime NOT NULL,
  `mType` enum('Syrup','Tablets','Syringe','') NOT NULL,
  `dosage` double(50,0) NOT NULL,
  `frequency` enum('Everyday','Every X days','Days of Week','Any') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`mid`, `uid`, `mName`, `date`, `time`, `mType`, `dosage`, `frequency`) VALUES
(1, 1, 'brufene', '2023-11-12 00:00:00', '2024-03-08 19:14:42', 'Syrup', 0, NULL),
(2, 1, 'panadol', '2023-11-12 00:00:00', '2024-03-08 19:14:42', 'Tablets', 0, NULL),
(3, 4, 'johar joshanda', '2023-11-15 00:00:00', '2024-03-08 15:15:43', 'Syrup', 0, NULL),
(4, 13, 'Panadol', '2023-12-28 00:00:00', '2024-03-08 04:12:32', 'Tablets', 1, NULL),
(567, 13, 'panadol', '2023-12-31 00:00:00', '2024-03-08 04:55:57', 'Syringe', 3, 'Every X days'),
(568, 2, 'panadol', '2023-11-12 00:00:00', '2024-03-08 19:14:42', 'Syrup', 1, 'Everyday'),
(569, 6, 'joshanda', '2023-11-12 00:00:00', '2024-03-08 19:14:42', 'Tablets', 1, 'Everyday'),
(570, 7, 'panadol2', '2023-11-12 00:00:00', '2024-03-08 19:14:42', 'Tablets', 1, 'Everyday'),
(587, 7, 'panadol2', '2023-11-12 00:00:00', '2024-03-08 19:14:42', 'Tablets', 3, 'Everyday'),
(588, 10, 'panadol5', '2024-02-06 00:00:00', '2024-03-08 19:14:45', 'Syrup', 3, 'Every X days'),
(589, 10, 'panadol10', '2024-02-06 00:00:00', '2024-03-08 19:14:45', 'Syrup', 3, 'Every X days');

-- --------------------------------------------------------

--
-- Table structure for table `seizure_diary`
--

CREATE TABLE `seizure_diary` (
  `sid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `seizure_diary`
--

INSERT INTO `seizure_diary` (`sid`, `date`, `uid`, `latitude`, `longitude`) VALUES
(1, '2024-01-06 03:37:33', 1, 67.8, 24.6),
(2, '2024-01-06 03:38:44', 1, 24.8685, 67.1925),
(3, '2024-01-17 19:29:41', 1, 63.22, 67.4),
(4, '2024-01-17 20:09:04', 1, 24.8684, 67.1925),
(5, '2024-01-17 22:18:18', 1, 24.8684, 67.1925),
(6, '2024-01-26 12:06:41', 1, 24.8685, 67.1925),
(7, '2024-01-26 12:06:41', 1, 24.8685, 67.1925),
(8, '2024-01-26 15:13:10', 1, 24.8684, 67.1925),
(9, '2024-01-27 12:31:05', 1, 24.8396, 67.0822),
(10, '2024-01-28 16:16:27', 1, 24.8861, 67.0335),
(11, '2024-02-22 20:58:15', 1, 24.8685, 67.1925);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `email`, `password`, `dob`, `location`) VALUES
(1, 'TestUser123', 'test@gmail.com', '123456789', '2013-11-04', 'abcdsjdaojwdlak'),
(2, 'test', 'Test@gmail.com', 'test', '2013-11-04', 'Karachi'),
(3, 'hpnew', 'hpnew@test.com', 'hpnew', '2023-11-01', 'karachi'),
(4, 'Iqra', 'iqra@test.com', 'iqra', '2023-11-01', 'karachi'),
(6, 'sfjjqs', '', 'jytiul', '2023-11-17', 'hyqflu'),
(7, 'hbdedy', 'khaofj', 'dscorw', '2023-11-17', 'azskfw'),
(8, 'sfjjqs', '', 'jytiul', '2023-11-22', 'hyqflu'),
(9, 'qlwkec', 'inzhjk', 'zspisa', '2023-11-07', 'hyqflu'),
(10, 'qlwkec', 'inzhjk', 'zspisa', '2023-11-07', 'hyqflu'),
(11, 'jytiul', '', 'hyqflu', '2023-11-25', 'sfjjqs'),
(13, 'hamza', 'hamza@gmail.com', 'hamza', '2001-12-18', 'karachi'),
(23, 'Nofil', 'nofilraheel1@gmail.com', 'Nofil2019', '0000-00-00', 'Karachi'),
(24, 'Nofil', 'nofilraheel1@gmail.com', 'Nofil2019', '0000-00-00', 'Karachi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_support`
--
ALTER TABLE `community_support`
  ADD PRIMARY KEY (`did`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`),
  ADD UNIQUE KEY `pmdc_no` (`pmdc_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cnic` (`cnic`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `exercise_plan`
--
ALTER TABLE `exercise_plan`
  ADD PRIMARY KEY (`plan_id`),
  ADD KEY `e_id` (`e_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hospital_list`
--
ALTER TABLE `hospital_list`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `medi_rem` (`uid`);

--
-- Indexes for table `seizure_diary`
--
ALTER TABLE `seizure_diary`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulances`
--
ALTER TABLE `ambulances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `community_support`
--
ALTER TABLE `community_support`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `exercise_plan`
--
ALTER TABLE `exercise_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1096;

--
-- AUTO_INCREMENT for table `hospital_list`
--
ALTER TABLE `hospital_list`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT for table `seizure_diary`
--
ALTER TABLE `seizure_diary`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `community_support`
--
ALTER TABLE `community_support`
  ADD CONSTRAINT `community_support_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `exercise_plan`
--
ALTER TABLE `exercise_plan`
  ADD CONSTRAINT `exercise_plan_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `exercise` (`eid`),
  ADD CONSTRAINT `exercise_plan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`);

--
-- Constraints for table `medication`
--
ALTER TABLE `medication`
  ADD CONSTRAINT `medi_rem` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `seizure_diary`
--
ALTER TABLE `seizure_diary`
  ADD CONSTRAINT `seizure_diary_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
