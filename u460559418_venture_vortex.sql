-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2024 at 04:26 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u460559418_venture_vortex`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `startup_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `activity_type` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `activity_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'completed'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investor_document`
--

CREATE TABLE `investor_document` (
  `id` int(11) NOT NULL,
  `investor_name` varchar(255) DEFAULT NULL,
  `investor_company` varchar(255) DEFAULT NULL,
  `gov_id` varchar(255) DEFAULT NULL,
  `bir` varchar(255) DEFAULT NULL,
  `sec_registration` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'pending',
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `investor_document`
--

INSERT INTO `investor_document` (`id`, `investor_name`, `investor_company`, `gov_id`, `bir`, `sec_registration`, `created_at`, `status`, `user_email`) VALUES
(17, 'elly', 'shopwe', 'governmentID_1.png', 'bir_4.png', 'sec_1.jpg', '2024-11-19 16:05:46', 'approved', NULL),
(18, 'Reco sys', '', 'bir_3.png', 'bir_4.png', 'sec_1.jpg', '2024-11-22 10:12:49', 'pending', NULL),
(19, 'test', 'test', 'sample_3.pdf', 'sample_4.pdf', 'sample_5.pdf', '2024-11-23 07:24:09', 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investor_profiles`
--

CREATE TABLE `investor_profiles` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `achievements` text DEFAULT NULL,
  `social_media_link` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `expertise` text DEFAULT NULL,
  `recent_activities` text DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `investor_profiles`
--

INSERT INTO `investor_profiles` (`user_id`, `phone`, `email`, `achievements`, `social_media_link`, `skills`, `expertise`, `recent_activities`, `user_email`) VALUES
(44, '+63 927 765 4321', 'rina@gmail.com', 'Invested in over 20 startups, with 5 achieving significant milestones, including Series A funding.\r\nMember of the Philippine Angel Investors Network (PHILDev).\r\nRecognized as a Top 10 Investor in Emerging Startups by Startup Asia Magazine in 2023.', 'https://www.linkedin.com/in/johndoeinvestor', 'Financial Analysis and Risk Assessment\r\nBusiness Model Evaluation\r\nStrategic Investment Planning', 'Technology Startups\r\nSustainable Enterprises\r\nE-commerce and Digital Platforms', 'Provided seed funding to a tech startup developing AI solutions for remote education.\r\nMentored a sustainability-focused startup through its pitch refinement process.\r\nAttended the 2023 Philippine Tech Summit to identify emerging investment opportunities.', NULL),
(100, NULL, 'oyear895@gmail.com', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_logs`
--

CREATE TABLE `maintenance_logs` (
  `id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_notif` text NOT NULL,
  `notif_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `notif_status` varchar(100) NOT NULL DEFAULT 'Unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `user_notif`, `notif_date`, `notif_status`) VALUES
(14, '25', 'Your request for mentorship has been declined by start up riot2', '2024-11-05 19:09:23', 'Unread'),
(15, '28', 'Your request for mentorship has been accepted by start up riot2', '2024-11-05 19:09:29', 'Unread'),
(16, '25', 'New mentorship request, start up riot2 request for your expertise.', '2024-11-05 19:10:19', 'Unread'),
(17, '26', 'New investment request, start up riot2 request for your investment help.', '2024-11-05 19:11:49', 'Read'),
(18, '26', 'Your request for investment has been accepted by start up riot2', '2024-11-05 19:12:05', 'Read'),
(19, '23', 'New mentorship request, aki offer his/her expertise for your company.', '2024-11-05 19:14:59', 'Unread'),
(20, '32', 'New investment request, aki offer his/her investment for your project.', '2024-11-05 19:17:18', 'Unread'),
(21, '24', 'New mentorship request, Investor Oyear offer his/her expertise for your company.', '2024-11-06 13:56:33', 'Unread'),
(22, '31', 'New investment request, investor1 offer his/her investment for your project.', '2024-11-06 18:53:22', 'Unread'),
(23, '24', 'New mentorship request, investor1 offer his/her expertise for your company.', '2024-11-06 18:54:45', 'Unread'),
(24, '25', 'New mentorship request, start up riot2 request for your expertise.', '2024-11-09 03:40:42', 'Unread'),
(25, '36', 'New investment request, Lemon Name offer his/her investment for your project.', '2024-11-09 03:48:45', 'Unread'),
(26, '25', 'New mentorship request, start up riot2 request for your expertise.', '2024-11-09 03:50:27', 'Unread'),
(27, '28', 'New mentorship request, start up riot2 request for your expertise.', '2024-11-09 03:52:00', 'Unread'),
(28, '24', 'New mentorship request, Lemon Name offer his/her expertise for your company.', '2024-11-09 03:55:29', 'Unread'),
(29, '32', 'New mentorship request, start up riot2 request for your expertise.', '2024-11-16 05:10:33', 'Unread'),
(30, '25', 'New mentorship request, start up Faenovative Solutions request for your expertise.', '2024-11-17 18:24:05', 'Unread'),
(31, '26', 'New investment request, start up Faenovative Solutions request for your investment help.', '2024-11-17 18:24:45', 'Unread'),
(32, '43', 'New mentorship request, start up  request for your expertise.', '2024-12-11 07:37:40', 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `pitch`
--

CREATE TABLE `pitch` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `links` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_amount` varchar(100) NOT NULL DEFAULT '0',
  `investment_amount` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pitch`
--

INSERT INTO `pitch` (`id`, `user_id`, `project_name`, `company_name`, `description`, `links`, `category`, `amount`, `video`, `image`, `pdf`, `created_at`, `updated_at`, `total_amount`, `investment_amount`) VALUES
(54, 37, 'MarketPulse', 'EcoDelights Inc.', 'An online marketplace empowering artisanal creators to sell unique handmade products globally. MarketPulse includes tools for managing inventory and setting up custom storefronts. Customers can discover curated collections tailored to their tastes. Seller', '', 'E-commerce', NULL, '../uploads/1000008575.mp4', '../uploads/1000008378.jpg', '../uploads/3-4.pdf', '2024-11-22 02:37:20', '2024-12-11 07:28:23', '0', '0'),
(55, 37, 'QuickMart', 'Herman\'s AI Company', 'A same-day delivery platform offering groceries, household items, and electronics. QuickMart collaborates with local stores to ensure product availability and freshness. The service includes live order tracking and automated delivery updates. Its subscrip', '', 'E-commerce', NULL, NULL, 'assets/img/QuickMart.jpg', NULL, '2024-11-22 02:38:44', '2024-11-22 03:33:17', '0', '0'),
(56, 37, 'StyleSync', 'EcoDelights', 'A fashion e-commerce site that connects independent designers with global customers. StyleSync utilizes AR for virtual try-ons, enabling customers to preview outfits. The platform also hosts virtual fashion shows for brands. It champions sustainable fashi', '', 'E-commerce', NULL, NULL, 'assets/img/StyleSync.jpg', NULL, '2024-11-22 02:39:58', '2024-11-22 03:33:28', '0', '0'),
(57, 38, 'CodeCatalyst', 'Code Warriors Company', 'A collaborative platform designed for remote software development teams. It includes AI-driven code reviews and automated testing features. CodeCatalyst integrates seamlessly with popular project management tools. Its emphasis on security ensures safe dat', '', 'Technology', NULL, NULL, 'assets/img/CodeCatalyst.png', NULL, '2024-11-22 02:44:17', '2024-11-22 03:34:14', '0', '0'),
(58, 38, 'NeuroSense', 'Health AI Enterprises', 'A wearable device using AI to track brain activity and optimize mental health. NeuroSense offers personalized recommendations for stress management and productivity. It syncs with mobile apps to deliver insights on focus and relaxation. The project bridge', '', 'Technology', NULL, NULL, 'assets/img/NeuroSense.jpg', NULL, '2024-11-22 02:45:34', '2024-11-22 03:34:28', '0', '0'),
(59, 38, 'AutoBotics', 'Health AI Enterprises', 'A robotics startup specializing in customizable drones for agriculture and logistics. AutoBotics features autonomous navigation systems and adaptive learning algorithms. Their drones enhance crop monitoring and streamline warehouse operations. The company', '', 'Technology', NULL, NULL, 'assets/img/AutoBotics.jpg', NULL, '2024-11-22 02:46:56', '2024-11-22 03:34:34', '0', '0'),
(60, 38, 'SolarGrid', 'Solar Panel Startup', 'A renewable energy solution enabling homes to generate and store solar power efficiently. SolarGrid includes a smart app for tracking energy production and usage. It provides modular designs for easy installation in urban and rural settings. The project s', '', 'Technology', NULL, NULL, 'assets/img/SolarGrid.jpg', NULL, '2024-11-22 02:49:06', '2024-11-22 03:35:33', '0', '0'),
(61, 39, 'Farm2Table', 'Food & Beverage Company', 'A farm-to-consumer platform connecting small farmers directly with urban buyers. Farm2Table offers organic produce and ensures traceability from source to plate. Customers can subscribe to weekly deliveries or place one-time orders. It promotes local agri', '', 'Food & Beverage', NULL, NULL, 'assets/img/Farm2Table.jpg', NULL, '2024-11-22 02:51:52', '2024-11-22 03:35:47', '0', '0'),
(62, 39, 'BrewCraft', 'Coffee Acacia Company', 'A mobile app offering recipes and tools for brewing personalized coffee at home. BrewCraft connects coffee enthusiasts with specialty roasters and brewing equipment. Users can track brewing techniques and share their creations in a community forum. The ap', '', 'Food & Beverage', NULL, NULL, 'assets/img/BrewCraft.png', NULL, '2024-11-22 02:53:08', '2024-11-22 03:35:51', '0', '0'),
(63, 39, 'SnackLab', 'Cadbury Health United Co.', 'A subscription box service offering healthy, gourmet snacks curated from around the world. SnackLab prioritizes nutritional value and transparency, labeling allergens and ingredients clearly. Customers can customize their boxes based on dietary preference', '', 'Food & Beverage', NULL, NULL, 'assets/img/SnackLab.jpg', NULL, '2024-11-22 02:54:30', '2024-11-22 03:37:03', '0', '0'),
(64, 40, 'CraftHub', 'CraftHub Co. Inc.', 'An online platform dedicated to promoting handmade crafts and DIY kits. CraftHub connects artisans with global buyers while offering them tools to build virtual storefronts. It also hosts online workshops and tutorials to engage customers. The platform em', '', 'E-commerce', NULL, NULL, 'assets/img/1732332480_5372263df7a1f687f6e9.jpg', NULL, '2024-11-23 03:28:00', '2024-11-23 03:28:00', '0', '0'),
(65, 110, 'Tesla model s', 'Tesla', 'Electric car', 'instagram.com', 'Technology', NULL, 'assets/img/1732348333_6a0e27d1e437f4ec6db8.mp4', 'assets/img/1732348333_5135c7084e174bff7171.png', 'assets/img/1732348333_83e43fe376c2b89e1fdd.pdf', '2024-11-23 07:51:16', '2024-11-23 07:52:13', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `progress_report`
--

CREATE TABLE `progress_report` (
  `ps_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `progress_title` varchar(255) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `target_date` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending',
  `description` text DEFAULT NULL,
  `submitted_date` varchar(100) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL COMMENT 'accepted pitch',
  `balance_sheet_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progress_report`
--

INSERT INTO `progress_report` (`ps_id`, `user_id`, `progress_title`, `start_date`, `target_date`, `status`, `description`, `submitted_date`, `project_id`, `balance_sheet_image`) VALUES
(29, 37, NULL, '2024-11-23', '2024-11-30', 'Ongoing', 'Balance sheet for pulse project', '2024-11-15', '54', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA8IAAANBCAYAAAArzwfbAAAAAXNSR0IArs4c6QAAIABJREFUeF7s3Qf8FMXh//+hSBNFhIBiATGGiGLsURJL7F2xa6ImRsXeI/Zegr23mERjr9hrNHYRsWEs2FEsqAihKEXg/3jP9zef/36Wvbu5u725vdvXPh4+VNjbmX3OXnnvlG0zb968eSZhmzVrlpk9e7aZNm2amT59uv2HD'),
(30, 37, 'Funding QuickMart', '2024-11-22', '2024-11-23', 'Ongoing', 'funding balance sheet', '2024-11-30', '55', 'uploads/balance_sheets/balance_sheet_67407af7c3e39.png'),
(31, 37, 'try', '2024-11-23', '2024-11-23', 'Ongoing', 'ttestingg', '2024-11-23', '54', 'uploads/balance_sheets/balance_sheet_674096f961ccf.png'),
(32, 37, 'Quickie Start Project', '2024-11-23', '2024-11-23', 'Ongoing', 'Start of the project', '2024-11-30', '55', ''),
(34, 37, 'Funding QuickMart', '2024-11-23', '2024-11-23', 'Ongoing', 'a', '2024-11-23', '54', 'uploads/balance_sheets/balance_sheet_6740a9d020c24.png'),
(35, 38, 'Starting NeuioSence Balance sheet', '2024-11-23', '2024-11-23', 'Ongoing', 'i dunno', '2024-11-23', '58', 'uploads/balance_sheets/balance_sheet_6740b99dccfef.png'),
(36, 110, 'Investing in car', '2024-11-23', '2024-11-27', 'Ongoing', 'investing to the car ', '2024-11-26', '65', 'uploads/balance_sheets/balance_sheet_67418c7d4d157.png');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `total_transactions` int(11) DEFAULT 0,
  `total_amount` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  `startup_id` int(11) NOT NULL,
  `request_type` enum('investment','mentorship') NOT NULL,
  `status` enum('pending','accepted','declined') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `investment_amount` varchar(255) NOT NULL DEFAULT '0' COMMENT 'For investments',
  `who_request` varchar(255) NOT NULL DEFAULT 'Start Up' COMMENT 'request from para ma indicate if si investor or start up ang nag request'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `project_id`, `investor_id`, `startup_id`, `request_type`, `status`, `created_at`, `updated_at`, `investment_amount`, `who_request`) VALUES
(88, 58, 43, 38, 'investment', 'accepted', '2024-11-21 20:32:12', '2024-11-22 04:33:50', '0', 'Start Up'),
(98, 61, 44, 39, 'investment', 'accepted', '2024-11-22 03:00:42', '2024-11-22 11:01:58', '0', 'Start Up'),
(99, 56, 45, 37, 'investment', 'pending', '2024-11-22 03:25:29', '2024-11-22 03:25:29', '0', 'Start Up'),
(100, 56, 44, 37, 'investment', 'pending', '2024-11-22 03:26:28', '2024-11-22 03:26:28', '0', 'Start Up'),
(101, 60, 44, 38, 'investment', 'accepted', '2024-11-22 03:36:49', '2024-11-22 03:39:12', '0', 'Start Up'),
(102, 65, 44, 110, 'investment', 'accepted', '2024-11-23 07:52:41', '2024-11-23 07:55:06', '0', 'Start Up'),
(103, 65, 44, 110, 'investment', 'declined', '2024-11-23 07:55:50', '2024-11-23 07:56:05', '0', 'Investor'),
(104, 65, 43, 110, 'mentorship', 'accepted', '2024-11-23 07:57:30', '2024-11-23 07:57:53', '0', 'Investor'),
(105, 54, 43, 37, 'mentorship', 'pending', '2024-12-11 07:37:40', '2024-12-11 07:37:40', '0', 'Start Up');

--
-- Triggers `requests`
--
DELIMITER $$
CREATE TRIGGER `after_investment_accept` AFTER UPDATE ON `requests` FOR EACH ROW BEGIN
    -- Only proceed if the status is 'accepted' and the request type is 'investment'
    IF NEW.status = 'accepted' AND NEW.request_type = 'investment' THEN
        -- Update or insert the preferred category into the userpreferences table
        INSERT INTO userpreferences (user_id, preferred_category)
        SELECT NEW.investor_id, pitch.category
        FROM requests
        JOIN pitch ON requests.project_id = pitch.id
        WHERE requests.investor_id = NEW.investor_id
          AND requests.status = 'accepted'
        GROUP BY pitch.category
        ORDER BY COUNT(pitch.category) DESC
        LIMIT 1
        ON DUPLICATE KEY UPDATE preferred_category = VALUES(preferred_category);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `startup_activity`
--

CREATE TABLE `startup_activity` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `project` varchar(100) NOT NULL,
  `investor` varchar(100) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `startup_activity`
--

INSERT INTO `startup_activity` (`id`, `transaction_id`, `project`, `investor`, `amount`, `date`) VALUES
(4, '123445ert', 'tesla', 'elly', 100000.00, '2024-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `startup_document`
--

CREATE TABLE `startup_document` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `dti_registration` varchar(255) DEFAULT NULL,
  `business_permit` varchar(255) DEFAULT NULL,
  `bir_certificate` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'pending',
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `startup_document`
--

INSERT INTO `startup_document` (`id`, `company_name`, `company_address`, `dti_registration`, `business_permit`, `bir_certificate`, `created_at`, `status`, `user_email`) VALUES
(16, 'Amadon', '109 SOLIMAT ST. IBAYO', 'dti_2.png', 'permit_3.png', 'bir_3.png', '2024-11-19 14:28:44', 'pending', NULL),
(17, 'ISS', 'ISS', 'image.jpg', 'image_1.jpg', 'image_2.jpg', '2024-11-23 07:15:37', 'pending', NULL),
(18, 'iss', 'iss', 'image_3.jpg', 'image_4.jpg', 'image_5.jpg', '2024-11-23 07:21:09', 'pending', NULL),
(19, 'test Company Name', 'test Company Address', 'sample.pdf', 'sample_1.pdf', 'sample_2.pdf', '2024-11-23 07:21:41', 'pending', NULL),
(20, 'Regulus ', 'Manila', 'hero_bg_1.jpg', '800px-EBay_logo.svg.png', '800px-EBay_logo.svg_1.png', '2024-11-23 07:34:05', 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `startup_profiles`
--

CREATE TABLE `startup_profiles` (
  `user_id` int(11) NOT NULL,
  `about_company` text DEFAULT NULL,
  `achievements` text DEFAULT NULL,
  `social_media_link` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `startup_profiles`
--

INSERT INTO `startup_profiles` (`user_id`, `about_company`, `achievements`, `social_media_link`, `contact_info`, `user_email`) VALUES
(37, 'We are an innovative startup specializing in sustainable packaging solutions for the food and beverage industry. Our mission is to reduce environmental impact by creating biodegradable and eco-friendly packaging materials that align with global sustainability goals.', 'Winner of the 2023 GreenTech Innovation Award. Partnered with over 50 companies globally to implement sustainable packaging. Successfully reduced plastic waste by 30% in partnered organizations.', 'https://www.linkedin.com/company/greenpackaging', 'Email: info@greenpackaging.com\r\nAddress: 123 Green Avenue, Quezon City, Metro Manila, Philippines', NULL),
(38, 'We are a tech startup focused on revolutionizing education through AI-powered learning tools. Our mission is to make quality education accessible to all by providing personalized, interactive, and scalable solutions for students and educators worldwide.', 'Developed an AI-driven learning platform used by over 10,000 students across the Philippines.\r\nAwarded the 2023 Innovation in Education Technology Award by TechPH.', 'https://www.twitter.com/edutechstartupph', 'Address: 88 Innovation Drive, Taguig City, Metro Manila, Philippines', NULL),
(39, 'I am an entrepreneur passionate about empowering small businesses through innovative technology. With over five years of experience in E-commerce and digital marketing, I specialize in creating solutions that help local businesses thrive in the digital economy.', 'Founded and scaled two successful startups in the E-commerce and logistics sectors.\r\nFeatured as one of the “Top 30 Under 30 Entrepreneurs” in the Philippines by Startup PH Magazine.\r\nSpeaker at the 2023 Philippine Startup Innovation Summit.', 'https://www.linkedin.com/in/janedoeph', 'Email: jane.doe@entrepreneurlife.ph\r\nPhone: +63 917 987 6543\r\nAddress: 45 Vision Street, Pasig City, Metro Manila, Philippines', NULL),
(40, 'We are a tech-driven startup focused on providing affordable and accessible E-commerce solutions for small and medium-sized businesses. Our platform enables local businesses to scale online through seamless integration, marketing tools, and analytics.', 'Launched over 500 successful online stores in the past two years.\r\nFeatured in the 2023 Philippine Tech Startups to Watch list.\r\nSecured $1M in seed funding to expand operations nationwide.', 'https://www.facebook.com/smartbizsolutions', 'Email: support@smartbiz.ph\r\n\r\nAddress: Unit 502, Innovation Hub, Makati City, Metro Manila, Philippines', NULL),
(110, 'REal estate', 'Design thinking champion 2022', 'facebook.com', '9054348650', NULL),
(119, NULL, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `startup_resources`
--

CREATE TABLE `startup_resources` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `startup_resources`
--

INSERT INTO `startup_resources` (`id`, `title`, `url`, `description`, `created_at`, `views`) VALUES
(2, 'Types and Sources of Financing for Start-up Businesses', 'https://www.extension.iastate.edu/agdm/wholefarm/pdf/c5-92.pdf', 'Financing is needed to start a business and ramp it up to profitability.', '2024-11-30 15:35:32', 4),
(3, 'Design Thinking', 'https://readings.design/PDF/Tim%20Brown,%20Design%20Thinking.pdf', 'Thinking like a designer can transform the way you develop products, services, processes—and even strategy.', '2024-12-16 04:11:32', 8),
(4, 'Introduction to Technopreneurship', 'https://www.cliffsnotes.com/study-notes/17042838', 'Technology and entrepreneurship play a vital role in helping businesses gain a competitive advantage, improve the country\'s economic growth, and accelerate innovation.', '2024-12-16 04:13:25', 1),
(5, 'How Experts Drive Success', 'https://www.coachinthecorner.co.za/docs/training%20courses/eBook%20Startup%20101%20How%20Experts%20Drive%20Success.pdf', 'The goal of this guide is to provide you with an initial framework for getting started and, more importantly, to challenge your thinking. ', '2024-12-16 04:15:06', 3),
(6, 'The Lean Startup', 'https://vace.uky.edu/sites/vace/files/downloads/The%20Lean%20StartUp%20Presentation.pdf', 'The Lean Startup method teaches you how to drive a startup-how to steer, when to turn, and when to persevere-and grow a business with maximum acceleration.', '2024-12-16 04:15:58', 10),
(7, 'Keys To Starting A Business', 'https://www.wcupa.edu/business-publicManagement/cottrellcenter/documents/entrepreneurship101.pdf', 'Entrepreneurship is the ability and readiness to develop, organize and run a business enterprise, along with any of its uncertainties in order to make a profit.', '2024-12-16 04:17:59', 1),
(8, 'Stages of startups and source of funding', 'https://apctt.org/sites/default/files/attachment/2022-02/VF_1_2_oct_Dec_2021.pdf', 'There are multiple sources of funding available for startups. However, the source of funding should typically match the stage of operations of the startup.', '2024-12-16 04:18:53', 1),
(9, 'Startup Companies: Life Cycle and Challenges', 'https://tarjomefa.com/wp-content/uploads/2017/01/5929-English-TarjomeFa.pdf', 'The lifecycle includes three main stages, which are bootstrapping stage, seed stage, and creation stage.', '2024-12-16 04:19:24', 1),
(10, 'Stages of operations of the start-up', 'https://www.kpriet.ac.in/asset/frontend/pdf/ciied/operation-stages.pdf', 'The startup growth stages serve as a guide for new businesses while they work to develop ideas, create products or services and become successful companies. ', '2024-12-16 04:21:07', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_messages`
--

CREATE TABLE `tbl_messages` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `admin_id` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `from_user` varchar(255) DEFAULT NULL COMMENT 'admin / customer',
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(100) DEFAULT 'Unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_messages`
--

INSERT INTO `tbl_messages` (`id`, `customer_id`, `admin_id`, `message`, `from_user`, `date_created`, `status`) VALUES
(297, '44', '110', 'hi rina', 'Startup', '2024-11-23 07:53:01', 'Unread'),
(298, '110', '44', 'hi arthur', 'Investor', '2024-11-23 07:54:33', 'Unread'),
(299, '110', '43', 'hi arthur', 'Investor', '2024-11-23 07:58:32', 'Unread'),
(300, '110', '43', 'hi elly', 'Startup', '2024-11-23 07:58:42', 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `user_id` int(11) NOT NULL,
  `preferred_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`user_id`, `preferred_category`) VALUES
(43, 'Technology'),
(44, 'Technology'),
(100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `verify_token` varchar(255) DEFAULT NULL,
  `email_verify` tinyint(1) DEFAULT 0,
  `token_expiry` datetime DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `deactivated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `profile_image`, `created_at`, `updated_at`, `verify_token`, `email_verify`, `token_expiry`, `phone`, `deactivated`) VALUES
(37, 'tan', 'tanlegazpi@gmail.com', '$2y$10$7D3eStvoai7zoL2Uda4IyOMjW/H4SGxPao9NqZszWR4WvjcRa7z6W', 'Entrepreneurs', 'profile_image_37.jpg', '2024-11-19 14:25:11', '2024-11-23 03:38:28', '112323123123123123123123', 1, NULL, NULL, 0),
(38, 'caroline', 'istancruz123@gmail.com', '$2y$10$KT4xGsg99kpZHpZhUqoFvOugwPu4PtqHoqSwiM7ZlH21qabhTuiMK', 'Tech Startup Companies', 'profile_image_38.jpg', '2024-11-19 14:32:09', '2024-11-23 03:32:08', '20c145f225997e5a32543c6ad9f363fc4870559328d090ac7c945676630c8377', 1, NULL, NULL, 0),
(39, 'Ron', 'ron@gmail.com', '$2y$10$SCsyNwhhzDCMrqKDNHhgUOCl7I7wz38Q6j4ATPZ8MTNp3kInjJMj.', 'Entrepreneurs', 'profile_image_39.jpg', '2024-11-19 14:34:29', '2024-11-23 03:01:39', 'fca1f04a2be80fbdce9181694f5c04af79079b4cbcfd7c28f1b0e30f723708a3', 1, NULL, NULL, 0),
(40, 'Hershey', 'hershey@gmail.com', '$2y$10$zdcpdOX/EbAn10zkYreJx.m.ezj6S9a7aciXcI4Rg0OMSoUBGTQvm', 'Tech Startup Companies', 'profile_image_40.jpg', '2024-11-19 14:35:38', '2024-11-23 03:25:11', '2a2a3548b8571f06e9ff4ab528fe5d1746d9b58c01363a065b9a380b8e76d95c', 1, NULL, NULL, 0),
(42, 'aki', 'aki@gmail.com', '$2y$10$XCVuipIGEFXC3sVzAFuT3uklxAgVozW/ZGnynosR6o7mLhSt.SMTm', 'passive-investors', NULL, '2024-11-19 14:37:42', '2024-11-19 14:51:45', 'bda80565ee12b079b45d1d3c69046b3344349b761a527cdaa8a296780de6ed7e', 1, NULL, NULL, 0),
(43, 'elly', 'elly@gmail.com', '$2y$10$0Wr5cEaOsLUtwSAgYp6TG.X7ZLbnOaignXXx.pnXtgjE41k9.KOx.', 'mentor', NULL, '2024-11-19 14:50:45', '2024-11-19 14:51:45', 'b6a2e01a8b422c08dd9a42f10b20f782fd02efcaf5a0afc79fce39898ac02b4e', 1, NULL, NULL, 0),
(44, 'rina', 'rina@gmail.com', '$2y$10$a6n3y.Pa.PBYGRfvf5wC1el7SEo2eKpQLIyxoF1I9iOrSRfeVgsLq', 'passive-investors', 'profile_image_44.jpg', '2024-11-19 14:52:32', '2024-11-23 03:37:23', 'bf16a0827552523acffb0801f8f44a80a9fde941fad35c49506d775342a4b4f3', 1, NULL, NULL, 0),
(45, 'lemon', 'lemon@gmail.com', '$2y$10$InoX/f7b3EfKh2e3iU/DpOR56sopXyOsPfKvFgRnRllspk81W0XU2', 'mentor', NULL, '2024-11-19 14:54:44', '2024-11-19 14:54:44', '8be852897ced9481dda6c4a4188a0575f626ea06d536c12a0c231ed945fcf66c', 0, NULL, NULL, 0),
(46, 'FTIC', 'ftic@gmail.com', '$2y$10$nuBU3iBmbHmrGBz8URhhxuM81EmbhKPeiveJLkTv4y752eDH7STki', 'Admin', NULL, '2024-11-19 15:43:21', '2024-11-23 03:38:29', '112323123123123123123123', 1, NULL, NULL, 0),
(101, 'john123', 'kcero.aujero@gmail.com', '$2y$10$czoN8V1PyeaURC33srQKMu7LYeL/hdlo6NAvW5S4Jv0EXI5x4fPlG', 'Tech Startup Companies', NULL, '2024-11-23 07:14:08', '2024-11-23 07:16:19', NULL, 0, NULL, NULL, 0),
(103, 'kcero123', 'john.kcero@icloud.com', '$2y$10$U6njWLOcQMHLiX1Q9CfyJ.22R40SIb/ZGRG3LvYHqwKK1p2T2kfyu', 'Tech Startup Companies', NULL, '2024-11-23 07:20:12', '2024-11-23 07:21:35', NULL, 0, NULL, NULL, 0),
(104, 'test', 'test@gmail.com', '$2y$10$lM2EpL1mZZJjjTratwC3BelW7dqN/nSJ5EyXwOhC7lMAfEzwzLpwC', 'Tech Startup Companies', NULL, '2024-11-23 07:20:16', '2024-11-23 07:22:04', '8da8b2efec716fc3d0d54e3de27afb5984dde240ce0d02398b55004c483ca8291c585ce9482f4dd98ac15496e73acc3ce65d', 0, '2024-11-23 07:52:04', NULL, 0),
(107, '<h1>test', 'test2@gmail.com', '$2y$10$1qTnh2SCsUVPLpVutsG8HOpYCUxmOy9EZzwnYBkAPnmEFOIuUuqNW', 'Tech Startup Companies', NULL, '2024-11-23 07:23:43', '2024-11-23 07:23:43', '093b6f741d59e91db299fd0c83df9fd64d999d84c7bc24357e6eac7a9af1e83f', 0, NULL, NULL, 0),
(110, 'arthur ', 'sonofmithras08@gmail.com', '$2y$10$AxnHCvwHrj7kldZhkax4oO2aOip4y8.717mXEhAdTvGbb1j1RYK/K', 'Entrepreneurs', 'profile_image_110.png', '2024-11-23 07:46:23', '2024-11-23 07:49:16', NULL, 1, NULL, NULL, 0),
(119, 'testtest', 'testtest@gmail.com', '$2y$10$9n0UW1c2uFI0yNny7DmA3.ipk27Qmpr9mTu/U/UnTw9tV5hf/udVK', 'Entrepreneurs', NULL, '2024-12-16 02:56:38', '2024-12-16 02:56:38', '02f4957dbac73b33585f486f1cf68fbe96fbe9fbd2fdf9c1e52210e8daa55a6c', 0, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `startup_id` (`startup_id`),
  ADD KEY `investor_id` (`investor_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `investor_document`
--
ALTER TABLE `investor_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investor_profiles`
--
ALTER TABLE `investor_profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `maintenance_logs`
--
ALTER TABLE `maintenance_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pitch`
--
ALTER TABLE `pitch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pitch_user` (`user_id`);

--
-- Indexes for table `progress_report`
--
ALTER TABLE `progress_report`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_project` (`project_id`),
  ADD KEY `fk_investor` (`investor_id`),
  ADD KEY `fk_startup` (`startup_id`);

--
-- Indexes for table `startup_activity`
--
ALTER TABLE `startup_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startup_document`
--
ALTER TABLE `startup_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startup_profiles`
--
ALTER TABLE `startup_profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `startup_resources`
--
ALTER TABLE `startup_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investor_document`
--
ALTER TABLE `investor_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `investor_profiles`
--
ALTER TABLE `investor_profiles`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `maintenance_logs`
--
ALTER TABLE `maintenance_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pitch`
--
ALTER TABLE `pitch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `progress_report`
--
ALTER TABLE `progress_report`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `startup_activity`
--
ALTER TABLE `startup_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `startup_document`
--
ALTER TABLE `startup_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `startup_profiles`
--
ALTER TABLE `startup_profiles`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `startup_resources`
--
ALTER TABLE `startup_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`startup_id`) REFERENCES `startup_profiles` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`investor_id`) REFERENCES `investor_profiles` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activities_ibfk_3` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pitch`
--
ALTER TABLE `pitch`
  ADD CONSTRAINT `fk_pitch_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `fk_investor` FOREIGN KEY (`investor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_project` FOREIGN KEY (`project_id`) REFERENCES `pitch` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_startup` FOREIGN KEY (`startup_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
