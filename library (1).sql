-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 09:28 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `contact`, `email`, `pic`) VALUES
(1, 'miss', 'lili', 'kelie', 's', '123344', 'asdf@gmail.com', 'download.jfif'),
(2, 'sa', 'li', 'sali', 'sas', '1345678', 'asdfg@gmail.com', 'p.jpg'),
(3, 'sas', 'ers', 'sandy', '123', '1234', 'sas@gmail.com', 'p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`) VALUES
(1, 'principles of computer science', 'V.K Mehta,Bonit', '3rd', 'not-available', 2, 'computer science'),
(2, 'The computer reference', 'Herbert schildt', '4th', 'Available', 2, 'computer science'),
(3, 'Data Structure', 'Seymour Lioschutz', '4th', 'Available', 2, 'Electronic'),
(4, 'java', 'mr.likii', '4th', 'Available', 2, 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`) VALUES
(9, 'uuyfd', 'Can you tell me when the book s will be available in the library?'),
(10, 'sazz', 'I want to borrow 3 books'),
(11, 'Admin', 'sazz what book do you want?'),
(12, 'Admin', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `returned` varchar(100) NOT NULL,
  `day` int(50) NOT NULL,
  `fine` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`username`, `bid`, `returned`, `day`, `fine`, `status`) VALUES
('uuyfd', 1, '2020-07-23', 153, 15.3, 'not paid'),
('uuyfd', 1, '2020-07-23', 153, 15.3, 'not paid'),
('uuyfd', 2, '2020-08-18', 179, 17.9, 'not paid'),
('sazz', 4, '2020-08-18', 179, 17.9, 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('uuyfd', 3, 'yes', '2020-07-20', '2020-08-20'),
('uuyfd', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2020-01-20', '2020-02-20'),
('uuyfd', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2020-01-19', '2020-02-20'),
('uuyfd', 3, 'yes', '2020-07-20', '2020-08-20'),
('uuyfd', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2020-01-20', '2020-02-20'),
('uuyfd', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2020-01-20', '2020-02-20'),
('uuyfd', 4, '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', '2020-06-19', '2020-07-19'),
('sazz', 4, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2020-01-20', '2020-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `username`, `message`, `status`, `sender`) VALUES
(1, 'uuyfd', 'hii', 'yes', 'student'),
(3, 'uuyfd', 'hello', 'yes', 'admin'),
(4, 'sazz', 'hello', 'yes', 'student'),
(5, 'sazz', 'hii', 'no', 'admin'),
(6, 'sazz', 'how are you', 'no', 'admin'),
(7, 'uuyfd', 'hey', 'yes', 'admin'),
(8, 'sazz', 'hello', 'no', 'admin'),
(9, 'uuyfd', 'hiii', 'no', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `contact`, `email`, `pic`) VALUES
('dyty', 'cgrst', 'dgt gfhff', 'werfh', 167738, 'gjgg@gmail.com', 'p.jpg'),
('dil', 'zoyza', 'uuyfd', 't', 12345, 'dtryyk', 'download (1).jfif'),
('dtr', 'hjyf', 'yfrrtttxj', 'gyut', 123, 'iuy', 'p.jpg'),
('saz', 'li', 'sazz', 's', 9853678, 'saz@gmail.com', 'p.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
