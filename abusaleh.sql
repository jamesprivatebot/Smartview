-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2021 at 11:06 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id16003327_subsnom`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_providers`
--

CREATE TABLE `api_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(15,5) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_providers`
--

INSERT INTO `api_providers` (`id`, `ids`, `uid`, `name`, `url`, `key`, `balance`, `currency_code`, `description`, `status`, `created`, `changed`) VALUES
(1, '6c08835fc25dd0add2f1f6be7c828578', 1, 'HQ Smartpanel', 'https://hqsmartpanel.com/api/v1', 'JIyPCexcfKPOjsSGlcjHYV4n5yRsVgCE', NULL, NULL, 'HQ SmartPanel - Services - The Best SMM Panel - Social Media Services for Resellers\r\n', 1, '2019-04-09 11:36:34', '2019-04-10 10:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `ids`, `uid`, `name`, `desc`, `image`, `sort`, `status`, `created`, `changed`) VALUES
(29, '7427fd79752d6fea56f65493f98711f6', 39, 'Subscribe My Channel', '&lt;p&gt;Open Youtube app and Search Abusaleh Infotech and Click red subscribe button&lt;/p&gt;', NULL, 1, 1, '2021-03-01 06:06:24', '2021-03-01 06:06:24'),
(30, '5bd15bbd31259c4f3e67486ce04e6dff', 39, 'example', '', NULL, 1, 1, '2021-03-01 08:47:55', '2021-03-01 08:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_custom_page`
--

CREATE TABLE `general_custom_page` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` int(1) DEFAULT 1,
  `position` int(1) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_file_manager`
--

CREATE TABLE `general_file_manager` (
  `id` int(11) NOT NULL,
  `ids` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `file_name` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_type` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_ext` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_size` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang`
--

CREATE TABLE `general_lang` (
  `id` int(11) NOT NULL,
  `ids` varchar(100) DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `general_lang_list`
--

CREATE TABLE `general_lang_list` (
  `id` int(11) NOT NULL,
  `ids` varchar(225) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `country_code` varchar(225) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_lang_list`
--

INSERT INTO `general_lang_list` (`id`, `ids`, `code`, `country_code`, `is_default`, `status`, `created`) VALUES
(1, '2de0ce2f0fd0c1c3d938d348a728f2ac', 'en', 'GB', 1, 1, '2021-03-01 05:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `general_news`
--

CREATE TABLE `general_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_options`
--

CREATE TABLE `general_options` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_options`
--

INSERT INTO `general_options` (`id`, `name`, `value`) VALUES
(67, 'enable_https', '0'),
(68, 'enable_disable_homepage', '0'),
(69, 'website_desc', 'SmartPanel - #1 SMM Reseller Panel - Best SMM Panel for Resellers. Also well known for TOP SMM Panel and Cheap SMM Panel for all kind of Social Media Marketing Services. SMM Panel for Facebook, Instagram, YouTube and more services!                '),
(70, 'website_keywords', 'smm panel, SmartPanel, smm reseller panel, smm provider panel, reseller panel, instagram panel, resellerpanel, social media reseller panel, smmpanel, panelsmm, smm, panel, socialmedia, instagram reseller panel                '),
(71, 'website_title', 'Abusaleh Infotech'),
(72, 'website_favicon', 'https://subsnom.000webhostapp.com/assets/images/favicon.png'),
(73, 'embed_head_javascript', ''),
(74, 'website_logo', 'https://subsnom.000webhostapp.com/assets/images/logo.png'),
(75, 'website_logo_white', 'https://subsnom.000webhostapp.com/assets/images/logo-white.png'),
(76, 'enable_service_list_no_login', '1'),
(77, 'disable_signup_page', '0'),
(78, 'notification_popup_content', ''),
(79, 'is_cookie_policy_page', ''),
(80, 'enable_api_tab', '1'),
(81, 'contact_tel', '+12345678'),
(82, 'contact_email', 'do-not-reply@smartpanel.com'),
(83, 'contact_work_hour', 'Mon - Sat 09 am - 10 pm'),
(84, 'social_facebook_link', ''),
(85, 'social_twitter_link', ''),
(86, 'social_instagram_link', ''),
(87, 'social_pinterest_link', ''),
(88, 'social_tumblr_link', ''),
(89, 'social_youtube_link', ''),
(90, 'copy_right_content', 'Copyright © 2021 - Abusaleh Infotech'),
(91, 'embed_javascript', ''),
(92, 'enable_notification_popup', '0'),
(93, 'enable_goolge_recapcha', '0'),
(94, 'enable_signup_skype_field', '0'),
(95, 'is_verification_new_account', '0'),
(96, 'is_welcome_email', ''),
(97, 'is_new_user_email', ''),
(98, 'currency_decimal_separator', 'dot'),
(99, 'currency_thousand_separator', 'comma'),
(100, 'currency_symbol', '$'),
(101, 'currency_decimal', '2'),
(102, 'default_header_skin', 'royal'),
(103, 'enable_news_announcement', '1'),
(104, 'default_limit_per_page', '10'),
(105, 'is_active_paypal', '0'),
(106, 'is_active_stripe', '0'),
(107, 'is_active_2checkout', '0'),
(108, 'is_active_manual', '1'),
(109, 'is_active_paytm', '1'),
(110, 'is_maintenance_mode', '0'),
(111, 'get_features_option', '1'),
(112, 'website_name', 'Abusaleh Infotech'),
(113, 'paytm_payment_environment', 'TEST'),
(114, 'paytm_chagre_fee', '4'),
(115, 'paytm_currency_rate_to_usd', '70'),
(116, 'paytm_merchant_id', '1234567890'),
(117, 'paytm_merchant_key', '1234567890'),
(118, 'payment_transaction_min', '10'),
(119, 'payment_environment', 'sandbox'),
(120, 'paypal_chagre_fee', '4'),
(121, 'paypal_client_id', ''),
(122, 'paypal_client_secret', ''),
(123, 'stripe_chagre_fee', '4'),
(124, 'stripe_publishable_key', ''),
(125, 'stripe_secret_key', ''),
(126, 'twocheckout_chagre_fee', '4'),
(127, '2checkout_publishable_key', ''),
(128, '2checkout_private_key', ''),
(129, '2checkout_seller_id', ''),
(130, 'manual_payment_content', '&lt;p&gt;You can make a manual payment to cover an outstanding balance. Once time, open a ticket and contact with Administrator.&lt;/p&gt;\r\n&lt;p&gt;Subscribe My Channel&lt;/p&gt;\r\n&lt;p&gt;link - &lt;a href=&quot;https://www.youtube.com/channel/UCiNoxlV1aO1-FQqYHKsPq8g&quot;&gt;https://www.youtube.com/channel/UCiNoxlV1aO1-FQqYHKsPq8g&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;1 SUBSCRIBE = RUPESS 100&lt;/p&gt;'),
(131, 'is_clear_ticket', '0'),
(132, 'enable_explication_service_symbol', '0'),
(133, 'verification_email_subject', '{{website_name}} - Please validate your account'),
(134, 'verification_email_content', '<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p> Thank you for joining! We&#39;re glad to have you as community member, and we&#39;re stocked for you to start exploring our service.  If you don&#39;t verify your address, you won&#39;t be able to create a User Account.</p><p>  All you need to do is activate your account by click this link: <br>  {{activation_link}} </p><p>Thanks and Best Regards!</p>'),
(135, 'email_welcome_email_subject', '{{website_name}} - Getting Started with Our Service!'),
(136, 'email_welcome_email_content', '<p><strong>Welcome to {{website_name}}! </strong></p><p>Hello <strong>{{user_firstname}}</strong>!</p><p>Congratulations! <br>You have successfully signed up for our service - {{website_name}} with follow data</p><ul><li>Firstname: {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul><p>We want to exceed your expectations, so please do not hesitate to reach out at any time if you have any questions or concerns. We look to working with you.</p><p>Best Regards,</p>'),
(137, 'email_new_registration_subject', '{{website_name}} - New Registration'),
(138, 'email_new_registration_content', '<p>Hi Admin!</p><p>Someone signed up in <strong>{{website_name}}</strong> with follow data</p><ul><li>Firstname {{user_firstname}}</li><li>Lastname: {{user_lastname}}</li><li>Email: {{user_email}}</li><li>Timezone: {{user_timezone}}</li></ul> '),
(139, 'email_password_recovery_subject', '{{website_name}} - Password Recovery'),
(140, 'email_password_recovery_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>Somebody (hopefully you) requested a new password for your account. </p><p>No changes have been made to your account yet. <br>You can reset your password by click this link: <br>{{recovery_password_link}}</p><p>If you did not request a password reset, no further action is required. </p><p>Thanks and Best Regards!</p>                '),
(141, 'email_payment_notice_subject', '{{website_name}} -  Thank You! Deposit Payment Received'),
(142, 'email_payment_notice_content', '<p>Hi<strong> {{user_firstname}}! </strong></p><p>We&#39;ve just received your final remittance and would like to thank you. We appreciate your diligence in adding funds to your balance in our service.</p><p>It has been a pleasure doing business with you. We wish you the best of luck.</p><p>Thanks and Best Regards!</p>'),
(143, 'default_min_order', ''),
(144, 'default_max_order', ''),
(145, 'default_price_per_1k', '0.80'),
(146, 'auto_rounding_x_decimal_places', '2'),
(147, 'default_home_page', 'regular'),
(148, 'default_timezone', 'UTC'),
(149, 'default_clear_ticket_days', '30'),
(150, 'enable_drip_feed', '0'),
(151, 'default_drip_feed_runs', '10'),
(152, 'default_drip_feed_interval', '30'),
(153, 'google_capcha_site_key', ''),
(154, 'google_capcha_secret_key', ''),
(155, 'enable_attentions_orderpage', ''),
(156, 'paytm_payment_transaction_min', ''),
(157, 'cookies_policy_page', '<p><strong>Lorem Ipsum</strong></p><p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p><p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p><p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(158, 'terms_content', '<p><strong>Lorem Ipsum</strong></p><p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p><p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p><p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(159, 'policy_content', '<p><strong>Lorem Ipsum</strong></p><p>Lorem ipsum dolor sit amet, in eam consetetur consectetuer. Vivendo eleifend postulant ut mei, vero maiestatis cu nam. Qui et facer mandamus, nullam regione lucilius eu has. Mei an vidisse facilis posidonium, eros minim deserunt per ne.</p><p>Duo quando tibique intellegam at. Nec error mucius in, ius in error legendos reformidans. Vidisse dolorum vulputate cu ius. Ei qui stet error consulatu.</p><p>Mei habeo prompta te. Ignota commodo nam ei. Te iudico definitionem sed, placerat oporteat tincidunt eu per, stet clita meliore usu ne. Facer debitis ponderum per no, agam corpora recteque at mel.</p>'),
(160, 'currency_code', 'USD'),
(161, 'default_price_percentage_increase', '30'),
(162, 'is_auto_currency_convert', '0'),
(163, 'new_currecry_rate', '1');

-- --------------------------------------------------------

--
-- Table structure for table `general_purchase`
--

CREATE TABLE `general_purchase` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `purchase_code` text DEFAULT NULL,
  `version` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_purchase`
--

INSERT INTO `general_purchase` (`id`, `ids`, `pid`, `purchase_code`, `version`) VALUES
(1, '8068ec7f79145fe55dea67dd63b012c3', '23595718', 'ITEM-PURCHASE-CODE', '3.2');

-- --------------------------------------------------------

--
-- Table structure for table `general_sessions`
--

CREATE TABLE `general_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_sessions`
--

INSERT INTO `general_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0p39m5lakpi9vsn9h3del50no5lchk95', '2405:204:3017:99fd:149e:6378:6b35:81bf', 1614579011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343537373337323b6c616e6743757272656e747c4f3a383a22737464436c617373223a363a7b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b693a313b733a363a22737461747573223b693a313b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d7569647c733a323a223339223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2253616c6568223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('3ufh0u36mac1h00bef7bk99nj6o1ur47', '2a03:2880:10ff:16::face:b00c', 1614578114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343537383131343b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d),
('u992b47gprijds18ashio43h1u2n8udg', '2405:204:3017:99fd:149e:6378:6b35:81bf', 1614579827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343537393038393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d7569647c733a323a223339223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2253616c6568223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d),
('attkjuka89nugpe2ubl8jc758mipflng', '2405:204:3017:99fd:4bd4:eac8:d725:456c', 1614581312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343538303935363b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d),
('7dg0svs4eoppo1jc98m1ufhsqircsu9m', '2405:204:3017:99fd:cf03:6d8:94b9:93f3', 1614593256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343538323033393b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d7569647c733a323a223339223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2253616c6568223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d7265616c5f616d6f756e747c733a343a2231303030223b616d6f756e747c643a313034303b),
('5tiv037b0fobtdkj2epngfgqjtiklt4k', '47.31.206.243', 1614588763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343538383336383b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d7569647c733a323a223339223b757365725f63757272656e745f696e666f7c613a353a7b733a343a22726f6c65223b733a353a2261646d696e223b733a353a22656d61696c223b733a31353a2261646d696e4061646d696e2e636f6d223b733a31303a2266697273745f6e616d65223b733a353a2241646d696e223b733a393a226c6173745f6e616d65223b733a353a2253616c6568223b733a383a2274696d657a6f6e65223b733a31323a22417369612f4b6f6c6b617461223b7d7265616c5f616d6f756e747c733a343a2231303030223b616d6f756e747c643a313034303b),
('j48lmdpf8qegj39gcvgsap73jue1r270', '49.44.81.232', 1614588395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343538383339353b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d),
('6e6vetq7c8i891jh68brtuddfnlca8hm', '2a03:2880:10ff:78::face:b00c', 1614591067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631343539313036373b6c616e6743757272656e747c4f3a383a22737464436c617373223a373a7b733a323a226964223b733a313a2231223b733a333a22696473223b733a33323a223264653063653266306664306331633364393338643334386137323866326163223b733a343a22636f6465223b733a323a22656e223b733a31323a22636f756e7472795f636f6465223b733a323a224742223b733a31303a2269735f64656661756c74223b733a313a2231223b733a363a22737461747573223b733a313a2231223b733a373a2263726561746564223b733a31393a22323032312d30332d30312030353a34323a3531223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `general_subscribers`
--

CREATE TABLE `general_subscribers` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_subscribers`
--

INSERT INTO `general_subscribers` (`id`, `ids`, `first_name`, `last_name`, `email`, `ip`, `country`, `changed`, `created`) VALUES
(1, '6c6e494fcd88473cd926ce32bd7feb50', NULL, NULL, 'i@i.i', '182.68.127.29', 'India', '2021-03-01 07:16:40', '2021-03-01 07:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `general_transaction_logs`
--

CREATE TABLE `general_transaction_logs` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_users`
--

CREATE TABLE `general_users` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `login_type` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `timezone` text DEFAULT NULL,
  `more_information` text DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT 0.0000,
  `custom_rate` int(11) NOT NULL DEFAULT 0,
  `api_key` varchar(191) DEFAULT NULL,
  `spent` varchar(225) DEFAULT NULL,
  `activation_key` text DEFAULT NULL,
  `reset_key` text DEFAULT NULL,
  `history_ip` text DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_users`
--

INSERT INTO `general_users` (`id`, `ids`, `role`, `login_type`, `first_name`, `last_name`, `email`, `password`, `timezone`, `more_information`, `settings`, `desc`, `balance`, `custom_rate`, `api_key`, `spent`, `activation_key`, `reset_key`, `history_ip`, `status`, `changed`, `created`) VALUES
(38, 'e7ace76210625c6880498190c0af2d58', 'admin', NULL, 'admin_first_name', 'admin_last_name', 'admin_email', 'admin_password', 'admin_timezone', NULL, NULL, NULL, 0.0000, 0, NULL, NULL, 'c4a78c5172c30e669bb05d9dse48d6f5', '5399be82efd9bb6cf81e0ef76b78d693', NULL, 1, NULL, NULL),
(39, 'b87284af940932541a7596288f6d2a76', 'admin', NULL, 'Admin', 'Saleh', 'admin@admin.com', '$2a$08$C8HBBRZoCtAM./.lt9.ym.W.KfnLFI2LlFKzn7Ys2.azDlyatMUra', 'Asia/Kolkata', NULL, NULL, NULL, 0.0000, 0, 'nyrhA5YNljON5qjzkKwgTUrCLjELr4wO', NULL, '36b0d3dd5756fba66701310a92f11479', '626abfa4d8e12545cfccbc3b0d819622', '47.31.206.243', 1, '2021-03-01 05:44:46', '2021-03-01 05:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `ids` text CHARACTER SET utf8 DEFAULT NULL,
  `type` enum('direct','api') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `cate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_order_id` int(11) DEFAULT NULL,
  `service_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `api_provider_id` int(11) DEFAULT NULL,
  `api_service_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_order_id` int(11) DEFAULT 0,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usernames` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_posts` int(11) DEFAULT NULL,
  `sub_min` int(11) DEFAULT NULL,
  `sub_max` int(11) DEFAULT NULL,
  `sub_delay` int(11) DEFAULT NULL,
  `sub_expiry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_orders` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_response_posts` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_status` enum('Active','Paused','Completed','Expired','Canceled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(15,4) DEFAULT NULL,
  `status` enum('completed','processing','inprogress','pending','partial','refunded','canceled') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `start_counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remains` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_drip_feed` int(1) DEFAULT 0,
  `runs` int(11) DEFAULT 0,
  `interval` int(2) DEFAULT 0,
  `dripfeed_quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `ids` text DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `original_price` decimal(15,4) DEFAULT NULL,
  `min` int(50) DEFAULT NULL,
  `max` int(50) DEFAULT NULL,
  `add_type` enum('manual','api') DEFAULT 'manual',
  `type` varchar(100) DEFAULT 'default',
  `api_service_id` varchar(200) DEFAULT NULL,
  `api_provider_id` int(11) DEFAULT NULL,
  `dripfeed` int(1) DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('new','pending','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `created` datetime DEFAULT NULL,
  `changed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `changed` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_providers`
--
ALTER TABLE `api_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang`
--
ALTER TABLE `general_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_news`
--
ALTER TABLE `general_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `general_options`
--
ALTER TABLE `general_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_purchase`
--
ALTER TABLE `general_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_sessions`
--
ALTER TABLE `general_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_users`
--
ALTER TABLE `general_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`uid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_messages_user_id_foreign` (`uid`),
  ADD KEY `ticket_messages_ticket_id_foreign` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_providers`
--
ALTER TABLE `api_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `general_custom_page`
--
ALTER TABLE `general_custom_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_file_manager`
--
ALTER TABLE `general_file_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `general_lang`
--
ALTER TABLE `general_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_lang_list`
--
ALTER TABLE `general_lang_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_news`
--
ALTER TABLE `general_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_options`
--
ALTER TABLE `general_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `general_purchase`
--
ALTER TABLE `general_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_subscribers`
--
ALTER TABLE `general_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_transaction_logs`
--
ALTER TABLE `general_transaction_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `general_users`
--
ALTER TABLE `general_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389624;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
