-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2016 at 02:27 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulletin`
--

CREATE TABLE IF NOT EXISTS `bulletin` (
  `bulletin_id` int(11) NOT NULL AUTO_INCREMENT,
  `bulletin_date` date NOT NULL,
  `bulletin_name` varchar(45) NOT NULL,
  `bulletin_description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `category` varchar(45) NOT NULL,
  `official_id` varchar(45) NOT NULL,
  PRIMARY KEY (`bulletin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bulletin`
--

INSERT INTO `bulletin` (`bulletin_id`, `bulletin_date`, `bulletin_name`, `bulletin_description`, `filename`, `category`, `official_id`) VALUES
(2, '2016-03-01', 'Feeding Program', 'Feeding and Nutrition Program is designed to provide supplemental food to malnourished children aged 6 and below, as this is the critical brain development age for children. The Program involves providing one complete nutritious meal five days a week for a period of 6 months.', 'efe9ac6179dddb0e1684e98630f12caa6126b5f5feeding.jpg', 'Health', '1'),
(3, '2016-03-02', 'Vaccine', 'Ang bakuna[1][2] o baksinasyon ay ang pagbibigay sa isang tao ng isang sustansiyang nakasasanhi ng tugon mula sistemang imyuno. Isang paraan ang sistemang imyuno ng paglaban ng katawan sa mga impeksiyon. Dahil sa tugon ng sistemang imyuno, mas mababa ang pagkakataon na magkaroon ng impeksiyon ang isang tao. Kapag nabantad ang isang tao sa birus o bakteryang nakapagdurulot ng sakit, mapaglalaban ito ng tao at hindi siya magkakaroon ng karamdaman.', '24cde8e32035686fc2c1f32d9bf737a4ffd09436bakuna.jpg', 'Education', '1');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE IF NOT EXISTS `citizen` (
  `citizen_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `house_number` int(11) NOT NULL,
  `street` varchar(45) NOT NULL,
  `barangay` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `district` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `zip_code` int(4) NOT NULL,
  `zip code` int(4) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(45) NOT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `celphone_number` int(11) NOT NULL,
  `telephone_number` int(7) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `civil_status` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `father_first_name` varchar(45) NOT NULL,
  `father_middle_name` varchar(45) NOT NULL,
  `father_last_name` varchar(45) NOT NULL,
  `mother_first_name` varchar(45) NOT NULL,
  `mother_middle_name` varchar(45) NOT NULL,
  `mother_last_name` varchar(45) NOT NULL,
  `date_registered` date NOT NULL,
  `is_official` varchar(3) NOT NULL,
  `proof_of_identity` varchar(255) NOT NULL,
  `proof_of_address` varchar(255) NOT NULL,
  PRIMARY KEY (`citizen_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`citizen_id`, `first_name`, `middle_name`, `last_name`, `house_number`, `street`, `barangay`, `city`, `district`, `region`, `zip_code`, `zip code`, `gender`, `birth_date`, `birth_place`, `weight`, `height`, `celphone_number`, `telephone_number`, `username`, `password`, `nationality`, `civil_status`, `occupation`, `father_first_name`, `father_middle_name`, `father_last_name`, `mother_first_name`, `mother_middle_name`, `mother_last_name`, `date_registered`, `is_official`, `proof_of_identity`, `proof_of_address`) VALUES
(1, 'Kamila', 'Roperoga', 'Lagman', 8, 'Climaco', 'Bangkal', 'Makati', '1', 'National Capital Region (NCR)', 1300, 0, 'Female', '2016-02-15', 'Mandaluyong', 125, 5, 2147483647, 1234567, 'krlagman', 'kamila11021996', 'Filipino', 'Single', 'Student', 'Danmar', 'Mangulabnan', 'Lagman', 'Luningning', 'Samson', 'Roperoga', '2016-02-15', 'No', '7ad3f406f125d864c911fa5721fa926c060013f6LagmanKamilaPOI.JPG', '84ca4895d29fc56d86247d30e0a35cb03e759ba9LagmanKamilaPOI.JPG'),
(4, 'Jhonel', 'Rivera', 'Deluna', 532, 'Franciscan St,', 'Sun Valley', 'Paranaque', '', 'National Capital Region (NCR)', 0, 0, 'Male', '1996-02-12', 'Pasay', 90, 6, 2147483647, 7654321, 'delunaJhonel123@gmail.com', 'elephanttrunk1', 'filipino', 'Single', 'Stundent', 'Crisanto', 'Garay', 'Deluna', 'Naidee', 'Rivera', 'Deluna', '2016-02-18', 'Yes', '549e6bd84ab6454d58eb7bdd0c77bbb86d2df3b3recovery.PNG', '6a26d32420d8186cc5dffe43d6dda51223232d4erecovery.PNG'),
(5, 'Daren', 'Galindo', 'Cabral', 98, 'Alligator', 'Rizal', 'Makati', '', 'National Capital Region (NCR)', 0, 0, 'Male', '1997-01-05', 'Makati City', 45, 5, 2147483647, 7589011, 'cabral.daren@gmail.com', 'qwerty', 'filipino', 'Single', 'Student', 'Dante', 'Matuba', 'Cabral', 'Marcelina', 'Galindo', 'Cabral', '2016-02-18', 'No', 'ecfc1171b65066d1dd33a3ea15ef8df00c68ef0c1.jpg', '174cf92dbcf203c4007750c5d1c32f32e37292111.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_reporter`
--

CREATE TABLE IF NOT EXISTS `cobalt_reporter` (
  `module_name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `show_field` blob NOT NULL,
  `operator` blob NOT NULL,
  `text_field` blob NOT NULL,
  `sum_field` blob NOT NULL,
  `count_field` blob NOT NULL,
  `group_field1` blob NOT NULL,
  `group_field2` blob NOT NULL,
  `group_field3` blob NOT NULL,
  PRIMARY KEY (`module_name`,`report_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_sst`
--

CREATE TABLE IF NOT EXISTS `cobalt_sst` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `config_file` varchar(255) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `official`
--

CREATE TABLE IF NOT EXISTS `official` (
  `official_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_registered` date NOT NULL,
  `official_name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `term_period_from` date NOT NULL,
  `term_period_to` date NOT NULL,
  PRIMARY KEY (`official_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `official`
--

INSERT INTO `official` (`official_id`, `date_registered`, `official_name`, `position`, `term_period_from`, `term_period_to`) VALUES
(1, '2016-02-18', '4', 'Barangay Kagawad', '2016-02-18', '2016-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male'),
(2, 'Kamila', 'Roperoga', 'Lagman', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_filed` date NOT NULL,
  `date_served` date NOT NULL,
  `status` varchar(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `citizen_id` int(11) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `date_filed`, `date_served`, `status`, `service_id`, `citizen_id`) VALUES
(1, '2016-02-11', '2016-02-18', 'Accepted', 1, 5),
(2, '2016-02-14', '2016-02-18', 'Wait list', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `request_has_requirement`
--

CREATE TABLE IF NOT EXISTS `request_has_requirement` (
  `request_has_requirement` int(11) NOT NULL AUTO_INCREMENT,
  `date_submitted` date NOT NULL,
  `requirement_document` varchar(255) NOT NULL,
  PRIMARY KEY (`request_has_requirement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE IF NOT EXISTS `requirement` (
  `requirement_id` int(11) NOT NULL AUTO_INCREMENT,
  `requirement_service_name` varchar(45) NOT NULL,
  `service_requirement` varchar(45) NOT NULL,
  PRIMARY KEY (`requirement_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`requirement_id`, `requirement_service_name`, `service_requirement`) VALUES
(4, '2', 'Cedula'),
(5, '2', 'Must be a registered voter'),
(6, '1', 'DTI/SEC'),
(7, '1', 'Cedula'),
(8, '1', 'Sketch of establishments');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `service_description` text NOT NULL,
  `date_offered` date NOT NULL,
  `is_offered` varchar(45) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_description`, `date_offered`, `is_offered`) VALUES
(1, 'Barangay Clearance', 'It is a certification that is issued by the barangay council that you are a legitimate residence of that particular barangay. This is usually required in applying for a job to determine if you are really a residence of that particular place.', '2016-02-15', 'Yes'),
(2, 'Personal/ Local  Employment', '.', '2016-02-18', 'Yes'),
(3, 'Barangay ID', '.', '2016-02-29', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE IF NOT EXISTS `system_log` (
  `entry_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `datetime` int(11) NOT NULL,
  `action` mediumtext NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=377 ;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1, '::1', 'root', 1456792911, 'Logged out', '/barangay/end.php'),
(2, '::1', 'root', 1456792921, 'Logged in', '/barangay/login.php'),
(3, '::1', 'root', 1456792922, 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$Z1ucu9vOGwhDxcwPTVt9OuZT3m/wqNw0575uYPaZ20sFY77FESHHO\n    [2] => Z1ucu9vOGwhDxcwPTVt9Ow\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/barangay/login.php'),
(4, '::1', 'root', 1456793204, 'Query executed: SELECT service_name, service_description,service_requirement FROM  service,requirement WHERE service_name=requirement_service_name', '/barangay/modules/bsystem/documents.php'),
(5, '::1', 'root', 1456793217, 'Query executed: SELECT service_name, service_description,service_requirement FROM  service,requirement WHERE service_name=requirement_service_name', '/barangay/modules/bsystem/documents.php'),
(6, '::1', 'root', 1456793217, 'Query executed: SELECT service_name, service_description,service_requirement FROM  service,requirement WHERE service_name=requirement_service_name', '/barangay/modules/bsystem/documents.php'),
(7, '::1', 'root', 1456793219, 'Query executed: SELECT service_name, service_description,service_requirement FROM  service,requirement WHERE service_name=requirement_service_name', '/barangay/modules/bsystem/documents.php'),
(8, '::1', 'root', 1456793240, 'Query executed: SELECT service_name, service_description FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(9, '::1', 'root', 1456793269, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(10, '::1', 'root', 1456793513, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(11, '::1', 'root', 1456793532, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(12, '::1', 'root', 1456793534, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(13, '::1', 'root', 1456793534, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(14, '::1', 'root', 1456793632, 'Query executed: SELECT service_name, service_description,service_requirement,requirement_service_name FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(15, '::1', 'root', 1456793655, 'Query executed: SELECT service_name, service_description,service_requirement,requirement_service_name FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(16, '::1', 'root', 1456793657, 'Query executed: SELECT service_name, service_description,service_requirement,requirement_service_name FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(17, '::1', 'root', 1456794165, 'Query executed: SELECT service_name, service_description,service_requirement,requirement_service_name FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(18, '::1', 'root', 1456794186, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(19, '::1', 'root', 1456794188, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(20, '::1', 'root', 1456794188, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(21, '::1', 'root', 1456794188, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(22, '::1', 'root', 1456794188, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(23, '::1', 'root', 1456794188, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(24, '::1', 'root', 1456794188, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(25, '::1', 'root', 1456794190, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(26, '::1', 'root', 1456794396, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(27, '::1', 'root', 1456794862, 'Query executed: SELECT service_name, service_description FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(28, '::1', 'root', 1456795031, 'Query executed: SELECT service_name, service_description FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(29, '::1', 'root', 1456795123, 'Query executed: SELECT service_name, service_description,service_name FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(30, '::1', 'root', 1456795139, 'Query executed: SELECT service_name, service_description,service_name FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(31, '::1', 'root', 1456795175, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(32, '::1', 'root', 1456795183, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(33, '::1', 'root', 1456795193, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(34, '::1', 'krlagman', 1456810965, 'Logged in', '/barangay/modules/bsystem/main.php'),
(35, '::1', 'krlagman', 1456810970, 'Logged in', '/barangay/modules/bsystem/main.php'),
(36, '::1', 'krlagman', 1456811058, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(37, '::1', 'krlagman', 1456811085, 'ILLEGAL ACCESS ATTEMPT - Tried to access ''/barangay/modules/service/listview_requirement.php'' without sufficient privileges.', '/barangay/modules/service/listview_requirement.php'),
(38, '::1', 'root', 1456811105, 'Logged in', '/barangay/login.php'),
(39, '::1', 'krlagman', 1456811417, 'Logged in', '/barangay/modules/bsystem/main.php'),
(40, '::1', 'krlagman', 1456811654, 'Logged in', '/barangay/modules/bsystem/main.php'),
(41, '::1', 'krlagman', 1456811667, 'Logged in', '/barangay/modules/bsystem/main.php'),
(42, '::1', 'krlagman', 1456811738, 'Logged in', '/barangay/modules/bsystem/main.php'),
(43, '::1', 'krlagman', 1456811849, 'Logged in', '/barangay/modules/bsystem/main.php'),
(44, '::1', 'root', 1456813167, 'Logged in', '/barangay/modules/bsystem/main.php'),
(45, '::1', 'root', 1456813463, 'Pressed submit button', '/barangay/sysadmin/add_user.php'),
(46, '::1', 'root', 1456813475, 'Pressed submit button', '/barangay/sysadmin/add_user.php'),
(47, '::1', 'root', 1456813475, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => krlagman\n    [2] => $2y$12$zPU4c/A.ULTuw.By2ULs9OhCSeoRhFzFvCAg4bXLazTPUpG4MYUGW\n    [3] => zPU4c/A+ULTuw+By2ULs9Q\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 2\n    [8] => 3\n)\n', '/barangay/sysadmin/add_user.php'),
(48, '::1', 'root', 1456813475, 'Query executed: INSERT `user_passport` SELECT ''krlagman'', `link_id` FROM user_role_links WHERE role_id=''2''', '/barangay/sysadmin/add_user.php'),
(49, '::1', 'root', 1456813511, 'Pressed submit button', '/barangay/sysadmin/edit_user.php'),
(50, '::1', 'root', 1456813511, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => krlagman\n    [2] => 1\n    [3] => 1\n    [4] => 3\n    [5] => krlagman\n)\n', '/barangay/sysadmin/edit_user.php'),
(51, '::1', 'root', 1456813511, 'Query executed: DELETE FROM user_passport WHERE username = ''krlagman''', '/barangay/sysadmin/edit_user.php'),
(52, '::1', 'root', 1456813511, 'Query executed: INSERT `user_passport` SELECT ''krlagman'', `link_id` FROM user_role_links WHERE role_id=''1''', '/barangay/sysadmin/edit_user.php'),
(53, '::1', 'root', 1456813531, 'Pressed submit button', '/barangay/sysadmin/edit_user.php'),
(54, '::1', 'root', 1456813531, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => krlagman\n    [2] => 1\n    [3] => 1\n    [4] => 1\n    [5] => krlagman\n)\n', '/barangay/sysadmin/edit_user.php'),
(55, '::1', 'root', 1456813531, 'Query executed: DELETE FROM user_passport WHERE username = ''krlagman''', '/barangay/sysadmin/edit_user.php'),
(56, '::1', 'root', 1456813531, 'Query executed: INSERT `user_passport` SELECT ''krlagman'', `link_id` FROM user_role_links WHERE role_id=''1''', '/barangay/sysadmin/edit_user.php'),
(57, '::1', 'root', 1456813554, 'Pressed delete button', '/barangay/sysadmin/delete_user.php'),
(58, '::1', 'root', 1456813554, 'Query Executed: DELETE FROM user WHERE username = ?\r\nArray\n(\n    [0] => s\n    [1] => krlagman\n)\n', '/barangay/sysadmin/delete_user.php'),
(59, '::1', 'root', 1456813573, 'Pressed submit button', '/barangay/sysadmin/add_user.php'),
(60, '::1', 'root', 1456813573, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => krlagman\n    [2] => $2y$12$G/SS2Km//7fqV7HfP1xQquFNU3riszRYQNFOXJomW6iq8CPAphXdK\n    [3] => G/SS2Km//7fqV7HfP1xQqw\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 1\n    [8] => 1\n)\n', '/barangay/sysadmin/add_user.php'),
(61, '::1', 'root', 1456813686, 'Pressed delete button', '/barangay/sysadmin/delete_user.php'),
(62, '::1', 'root', 1456813687, 'Query Executed: DELETE FROM user WHERE username = ?\r\nArray\n(\n    [0] => s\n    [1] => krlagman\n)\n', '/barangay/sysadmin/delete_user.php'),
(63, '::1', 'root', 1456813731, 'Pressed submit button', '/barangay/sysadmin/add_person.php'),
(64, '::1', 'root', 1456813731, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Kamila\n    [3] => Roperoga\n    [4] => Lagman\n    [5] => Female\n)\n', '/barangay/sysadmin/add_person.php'),
(65, '::1', 'root', 1456813767, 'Pressed submit button', '/barangay/sysadmin/add_user.php'),
(66, '::1', 'root', 1456813767, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => krlagman\n    [2] => $2y$12$adTZfTt.B7ihPnSRitooN.lq5YCRHTI.CCHWIuTGthpT2BzBRvGOm\n    [3] => adTZfTt+B7ihPnSRitooNA\n    [4] => 12\n    [5] => blowfish\n    [6] => 2\n    [7] => 1\n    [8] => 1\n)\n', '/barangay/sysadmin/add_user.php'),
(67, '::1', 'root', 1456813842, 'Logged out', '/barangay/end.php'),
(68, '::1', 'krlagman', 1456813848, 'Logged in', '/barangay/login.php'),
(69, '::1', 'krlagman', 1456841825, 'Query executed: DELETE FROM user_passport WHERE username=''krlagman''', '/barangay/sysadmin/set_user_passports.php'),
(70, '::1', 'krlagman', 1456841825, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''krlagman'', ''37''),(''krlagman'', ''41''),(''krlagman'', ''33''),(''krlagman'', ''45''),(''krlagman'', ''4''),(''krlagman'', ''49''),(''krlagman'', ''53''),(''krlagman'', ''57''),(''krlagman'', ''61''),(''krlagman'', ''16''),(''krlagman'', ''28''),(''krlagman'', ''8''),(''krlagman'', ''20''),(''krlagman'', ''24''),(''krlagman'', ''12''),(''krlagman'', ''65''),(''krlagman'', ''39''),(''krlagman'', ''43''),(''krlagman'', ''35''),(''krlagman'', ''40''),(''krlagman'', ''44''),(''krlagman'', ''36''),(''krlagman'', ''48''),(''krlagman'', ''7''),(''krlagman'', ''52''),(''krlagman'', ''56''),(''krlagman'', ''60''),(''krlagman'', ''64''),(''krlagman'', ''19''),(''krlagman'', ''31''),(''krlagman'', ''11''),(''krlagman'', ''23''),(''krlagman'', ''27''),(''krlagman'', ''15''),(''krlagman'', ''68''),(''krlagman'', ''38''),(''krlagman'', ''42''),(''krlagman'', ''34''),(''krlagman'', ''46''),(''krlagman'', ''5''),(''krlagman'', ''50''),(''krlagman'', ''54''),(''krlagman'', ''58''),(''krlagman'', ''62''),(''krlagman'', ''17''),(''krlagman'', ''29''),(''krlagman'', ''9''),(''krlagman'', ''21''),(''krlagman'', ''25''),(''krlagman'', ''13''),(''krlagman'', ''66''),(''krlagman'', ''1''),(''krlagman'', ''47''),(''krlagman'', ''6''),(''krlagman'', ''51''),(''krlagman'', ''55''),(''krlagman'', ''59''),(''krlagman'', ''32''),(''krlagman'', ''3''),(''krlagman'', ''63''),(''krlagman'', ''2''),(''krlagman'', ''18''),(''krlagman'', ''30''),(''krlagman'', ''10''),(''krlagman'', ''22''),(''krlagman'', ''26''),(''krlagman'', ''14''),(''krlagman'', ''67'')', '/barangay/sysadmin/set_user_passports.php'),
(71, '::1', 'krlagman', 1456841825, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''krlagman''', '/barangay/sysadmin/set_user_passports.php'),
(72, '::1', 'krlagman', 1456842106, 'Pressed submit button', '/barangay/sysadmin/add_user.php'),
(73, '::1', 'krlagman', 1456842107, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => admin\n    [2] => $2y$12$etUHHpUKdAkCFDdc5H9aqOyWDI3cjoSB50kGPOL3I3/B2Iqfz0BlG\n    [3] => etUHHpUKdAkCFDdc5H9aqQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 1\n    [7] => 1\n    [8] => 3\n)\n', '/barangay/sysadmin/add_user.php'),
(74, '::1', 'krlagman', 1456842107, 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''1''', '/barangay/sysadmin/add_user.php'),
(75, '::1', 'admin', 1456842115, 'Logged in', '/barangay/modules/bsystem/main.php'),
(76, '::1', 'admin', 1456842132, 'Pressed submit button', '/barangay/sysadmin/edit_user.php'),
(77, '::1', 'admin', 1456842132, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => krlagman\n    [2] => 1\n    [3] => 1\n    [4] => 1\n    [5] => krlagman\n)\n', '/barangay/sysadmin/edit_user.php'),
(78, '::1', 'admin', 1456842132, 'Query executed: DELETE FROM user_passport WHERE username = ''krlagman''', '/barangay/sysadmin/edit_user.php'),
(79, '::1', 'admin', 1456842133, 'Query executed: INSERT `user_passport` SELECT ''krlagman'', `link_id` FROM user_role_links WHERE role_id=''1''', '/barangay/sysadmin/edit_user.php'),
(80, '::1', 'krlagman', 1456842143, 'Logged in', '/barangay/modules/bsystem/main.php'),
(81, '::1', 'krlagman', 1456842221, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(82, '::1', 'krlagman', 1456842223, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(83, '::1', 'krlagman', 1456842262, 'Logged in', '/barangay/modules/bsystem/main.php'),
(84, '::1', 'krlagman', 1456842314, 'Logged in', '/barangay/modules/bsystem/main.php'),
(85, '::1', 'krlagman', 1456842328, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(86, '::1', 'krlagman', 1456842334, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(87, '::1', 'krlagman', 1456842336, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(88, '::1', 'krlagman', 1456847136, 'Pressed submit button', '/barangay/modules/bulletin/add_bulletin.php'),
(89, '::1', 'krlagman', 1456847136, 'Query Executed: INSERT INTO bulletin(bulletin_id, bulletin_date, bulletin_name, bulletin_description, filename, category, official_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssss\n    [1] => \n    [2] => 2016-03-01\n    [3] => Feeding Program\n    [4] => .\n    [5] => efe9ac6179dddb0e1684e98630f12caa6126b5f5feeding.jpg\n    [6] => Health\n    [7] => 1\n)\n', '/barangay/modules/bulletin/add_bulletin.php'),
(90, '::1', 'krlagman', 1456847141, 'Pressed delete button', '/barangay/modules/bulletin/delete_bulletin.php'),
(91, '::1', 'krlagman', 1456847142, 'Query Executed: DELETE FROM bulletin WHERE bulletin_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/barangay/modules/bulletin/delete_bulletin.php'),
(92, '::1', 'krlagman', 1456847285, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(93, '::1', 'krlagman', 1456847506, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(94, '::1', 'krlagman', 1456847541, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(95, '::1', 'krlagman', 1456847551, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(96, '::1', 'krlagman', 1456847565, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(97, '::1', 'krlagman', 1456847592, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(98, '::1', 'krlagman', 1456847615, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(99, '::1', 'krlagman', 1456847641, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(100, '::1', 'krlagman', 1456847709, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin  ', '/barangay/modules/bsystem/home.php'),
(101, '::1', 'krlagman', 1456847895, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(102, '::1', 'krlagman', 1456847976, 'Query executed: SELECT bulletin_name,bulletin_description FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(103, '::1', 'krlagman', 1456847998, 'Query executed: SELECT bulletin_name,bulletin_description FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(104, '::1', 'krlagman', 1456848143, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(105, '::1', 'krlagman', 1456848172, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(106, '::1', 'krlagman', 1456848196, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(107, '::1', 'krlagman', 1456848198, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(108, '::1', 'krlagman', 1456848283, 'Pressed submit button', '/barangay/modules/bulletin/edit_bulletin.php'),
(109, '::1', 'krlagman', 1456848283, 'Query Executed: UPDATE bulletin SET bulletin_date = ?, bulletin_name = ?, bulletin_description = ?, filename = ?, category = ?, official_id = ? WHERE bulletin_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2016-03-01\n    [2] => Feeding Program\n    [3] => Feeding and Nutrition Program is designed to provide supplemental food to malnourished children aged 6 and below, as this is the critical brain development age for children. The Program involves providing one complete nutritious meal five days a week for a period of 6 months.\n    [4] => efe9ac6179dddb0e1684e98630f12caa6126b5f5feeding.jpg\n    [5] => Health\n    [6] => 1\n    [7] => 2\n)\n', '/barangay/modules/bulletin/edit_bulletin.php'),
(110, '::1', 'krlagman', 1456848287, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(111, '::1', 'krlagman', 1456848348, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(112, '::1', 'krlagman', 1456848361, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(113, '::1', 'krlagman', 1456848401, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(114, '::1', 'krlagman', 1456848413, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(115, '::1', 'krlagman', 1456848415, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(116, '::1', 'krlagman', 1456848435, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(117, '::1', 'krlagman', 1456848448, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(118, '::1', 'krlagman', 1456848470, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(119, '::1', 'krlagman', 1456848479, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(120, '::1', 'krlagman', 1456848484, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(121, '::1', 'krlagman', 1456848486, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(122, '::1', 'krlagman', 1456848490, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(123, '::1', 'krlagman', 1456848501, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(124, '::1', 'krlagman', 1456848503, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(125, '::1', 'krlagman', 1456848503, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(126, '::1', 'krlagman', 1456848504, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(127, '::1', 'krlagman', 1456848504, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(128, '::1', 'krlagman', 1456848504, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(129, '::1', 'krlagman', 1456848506, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(130, '::1', 'krlagman', 1456848506, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(131, '::1', 'krlagman', 1456848506, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(132, '::1', 'krlagman', 1456848518, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(133, '::1', 'krlagman', 1456848520, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(134, '::1', 'krlagman', 1456848521, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(135, '::1', 'krlagman', 1456848524, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(136, '::1', 'krlagman', 1456848528, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(137, '::1', 'krlagman', 1456848539, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(138, '::1', 'krlagman', 1456848541, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(139, '::1', 'krlagman', 1456848549, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(140, '::1', 'krlagman', 1456848549, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(141, '::1', 'krlagman', 1456848556, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(142, '::1', 'krlagman', 1456848562, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(143, '::1', 'krlagman', 1456848564, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(144, '::1', 'krlagman', 1456848570, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(145, '::1', 'krlagman', 1456848592, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(146, '::1', 'krlagman', 1456848661, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(147, '::1', 'krlagman', 1456849549, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE  filename =".jpg"', '/barangay/modules/bsystem/home.php'),
(148, '::1', 'krlagman', 1456849637, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE  filename =".jpg"', '/barangay/modules/bsystem/home.php'),
(149, '::1', 'krlagman', 1456850223, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(150, '::1', 'krlagman', 1456850225, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(151, '::1', 'krlagman', 1456850232, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE  filename =".jpg"', '/barangay/modules/bsystem/home.php'),
(152, '::1', 'krlagman', 1456850235, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE  filename =".jpg"', '/barangay/modules/bsystem/home.php'),
(153, '::1', 'krlagman', 1456850286, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(154, '::1', 'krlagman', 1456850323, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(155, '::1', 'krlagman', 1456850340, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(156, '::1', 'krlagman', 1456850348, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(157, '::1', 'krlagman', 1456850356, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(158, '::1', 'krlagman', 1456850372, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(159, '::1', 'krlagman', 1456850381, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(160, '::1', 'krlagman', 1456850392, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(161, '::1', 'krlagman', 1456850400, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(162, '::1', 'krlagman', 1456850592, 'Pressed submit button', '/barangay/modules/bulletin/add_bulletin.php'),
(163, '::1', 'krlagman', 1456850592, 'Query Executed: INSERT INTO bulletin(bulletin_id, bulletin_date, bulletin_name, bulletin_description, filename, category, official_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssss\n    [1] => \n    [2] => 2016-03-02\n    [3] => Bakuna\n    [4] => Ang bakuna[1][2] o baksinasyon ay ang pagbibigay sa isang tao ng isang sustansiyang nakasasanhi ng tugon mula sistemang imyuno. Isang paraan ang sistemang imyuno ng paglaban ng katawan sa mga impeksiyon. Dahil sa tugon ng sistemang imyuno, mas mababa ang pagkakataon na magkaroon ng impeksiyon ang isang tao. Kapag nabantad ang isang tao sa birus o bakteryang nakapagdurulot ng sakit, mapaglalaban ito ng tao at hindi siya magkakaroon ng karamdaman.\n    [5] => 24cde8e32035686fc2c1f32d9bf737a4ffd09436bakuna.jpg\n    [6] => Education\n    [7] => 1\n)\n', '/barangay/modules/bulletin/add_bulletin.php'),
(164, '::1', 'krlagman', 1456850596, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(165, '::1', 'krlagman', 1456850610, 'Pressed submit button', '/barangay/modules/bulletin/edit_bulletin.php'),
(166, '::1', 'krlagman', 1456850610, 'Query Executed: UPDATE bulletin SET bulletin_date = ?, bulletin_name = ?, bulletin_description = ?, filename = ?, category = ?, official_id = ? WHERE bulletin_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2016-03-02\n    [2] => Bakuna\n    [3] => Ang bakuna[1][2] o baksinasyon ay ang pagbibigay sa isang tao ng isang sustansiyang nakasasanhi ng tugon mula sistemang imyuno. Isang paraan ang sistemang imyuno ng paglaban ng katawan sa mga impeksiyon. Dahil sa tugon ng sistemang imyuno, mas mababa ang pagkakataon na magkaroon ng impeksiyon ang isang tao. Kapag nabantad ang isang tao sa birus o bakteryang nakapagdurulot ng sakit, mapaglalaban ito ng tao at hindi siya magkakaroon ng karamdaman.\n    [4] => 24cde8e32035686fc2c1f32d9bf737a4ffd09436bakuna.jpg\n    [5] => Health\n    [6] => 1\n    [7] => 3\n)\n', '/barangay/modules/bulletin/edit_bulletin.php'),
(167, '::1', 'krlagman', 1456850612, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(168, '::1', 'krlagman', 1456850650, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(169, '::1', 'krlagman', 1456850687, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(170, '::1', 'krlagman', 1456850715, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(171, '::1', 'krlagman', 1456850724, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(172, '::1', 'krlagman', 1456850831, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(173, '::1', 'krlagman', 1456904253, 'Pressed submit button', '/barangay/modules/bulletin/edit_bulletin.php'),
(174, '::1', 'krlagman', 1456904254, 'Query Executed: UPDATE bulletin SET bulletin_date = ?, bulletin_name = ?, bulletin_description = ?, filename = ?, category = ?, official_id = ? WHERE bulletin_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2016-03-02\n    [2] => Bakuna\n    [3] => Ang bakuna[1][2] o baksinasyon ay ang pagbibigay sa isang tao ng isang sustansiyang nakasasanhi ng tugon mula sistemang imyuno. Isang paraan ang sistemang imyuno ng paglaban ng katawan sa mga impeksiyon. Dahil sa tugon ng sistemang imyuno, mas mababa ang pagkakataon na magkaroon ng impeksiyon ang isang tao. Kapag nabantad ang isang tao sa birus o bakteryang nakapagdurulot ng sakit, mapaglalaban ito ng tao at hindi siya magkakaroon ng karamdaman.\n    [4] => 24cde8e32035686fc2c1f32d9bf737a4ffd09436bakuna.jpg\n    [5] => Education\n    [6] => 1\n    [7] => 3\n)\n', '/barangay/modules/bulletin/edit_bulletin.php'),
(175, '::1', 'krlagman', 1456904272, 'Logged in', '/barangay/modules/bsystem/main.php'),
(176, '::1', 'krlagman', 1456904274, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(177, '::1', 'krlagman', 1456904288, 'Pressed submit button', '/barangay/modules/bsystem/register.php'),
(178, '::1', 'krlagman', 1456904749, 'Logged in', '/barangay/modules/bsystem/main.php'),
(179, '::1', 'krlagman', 1456904749, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(180, '::1', 'krlagman', 1456904769, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(181, '::1', 'krlagman', 1456905221, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(182, '::1', 'krlagman', 1456905223, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(183, '::1', 'krlagman', 1456905225, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(184, '::1', 'krlagman', 1456905225, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(185, '::1', 'krlagman', 1456905341, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(186, '::1', 'krlagman', 1456905396, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(187, '::1', 'krlagman', 1456905551, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(188, '::1', 'krlagman', 1456905610, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(189, '::1', 'krlagman', 1456906306, 'Query executed: SELECT service_requirement FROM requirement', '/barangay/modules/bsystem/requirement.php'),
(190, '::1', 'krlagman', 1456906355, 'Query executed: SELECT service_requirement FROM requirement', '/barangay/modules/bsystem/requirement.php'),
(191, '::1', 'krlagman', 1456906356, 'Query executed: SELECT service_requirement FROM requirement', '/barangay/modules/bsystem/requirement.php'),
(192, '::1', 'krlagman', 1456906356, 'Query executed: SELECT service_requirement FROM requirement', '/barangay/modules/bsystem/requirement.php'),
(193, '::1', 'krlagman', 1456906380, 'Query executed: SELECT service_requirement FROM requirement', '/barangay/modules/bsystem/requirement.php'),
(194, '::1', 'krlagman', 1456906424, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement', '/barangay/modules/bsystem/requirement.php'),
(195, '::1', 'krlagman', 1456918311, 'Query executed: SELECT service_requirement,requirement_service_name FROM service, requirement WHERE	requirement_service_name=service_name', '/barangay/modules/bsystem/requirement.php'),
(196, '::1', 'krlagman', 1456918321, 'Query executed: SELECT service_requirement,requirement_service_name FROM service, requirement WHERE	requirement_service_name=service_name', '/barangay/modules/bsystem/requirement.php'),
(197, '::1', 'krlagman', 1456918322, 'Query executed: SELECT service_requirement,requirement_service_name FROM service, requirement WHERE	requirement_service_name=service_name', '/barangay/modules/bsystem/requirement.php'),
(198, '::1', 'krlagman', 1456918322, 'Query executed: SELECT service_requirement,requirement_service_name FROM service, requirement WHERE	requirement_service_name=service_name', '/barangay/modules/bsystem/requirement.php'),
(199, '::1', 'krlagman', 1456918337, 'Query executed: SELECT service_requirement,requirement_service_name FROM service, requirement ', '/barangay/modules/bsystem/requirement.php'),
(200, '::1', 'krlagman', 1456918344, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement ', '/barangay/modules/bsystem/requirement.php'),
(201, '::1', 'krlagman', 1456918362, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement ', '/barangay/modules/bsystem/requirement.php'),
(202, '::1', 'krlagman', 1456918390, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin WHERE category=''health'' ', '/barangay/modules/bsystem/home.php'),
(203, '::1', 'krlagman', 1456918446, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(204, '::1', 'krlagman', 1456918489, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(205, '::1', 'krlagman', 1456918491, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement ', '/barangay/modules/bsystem/requirement.php'),
(206, '::1', 'krlagman', 1456918504, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(207, '::1', 'krlagman', 1456918509, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement ', '/barangay/modules/bsystem/requirement.php'),
(208, '::1', 'krlagman', 1456918513, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(209, '::1', 'krlagman', 1456919173, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(210, '::1', 'krlagman', 1456919174, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement WHERE requirement_service_name=''1'' ', '/barangay/modules/bsystem/requirement.php'),
(211, '::1', 'krlagman', 1456919192, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(212, '::1', 'krlagman', 1456919201, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement WHERE requirement_service_name=''1'' ', '/barangay/modules/bsystem/requirement.php'),
(213, '::1', 'krlagman', 1456919204, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(214, '::1', 'krlagman', 1456919652, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(215, '::1', 'krlagman', 1456919656, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement WHERE requirement_service_name=''1'' ', '/barangay/modules/bsystem/requirement.php'),
(216, '::1', 'krlagman', 1456919694, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement WHERE requirement_service_name=''1'' ', '/barangay/modules/bsystem/requirement.php'),
(217, '::1', 'krlagman', 1456919695, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(218, '::1', 'krlagman', 1456919697, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(219, '::1', 'krlagman', 1456919746, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(220, '::1', 'krlagman', 1456919759, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(221, '::1', 'krlagman', 1456919783, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(222, '::1', 'krlagman', 1456919801, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(223, '::1', 'krlagman', 1456919812, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(224, '::1', 'krlagman', 1456919814, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(225, '::1', 'krlagman', 1456919817, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(226, '::1', 'krlagman', 1456919829, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(227, '::1', 'krlagman', 1456919839, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(228, '::1', 'krlagman', 1456919889, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(229, '::1', 'krlagman', 1456919899, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(230, '::1', 'krlagman', 1456919902, 'Query executed: SELECT service_requirement,requirement_service_name FROM requirement WHERE requirement_service_name=''2'' ', '/barangay/modules/bsystem/requirement1.php'),
(231, '::1', 'krlagman', 1456919905, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(232, '::1', 'krlagman', 1456920077, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(233, '::1', 'krlagman', 1456920078, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(234, '::1', 'krlagman', 1456920096, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(235, '::1', 'krlagman', 1456920103, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(236, '::1', 'krlagman', 1456920119, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(237, '::1', 'krlagman', 1456920125, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(238, '::1', 'krlagman', 1456920154, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(239, '::1', 'krlagman', 1456920173, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(240, '::1', 'krlagman', 1456920192, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(241, '::1', 'krlagman', 1456920218, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(242, '::1', 'krlagman', 1456920258, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(243, '::1', 'krlagman', 1456920270, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(244, '::1', 'krlagman', 1456920279, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(245, '::1', 'krlagman', 1456920296, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(246, '::1', 'krlagman', 1456920325, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(247, '::1', 'krlagman', 1456920327, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(248, '::1', 'krlagman', 1456920347, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(249, '::1', 'krlagman', 1456920354, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(250, '::1', 'krlagman', 1456920409, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(251, '::1', 'krlagman', 1456920411, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(252, '::1', 'krlagman', 1456920411, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(253, '::1', 'krlagman', 1456920413, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(254, '::1', 'krlagman', 1456920462, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(255, '::1', 'krlagman', 1456920463, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(256, '::1', 'krlagman', 1456920468, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(257, '::1', 'krlagman', 1456920480, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(258, '::1', 'krlagman', 1456920485, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(259, '::1', 'krlagman', 1456920486, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(260, '::1', 'krlagman', 1456920486, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(261, '::1', 'krlagman', 1456920505, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(262, '::1', 'krlagman', 1456920507, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(263, '::1', 'krlagman', 1456920558, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(264, '::1', 'krlagman', 1456920675, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(265, '::1', 'krlagman', 1456920713, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(266, '::1', 'krlagman', 1456920714, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(267, '::1', 'krlagman', 1456920715, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(268, '::1', 'krlagman', 1456920729, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(269, '::1', 'krlagman', 1456920729, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(270, '::1', 'krlagman', 1456920729, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(271, '::1', 'krlagman', 1456920752, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(272, '::1', 'krlagman', 1456920752, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(273, '::1', 'krlagman', 1456920819, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(274, '::1', 'krlagman', 1456920819, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(275, '::1', 'krlagman', 1456920821, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(276, '::1', 'krlagman', 1456920821, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(277, '::1', 'krlagman', 1456921049, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(278, '::1', 'krlagman', 1456921049, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(279, '::1', 'krlagman', 1456921093, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(280, '::1', 'krlagman', 1456921099, 'Query executed: SELECT service_name, service_description,service_name FROM service WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(281, '::1', 'krlagman', 1456921224, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(282, '::1', 'krlagman', 1456921226, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(283, '::1', 'krlagman', 1456921255, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(284, '::1', 'krlagman', 1456921257, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(285, '::1', 'krlagman', 1456921259, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(286, '::1', 'krlagman', 1456921259, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(287, '::1', 'krlagman', 1456921259, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(288, '::1', 'krlagman', 1456921271, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(289, '::1', 'krlagman', 1456921281, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(290, '::1', 'krlagman', 1456921328, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(291, '::1', 'krlagman', 1456921330, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(292, '::1', 'krlagman', 1456921332, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(293, '::1', 'krlagman', 1456921334, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(294, '::1', 'krlagman', 1456921334, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(295, '::1', 'krlagman', 1456921334, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(296, '::1', 'krlagman', 1456921342, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(297, '::1', 'krlagman', 1456921353, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(298, '::1', 'krlagman', 1456921371, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(299, '::1', 'krlagman', 1456921693, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(300, '::1', 'krlagman', 1456921708, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(301, '::1', 'krlagman', 1456921750, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(302, '::1', 'krlagman', 1456921752, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(303, '::1', 'krlagman', 1456921752, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(304, '::1', 'krlagman', 1456921774, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(305, '::1', 'krlagman', 1456921785, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(306, '::1', 'krlagman', 1456921834, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(307, '::1', 'krlagman', 1456922062, 'Query executed: SELECT service_name, service_description,service_name,requirement.service_requirement FROM service,requirement WHERE   is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(308, '::1', 'krlagman', 1456922135, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(309, '::1', 'krlagman', 1456922160, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(310, '::1', 'krlagman', 1456922240, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(311, '::1', 'krlagman', 1456922254, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(312, '::1', 'krlagman', 1456922254, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(313, '::1', 'krlagman', 1456922269, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(314, '::1', 'krlagman', 1456922269, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(315, '::1', 'krlagman', 1456922285, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(316, '::1', 'krlagman', 1456922285, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(317, '::1', 'krlagman', 1456922287, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(318, '::1', 'krlagman', 1456922287, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(319, '::1', 'krlagman', 1456922287, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(320, '::1', 'krlagman', 1456922287, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(321, '::1', 'krlagman', 1456922287, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(322, '::1', 'krlagman', 1456922287, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(323, '::1', 'krlagman', 1456922287, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(324, '::1', 'krlagman', 1456922288, 'Query executed: SELECT service_requirement FROM requirement ', '/barangay/modules/bsystem/documents.php'),
(325, '::1', 'krlagman', 1456922509, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(326, '::1', 'krlagman', 1456922515, 'Query executed: SELECT service_name, service_description,service_name,service_requirement FROM service,requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(327, '::1', 'krlagman', 1456922788, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service INNER JOIN \r\n	requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(328, '::1', 'krlagman', 1456922802, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service INNER JOIN \r\n	requirement WHERE  is_offered = ''Yes'' ', '/barangay/modules/bsystem/documents.php'),
(329, '::1', 'krlagman', 1456922949, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service INNER JOIN \r\n	requirement ON service.service_name=requirement.requirement_service_name WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(330, '::1', 'krlagman', 1456922980, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service INNER JOIN \r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(331, '::1', 'krlagman', 1456923004, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(332, '::1', 'krlagman', 1456923006, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(333, '::1', 'krlagman', 1456923006, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(334, '::1', 'krlagman', 1456923006, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(335, '::1', 'krlagman', 1456923006, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(336, '::1', 'krlagman', 1456923008, 'Query executed: SELECT service.service_name, service.service_description,requirement.service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(337, '::1', 'krlagman', 1456923091, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(338, '::1', 'krlagman', 1456923091, 'Query executed: SELECT service_name, service_description,service_requirement FROM service,\r\n	requirement  WHERE  is_offered = ''Yes''', '/barangay/modules/bsystem/documents.php'),
(339, '::1', 'krlagman', 1456923462, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name', '/barangay/modules/bsystem/documents.php'),
(340, '::1', 'krlagman', 1456923708, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(341, '::1', 'krlagman', 1456923757, 'Pressed submit button', '/barangay/modules/service/edit_service.php'),
(342, '::1', 'krlagman', 1456923757, 'Query Executed: UPDATE service SET service_name = ?, service_description = ?, date_offered = ?, is_offered = ? WHERE service_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Personal/ Local  Employment\n    [2] => .\n    [3] => 2016-02-18\n    [4] => No\n    [5] => 2\n)\n', '/barangay/modules/service/edit_service.php'),
(343, '::1', 'krlagman', 1456923761, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(344, '::1', 'krlagman', 1456923785, 'Pressed submit button', '/barangay/modules/service/edit_service.php'),
(345, '::1', 'krlagman', 1456923785, 'Query Executed: UPDATE service SET service_name = ?, service_description = ?, date_offered = ?, is_offered = ? WHERE service_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Personal/ Local  Employment\n    [2] => .\n    [3] => 2016-02-18\n    [4] => Yes\n    [5] => 2\n)\n', '/barangay/modules/service/edit_service.php'),
(346, '::1', 'krlagman', 1456923832, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(347, '::1', 'krlagman', 1456924082, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(348, '::1', 'krlagman', 1456924101, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(349, '::1', 'krlagman', 1456924599, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(350, '::1', 'krlagman', 1456924601, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(351, '::1', 'krlagman', 1456924618, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(352, '::1', 'krlagman', 1456924624, 'Pressed delete button', '/barangay/modules/service/delete_requirement.php'),
(353, '::1', 'krlagman', 1456924624, 'Query Executed: DELETE FROM requirement WHERE requirement_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/barangay/modules/service/delete_requirement.php'),
(354, '::1', 'krlagman', 1456924626, 'Pressed delete button', '/barangay/modules/service/delete_requirement.php'),
(355, '::1', 'krlagman', 1456924626, 'Query Executed: DELETE FROM requirement WHERE requirement_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 2\n)\n', '/barangay/modules/service/delete_requirement.php'),
(356, '::1', 'krlagman', 1456924629, 'Pressed delete button', '/barangay/modules/service/delete_requirement.php'),
(357, '::1', 'krlagman', 1456924629, 'Query Executed: DELETE FROM requirement WHERE requirement_id = ?\r\nArray\n(\n    [0] => i\n    [1] => 3\n)\n', '/barangay/modules/service/delete_requirement.php'),
(358, '::1', 'krlagman', 1456924687, 'Pressed submit button', '/barangay/modules/service/edit_service.php'),
(359, '::1', 'krlagman', 1456924687, 'Query Executed: UPDATE service SET service_name = ?, service_description = ?, date_offered = ?, is_offered = ? WHERE service_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Barangay Clearance\n    [2] => It is a certification that is issued by the barangay council that you are a legitimate residence of that particular barangay. This is usually required in applying for a job to determine if you are really a residence of that particular place.\n    [3] => 2016-02-15\n    [4] => Yes\n    [5] => 1\n)\n', '/barangay/modules/service/edit_service.php'),
(360, '::1', 'krlagman', 1456924687, 'Query Executed: DELETE FROM requirement WHERE requirement_service_name = ?\r\nArray\n(\n    [0] => s\n    [1] => \n)\n', '/barangay/modules/service/edit_service.php'),
(361, '::1', 'krlagman', 1456924687, 'Query Executed: INSERT INTO requirement(requirement_id, requirement_service_name, service_requirement) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => 1\n    [3] => DTI/SEC\n)\n', '/barangay/modules/service/edit_service.php'),
(362, '::1', 'krlagman', 1456924687, 'Query Executed: INSERT INTO requirement(requirement_id, requirement_service_name, service_requirement) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => 1\n    [3] => Cedula\n)\n', '/barangay/modules/service/edit_service.php'),
(363, '::1', 'krlagman', 1456924687, 'Query Executed: INSERT INTO requirement(requirement_id, requirement_service_name, service_requirement) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => 1\n    [3] => Sketch of establishments\n)\n', '/barangay/modules/service/edit_service.php'),
(364, '::1', 'krlagman', 1456924709, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(365, '::1', 'krlagman', 1456924818, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(366, '::1', 'krlagman', 1456924866, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(367, '::1', 'krlagman', 1456924884, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(368, '::1', 'krlagman', 1456924957, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(369, '::1', 'krlagman', 1456924962, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(370, '::1', 'krlagman', 1456925011, 'Logged in', '/barangay/modules/bsystem/main.php'),
(371, '::1', 'krlagman', 1456925011, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(372, '::1', 'krlagman', 1456925072, 'Pressed submit button', '/barangay/modules/bulletin/edit_bulletin.php'),
(373, '::1', 'krlagman', 1456925072, 'Query Executed: UPDATE bulletin SET bulletin_date = ?, bulletin_name = ?, bulletin_description = ?, filename = ?, category = ?, official_id = ? WHERE bulletin_id = ?\r\nArray\n(\n    [0] => ssssssi\n    [1] => 2016-03-02\n    [2] => Vaccine\n    [3] => Ang bakuna[1][2] o baksinasyon ay ang pagbibigay sa isang tao ng isang sustansiyang nakasasanhi ng tugon mula sistemang imyuno. Isang paraan ang sistemang imyuno ng paglaban ng katawan sa mga impeksiyon. Dahil sa tugon ng sistemang imyuno, mas mababa ang pagkakataon na magkaroon ng impeksiyon ang isang tao. Kapag nabantad ang isang tao sa birus o bakteryang nakapagdurulot ng sakit, mapaglalaban ito ng tao at hindi siya magkakaroon ng karamdaman.\n    [4] => 24cde8e32035686fc2c1f32d9bf737a4ffd09436bakuna.jpg\n    [5] => Education\n    [6] => 1\n    [7] => 3\n)\n', '/barangay/modules/bulletin/edit_bulletin.php'),
(374, '::1', 'krlagman', 1456925075, 'Query executed: SELECT bulletin_name,bulletin_description,filename FROM bulletin ', '/barangay/modules/bsystem/home.php'),
(375, '::1', 'krlagman', 1456925135, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php'),
(376, '::1', 'krlagman', 1456925166, 'Query executed: SELECT \r\n	service.service_name, \r\n	service.service_description,\r\n	requirement.service_requirement \r\n	FROM service,requirement \r\n	WHERE  service.service_id = requirement_service_name AND is_offered=''yes''', '/barangay/modules/bsystem/documents.php');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Max Attachment Height', '0'),
('Max Attachment Size (MB)', '0'),
('Max Attachment Width', '0'),
('Security Level', 'HIGH');

-- --------------------------------------------------------

--
-- Table structure for table `system_skins`
--

CREATE TABLE IF NOT EXISTS `system_skins` (
  `skin_id` int(11) NOT NULL AUTO_INCREMENT,
  `skin_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `master_css` varchar(255) NOT NULL,
  `colors_css` varchar(255) NOT NULL,
  `fonts_css` varchar(255) NOT NULL,
  `override_css` varchar(255) NOT NULL,
  `icon_set` varchar(255) NOT NULL,
  PRIMARY KEY (`skin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css', 'cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css', 'cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css', 'cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css', 'cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css', 'cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css', 'cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css', 'cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css', 'cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css', 'cobalt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES
('admin', '$2y$12$etUHHpUKdAkCFDdc5H9aqOyWDI3cjoSB50kGPOL3I3/B2Iqfz0BlG', 'etUHHpUKdAkCFDdc5H9aqQ', 12, 'blowfish', 1, 1, 3),
('krlagman', '$2y$12$adTZfTt.B7ihPnSRitooN.lq5YCRHTI.CCHWIuTGthpT2BzBRvGOm', 'adTZfTt+B7ihPnSRitooNA', 12, 'blowfish', 1, 1, 1),
('root', '$2y$12$Z1ucu9vOGwhDxcwPTVt9OuZT3m/wqNw0575uYPaZ20sFY77FESHHO', 'Z1ucu9vOGwhDxcwPTVt9Ow', 12, 'blowfish', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE IF NOT EXISTS `user_links` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `descriptive_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passport_group_id` int(11) NOT NULL,
  `show_in_tasklist` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`, `priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', 0),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', 0),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', 0),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', 0),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', 0),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', 0),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', 0),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', 0),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', 0),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', 0),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', 0),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', 0),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', 0),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', 0),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', 0),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', 0),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', 0),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', 0),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', 0),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', 0),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', 0),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', 0),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', 0),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', 0),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', 0),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', 0),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', 0),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', 0),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', 0),
(33, 'Add cobalt sst', 'sst/add_cobalt_sst.php', 'Add Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(34, 'Edit cobalt sst', 'sst/edit_cobalt_sst.php', 'Edit Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(35, 'View cobalt sst', 'sst/listview_cobalt_sst.php', 'Cobalt SST', '', 2, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete cobalt sst', 'sst/delete_cobalt_sst.php', 'Delete Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(37, 'Add bulletin', 'modules/bulletin/add_bulletin.php', 'Add Bulletin', '', 1, 'No', 'On', 'form3.png', 0),
(38, 'Edit bulletin', 'modules/bulletin/edit_bulletin.php', 'Edit Bulletin', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View bulletin', 'modules/bulletin/listview_bulletin.php', 'Bulletin', '', 1, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete bulletin', 'modules/bulletin/delete_bulletin.php', 'Delete Bulletin', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add citizen', 'modules/citizen/add_citizen.php', 'Add Citizen', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit citizen', 'modules/citizen/edit_citizen.php', 'Edit Citizen', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View citizen', 'modules/citizen/listview_citizen.php', 'Citizen', '', 1, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete citizen', 'modules/citizen/delete_citizen.php', 'Delete Citizen', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add official', 'modules/official/add_official.php', 'Add Official', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit official', 'modules/official/edit_official.php', 'Edit Official', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View official', 'modules/official/listview_official.php', 'Official', '', 1, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete official', 'modules/official/delete_official.php', 'Delete Official', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add request', 'modules/request/add_request.php', 'Add Request', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit request', 'modules/request/edit_request.php', 'Edit Request', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View request', 'modules/request/listview_request.php', 'Request', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete request', 'modules/request/delete_request.php', 'Delete Request', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add request has requirement', 'modules/request/add_request_has_requirement.php', 'Add Request Has Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit request has requirement', 'modules/request/edit_request_has_requirement.php', 'Edit Request Has Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View request has requirement', 'modules/request/listview_request_has_requirement.php', 'Request Has Requirement', '', 1, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete request has requirement', 'modules/request/delete_request_has_requirement.php', 'Delete Request Has Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(57, 'Add requirement', 'modules/service/add_requirement.php', 'Add Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(58, 'Edit requirement', 'modules/service/edit_requirement.php', 'Edit Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(59, 'View requirement', 'modules/service/listview_requirement.php', 'Requirement', '', 1, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete requirement', 'modules/service/delete_requirement.php', 'Delete Requirement', '', 1, 'No', 'On', 'form3.png', 0),
(61, 'Add service', 'modules/service/add_service.php', 'Add Service', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit service', 'modules/service/edit_service.php', 'Edit Service', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View service', 'modules/service/listview_service.php', 'Service', '', 1, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete service', 'modules/service/delete_service.php', 'Delete Service', '', 1, 'No', 'On', 'form3.png', 0),
(65, 'Add validate', 'modules/citizen/add_validate.php', 'Add Validate', '', 1, 'No', 'On', 'form3.png', 0),
(66, 'Edit validate', 'modules/citizen/edit_validate.php', 'Edit Validate', '', 1, 'No', 'On', 'form3.png', 0),
(67, 'View validate', 'modules/citizen/listview_validate.php', 'Validate', '', 1, 'Yes', 'On', 'form3.png', 0),
(68, 'Delete validate', 'modules/citizen/delete_validate.php', 'Delete Validate', '', 1, 'No', 'On', 'form3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE IF NOT EXISTS `user_passport` (
  `username` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`username`,`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport`
--

INSERT INTO `user_passport` (`username`, `link_id`) VALUES
('admin', 1),
('admin', 2),
('admin', 3),
('admin', 4),
('admin', 5),
('admin', 6),
('admin', 7),
('admin', 8),
('admin', 9),
('admin', 10),
('admin', 11),
('admin', 12),
('admin', 13),
('admin', 14),
('admin', 15),
('admin', 16),
('admin', 17),
('admin', 18),
('admin', 19),
('admin', 20),
('admin', 21),
('admin', 22),
('admin', 23),
('admin', 24),
('admin', 25),
('admin', 26),
('admin', 27),
('admin', 28),
('admin', 29),
('admin', 30),
('admin', 31),
('admin', 32),
('admin', 33),
('admin', 34),
('admin', 35),
('admin', 36),
('admin', 37),
('admin', 38),
('admin', 39),
('admin', 40),
('admin', 41),
('admin', 42),
('admin', 43),
('admin', 44),
('admin', 45),
('admin', 46),
('admin', 47),
('admin', 48),
('admin', 49),
('admin', 50),
('admin', 51),
('admin', 52),
('admin', 53),
('admin', 54),
('admin', 55),
('admin', 56),
('admin', 57),
('admin', 58),
('admin', 59),
('admin', 60),
('admin', 61),
('admin', 62),
('admin', 63),
('admin', 64),
('admin', 65),
('admin', 66),
('admin', 67),
('admin', 68),
('krlagman', 1),
('krlagman', 2),
('krlagman', 3),
('krlagman', 4),
('krlagman', 5),
('krlagman', 6),
('krlagman', 7),
('krlagman', 8),
('krlagman', 9),
('krlagman', 10),
('krlagman', 11),
('krlagman', 12),
('krlagman', 13),
('krlagman', 14),
('krlagman', 15),
('krlagman', 16),
('krlagman', 17),
('krlagman', 18),
('krlagman', 19),
('krlagman', 20),
('krlagman', 21),
('krlagman', 22),
('krlagman', 23),
('krlagman', 24),
('krlagman', 25),
('krlagman', 26),
('krlagman', 27),
('krlagman', 28),
('krlagman', 29),
('krlagman', 30),
('krlagman', 31),
('krlagman', 32),
('krlagman', 33),
('krlagman', 34),
('krlagman', 35),
('krlagman', 36),
('krlagman', 37),
('krlagman', 38),
('krlagman', 39),
('krlagman', 40),
('krlagman', 41),
('krlagman', 42),
('krlagman', 43),
('krlagman', 44),
('krlagman', 45),
('krlagman', 46),
('krlagman', 47),
('krlagman', 48),
('krlagman', 49),
('krlagman', 50),
('krlagman', 51),
('krlagman', 52),
('krlagman', 53),
('krlagman', 54),
('krlagman', 55),
('krlagman', 56),
('krlagman', 57),
('krlagman', 58),
('krlagman', 59),
('krlagman', 60),
('krlagman', 61),
('krlagman', 62),
('krlagman', 63),
('krlagman', 64),
('krlagman', 65),
('krlagman', 66),
('krlagman', 67),
('krlagman', 68),
('root', 1),
('root', 2),
('root', 3),
('root', 4),
('root', 5),
('root', 6),
('root', 7),
('root', 8),
('root', 9),
('root', 10),
('root', 11),
('root', 12),
('root', 13),
('root', 14),
('root', 15),
('root', 16),
('root', 17),
('root', 18),
('root', 19),
('root', 20),
('root', 21),
('root', 22),
('root', 23),
('root', 24),
('root', 25),
('root', 26),
('root', 27),
('root', 28),
('root', 29),
('root', 30),
('root', 31),
('root', 32),
('root', 33),
('root', 34),
('root', 35),
('root', 36),
('root', 37),
('root', 38),
('root', 39),
('root', 40),
('root', 41),
('root', 42),
('root', 43),
('root', 44),
('root', 45),
('root', 46),
('root', 47),
('root', 48),
('root', 49),
('root', 50),
('root', 51),
('root', 52),
('root', 53),
('root', 54),
('root', 55),
('root', 56),
('root', 57),
('root', 58),
('root', 59),
('root', 60),
('root', 61),
('root', 62),
('root', 63),
('root', 64),
('root', 65),
('root', 66),
('root', 67),
('root', 68);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport_groups`
--

CREATE TABLE IF NOT EXISTS `user_passport_groups` (
  `passport_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `passport_group` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`passport_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_passport_groups`
--

INSERT INTO `user_passport_groups` (`passport_group_id`, `passport_group`, `priority`, `icon`) VALUES
(1, 'Default', 0, 'blue_folder3.png'),
(2, 'Admin', 0, 'preferences-system.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`, `description`) VALUES
(1, 'Super Admin', 'Super admin role with 100% system privileges'),
(2, 'System Admin', 'System admin role with all sysadmin permissions');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_links`
--

CREATE TABLE IF NOT EXISTS `user_role_links` (
  `role_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_links`
--

INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36);

-- --------------------------------------------------------

--
-- Table structure for table `validate`
--

CREATE TABLE IF NOT EXISTS `validate` (
  `poa_poi_id` int(11) NOT NULL AUTO_INCREMENT,
  `proof_of_id` varchar(255) NOT NULL,
  `proof_of_address` varchar(255) NOT NULL,
  `citizen_id` int(11) NOT NULL,
  PRIMARY KEY (`poa_poi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
