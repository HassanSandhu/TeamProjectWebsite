-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2017 at 09:56 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `povenaco_ppolice`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE IF NOT EXISTS `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us Information', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `acceptedrequest`
--

CREATE TABLE IF NOT EXISTS `acceptedrequest` (
  `id` int(100) DEFAULT NULL,
  `senderemail` varchar(100) NOT NULL,
  `acceptemail` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `datetimee` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acceptedrequest`
--

INSERT INTO `acceptedrequest` (`id`, `senderemail`, `acceptemail`, `longitude`, `latitude`, `datetimee`, `status`) VALUES
(NULL, 'danish@gmail.com', 'danish@gmail.com', '74.4165721', '31.5762651', '08/07/2017 11:01:15 am', 'engaged'),
(NULL, 'danish@gmail.com', 'danish@gmail.com', '74.4165729', '31.5763257', '08/07/2017 11:06:56 am', 'engaged'),
(NULL, 'danish@gmail.com', 'danish@gmail.com', '74.4165729', '31.5763257', '08/07/2017 11:07:00 am', 'engaged'),
(NULL, 'danish@gmail.com', 'danish@gmail.com', '74.4165729', '31.5763257', '08/07/2017 11:07:13 am', 'engaged'),
(NULL, 'danish@gmail.com', 'danish@gmail.com', '74.4165729', '31.5763257', '08/07/2017 11:10:24 am', 'engaged');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Karena Kapoor', 'karena@gmail.com', 'khan123', 'Kareena.jpg', '077885221', 'India', 'Fashion Designer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical '),
(5, 'Salman', 'salman@gmail.com', 'salman', 'Salman-2.jpg', '33456693', 'India', 'Actor', '  Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical  ');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE IF NOT EXISTS `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'BEST PRICES', 'You can check on all others sites about the prices and than compare with us.'),
(3, '100% SATISFACTION GUARANTEED From Us', 'Free returns on everything for 3 months. '),
(6, 'WE LOVE OUR CUSTOMERS', ' We are known to provide best possible service ever');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

CREATE TABLE IF NOT EXISTS `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(8, 'jacket bundle relation -1', 4, 11),
(9, 'jacket bundle relation -2', 5, 11),
(10, 'jacket bundle relation -3', 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `p_price`, `size`) VALUES
(24, '::1', 4, '9087090', 'Select a Size');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Feminine', 'no', 'zinta_preity.jpg'),
(3, 'Kids', 'no', 'image10.jpg'),
(4, 'Others', 'yes', 'cat_image.jpg'),
(5, 'Men', 'yes', 'image11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'sad.ahmed22224@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 9, 'Remind T-shirt', '40', '333444', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'Brock Lesnar', 'brock@gmail.com', 'brock123', 'America', 'New York', '0092334566931', 'new york', 'Brock-Lesnar.jpg', '::1', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(16, 2, 207, 1715523401, 3, 'Small', '2017-06-14 12:33:02', 'Complete'),
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 08:21:42', 'pending'),
(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 08:26:47', 'pending'),
(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 11:06:32', 'complete'),
(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 11:06:37', 'complete'),
(22, 2, 100, 1055490851, 2, 'Medium', '2017-06-14 12:31:27', 'pending'),
(23, 2, 1798, 725073436, 2, 'Small', '2017-06-14 14:38:37', 'pending'),
(24, 2, 899, 1821601106, 1, 'Select a Size', '2017-06-14 15:55:25', 'Complete'),
(25, 2, 0, 960302873, 0, 'Select a Size', '2017-06-14 16:51:39', 'Complete'),
(26, 2, 0, 280677377, 0, 'Select a Size', '2017-06-14 16:48:13', 'Complete'),
(27, 2, 0, 2017275329, 0, 'Select a Size', '2017-06-14 16:52:12', 'Complete'),
(28, 2, 0, 873247638, 0, 'Select a Size', '2017-06-14 16:54:29', 'Complete'),
(29, 2, 0, 2090309079, 0, 'Select a Size', '2017-06-14 16:57:51', 'pending'),
(30, 2, 0, 1503576968, 0, 'Select a Size', '2017-06-14 17:34:32', 'Complete'),
(31, 2, 0, 1845056051, 0, 'Select a Size', '2017-06-14 17:35:05', 'Complete'),
(32, 2, 2697, 377459969, 3, 'Small', '2017-06-14 18:45:35', 'Complete'),
(33, 2, 0, 777420252, 0, 'Select a Size', '2017-06-14 19:02:41', 'pending'),
(34, 2, 0, 1713612854, 0, 'Select a Size', '2017-06-14 19:05:27', 'Complete'),
(35, 2, 0, 1646510392, 0, 'Select a Size', '2017-06-14 19:54:24', 'Complete'),
(36, 2, 0, 1132652851, 0, 'Select a Size', '2017-06-14 19:55:39', 'Complete'),
(37, 2, 0, 2019536510, 0, 'Select a Size', '2017-06-14 20:20:03', 'Complete'),
(38, 2, 0, 524760373, 0, 'Select a Size', '2017-06-14 20:22:13', 'pending'),
(39, 2, 0, 251600021, 0, 'Select a Size', '2017-06-14 20:24:14', 'pending'),
(40, 2, 0, 1236508030, 0, 'Select a Size', '2017-06-14 20:40:22', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE IF NOT EXISTS `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE IF NOT EXISTS `icons` (
  `icon_id` int(10) NOT NULL,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(1, 1, 'statue', 'icon image.jpg'),
(2, 2, 'Icon-2', 'icon-2.png'),
(3, 3, 'Icon-3', 'icon-3.png'),
(4, 4, 'Icon-4', 'icon-4.jpg'),
(5, 3, 'dummy', 'icon image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(10) NOT NULL,
  `longi` varchar(100) NOT NULL,
  `lati` varchar(100) NOT NULL,
  `police_id` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `longi`, `lati`, `police_id`) VALUES
(2, '68.215134', '27.563993', '2'),
(3, '73.194351', '32.555496', '4'),
(4, '74.329376', '31.582045', '4');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Amir Khan', 'no', 'image2.jpg'),
(3, 'Omri Liba', 'no', 'image3.jpg'),
(4, 'Joy Peng', 'no', 'manufacturer.jpg'),
(5, 'Kane Bender', 'no', 'image6.jpg'),
(6, 'Akshay Kumar', 'yes', 'akshay-kumar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `datetimee` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `email`, `longitude`, `latitude`, `datetimee`, `status`) VALUES
(2, 'danish@gmail.com', '74.4165729', '31.5763257', '08/07/2017 11:06:46 am', 'engaged'),
(3, 'danish@gmail.com', '74.4165729', '31.5763257', '08/07/2017 11:08:16 am', 'engaged'),
(4, 'danish@gmail.com', '74.4165421', '31.5763411', '08/07/2017 11:13:55 am', 'request');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016'),
(4, 1212, 100, 'UBL/Omni Paisa', 123232324, 1212, '23323'),
(5, 9809, 90, 'UBL/Omni Paisa', 90809, 0, 'kjjhkj'),
(6, 8798, 980, 'Bank Code', 98, 98, '90'),
(7, 98908, 98, 'Bank Code', 0, 99879, '897'),
(8, 987, 897, 'Select Payment Mode', 978, 9789, '7'),
(9, 0, 908, 'Select Payment Mode', 908, 98, '0'),
(10, 0, 0, 'Select Payment Mode', 0, 0, 'h'),
(11, 98, 98, 'Select Payment Mode', 908, 90, '09'),
(12, 89, 0, 'Select Payment Mode', 9898, 0, '8u'),
(13, 897, 7, 'Select Payment Mode', 897, 897, '987'),
(14, 98, 908, 'Select Payment Mode', 98, 9, 'h'),
(15, 0, 0, 'Select Payment Mode', 0, 0, 'oih'),
(16, 0, 0, 'Select Payment Mode', 0, 0, 'h'),
(17, 0, 0, 'Select Payment Mode', 0, 0, 'oih'),
(18, 0, 0, 'Select Payment Mode', 0, 0, 'ioj'),
(19, 0, 0, 'Select Payment Mode', 0, 0, 'inoi'),
(20, 0, 0, 'Select Payment Mode', 0, 0, 'nion'),
(21, 0, 0, 'Select Payment Mode', 0, 0, 'n'),
(22, 0, 0, 'Select Payment Mode', 0, 0, 'oih'),
(23, 98, 8, 'Select Payment Mode', 809, 809, '90'),
(24, 0, 0, 'Select Payment Mode', 0, 0, 'o'),
(25, 0, 0, 'Select Payment Mode', 0, 0, 'iuh'),
(26, 0, 0, 'Select Payment Mode', 0, 0, 'iho'),
(27, 0, 0, 'Select Payment Mode', 0, 0, 'io'),
(28, 0, 0, 'Select Payment Mode', 0, 0, 'ion'),
(29, 0, 0, 'Select Payment Mode', 0, 0, 'jb'),
(30, 0, 0, 'Select Payment Mode', 0, 0, 'oi'),
(31, 0, 0, 'Select Payment Mode', 0, 0, 'n'),
(32, 0, 0, 'Bank Code', 0, 0, 'iu'),
(33, 0, 0, 'Select Payment Mode', 0, 0, 'hoi'),
(34, 0, 0, 'Select Payment Mode', 0, 0, 'oin'),
(35, 0, 0, 'Select Payment Mode', 0, 0, 'onii'),
(36, 0, 0, 'Select Payment Mode', 0, 0, 'hiu'),
(37, 0, 0, 'Select Payment Mode', 0, 0, 'on'),
(38, 0, 0, 'Select Payment Mode', 0, 0, 'ion'),
(39, 0, 0, 'Select Payment Mode', 0, 0, 'oih'),
(40, 0, 0, 'Select Payment Mode', 0, 0, 'oin'),
(41, 0, 0, 'Select Payment Mode', 0, 0, 'nkl'),
(42, 0, 0, 'Select Payment Mode', 0, 0, 'b'),
(43, 0, 0, 'Select Payment Mode', 0, 0, 'nl'),
(44, 0, 0, 'Select Payment Mode', 0, 0, 'o ni'),
(45, 0, 0, 'Select Payment Mode', 0, 0, 'ion'),
(46, 0, 0, 'Select Payment Mode', 0, 0, 'oin'),
(47, 0, 0, 'Select Payment Mode', 0, 0, 'n'),
(48, 0, 0, 'Select Payment Mode', 0, 0, 'kjknj'),
(49, 0, 0, 'Select Payment Mode', 0, 0, 'iuh'),
(50, 0, 0, 'Select Payment Mode', 0, 0, 'oin'),
(51, 0, 0, 'Select Payment Mode', 0, 0, 'oin'),
(52, 0, 0, 'Select Payment Mode', 0, 0, 'nio'),
(53, 0, 0, 'Select Payment Mode', 0, 0, 'noin'),
(54, 0, 0, 'Select Payment Mode', 0, 0, 'ni'),
(55, 0, 0, 'Select Payment Mode', 0, 0, 'n'),
(56, 0, 0, 'Select Payment Mode', 0, 0, 'kj'),
(57, 0, 0, 'Select Payment Mode', 0, 0, 'oin');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(16, 2, 1715523401, '2', 3, 'Small', 'Complete'),
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(18, 2, 1715523401, '11', 1, 'Medium', 'pending'),
(19, 2, 1068059025, '7', 1, 'Medium', 'pending'),
(20, 2, 909940689, '6', 3, 'Large', 'complete'),
(21, 2, 909940689, '11', 2, 'Meduim', 'complete'),
(22, 2, 1055490851, '9', 2, 'Medium', 'pending'),
(23, 2, 725073436, '19', 2, 'Small', 'pending'),
(24, 2, 1821601106, '19', 1, 'Select a Size', 'Complete'),
(25, 2, 960302873, '19', 0, 'Select a Size', 'Complete'),
(26, 2, 280677377, '8', 0, 'Select a Size', 'Complete'),
(27, 2, 2017275329, '19', 0, 'Select a Size', 'Complete'),
(28, 2, 873247638, '19', 0, 'Select a Size', 'Complete'),
(29, 2, 2090309079, '19', 0, 'Select a Size', 'pending'),
(30, 2, 1503576968, '19', 0, 'Select a Size', 'Complete'),
(31, 2, 1845056051, '19', 0, 'Select a Size', 'Complete'),
(32, 2, 377459969, '19', 3, 'Small', 'Complete'),
(33, 2, 777420252, '19', 0, 'Select a Size', 'pending'),
(34, 2, 1713612854, '19', 0, 'Select a Size', 'Complete'),
(35, 2, 1646510392, '19', 0, 'Select a Size', 'Complete'),
(36, 2, 1132652851, '2', 0, 'Select a Size', 'Complete'),
(37, 2, 2019536510, '19', 0, 'Select a Size', 'Complete'),
(38, 2, 524760373, '19', 0, 'Select a Size', 'pending'),
(39, 2, 251600021, '20', 0, 'Select a Size', 'pending'),
(40, 2, 1236508030, '24', 0, 'Select a Size', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE IF NOT EXISTS `police` (
  `id` int(11) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_email` varchar(255) NOT NULL,
  `p_pass` varchar(255) NOT NULL,
  `p_city` varchar(255) NOT NULL,
  `p_cnic` varchar(255) NOT NULL,
  `p_contact` varchar(255) NOT NULL,
  `p_image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `pid`, `p_name`, `p_email`, `p_pass`, `p_city`, `p_cnic`, `p_contact`, `p_image`) VALUES
(1, '12', 'Awais', 'awais@gmail.com', '123', '', '5123124123', '2312313', 'download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `aud` varchar(1000) NOT NULL,
  `audiofile` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`, `aud`, `audiofile`) VALUES
(1, 5, 4, 3, '2017-02-15 10:48:40', 'New T-Shirt', 'new-t-shirt', 'img1.jpg', 'img2.jpg', 'img3.jpg', 70, 50, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '<iframe width="854" height="480" src="https://www.youtube.com/embed/BxjtpdWeGtI" frameborder="0" allowfullscreen></iframe>', 'T-Shirts', 'Sale', 'product', '', ''),
(2, 5, 3, 2, '2017-02-15 10:48:48', 'U.S. Polo Assn. Blue Polos shirt', 'product-url-2', 'U-S--Polo-Assn--Blue-Polos-0266-586842-1-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0268-586842-2-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0271-586842-3-pdp_slider_l.jpg', 69, 45, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'T-Shirt', 'Gift', 'product', '', ''),
(3, 5, 3, 6, '2017-02-15 10:48:52', 'BENETTON White Polo Shirt', 'product-url-3', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-1-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-2-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0609-0914361-3-pdp_slider_l.jpg', 98, 0, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'T-Shirt', 'New', 'product', '', ''),
(4, 7, 5, 5, '2017-02-19 06:49:39', 'Navy Blue Solid Denim Jacket', 'product-url-4', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-1-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-2-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-3-pdp_slider_l.jpg', 230, 150, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'Jackets', 'Sale', 'product', '', ''),
(5, 7, 5, 5, '2017-02-19 06:45:07', 'Denim Borg Lined Western Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'Jackets', 'Gift', 'product', '', ''),
(6, 7, 5, 5, '2017-02-19 06:49:18', 'Jack & White Solid Denim Jacket', 'product-url-6', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-1-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-2-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-3-pdp_slider_l.jpg', 96, 0, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'Jackets', 'New', 'product', '', ''),
(7, 4, 2, 6, '2017-02-15 10:49:07', 'Nice Solid Long Coat With Lace', 'product-url-7', 'fur coat with button1.jpg', 'fur coat with button2.jpg', 'fur coat with button3.jpg', 200, 150, '<p>Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document. kingVideo provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'Coats', 'Sale', 'product', '', ''),
(8, 4, 2, 4, '2017-02-15 10:49:11', 'Sleeveless Faux Fur Hybrid Coat', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 245, 100, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'Coats', 'Gift', 'product', '', ''),
(9, 5, 4, 2, '2017-02-19 06:46:14', 'Remind Printed T-Shirt', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 0, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qRswlmADRa8" frameborder="0" allowfullscreen></iframe>', 'T-Shirt', 'New', 'product', '', ''),
(11, 7, 5, 5, '2017-02-20 06:21:03', 'jacket bundle', 'jacket-bundle', 'jacket-1.jpg', 'jacket-2.jpg', 'jacket-3.jpg', 300, 200, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', '<iframe width="854" height="480" src="https://www.youtube.com/embed/qImi3vNccaU" frameborder="0" allowfullscreen></iframe>', 'jacket bundle', 'Sale', 'bundle', '', ''),
(12, 7, 2, 3, '2017-06-14 11:50:09', 'oisdnoi', 'oiinoi', 'WIN_20160904_050059.JPG', 'WIN_20160904_050059.JPG', 'WIN_20160904_050059.JPG', 899, 23, '<p>jjnj</p>', '<p>klknkl</p>', '\r\n\r\nhiuhiuhuihiuhuihuihui', '23323', 'iuiuhui', 'product', '', ''),
(13, 0, 0, 0, '2017-06-14 13:04:20', 'iuhuihiuh', '', 'WIN_20160904_050059.JPG', 'WIN_20160904_050059.JPG', 'WIN_20160904_050059.JPG', 9, 32, '<p>kknkl</p>', '<p>,m n,m</p>', '\r\n\r\nkknkl', '3jknjkd', 'kjnk', 'product', '', ''),
(14, 0, 0, 0, '2017-06-14 13:08:03', 'iuhiuhh', '', '2.jpg', '2.jpg', '2.jpg', 89, 98, '<p>kjnk</p>', '<p><strong>knk</strong></p>', '\r\n\r\nkjnjknkj', '98', 'iu', 'product', '', ''),
(15, 5, 2, 3, '2017-06-14 13:49:00', 'ihiu', 'hiuihiu', '2.jpg', '2.jpg', '2.jpg', 89, 89, '<p>kjnio</p>', '<p>kjn</p>', '\r\n\r\nkjkn', '90', 'j', 'product', '', ''),
(16, 5, 2, 3, '2017-06-14 13:53:01', 'onioniooijiojoijio', 'klljkl', '2.jpg', '2.jpg', '2.jpg', 899, 89, '<p>kjkbiu</p>', '<p>ib</p>', '\r\n\r\n\r\nkj\r\n', 'jbjh', 'uiu', 'product', 'audio', ''),
(17, 0, 5, 0, '2017-06-14 14:23:26', 'mmmmm', '', '2.jpg', '2.jpg', '2.jpg', 779, 79, '<p>kjkj</p>', '<p>jknk</p>', '\r\n\r\njhb', 'hubhb', 'iuhui', 'product', 'audio', ''),
(18, 7, 2, 3, '2017-06-14 14:34:47', 'klmklmklmmmmmmmmmm', 'sdsd', '2.jpg', '2.jpg', '2.jpg', 98, 89, '<p>mn nmkjnkjn</p>', '<p>n nkj</p>', '\r\n\r\nmnkj', 'mklmklmklmklm', '87798', 'product', 'audio', ''),
(19, 0, 1, 3, '2017-06-14 20:33:08', 'ohiuhi', 'song1', '2.jpg', '2.jpg', '10.jpg', 899, 899, '<p>kjnkj</p>', '<p>klln</p>', '\r\n\r\nmmn', 'iuhiuhiu', 'kjnkj', 'product', 'audio', 'Aey Maut Tehar Jaa.mp3'),
(20, 4, 2, 2, '2017-06-14 15:20:09', 'haider', 'iuniu', '9.jpg', '9.jpg', '9.jpg', 989, 98, '<p>kjbj</p>', '<p>kjnbjk</p>', '\r\n\r\nmnn m', '9', 'knk', 'product', '', ''),
(21, 0, 1, 3, '2017-06-14 15:31:31', 'huhuhuh', 'song', '2.jpg', '2.jpg', '2.jpg', 89, 98, '<p>nn &nbsp;kn&nbsp;</p>', '<p>kj</p>', '\r\n\r\nkj', 'huhuhu', 'kj', 'product', 'audio', 'Aey Maut Tehar Jaa.mp3'),
(22, 0, 1, 3, '2017-06-14 16:45:46', 'shoukat', 'song', '2.png', '2.png', '2.png', 98, 98, '<p>klknkj</p>', '<p>m, n,m</p>', '\r\n\r\n,mm', 'nnoinio', 'kj', 'product', 'audio', 'Aey Maut Tehar Jaa.mp3'),
(23, 0, 1, 3, '2017-06-14 20:26:03', 'hasanali', 'song', 'myw3schoolsimage.jpg', 'myw3schoolsimage.jpg', 'myw3schoolsimage.jpg', 89, 89, '<p>kjn</p>', '<p>kj</p>', '\r\n\r\nkjjn', 'iubiub', 'kln', 'product', 'audio', 'Aey Maut Tehar Jaa.mp3'),
(24, 0, 1, 3, '2017-06-14 20:39:44', 'meeee', 'iubiubui', '2.png', '2.png', '2.png', 9087090, 0, '<p>kjjnhkj</p>', '<p>kjn</p>', '\r\n\r\nkjnb', 'iubuibuibu', '8979', 'product', 'audio', 'Aey Maut Tehar Jaa.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Coats', 'no', 'image3.jpg'),
(5, 'T-Shirts', 'no', 'image2.jpg'),
(6, 'Sweater', 'no', 'sweater.jpg'),
(7, 'jackets', 'yes', 'jacket.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `firebaseid` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `firebaseid`, `name`, `pass`, `date`, `status`) VALUES
(NULL, 'danish@gmail.com', 'cZ1rMhf7T8M:APA91bGnscpYFCm4yO9NRihwDLyZ2YpEf6ZgqM_poRhgBIS3NoeurFBUknCgDJUI_ngmyEnKTnnxB6WTRt2IpirlGHkpozNtahrSx_scgc_mD3S4Q4jzs9UHYloGo129W4h0fSDU_WIn', 'danish', '12345', '0000-00-00', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `service_id` int(10) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(4, 'Gift Package ', 'service-1.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com'),
(5, 'Love Surprisre', 'service-2.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com'),
(6, 'Wedding Package', 'service-3.jpg', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>', 'Contact For Details and Rates', 'http://www.computerfever.com');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide Number 1', '1.jpg', 'http://localhost/Ecom_store/shop.php'),
(2, 'Slide Number 2', '2.jpg', 'htttp://www.computerfever.com/services'),
(3, 'Slide Number 3', '3.jpg', 'http://urdustories.computerfever.com'),
(7, 'Slide Number 4', 'slide-5.jpg', 'http://www.computerfever.com');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `email` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `pname` varchar(1000) NOT NULL,
  `id` int(255) NOT NULL,
  `n` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`email`, `url`, `pname`, `id`, `n`) VALUES
('brock@gmail.com', 'sdfsdf', '', 1, ''),
('brock@gmail.com', 'sdfsdf', '', 2, ''),
('brock@gmail.com', 'admin_are/product_images/Aey Maut Tehar Jaa.mp3', 'naat', 3, ''),
('brock@gmail.com', '', '', 4, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 5, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 6, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 7, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 8, ''),
('brock@gmail.com', 'admin_area/product_images/', 'dff', 9, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 10, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 11, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 12, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 13, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 14, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 15, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 16, ''),
('brock@gmail.com', 'admin_area/product_images/', '', 17, ''),
('brock@gmail.com', 'admin_area/product_images/', 'meeee', 18, 'Aey Maut Tehar Jaa.mp3'),
('brock@gmail.com', 'admin_area/product_images/', 'meeee', 19, 'Aey Maut Tehar Jaa.mp3'),
('brock@gmail.com', 'admin_area/product_images/', 'meeee', 20, 'Aey Maut Tehar Jaa.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
