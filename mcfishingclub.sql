-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 05:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcfishingclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `activation_code`) VALUES
(1, 'test', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', 'test@test.com', ''),
(2, 'georja', '$2y$10$pt/I1v490gXyEhN0CTnG.O9Wk.Xt91w9Xnspm0QdxhEy5rftQBEvi', 'georja@mail.com', '62feaacb26b01'),
(3, 'georja2', '$2y$10$tXYKx3wGZm9PnU0grPAXJurRVCjYBO5rXXjOzGU/3HVlMfF3nw9jq', 'georja@mail.com', '62feab4202634');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT NULL,
  `species` varchar(20) DEFAULT NULL,
  `fisher` varchar(50) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `eventid`, `species`, `fisher`, `weight`, `date`) VALUES
(1, 5, 'Snapper', 'O Tuck', 10, '15/11/2021');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(40) NOT NULL,
  `sponsor` varchar(40) NOT NULL,
  `eventdate` text NOT NULL,
  `info` text NOT NULL,
  `formlink` varchar(100) NOT NULL,
  `linktext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `image`, `sponsor`, `eventdate`, `info`, `formlink`, `linktext`) VALUES
(1, 'COGAN\'S Chics @ the Chicks 2022', 'chicks@thechicks.jpeg', 'cogan-logo-2-300x173.jpg', 'October 22nd & 23rd 2022', '<p>This year\'s theme is \"Essential Workers\" so get your thinking caps on and put your team together for an awesome competition! </p>\r\n<p> Tickets are available to purchase either by the registration form below or over the bar at the Marsden Cove Fishing Club <br>\r\nNon Members: $70.00 <br> \r\nMembers: $60.00 <br>\r\n Juniors: $40.00 <br> \r\nDinner Tickets: $20.00</p>', 'http://localhost/mcfishingclub/admin.php', 'Chics @ the Chicks Registration Form'),
(2, 'Metalcraft/Akarana, Marsden Cove Marlin Classic 2023', 'marlin-classic-2023-poster.jpg', 'marlinsponsors.jpeg', ' <p>Briefing- 8th March 2023 6.30pm <br> <br> Fishing Days- 9th, 10th & 11th March 2023</p>', '<p>Should the weather not play the game the postponement dates are: 23th, 24th & 25th March 2023 <br> <br> A huge thank you to all our sponsors who continue to participate, in particular Metalcraft Roofing, Akarana Timbers for being part of the United Industries Group contributing $60k, without this level, prizes would not be the same, so supporting them is crucial. Also, we welcome \"Takacat\" who have sponsored a 3.0m inflatable, so much appreciated. <br> <br> Any new sponsors are all welcome, email<li><a href=\"https://www.facebook.com/paul.mccullough.98892\">Paul McCullough</a></li></p>', '', ''),
(3, 'HOOK VS SPEAR OPEN TOURNAMENT', '', 'sponsors-for-hookvsspear.jpeg', '', '<p>Unfortunately, there is currently no known information about the tournament for 2022 but we are very hopeful for it to take place next year! <br> <br> If you are a Spear Fisher and would be interested in assisting with this competition in 2023, please get in touch with us as soon as possible.</p>', '', ''),
(4, '2021 Metalcraft Marlin Classic Results', '', '', '', '<p>2021 definitely turned it on for us that\'s for sure! What an awesome event we had with 2 days of great weather and 1 day with weather that was not ideal, to say the least, but everyone got out there and made the most of what we were dealt with.\r\n\r\nWe had a total of 66 boats and 197 anglers to sell out this yearly competition.\r\n\r\nThank you to everyone involved, especially all our AMAZING Sponsors (listed below), volunteer committee members, bar staff and helpers, it would not have been possible without you all.\r\n\r\nKeep an eye out for competition details on our Facebook pages and website for next year\'s event!\r\n\r\n2021 Competition Tally:\r\n\r\n12x Striped Marlin T&R, 8x  Striped Marlin Landed, 2x Big Eye Tuna, 15x Shark T&R, 18x Kingfish T&R, 16x Kingfish Landed.</p>', '', ''),
(5, 'Open line fishing\r\n', '', '', '2022/2023', '', '', ''),
(6, 'JUNIOR LINE FISHING (16 and under)', '', '', '2022/2023', '', '', ''),
(7, 'Small Fry LINE FISHING (11 and Under)', '', '', '2022/2023', '', '', ''),
(8, 'OPEN SPEAR FISHING', '', '', '2022/2023', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `members_id` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `position` varchar(30) NOT NULL,
  `ph` varchar(20) NOT NULL,
  `startdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`members_id`, `surname`, `firstname`, `position`, `ph`, `startdate`) VALUES
(1, 'Read', 'Gary', 'President', '0274202002', '2015-02-14'),
(2, 'Walker', 'David', 'Vice President', '', '2015-01-28'),
(3, 'Bailey', 'Shirley', 'Secretary', '021744594', '2014-12-04'),
(4, 'Hedley', 'Liz', 'Treasurer', '', '2016-08-21'),
(5, 'Adams', 'David', 'Club Captain', '', '2015-04-26'),
(6, 'Read', 'Rachelle', 'Bar Manager', '0212581177', '2015-02-22'),
(7, 'Cooper', 'Phil', 'Committee Members', '', '2016-07-03'),
(8, 'Spinley', 'Aimee', '', '', '2017-06-15'),
(9, 'McCullough', 'Jackie', '', '', '2017-01-02'),
(10, 'Dickinson', 'Gaye', '', '', '2017-04-28'),
(11, 'Furlong', 'Mike', '', '', '2018-09-20'),
(12, 'Loft', 'Paul', '', '0275369023', '2018-06-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`members_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `members_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;