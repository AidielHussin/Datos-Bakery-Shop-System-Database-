-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 02:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datosbakeryshopsystem3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake`
--

CREATE TABLE `cake` (
  `dessertID` varchar(10) NOT NULL,
  `cakeWeight` float DEFAULT NULL,
  `cakeShape` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cake`
--

INSERT INTO `cake` (`dessertID`, `cakeWeight`, `cakeShape`) VALUES
('CA001', 2.5, 'RECTANGLE'),
('CA002', 1.25, 'ROUND'),
('CA003', 1.05, 'SQUARE'),
('CA004', 1.25, 'ROUND'),
('CA005', 2, 'ROUND'),
('CA006', 2, 'ROUND'),
('CA007', 2.5, 'ROUND'),
('CA008', 1.25, 'ROUND'),
('CA009', 2, 'SQUARE'),
('CA010', 2.5, 'SQUARE');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custID` varchar(10) NOT NULL,
  `custName` varchar(50) NOT NULL,
  `custEmail` varchar(50) NOT NULL,
  `custState` varchar(20) NOT NULL,
  `custPostcode` int(11) NOT NULL,
  `custAddress` varchar(100) NOT NULL,
  `custPhoneNo` varchar(12) NOT NULL,
  `staffID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custID`, `custName`, `custEmail`, `custState`, `custPostcode`, `custAddress`, `custPhoneNo`, `staffID`) VALUES
('C001', 'NORAIMAN IKRAM', 'aiman23@gmail.com', 'KUALA LUMPUR', 57899, '90-23-44, APARTMENT KAYAMAS', '019-2234459', 'S005'),
('C002', 'NUR NAJWA', 'najwy9993@gmail.com', 'KUALA LUMPUR', 57009, 'FLAT PANGSAPURI SRI HARTAMAS', '019-2334242', 'S002'),
('C003', 'NUR SABRINA', 'sabby123@gmail.com', 'SELANGOR', 40016, 'NO.23, JALAN HANG TUAH', '019-2334249', 'S002'),
('C004', 'ASJAD HAMIZAN', 'azjadAzzy20231@gmail.com', 'SELANGOR', 40014, 'PANGSAPURI SRI BAGAN LUAR', '019-8942657', 'S005'),
('C005', 'MELISSA SOFIA', 'mellysa23@gmail.com', 'NEGERI SEMBILAN', 70098, 'NO.29, JALAN SEMBILU ARA', '014-5698756', 'S004'),
('C006', 'SHUHADA AMIR', 'syu123@gmail.com', 'PAHANG', 21000, 'NO 20, TAMAN EMAS PERAK', '012-3342349', 'S010'),
('C007', 'SYAKIR IMAN', 'syakirIman99@gmail.com', 'KUALA LUMPUR', 57000, 'A-2-14, APARTMENT DESA TASIK', '012-3489234', 'S010'),
('C008', 'AIDA ZAMANI', 'aidaZamani88@gmail.com', 'KELANTAN', 15008, '89A-2, KONDOMINIUM KAYAMAS', '012-3349857', 'S009'),
('C009', 'AHMAD AMIRUL NAZIM', 'mirulAhmd@gmail.com', 'TERENGGANU', 20010, '5-4-3, KAMPUNG SELAMAT 2', '018-2348560', 'S007'),
('C010', 'SITI FATIMAH ALIAS', 'aliasSitiFat@gmail.com', 'SELANGOR', 40095, '90A, TAMAN AMARAH MAWAR', '012-9854632', 'S006');

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `dessertID` varchar(10) NOT NULL,
  `flavourDessert` varchar(20) NOT NULL,
  `dessertName` varchar(50) NOT NULL,
  `dessertPrice` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`dessertID`, `flavourDessert`, `dessertName`, `dessertPrice`) VALUES
('CA001', 'MATCHA', 'JAPANESE MATCHA CAKE', 79.90),
('CA002', 'BLUEBERRY', 'NIGHTSKY CAKE', 80.50),
('CA003', 'HAZELNUT COFFEE', 'ROASTY CAKE', 59.90),
('CA004', 'CHEESE', 'ALMOND CHEESECAKE', 65.20),
('CA005', 'ROCKY ROAD', 'FRUITY BITES', 78.60),
('CA006', 'BUTTERCHIPS', 'COOKIES BUTTER CHIP', 102.20),
('CA007', 'VANILLA', 'VANILLA CREAM CAKE', 90.50),
('CA008', 'BUTTER', 'CREAM SALTBUTTER CAKE', 102.70),
('CA009', 'KIWI', 'SWEET SOUR KIWI CAKE', 85.20),
('CA010', 'BANANA', 'FLUFFY BANANA CAKE', 50.80),
('PA001', 'GREEN TEA', 'SOFTWAFFLE', 20.20),
('PA002', 'STRAWBERRY', 'SPEAK NOW ICE CREAM', 10.70),
('PA003', 'PISTACHIO', 'CROMBOLONI', 25.80),
('PA004', 'CARAMEL', 'CINAMON GIRL PIE', 29.80),
('PA005', 'BLUEBERRY', 'SWEET SERENDIPITY TREATS', 15.70),
('PA006', 'CREAM CHEESE', 'BOMBOLONI ', 30.20),
('PA007', 'BANANA', 'CREPE BANANA', 39.90),
('PA008', 'CHOCOLATE', 'WAFFLE', 12.50),
('PA009', 'MILK', 'MLIK DONUT', 5.00),
('PA010', 'RASPBERRY', 'PIE RASPBERRY', 19.90);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `custID` varchar(10) NOT NULL,
  `dessertID` varchar(10) NOT NULL,
  `orderDate` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `staffID` varchar(10) NOT NULL,
  `transactionNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`custID`, `dessertID`, `orderDate`, `quantity`, `staffID`, `transactionNo`) VALUES
('C001', 'CA001', '2024-01-02', 2, 'S002', 'R001'),
('C002', 'PA001', '2024-01-02', 1, 'S002', 'R002'),
('C003', 'CA002', '2024-01-03', 2, 'S003', 'R003'),
('C003', 'CA004', '2024-01-03', 2, 'S003', 'R003'),
('C004', 'CA007', '2024-01-03', 2, 'S006', 'R004'),
('C004', 'PA004', '2024-01-03', 2, 'S006', 'R004'),
('C005', 'CA004', '2024-01-04', 2, 'S008', 'R005'),
('C005', 'PA005', '2024-01-04', 2, 'S004', 'R006'),
('C005', 'PA009', '2024-01-04', 2, 'S008', 'R005'),
('C006', 'CA007', '2024-01-05', 2, 'S006', 'R007'),
('C006', 'PA010', '2024-01-05', 1, 'S009', 'R007'),
('C007', 'CA001', '2024-01-06', 2, 'S005', 'R008'),
('C007', 'PA001', '2024-01-06', 2, 'S006', 'R008'),
('C008', 'CA004', '2024-01-08', 1, 'S010', 'R009'),
('C008', 'CA010', '2024-01-08', 1, 'S010', 'R009'),
('C008', 'PA003', '2024-01-08', 2, 'S004', 'R009'),
('C009', 'PA002', '2024-01-09', 2, 'S004', 'R010'),
('C010', 'PA001', '2024-01-09', 3, 'S005', 'R011');

-- --------------------------------------------------------

--
-- Table structure for table `pastry`
--

CREATE TABLE `pastry` (
  `dessertID` varchar(10) NOT NULL,
  `addTopping` varchar(30) NOT NULL,
  `quantityPerBox` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pastry`
--

INSERT INTO `pastry` (`dessertID`, `addTopping`, `quantityPerBox`) VALUES
('PA001', 'CHOCOLATE RICE ', 6),
('PA002', 'CREAM CHEESE', 4),
('PA003', 'WHIPPING CREAM', 3),
('PA004', 'RAINBOW RICE CHOCOLATE', 5),
('PA005', 'ALMOND', 5),
('PA006', 'GRATED CHEESE', 6),
('PA007', 'MIX FRUIT', 4),
('PA008', 'NUTELLA', 3),
('PA009', 'CORNFLAKES', 2),
('PA010', 'SUGAR', 4);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `transactionNo` varchar(10) NOT NULL,
  `paymentDate` date NOT NULL,
  `paymentMethod` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`transactionNo`, `paymentDate`, `paymentMethod`) VALUES
('R001', '2024-01-05', 'PAYWAVE'),
('R002', '2024-01-05', 'CASH'),
('R003', '2024-01-05', 'PAYWAVE'),
('R004', '2024-01-09', 'CASH'),
('R005', '2024-01-09', 'PAYWAVE'),
('R006', '2024-01-11', 'CASH'),
('R007', '2024-01-11', 'PAYWAVE'),
('R008', '2024-01-11', 'PAYWAVE'),
('R009', '2024-01-16', 'CASH'),
('R010', '2024-01-16', 'PAYWAVE'),
('R011', '2024-01-18', 'CASH');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` varchar(10) NOT NULL,
  `staffName` varchar(50) NOT NULL,
  `staffNoPhone` varchar(12) NOT NULL,
  `staffAddress` varchar(100) NOT NULL,
  `staffPosition` varchar(20) NOT NULL,
  `staffDOB` date NOT NULL,
  `staffHireDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffName`, `staffNoPhone`, `staffAddress`, `staffPosition`, `staffDOB`, `staffHireDate`) VALUES
('S001', 'AMIRAH NAJIRAH', '019-2344499', 'FLAT PANGSAPURI SRI DAMAI', 'MANAGER', '1994-02-04', '2024-01-01'),
('S002', 'NAZREEN AIDIL', '016-3789024', 'APARTMENT SRI BAYUMAS', 'CREW', '1999-05-18', '2024-01-01'),
('S003', 'SHAZWANA IMANI ', '012-3349855', 'NO.29 JALAN RAJA UDANG', 'CREW', '2000-06-20', '2024-01-01'),
('S004', 'AHMAD ZULFIKRI', '018-2234569', 'NO. 309, JALAN SEROJA 23', 'CREW', '1997-03-22', '2024-01-01'),
('S005', 'NURSHAZ IMANI', '012-8942645', 'BLOK 30-3-2, JALAN RAJA SENGGURUT', 'CREW', '2002-04-27', '2024-01-01'),
('S006', 'JEMAH JAMAL', '015-8965544', 'N0.52 JALAN BATIK TUN SRI LANANG', 'ASSISTANT MANAGER', '1993-04-20', '2024-01-02'),
('S007', 'HARIS ANNUAR', '019-2321124', '20-A-2, APARTMENT DELIMA', 'CREW', '1998-11-19', '2024-01-02'),
('S008', 'RAFIZI HAKIM', '013-2912249', 'LOT 23, JALAN RAJA IBRAHIM, TAMAN NIAGA', 'CREW', '2000-09-30', '2024-01-02'),
('S009', 'SITI SURAYA', '012-2234432', '23A-2 TAMAN TUN AMIR', 'INTERN', '2003-04-10', '2024-01-02'),
('S010', 'AIDIL ADHA', '012-9112345', 'NO.35/2, JALAN MAWAR, TAMAN JINJANG', 'INTERN', '2002-01-12', '2024-01-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake`
--
ALTER TABLE `cake`
  ADD PRIMARY KEY (`dessertID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custID`),
  ADD KEY `customer_ibfk_1` (`staffID`);

--
-- Indexes for table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`dessertID`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`custID`,`dessertID`),
  ADD KEY `dessertID` (`dessertID`),
  ADD KEY `staffID` (`staffID`),
  ADD KEY `transactionNo` (`transactionNo`);

--
-- Indexes for table `pastry`
--
ALTER TABLE `pastry`
  ADD PRIMARY KEY (`dessertID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`transactionNo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cake`
--
ALTER TABLE `cake`
  ADD CONSTRAINT `cake_ibfk_1` FOREIGN KEY (`dessertID`) REFERENCES `dessert` (`dessertID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`custID`) REFERENCES `customer` (`custID`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`dessertID`) REFERENCES `dessert` (`dessertID`),
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`),
  ADD CONSTRAINT `order_items_ibfk_4` FOREIGN KEY (`transactionNo`) REFERENCES `payment` (`transactionNo`);

--
-- Constraints for table `pastry`
--
ALTER TABLE `pastry`
  ADD CONSTRAINT `pastry_ibfk_1` FOREIGN KEY (`dessertID`) REFERENCES `dessert` (`dessertID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
