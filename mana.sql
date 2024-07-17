mysql-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for login
CREATE DATABASE IF NOT EXISTS `login` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `login`;

-- Dumping structure for table login.accountdetailsaccountdetailsaccountfundsaccountdetails
CREATE TABLE IF NOT EXISTS `accountdetails` (mysql
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `firstname` varchar(500) DEFAULT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  `accountnumber` varchar(1000) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `address` varchar(800) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pincode` varchar(500) DEFAULT NULL,
  `userid` varchar(1000) DEFAULT NULL,
  `faname` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.accountdetails: ~0 rows (approximately)
/*!40000 ALTER TABLE `accountdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountdetails` ENABLE KEYS */;

-- Dumping structure for table login.accountfunds
CREATE TABLE IF NOT EXISTS `accountfunds` (
  `name` varchar(1000) DEFAULT NULL,
  `userid` varchar(1000) DEFAULT NULL,
  `credit` longtext,
  `debit` longtext,
  `accountnumber` varchar(1000) DEFAULT NULL,
  `totalamount` text,
  `balance` longtext,
  `cdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.accountfunds: ~0 rows (approximately)
/*!40000 ALTER TABLE `accountfunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountfunds` ENABLE KEYS */;

-- Dumping structure for table login.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `username` varchar(100) DEFAULT NULL,
  `accountno` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `accounttype` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.accounts: 5 rows
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
REPLACE INTO `accounts` (`username`, `accountno`, `amount`, `accounttype`, `token`) VALUES
	('kasula', '1544989456', 47596, 'savings', '9d545938-7089-456a-a3a9-dd383c807272'),
	('manish', '1745079470', 52400, 'savings', 'edfeee54-4cc1-4fed-8e30-71e1c9868b13'),
	('ashok134', '1227855606', 50000, 'savings', '9895a2bd-3d49-4fa4-b28f-5937b1be0486'),
	('naidu', '1403980087', 50000, 'savings', '32d8e921-357b-45b9-9e95-7d075fd75c1d'),
	('kumar', '1063891592', 50000, 'savings', 'e1a1e4cd-b23f-4e0a-8967-95a42a10987b');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table login.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin` varchar(10) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.admin: 1 rows
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
REPLACE INTO `admin` (`Admin`, `pwd`) VALUES
	('Admin', 'pwd');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table login.bank
CREATE TABLE IF NOT EXISTS `bank` (
  `amount` double unsigned DEFAULT NULL,
  `id` longtext,
  `date` varchar(50) DEFAULT NULL,
  `charge` double unsigned DEFAULT NULL,
  `username` varchar(500) DEFAULT NULL,
  `beneficiaryname` varchar(500) DEFAULT NULL,
  `baccountnumber` varchar(500) DEFAULT NULL,
  `accountnumber` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.bank: 5 rows
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
REPLACE INTO `bank` (`amount`, `id`, `date`, `charge`, `username`, `beneficiaryname`, `baccountnumber`, `accountnumber`) VALUES
	(500, '2bf98535-575b-4cd6-bc92-35fe340630cb', '2017/11/325 08:11:955', 0, 'manish', 'kasula', '1544989456', '1745079470'),
	(500, '91121ca3-57ad-4067-b7a9-adaa3f29f3fd', '2017/12/351 12:12:306', 0, 'manish', 'kasula', '1544989456', '1745079470'),
	(1500, 'e2ae765f-ce87-4c61-b05c-1613a84f8792', '2017/12/351 12:12:266', 2, 'kasula', 'manish', '1745079470', '1544989456'),
	(500, 'c4f530ce-a49e-4901-8779-8359e8740cfe', '2018/04/95 23:04:931', 0, 'kasula', 'manish', '1745079470', '1544989456'),
	(1400, '0045f322-845f-4c6b-a672-f4ca0537d5f8', '2018/04/96 21:04:893', 2, 'kasula', 'manish', '1745079470', '1544989456');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;

-- Dumping structure for table login.books_stock
CREATE TABLE IF NOT EXISTS `books_stock` (
  `Book_Id` int(10) NOT NULL,
  `Book_Title` varchar(35) NOT NULL,
  `Author` varchar(20) DEFAULT NULL,
  `Publisher` varchar(20) DEFAULT NULL,
  `Edition` varchar(10) DEFAULT NULL,
  `Inv_No` int(10) DEFAULT NULL,
  `Inv_Date` date DEFAULT NULL,
  `Cost` int(7) DEFAULT NULL,
  PRIMARY KEY (`Book_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.books_stock: 2 rows
/*!40000 ALTER TABLE `books_stock` DISABLE KEYS */;
REPLACE INTO `books_stock` (`Book_Id`, `Book_Title`, `Author`, `Publisher`, `Edition`, `Inv_No`, `Inv_Date`, `Cost`) VALUES
	(1, 'discovery of india', 'nehru', 'jk', '1', 1, '2015-02-03', 450),
	(145, 'harry potter', 'JK rowling', 'hsh', '5', 145, '2018-05-04', 150);
/*!40000 ALTER TABLE `books_stock` ENABLE KEYS */;

-- Dumping structure for table login.book_issue1
CREATE TABLE IF NOT EXISTS `book_issue1` (
  `Reg_No` int(10) DEFAULT NULL,
  `Book_Id` int(10) NOT NULL,
  `Book_Title` varchar(50) DEFAULT NULL,
  `I_date` date DEFAULT NULL,
  `F_date` date DEFAULT NULL,
  `R_date` date DEFAULT NULL,
  `Penalty` int(5) DEFAULT NULL,
  PRIMARY KEY (`Book_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.book_issue1: 1 rows
/*!40000 ALTER TABLE `book_issue1` DISABLE KEYS */;
REPLACE INTO `book_issue1` (`Reg_No`, `Book_Id`, `Book_Title`, `I_date`, `F_date`, `R_date`, `Penalty`) VALUES
	(2015, 1223, 'the one thing', '1998-05-11', '1998-05-19', '1998-05-16', 0);
/*!40000 ALTER TABLE `book_issue1` ENABLE KEYS */;

-- Dumping structure for table login.book_issue2
CREATE TABLE IF NOT EXISTS `book_issue2` (
  `Fac_Id` int(10) DEFAULT NULL,
  `Book_Id` int(10) NOT NULL,
  `Book_Title` varchar(50) DEFAULT NULL,
  `I_date` date DEFAULT NULL,
  `F_date` date DEFAULT NULL,
  `R_date` date DEFAULT NULL,
  `Penalty` int(5) DEFAULT NULL,
  PRIMARY KEY (`Book_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.book_issue2: 0 rows
/*!40000 ALTER TABLE `book_issue2` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_issue2` ENABLE KEYS */;

-- Dumping structure for table login.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` varchar(20) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL,
  `category_desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.category: 0 rows
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table login.cds_stock
CREATE TABLE IF NOT EXISTS `cds_stock` (
  `Cd_Id` int(10) NOT NULL,
  `Cd_Title` varchar(20) NOT NULL,
  `Inv_No` int(10) DEFAULT NULL,
  `Inv_Date` date DEFAULT NULL,
  `Cost` int(7) DEFAULT NULL,
  PRIMARY KEY (`Cd_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.cds_stock: 3 rows
/*!40000 ALTER TABLE `cds_stock` DISABLE KEYS */;
REPLACE INTO `cds_stock` (`Cd_Id`, `Cd_Title`, `Inv_No`, `Inv_Date`, `Cost`) VALUES
	(1789, 'narnio', 14789, '2017-11-06', 0),
	(886, 'gym', 44412, '1998-06-24', 45),
	(1, 'Data structures', 1, '2013-02-05', 150);
/*!40000 ALTER TABLE `cds_stock` ENABLE KEYS */;

-- Dumping structure for table login.cd_issue1
CREATE TABLE IF NOT EXISTS `cd_issue1` (
  `Reg_No` int(10) DEFAULT NULL,
  `Cd_Id` int(10) NOT NULL,
  `Cd_Title` varchar(50) NOT NULL,
  `I_date` date DEFAULT NULL,
  `F_date` date DEFAULT NULL,
  `R_date` date DEFAULT NULL,
  `Penalty` int(5) DEFAULT NULL,
  PRIMARY KEY (`Cd_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.cd_issue1: 1 rows
/*!40000 ALTER TABLE `cd_issue1` DISABLE KEYS */;
REPLACE INTO `cd_issue1` (`Reg_No`, `Cd_Id`, `Cd_Title`, `I_date`, `F_date`, `R_date`, `Penalty`) VALUES
	(1789, 556, 'nad', '2017-11-06', '2017-11-06', '2017-11-06', 0);
/*!40000 ALTER TABLE `cd_issue1` ENABLE KEYS */;

-- Dumping structure for table login.cd_issue2
CREATE TABLE IF NOT EXISTS `cd_issue2` (
  `Fac_Id` int(10) DEFAULT NULL,
  `Cd_Id` int(10) NOT NULL,
  `Cd_Title` varchar(50) NOT NULL,
  `I_date` date DEFAULT NULL,
  `F_date` date DEFAULT NULL,
  `R_date` date DEFAULT NULL,
  `Penalty` int(5) DEFAULT NULL,
  PRIMARY KEY (`Cd_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.cd_issue2: 1 rows
/*!40000 ALTER TABLE `cd_issue2` DISABLE KEYS */;
REPLACE INTO `cd_issue2` (`Fac_Id`, `Cd_Id`, `Cd_Title`, `I_date`, `F_date`, `R_date`, `Penalty`) VALUES
	(1456, 789, 'masui', '2017-11-06', '2017-11-06', '2017-11-06', 0);
/*!40000 ALTER TABLE `cd_issue2` ENABLE KEYS */;

-- Dumping structure for table login.cu
CREATE TABLE IF NOT EXISTS `cu` (
  `institution` int(11) DEFAULT NULL,
  `accountno` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.cu: 0 rows
/*!40000 ALTER TABLE `cu` DISABLE KEYS */;
/*!40000 ALTER TABLE `cu` ENABLE KEYS */;

-- Dumping structure for table login.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table login.customer1
CREATE TABLE IF NOT EXISTS `customer1` (
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `id` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phno` varchar(200) DEFAULT NULL,
  `fathername` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `hno` varchar(200) DEFAULT NULL,
  `road` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.customer1: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer1` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer1` ENABLE KEYS */;

-- Dumping structure for table login.customer2
CREATE TABLE IF NOT EXISTS `customer2` (
  `name` varchar(500) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `pno` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.customer2: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer2` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer2` ENABLE KEYS */;

-- Dumping structure for table login.educational
CREATE TABLE IF NOT EXISTS `educational` (
  `name` varchar(10000) DEFAULT NULL,
  `acno` varchar(1000) DEFAULT NULL,
  `code` varchar(5000) DEFAULT NULL,
  `uid` varchar(500) DEFAULT NULL,
  `amount` text,
  `cdate` date DEFAULT NULL,
  `transactionid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.educational: ~0 rows (approximately)
/*!40000 ALTER TABLE `educational` DISABLE KEYS */;
/*!40000 ALTER TABLE `educational` ENABLE KEYS */;

-- Dumping structure for table login.electricity
CREATE TABLE IF NOT EXISTS `electricity` (
  `acno` varchar(10000) DEFAULT NULL,
  `sno` varchar(10000) DEFAULT NULL,
  `amount` text,
  `cdate` date DEFAULT NULL,
  `transactionid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.electricity: ~0 rows (approximately)
/*!40000 ALTER TABLE `electricity` DISABLE KEYS */;
/*!40000 ALTER TABLE `electricity` ENABLE KEYS */;

-- Dumping structure for table login.faculty
CREATE TABLE IF NOT EXISTS `faculty` (
  `Fac_Id` varchar(10) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Fac_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.faculty: 3 rows
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
REPLACE INTO `faculty` (`Fac_Id`, `FName`, `Designation`) VALUES
	('1456', 'akash', 'hod'),
	('1', 'nitika', 'java faculty'),
	('2', 'vikram bezawada', 'DS');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;

-- Dumping structure for table login.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.feedback: ~0 rows (approximately)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;

-- Dumping structure for table login.gas
CREATE TABLE IF NOT EXISTS `gas` (
  `name` varchar(10000) DEFAULT NULL,
  `acno` varchar(10000) DEFAULT NULL,
  `sno` varchar(10000) DEFAULT NULL,
  `amount` text,
  `cdate` date DEFAULT NULL,
  `transactionid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.gas: ~0 rows (approximately)
/*!40000 ALTER TABLE `gas` DISABLE KEYS */;
/*!40000 ALTER TABLE `gas` ENABLE KEYS */;

-- Dumping structure for table login.medical
CREATE TABLE IF NOT EXISTS `medical` (
  `name` varchar(1000) DEFAULT NULL,
  `acno` text,
  `ifc` varchar(10000) DEFAULT NULL,
  `id` varchar(10000) DEFAULT NULL,
  `amount` text,
  `cdate` date DEFAULT NULL,
  `transactionid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.medical: ~0 rows (approximately)
/*!40000 ALTER TABLE `medical` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical` ENABLE KEYS */;

-- Dumping structure for table login.opinion
CREATE TABLE IF NOT EXISTS `opinion` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.opinion: ~0 rows (approximately)
/*!40000 ALTER TABLE `opinion` DISABLE KEYS */;
/*!40000 ALTER TABLE `opinion` ENABLE KEYS */;

-- Dumping structure for table login.phone
CREATE TABLE IF NOT EXISTS `phone` (
  `name` varchar(10000) DEFAULT NULL,
  `acno` text,
  `ifsc` varchar(10000) DEFAULT NULL,
  `mobileno` varchar(5000) DEFAULT NULL,
  `amount` text,
  `cdate` date DEFAULT NULL,
  `transactionid` text,
  `type` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.phone: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;

-- Dumping structure for table login.pictures
CREATE TABLE IF NOT EXISTS `pictures` (
  `image_id` int(10) NOT NULL AUTO_INCREMENT,
  `image` longtext,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.pictures: ~0 rows (approximately)
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;

-- Dumping structure for table login.signin
CREATE TABLE IF NOT EXISTS `signin` (
  `firstname` varchar(500) DEFAULT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fname` varchar(500) DEFAULT NULL,
  `flat` varchar(500) DEFAULT NULL,
  `roadno` varchar(500) DEFAULT NULL,
  `area` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `tp` varchar(500) DEFAULT NULL,
  `pincode` varchar(500) DEFAULT NULL,
  `username` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `repassword` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.signin: 6 rows
/*!40000 ALTER TABLE `signin` DISABLE KEYS */;
REPLACE INTO `signin` (`firstname`, `lastname`, `email`, `dob`, `phone`, `fname`, `flat`, `roadno`, `area`, `city`, `tp`, `pincode`, `username`, `password`, `repassword`) VALUES
	(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL),
	('kasula', 'karthik', 'karthik24kasula@gmail.com', '1998-05-11', '9000994096', 'kasula ashok', '4646', 'H:No:7-1-364/16/2,Padmakshi Colony,Hanamkonda, Warangal', 'LC-A', 'MOHALI', '09000994096', '140301', 'kasula', '123456', '123456'),
	('manish', 'nayak', 'manishcool@gmail.com', '1997-08-14', '789456123', 'kokila', '47652', 'Chandigarh University, National Highway 95, Chandigarh-Ludhiana Highway', 'Telengana', 'Hanamkonda,Warangal,Telengana,India,Asia', '09000994096', '140301', 'manish', '123456', '123456'),
	('ashok', 'kasula', 'askkasula@gmail.com', '1946-05-11', '9392497643', 'kasula bramaiah', '78-05', 'H:No:7-1-364/16/2,Padmakshi Colony', 'Padmakshi colony', 'MOHALI', '09000994096', '506001', 'ashok134', '123456', '123456'),
	('naidu', 'nn', 'kak@gmail.com', '1998-05-04', '5584631467', 'naiduana', '145', 'neea', 'asff', 'kadf', '145526666', '501440', 'naidu', 'aaaaaa', 'aaaaaa'),
	('hui', 'kumar', 'afsfs@gmail.com', '1998-05-22', '75155555', 'jfasfsf', '54', 'bhd', 'hafaf', 'hahda', '555478', '140410', 'kumar', 'aaaaaa', 'aaaaaa');
/*!40000 ALTER TABLE `signin` ENABLE KEYS */;

-- Dumping structure for table login.student
CREATE TABLE IF NOT EXISTS `student` (
  `Reg_NO` int(255) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Course` varchar(500) NOT NULL,
  `Batch` varchar(500) NOT NULL,
  PRIMARY KEY (`Reg_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table login.student: 11 rows
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
REPLACE INTO `student` (`Reg_NO`, `Name`, `Course`, `Batch`) VALUES
	(2015, 'kasula', 'be cse', '2015'),
	(1337, 'sohith', 'BE cse', '2015'),
	(1318, 'Shubha', 'BE cse', '2015'),
	(1345, 'vikrant', 'BE cse', '2015'),
	(1327, 'manik', 'BE cse', '2015'),
	(1301, 'keeerti', 'BE cse', '2015'),
	(1456, 'kkfka', 'sfsf', 'BE'),
	(1477, 'pranay', 'be', '2016'),
	(1255, 'Prudvi', 'BE', '2016'),
	(1288, 'preetham', 'cse', '2020'),
	(123, 'ghfgc', 'cse', '2016');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping structure for table login.stu_info
CREATE TABLE IF NOT EXISTS `stu_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.stu_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;

-- Dumping structure for table login.transaction
CREATE TABLE IF NOT EXISTS `transaction` (
  `userid` varchar(1000) DEFAULT NULL,
  `accountnumber` varchar(1000) DEFAULT NULL,
  `balance` longtext,
  `loanid` longtext,
  `loanamount` longtext,
  `deposits` longtext,
  `fine` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.transaction: ~0 rows (approximately)
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;

-- Dumping structure for table login.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `name` varchar(1000) DEFAULT NULL,
  `userid` varchar(1000) DEFAULT NULL,
  `accountnumber` varchar(1000) DEFAULT NULL,
  `accountto` varchar(1000) DEFAULT NULL,
  `accounttonumber` varchar(1000) DEFAULT NULL,
  `amount` mediumtext,
  `cdate` date DEFAULT NULL,
  `transactionid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table login.transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
accountdetails