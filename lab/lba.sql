-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2022 at 06:39 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lba`
--

-- --------------------------------------------------------

--
-- Table structure for table `comp_infos`
--

CREATE TABLE `comp_infos` (
  `comp_id` int(11) NOT NULL,
  `comp_name` text NOT NULL,
  `comp_email` varchar(50) NOT NULL,
  `comp_phone` int(10) DEFAULT NULL,
  `comp_website` varchar(50) DEFAULT NULL,
  `comp_desc` text NOT NULL,
  `comp_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comp_adress_nb` int(11) NOT NULL,
  `comp_adress_ext` text NOT NULL,
  `comp_adress_name` text NOT NULL,
  `comp_adress_cp` int(5) NOT NULL,
  `comp_adress_city` text NOT NULL,
  `comp_pwd` varchar(200) NOT NULL,
  `comp_categ` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_infos`
--

INSERT INTO `comp_infos` (`comp_id`, `comp_name`, `comp_email`, `comp_phone`, `comp_website`, `comp_desc`, `comp_date`, `comp_adress_nb`, `comp_adress_ext`, `comp_adress_name`, `comp_adress_cp`, `comp_adress_city`, `comp_pwd`, `comp_categ`) VALUES
(1, 'LeBlanc Légume', 'lbc@gmail.com', NULL, NULL, 'une petite entreprise', '2022-06-27 13:24:07', 1, 'rue', 'de la vouvivre', 95800, 'vincennes', '123456789', 'epicerie'),
(2, 'caserne val', 'caserneval@gmail.com', NULL, NULL, 'je mappelle val', '2022-06-28 12:48:48', 8, 'rue', 'song', 75800, 'lognes', '1223456789', 'viande'),
(5, 'c', 'd@gmail.com', 612341539, '', 'd', '2022-06-29 15:18:33', 5, 'd', 'd', 95800, 'd', '$2y$10$fCiBSTNyZjuwdjTzNArWouQZ77sTNmJN0V6mly1j87Q0SFtX4xGCu', 'charcuterie'),
(6, 'Akabe', 'akabe@gmail.com', 612341539, '', 'Nous vendons de la viande de kobe', '2022-06-29 15:24:35', 1, 'rue', 'kobe', 95800, 'cergy', '$2y$10$dTzeeaQSKVkYw0Af4Cy5i.S.RbEqz0bjbLc466cQyxZDqDgEHCWl6', 'charcuterie'),
(7, 'Le fruit de Paris', 'fp@gmail.com', 612441539, '', 'On vend des fruits ', '2022-06-29 15:36:27', 5, 'rue', 'fruit', 75008, 'paris', '$2y$10$ZgMAnnCl.iJcD5j/0WbSKOcy3HvLAi8aAaUV30CYYau76Soq5uX3S', 'epicerie'),
(8, 'Pain d\'épice', 'pe@gmail.com', 612342621, '', 'Le meilleurs pain de paris ', '2022-06-29 15:41:40', 5, 'rue', 'pain', 75019, 'paris', '$2y$10$QMAqR/IGZF84T1/hnikUMOFEVldojscsXHf2hWLN1LezLmd0oxGzy', 'boulangerie');

-- --------------------------------------------------------

--
-- Table structure for table `post_infos`
--

CREATE TABLE `post_infos` (
  `post_id` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_comp_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `post_tag` text NOT NULL,
  `post_img` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_infos`
--

INSERT INTO `post_infos` (`post_id`, `post_date`, `post_comp_id`, `post_content`, `post_tag`, `post_img`) VALUES
(3, '2022-06-29 15:26:28', 6, 'Venez gouter notre boeuf de kobe ', 'event', 'https://ericpineau.fr/wp-content/uploads/2022/03/Boeuf-de-kobe-1.jpg'),
(4, '2022-06-29 15:38:21', 7, 'Venez gouter nos fraises de saisons', 'promotion', 'https://i0.wp.com/bonpourtoi.ca/app/uploads/2021/06/BPT-Articles-fraises-quebec-tinyjpg-2.jpeg?fit=2530%2C1860&ssl=1'),
(5, '2022-06-29 15:45:30', 8, 'DU BON PAIN', 'new_article', 'https://www.maison.com/images/medias/000/054/000054924/660.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `user_id` int(11) NOT NULL,
  `user_pseudo` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pwd` varchar(200) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`user_id`, `user_pseudo`, `user_email`, `user_pwd`, `user_date`) VALUES
(1, 'noah', 'noah@gmail.com', 'noah', '2022-06-27 08:56:22'),
(2, 'senka', 'senka@gmail.com', '$2y$10$X9ZWNx373f3XPlCUm1Oy7OgO0NVxQY/mEVZ4y.N5GjjNiZPqjRvj6', '2022-06-28 17:06:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comp_infos`
--
ALTER TABLE `comp_infos`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `post_infos`
--
ALTER TABLE `post_infos`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comp_infos`
--
ALTER TABLE `comp_infos`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_infos`
--
ALTER TABLE `post_infos`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
