-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 08:25 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kanak`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `section_name` varchar(20) NOT NULL,
  `page_name` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `section_name`, `page_name`, `content`, `modified`) VALUES
(1, 'Title', 'home', 'Hi, I am Kanak', '2021-11-23 19:28:34'),
(4, 'Home_Content', 'home', 'She is a visual and animation designer. His strength lies in his ability to use his multidisciplinary skills in interaction design, 3D animation and user interface to create purposeful and aesthetically pleasing designs/experiences to help local companies', '2021-11-23 19:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `mywork`
--

CREATE TABLE `mywork` (
  `id` int(11) NOT NULL,
  `imagepath` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `summary` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mywork`
--

INSERT INTO `mywork` (`id`, `imagepath`, `title`, `summary`) VALUES
(1, 'images\\mywork\\1.jpeg', 'My Work 1', 'Makeup branding and styling with different textures to be used for advertisement and magazine with the help of cinema 4d and photoshop.\n'),
(2, 'images\\mywork\\2.jpeg', 'My Work 2', 'Room designed with suitable textures in cinema4d. However, different light angles and used to create shadows and tried to make it realistic.\n'),
(3, 'images\\mywork\\3.jpeg', 'My Work 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto aliquid esse nihil, corrupti facere quae vitae ullam iste, consequatur molestiae praesentium ut dignissimos porro culpa. Repellendus quidem non reiciendis doloremque?Hyatt room was created for'),
(4, 'images\\mywork\\4.jpeg', 'My Work 4', 'Product designing of a cosmetic product designed in photoshop, edited in photoshop and some elements are grabbed from canva.');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `image_name` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `image_path`, `image_name`, `type`) VALUES
(1, 'images/skills/tech/html.png', '', 'program1'),
(2, 'images/skills/tech/css3-logo.png', '', 'program2'),
(3, 'images/skills/tech/mysql.jpg', '', 'program3'),
(4, 'images/skills/tech/js.png', '', 'program4'),
(5, 'images/skills/tech/php.png', '', 'program5'),
(6, 'images/skills/tools/adobe.png', '', 'tools1'),
(7, 'images/skills/tools/aftereffect.png', '', 'tools2'),
(8, 'images/skills/tools/github.png', '', 'tools3'),
(9, 'images/skills/tools/illustrator.png', '', 'tools4'),
(10, 'images/skills/tools/invision.png', '', 'tools5'),
(11, 'images/skills/tools/photoshop.png', '', 'tools6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mywork`
--
ALTER TABLE `mywork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mywork`
--
ALTER TABLE `mywork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
