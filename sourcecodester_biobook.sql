-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 02:09 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_biobook`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(100) NOT NULL,
  `post_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content_comment` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `name`, `content_comment`, `image`, `created`) VALUES
(3, '5', '2', 'Mark Anthony Monaya', 'cute ah', 'upload/6.jpg', ''),
(4, '1', '2', 'Mark Anthony Monaya', 'cute pre ah .ikaw na gd na..', 'upload/6.jpg', ''),
(5, '2', '2', 'Mark Anthony Monaya', 'bkud tnie qng nka upod ka pre..', 'upload/6.jpg', ''),
(6, '2', '1', 'Rolyn Jasper Demerin', 'mayu pre buh .nd mn b puedi pre .ok lang na ah', 'upload/rolyn.jpg', ''),
(7, '2', '1', 'Rolyn Jasper Demerin', 'hehehe. :d', 'upload/rolyn.jpg', ''),
(8, '1', '1', 'Rolyn Jasper Demerin', 'wahaha . ayus pre ah', 'upload/rolyn.jpg', ''),
(11, '3', '2', 'Mark Anthony Monaya', 'pra mai ma comment mn sa pp mu..', 'upload/6.jpg', ''),
(12, '3', '2', 'Mark Anthony Monaya', 'pra mai ma comment mn sa pp mu..', 'upload/6.jpg', ''),
(13, '7', '2', 'Mark Anthony Monaya', 'wahaha', 'upload/6.jpg', ''),
(14, '7', '2', 'Mark Anthony Monaya', 'dkfjfj', 'upload/6.jpg', ''),
(15, '7', '2', 'Mark Anthony Monaya', 'ok na?', 'upload/6.jpg', '1413322175'),
(16, '8', '2', 'Mark Anthony Monaya', 'ok mn pre?', 'upload/6.jpg', '1413322623'),
(18, '9', '2', 'Mark Anthony Monaya', 'kk', 'upload/6.jpg', '1413323909'),
(19, '9', '2', 'Mark Anthony Monaya', 'kjbhkj', 'upload/6.jpg', '1413323915'),
(20, '9', '2', 'Mark Anthony Monaya', 'jbnjnb', 'upload/6.jpg', '1413323921'),
(21, '11', '5', 'janobe sourcecode', 'sad', 'upload/img_6993_gallery__5cac08eb3f426.jpg', '1605570528'),
(22, '11', '5', 'janobe sourcecode', 'asd', 'upload/img_6993_gallery__5cac08eb3f426.jpg', '1605570531'),
(23, '10', '5', 'janobe sourcecode', 'sad', 'upload/img_6993_gallery__5cac08eb3f426.jpg', '1605575090');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `photo_id` int(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`photo_id`, `location`, `user_id`, `date_added`) VALUES
(1, 'upload/10355746_10201322838071324_4012919269830340563_n.jpg', '1', '2014-10-13 01:11:07'),
(2, 'upload/1554634_934733823220509_3613827536046659520_n.jpg', '3', '2014-10-13 01:12:00'),
(3, 'upload/10009346_637081149680216_1873786828_n.jpg', '3', '2014-10-13 01:22:41'),
(4, 'upload/10409409_812993662052447_8357350814467004075_n.jpg', '3', '2014-10-13 01:28:18'),
(5, 'upload/1391735_10201428940032137_674307711_n.jpg', '3', '2014-10-13 01:28:23'),
(6, 'upload/988842_777445008951996_1989282849_n.jpg', '3', '2014-10-13 01:51:59'),
(7, 'upload/2.jpg', '1', '2014-10-13 06:00:08'),
(8, 'upload/10.jpg', '2', '2014-10-14 07:34:19'),
(9, 'upload/covernirolyn.jpg', '1', '2014-10-14 18:51:36'),
(10, 'upload/covernimark.jpg', '2', '2014-10-14 18:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `post_image`, `content`, `created`) VALUES
(1, '1', 'upload/postnirolyn.jpg', 'cute mark ai?', ''),
(2, '2', 'upload/boracaycmark.jpg', 'sa boracay kmi n pre...wahahhaa.. @Rolyn', ''),
(3, '1', 'upload/rolyn.jpg', '...ayus ai? pp qn bla', ''),
(9, '2', 'upload/8.jpg', 'ok mn?', '1413322666'),
(10, '2', 'upload/7.jpg', 'ok mn n?', '1413322682'),
(11, '5', 'upload/2020-11-16 (2).png', 'sadasd', '1605570522');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `username2` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password2` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `cover_picture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `username`, `username2`, `birthday`, `gender`, `number`, `email`, `email2`, `password`, `password2`, `profile_picture`, `cover_picture`) VALUES
(1, 'Rolyn Jasper', 'Demerin', 'revengeHatred', 'revengeHatred', '13/November/1995', 'male', '09989781348', 'rolyn02@gmail.com', 'rolyn02@gmail.com', '12345', '12345', 'upload/rolyn.jpg', 'upload/covernirolyn.jpg'),
(2, 'Mark Anthony', 'Monaya', 'bobaytot11', 'bobaytot111', '1995-11-13', 'Male', '09989781346', 'markmonaya@gmail.com', 'markmonaya@gmail.com', '123456', '123456', 'upload/6.jpg', 'upload/covernimark.jpg'),
(3, 'Jhonalyn', 'Montero', 'jho_phet', 'jho_phet', '14/June/1996', 'female', '09285444196', 'jho_montero@gmail.com', 'jho_montero@gmail.com', 'jhopeta', 'jhopeta', 'upload/400076_2586928959209_1713686254_n.jpg', ''),
(4, 'Shaira', 'Gaston', 'djBatman', 'djBatman', '1/January/1901', 'female', '09989781356', 'shaira_gaston@gmail.com', 'shaira_gaston@gmail.com', '1234567', '1234567', 'upload/1554634_934733823220509_3613827536046659520_n.jpg', ''),
(5, 'janobe', 'sourcecode', 'admin', 'admin', '1/January/1901', 'male', '09305235022', 'janobe@gmail.com', 'janobe@gmail.com', 'admin', 'admin', 'upload/img_6993_gallery__5cac08eb3f426.jpg', 'upload/nacpan-beach-el-nido-4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `photo_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
