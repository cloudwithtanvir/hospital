-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2018 at 06:49 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'password', '23-03-2018 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2018-01-11', '09:25', '2018-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2018-01-11', '14:10', '2018-01-07 08:02:58', 0, 1, ''),
(3, 'Dentist', 1, 1, 500, '2018-01-11', '09:25', '2018-01-01 00:29:02', 1, 0, ''),
(4, 'Homeopath', 4, 5, 700, '2018-01-11', '14:10', '2018-01-07 08:02:58', 0, 1, ''),
(5, 'Homeopath', 0, 0, 0, '2018-05-02', '10:20', '2018-03-27 18:32:05', 1, 0, ''),
(0, 'Cardiologist', 1, 0, 1000, '2018-02-10', '10:25', '2018-04-03 14:25:23', 1, 1, ''),
(0, 'Dermatologists ', 3, 1, 1500, '2018-04-05', '15:10', '2018-04-03 15:10:22', 1, 1, ''),
(0, 'Emergency Medicine Specialists', 0, 0, 0, '2018-04-10', '10:50', '2018-04-03 15:42:33', 1, 1, ''),
(0, 'Neurologists ', 2, 0, 2000, '2018-04-06', '10:20', '2018-04-03 16:20:05', 1, 1, ''),
(0, 'Neurologists ', 2, 0, 2000, '2018-04-20', '10:50', '2018-04-03 16:46:18', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Cardiologist', 'Dr. khan ', 'Dhaka', '1000', 1766225544, 'drkhan@gmail.com', '12345', '2017-12-29 06:25:37', '04-01-2018 01:27:51 PM'),
(2, 'Neurologists ', 'Dr Sadia', 'dhaka', '2000', 170, 'drsadia@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 14:17:03', ''),
(3, 'Dermatologists ', 'Dr sharmin', 'dhaka', '1500', 17402323, 'drsharmin@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 14:19:10', ''),
(4, 'Homeopath', 'Dr. sakib', 'dhaka', '1000', 1740, 'drsakib@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 14:20:33', ''),
(0, 'Emergency Medicine Specialists', 'Dr Sadia sharmin', 'dhaka', '1000', 258963, 'drsadiasharmin@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 15:14:10', ''),
(0, 'Homeopath', 'Dr Kamal', 'dhaka', '1000', 123456, 'drkamal@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 15:44:44', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(2, 1, 'drsadia@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 14:31:49', '03-04-2018 08:02:35 PM', 1),
(0, 0, 'drsarmin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:08:15', '03-04-2018 09:13:34 PM', 0),
(0, 3, 'drsharmin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:08:35', '03-04-2018 08:41:25 PM', 1),
(0, 3, 'drsharmin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:11:04', '', 1),
(0, 0, 'drsadiasharmin@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:43:01', '', 1),
(0, 2, 'drsadia@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 16:20:38', '03-04-2018 09:50:57 PM', 1),
(0, 2, 'drsadia@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 16:46:47', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Cardiologist', '2018-03-27 18:15:44', ''),
(2, 'Dermatologists ', '2018-03-27 18:18:02', ''),
(3, 'Emergency Medicine Specialists', '2018-03-27 18:18:43', ''),
(4, 'Family Physicians ', '2018-03-27 18:18:55', ''),
(5, 'Neurologists ', '2018-03-27 18:19:26', ''),
(6, 'Homeopath', '2018-03-27 18:23:56', ''),
(0, 'medicine', '2018-04-03 15:44:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'riyad@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 14:34:39', '03-04-2018 08:40:36 PM', 1),
(0, 0, 'tanvirewu32@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:09:26', '03-04-2018 10:16:23 PM', 0),
(0, 1, 'riyad@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:09:41', '', 1),
(0, 0, 'tanvirewu32@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:41:48', '', 1),
(0, 0, 'tanvirewu32@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 15:48:59', '', 1),
(0, 0, 'tanvir@gmailcom', 0x3a3a3100000000000000000000000000, '2018-04-03 16:19:19', '', 1),
(0, 0, 'tanvirewu32@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 16:42:18', '', 0),
(0, 0, 'tanvirahmed@gmail.com', 0x3a3a3100000000000000000000000000, '2018-04-03 16:45:39', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'riyad', 'dhaka', 'dhaka', 'male', 'riyad@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 14:22:26', ''),
(0, 'tanvir ahmed', 'dhaka', 'dhaka', 'male', 'tanvirewu32@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 15:41:35', ''),
(0, 'tanvir ahmed', 'dhaka', 'dhaka', 'male', 'tanvir@gmailcom', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 16:19:02', ''),
(0, 'tanvir ahmed', 'dhaka', 'dhaka', 'male', 'tanvirahmed@gmail.com', 'bcb759b5b8ab63b06295c7434345d7a5', '2018-04-03 16:45:23', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
