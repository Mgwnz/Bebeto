-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 05:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(27, 9, 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Allium', 'Allium'),
(6, 'Cruciferous', 'Cruciferous'),
(7, 'Edible plant stem', 'Edible plant stem'),
(8, 'Leafy green', 'Leafy green'),
(9, 'Marrow', 'Marrow'),
(10, 'Root', 'Root');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(21, 11, 30, 1),
(22, 12, 32, 1),
(23, 13, 31, 1),
(24, 14, 35, 1),
(25, 15, 35, 1),
(26, 16, 31, 1),
(27, 17, 31, 1),
(28, 18, 31, 1),
(29, 19, 31, 1),
(30, 20, 31, 1),
(31, 21, 31, 1),
(32, 22, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 5, 'garlic', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Beatae&nbsp;itaque&nbsp;voluptate&nbsp;ipsam&nbsp;sed,&nbsp;perspiciatis&nbsp;facilis&nbsp;omnis&nbsp;nihil&nbsp;voluptatibus&nbsp;minima&nbsp;hic&nbsp;molestias&nbsp;veniam&nbsp;suscipit&nbsp;sequi&nbsp;laborum&nbsp;voluptatum&nbsp;ipsa&nbsp;cumque&nbsp;quae&nbsp;nulla!</p>\r\n', 'garlic', 500, 'garlic.jpg', '2020-11-30', 1),
(31, 5, 'onion', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Beatae&nbsp;itaque&nbsp;voluptate&nbsp;ipsam&nbsp;sed,&nbsp;perspiciatis&nbsp;facilis&nbsp;omnis&nbsp;nihil&nbsp;voluptatibus&nbsp;minima&nbsp;hic&nbsp;molestias&nbsp;veniam&nbsp;suscipit&nbsp;sequi&nbsp;laborum&nbsp;voluptatum&nbsp;ipsa&nbsp;cumque&nbsp;quae&nbsp;nulla!</p>\r\n', 'onion', 300, 'onion.jpg', '2020-12-01', 3),
(32, 5, 'shallot', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Beatae&nbsp;itaque&nbsp;voluptate&nbsp;ipsam&nbsp;sed,&nbsp;perspiciatis&nbsp;facilis&nbsp;omnis&nbsp;nihil&nbsp;voluptatibus&nbsp;minima&nbsp;hic&nbsp;molestias&nbsp;veniam&nbsp;suscipit&nbsp;sequi&nbsp;laborum&nbsp;voluptatum&nbsp;ipsa&nbsp;cumque&nbsp;quae&nbsp;nulla!</p>\r\n', 'shallot', 400, 'shallot.jpg', '2020-11-30', 1),
(33, 6, 'broccoli', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Beatae&nbsp;itaque&nbsp;voluptate&nbsp;ipsam&nbsp;sed,&nbsp;perspiciatis&nbsp;facilis&nbsp;omnis&nbsp;nihil&nbsp;voluptatibus&nbsp;minima&nbsp;hic&nbsp;molestias&nbsp;veniam&nbsp;suscipit&nbsp;sequi&nbsp;laborum&nbsp;voluptatum&nbsp;ipsa&nbsp;cumque&nbsp;quae&nbsp;nulla!</p>\r\n', 'broccoli', 500, 'broccoli.jpg', '2020-11-28', 1),
(34, 6, 'cabbage', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Beatae&nbsp;itaque&nbsp;voluptate&nbsp;ipsam&nbsp;sed,&nbsp;perspiciatis&nbsp;facilis&nbsp;omnis&nbsp;nihil&nbsp;voluptatibus&nbsp;minima&nbsp;hic&nbsp;molestias&nbsp;veniam&nbsp;suscipit&nbsp;sequi&nbsp;laborum&nbsp;voluptatum&nbsp;ipsa&nbsp;cumque&nbsp;quae&nbsp;nulla!</p>\r\n', 'cabbage', 500, 'cabbage.jpg', '2020-12-01', 10),
(35, 6, 'cauliflower', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Beatae&nbsp;itaque&nbsp;voluptate&nbsp;ipsam&nbsp;sed,&nbsp;perspiciatis&nbsp;facilis&nbsp;omnis&nbsp;nihil&nbsp;voluptatibus&nbsp;minima&nbsp;hic&nbsp;molestias&nbsp;veniam&nbsp;suscipit&nbsp;sequi&nbsp;laborum&nbsp;voluptatum&nbsp;ipsa&nbsp;cumque&nbsp;quae&nbsp;nulla!</p>\r\n', 'cauliflower', 300, 'cauliflower.jpg', '2020-11-30', 3),
(36, 6, 'Cooked-Brussels-Sprouts', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet,&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Beatae&nbsp;itaque&nbsp;voluptate&nbsp;ipsam&nbsp;sed,&nbsp;perspiciatis&nbsp;facilis&nbsp;omnis&nbsp;nihil&nbsp;voluptatibus&nbsp;minima&nbsp;hic&nbsp;molestias&nbsp;veniam&nbsp;suscipit&nbsp;sequi&nbsp;laborum&nbsp;voluptatum&nbsp;ipsa&nbsp;cumque&nbsp;quae&nbsp;nulla!</p>\r\n', 'cooked-brussels-sprouts', 400, 'cooked-brussels-sprouts.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(11, 9, '1738229', '2020-11-30'),
(12, 9, '1738558', '2020-11-30'),
(13, 9, '1738581', '2020-11-30'),
(14, 9, '1738596', '2020-11-30'),
(15, 9, '1738660', '2020-11-30'),
(16, 9, '1738662', '2020-11-30'),
(17, 9, '1738674', '2020-11-30'),
(18, 9, '1738749', '2020-11-30'),
(19, 9, '1738757', '2020-11-30'),
(20, 9, '1738794', '2020-11-30'),
(21, 9, '1738807', '2020-11-30'),
(22, 9, '334833468', '2020-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(13, 'espoir@gmail.com', '$2y$10$YLmtAndVYzv0RYc4ibNem.iuLC64YqoMQAsxmfwOipDaOD6PIbbXu', 0, 'yuhi', 'espoir', '', '', '', 1, 'lfLJwcO6tTQB', '', '2021-01-03'),
(14, 'aimable@gmail.com', '$2y$10$Y5kVL.WHhYybQ7HAZyt15OID6Werm0JZ7su9wfIlKdWSClCrKjony', 1, 'byishimo', 'aimable', '', '', '', 1, 'GvonRCbAyE43', '', '2021-01-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
