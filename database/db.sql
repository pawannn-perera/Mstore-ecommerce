-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 10:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Samsung'),
(2, 'Apple'),
(3, 'Google'),
(4, 'Redmi'),
(5, 'OnePlus');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(100, 1, '0.0.0.0', 12, 'Galaxy 23 ULTRA', 'samsung.png', 1, 234990, 234990);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Mobile Phones'),
(2, 'Smart Watches'),
(3, 'Mobile Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(34, 7, 5, 'Apple IPhone 14 Plus', 1499950, 5, 'CONFIRMED', '404132323'),
(35, 7, 3, 'Galaxy M32', 67990, 1, 'CONFIRMED', '404132323'),
(36, 7, 1, 'Galaxy 23 ULTRA', 234990, 1, 'CONFIRMED', '404132323'),
(37, 9, 1, 'Galaxy 23 ULTRA', 1879920, 8, 'CONFIRMED', '1597075240'),
(38, 9, 2, 'Galaxy Z Fold4', 449990, 1, 'CONFIRMED', '1597075240'),
(39, 9, 6, 'Apple Iphone 11', 164990, 1, 'CONFIRMED', '1597075240'),
(40, 9, 1, 'Galaxy 23 ULTRA', 234990, 1, 'CONFIRMED', '1578013277'),
(41, 9, 12, 'Amazfit T-Rex Pro', 38990, 1, 'CONFIRMED', '1578013277'),
(42, 9, 21, 'USB C to Lightning cable 0.9m', 5495, 1, 'CONFIRMED', '1578013277'),
(43, 9, 22, '45W Samsung Travel Adapter', 15990, 1, 'CONFIRMED', '1578013277');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `experience`) VALUES
(1, 'Pasindu', 'pasindumalshan86@gmail.com', 'hi', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', '1', 'Galaxy 23 ULTRA', 234990, '50MP camera for high-resolution stunners\r\nOur fastest mobile processor yet\r\nEnhanced low-light selfies\r\nMade with eco-conscious materials\r\nSnapdragon® 8 Gen 2\r\nWith 06 Months Shop Warranty.', 'samsung.png', 'Samsung '),
(2, '1', '1', 'Galaxy Z Fold4', 449990, 'Unfold your phone’s potential\r\nDo more than more with Multi View\r\nNew Taskbar for PC-like multitasking\r\nOur strongest Galaxy foldable ever\r\nThe only IPX8 water-resistant foldable series\r\nBrighten the night with Nightography\r\nWith 12GB RAM + 256GB ROM\r\nWith 06 Months Shop Warranty.', 'samsung1.png', 'Samsung '),
(3, '1', '1', 'Galaxy M32', 67990, 'FHD+ sAMOLED Display\r\n90Hz Refresh Rate\r\n800 nits in High Brightness Mode\r\n64MP Quad Camera\r\n6GB + 128GB\r\nWith 06 Months Shop Warranty.', 'samsung2.png', 'Samsung'),
(4, '1', '2', 'Apple Iphone', 394990, 'A16 Bionic\r\nSuper Retina XDR display\r\nGroundbreaking safety features\r\nInnovative 48MP camera\r\nSurgical-grade stainless steel\r\nAlways On-Display\r\nAll-day battery life\r\nEmergency SOS via satellite\r\nWith 01 Year Local + International Warranty.', 'apple.png', 'Apple'),
(5, '1', '2', 'Apple IPhone 14 Plus', 299990, 'A15 Bionic chip\r\nLongest Battery Life Ever\r\nVibrant Super Retina XDR display\r\nAerospace – grade aluminum\r\nEmergency SOS via Satellite\r\nCrash Detection\r\nWith 06 Months AppleCare Warranty.', 'apple2.png', 'Apple '),
(6, '1', '2', 'Apple Iphone 11', 164990, '6.1inch\r\nLiquid Retina HD display\r\nA13 Bionic chip\r\nDual SIM (nano-SIM and eSIM)12\r\nWith 01 Year Local + International Warranty.', 'apple3.png', 'Apple'),
(7, '1', '3', 'Google Pixel 6', 184990, 'Smarter chip for a smarter phone\r\nThe safest Pixel yet.\r\nPixel Camera has bigger sensors\r\nSay goodbye to photobombers\r\nThe all-day battery life\r\nHighest rated for security\r\nWith 8GB RAM + 128GB ROM\r\nWith 06 Months Shop Warranty.', 'google.png', 'Google Pixel'),
(8, '1', '3', 'Google Pixel 6a', 134990, 'Battery all day power\r\nPhotos that match your vision\r\nProtection & privacy simplified\r\nAndroid experiences build for you\r\nWith 6GB RAM + 128GB ROM\r\nWith 06 Months Shop Warranty.', 'google2.png', 'Google Pixel Pure Android'),
(9, '1', '3', 'Google Pixel 7 Pro', 299990, '10-120Hz Smooth Display with LTPO9\r\n6.7QHD+ display10\r\nThe pro-level triple rear camera system\r\nIP68 water resistance\r\n25% brighter outdoors, even in sunlight13 \r\n12 GB RAM for faster performance14\r\nWith 12GB RAM + 128GB ROM\r\nWith 06 Months Shop Warranty.', 'google3.png', 'Google Pixel '),
(10, '1', '3', 'Google Pixel 7', 224990, '6.3 fast and responsive display\r\nIP68 water resistance\r\n25% brighter outdoors, even in sunlight\r\nGoogle Tensor G2\r\nThe all-day battery that can last three days.\r\nThe highest rating for security.\r\nWith 06 Months Shop Warranty.', 'google1.png', 'Google Pixel'),
(11, '2', '', 'Amazfit T-Rex 2', 68990, 'Rugged outdoor GPS Smartwatch\r\nSuper-tough from the inside out\r\n150+ built-in sports moods\r\n24H Health management\r\n Powerful Zepp OS\r\nWith 06 Months Shop Warranty.', 'swatch.png', 'Smart Watch'),
(12, '2', '', 'Amazfit T-Rex Pro', 38990, 'Adventure – ready design\r\nEndurance to match your own\r\nToughness from the inside\r\n10 ATM water-resistance2\r\nBlood-oxygen saturation measurement system3\r\nWeather tracker4\r\nGlobal Navigation Satellite Systems\r\nSunrise and sunset monitor\r\nUltra-long 18-day battery life', 'swatch2.png', 'Smart Watch'),
(13, '2', '', 'Mibro Watch A1', 11990, 'Slim elegant design\r\n20 Sports mode\r\nHealth monitoring\r\n5ATM Waterproof\r\n10 – Day battery life\r\nWith 06 Months Warranty.', 'swatch3.png', 'Smart Watch'),
(14, '', '4', 'Redmi 12C', 36990, 'MediaTek Helio G85\r\nImmersive 6.71? display\r\n50MP AI Dual Camera\r\n50000mAh Long lasting battery\r\nUp to 1TB expandable storage\r\nRear fingerprint sensor\r\nWith 01 Year Company Warranty.', 'Redmi.png', 'Redmi'),
(15, '', '4', 'Redmi 10A', 47990, '6.53 Dot drop display\r\nMediaTek Helio G25\r\n5000mAh (typ)\r\n13MP Dual Camera\r\nRear fingerprint sensor\r\nWith 06 Months Warranty.', 'Redmi2.png', 'Redmi'),
(16, '', '4', 'Redmi Note 11', 65990, '6.43 AMOLED DotDisplay\r\n6nm Snapdragon® 680\r\n33W Pro fast charging 5000mAh\r\n50MP AI quad camera\r\n90Hz high refresh rate\r\nWith 01 Year Company Warranty.', 'Redmi3.png', 'Redmi'),
(17, '', '5', 'OnePlus 10 Pro 5G', 224990, 'Second-Generation Hasselblad Camera\r\n120 Hz Fluid AMOLED Display\r\nFlagship performance\r\nOxygen OS 12\r\nWith 06 Months Warranty.', 'oneplus.png', 'Oneplus'),
(18, '', '5', 'OnePlus 10R (5G)', 184990, '150W SUPERVOOC\r\nEndurance EDITION\r\n50MP Triple camera system\r\n120Hz Smart display\r\nHyperBoost gaming engine\r\nWith 06 Months Shop Warranty.', 'oneplus2.png', 'Oneplus'),
(19, '', '5', 'OnePlus Ace', 184990, '150W Super flash charge\r\n4500mAh Large battery\r\nIMX766 Main camera lens\r\n120Hz display refresh rate\r\nMediaTek Dimensity 8100-Max (5 nm)\r\n12GB RAM + 256GB ROM\r\nWith 06 Months Warranty.', 'oneplus3.png', 'Oneplus'),
(20, '3', '', 'Anker Metro Essential 20000mAh Portable Charger', 27990, 'Trickle – Charging Mode\r\nLED Power Indicator\r\nData Output\r\nRapid Charge\r\nWith 06 Months Warranty.', 'MA.png', 'Charger'),
(21, '3', '', 'USB C to Lightning cable 0.9m', 5495, 'Anker iPhone Charger Cable – 3 ft\r\n\r\nUSB C to Lightning Cable [3ft Apple Mfi Certified] Powerline Select Cable for iPhone 12mini/12/12Pro/12Pro Max/11/11 Pro/X/XS/XR/XS Max/8/8 Plus, Supports Power Delivery (Black)', 'MA2.png', 'Cable'),
(22, '3', '', '45W Samsung Travel Adapter', 15990, 'Gets your phone back to 100% in record time\r\nWorks with your friends’ phones too\r\nWith 06 Months Company warranty', 'MA3.png', 'Adapter'),
(23, '3', '', '9H Tempered Glass for Huawei Mobiles', 1999, 'Toughened glass has high transparency, and color never changes\r\nClear HD view\r\nSensor protection\r\nAnti – Finger print\r\nDust resistant\r\nEasy to apply\r\nFree Cleaning Tool Kit (Wet & Dry Wipes)', 'MA4.png', 'Screen Protector'),
(24, '3', '', 'DEVIA 20000mAh POWER BANK KINTONE SERIES', 10990, 'Dual Input & Output\r\nDual USB + Micro + Type-C\r\nWith 06 Months Warranty.', 'MA5.png', 'Power Bank'),
(25, '3', '', 'DJI OSMO 4', 39990, 'Magnetic Design\r\nPortable and Foldable\r\nStory Mode\r\nGesture Control\r\nActiveTrack 3.0\r\nQuick Roll', 'MA6.png', 'Camera');

-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'pawan', 'perera', 'pawan@gmail.com', '$2y$10$Z4TcMijnprJgbYi4edt6uO2O7fRbraWk8vpVbywqdj.RExtcR4SCS', '0770383862', 'as', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
