-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 04:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Men', 1),
(3, 'Women', 1),
(4, 'Daily Essentials', 0),
(5, 'Child', 1),
(6, 'Furnitures', 0),
(7, 'Gadgets', 1),
(8, 'Electronics', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Diksha', 'dikshasrivastav@gmail.com', '4568798732', 'Hello...Text query', '2022-03-23 14:03:57'),
(2, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'asdfghjk', '2022-03-24 04:25:42'),
(3, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'asddsfhjjkl;l\';qwertryuiuoppop[', '2022-03-24 04:29:43'),
(4, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'qwertyuiopasdfghjklzxcvbnm', '2022-03-24 04:30:12'),
(5, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'asdfgh', '2022-03-24 04:48:54'),
(6, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'asdfgg', '2022-03-24 04:54:04'),
(7, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'asdfgh', '2022-03-24 04:56:55'),
(8, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'hello mam', '2022-03-25 05:37:36'),
(9, 'diksha', 'diksha.srivastava@aiesec.net', '1234567890', 'Hello mam Good morning', '2022-04-01 06:08:15'),
(10, 'diksha', 'dikshasrivastava195@gmail.com', '1234567890', 'hekllo', '2022-04-02 09:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(1, 2, 'Testing', 'Test/Test', 123456, 'COD', 170, 'pending', 1, 'c1109d08c5c337d6c3c9', '', '', '2022-03-31 07:41:11'),
(2, 2, '2nd test', 'using payu', 123456, 'payu', 36, 'pending', 1, '6cb931e85a919e8ecea2', '', '', '2022-03-31 07:44:18'),
(3, 2, 'Testing', 'using payu', 123456, 'payu', 256, 'pending', 1, '7919ee06e973d4568258', '', '', '2022-03-31 07:45:35'),
(4, 2, 'Muz', 'Muzaffarpur', 842003, 'payu', 1999, 'pending', 1, '14e96b0586b7c6ed0dec', '', '', '2022-04-01 04:55:35'),
(5, 2, 'Hello mam', 'My class', 123456, 'COD', 135000, 'pending', 1, 'fd8abdaff6aad55048cf', '', '', '2022-04-01 06:05:03'),
(6, 1, 'Testing', 'Test/Test', 123456, 'payu', 799, 'pending', 1, 'd1f3182f7bdfc3a8fcb2', '', '', '2022-04-01 06:20:37'),
(7, 1, 'Muz', 'Muzaffarpur', 842003, 'COD', 2898, 'pending', 1, '782710eaab1315499510', '', '', '2022-04-01 02:49:53'),
(8, 2, 'Muz', 'Muzaffarpur', 842003, 'COD', 135799, 'pending', 1, '76bb069edbca75f4d85e', '', '', '2022-04-02 09:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 4, 1, 32),
(2, 1, 5, 6, 23),
(3, 2, 3, 2, 12),
(4, 2, 2, 4, 3),
(5, 3, 4, 8, 32),
(6, 4, 10, 1, 1999),
(7, 5, 13, 1, 135000),
(8, 6, 16, 1, 799),
(9, 7, 14, 1, 1499),
(10, 7, 18, 1, 1399),
(11, 8, 16, 1, 799),
(12, 8, 13, 1, 135000);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 6, 'Recliner yellow', 1000, 899, 10, '767311100_252115885_2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed faucibus turpis in eu mi bibendum neque.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed enim ut sem viverra. Quam adipiscing vitae proin sagittis nisl. Fermentum leo vel orci porta non pulvinar. Interdum velit euismod in pellentesque massa placerat duis ultricies. Enim ut sem viverra aliquet eget sit amet tellus cras. Ultricies mi eget mauris pharetra et ultrices neque ornare. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Nam libero justo laoreet sit amet cursus sit. Turpis massa tincidunt dui ut ornare lectus. Quis eleifend quam adipiscing vitae proin. Neque viverra justo nec ultrices dui. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Sit amet consectetur adipiscing elit duis tristique. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Non consectetur a erat nam at lectus urna duis. Nec ultrices dui sapien eget. Nibh tellus molestie nunc non blandit massa enim. Et malesuada fames ac turpis egestas sed. Cursus sit amet dictum sit amet justo donec.', '', '', '', 0),
(2, 6, 'Working Chair', 650, 550, 14, '621591517_578369140_1 (1).jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed faucibus turpis in eu mi bibendum neque.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem donec massa sapien faucibus et. Neque laoreet suspendisse interdum consectetur libero id. Ut lectus arcu bibendum at varius vel. Risus pretium quam vulputate dignissim suspendisse in. Cum sociis natoque penatibus et magnis dis parturient montes nascetur. Ac placerat vestibulum lectus mauris. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec. Id porta nibh venenatis cras sed. Mi bibendum neque egestas congue quisque egestas diam in arcu. Placerat vestibulum lectus mauris ultrices eros in cursus turpis massa. Sapien pellentesque habitant morbi tristique. Nisl condimentum id venenatis a condimentum vitae. Varius vel pharetra vel turpis nunc eget. Sit amet nulla facilisi morbi. Libero nunc consequat interdum varius sit amet mattis. Laoreet id donec ultrices tincidunt arcu non sodales neque sodales. Metus aliquam eleifend mi in nulla posuere. Sem viverra aliquet eget sit amet tellus cras adipiscing.\r\n\r\nTincidunt vitae semper quis lectus nulla at volutpat diam. Egestas congue quisque egestas diam in arcu cursus euismod. Risus feugiat in ante metus dictum at tempor commodo ullamcorper. Tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Non enim praesent elementum facilisis leo vel fringilla est. Pretium lectus quam id leo. Commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Ac placerat vestibulum lectus mauris ultrices. Augue lacus viverra vitae congue eu. Massa sed elementum tempus egestas sed sed. Faucibus scelerisque eleifend donec pretium.', '', '', '', 0),
(3, 6, 'Sofa', 4000, 2000, 12, '934307151_287733289_3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tempor commodo ullamcorper a lacus vestibulum. Et ultrices neque ornare aenean. Vestibulum morbi blandit cursus risus. Lobortis scelerisque fermentum dui faucibus in ornare. Vivamus at augue eget arcu. Sem nulla pharetra diam sit. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Nisl nisi scelerisque eu ultrices. Semper viverra nam libero justo laoreet sit. Dignissim sodales ut eu sem integer vitae. Enim ut sem viverra aliquet eget sit amet. Eget egestas purus viverra accumsan. Nullam eget felis eget nunc lobortis.', 'adf', 'ads', 'afsf', 1),
(4, 6, 'Recliner', 1000, 800, 10, '673566950_119845920_2.jpg', 'Comfortable chair', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nunc pulvinar sapien et ligula. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Leo vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non. Nulla pharetra diam sit amet.', 'adf', 'daf', 'dfaa', 1),
(5, 6, 'Chair', 500, 350, 10, '997424470_578369140_1 (1).jpg', 'Comfortable Chair', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '', '', 1),
(6, 3, 'One piece', 1000, 799, 10, '208840986_roman-holoschchuk-DPOPc2vhUww-unsplash.jpg', 'One piece', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed enim ut sem viverra. Quam adipiscing vitae proin sagittis nisl. Fermentum leo vel orci porta non pulvinar. Interdum velit euismod in pellentesque massa placerat duis ultricies. Enim ut sem viverra aliquet eget sit amet tellus cras. Ultricies mi eget mauris pharetra et ultrices neque ornare. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Nam libero justo laoreet sit amet cursus sit. Turpis massa tincidunt dui ut ornare lectus. Quis eleifend quam adipiscing vitae proin. Neque viverra justo nec ultrices dui. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Sit amet consectetur adipiscing elit duis tristique. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Non consectetur a erat nam at lectus urna duis. Nec ultrices dui sapien eget. Nibh tellus molestie nunc non blandit massa enim. Et malesuada fames ac turpis egestas sed. Cursus sit amet dictum sit amet justo donec.', '', '', '', 1),
(7, 3, 'Two piece', 1500, 999, 4, '570754352_ussama-azam-xgNSlx7DjYM-unsplash.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed enim ut sem viverra. Quam adipiscing vitae proin sagittis nisl. Fermentum leo vel orci porta non pulvinar. Interdum velit euismod in pellentesque massa placerat duis ultricies. Enim ut sem viverra aliquet eget sit amet tellus cras. Ultricies mi eget mauris pharetra et ultrices neque ornare. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Nam libero justo laoreet sit amet cursus sit. Turpis massa tincidunt dui ut ornare lectus. Quis eleifend quam adipiscing vitae proin. Neque viverra justo nec ultrices dui. Imperdiet sed euismod nisi porta lorem mollis aliquam ut. Sit amet consectetur adipiscing elit duis tristique. Ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Non consectetur a erat nam at lectus urna duis. Nec ultrices dui sapien eget. Nibh tellus molestie nunc non blandit massa enim. Et malesuada fames ac turpis egestas sed. Cursus sit amet dictum sit amet justo donec.', '', '', '', 1),
(8, 5, 'T-Shirt', 800, 499, 10, '311651441_sourav-ahmmad-fwJMG9zm3dI-unsplash.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '', '', 1),
(9, 5, 'Shirt', 1000, 799, 14, '242356667_kiana-bosman-GvleXr4tIPk-unsplash.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu volutpat odio facilisis mauris sit amet massa vitae. Purus sit amet luctus venenatis lectus magna. Ultrices sagittis orci a scelerisque purus. Nam libero justo laoreet sit amet cursus sit amet. In metus vulputate eu scelerisque felis imperdiet. Ultrices neque ornare aenean euismod elementum nisi quis eleifend quam. Justo nec ultrices dui sapien eget mi. Consequat nisl vel pretium lectus quam id leo. Sed odio morbi quis commodo odio aenean sed adipiscing diam. Vitae sapien pellentesque habitant morbi. Curabitur gravida arcu ac tortor dignissim convallis aenean et. Ipsum nunc aliquet bibendum enim facilisis gravida. Tellus integer feugiat scelerisque varius morbi enim nunc. Consequat ac felis donec et. Tortor at risus viverra adipiscing at in tellus integer feugiat.', '', '', '', 1),
(10, 1, 'Blazer', 5000, 1999, 12, '342293388_mahdi-bafande-6f5KtX2GGv4-unsplash.jpg', 'Commodo sed egestas egestas fringilla. Fusce id velit ut tortor pretium viverra. Varius vel pharetra vel turpis nunc eget lorem dolor sed.', 'Amet venenatis urna cursus eget. Lobortis elementum nibh tellus molestie nunc non blandit massa enim. Sit amet porttitor eget dolor. Tempor commodo ullamcorper a lacus vestibulum sed arcu. Metus aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices. Etiam tempor orci eu lobortis elementum nibh. Id venenatis a condimentum vitae sapien pellentesque. In hendrerit gravida rutrum quisque non tellus orci. Mauris vitae ultricies leo integer malesuada nunc vel risus. Pellentesque habitant morbi tristique senectus et netus et malesuada. Mattis rhoncus urna neque viverra justo nec ultrices. Sed vulputate odio ut enim blandit volutpat. Tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus. In eu mi bibendum neque. Commodo sed egestas egestas fringilla. Fusce id velit ut tortor pretium viverra. Varius vel pharetra vel turpis nunc eget lorem dolor sed. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus.', '', '', '', 1),
(11, 1, 'Coat', 10000, 4999, 10, '941694573_mahdi-bafande-XCU9ZV_ys5w-unsplash.jpg', 'Amet justo donec enim diam vulputate ut pharetra sit amet. Magna sit amet purus gravida quis blandit turpis cursus in', 'Sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus. Eu volutpat odio facilisis mauris sit amet. Fringilla ut morbi tincidunt augue interdum velit euismod. Id semper risus in hendrerit. Ac ut consequat semper viverra nam libero. Sem fringilla ut morbi tincidunt augue. Neque gravida in fermentum et sollicitudin. At lectus urna duis convallis convallis. Nisi vitae suscipit tellus mauris. Sit amet facilisis magna etiam tempor orci eu lobortis elementum. Id eu nisl nunc mi ipsum faucibus vitae aliquet. Mattis rhoncus urna neque viverra justo nec. Sed vulputate odio ut enim blandit. Convallis a cras semper auctor neque vitae tempus quam pellentesque. Amet justo donec enim diam vulputate ut pharetra sit amet. Magna sit amet purus gravida quis blandit turpis cursus in.', '', '', '', 1),
(12, 7, 'Tablet', 50000, 30000, 10, '744024287_henry-ascroft-7OFnb7NOvjw-unsplash.jpg', 'Amet justo donec enim diam vulputate ut pharetra sit amet. Magna sit amet purus gravida quis blandit turpis cursus in', 'Auctor augue mauris augue neque. A arcu cursus vitae congue mauris. Id diam vel quam elementum pulvinar. Eu turpis egestas pretium aenean pharetra magna ac placerat. Ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae. Urna condimentum mattis pellentesque id nibh tortor id. Ornare quam viverra orci sagittis eu. Condimentum mattis pellentesque id nibh. Enim eu turpis egestas pretium aenean pharetra magna ac. Vitae aliquet nec ullamcorper sit amet risus. Pellentesque nec nam aliquam sem et tortor consequat id porta. Lacus vestibulum sed arcu non odio euismod lacinia at. Ac ut consequat semper viverra nam libero. Enim blandit volutpat maecenas volutpat blandit. Aliquam ultrices sagittis orci a scelerisque. Ante metus dictum at tempor commodo ullamcorper a lacus vestibulum. Vehicula ipsum a arcu cursus. Neque ornare aenean euismod elementum nisi quis eleifend quam. Metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet.\r\n\r\nEuismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Volutpat maecenas volutpat blandit aliquam etiam erat. Consectetur lorem donec massa sapien faucibus et molestie ac. Id volutpat lacus laoreet non curabitur gravida. Sed libero enim sed faucibus turpis in. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra. Laoreet non curabitur gravida arcu. Volutpat consequat mauris nunc congue nisi. Sed turpis tincidunt id aliquet. Leo in vitae turpis massa sed elementum tempus egestas. Libero nunc consequat interdum varius sit amet mattis vulputate enim. Ultricies mi eget mauris pharetra et ultrices neque ornare aenean. In cursus turpis massa tincidunt dui ut ornare.', '', '', '', 1),
(13, 7, 'IPhone', 150000, 135000, 12, '623955108_nosa-obaseki-tigYNO02bfc-unsplash.jpg', 'Apple brand', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fermentum leo vel orci porta non pulvinar neque laoreet suspendisse. Ut placerat orci nulla pellentesque dignissim. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac. Et netus et malesuada fames ac turpis egestas integer. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. In fermentum et sollicitudin ac. Id velit ut tortor pretium viverra suspendisse potenti nullam ac. Semper auctor neque vitae tempus quam pellentesque nec. Velit laoreet id donec ultrices tincidunt arcu. Arcu risus quis varius quam quisque id diam vel quam. Dictum at tempor commodo ullamcorper a lacus vestibulum sed. Quis ipsum suspendisse ultrices gravida dictum fusce ut placerat. Orci eu lobortis elementum nibh tellus molestie nunc non. Non diam phasellus vestibulum lorem. Donec enim diam vulputate ut pharetra sit amet aliquam id.', '', '', '', 1),
(14, 7, 'Headphone', 3000, 1499, 10, '753898903_niclas-illg---z13hWoxio-unsplash.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel pharetra vel turpis nunc eget lorem dolor sed viverra. Adipiscing vitae proin sagittis nisl rhoncus. Fermentum dui faucibus in ornare quam viverra orci sagittis. In fermentum posuere urna nec tincidunt praesent semper. Feugiat pretium nibh ipsum consequat nisl vel pretium. Arcu dictum varius duis at consectetur. Porttitor eget dolor morbi non. Enim ut tellus elementum sagittis vitae. Nulla posuere sollicitudin aliquam ultrices sagittis orci a. Lectus magna fringilla urna porttitor rhoncus dolor purus non. Donec et odio pellentesque diam volutpat commodo. Turpis massa sed elementum tempus egestas sed. Fringilla urna porttitor rhoncus dolor purus non. Diam sit amet nisl suscipit adipiscing bibendum est ultricies integer. Tristique nulla aliquet enim tortor at auctor. In hac habitasse platea dictumst quisque sagittis purus sit amet. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a.', '', '', '', 1),
(15, 7, 'Earphones', 2500, 1499, 10, '685881750_daniel-romero-K63lOA4Ijyk-unsplash.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sociis natoque penatibus et magnis dis parturient montes. Dis parturient montes nascetur ridiculus mus mauris. Aliquam id diam maecenas ultricies.', 'Vestibulum sed arcu non odio. Blandit libero volutpat sed cras ornare arcu dui vivamus. Amet nisl suscipit adipiscing bibendum. Ut tellus elementum sagittis vitae et leo duis. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius. Pretium vulputate sapien nec sagittis. Fermentum posuere urna nec tincidunt. At volutpat diam ut venenatis tellus in metus vulputate. Bibendum neque egestas congue quisque egestas diam in. Bibendum neque egestas congue quisque egestas diam. Sed blandit libero volutpat sed cras ornare arcu. Et leo duis ut diam.', '', '', '', 1),
(16, 5, 'Top', 1000, 799, 10, '249740965_vanessa-serpas-e6lWMBIgNso-unsplash.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sociis natoque penatibus et magnis dis parturient montes. Dis parturient montes nascetur ridiculus mus mauris. Aliquam id diam maecenas ultricies.', '', '', '', 1),
(17, 1, 'Shirt (white)', 1000, 599, 10, '715744818_kenzie-kraft-9QW52RyBLao-unsplash.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sociis natoque penatibus et magnis dis parturient montes. Dis parturient montes nascetur ridiculus mus mauris. Aliquam id diam maecenas ultricies. Scelerisque eleifend donec pretium vulputate sapien. Ornare lectus sit amet est placerat in egestas erat. Enim neque volutpat ac tincidunt vitae semper quis lectus nulla. Ornare arcu odio ut sem nulla pharetra diam sit amet. Donec pretium vulputate sapien nec sagittis. Erat velit scelerisque in dictum non consectetur a erat. Urna nunc id cursus metus aliquam eleifend. Sed arcu non odio euismod. Blandit massa enim nec dui nunc mattis enim. Accumsan tortor posuere ac ut consequat semper. Eget mauris pharetra et ultrices neque ornare aenean euismod elementum. In cursus turpis massa tincidunt dui ut ornare lectus. Magna ac placerat vestibulum lectus mauris. Mauris vitae ultricies leo integer malesuada nunc vel. Facilisis magna etiam tempor orci eu lobortis elementum.', '', '', '', 1),
(18, 3, 'Jogger', 2000, 1399, 10, '839000399_engin-akyurt-5raPrOhbKQo-unsplash.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sociis natoque penatibus et magnis dis parturient montes. Dis parturient montes nascetur ridiculus mus mauris. Aliquam id diam maecenas ultricies. Scelerisque eleifend donec pretium vulputate sapien. Ornare lectus sit amet est placerat in egestas erat. Enim neque volutpat ac tincidunt vitae semper quis lectus nulla. Ornare arcu odio ut sem nulla pharetra diam sit amet. Donec pretium vulputate sapien nec sagittis. Erat velit scelerisque in dictum non consectetur a erat. Urna nunc id cursus metus aliquam eleifend. Sed arcu non odio euismod. Blandit massa enim nec dui nunc mattis enim. Accumsan tortor posuere ac ut consequat semper. Eget mauris pharetra et ultrices neque ornare aenean euismod elementum. In cursus turpis massa tincidunt dui ut ornare lectus. Magna ac placerat vestibulum lectus mauris. Mauris vitae ultricies leo integer malesuada nunc vel. Facilisis magna etiam tempor orci eu lobortis elementum.', '', '', '', 1),
(19, 3, 'Sweater', 1000, 799, 10, '288733471_michal-binkiewicz-0vSSu-myZHw-unsplash.jpg', 'short desc', 'ewrtyuiojhbnm,bncbsdjkfhwernncs', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Diksha', 'diksha', 'diksha@gmail.com', '1234567890', '2022-03-23 17:24:19'),
(2, 'diksha', 'qwerty', 'diksha.srivastava@aiesec.net', '1234567890', '2022-03-25 02:13:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
