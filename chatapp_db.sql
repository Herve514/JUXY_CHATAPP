-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2024 at 08:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `outgoing_msg_id` varchar(300) NOT NULL,
  `incoming_msg_id` varchar(300) NOT NULL,
  `msg` varchar(2000) NOT NULL,
  `msg_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_form`
--

CREATE TABLE `users_form` (
  `id` int(11) NOT NULL,
  `user_id` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `status` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_form`
--

INSERT INTO `users_form` (`id`, `user_id`, `name`, `email`, `password`, `img`, `status`) VALUES
(5, '1480752208', 'ghost', 'weghost12@gmail.com', 'bbd8b4478ab79ae813adcc9ed7aa3ca7', 'background.jpg', 'Active Now'),
(7, '1254853102', 'mutoni', 'mutoni123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2151140105.jpg', 'Active Now'),
(9, '272206107', 'Dash', 'dash23@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'wallpaper.jpeg', 'Active Now'),
(10, '602970182', 'Shosco', 'emp42006patiance@gmail.com', '94f6d7e04a4d452035300f18b984988c', '2151140105.jpg', 'Active Now'),
(11, '1392697439', 'Olga', 'agnesolga123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'wallpaper.jpeg', 'Active Now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users_form`
--
ALTER TABLE `users_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_form`
--
ALTER TABLE `users_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
