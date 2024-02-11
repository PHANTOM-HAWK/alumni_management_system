-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 03:51 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Alumni_Active` ()  NO SQL
select * from tbluser where status='active'$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Alumni_Premium` ()  NO SQL
Select * from tbluser where membershiptype='premium'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `locid` int(11) NOT NULL,
  `location` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`locid`, `location`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Karnataka'),
(3, 'Kerala'),
(4, 'Madhya Pradesh'),
(5, 'Tamil Nadu'),
(6, 'Telangana');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adminid` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `apassword` varchar(20) NOT NULL,
  `contactno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`adminid`, `fullname`, `emailid`, `apassword`, `contactno`) VALUES
(1, 'Velumani', 'velumani2296@gmail.com', 'velu', '9738779899');

-- --------------------------------------------------------

--
-- Table structure for table `tblalumnimeet`
--

CREATE TABLE `tblalumnimeet` (
  `eventid` int(11) NOT NULL,
  `event_name` varchar(150) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `description` text NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblalumnimeet`
--

INSERT INTO `tblalumnimeet` (`eventid`, `event_name`, `loc`, `event_date`, `event_time`, `description`, `status`) VALUES
(1, 'Guruvandana', 'Shirva', '2015-10-03', '10:00:00', 'Guruvandana Programme', 'Inactive'),
(2, 'Alumni Meeting', 'Shirva', '2017-04-13', '15:30:00', 'Annual General Body Meeting', 'Inactive'),
(3, 'New Year 2020', 'BMS College of Engineering, Bangalore', '2020-01-01', '00:00:00', 'BMS college cordially invites you and your friends.', 'Active'),
(4, 'Parva 2K20', 'Basavangudi, Bangalore', '2020-04-06', '18:00:00', 'We request the pleasure of your company to attend this Parva 2K20.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblalumniphoto`
--

CREATE TABLE `tblalumniphoto` (
  `photoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `profilepic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblalumniphoto`
--

INSERT INTO `tblalumniphoto` (`photoid`, `userid`, `profilepic`) VALUES
(1, 9, 'noimage.png'),
(2, 10, 'noimage.png'),
(3, 11, '25638ad.jpg'),
(4, 12, '15001ad.jpg'),
(5, 13, '32299ev.jpg'),
(6, 14, '6295no-user-image.png'),
(7, 15, '10884no-user-image.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `cid` int(11) NOT NULL,
  `cname` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `cno` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `courseid` int(11) NOT NULL,
  `coursename` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`courseid`, `coursename`) VALUES
(9, 'Civil Engineering'),
(10, 'Computer Science and Engineering'),
(11, 'Electronics and Communication Engineering'),
(12, 'Electrical & Electronics Engineering'),
(13, 'Mechanical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `tblfund`
--

CREATE TABLE `tblfund` (
  `fundid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paiddate` date NOT NULL,
  `remarks` text NOT NULL,
  `userid` int(11) NOT NULL,
  `paytype` varchar(20) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `cardno` varchar(16) NOT NULL,
  `cvv` int(4) NOT NULL,
  `exp_month` int(11) NOT NULL,
  `exp_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfund`
--

INSERT INTO `tblfund` (`fundid`, `amount`, `paiddate`, `remarks`, `userid`, `paytype`, `bankname`, `cardno`, `cvv`, `exp_month`, `exp_year`) VALUES
(1, '50000.00', '2017-03-01', 'Donation', 2, 'Debit Card', 'Canara', '7847589625135478', 658, 5, 2020),
(2, '2014.00', '2001-03-17', 'Donation', 1, 'Creditcard', 'sbi', '9874589654789214', 123, 1, 2018),
(3, '200000.00', '2002-03-17', 'g', 1, 'Creditcard', 'canara', '7894578412587595', 654, 8, 2017),
(4, '50000.00', '2023-03-17', 'Scholarship', 1, 'Creditcard', 'SBI', '1234567891234567', 123, 9, 2021),
(5, '12000.00', '2024-03-17', 'sdas', 12, 'Creditcard', 'SBI', '8520562417896321', 852, 2, 2017),
(6, '10000.00', '2024-03-17', 'dcdc', 12, 'Debitcard', 'sas', '3698521478963214', 852, 1, 2017),
(7, '10000.00', '2024-03-17', 'ithjgijji', 12, 'Creditcard', 'dr333', '1236547412365896', 789, 2, 2017),
(8, '10000.00', '2024-03-17', 'hdjhjd111', 12, 'Debitcard', 'hjk', '7412589632587412', 963, 2, 2017),
(9, '500.00', '2015-11-19', 'For education', 1, 'Debitcard', 'Kotak', '4452211123451231', 111, 1, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `tblfundinterest`
--

CREATE TABLE `tblfundinterest` (
  `fundinvestid` int(11) NOT NULL,
  `investedfor` varchar(250) NOT NULL,
  `note` text NOT NULL,
  `investeddate` date NOT NULL,
  `iamount` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfundinterest`
--

INSERT INTO `tblfundinterest` (`fundinvestid`, `investedfor`, `note`, `investeddate`, `iamount`) VALUES
(1, 'Scholarship', 'To  academic toppers ', '2017-03-10', 20000.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `gid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`gid`, `eventid`, `photo`) VALUES
(1, 1, 'gallery/BMS.jpg'),
(2, 1, 'gallery/parva2018.jpg'),
(3, 1, 'gallery/president.jpg'),
(5, 1, 'gallery/parva2019.jpg'),
(6, 1, 'gallery/parva2019b.jpg'),
(7, 1, 'gallery/1.jpg'),
(8, 1, 'gallery/2.jpg'),
(9, 1, 'gallery/3.jpg'),
(10, 2, 'gallery/4.jpg'),
(11, 2, 'gallery/5.jpg'),
(12, 2, 'gallery/6.jpg'),
(13, 2, 'gallery/7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `jobid` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `jobdescription` text NOT NULL,
  `salary` varchar(50) NOT NULL,
  `exp_required` varchar(50) NOT NULL,
  `noofvacancy` int(11) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `lastdate` date NOT NULL,
  `alumnid` int(11) NOT NULL,
  `keyskils` varchar(350) NOT NULL,
  `job_location` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`jobid`, `company`, `jobtitle`, `qualification`, `jobdescription`, `salary`, `exp_required`, `noofvacancy`, `emailid`, `status`, `lastdate`, `alumnid`, `keyskils`, `job_location`) VALUES
(1, 'Infosis', 'Looking for a Software Developer - .NET', '', 'Design and development of software applications on .Net platform and maintaining and supporting multiple projects and deadlines.', ' 1,50,000 - 2,50,000', '6.00', 26, 'dddd@gmail.com', 'Active', '2017-02-04', 1, 'Asp.Net, C#, LINK, MVC Framework', 'Bangalore, Mumbai'),
(2, 'Cognizant', 'Clerk', '', 'Clerk works', ' 1,50,000 - 2,50,000', '6.00', 26, 'dddd@gmail.com', 'Active', '2017-02-04', 5, 'Best communication skill', 'Dubai'),
(3, 'Diya System', 'Asst. Manager', '', 'Programmer', ' 1,50,000 - 2,50,000', '5.00', 12, 'sa@gmail.com', 'Active', '2017-02-03', 1, 'Programming skill', 'Mangalore'),
(4, 'sahara', 'analyst', '', 'no backlogs \r\nno cutoff', '20000-250000', '4', 6, 'hhh@gmail.com', 'Active', '2017-04-05', 1, 'java,php', 'Mumbai'),
(5, 'tcs', 'programmer', '', 'good programming skill', '25000-2500000', '5', 2, 'dds@gmail.com', 'Active', '2017-02-28', 1, 'java,c++', 'mumbai'),
(6, 'Robosoft', 'Program Developer', '', 'A computer programmer with a minimum degree of BE, BCA', '200000-3.5 lakhs', '1-3 ', 15, 'robosoft12@gmail.com', 'Active', '2017-03-10', 1, 'JAVA, C++', 'Udupi');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobappln`
--

CREATE TABLE `tbljobappln` (
  `jobapplid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `candidatename` varchar(50) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailid` varchar(15) NOT NULL,
  `applndate` date NOT NULL,
  `resumecopy` varchar(100) NOT NULL,
  `coverletter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobappln`
--

INSERT INTO `tbljobappln` (`jobapplid`, `jobid`, `candidatename`, `contactno`, `emailid`, `applndate`, `resumecopy`, `coverletter`) VALUES
(1, 1, 'suma', '545668', 'shivaniykotian@', '2017-02-07', '16042', 'dfgt'),
(2, 5, 'Sameera', '8976789754', 'swetlan@gmail.c', '2017-02-07', '19985', 'vcxb');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `staffname` varchar(150) NOT NULL,
  `qualification` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `dateof_join` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `staff_pass` varchar(20) NOT NULL,
  `staffphoto` varchar(200) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `staffname`, `qualification`, `designation`, `dob`, `dateof_join`, `address`, `contactno`, `emailid`, `staff_pass`, `staffphoto`, `status`) VALUES
(1, 'Prakash Acharya', 'MSc,MCA', 'Asst. Proffessor', '0000-00-00', '2012-06-06', 'Brahmavar', '9658744125', 'prakash@gmail.com', 'aaa', '8117bitnami.ico', 'Active'),
(2, 'Praveen', 'MSc', 'HOD', '0000-00-00', '2010-03-03', 'Kaup', '9658799586', 'praveen123@gmail.com', 'bbb', '220909_1.jpg', 'Disapproved'),
(3, 'Akhil', 'MSc,Phd', 'Dean', '0000-00-00', '2015-05-02', 'Mangalore', '9568755254', 'akhil432@yahoo.com', 'ccc', '31163tea2.jpg', 'Active'),
(4, 'Divyashree', 'MSc Mathematics', 'Lecturer', '0000-00-00', '2013-05-05', 'Bangalore', '8695477856', 'divya@technopulse.com', '654', '32472te.jpg', 'Active'),
(5, 'Sushma', 'Msc', 'Asst.Professor', '0000-00-00', '2014-01-12', 'Kaup', '85412', 'sushma@gmail.com', 'aaa', '20606ab.jpg', 'Active'),
(6, 'Divyashree', 'BE', 'Software Developer', '1987-11-07', '2015-01-01', 'milagress,Mangalore', '7892808963', 'divyashreek87@gmail.com', 'aa', '821no-user-image.png', 'Active'),
(7, 'abc', 'BE', 'Lecturer', '1994-02-02', '2019-02-01', 'Bangalore', '9876776546', 'abc@gmail.com', 'abcdef', '22622velu.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbltraining`
--

CREATE TABLE `tbltraining` (
  `trainingid` int(11) NOT NULL,
  `topicname` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `courseid` int(11) NOT NULL,
  `trainingdate` date NOT NULL,
  `duration` int(11) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `participationdate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `refcontactname` varchar(100) NOT NULL,
  `refcontactno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltraining`
--

INSERT INTO `tbltraining` (`trainingid`, `topicname`, `description`, `courseid`, `trainingdate`, `duration`, `venue`, `participationdate`, `status`, `refcontactname`, `refcontactno`) VALUES
(1, 'Digita India', 'Seminar competition', 1, '2017-01-04', 2, 'Shirva ', '2017-01-02', 'Active', 'Praveen', '9658963325'),
(2, 'Smart City', 'General session', 2, '2017-02-22', 2, 'Managalore', '2017-02-20', 'Active', 'Akhil', '9856147785'),
(3, 'IT', 'Information Technology', 1, '2017-02-15', 2, 'shirva', '2017-02-10', 'Active', 'santhosh', '9536587945'),
(4, 'Bridge course', 'A real world course', 1, '2017-03-28', 2, 'Shirva', '2017-03-25', 'Active', 'Santhosh', '9658963325'),
(5, 'computer ', 'all cs students', 1, '2017-03-25', 2, 'shirva', '2017-03-20', 'Active', 'ranjith', '9658471125'),
(6, 'Bridge course', 'For BCA students', 1, '2017-03-02', 2, 'Shirva', '2017-03-01', 'Active', '965874112', '98564512569245'),
(7, 'vvcvc', 'scajhajc', 3, '2017-03-02', 0, 'ascsa', '2017-03-01', 'Active', 'sassas', 'sxasa');

-- --------------------------------------------------------

--
-- Table structure for table `tbltrainingappln`
--

CREATE TABLE `tbltrainingappln` (
  `tpid` int(11) NOT NULL,
  `trainid` int(11) NOT NULL,
  `alimniid` int(11) NOT NULL,
  `confirmdate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltrainingappln`
--

INSERT INTO `tbltrainingappln` (`tpid`, `trainid`, `alimniid`, `confirmdate`, `status`) VALUES
(1, 4, 1, '2017-03-02', 'Selected'),
(2, 5, 1, '2017-03-02', 'Denied'),
(3, 5, 7, '2017-03-09', 'Selected');

-- --------------------------------------------------------

--
-- Table structure for table `tbltriggerlogs`
--

CREATE TABLE `tbltriggerlogs` (
  `ID` int(11) NOT NULL,
  `LogText` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `userid` int(11) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pyear` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `occupation` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `message` text NOT NULL,
  `upass` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `location` int(11) NOT NULL,
  `membershiptype` varchar(15) NOT NULL,
  `mfee` float(10,2) NOT NULL,
  `paytype` varchar(15) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `cardno` varchar(16) NOT NULL,
  `cvv` int(4) NOT NULL,
  `expmonth` int(11) NOT NULL,
  `expyear` int(11) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`userid`, `gender`, `name`, `dob`, `emailid`, `phone`, `pyear`, `courseid`, `occupation`, `address`, `message`, `upass`, `status`, `location`, `membershiptype`, `mfee`, `paytype`, `bank`, `cardno`, `cvv`, `expmonth`, `expyear`, `reg_date`) VALUES
(1, 'Male', 'Santhosh marcel', '1997-01-19', 'msanthu78@gmail.com', '', 2017, 1, 'Manager', 'Belthangady', 'Good', '123', 'Active', 0, 'Standard', 1000.00, 'Debitcard', 'canara', '4452211123451234', 111, 1, 2019, '2017-03-27'),
(2, 'Male', 'Prashanth', '1997-02-10', 'prashanth@yahoo.com', '9658475521', 2017, 1, 'CEO apple', 'Kallatthoor', 'Good', '987', 'Active', 1, 'Premium', 10.00, 'Debitcard', 'Canara', '2568479856142568', 654, 9, 2019, '2017-01-03'),
(3, 'Male', 'Ranjith', '1996-11-12', 'ranjithacharya102@gmail.com', '8970262256', 2017, 1, 'Proffesor', 'Bantakallu', 'Nice\r\n', '963', 'Disapproved', 2, 'Standard', 1000.00, 'Debitcard', 'Vijaya', '6547821459654781', 658, 5, 2020, '2017-01-03'),
(4, 'Male', 'Kishore', '1996-05-06', 'kishore@rediffmail.com', '9632145665', 2016, 2, 'Technician', 'Bola', 'welcome', '852', 'Inactive', 2, 'Standard', 1000.00, 'Debitcard', 'SBI', '4569321589647520', 654, 4, 2017, '2017-01-03'),
(5, 'Male', 'Akash', '1999-04-02', 'akash@yahoo.com', '9625844756', 2019, 2, 'Clerk', 'MoodBidre', 'Nice One', '654', 'Inactive', 2, 'Standard', 1000.00, 'Debitcard', 'Canara', '4785961258749658', 214, 8, 2020, '2017-01-03'),
(6, 'Female', 'kajal', '1996-03-27', 'kajal@gmail.com', '9035788611', 2017, 1, 'analyst', 'hubli', 'hello', '123', 'Disapproved', 1, 'Standard', 1000.00, 'Debitcard', 'canara', '3456789098765434', 123, 9, 2020, '2017-01-03'),
(8, 'Male', 'Pearel', '1996-03-02', 'peareal@gmail.com', '145', 2014, 3, 'Engineer', 'Belman', 'Good', '321', 'Active', 2, 'Premium', 10.00, 'Debitcard', 'sbi', '9658421457865231', 547, 10, 2018, '2017-01-03'),
(9, 'Male', 'Francis', '1995-06-05', 'francis@yahoo.com', '965478124', 2013, 3, 'Cleark', 'Mangalore', 'Nice', '963', 'Inactive', 2, 'Standard', 1000.00, 'Debitcard', 'sbi', '7895684751254789', 654, 12, 2017, '2017-01-03'),
(10, 'Male', 'pra123@', '2017-03-24', 'kap@gmail.com', '7894561230', 2017, 1, 'searching job', 'fdff', 'aaaa', 'qqq', 'Active', 13, 'Standard', 1000.00, 'Debitcard', 'ssss', '1122334455667788', 111, 1, 2018, '2017-01-03'),
(11, 'Male', 'suresh raina', '1996-03-01', 'raina@gmail.com', '9568745523', 2012, 6, 'manager', 'jhggc', 'vf', 'aaaa', 'Active', 9, 'Standard', 1000.00, 'Debitcard', 'ss', '1122336655441144', 123, 3, 2018, '2017-01-03'),
(12, 'Female', 'raksha', '1997-11-05', 'raksha@gmail.com', '9900599005', 2014, 1, 'Cleark', 'udupi', 'asdfghjkl', '111', 'Active', 13, 'Standard', 1000.00, 'Debitcard', 'sbi', '1234561234561234', 123, 7, 2017, '2017-01-03'),
(13, 'Male', 'aaaa', '2017-03-31', 'aaa@gmail.com', '3652568975', 2014, 6, 'aaa', 'aaa', '', '123', 'Disapproved', 10, 'Standard', 1000.00, 'Debitcard', 'aa', '4556632569652314', 123, 4, 2017, '2019-11-14'),
(14, 'Male', 'SAGAR NAIR', '1990-03-31', 'nairsagar777@gmail.com', '7022468953', 2017, 1, 'analyst', 'JANAKI NILAYA,KK SHETTY COMPOUND ATTAVAR', '', 'aaa', 'Active', 11, 'Standard', 1000.00, 'Debitcard', 'canara', '9874563210254569', 111, 1, 2019, '2017-03-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tblalumnimeet`
--
ALTER TABLE `tblalumnimeet`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblalumniphoto`
--
ALTER TABLE `tblalumniphoto`
  ADD PRIMARY KEY (`photoid`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `tblfund`
--
ALTER TABLE `tblfund`
  ADD PRIMARY KEY (`fundid`);

--
-- Indexes for table `tblfundinterest`
--
ALTER TABLE `tblfundinterest`
  ADD PRIMARY KEY (`fundinvestid`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `tbljobappln`
--
ALTER TABLE `tbljobappln`
  ADD PRIMARY KEY (`jobapplid`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`);

--
-- Indexes for table `tbltraining`
--
ALTER TABLE `tbltraining`
  ADD PRIMARY KEY (`trainingid`);

--
-- Indexes for table `tbltrainingappln`
--
ALTER TABLE `tbltrainingappln`
  ADD PRIMARY KEY (`tpid`);

--
-- Indexes for table `tbltriggerlogs`
--
ALTER TABLE `tbltriggerlogs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblalumnimeet`
--
ALTER TABLE `tblalumnimeet`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblalumniphoto`
--
ALTER TABLE `tblalumniphoto`
  MODIFY `photoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tblfund`
--
ALTER TABLE `tblfund`
  MODIFY `fundid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblfundinterest`
--
ALTER TABLE `tblfundinterest`
  MODIFY `fundinvestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbljobappln`
--
ALTER TABLE `tbljobappln`
  MODIFY `jobapplid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbltraining`
--
ALTER TABLE `tbltraining`
  MODIFY `trainingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbltrainingappln`
--
ALTER TABLE `tbltrainingappln`
  MODIFY `tpid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbltriggerlogs`
--
ALTER TABLE `tbltriggerlogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
