SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_wbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `owners_id` int(10) NOT NULL,
  `prev` varchar(20) NOT NULL,
  `pres` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `owners_id`, `prev`, `pres`, `price`, `date`) VALUES
(1, 1, '56', '78', '10', '16/02/04 03:28:20'),
(2, 1, '78', '67', '10', '16/02/04 03:42:03'),
(3, 1, '67', '67', '0', '16/02/04 03:52:51'),
(4, 1, '67', '80', '130', '16/02/04 03:53:44'),
(5, 1, '80', '100', '200', '16/02/04 03:54:19'),
(6, 1, '100', '500', '4000', '16/02/04 08:15:33'),
(7, 2, '122', '500', '3780', '18/09/11 14:23:49'),
(8, 3, '100', '01', '-990', '18/09/17 16:18:21'),
(9, 1, '500', '600', '1000', '20/10/28 22:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(10) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `mi` varchar(2) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `lname`, `fname`, `mi`, `address`, `contact`) VALUES
(1, 'Obeng', 'kwamena', '90', 'Tesano', '0654100235'),
(2, 'Owsus', 'Harry', '22', 'Kwashiman', '7515396522'),
(3, 'Amofa', 'Andrea', '54', 'Achimota', '5454542222'),
(4, 'Kusi', 'Famfareba', '22', 'North Legon', '8521479645'),
(5, 'Bamful', 'Winifred', '63', 'Osu RE', '852541000'),
(6, 'Dadson', 'Wilson', '52', 'Dansoman', '8524796320'),
(7, 'Tepkor', 'Isabella', '26', 'Teshie', '5552121200'),
(8, 'Boatemaa', 'Chantel', '22', 'Chorkor', '3020201050'),
(9, 'Komla', 'Joseph', '10', 'Madina', '2021555550'),
(10, 'Owusu', 'Isaac', '36', 'Lapaz', '0255585429'),
(11, 'Depkor', 'James', '26', 'Weija', '359518522'),
(12, 'Yakubu', 'Samira', '36', 'Malam', '7520003600'),
(13, 'Otu', 'Michael', '31', 'Ablekuma', '2225558889'),
(14, 'Ocloo', 'John', '22', 'Tesano', '8520258410'),
(15, 'Obeng', 'Henry', '25', 'East Legon', '7182934565'),
(16, 'Frimpong', 'Samuel', '23', 'Kokomlemle', '8051590000');

-- --------------------------------------------------------

--
-- Table structure for table `tempo_bill`
--

CREATE TABLE `tempo_bill` (
  `id` int(11) NOT NULL,
  `Prev` varchar(40) NOT NULL,
  `Client` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempo_bill`
--

INSERT INTO `tempo_bill` (`id`, `Prev`, `Client`) VALUES
(1, '600', 'Obeng'),
(2, '500', 'Owsus'),
(3, '100', 'Amofa'),
(4, '100', 'Kusi'),
(5, '100', 'Bamful'),
(6, '100', 'Dadson'),
(7, '100', 'Tepkor'),
(8, '100', 'Boatemaa'),
(9, '100', 'Komla'),
(10, '100', 'Owusu'),
(11, '100', 'Depkor'),
(12, '100', 'Yakubu'),
(13, '100', 'Otu'),
(14, '100', 'Ocloo'),
(15, '100', 'Obeng'),
(16, '100', 'Frimpong');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`) VALUES
(4, 'admin', 'admin', 'Harry Den'),
(8, 'demo', 'demo', 'Biden Eric'),
(9, 'markden', 'code0', 'Mark Den'),
(10, 'christine', 'code0', 'Christine Grey');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userlevel` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `username`, `password`, `userlevel`) VALUES
(1, 'admin', 'admin', '1'),
(2, 'user2', 'user2', '2'),
(3, 'user3', 'user3', '3'),
(4, 'user4', 'user4', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempo_bill`
--
ALTER TABLE `tempo_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tempo_bill`
--
ALTER TABLE `tempo_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
