-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 02:53 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social-network`
--

-- --------------------------------------------------------

--
-- Table structure for table `clikestats`
--

CREATE TABLE `clikestats` (
  `clikeid` int(4) NOT NULL,
  `cid` int(4) NOT NULL,
  `rid` int(4) NOT NULL,
  `likestatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clikestats`
--

INSERT INTO `clikestats` (`clikeid`, `cid`, `rid`, `likestatus`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 2, 3, 1),
(10, 2, 4, 1),
(11, 3, 1, 0),
(12, 3, 2, 1),
(13, 3, 3, 0),
(14, 3, 4, 1),
(15, 3, 5, 0),
(16, 3, 6, 1),
(17, 5, 1, 1),
(18, 6, 2, 1),
(19, 6, 5, 1),
(20, 20, 2, 1),
(21, 19, 2, 1),
(22, 18, 2, 1),
(23, 17, 2, 1),
(24, 16, 2, 1),
(25, 15, 2, 1),
(26, 14, 2, 1),
(27, 13, 2, 1),
(28, 12, 2, 1),
(29, 11, 2, 1),
(30, 23, 8, 1),
(31, 23, 7, 1),
(32, 24, 2, 1),
(33, 24, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(4) NOT NULL,
  `pid` int(4) NOT NULL,
  `ccontent` text NOT NULL,
  `rid` int(4) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `pid`, `ccontent`, `rid`, `time`) VALUES
(1, 1, 'welcome to fb, i am ishan h', 2, '2016-08-01 23:46:26'),
(2, 1, 'Thanks', 1, '2016-08-01 23:46:26'),
(3, 1, 'Milan here, good to see you.', 3, '2016-08-01 23:46:26'),
(4, 3, 'welcom ishan h, ishan l here', 4, '2016-08-01 23:46:26'),
(5, 3, 'Thanks.', 2, '2016-08-01 23:46:26'),
(6, 4, 'Hello milan, utsav here', 6, '2016-08-01 23:50:19'),
(7, 4, 'utsav, study, you have exams.', 3, '2016-08-01 23:50:19'),
(8, 5, 'Nobody gives a damn', 1, '2016-08-01 23:50:19'),
(9, 3, 'Commenting on my own post.', 2, '2016-08-01 23:51:24'),
(10, 4, 'Commenting on my own post.', 3, '2016-08-01 23:51:24'),
(11, 1, 'comment on pid 1 abhishek raval.', 1, '2016-08-02 06:56:39'),
(12, 2, 'comment on pid 2 abhishek raval.', 1, '2016-08-02 06:56:39'),
(13, 3, 'comment on pid 3 abhishek raval.', 1, '2016-08-02 06:56:39'),
(14, 4, 'comment on pid 4 by abhishek raval.', 1, '2016-08-02 06:56:39'),
(15, 5, 'comment on pid 5 by abhishek raval.', 1, '2016-08-02 06:56:39'),
(16, 6, 'comment on pid 6 by abhishek raval.', 1, '2016-08-02 06:56:39'),
(17, 7, 'comment on pid 7 by abhishek raval.', 1, '2016-08-02 06:56:39'),
(18, 8, 'comment on pid 8 by abhishek raval.', 1, '2016-08-02 06:56:39'),
(19, 9, 'comment on pid 9 by abhishek raval.', 1, '2016-08-02 06:56:39'),
(20, 10, 'comment on pid 10 by abhishek raval.', 1, '2016-08-02 06:56:39'),
(21, 20, 'welcome \r\n-abhi(univ grp)', 1, '2016-08-02 08:32:41'),
(22, 21, 'welcome \r\n-abhi(univ grp)', 1, '2016-08-02 08:32:41'),
(23, 22, 'Welcome\r\n-abhi(quant prep grp)', 1, '2016-08-02 08:34:20'),
(24, 23, 'Welcome\r\n-abhi(quant prep grp)', 1, '2016-08-02 08:34:20'),
(25, 24, 'Welcome\r\n-abhi(quant prep grp)', 1, '2016-08-02 08:34:20'),
(26, 25, 'Welcome\r\n-abhi(quant prep grp)', 1, '2016-08-02 08:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `creategroup`
--

CREATE TABLE `creategroup` (
  `gid` int(4) NOT NULL,
  `rid` int(4) NOT NULL,
  `grpname` varchar(40) NOT NULL,
  `grpinfo` varchar(200) NOT NULL,
  `grptype` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creategroup`
--

INSERT INTO `creategroup` (`gid`, `rid`, `grpname`, `grpinfo`, `grptype`, `date`) VALUES
(1, 1, 'University Selection Talks', 'All about selecting appropriate universities for doing M.S. ', 'Secret', '2016-08-02 01:37:33'),
(2, 8, 'Pokemon GO FANS', 'This groups is about tricks and tips for all the pokemon GO players.', 'Public', '2016-08-02 01:37:33'),
(3, 2, 'Blogging Talks', 'Here you can discuss about, how to blog & tips to improve blog rankings.', 'Secret', '2016-08-02 01:58:19'),
(4, 3, 'GATE Civil Engineering', 'Here people share all the information about civil engineering stuff, especially helpful for them, who are preparing for gate.', 'Closed', '2016-08-02 01:58:19'),
(5, 1, 'Quant Preparation', 'Helpful to all who are preparing for quantitative aptitude.', 'Public', '2016-08-02 02:02:13'),
(6, 4, 'Game Designing', 'Game Designing group, you can post about game designing tutorials, and knowledgeable stuff.', 'Closed', '2016-08-02 02:02:13'),
(7, 5, 'Harvard Students', 'All about life at harvard and your experience.', 'Secret', '2016-08-02 02:04:16'),
(8, 6, 'CAD/CAM', 'all about CAD/CAM.', 'Public', '2016-08-02 02:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `groupmembers`
--

CREATE TABLE `groupmembers` (
  `gmid` int(4) NOT NULL,
  `gid` int(4) NOT NULL,
  `rid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupmembers`
--

INSERT INTO `groupmembers` (`gmid`, `gid`, `rid`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 4),
(5, 2, 8),
(6, 1, 2),
(7, 3, 1),
(8, 3, 2),
(9, 3, 4),
(10, 4, 3),
(11, 5, 1),
(12, 5, 2),
(13, 5, 3),
(14, 5, 4),
(15, 5, 7),
(16, 5, 8),
(17, 6, 4),
(18, 6, 6),
(19, 7, 5),
(20, 8, 6),
(21, 8, 7),
(22, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `grouposts`
--

CREATE TABLE `grouposts` (
  `grppid` int(4) NOT NULL,
  `gid` int(4) NOT NULL,
  `pid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grouposts`
--

INSERT INTO `grouposts` (`grppid`, `gid`, `pid`) VALUES
(1, 1, 12),
(2, 2, 13),
(3, 3, 14),
(4, 4, 15),
(5, 5, 16),
(6, 6, 17),
(7, 7, 18),
(8, 8, 19),
(9, 1, 20),
(10, 1, 21),
(11, 5, 22),
(12, 5, 23),
(13, 5, 24),
(14, 5, 25),
(15, 5, 26);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `intid` int(4) NOT NULL,
  `rid` int(4) NOT NULL,
  `interest` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`intid`, `rid`, `interest`) VALUES
(1, 1, 'Volleyball'),
(2, 1, 'Football'),
(3, 1, 'Cricket'),
(4, 2, 'coding'),
(5, 2, 'php'),
(6, 3, 'gate'),
(7, 3, 'civil structures'),
(8, 4, 'game engine'),
(9, 4, 'game designing'),
(10, 5, 'Harvard'),
(11, 5, 'basketball'),
(12, 6, 'cricket'),
(13, 6, 'Chatting'),
(14, 7, 'timepas'),
(15, 7, 'tution'),
(16, 8, 'facebook'),
(17, 8, 'snapchat');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `logid` int(4) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ostatus` tinyint(1) NOT NULL,
  `rid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`logid`, `email`, `password`, `ostatus`, `rid`) VALUES
(1, 'abhishek.raval@gmail.com', 'abhiabhi', 1, 1),
(2, 'ishanh@gmail.com', 'ishanishan', 1, 2),
(3, 'milan@gmail.com', 'milanmilan', 0, 3),
(4, 'ishanl@gmail.com', 'ishanishan', 1, 4),
(5, 'tirth@gmail.com', 'tptp', 0, 5),
(6, 'utsav@gmail.com', 'udud', 0, 6),
(7, 'raj@studychess.com', 'rajraj', 0, 7),
(8, 'vish@gmail.com', 'vishvish', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `plikestats`
--

CREATE TABLE `plikestats` (
  `plikeid` int(4) NOT NULL,
  `pid` int(4) NOT NULL,
  `rid` int(4) NOT NULL,
  `likestatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='0= unliked, 1= liked';

--
-- Dumping data for table `plikestats`
--

INSERT INTO `plikestats` (`plikeid`, `pid`, `rid`, `likestatus`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 2, 1, 0),
(10, 2, 2, 1),
(11, 2, 3, 0),
(12, 2, 4, 1),
(13, 2, 5, 0),
(14, 2, 6, 1),
(15, 2, 7, 0),
(16, 2, 8, 1),
(17, 3, 1, 1),
(18, 4, 1, 1),
(19, 5, 1, 1),
(20, 6, 1, 1),
(21, 12, 1, 1),
(22, 13, 1, 1),
(23, 14, 1, 1),
(24, 15, 3, 1),
(25, 16, 1, 1),
(26, 17, 4, 1),
(27, 18, 5, 1),
(28, 19, 6, 1),
(29, 26, 4, 1),
(30, 20, 4, 0),
(31, 20, 7, 0),
(32, 16, 5, 0),
(33, 23, 3, 0),
(34, 23, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(4) NOT NULL,
  `pcontent` text NOT NULL,
  `rid` int(4) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `pcontent`, `rid`, `time`) VALUES
(1, 'rid1- first\r\nhello, I am abhishek raval-rid1 , this is my first ever post.', 1, '2016-08-01 23:26:13'),
(2, 'rid1- second\r\nhello, I am abhishek raval-rid1 , this is my Second ever post.', 1, '2016-08-01 23:26:13'),
(3, 'rid2 - first\r\nhello, I am ishan h -ri2 , this is my first ever post.', 2, '2016-08-01 23:31:15'),
(4, 'rid3 - first\r\nhello, I am milan pandya rid3 , this is my first ever post.', 3, '2016-08-01 23:31:15'),
(5, 'rid4 - first\r\nhello, I am ishan l- rid4 , this is my first ever post.', 4, '2016-08-01 23:31:15'),
(6, 'rid 5 - first\r\nhello, I am tirth patel  rid 5, this is my first ever post.', 5, '2016-08-01 23:36:01'),
(7, 'rid 6 - first\r\nhello, I am utsav desai rid 6, this is my first ever post.', 6, '2016-08-01 23:37:45'),
(8, 'rid 7 - first\r\nhello, I am raj mistry rid 7, this is my first ever post.', 7, '2016-08-01 23:37:45'),
(9, 'rid 8 - first\r\nhello, I am vish trivedi rid 8, this is my first ever post.', 8, '2016-08-01 23:39:22'),
(10, 'rid 8 - second\r\nhello, I am vish trivedi ir rid 8, this is my first ever post.', 8, '2016-08-01 23:39:22'),
(11, 'rid 8 - third\r\nhello, I am vish trivedi rid 8, this is my third post.', 8, '2016-08-01 23:40:17'),
(12, 'Welcome to university selection group\r\n-abhishek raval', 1, '2016-08-02 07:54:10'),
(13, 'Welcome to  pokemon go group.\r\n-vish trivedi', 8, '2016-08-02 07:54:10'),
(14, 'Welcome to blogging talks group.\r\n-ishan h patel', 2, '2016-08-02 07:54:10'),
(15, 'welcome to Gate civil engineering group\r\n-milan pandya', 3, '2016-08-02 07:54:10'),
(16, 'Quant preparation group welcomes you, prepare well, happy learning.\r\n- Abhishek Raval', 1, '2016-08-02 07:54:10'),
(17, 'Welcome to game designing group.\r\n- ishan l patel', 4, '2016-08-02 07:54:10'),
(18, 'I am alone in this harvard group :D\r\n-tp', 5, '2016-08-02 07:54:10'),
(19, 'Welcome to cad/cam group', 6, '2016-08-02 07:54:10'),
(20, 'thanks for adding me in university group.\r\nishan h patel', 2, '2016-08-02 07:55:12'),
(21, 'thanks for adding me in university group.\r\nishan l patel', 4, '2016-08-02 07:55:12'),
(22, 'thanks for adding me in quant prepn group\r\n-ishan h', 2, '2016-08-02 07:56:40'),
(23, 'thanks for adding me in quant prepn group\r\n-Milan', 3, '2016-08-02 07:56:40'),
(24, 'thanks for adding me in quant prepn group\r\n-ishan l', 4, '2016-08-02 07:56:40'),
(25, 'thanks for adding me in quant prepn group\r\n-raj', 7, '2016-08-02 07:56:40'),
(26, 'thanks for adding me in quant prepn group\r\n-vish', 8, '2016-08-02 07:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `rid` int(4) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`rid`, `fname`, `lname`, `gender`, `dob`) VALUES
(1, 'abhishek', 'raval', 'male', '1996-04-11'),
(2, 'ishan h', 'patel', 'male', '1995-02-05'),
(3, 'milan', 'pandya', 'male', '1996-05-26'),
(4, 'ishan L', 'patel', 'male', '1995-08-11'),
(5, 'Tirth', 'Patel', 'male', '1995-10-24'),
(6, 'Utsav ', 'Desai', 'Male', '1996-08-17'),
(7, 'Raj', 'Mistry', 'Male', '1995-12-20'),
(8, 'Vishvesh', 'trivedi', 'male', '1996-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `send_requests`
--

CREATE TABLE `send_requests` (
  `reqid` int(4) NOT NULL,
  `send_id` int(4) NOT NULL,
  `rec_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `send_requests`
--

INSERT INTO `send_requests` (`reqid`, `send_id`, `rec_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 1, 6),
(6, 1, 7),
(7, 1, 8),
(8, 2, 3),
(9, 2, 4),
(10, 2, 5),
(11, 2, 6),
(12, 2, 7),
(13, 2, 8),
(14, 3, 4),
(15, 3, 5),
(16, 3, 6),
(17, 3, 7),
(18, 3, 8),
(19, 4, 5),
(20, 4, 6),
(21, 4, 7),
(22, 4, 8),
(23, 5, 6),
(24, 5, 7),
(25, 5, 8),
(26, 6, 7),
(27, 6, 8),
(28, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `viewfriends`
--

CREATE TABLE `viewfriends` (
  `vfid` int(4) NOT NULL,
  `profileid` int(4) NOT NULL,
  `friendsid` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `viewfriends`
--

INSERT INTO `viewfriends` (`vfid`, `profileid`, `friendsid`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 1, 6),
(6, 1, 7),
(7, 1, 8),
(8, 2, 3),
(9, 2, 4),
(10, 2, 5),
(11, 2, 7),
(12, 3, 4),
(13, 3, 6),
(14, 4, 5),
(15, 4, 6),
(16, 4, 7),
(17, 4, 8),
(18, 6, 7),
(19, 6, 8),
(20, 5, 7),
(21, 2, 1),
(22, 3, 1),
(23, 4, 1),
(24, 5, 1),
(25, 6, 1),
(26, 7, 1),
(27, 8, 1),
(28, 3, 2),
(29, 4, 2),
(30, 5, 2),
(31, 7, 2),
(32, 4, 3),
(33, 6, 3),
(34, 5, 4),
(35, 6, 4),
(36, 7, 4),
(37, 8, 4),
(38, 7, 6),
(39, 8, 6),
(40, 7, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clikestats`
--
ALTER TABLE `clikestats`
  ADD PRIMARY KEY (`clikeid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `creategroup`
--
ALTER TABLE `creategroup`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `groupmembers`
--
ALTER TABLE `groupmembers`
  ADD PRIMARY KEY (`gmid`),
  ADD KEY `gid` (`gid`),
  ADD KEY `rid` (`rid`),
  ADD KEY `rid_2` (`rid`);

--
-- Indexes for table `grouposts`
--
ALTER TABLE `grouposts`
  ADD PRIMARY KEY (`grppid`),
  ADD KEY `gid` (`gid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`intid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `plikestats`
--
ALTER TABLE `plikestats`
  ADD PRIMARY KEY (`plikeid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `send_requests`
--
ALTER TABLE `send_requests`
  ADD PRIMARY KEY (`reqid`),
  ADD KEY `send_id` (`send_id`),
  ADD KEY `rec_id` (`rec_id`);

--
-- Indexes for table `viewfriends`
--
ALTER TABLE `viewfriends`
  ADD PRIMARY KEY (`vfid`),
  ADD KEY `profileid` (`profileid`),
  ADD KEY `friendsid` (`friendsid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clikestats`
--
ALTER TABLE `clikestats`
  MODIFY `clikeid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `creategroup`
--
ALTER TABLE `creategroup`
  MODIFY `gid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groupmembers`
--
ALTER TABLE `groupmembers`
  MODIFY `gmid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `grouposts`
--
ALTER TABLE `grouposts`
  MODIFY `grppid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `intid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `logid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `plikestats`
--
ALTER TABLE `plikestats`
  MODIFY `plikeid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `rid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `send_requests`
--
ALTER TABLE `send_requests`
  MODIFY `reqid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `viewfriends`
--
ALTER TABLE `viewfriends`
  MODIFY `vfid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clikestats`
--
ALTER TABLE `clikestats`
  ADD CONSTRAINT `comment key` FOREIGN KEY (`cid`) REFERENCES `comment` (`cid`),
  ADD CONSTRAINT `regtstn id` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `postid` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`),
  ADD CONSTRAINT `username` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `creategroup`
--
ALTER TABLE `creategroup`
  ADD CONSTRAINT `user regid` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `groupmembers`
--
ALTER TABLE `groupmembers`
  ADD CONSTRAINT `grp id` FOREIGN KEY (`gid`) REFERENCES `creategroup` (`gid`),
  ADD CONSTRAINT `rid reg` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `grouposts`
--
ALTER TABLE `grouposts`
  ADD CONSTRAINT `grps id` FOREIGN KEY (`gid`) REFERENCES `creategroup` (`gid`),
  ADD CONSTRAINT `posts id` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`);

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
  ADD CONSTRAINT `userid` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `user` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `plikestats`
--
ALTER TABLE `plikestats`
  ADD CONSTRAINT `post id` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`),
  ADD CONSTRAINT `regs id` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `uiid` FOREIGN KEY (`rid`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `send_requests`
--
ALTER TABLE `send_requests`
  ADD CONSTRAINT `rec rid` FOREIGN KEY (`rec_id`) REFERENCES `registration` (`rid`),
  ADD CONSTRAINT `send rid` FOREIGN KEY (`send_id`) REFERENCES `registration` (`rid`);

--
-- Constraints for table `viewfriends`
--
ALTER TABLE `viewfriends`
  ADD CONSTRAINT `hisfriends rid` FOREIGN KEY (`friendsid`) REFERENCES `registration` (`rid`),
  ADD CONSTRAINT `profies rid` FOREIGN KEY (`profileid`) REFERENCES `registration` (`rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
